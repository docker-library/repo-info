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
$ docker pull odoo@sha256:079fd036571bb426b077eb1232d7dd8b6e5c9b7ad49a7363f1b722bd0f5dcd05
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
$ docker pull odoo@sha256:92327a5b85bc61bf0c33596a93d19dbf26a6bf2b4a4a9f76b3ed6205dfd34494
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **678.2 MB (678240425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee6f28fc9094c41582a6776936eaab5422318caf4c34761289c085bd0a3e6d58`
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
# Wed, 11 Nov 2026 23:33:03 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Wed, 11 Nov 2026 23:33:03 GMT
SHELL [/bin/bash -xo pipefail -c]
# Wed, 11 Nov 2026 23:33:03 GMT
ENV LANG=en_US.UTF-8
# Wed, 11 Nov 2026 23:33:03 GMT
ARG TARGETARCH=amd64
# Wed, 11 Nov 2026 23:33:03 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Wed, 11 Nov 2026 23:33:11 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:36:10 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:36:10 GMT
ENV ODOO_VERSION=18.0
# Wed, 11 Nov 2026 23:36:10 GMT
ARG ODOO_RELEASE=20261102
# Wed, 11 Nov 2026 23:36:10 GMT
ARG ODOO_SHA=349c907ea772231b39859c6e6a13093587860861
# Wed, 11 Nov 2026 23:37:33 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261102 ODOO_SHA=349c907ea772231b39859c6e6a13093587860861
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Wed, 11 Nov 2026 23:37:34 GMT
COPY ./entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:37:34 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Wed, 11 Nov 2026 23:37:34 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261102 ODOO_SHA=349c907ea772231b39859c6e6a13093587860861
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Wed, 11 Nov 2026 23:37:34 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 11 Nov 2026 23:37:34 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Wed, 11 Nov 2026 23:37:34 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Wed, 11 Nov 2026 23:37:34 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Wed, 11 Nov 2026 23:37:34 GMT
USER odoo
# Wed, 11 Nov 2026 23:37:34 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 11 Nov 2026 23:37:34 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:26538842dfbfed820e62531e047bc6cfd3359a7e0a52f59c1a951ccc6ca787fe`  
		Last Modified: Wed, 11 Nov 2026 22:58:09 GMT  
		Size: 29.8 MB (29793223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3beabc6b3c14d4d4c3243c4025a077dc22c5595f07d83a80428ce806faa6ba07`  
		Last Modified: Wed, 11 Nov 2026 23:39:10 GMT  
		Size: 238.7 MB (238718149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a1677a1e21e8f6b5da3e18535438f27840263c9c171833c121d3e140774e5c5`  
		Last Modified: Wed, 11 Nov 2026 23:39:01 GMT  
		Size: 16.6 MB (16632496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10a2a100bef3947968a831dc2691d622e9029a07f94acf0b9caac12378ee8a2c`  
		Last Modified: Wed, 11 Nov 2026 23:39:00 GMT  
		Size: 874.1 KB (874064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b55597c20cd30f0ed874b3c58b90948e1acd6b9cb2a7f27a0997de8d35ae009`  
		Last Modified: Wed, 11 Nov 2026 23:39:13 GMT  
		Size: 392.2 MB (392219697 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b2785cb13a01d2f20625ecc7ffcb6bff48d40dacc10145a76a3e9ae2aa26e8c`  
		Last Modified: Wed, 11 Nov 2026 23:39:01 GMT  
		Size: 766.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3068e48ef81a81e22277e3abb0bd3c8d70dd21f79ef33e63c0fcd5e781e3297`  
		Last Modified: Wed, 11 Nov 2026 23:39:03 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aac25ba67257001aaaf27b4528339546c2b3aede0e56f8b9b2e6aa3358e4da09`  
		Last Modified: Wed, 11 Nov 2026 23:39:03 GMT  
		Size: 596.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfddfdeeff7fdd4e99762a5e716b48d3e9c3e6d0fbcb5b1fdc124a3ce7130682`  
		Last Modified: Wed, 11 Nov 2026 23:39:04 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18` - unknown; unknown

```console
$ docker pull odoo@sha256:e0e82dcd3f3f9b45c12761f4f0e8d4c6469fb6c9f0a5c1d44664ba8ac815d191
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.0 MB (44006005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8da66ba7f1602d0c3f12f12a932da6d234ca537358d1653363f4796b68befebb`

```dockerfile
```

-	Layers:
	-	`sha256:a94b1f817759b33a083f4d99cde4f9f80673480b9666872965cf96784dded731`  
		Last Modified: Wed, 11 Nov 2026 23:39:03 GMT  
		Size: 44.0 MB (43978808 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5e6afd203c0a381006c25d389b290dff9112ef6dc54f7da673f407419bd5ad4c`  
		Last Modified: Wed, 11 Nov 2026 23:39:00 GMT  
		Size: 27.2 KB (27197 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:18` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:c06e6e6ba5223f20b0b0983f7de6d27fa8755d2eb01d620981dee7105288fcdf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **672.3 MB (672301436 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:639fd1390ccc4de4484c5e4a93e06ff67ac84b84e19e7079ed29469d13a70c1f`
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
# Wed, 11 Nov 2026 23:36:47 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Wed, 11 Nov 2026 23:36:47 GMT
SHELL [/bin/bash -xo pipefail -c]
# Wed, 11 Nov 2026 23:36:47 GMT
ENV LANG=en_US.UTF-8
# Wed, 11 Nov 2026 23:36:47 GMT
ARG TARGETARCH=arm64
# Wed, 11 Nov 2026 23:36:47 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Wed, 11 Nov 2026 23:36:53 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:39:35 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:39:35 GMT
ENV ODOO_VERSION=18.0
# Wed, 11 Nov 2026 23:39:35 GMT
ARG ODOO_RELEASE=20261102
# Wed, 11 Nov 2026 23:39:35 GMT
ARG ODOO_SHA=349c907ea772231b39859c6e6a13093587860861
# Wed, 11 Nov 2026 23:40:48 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261102 ODOO_SHA=349c907ea772231b39859c6e6a13093587860861
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Wed, 11 Nov 2026 23:40:48 GMT
COPY ./entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:40:48 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Wed, 11 Nov 2026 23:40:48 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261102 ODOO_SHA=349c907ea772231b39859c6e6a13093587860861
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Wed, 11 Nov 2026 23:40:48 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 11 Nov 2026 23:40:48 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Wed, 11 Nov 2026 23:40:48 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Wed, 11 Nov 2026 23:40:48 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Wed, 11 Nov 2026 23:40:48 GMT
USER odoo
# Wed, 11 Nov 2026 23:40:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 11 Nov 2026 23:40:48 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:0c72064db2470cf0efa5fa1935125d317d0c2f6d95855143ae6a816ce4b20b56`  
		Last Modified: Wed, 11 Nov 2026 22:58:08 GMT  
		Size: 29.0 MB (28965258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c10b4fbf3c07acfa0d6d2f921c94e896e01f896654bc7d51ab83ee1af867b03f`  
		Last Modified: Wed, 11 Nov 2026 23:42:24 GMT  
		Size: 236.2 MB (236191660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee4937d357e24e9c3580612693d447dd0a931ff98350c3850271ec4c17f49057`  
		Last Modified: Wed, 11 Nov 2026 23:42:16 GMT  
		Size: 14.2 MB (14189543 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f80886701d180ac6603b839dc986278e1a2fa5802ea8bb0983fdbac1b414e29f`  
		Last Modified: Wed, 11 Nov 2026 23:42:15 GMT  
		Size: 874.0 KB (873967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd6a515cd70bdf5414391c56edc076469472f785d82aa5e01925f40ff0c6c1ec`  
		Last Modified: Wed, 11 Nov 2026 23:42:27 GMT  
		Size: 392.1 MB (392078210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:117c4222b0ed76338e92e6e099b9f55cfae45896f85a826cd8308ba800d6e790`  
		Last Modified: Wed, 11 Nov 2026 23:42:16 GMT  
		Size: 768.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c950cf5c14fb39c1275911bfa7265bbcf34161838496823c63b555e261bab746`  
		Last Modified: Wed, 11 Nov 2026 23:42:18 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee2f78b5fe5ab777c6789ee4f8a970b07b229aa69e53340e28040b26d030c595`  
		Last Modified: Wed, 11 Nov 2026 23:42:18 GMT  
		Size: 596.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f22c154c9587622985c70b799deb06b77ea733ef635391901bc2170a9589a6fb`  
		Last Modified: Wed, 11 Nov 2026 23:42:19 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18` - unknown; unknown

```console
$ docker pull odoo@sha256:3c7a0560678996e4263a654c7bb295cfc01401d8b8e5273b43388d01faabbc89
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.0 MB (44013429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b84e3424c3255b34457587202bb1d4d95ae45f5261d0ff532209212a8a7e21e9`

```dockerfile
```

-	Layers:
	-	`sha256:3aec8c286cc700f8b282c1f582fbe743385e76f0c1a60b9111832563c86a0b73`  
		Last Modified: Wed, 11 Nov 2026 23:42:18 GMT  
		Size: 44.0 MB (43986080 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:19802c9f15dd4bb89ce700a24fc80be9a536c5120640c074141d7e7c5c92279b`  
		Last Modified: Wed, 11 Nov 2026 23:42:15 GMT  
		Size: 27.3 KB (27349 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:18` - linux; ppc64le

```console
$ docker pull odoo@sha256:5adce562290053184d0d6c4308a5c9322e49a407516084ebbaeb7055d328665e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **692.3 MB (692279280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6969ab3e9ba162cccd48f93c369ff19837e6d3c00f8a6ef7b68dadf147a1c872`
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
ARG ODOO_RELEASE=20261102
# Thu, 12 Nov 2026 04:00:00 GMT
ARG ODOO_SHA=349c907ea772231b39859c6e6a13093587860861
# Thu, 12 Nov 2026 04:19:09 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261102 ODOO_SHA=349c907ea772231b39859c6e6a13093587860861
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Thu, 12 Nov 2026 04:19:13 GMT
COPY ./entrypoint.sh / # buildkit
# Thu, 12 Nov 2026 04:19:14 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Thu, 12 Nov 2026 04:19:15 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261102 ODOO_SHA=349c907ea772231b39859c6e6a13093587860861
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Thu, 12 Nov 2026 04:19:15 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Thu, 12 Nov 2026 04:19:15 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Thu, 12 Nov 2026 04:19:15 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Thu, 12 Nov 2026 04:19:15 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Thu, 12 Nov 2026 04:19:15 GMT
USER odoo
# Thu, 12 Nov 2026 04:19:15 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 12 Nov 2026 04:19:15 GMT
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
	-	`sha256:11057feb7167a9f81ff4670d322e0e0d157f723dff1d8964733cec7f53e48e18`  
		Last Modified: Thu, 12 Nov 2026 04:25:24 GMT  
		Size: 392.9 MB (392858651 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d8ae271ee97c5c8cb04ba8b29c6615d888d4de1c8031ff1435e218253a51da9`  
		Last Modified: Thu, 12 Nov 2026 04:25:12 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57efffb4ea4e358849e8c00de21dd45f235522a987b094091266484d8812fd38`  
		Last Modified: Thu, 12 Nov 2026 04:25:12 GMT  
		Size: 557.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d9c70df9dd424ba180c6a1507d3ec735dd4bfa87cb83cb0c37e089cb678ed0d`  
		Last Modified: Thu, 12 Nov 2026 04:25:12 GMT  
		Size: 600.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8290a166368084b87ec5e81c4a7410d0675124d3a475679233d349eb2ce44cac`  
		Last Modified: Thu, 12 Nov 2026 04:25:14 GMT  
		Size: 877.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18` - unknown; unknown

```console
$ docker pull odoo@sha256:6e2a6a34519762663587753b5fba703d33fc20299abfffe0a8c011d9a2e77571
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.0 MB (44014425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b8b95510d1b3074fffa0092729a52db123dd49e3a5823ad9117199769268d24`

```dockerfile
```

-	Layers:
	-	`sha256:67da559096dec25e4b4f0d61353516e6d89025f39529b76246d5caf92432d071`  
		Last Modified: Thu, 12 Nov 2026 04:25:15 GMT  
		Size: 44.0 MB (43987172 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:abb42a90e02523825ae17be06f1f02a4789d84505e0598c02c2095b9e8af1f9b`  
		Last Modified: Thu, 12 Nov 2026 04:25:12 GMT  
		Size: 27.3 KB (27253 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:18.0`

```console
$ docker pull odoo@sha256:079fd036571bb426b077eb1232d7dd8b6e5c9b7ad49a7363f1b722bd0f5dcd05
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
$ docker pull odoo@sha256:92327a5b85bc61bf0c33596a93d19dbf26a6bf2b4a4a9f76b3ed6205dfd34494
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **678.2 MB (678240425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee6f28fc9094c41582a6776936eaab5422318caf4c34761289c085bd0a3e6d58`
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
# Wed, 11 Nov 2026 23:33:03 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Wed, 11 Nov 2026 23:33:03 GMT
SHELL [/bin/bash -xo pipefail -c]
# Wed, 11 Nov 2026 23:33:03 GMT
ENV LANG=en_US.UTF-8
# Wed, 11 Nov 2026 23:33:03 GMT
ARG TARGETARCH=amd64
# Wed, 11 Nov 2026 23:33:03 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Wed, 11 Nov 2026 23:33:11 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:36:10 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:36:10 GMT
ENV ODOO_VERSION=18.0
# Wed, 11 Nov 2026 23:36:10 GMT
ARG ODOO_RELEASE=20261102
# Wed, 11 Nov 2026 23:36:10 GMT
ARG ODOO_SHA=349c907ea772231b39859c6e6a13093587860861
# Wed, 11 Nov 2026 23:37:33 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261102 ODOO_SHA=349c907ea772231b39859c6e6a13093587860861
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Wed, 11 Nov 2026 23:37:34 GMT
COPY ./entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:37:34 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Wed, 11 Nov 2026 23:37:34 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261102 ODOO_SHA=349c907ea772231b39859c6e6a13093587860861
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Wed, 11 Nov 2026 23:37:34 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 11 Nov 2026 23:37:34 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Wed, 11 Nov 2026 23:37:34 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Wed, 11 Nov 2026 23:37:34 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Wed, 11 Nov 2026 23:37:34 GMT
USER odoo
# Wed, 11 Nov 2026 23:37:34 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 11 Nov 2026 23:37:34 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:26538842dfbfed820e62531e047bc6cfd3359a7e0a52f59c1a951ccc6ca787fe`  
		Last Modified: Wed, 11 Nov 2026 22:58:09 GMT  
		Size: 29.8 MB (29793223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3beabc6b3c14d4d4c3243c4025a077dc22c5595f07d83a80428ce806faa6ba07`  
		Last Modified: Wed, 11 Nov 2026 23:39:10 GMT  
		Size: 238.7 MB (238718149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a1677a1e21e8f6b5da3e18535438f27840263c9c171833c121d3e140774e5c5`  
		Last Modified: Wed, 11 Nov 2026 23:39:01 GMT  
		Size: 16.6 MB (16632496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10a2a100bef3947968a831dc2691d622e9029a07f94acf0b9caac12378ee8a2c`  
		Last Modified: Wed, 11 Nov 2026 23:39:00 GMT  
		Size: 874.1 KB (874064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b55597c20cd30f0ed874b3c58b90948e1acd6b9cb2a7f27a0997de8d35ae009`  
		Last Modified: Wed, 11 Nov 2026 23:39:13 GMT  
		Size: 392.2 MB (392219697 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b2785cb13a01d2f20625ecc7ffcb6bff48d40dacc10145a76a3e9ae2aa26e8c`  
		Last Modified: Wed, 11 Nov 2026 23:39:01 GMT  
		Size: 766.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3068e48ef81a81e22277e3abb0bd3c8d70dd21f79ef33e63c0fcd5e781e3297`  
		Last Modified: Wed, 11 Nov 2026 23:39:03 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aac25ba67257001aaaf27b4528339546c2b3aede0e56f8b9b2e6aa3358e4da09`  
		Last Modified: Wed, 11 Nov 2026 23:39:03 GMT  
		Size: 596.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfddfdeeff7fdd4e99762a5e716b48d3e9c3e6d0fbcb5b1fdc124a3ce7130682`  
		Last Modified: Wed, 11 Nov 2026 23:39:04 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18.0` - unknown; unknown

```console
$ docker pull odoo@sha256:e0e82dcd3f3f9b45c12761f4f0e8d4c6469fb6c9f0a5c1d44664ba8ac815d191
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.0 MB (44006005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8da66ba7f1602d0c3f12f12a932da6d234ca537358d1653363f4796b68befebb`

```dockerfile
```

-	Layers:
	-	`sha256:a94b1f817759b33a083f4d99cde4f9f80673480b9666872965cf96784dded731`  
		Last Modified: Wed, 11 Nov 2026 23:39:03 GMT  
		Size: 44.0 MB (43978808 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5e6afd203c0a381006c25d389b290dff9112ef6dc54f7da673f407419bd5ad4c`  
		Last Modified: Wed, 11 Nov 2026 23:39:00 GMT  
		Size: 27.2 KB (27197 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:18.0` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:c06e6e6ba5223f20b0b0983f7de6d27fa8755d2eb01d620981dee7105288fcdf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **672.3 MB (672301436 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:639fd1390ccc4de4484c5e4a93e06ff67ac84b84e19e7079ed29469d13a70c1f`
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
# Wed, 11 Nov 2026 23:36:47 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Wed, 11 Nov 2026 23:36:47 GMT
SHELL [/bin/bash -xo pipefail -c]
# Wed, 11 Nov 2026 23:36:47 GMT
ENV LANG=en_US.UTF-8
# Wed, 11 Nov 2026 23:36:47 GMT
ARG TARGETARCH=arm64
# Wed, 11 Nov 2026 23:36:47 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Wed, 11 Nov 2026 23:36:53 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:39:35 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:39:35 GMT
ENV ODOO_VERSION=18.0
# Wed, 11 Nov 2026 23:39:35 GMT
ARG ODOO_RELEASE=20261102
# Wed, 11 Nov 2026 23:39:35 GMT
ARG ODOO_SHA=349c907ea772231b39859c6e6a13093587860861
# Wed, 11 Nov 2026 23:40:48 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261102 ODOO_SHA=349c907ea772231b39859c6e6a13093587860861
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Wed, 11 Nov 2026 23:40:48 GMT
COPY ./entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:40:48 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Wed, 11 Nov 2026 23:40:48 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261102 ODOO_SHA=349c907ea772231b39859c6e6a13093587860861
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Wed, 11 Nov 2026 23:40:48 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 11 Nov 2026 23:40:48 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Wed, 11 Nov 2026 23:40:48 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Wed, 11 Nov 2026 23:40:48 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Wed, 11 Nov 2026 23:40:48 GMT
USER odoo
# Wed, 11 Nov 2026 23:40:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 11 Nov 2026 23:40:48 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:0c72064db2470cf0efa5fa1935125d317d0c2f6d95855143ae6a816ce4b20b56`  
		Last Modified: Wed, 11 Nov 2026 22:58:08 GMT  
		Size: 29.0 MB (28965258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c10b4fbf3c07acfa0d6d2f921c94e896e01f896654bc7d51ab83ee1af867b03f`  
		Last Modified: Wed, 11 Nov 2026 23:42:24 GMT  
		Size: 236.2 MB (236191660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee4937d357e24e9c3580612693d447dd0a931ff98350c3850271ec4c17f49057`  
		Last Modified: Wed, 11 Nov 2026 23:42:16 GMT  
		Size: 14.2 MB (14189543 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f80886701d180ac6603b839dc986278e1a2fa5802ea8bb0983fdbac1b414e29f`  
		Last Modified: Wed, 11 Nov 2026 23:42:15 GMT  
		Size: 874.0 KB (873967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd6a515cd70bdf5414391c56edc076469472f785d82aa5e01925f40ff0c6c1ec`  
		Last Modified: Wed, 11 Nov 2026 23:42:27 GMT  
		Size: 392.1 MB (392078210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:117c4222b0ed76338e92e6e099b9f55cfae45896f85a826cd8308ba800d6e790`  
		Last Modified: Wed, 11 Nov 2026 23:42:16 GMT  
		Size: 768.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c950cf5c14fb39c1275911bfa7265bbcf34161838496823c63b555e261bab746`  
		Last Modified: Wed, 11 Nov 2026 23:42:18 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee2f78b5fe5ab777c6789ee4f8a970b07b229aa69e53340e28040b26d030c595`  
		Last Modified: Wed, 11 Nov 2026 23:42:18 GMT  
		Size: 596.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f22c154c9587622985c70b799deb06b77ea733ef635391901bc2170a9589a6fb`  
		Last Modified: Wed, 11 Nov 2026 23:42:19 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18.0` - unknown; unknown

```console
$ docker pull odoo@sha256:3c7a0560678996e4263a654c7bb295cfc01401d8b8e5273b43388d01faabbc89
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.0 MB (44013429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b84e3424c3255b34457587202bb1d4d95ae45f5261d0ff532209212a8a7e21e9`

```dockerfile
```

-	Layers:
	-	`sha256:3aec8c286cc700f8b282c1f582fbe743385e76f0c1a60b9111832563c86a0b73`  
		Last Modified: Wed, 11 Nov 2026 23:42:18 GMT  
		Size: 44.0 MB (43986080 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:19802c9f15dd4bb89ce700a24fc80be9a536c5120640c074141d7e7c5c92279b`  
		Last Modified: Wed, 11 Nov 2026 23:42:15 GMT  
		Size: 27.3 KB (27349 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:18.0` - linux; ppc64le

```console
$ docker pull odoo@sha256:5adce562290053184d0d6c4308a5c9322e49a407516084ebbaeb7055d328665e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **692.3 MB (692279280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6969ab3e9ba162cccd48f93c369ff19837e6d3c00f8a6ef7b68dadf147a1c872`
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
ARG ODOO_RELEASE=20261102
# Thu, 12 Nov 2026 04:00:00 GMT
ARG ODOO_SHA=349c907ea772231b39859c6e6a13093587860861
# Thu, 12 Nov 2026 04:19:09 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261102 ODOO_SHA=349c907ea772231b39859c6e6a13093587860861
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Thu, 12 Nov 2026 04:19:13 GMT
COPY ./entrypoint.sh / # buildkit
# Thu, 12 Nov 2026 04:19:14 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Thu, 12 Nov 2026 04:19:15 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261102 ODOO_SHA=349c907ea772231b39859c6e6a13093587860861
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Thu, 12 Nov 2026 04:19:15 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Thu, 12 Nov 2026 04:19:15 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Thu, 12 Nov 2026 04:19:15 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Thu, 12 Nov 2026 04:19:15 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Thu, 12 Nov 2026 04:19:15 GMT
USER odoo
# Thu, 12 Nov 2026 04:19:15 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 12 Nov 2026 04:19:15 GMT
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
	-	`sha256:11057feb7167a9f81ff4670d322e0e0d157f723dff1d8964733cec7f53e48e18`  
		Last Modified: Thu, 12 Nov 2026 04:25:24 GMT  
		Size: 392.9 MB (392858651 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d8ae271ee97c5c8cb04ba8b29c6615d888d4de1c8031ff1435e218253a51da9`  
		Last Modified: Thu, 12 Nov 2026 04:25:12 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57efffb4ea4e358849e8c00de21dd45f235522a987b094091266484d8812fd38`  
		Last Modified: Thu, 12 Nov 2026 04:25:12 GMT  
		Size: 557.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d9c70df9dd424ba180c6a1507d3ec735dd4bfa87cb83cb0c37e089cb678ed0d`  
		Last Modified: Thu, 12 Nov 2026 04:25:12 GMT  
		Size: 600.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8290a166368084b87ec5e81c4a7410d0675124d3a475679233d349eb2ce44cac`  
		Last Modified: Thu, 12 Nov 2026 04:25:14 GMT  
		Size: 877.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18.0` - unknown; unknown

```console
$ docker pull odoo@sha256:6e2a6a34519762663587753b5fba703d33fc20299abfffe0a8c011d9a2e77571
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.0 MB (44014425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b8b95510d1b3074fffa0092729a52db123dd49e3a5823ad9117199769268d24`

```dockerfile
```

-	Layers:
	-	`sha256:67da559096dec25e4b4f0d61353516e6d89025f39529b76246d5caf92432d071`  
		Last Modified: Thu, 12 Nov 2026 04:25:15 GMT  
		Size: 44.0 MB (43987172 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:abb42a90e02523825ae17be06f1f02a4789d84505e0598c02c2095b9e8af1f9b`  
		Last Modified: Thu, 12 Nov 2026 04:25:12 GMT  
		Size: 27.3 KB (27253 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:18.0-20261112`

**does not exist** (yet?)

## `odoo:19`

```console
$ docker pull odoo@sha256:4f3c722d934ed64300bc7df7448c24e952501424aacfa103407b702adf8573ce
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
$ docker pull odoo@sha256:8469dbc45e522c7ced24e52b49bfd4b2095bed81a7722de52ddcd4fae3dac554
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **702.3 MB (702313152 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc113405e2320ca8a3e650c06d5310a8ae5d00fcd57f76913cc596732b4506c0`
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
# Wed, 11 Nov 2026 23:33:02 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Wed, 11 Nov 2026 23:33:02 GMT
SHELL [/bin/bash -xo pipefail -c]
# Wed, 11 Nov 2026 23:33:02 GMT
ENV LANG=en_US.UTF-8
# Wed, 11 Nov 2026 23:33:02 GMT
ARG TARGETARCH=amd64
# Wed, 11 Nov 2026 23:33:02 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Wed, 11 Nov 2026 23:33:10 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:36:11 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:36:11 GMT
ENV ODOO_VERSION=19.0
# Wed, 11 Nov 2026 23:36:11 GMT
ARG ODOO_RELEASE=20261102
# Wed, 11 Nov 2026 23:36:11 GMT
ARG ODOO_SHA=a68201e81fff90efd7f7bc7f5f1d8ac43d633587
# Wed, 11 Nov 2026 23:37:39 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261102 ODOO_SHA=a68201e81fff90efd7f7bc7f5f1d8ac43d633587
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Wed, 11 Nov 2026 23:37:39 GMT
COPY ./entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:37:39 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Wed, 11 Nov 2026 23:37:39 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261102 ODOO_SHA=a68201e81fff90efd7f7bc7f5f1d8ac43d633587
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Wed, 11 Nov 2026 23:37:39 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 11 Nov 2026 23:37:39 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Wed, 11 Nov 2026 23:37:39 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Wed, 11 Nov 2026 23:37:39 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Wed, 11 Nov 2026 23:37:39 GMT
USER odoo
# Wed, 11 Nov 2026 23:37:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 11 Nov 2026 23:37:39 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:26538842dfbfed820e62531e047bc6cfd3359a7e0a52f59c1a951ccc6ca787fe`  
		Last Modified: Wed, 11 Nov 2026 22:58:09 GMT  
		Size: 29.8 MB (29793223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac7340056bf4aa0cef519a1f265ae53c62040e9255a1bc7f788d75afc75db07e`  
		Last Modified: Wed, 11 Nov 2026 23:39:27 GMT  
		Size: 238.7 MB (238717964 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:231c92724a5740d9e661d07ab56bd01e670825c2936716482630de54e1dca8ee`  
		Last Modified: Wed, 11 Nov 2026 23:39:18 GMT  
		Size: 16.6 MB (16632452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bdbd07867bba0b6803388539478a5c341b7aacc8ceca21883b3cfc352fd3ffa`  
		Last Modified: Wed, 11 Nov 2026 23:39:16 GMT  
		Size: 874.0 KB (874020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90f4a303d26b760bd281fac04e950a8b5eb62891c332072cf402ea44bce9f920`  
		Last Modified: Wed, 11 Nov 2026 23:39:31 GMT  
		Size: 416.3 MB (416292746 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dc58092e2d7314ac630d81b021cfb3852cf369f1df44effd92721e2ebfe1500`  
		Last Modified: Wed, 11 Nov 2026 23:39:18 GMT  
		Size: 717.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a2e562fe5320d431b107f0d6a5db56ff77faee112b266097948fe9c452b39bc`  
		Last Modified: Wed, 11 Nov 2026 23:39:19 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f73f6cac4c76c7b46a7623b2c4f983474d2398ac5ed938b153fe97f389c446f`  
		Last Modified: Wed, 11 Nov 2026 23:39:19 GMT  
		Size: 596.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4212e0480f61100f3013987bf051c9b18fa64177e05f6c4a4338f858fa88f24b`  
		Last Modified: Wed, 11 Nov 2026 23:39:20 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19` - unknown; unknown

```console
$ docker pull odoo@sha256:f26659c67bbabd6a2cf5d0c71201b82e9e41d2682165c1646f85326810b7cc6e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.7 MB (52664008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07a8cf931cd75842f5f029c08818b951310654fc8d499a2e8c663e857f4f1f4e`

```dockerfile
```

-	Layers:
	-	`sha256:1f96eedb84db8bfc1a436a2d85e24469ec2cad1c55e61681b2c41b6f5b4da7b4`  
		Last Modified: Wed, 11 Nov 2026 23:39:20 GMT  
		Size: 52.6 MB (52636811 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:388e3db41db5b738b2fa5b8555c83841d3e4a335ae418afabe65a07a8a9bbb6a`  
		Last Modified: Wed, 11 Nov 2026 23:39:16 GMT  
		Size: 27.2 KB (27197 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:19` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:43fa401106db88e7357d6b43e76e2284c10b249f14a6c272f479cf801fc451eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **696.4 MB (696381758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5251fff8a7c6a9c051c2696da8585b41c8f7c958f579c1d3fe21a565dfa9d355`
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
# Wed, 11 Nov 2026 23:36:48 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Wed, 11 Nov 2026 23:36:48 GMT
SHELL [/bin/bash -xo pipefail -c]
# Wed, 11 Nov 2026 23:36:48 GMT
ENV LANG=en_US.UTF-8
# Wed, 11 Nov 2026 23:36:48 GMT
ARG TARGETARCH=arm64
# Wed, 11 Nov 2026 23:36:48 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Wed, 11 Nov 2026 23:36:54 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:39:36 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:39:36 GMT
ENV ODOO_VERSION=19.0
# Wed, 11 Nov 2026 23:39:36 GMT
ARG ODOO_RELEASE=20261102
# Wed, 11 Nov 2026 23:39:36 GMT
ARG ODOO_SHA=a68201e81fff90efd7f7bc7f5f1d8ac43d633587
# Wed, 11 Nov 2026 23:41:02 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261102 ODOO_SHA=a68201e81fff90efd7f7bc7f5f1d8ac43d633587
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Wed, 11 Nov 2026 23:41:03 GMT
COPY ./entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:41:03 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Wed, 11 Nov 2026 23:41:03 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261102 ODOO_SHA=a68201e81fff90efd7f7bc7f5f1d8ac43d633587
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Wed, 11 Nov 2026 23:41:03 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 11 Nov 2026 23:41:03 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Wed, 11 Nov 2026 23:41:03 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Wed, 11 Nov 2026 23:41:03 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Wed, 11 Nov 2026 23:41:03 GMT
USER odoo
# Wed, 11 Nov 2026 23:41:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 11 Nov 2026 23:41:03 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:0c72064db2470cf0efa5fa1935125d317d0c2f6d95855143ae6a816ce4b20b56`  
		Last Modified: Wed, 11 Nov 2026 22:58:08 GMT  
		Size: 29.0 MB (28965258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35537e3037cb9d2623b58b7eb632371945bee23906a5847eaffcf0a05ef09249`  
		Last Modified: Wed, 11 Nov 2026 23:43:03 GMT  
		Size: 236.2 MB (236192061 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a854f77d2e19cba7089617fd467c3005ac0327cc1222fed2ba676476ba85f58e`  
		Last Modified: Wed, 11 Nov 2026 23:42:55 GMT  
		Size: 14.2 MB (14189554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0e9c214864b834e64d447b631d1ee57be638289719bbbb81046039caf16a62d`  
		Last Modified: Wed, 11 Nov 2026 23:42:54 GMT  
		Size: 874.0 KB (874016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ca772c0e737d0d7b6479c73f6b58225edc7efdea20a7f70c3b1c705f57b375f`  
		Last Modified: Wed, 11 Nov 2026 23:43:07 GMT  
		Size: 416.2 MB (416158121 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:433b4776b2a52a37d27a3f0bd196654718f991a523917c8af9ad06baf0cfa825`  
		Last Modified: Wed, 11 Nov 2026 23:42:55 GMT  
		Size: 718.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:067a4e0d868528b4eb30a576baf8fce47aeae71717ba786c59d03203ee82e2ce`  
		Last Modified: Wed, 11 Nov 2026 23:42:56 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbd0fefe7df25079125326537daedc2a69f2457012e99ae59df1bf8409c11b9e`  
		Last Modified: Wed, 11 Nov 2026 23:42:56 GMT  
		Size: 596.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:100bc1ba1940a34a0636d5cab9273a68f0a9f951fabc50562c4ddef222526543`  
		Last Modified: Wed, 11 Nov 2026 23:42:57 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19` - unknown; unknown

```console
$ docker pull odoo@sha256:23445c5c93d523c1f42b05cc6adf89f596fd3e0f6cd0e10300a6d66454bd55e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.7 MB (52671432 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8540eabd8bf7a2b0bb1bb0b91f4e5030b623a84d13e5199eebd8cbf921059afd`

```dockerfile
```

-	Layers:
	-	`sha256:598f00ada830f6dd25a13196e3a79562408b3be00843598f35caf378b2ebcba8`  
		Last Modified: Wed, 11 Nov 2026 23:42:57 GMT  
		Size: 52.6 MB (52644083 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8f06ccceb5305021ecfc9f41d3adce82834c8ec7056703272a5ece720b516de5`  
		Last Modified: Wed, 11 Nov 2026 23:42:54 GMT  
		Size: 27.3 KB (27349 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:19` - linux; ppc64le

```console
$ docker pull odoo@sha256:4a99d1c4a324a79a206834a15aa72d0ed370f26201f20bab4dd6a6651140ea11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **716.4 MB (716418871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57c0bc0cf11a442f3de2090a8afcb88b9aced592abbfad23874fcb041a6db8bb`
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
ARG ODOO_RELEASE=20261102
# Thu, 12 Nov 2026 04:00:00 GMT
ARG ODOO_SHA=a68201e81fff90efd7f7bc7f5f1d8ac43d633587
# Thu, 12 Nov 2026 04:06:35 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261102 ODOO_SHA=a68201e81fff90efd7f7bc7f5f1d8ac43d633587
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Thu, 12 Nov 2026 04:06:41 GMT
COPY ./entrypoint.sh / # buildkit
# Thu, 12 Nov 2026 04:06:42 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Thu, 12 Nov 2026 04:06:49 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261102 ODOO_SHA=a68201e81fff90efd7f7bc7f5f1d8ac43d633587
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Thu, 12 Nov 2026 04:06:49 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Thu, 12 Nov 2026 04:06:49 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Thu, 12 Nov 2026 04:06:49 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Thu, 12 Nov 2026 04:06:51 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Thu, 12 Nov 2026 04:06:51 GMT
USER odoo
# Thu, 12 Nov 2026 04:06:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 12 Nov 2026 04:06:51 GMT
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
	-	`sha256:40e6b4947223a58c4c30734c5bdd44ba189e2fb7537f72a5abb38b8dfd1a6a38`  
		Last Modified: Thu, 12 Nov 2026 04:14:39 GMT  
		Size: 417.0 MB (416998293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6ff2f5de9d5beeee5bf8fb43bc4b471652e5e90a4bf3836cd94907a8f8f5380`  
		Last Modified: Thu, 12 Nov 2026 04:14:22 GMT  
		Size: 718.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c70e814de0b8cd3fd035110b3bd6e2f700d80d40e6cae045c32e3a2ddefeb0c9`  
		Last Modified: Thu, 12 Nov 2026 04:14:24 GMT  
		Size: 557.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2225759f259cbea7b280fcda8aae5d3b7725369c91ebce212be8d6584ac98d75`  
		Last Modified: Thu, 12 Nov 2026 04:14:24 GMT  
		Size: 600.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a76157c304044ecb6d859299c9ba634c3c6d7a7f16c285f3321037f2bd5f65e4`  
		Last Modified: Thu, 12 Nov 2026 04:14:25 GMT  
		Size: 875.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19` - unknown; unknown

```console
$ docker pull odoo@sha256:9eb12d5cb757d1d92a5b753062dffede604c787e09affa2e9a32b371914f4eb7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.7 MB (52672427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fea9b8e8e5a45562665a253597b9535a89352ad6fd7cf0647d5c5ec332efa11`

```dockerfile
```

-	Layers:
	-	`sha256:20bc2db91fef24f6d754668fb4ee0aacf813c08d7455720bc057af1b6b96091e`  
		Last Modified: Thu, 12 Nov 2026 04:14:26 GMT  
		Size: 52.6 MB (52645175 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f0e4b291c2065496ab58ead0cd9d1ad12529b9ec771a30d756774bacc29a6edf`  
		Last Modified: Thu, 12 Nov 2026 04:14:21 GMT  
		Size: 27.3 KB (27252 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:19.0`

```console
$ docker pull odoo@sha256:4f3c722d934ed64300bc7df7448c24e952501424aacfa103407b702adf8573ce
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
$ docker pull odoo@sha256:8469dbc45e522c7ced24e52b49bfd4b2095bed81a7722de52ddcd4fae3dac554
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **702.3 MB (702313152 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc113405e2320ca8a3e650c06d5310a8ae5d00fcd57f76913cc596732b4506c0`
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
# Wed, 11 Nov 2026 23:33:02 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Wed, 11 Nov 2026 23:33:02 GMT
SHELL [/bin/bash -xo pipefail -c]
# Wed, 11 Nov 2026 23:33:02 GMT
ENV LANG=en_US.UTF-8
# Wed, 11 Nov 2026 23:33:02 GMT
ARG TARGETARCH=amd64
# Wed, 11 Nov 2026 23:33:02 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Wed, 11 Nov 2026 23:33:10 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:36:11 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:36:11 GMT
ENV ODOO_VERSION=19.0
# Wed, 11 Nov 2026 23:36:11 GMT
ARG ODOO_RELEASE=20261102
# Wed, 11 Nov 2026 23:36:11 GMT
ARG ODOO_SHA=a68201e81fff90efd7f7bc7f5f1d8ac43d633587
# Wed, 11 Nov 2026 23:37:39 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261102 ODOO_SHA=a68201e81fff90efd7f7bc7f5f1d8ac43d633587
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Wed, 11 Nov 2026 23:37:39 GMT
COPY ./entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:37:39 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Wed, 11 Nov 2026 23:37:39 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261102 ODOO_SHA=a68201e81fff90efd7f7bc7f5f1d8ac43d633587
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Wed, 11 Nov 2026 23:37:39 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 11 Nov 2026 23:37:39 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Wed, 11 Nov 2026 23:37:39 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Wed, 11 Nov 2026 23:37:39 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Wed, 11 Nov 2026 23:37:39 GMT
USER odoo
# Wed, 11 Nov 2026 23:37:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 11 Nov 2026 23:37:39 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:26538842dfbfed820e62531e047bc6cfd3359a7e0a52f59c1a951ccc6ca787fe`  
		Last Modified: Wed, 11 Nov 2026 22:58:09 GMT  
		Size: 29.8 MB (29793223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac7340056bf4aa0cef519a1f265ae53c62040e9255a1bc7f788d75afc75db07e`  
		Last Modified: Wed, 11 Nov 2026 23:39:27 GMT  
		Size: 238.7 MB (238717964 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:231c92724a5740d9e661d07ab56bd01e670825c2936716482630de54e1dca8ee`  
		Last Modified: Wed, 11 Nov 2026 23:39:18 GMT  
		Size: 16.6 MB (16632452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bdbd07867bba0b6803388539478a5c341b7aacc8ceca21883b3cfc352fd3ffa`  
		Last Modified: Wed, 11 Nov 2026 23:39:16 GMT  
		Size: 874.0 KB (874020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90f4a303d26b760bd281fac04e950a8b5eb62891c332072cf402ea44bce9f920`  
		Last Modified: Wed, 11 Nov 2026 23:39:31 GMT  
		Size: 416.3 MB (416292746 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dc58092e2d7314ac630d81b021cfb3852cf369f1df44effd92721e2ebfe1500`  
		Last Modified: Wed, 11 Nov 2026 23:39:18 GMT  
		Size: 717.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a2e562fe5320d431b107f0d6a5db56ff77faee112b266097948fe9c452b39bc`  
		Last Modified: Wed, 11 Nov 2026 23:39:19 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f73f6cac4c76c7b46a7623b2c4f983474d2398ac5ed938b153fe97f389c446f`  
		Last Modified: Wed, 11 Nov 2026 23:39:19 GMT  
		Size: 596.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4212e0480f61100f3013987bf051c9b18fa64177e05f6c4a4338f858fa88f24b`  
		Last Modified: Wed, 11 Nov 2026 23:39:20 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19.0` - unknown; unknown

```console
$ docker pull odoo@sha256:f26659c67bbabd6a2cf5d0c71201b82e9e41d2682165c1646f85326810b7cc6e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.7 MB (52664008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07a8cf931cd75842f5f029c08818b951310654fc8d499a2e8c663e857f4f1f4e`

```dockerfile
```

-	Layers:
	-	`sha256:1f96eedb84db8bfc1a436a2d85e24469ec2cad1c55e61681b2c41b6f5b4da7b4`  
		Last Modified: Wed, 11 Nov 2026 23:39:20 GMT  
		Size: 52.6 MB (52636811 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:388e3db41db5b738b2fa5b8555c83841d3e4a335ae418afabe65a07a8a9bbb6a`  
		Last Modified: Wed, 11 Nov 2026 23:39:16 GMT  
		Size: 27.2 KB (27197 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:19.0` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:43fa401106db88e7357d6b43e76e2284c10b249f14a6c272f479cf801fc451eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **696.4 MB (696381758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5251fff8a7c6a9c051c2696da8585b41c8f7c958f579c1d3fe21a565dfa9d355`
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
# Wed, 11 Nov 2026 23:36:48 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Wed, 11 Nov 2026 23:36:48 GMT
SHELL [/bin/bash -xo pipefail -c]
# Wed, 11 Nov 2026 23:36:48 GMT
ENV LANG=en_US.UTF-8
# Wed, 11 Nov 2026 23:36:48 GMT
ARG TARGETARCH=arm64
# Wed, 11 Nov 2026 23:36:48 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Wed, 11 Nov 2026 23:36:54 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:39:36 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:39:36 GMT
ENV ODOO_VERSION=19.0
# Wed, 11 Nov 2026 23:39:36 GMT
ARG ODOO_RELEASE=20261102
# Wed, 11 Nov 2026 23:39:36 GMT
ARG ODOO_SHA=a68201e81fff90efd7f7bc7f5f1d8ac43d633587
# Wed, 11 Nov 2026 23:41:02 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261102 ODOO_SHA=a68201e81fff90efd7f7bc7f5f1d8ac43d633587
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Wed, 11 Nov 2026 23:41:03 GMT
COPY ./entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:41:03 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Wed, 11 Nov 2026 23:41:03 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261102 ODOO_SHA=a68201e81fff90efd7f7bc7f5f1d8ac43d633587
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Wed, 11 Nov 2026 23:41:03 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 11 Nov 2026 23:41:03 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Wed, 11 Nov 2026 23:41:03 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Wed, 11 Nov 2026 23:41:03 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Wed, 11 Nov 2026 23:41:03 GMT
USER odoo
# Wed, 11 Nov 2026 23:41:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 11 Nov 2026 23:41:03 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:0c72064db2470cf0efa5fa1935125d317d0c2f6d95855143ae6a816ce4b20b56`  
		Last Modified: Wed, 11 Nov 2026 22:58:08 GMT  
		Size: 29.0 MB (28965258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35537e3037cb9d2623b58b7eb632371945bee23906a5847eaffcf0a05ef09249`  
		Last Modified: Wed, 11 Nov 2026 23:43:03 GMT  
		Size: 236.2 MB (236192061 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a854f77d2e19cba7089617fd467c3005ac0327cc1222fed2ba676476ba85f58e`  
		Last Modified: Wed, 11 Nov 2026 23:42:55 GMT  
		Size: 14.2 MB (14189554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0e9c214864b834e64d447b631d1ee57be638289719bbbb81046039caf16a62d`  
		Last Modified: Wed, 11 Nov 2026 23:42:54 GMT  
		Size: 874.0 KB (874016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ca772c0e737d0d7b6479c73f6b58225edc7efdea20a7f70c3b1c705f57b375f`  
		Last Modified: Wed, 11 Nov 2026 23:43:07 GMT  
		Size: 416.2 MB (416158121 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:433b4776b2a52a37d27a3f0bd196654718f991a523917c8af9ad06baf0cfa825`  
		Last Modified: Wed, 11 Nov 2026 23:42:55 GMT  
		Size: 718.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:067a4e0d868528b4eb30a576baf8fce47aeae71717ba786c59d03203ee82e2ce`  
		Last Modified: Wed, 11 Nov 2026 23:42:56 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbd0fefe7df25079125326537daedc2a69f2457012e99ae59df1bf8409c11b9e`  
		Last Modified: Wed, 11 Nov 2026 23:42:56 GMT  
		Size: 596.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:100bc1ba1940a34a0636d5cab9273a68f0a9f951fabc50562c4ddef222526543`  
		Last Modified: Wed, 11 Nov 2026 23:42:57 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19.0` - unknown; unknown

```console
$ docker pull odoo@sha256:23445c5c93d523c1f42b05cc6adf89f596fd3e0f6cd0e10300a6d66454bd55e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.7 MB (52671432 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8540eabd8bf7a2b0bb1bb0b91f4e5030b623a84d13e5199eebd8cbf921059afd`

```dockerfile
```

-	Layers:
	-	`sha256:598f00ada830f6dd25a13196e3a79562408b3be00843598f35caf378b2ebcba8`  
		Last Modified: Wed, 11 Nov 2026 23:42:57 GMT  
		Size: 52.6 MB (52644083 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8f06ccceb5305021ecfc9f41d3adce82834c8ec7056703272a5ece720b516de5`  
		Last Modified: Wed, 11 Nov 2026 23:42:54 GMT  
		Size: 27.3 KB (27349 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:19.0` - linux; ppc64le

```console
$ docker pull odoo@sha256:4a99d1c4a324a79a206834a15aa72d0ed370f26201f20bab4dd6a6651140ea11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **716.4 MB (716418871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57c0bc0cf11a442f3de2090a8afcb88b9aced592abbfad23874fcb041a6db8bb`
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
ARG ODOO_RELEASE=20261102
# Thu, 12 Nov 2026 04:00:00 GMT
ARG ODOO_SHA=a68201e81fff90efd7f7bc7f5f1d8ac43d633587
# Thu, 12 Nov 2026 04:06:35 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261102 ODOO_SHA=a68201e81fff90efd7f7bc7f5f1d8ac43d633587
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Thu, 12 Nov 2026 04:06:41 GMT
COPY ./entrypoint.sh / # buildkit
# Thu, 12 Nov 2026 04:06:42 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Thu, 12 Nov 2026 04:06:49 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261102 ODOO_SHA=a68201e81fff90efd7f7bc7f5f1d8ac43d633587
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Thu, 12 Nov 2026 04:06:49 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Thu, 12 Nov 2026 04:06:49 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Thu, 12 Nov 2026 04:06:49 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Thu, 12 Nov 2026 04:06:51 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Thu, 12 Nov 2026 04:06:51 GMT
USER odoo
# Thu, 12 Nov 2026 04:06:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 12 Nov 2026 04:06:51 GMT
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
	-	`sha256:40e6b4947223a58c4c30734c5bdd44ba189e2fb7537f72a5abb38b8dfd1a6a38`  
		Last Modified: Thu, 12 Nov 2026 04:14:39 GMT  
		Size: 417.0 MB (416998293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6ff2f5de9d5beeee5bf8fb43bc4b471652e5e90a4bf3836cd94907a8f8f5380`  
		Last Modified: Thu, 12 Nov 2026 04:14:22 GMT  
		Size: 718.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c70e814de0b8cd3fd035110b3bd6e2f700d80d40e6cae045c32e3a2ddefeb0c9`  
		Last Modified: Thu, 12 Nov 2026 04:14:24 GMT  
		Size: 557.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2225759f259cbea7b280fcda8aae5d3b7725369c91ebce212be8d6584ac98d75`  
		Last Modified: Thu, 12 Nov 2026 04:14:24 GMT  
		Size: 600.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a76157c304044ecb6d859299c9ba634c3c6d7a7f16c285f3321037f2bd5f65e4`  
		Last Modified: Thu, 12 Nov 2026 04:14:25 GMT  
		Size: 875.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19.0` - unknown; unknown

```console
$ docker pull odoo@sha256:9eb12d5cb757d1d92a5b753062dffede604c787e09affa2e9a32b371914f4eb7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.7 MB (52672427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fea9b8e8e5a45562665a253597b9535a89352ad6fd7cf0647d5c5ec332efa11`

```dockerfile
```

-	Layers:
	-	`sha256:20bc2db91fef24f6d754668fb4ee0aacf813c08d7455720bc057af1b6b96091e`  
		Last Modified: Thu, 12 Nov 2026 04:14:26 GMT  
		Size: 52.6 MB (52645175 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f0e4b291c2065496ab58ead0cd9d1ad12529b9ec771a30d756774bacc29a6edf`  
		Last Modified: Thu, 12 Nov 2026 04:14:21 GMT  
		Size: 27.3 KB (27252 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:19.0-20261112`

**does not exist** (yet?)

## `odoo:20`

```console
$ docker pull odoo@sha256:68a96ddcbb3e3cc3f6ce1462defd20ca62baef11d599fb70dedc11505e979015
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
$ docker pull odoo@sha256:3f1550c3476538141afdb106284abe95b77dd675a673d6fc1755c83f55dd3bad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **806.6 MB (806590541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2a3809a94da54a67fa1aa9cab3f3adda625d5db394d7f91a22e42c56d144633`
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
# Wed, 11 Nov 2026 23:33:02 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Wed, 11 Nov 2026 23:33:02 GMT
SHELL [/bin/bash -xo pipefail -c]
# Wed, 11 Nov 2026 23:33:02 GMT
ENV LANG=en_US.UTF-8
# Wed, 11 Nov 2026 23:33:02 GMT
ARG TARGETARCH=amd64
# Wed, 11 Nov 2026 23:33:02 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Wed, 11 Nov 2026 23:33:11 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:36:11 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:36:11 GMT
ENV ODOO_VERSION=20.0
# Wed, 11 Nov 2026 23:36:11 GMT
ARG ODOO_RELEASE=20261102
# Wed, 11 Nov 2026 23:36:11 GMT
ARG ODOO_SHA=0706abac09a953f10007e26aa31767af5f9d1b2b
# Wed, 11 Nov 2026 23:37:44 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261102 ODOO_SHA=0706abac09a953f10007e26aa31767af5f9d1b2b
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Wed, 11 Nov 2026 23:37:44 GMT
COPY ./entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:37:44 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Wed, 11 Nov 2026 23:37:45 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261102 ODOO_SHA=0706abac09a953f10007e26aa31767af5f9d1b2b
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Wed, 11 Nov 2026 23:37:45 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 11 Nov 2026 23:37:45 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Wed, 11 Nov 2026 23:37:45 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Wed, 11 Nov 2026 23:37:45 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Wed, 11 Nov 2026 23:37:45 GMT
USER odoo
# Wed, 11 Nov 2026 23:37:45 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 11 Nov 2026 23:37:45 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:26538842dfbfed820e62531e047bc6cfd3359a7e0a52f59c1a951ccc6ca787fe`  
		Last Modified: Wed, 11 Nov 2026 22:58:09 GMT  
		Size: 29.8 MB (29793223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e5f31774b78d628d0d977d0b6cd8a101c3c319410bbd8eca03260e57171e7f5`  
		Last Modified: Wed, 11 Nov 2026 23:39:47 GMT  
		Size: 238.7 MB (238717445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0e70ac44529bba636b8d955f9cd250b3b2c974c9b1fb348442697fe1267e11e`  
		Last Modified: Wed, 11 Nov 2026 23:39:33 GMT  
		Size: 16.6 MB (16632506 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45819974ca45a63b2c9ab242f0b1c9e11b5967e39d1edb3e572b2c26972e3347`  
		Last Modified: Wed, 11 Nov 2026 23:39:31 GMT  
		Size: 874.1 KB (874126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:264adbd8398f66001983b6a123dcc8cb5c66ca8d8fa91cf9b336345548dd747e`  
		Last Modified: Wed, 11 Nov 2026 23:39:54 GMT  
		Size: 520.6 MB (520570471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4803c45a5b9e3046b6e50906a9e6e2b8f7dbda234703654ca68be8bab0313d9`  
		Last Modified: Wed, 11 Nov 2026 23:39:33 GMT  
		Size: 718.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c705aaa907acd314b4c3b548ef5eeeb869cae04a7ca3db3a20acb707e9e68f7f`  
		Last Modified: Wed, 11 Nov 2026 23:39:35 GMT  
		Size: 567.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfe7c05f428587677161442f6f1acc3998759b4ca996b8e2478d0ac060d9420f`  
		Last Modified: Wed, 11 Nov 2026 23:39:35 GMT  
		Size: 609.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6200872be536ce6215fff6144e70f3b369741e847d28a7d72f71ff9ea227ffb`  
		Last Modified: Wed, 11 Nov 2026 23:39:36 GMT  
		Size: 876.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:20` - unknown; unknown

```console
$ docker pull odoo@sha256:38ed09777af15137ad2e7be76761c23c32cb6bd7c06fe3e916494422f502c3a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.3 MB (55346416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b4a92bd9c4f6bfc6cb6302f9f203b769627afaee111eb3504b8f7248f705f28`

```dockerfile
```

-	Layers:
	-	`sha256:caa3c44ad55fd93a8ab01d534d65ad259cc244d3b4dd9f8d23dcee3a7f34e0d2`  
		Last Modified: Wed, 11 Nov 2026 23:39:37 GMT  
		Size: 55.3 MB (55318925 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a655307809adb5d0d11177656283b8d33382166eba9890c44ebc74a5f21cf7ec`  
		Last Modified: Wed, 11 Nov 2026 23:39:31 GMT  
		Size: 27.5 KB (27491 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:20` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:cb6c2f213ede50cf7d03a69bc5ad657dc50e649fd8a6f9f1f1ed9c0720f2954f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **800.7 MB (800666660 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da36534c175b5c8629f959db4ecf75839f5a69124e71ea72c01c0331b5ccb4ee`
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
# Wed, 11 Nov 2026 23:36:47 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Wed, 11 Nov 2026 23:36:47 GMT
SHELL [/bin/bash -xo pipefail -c]
# Wed, 11 Nov 2026 23:36:47 GMT
ENV LANG=en_US.UTF-8
# Wed, 11 Nov 2026 23:36:47 GMT
ARG TARGETARCH=arm64
# Wed, 11 Nov 2026 23:36:47 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Wed, 11 Nov 2026 23:36:53 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:39:36 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:39:36 GMT
ENV ODOO_VERSION=20.0
# Wed, 11 Nov 2026 23:39:36 GMT
ARG ODOO_RELEASE=20261102
# Wed, 11 Nov 2026 23:39:36 GMT
ARG ODOO_SHA=0706abac09a953f10007e26aa31767af5f9d1b2b
# Wed, 11 Nov 2026 23:41:04 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261102 ODOO_SHA=0706abac09a953f10007e26aa31767af5f9d1b2b
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Wed, 11 Nov 2026 23:41:05 GMT
COPY ./entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:41:05 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Wed, 11 Nov 2026 23:41:05 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261102 ODOO_SHA=0706abac09a953f10007e26aa31767af5f9d1b2b
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Wed, 11 Nov 2026 23:41:05 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 11 Nov 2026 23:41:05 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Wed, 11 Nov 2026 23:41:05 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Wed, 11 Nov 2026 23:41:05 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Wed, 11 Nov 2026 23:41:05 GMT
USER odoo
# Wed, 11 Nov 2026 23:41:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 11 Nov 2026 23:41:05 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:0c72064db2470cf0efa5fa1935125d317d0c2f6d95855143ae6a816ce4b20b56`  
		Last Modified: Wed, 11 Nov 2026 22:58:08 GMT  
		Size: 29.0 MB (28965258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:539de811d6030bcf3aed121dd8bd92ac0f8003ceb864066348b0caab0573c097`  
		Last Modified: Wed, 11 Nov 2026 23:43:11 GMT  
		Size: 236.2 MB (236192477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2f832005f68a99052050f5432df60d7832082d18adfe6ba173efffb30811801`  
		Last Modified: Wed, 11 Nov 2026 23:43:02 GMT  
		Size: 14.2 MB (14189546 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc96e9ad6c873c2fc67b7b25b3b32911034686b35179cf90906f474ad5d4c86f`  
		Last Modified: Wed, 11 Nov 2026 23:43:01 GMT  
		Size: 874.0 KB (873972 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f31568267a978a2552833b05d428f3deb9cc17eae2d1f898a3c45966ef6834c8`  
		Last Modified: Wed, 11 Nov 2026 23:43:16 GMT  
		Size: 520.4 MB (520442641 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae178ff0644795cfa6c1488234d83939758641638146b3eedb362ca4c38b4163`  
		Last Modified: Wed, 11 Nov 2026 23:43:02 GMT  
		Size: 718.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40a625af9e9261aae1fe5f656041529b2716bf160cbc569d62fd6e317ccf8573`  
		Last Modified: Wed, 11 Nov 2026 23:43:03 GMT  
		Size: 565.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4f1d32638ca29becdd3e86ae1fc39c7d307bfbd1a2ab790eea07a127293873f`  
		Last Modified: Wed, 11 Nov 2026 23:43:03 GMT  
		Size: 605.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d8c0ac42a634c5920ede7c481c85542cab45279b9c8ee01b91f7444aad1020a`  
		Last Modified: Wed, 11 Nov 2026 23:43:05 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:20` - unknown; unknown

```console
$ docker pull odoo@sha256:995a84d3b2b6a221387ce2b4446c988bc941511905c10c6670b9d46385962d26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.4 MB (55353864 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3d38e14e549bc39ac562bc667e6534134e5b5900943747e5d14de15e67d8cf4`

```dockerfile
```

-	Layers:
	-	`sha256:b5fa64c596fd9ce17a70ab79cd16ef89dacbdd7d347100eea2a482620c28cee8`  
		Last Modified: Wed, 11 Nov 2026 23:43:05 GMT  
		Size: 55.3 MB (55326209 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c52945d57cf5fcdac2272bb3cbf621b56fdc269cb19e5a7454ebd71759903b36`  
		Last Modified: Wed, 11 Nov 2026 23:43:01 GMT  
		Size: 27.7 KB (27655 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:20` - linux; ppc64le

```console
$ docker pull odoo@sha256:0bdb276920288e0301af0dc30c7be0898fb2a5c373601926614d8c9dfa937c53
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **820.7 MB (820654389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d76bb5239c6a4fa344c7be09c3efdc99d06cfc89360e89bd6b3f08c3ac06ec4a`
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
ARG ODOO_RELEASE=20261102
# Thu, 12 Nov 2026 04:00:00 GMT
ARG ODOO_SHA=0706abac09a953f10007e26aa31767af5f9d1b2b
# Thu, 12 Nov 2026 04:06:36 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261102 ODOO_SHA=0706abac09a953f10007e26aa31767af5f9d1b2b
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Thu, 12 Nov 2026 04:06:41 GMT
COPY ./entrypoint.sh / # buildkit
# Thu, 12 Nov 2026 04:06:42 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Thu, 12 Nov 2026 04:06:49 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261102 ODOO_SHA=0706abac09a953f10007e26aa31767af5f9d1b2b
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Thu, 12 Nov 2026 04:06:49 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Thu, 12 Nov 2026 04:06:49 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Thu, 12 Nov 2026 04:06:49 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Thu, 12 Nov 2026 04:06:51 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Thu, 12 Nov 2026 04:06:51 GMT
USER odoo
# Thu, 12 Nov 2026 04:06:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 12 Nov 2026 04:06:51 GMT
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
	-	`sha256:3f1966816e60401b4373b0fc46176d7f6b5867146e9e2fe10d952f457eed3161`  
		Last Modified: Thu, 12 Nov 2026 04:16:22 GMT  
		Size: 521.2 MB (521233791 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:112304a2ace92ff94303c40eff50f3def6ae951844ae15ba7b17f15eed63617f`  
		Last Modified: Thu, 12 Nov 2026 04:16:08 GMT  
		Size: 717.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3a875545b28e52eb4fa421209caa2f2ebbfa4972c522b0320a8e7e76b88897f`  
		Last Modified: Thu, 12 Nov 2026 04:16:08 GMT  
		Size: 567.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6215f2b58e621e4424f174c51c26a2d12cd668d56f50de995d3aac14017fb49`  
		Last Modified: Thu, 12 Nov 2026 04:16:08 GMT  
		Size: 610.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3d2a0a79e4cbf1d6499b5fb36475f94aa50e12e68524f1f13ab5fd1bc8ed946`  
		Last Modified: Thu, 12 Nov 2026 04:16:09 GMT  
		Size: 876.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:20` - unknown; unknown

```console
$ docker pull odoo@sha256:a10871108e06fbcd33068e8e88ae1084b1a1b3662a77875bc7357f4d497cb886
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.4 MB (55354848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8375cb9a8730e73318b9fea4dec7d8e35e9d4b17feb81eab2fd492a79cd8af78`

```dockerfile
```

-	Layers:
	-	`sha256:9bac9826b1ceb272116fa1acbabba8116efe65b0e51aa391d3939423fa7717c4`  
		Last Modified: Thu, 12 Nov 2026 04:16:11 GMT  
		Size: 55.3 MB (55327295 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b72a36f8571d4efe1225e0282754a27365f8aeb82c371b4bd4514ad5050fb436`  
		Last Modified: Thu, 12 Nov 2026 04:16:07 GMT  
		Size: 27.6 KB (27553 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:20.0`

```console
$ docker pull odoo@sha256:68a96ddcbb3e3cc3f6ce1462defd20ca62baef11d599fb70dedc11505e979015
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
$ docker pull odoo@sha256:3f1550c3476538141afdb106284abe95b77dd675a673d6fc1755c83f55dd3bad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **806.6 MB (806590541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2a3809a94da54a67fa1aa9cab3f3adda625d5db394d7f91a22e42c56d144633`
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
# Wed, 11 Nov 2026 23:33:02 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Wed, 11 Nov 2026 23:33:02 GMT
SHELL [/bin/bash -xo pipefail -c]
# Wed, 11 Nov 2026 23:33:02 GMT
ENV LANG=en_US.UTF-8
# Wed, 11 Nov 2026 23:33:02 GMT
ARG TARGETARCH=amd64
# Wed, 11 Nov 2026 23:33:02 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Wed, 11 Nov 2026 23:33:11 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:36:11 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:36:11 GMT
ENV ODOO_VERSION=20.0
# Wed, 11 Nov 2026 23:36:11 GMT
ARG ODOO_RELEASE=20261102
# Wed, 11 Nov 2026 23:36:11 GMT
ARG ODOO_SHA=0706abac09a953f10007e26aa31767af5f9d1b2b
# Wed, 11 Nov 2026 23:37:44 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261102 ODOO_SHA=0706abac09a953f10007e26aa31767af5f9d1b2b
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Wed, 11 Nov 2026 23:37:44 GMT
COPY ./entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:37:44 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Wed, 11 Nov 2026 23:37:45 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261102 ODOO_SHA=0706abac09a953f10007e26aa31767af5f9d1b2b
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Wed, 11 Nov 2026 23:37:45 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 11 Nov 2026 23:37:45 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Wed, 11 Nov 2026 23:37:45 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Wed, 11 Nov 2026 23:37:45 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Wed, 11 Nov 2026 23:37:45 GMT
USER odoo
# Wed, 11 Nov 2026 23:37:45 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 11 Nov 2026 23:37:45 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:26538842dfbfed820e62531e047bc6cfd3359a7e0a52f59c1a951ccc6ca787fe`  
		Last Modified: Wed, 11 Nov 2026 22:58:09 GMT  
		Size: 29.8 MB (29793223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e5f31774b78d628d0d977d0b6cd8a101c3c319410bbd8eca03260e57171e7f5`  
		Last Modified: Wed, 11 Nov 2026 23:39:47 GMT  
		Size: 238.7 MB (238717445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0e70ac44529bba636b8d955f9cd250b3b2c974c9b1fb348442697fe1267e11e`  
		Last Modified: Wed, 11 Nov 2026 23:39:33 GMT  
		Size: 16.6 MB (16632506 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45819974ca45a63b2c9ab242f0b1c9e11b5967e39d1edb3e572b2c26972e3347`  
		Last Modified: Wed, 11 Nov 2026 23:39:31 GMT  
		Size: 874.1 KB (874126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:264adbd8398f66001983b6a123dcc8cb5c66ca8d8fa91cf9b336345548dd747e`  
		Last Modified: Wed, 11 Nov 2026 23:39:54 GMT  
		Size: 520.6 MB (520570471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4803c45a5b9e3046b6e50906a9e6e2b8f7dbda234703654ca68be8bab0313d9`  
		Last Modified: Wed, 11 Nov 2026 23:39:33 GMT  
		Size: 718.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c705aaa907acd314b4c3b548ef5eeeb869cae04a7ca3db3a20acb707e9e68f7f`  
		Last Modified: Wed, 11 Nov 2026 23:39:35 GMT  
		Size: 567.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfe7c05f428587677161442f6f1acc3998759b4ca996b8e2478d0ac060d9420f`  
		Last Modified: Wed, 11 Nov 2026 23:39:35 GMT  
		Size: 609.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6200872be536ce6215fff6144e70f3b369741e847d28a7d72f71ff9ea227ffb`  
		Last Modified: Wed, 11 Nov 2026 23:39:36 GMT  
		Size: 876.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:20.0` - unknown; unknown

```console
$ docker pull odoo@sha256:38ed09777af15137ad2e7be76761c23c32cb6bd7c06fe3e916494422f502c3a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.3 MB (55346416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b4a92bd9c4f6bfc6cb6302f9f203b769627afaee111eb3504b8f7248f705f28`

```dockerfile
```

-	Layers:
	-	`sha256:caa3c44ad55fd93a8ab01d534d65ad259cc244d3b4dd9f8d23dcee3a7f34e0d2`  
		Last Modified: Wed, 11 Nov 2026 23:39:37 GMT  
		Size: 55.3 MB (55318925 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a655307809adb5d0d11177656283b8d33382166eba9890c44ebc74a5f21cf7ec`  
		Last Modified: Wed, 11 Nov 2026 23:39:31 GMT  
		Size: 27.5 KB (27491 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:20.0` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:cb6c2f213ede50cf7d03a69bc5ad657dc50e649fd8a6f9f1f1ed9c0720f2954f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **800.7 MB (800666660 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da36534c175b5c8629f959db4ecf75839f5a69124e71ea72c01c0331b5ccb4ee`
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
# Wed, 11 Nov 2026 23:36:47 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Wed, 11 Nov 2026 23:36:47 GMT
SHELL [/bin/bash -xo pipefail -c]
# Wed, 11 Nov 2026 23:36:47 GMT
ENV LANG=en_US.UTF-8
# Wed, 11 Nov 2026 23:36:47 GMT
ARG TARGETARCH=arm64
# Wed, 11 Nov 2026 23:36:47 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Wed, 11 Nov 2026 23:36:53 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:39:36 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:39:36 GMT
ENV ODOO_VERSION=20.0
# Wed, 11 Nov 2026 23:39:36 GMT
ARG ODOO_RELEASE=20261102
# Wed, 11 Nov 2026 23:39:36 GMT
ARG ODOO_SHA=0706abac09a953f10007e26aa31767af5f9d1b2b
# Wed, 11 Nov 2026 23:41:04 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261102 ODOO_SHA=0706abac09a953f10007e26aa31767af5f9d1b2b
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Wed, 11 Nov 2026 23:41:05 GMT
COPY ./entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:41:05 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Wed, 11 Nov 2026 23:41:05 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261102 ODOO_SHA=0706abac09a953f10007e26aa31767af5f9d1b2b
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Wed, 11 Nov 2026 23:41:05 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 11 Nov 2026 23:41:05 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Wed, 11 Nov 2026 23:41:05 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Wed, 11 Nov 2026 23:41:05 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Wed, 11 Nov 2026 23:41:05 GMT
USER odoo
# Wed, 11 Nov 2026 23:41:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 11 Nov 2026 23:41:05 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:0c72064db2470cf0efa5fa1935125d317d0c2f6d95855143ae6a816ce4b20b56`  
		Last Modified: Wed, 11 Nov 2026 22:58:08 GMT  
		Size: 29.0 MB (28965258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:539de811d6030bcf3aed121dd8bd92ac0f8003ceb864066348b0caab0573c097`  
		Last Modified: Wed, 11 Nov 2026 23:43:11 GMT  
		Size: 236.2 MB (236192477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2f832005f68a99052050f5432df60d7832082d18adfe6ba173efffb30811801`  
		Last Modified: Wed, 11 Nov 2026 23:43:02 GMT  
		Size: 14.2 MB (14189546 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc96e9ad6c873c2fc67b7b25b3b32911034686b35179cf90906f474ad5d4c86f`  
		Last Modified: Wed, 11 Nov 2026 23:43:01 GMT  
		Size: 874.0 KB (873972 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f31568267a978a2552833b05d428f3deb9cc17eae2d1f898a3c45966ef6834c8`  
		Last Modified: Wed, 11 Nov 2026 23:43:16 GMT  
		Size: 520.4 MB (520442641 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae178ff0644795cfa6c1488234d83939758641638146b3eedb362ca4c38b4163`  
		Last Modified: Wed, 11 Nov 2026 23:43:02 GMT  
		Size: 718.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40a625af9e9261aae1fe5f656041529b2716bf160cbc569d62fd6e317ccf8573`  
		Last Modified: Wed, 11 Nov 2026 23:43:03 GMT  
		Size: 565.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4f1d32638ca29becdd3e86ae1fc39c7d307bfbd1a2ab790eea07a127293873f`  
		Last Modified: Wed, 11 Nov 2026 23:43:03 GMT  
		Size: 605.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d8c0ac42a634c5920ede7c481c85542cab45279b9c8ee01b91f7444aad1020a`  
		Last Modified: Wed, 11 Nov 2026 23:43:05 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:20.0` - unknown; unknown

```console
$ docker pull odoo@sha256:995a84d3b2b6a221387ce2b4446c988bc941511905c10c6670b9d46385962d26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.4 MB (55353864 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3d38e14e549bc39ac562bc667e6534134e5b5900943747e5d14de15e67d8cf4`

```dockerfile
```

-	Layers:
	-	`sha256:b5fa64c596fd9ce17a70ab79cd16ef89dacbdd7d347100eea2a482620c28cee8`  
		Last Modified: Wed, 11 Nov 2026 23:43:05 GMT  
		Size: 55.3 MB (55326209 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c52945d57cf5fcdac2272bb3cbf621b56fdc269cb19e5a7454ebd71759903b36`  
		Last Modified: Wed, 11 Nov 2026 23:43:01 GMT  
		Size: 27.7 KB (27655 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:20.0` - linux; ppc64le

```console
$ docker pull odoo@sha256:0bdb276920288e0301af0dc30c7be0898fb2a5c373601926614d8c9dfa937c53
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **820.7 MB (820654389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d76bb5239c6a4fa344c7be09c3efdc99d06cfc89360e89bd6b3f08c3ac06ec4a`
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
ARG ODOO_RELEASE=20261102
# Thu, 12 Nov 2026 04:00:00 GMT
ARG ODOO_SHA=0706abac09a953f10007e26aa31767af5f9d1b2b
# Thu, 12 Nov 2026 04:06:36 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261102 ODOO_SHA=0706abac09a953f10007e26aa31767af5f9d1b2b
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Thu, 12 Nov 2026 04:06:41 GMT
COPY ./entrypoint.sh / # buildkit
# Thu, 12 Nov 2026 04:06:42 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Thu, 12 Nov 2026 04:06:49 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261102 ODOO_SHA=0706abac09a953f10007e26aa31767af5f9d1b2b
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Thu, 12 Nov 2026 04:06:49 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Thu, 12 Nov 2026 04:06:49 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Thu, 12 Nov 2026 04:06:49 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Thu, 12 Nov 2026 04:06:51 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Thu, 12 Nov 2026 04:06:51 GMT
USER odoo
# Thu, 12 Nov 2026 04:06:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 12 Nov 2026 04:06:51 GMT
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
	-	`sha256:3f1966816e60401b4373b0fc46176d7f6b5867146e9e2fe10d952f457eed3161`  
		Last Modified: Thu, 12 Nov 2026 04:16:22 GMT  
		Size: 521.2 MB (521233791 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:112304a2ace92ff94303c40eff50f3def6ae951844ae15ba7b17f15eed63617f`  
		Last Modified: Thu, 12 Nov 2026 04:16:08 GMT  
		Size: 717.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3a875545b28e52eb4fa421209caa2f2ebbfa4972c522b0320a8e7e76b88897f`  
		Last Modified: Thu, 12 Nov 2026 04:16:08 GMT  
		Size: 567.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6215f2b58e621e4424f174c51c26a2d12cd668d56f50de995d3aac14017fb49`  
		Last Modified: Thu, 12 Nov 2026 04:16:08 GMT  
		Size: 610.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3d2a0a79e4cbf1d6499b5fb36475f94aa50e12e68524f1f13ab5fd1bc8ed946`  
		Last Modified: Thu, 12 Nov 2026 04:16:09 GMT  
		Size: 876.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:20.0` - unknown; unknown

```console
$ docker pull odoo@sha256:a10871108e06fbcd33068e8e88ae1084b1a1b3662a77875bc7357f4d497cb886
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.4 MB (55354848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8375cb9a8730e73318b9fea4dec7d8e35e9d4b17feb81eab2fd492a79cd8af78`

```dockerfile
```

-	Layers:
	-	`sha256:9bac9826b1ceb272116fa1acbabba8116efe65b0e51aa391d3939423fa7717c4`  
		Last Modified: Thu, 12 Nov 2026 04:16:11 GMT  
		Size: 55.3 MB (55327295 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b72a36f8571d4efe1225e0282754a27365f8aeb82c371b4bd4514ad5050fb436`  
		Last Modified: Thu, 12 Nov 2026 04:16:07 GMT  
		Size: 27.6 KB (27553 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:20.0-20261112`

**does not exist** (yet?)

## `odoo:latest`

```console
$ docker pull odoo@sha256:68a96ddcbb3e3cc3f6ce1462defd20ca62baef11d599fb70dedc11505e979015
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
$ docker pull odoo@sha256:3f1550c3476538141afdb106284abe95b77dd675a673d6fc1755c83f55dd3bad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **806.6 MB (806590541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2a3809a94da54a67fa1aa9cab3f3adda625d5db394d7f91a22e42c56d144633`
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
# Wed, 11 Nov 2026 23:33:02 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Wed, 11 Nov 2026 23:33:02 GMT
SHELL [/bin/bash -xo pipefail -c]
# Wed, 11 Nov 2026 23:33:02 GMT
ENV LANG=en_US.UTF-8
# Wed, 11 Nov 2026 23:33:02 GMT
ARG TARGETARCH=amd64
# Wed, 11 Nov 2026 23:33:02 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Wed, 11 Nov 2026 23:33:11 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:36:11 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:36:11 GMT
ENV ODOO_VERSION=20.0
# Wed, 11 Nov 2026 23:36:11 GMT
ARG ODOO_RELEASE=20261102
# Wed, 11 Nov 2026 23:36:11 GMT
ARG ODOO_SHA=0706abac09a953f10007e26aa31767af5f9d1b2b
# Wed, 11 Nov 2026 23:37:44 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261102 ODOO_SHA=0706abac09a953f10007e26aa31767af5f9d1b2b
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Wed, 11 Nov 2026 23:37:44 GMT
COPY ./entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:37:44 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Wed, 11 Nov 2026 23:37:45 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261102 ODOO_SHA=0706abac09a953f10007e26aa31767af5f9d1b2b
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Wed, 11 Nov 2026 23:37:45 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 11 Nov 2026 23:37:45 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Wed, 11 Nov 2026 23:37:45 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Wed, 11 Nov 2026 23:37:45 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Wed, 11 Nov 2026 23:37:45 GMT
USER odoo
# Wed, 11 Nov 2026 23:37:45 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 11 Nov 2026 23:37:45 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:26538842dfbfed820e62531e047bc6cfd3359a7e0a52f59c1a951ccc6ca787fe`  
		Last Modified: Wed, 11 Nov 2026 22:58:09 GMT  
		Size: 29.8 MB (29793223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e5f31774b78d628d0d977d0b6cd8a101c3c319410bbd8eca03260e57171e7f5`  
		Last Modified: Wed, 11 Nov 2026 23:39:47 GMT  
		Size: 238.7 MB (238717445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0e70ac44529bba636b8d955f9cd250b3b2c974c9b1fb348442697fe1267e11e`  
		Last Modified: Wed, 11 Nov 2026 23:39:33 GMT  
		Size: 16.6 MB (16632506 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45819974ca45a63b2c9ab242f0b1c9e11b5967e39d1edb3e572b2c26972e3347`  
		Last Modified: Wed, 11 Nov 2026 23:39:31 GMT  
		Size: 874.1 KB (874126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:264adbd8398f66001983b6a123dcc8cb5c66ca8d8fa91cf9b336345548dd747e`  
		Last Modified: Wed, 11 Nov 2026 23:39:54 GMT  
		Size: 520.6 MB (520570471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4803c45a5b9e3046b6e50906a9e6e2b8f7dbda234703654ca68be8bab0313d9`  
		Last Modified: Wed, 11 Nov 2026 23:39:33 GMT  
		Size: 718.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c705aaa907acd314b4c3b548ef5eeeb869cae04a7ca3db3a20acb707e9e68f7f`  
		Last Modified: Wed, 11 Nov 2026 23:39:35 GMT  
		Size: 567.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfe7c05f428587677161442f6f1acc3998759b4ca996b8e2478d0ac060d9420f`  
		Last Modified: Wed, 11 Nov 2026 23:39:35 GMT  
		Size: 609.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6200872be536ce6215fff6144e70f3b369741e847d28a7d72f71ff9ea227ffb`  
		Last Modified: Wed, 11 Nov 2026 23:39:36 GMT  
		Size: 876.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:latest` - unknown; unknown

```console
$ docker pull odoo@sha256:38ed09777af15137ad2e7be76761c23c32cb6bd7c06fe3e916494422f502c3a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.3 MB (55346416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b4a92bd9c4f6bfc6cb6302f9f203b769627afaee111eb3504b8f7248f705f28`

```dockerfile
```

-	Layers:
	-	`sha256:caa3c44ad55fd93a8ab01d534d65ad259cc244d3b4dd9f8d23dcee3a7f34e0d2`  
		Last Modified: Wed, 11 Nov 2026 23:39:37 GMT  
		Size: 55.3 MB (55318925 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a655307809adb5d0d11177656283b8d33382166eba9890c44ebc74a5f21cf7ec`  
		Last Modified: Wed, 11 Nov 2026 23:39:31 GMT  
		Size: 27.5 KB (27491 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:latest` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:cb6c2f213ede50cf7d03a69bc5ad657dc50e649fd8a6f9f1f1ed9c0720f2954f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **800.7 MB (800666660 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da36534c175b5c8629f959db4ecf75839f5a69124e71ea72c01c0331b5ccb4ee`
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
# Wed, 11 Nov 2026 23:36:47 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Wed, 11 Nov 2026 23:36:47 GMT
SHELL [/bin/bash -xo pipefail -c]
# Wed, 11 Nov 2026 23:36:47 GMT
ENV LANG=en_US.UTF-8
# Wed, 11 Nov 2026 23:36:47 GMT
ARG TARGETARCH=arm64
# Wed, 11 Nov 2026 23:36:47 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Wed, 11 Nov 2026 23:36:53 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:39:36 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:39:36 GMT
ENV ODOO_VERSION=20.0
# Wed, 11 Nov 2026 23:39:36 GMT
ARG ODOO_RELEASE=20261102
# Wed, 11 Nov 2026 23:39:36 GMT
ARG ODOO_SHA=0706abac09a953f10007e26aa31767af5f9d1b2b
# Wed, 11 Nov 2026 23:41:04 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261102 ODOO_SHA=0706abac09a953f10007e26aa31767af5f9d1b2b
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Wed, 11 Nov 2026 23:41:05 GMT
COPY ./entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:41:05 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Wed, 11 Nov 2026 23:41:05 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261102 ODOO_SHA=0706abac09a953f10007e26aa31767af5f9d1b2b
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Wed, 11 Nov 2026 23:41:05 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 11 Nov 2026 23:41:05 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Wed, 11 Nov 2026 23:41:05 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Wed, 11 Nov 2026 23:41:05 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Wed, 11 Nov 2026 23:41:05 GMT
USER odoo
# Wed, 11 Nov 2026 23:41:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 11 Nov 2026 23:41:05 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:0c72064db2470cf0efa5fa1935125d317d0c2f6d95855143ae6a816ce4b20b56`  
		Last Modified: Wed, 11 Nov 2026 22:58:08 GMT  
		Size: 29.0 MB (28965258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:539de811d6030bcf3aed121dd8bd92ac0f8003ceb864066348b0caab0573c097`  
		Last Modified: Wed, 11 Nov 2026 23:43:11 GMT  
		Size: 236.2 MB (236192477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2f832005f68a99052050f5432df60d7832082d18adfe6ba173efffb30811801`  
		Last Modified: Wed, 11 Nov 2026 23:43:02 GMT  
		Size: 14.2 MB (14189546 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc96e9ad6c873c2fc67b7b25b3b32911034686b35179cf90906f474ad5d4c86f`  
		Last Modified: Wed, 11 Nov 2026 23:43:01 GMT  
		Size: 874.0 KB (873972 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f31568267a978a2552833b05d428f3deb9cc17eae2d1f898a3c45966ef6834c8`  
		Last Modified: Wed, 11 Nov 2026 23:43:16 GMT  
		Size: 520.4 MB (520442641 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae178ff0644795cfa6c1488234d83939758641638146b3eedb362ca4c38b4163`  
		Last Modified: Wed, 11 Nov 2026 23:43:02 GMT  
		Size: 718.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40a625af9e9261aae1fe5f656041529b2716bf160cbc569d62fd6e317ccf8573`  
		Last Modified: Wed, 11 Nov 2026 23:43:03 GMT  
		Size: 565.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4f1d32638ca29becdd3e86ae1fc39c7d307bfbd1a2ab790eea07a127293873f`  
		Last Modified: Wed, 11 Nov 2026 23:43:03 GMT  
		Size: 605.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d8c0ac42a634c5920ede7c481c85542cab45279b9c8ee01b91f7444aad1020a`  
		Last Modified: Wed, 11 Nov 2026 23:43:05 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:latest` - unknown; unknown

```console
$ docker pull odoo@sha256:995a84d3b2b6a221387ce2b4446c988bc941511905c10c6670b9d46385962d26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.4 MB (55353864 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3d38e14e549bc39ac562bc667e6534134e5b5900943747e5d14de15e67d8cf4`

```dockerfile
```

-	Layers:
	-	`sha256:b5fa64c596fd9ce17a70ab79cd16ef89dacbdd7d347100eea2a482620c28cee8`  
		Last Modified: Wed, 11 Nov 2026 23:43:05 GMT  
		Size: 55.3 MB (55326209 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c52945d57cf5fcdac2272bb3cbf621b56fdc269cb19e5a7454ebd71759903b36`  
		Last Modified: Wed, 11 Nov 2026 23:43:01 GMT  
		Size: 27.7 KB (27655 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:latest` - linux; ppc64le

```console
$ docker pull odoo@sha256:0bdb276920288e0301af0dc30c7be0898fb2a5c373601926614d8c9dfa937c53
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **820.7 MB (820654389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d76bb5239c6a4fa344c7be09c3efdc99d06cfc89360e89bd6b3f08c3ac06ec4a`
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
ARG ODOO_RELEASE=20261102
# Thu, 12 Nov 2026 04:00:00 GMT
ARG ODOO_SHA=0706abac09a953f10007e26aa31767af5f9d1b2b
# Thu, 12 Nov 2026 04:06:36 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261102 ODOO_SHA=0706abac09a953f10007e26aa31767af5f9d1b2b
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Thu, 12 Nov 2026 04:06:41 GMT
COPY ./entrypoint.sh / # buildkit
# Thu, 12 Nov 2026 04:06:42 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Thu, 12 Nov 2026 04:06:49 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261102 ODOO_SHA=0706abac09a953f10007e26aa31767af5f9d1b2b
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Thu, 12 Nov 2026 04:06:49 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Thu, 12 Nov 2026 04:06:49 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Thu, 12 Nov 2026 04:06:49 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Thu, 12 Nov 2026 04:06:51 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Thu, 12 Nov 2026 04:06:51 GMT
USER odoo
# Thu, 12 Nov 2026 04:06:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 12 Nov 2026 04:06:51 GMT
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
	-	`sha256:3f1966816e60401b4373b0fc46176d7f6b5867146e9e2fe10d952f457eed3161`  
		Last Modified: Thu, 12 Nov 2026 04:16:22 GMT  
		Size: 521.2 MB (521233791 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:112304a2ace92ff94303c40eff50f3def6ae951844ae15ba7b17f15eed63617f`  
		Last Modified: Thu, 12 Nov 2026 04:16:08 GMT  
		Size: 717.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3a875545b28e52eb4fa421209caa2f2ebbfa4972c522b0320a8e7e76b88897f`  
		Last Modified: Thu, 12 Nov 2026 04:16:08 GMT  
		Size: 567.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6215f2b58e621e4424f174c51c26a2d12cd668d56f50de995d3aac14017fb49`  
		Last Modified: Thu, 12 Nov 2026 04:16:08 GMT  
		Size: 610.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3d2a0a79e4cbf1d6499b5fb36475f94aa50e12e68524f1f13ab5fd1bc8ed946`  
		Last Modified: Thu, 12 Nov 2026 04:16:09 GMT  
		Size: 876.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:latest` - unknown; unknown

```console
$ docker pull odoo@sha256:a10871108e06fbcd33068e8e88ae1084b1a1b3662a77875bc7357f4d497cb886
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.4 MB (55354848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8375cb9a8730e73318b9fea4dec7d8e35e9d4b17feb81eab2fd492a79cd8af78`

```dockerfile
```

-	Layers:
	-	`sha256:9bac9826b1ceb272116fa1acbabba8116efe65b0e51aa391d3939423fa7717c4`  
		Last Modified: Thu, 12 Nov 2026 04:16:11 GMT  
		Size: 55.3 MB (55327295 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b72a36f8571d4efe1225e0282754a27365f8aeb82c371b4bd4514ad5050fb436`  
		Last Modified: Thu, 12 Nov 2026 04:16:07 GMT  
		Size: 27.6 KB (27553 bytes)  
		MIME: application/vnd.in-toto+json
