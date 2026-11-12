<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `odoo`

-	[`odoo:18`](#odoo18)
-	[`odoo:18.0`](#odoo180)
-	[`odoo:18.0-20261102`](#odoo180-20261102)
-	[`odoo:19`](#odoo19)
-	[`odoo:19.0`](#odoo190)
-	[`odoo:19.0-20261102`](#odoo190-20261102)
-	[`odoo:20`](#odoo20)
-	[`odoo:20.0`](#odoo200)
-	[`odoo:20.0-20261102`](#odoo200-20261102)
-	[`odoo:latest`](#odoolatest)

## `odoo:18`

```console
$ docker pull odoo@sha256:fb64ab690e0beef75ce7337015d74340a88d9f97be900c239e89023897f6e7c3
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
$ docker pull odoo@sha256:546f05dc24fda4e1f12a3f0a81319ac526bab3823721b531f373d67f59efbc94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **692.2 MB (692236088 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afa30cbad215ea71fedcfff43fd3115c0a37c07bbe08d53ef6dd2f3ec261083f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Sun, 25 Oct 2026 14:18:35 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:18:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:18:35 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:18:39 GMT
ADD file:ef742f6d40def62a9b4c0b916161e4ab04e1a6b83bc4e20803daa0d5ab2ea12b in / 
# Sun, 25 Oct 2026 14:18:39 GMT
CMD ["/bin/bash"]
# Tue, 03 Nov 2026 00:15:59 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 03 Nov 2026 00:15:59 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 03 Nov 2026 00:15:59 GMT
ENV LANG=en_US.UTF-8
# Tue, 03 Nov 2026 00:15:59 GMT
ARG TARGETARCH=ppc64le
# Tue, 03 Nov 2026 00:15:59 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 03 Nov 2026 00:16:13 GMT
# ARGS: TARGETARCH=ppc64le
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:20:56 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:20:56 GMT
ENV ODOO_VERSION=18.0
# Tue, 03 Nov 2026 00:20:56 GMT
ARG ODOO_RELEASE=20261102
# Tue, 03 Nov 2026 00:20:56 GMT
ARG ODOO_SHA=349c907ea772231b39859c6e6a13093587860861
# Tue, 03 Nov 2026 00:31:43 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261102 ODOO_SHA=349c907ea772231b39859c6e6a13093587860861
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 03 Nov 2026 00:31:44 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 03 Nov 2026 00:31:44 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 03 Nov 2026 00:31:44 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261102 ODOO_SHA=349c907ea772231b39859c6e6a13093587860861
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 03 Nov 2026 00:31:44 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 03 Nov 2026 00:31:44 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 03 Nov 2026 00:31:44 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 03 Nov 2026 00:31:45 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 03 Nov 2026 00:31:45 GMT
USER odoo
# Tue, 03 Nov 2026 00:31:45 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 03 Nov 2026 00:31:45 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:400d78a2b842f2bd938ae79326cc66475d11b949ac6b2acbfbc7709090964eb8`  
		Last Modified: Sun, 25 Oct 2026 14:50:25 GMT  
		Size: 34.4 MB (34378308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:250157a23803c3e07f3e4465e1f9606abc0c5e21e600249deaa9fda75f2bf5ba`  
		Last Modified: Tue, 03 Nov 2026 00:29:16 GMT  
		Size: 249.4 MB (249382793 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06a6eeba402f3ba273d07fe34e9630bd8de1e44bdb48d6f4deb3858cf3e566f6`  
		Last Modified: Tue, 03 Nov 2026 00:29:06 GMT  
		Size: 14.7 MB (14743154 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d91b9a2240116b1addde2f24ee7af737939fec6464bdfec0bc9b2cce1a828265`  
		Last Modified: Tue, 03 Nov 2026 00:29:05 GMT  
		Size: 875.1 KB (875106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cf5ccdb906fa7de11f7532ac32b1b34ad520729a62dd8028dae60522f3e3a9b`  
		Last Modified: Tue, 03 Nov 2026 00:34:57 GMT  
		Size: 392.9 MB (392853929 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ca43cb70ec9a1ce7d91d999d45481c8d002f638e277cce46cbd700939ca48f3`  
		Last Modified: Tue, 03 Nov 2026 00:34:49 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee73a4724ae35305d754fc7cd8463930e35084172e43738851e540e1306e1cce`  
		Last Modified: Tue, 03 Nov 2026 00:34:48 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a3a350fc4ac3c85a0c345b7e8228f66d5787e71ae16909bfb69df6d9419775b`  
		Last Modified: Tue, 03 Nov 2026 00:34:49 GMT  
		Size: 595.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:105f9af15035628805d35982863246ea9f749604af9f51890d26f516a814950b`  
		Last Modified: Tue, 03 Nov 2026 00:34:50 GMT  
		Size: 880.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18` - unknown; unknown

```console
$ docker pull odoo@sha256:305a6a95e750277cdfdf68f47d8f92fe6c4757cac8fe9de910d369e72c3d5e21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.0 MB (44013821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6eeee77a182f4b62df27f53334f4b66355db62f645c4e6eb3b5bc6c59749dc9f`

```dockerfile
```

-	Layers:
	-	`sha256:018bc5e6449228faf71bc74e9a24c6c98a0682fbb563a4d9e0324fc111af8373`  
		Last Modified: Tue, 03 Nov 2026 00:34:51 GMT  
		Size: 44.0 MB (43986568 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6983b777743b6d7c2d62aa0133b756514ee9ab0caa701aba6f01f633e32df4a5`  
		Last Modified: Tue, 03 Nov 2026 00:34:48 GMT  
		Size: 27.3 KB (27253 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:18.0`

```console
$ docker pull odoo@sha256:fb64ab690e0beef75ce7337015d74340a88d9f97be900c239e89023897f6e7c3
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
$ docker pull odoo@sha256:546f05dc24fda4e1f12a3f0a81319ac526bab3823721b531f373d67f59efbc94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **692.2 MB (692236088 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afa30cbad215ea71fedcfff43fd3115c0a37c07bbe08d53ef6dd2f3ec261083f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Sun, 25 Oct 2026 14:18:35 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:18:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:18:35 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:18:39 GMT
ADD file:ef742f6d40def62a9b4c0b916161e4ab04e1a6b83bc4e20803daa0d5ab2ea12b in / 
# Sun, 25 Oct 2026 14:18:39 GMT
CMD ["/bin/bash"]
# Tue, 03 Nov 2026 00:15:59 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 03 Nov 2026 00:15:59 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 03 Nov 2026 00:15:59 GMT
ENV LANG=en_US.UTF-8
# Tue, 03 Nov 2026 00:15:59 GMT
ARG TARGETARCH=ppc64le
# Tue, 03 Nov 2026 00:15:59 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 03 Nov 2026 00:16:13 GMT
# ARGS: TARGETARCH=ppc64le
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:20:56 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:20:56 GMT
ENV ODOO_VERSION=18.0
# Tue, 03 Nov 2026 00:20:56 GMT
ARG ODOO_RELEASE=20261102
# Tue, 03 Nov 2026 00:20:56 GMT
ARG ODOO_SHA=349c907ea772231b39859c6e6a13093587860861
# Tue, 03 Nov 2026 00:31:43 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261102 ODOO_SHA=349c907ea772231b39859c6e6a13093587860861
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 03 Nov 2026 00:31:44 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 03 Nov 2026 00:31:44 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 03 Nov 2026 00:31:44 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261102 ODOO_SHA=349c907ea772231b39859c6e6a13093587860861
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 03 Nov 2026 00:31:44 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 03 Nov 2026 00:31:44 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 03 Nov 2026 00:31:44 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 03 Nov 2026 00:31:45 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 03 Nov 2026 00:31:45 GMT
USER odoo
# Tue, 03 Nov 2026 00:31:45 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 03 Nov 2026 00:31:45 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:400d78a2b842f2bd938ae79326cc66475d11b949ac6b2acbfbc7709090964eb8`  
		Last Modified: Sun, 25 Oct 2026 14:50:25 GMT  
		Size: 34.4 MB (34378308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:250157a23803c3e07f3e4465e1f9606abc0c5e21e600249deaa9fda75f2bf5ba`  
		Last Modified: Tue, 03 Nov 2026 00:29:16 GMT  
		Size: 249.4 MB (249382793 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06a6eeba402f3ba273d07fe34e9630bd8de1e44bdb48d6f4deb3858cf3e566f6`  
		Last Modified: Tue, 03 Nov 2026 00:29:06 GMT  
		Size: 14.7 MB (14743154 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d91b9a2240116b1addde2f24ee7af737939fec6464bdfec0bc9b2cce1a828265`  
		Last Modified: Tue, 03 Nov 2026 00:29:05 GMT  
		Size: 875.1 KB (875106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cf5ccdb906fa7de11f7532ac32b1b34ad520729a62dd8028dae60522f3e3a9b`  
		Last Modified: Tue, 03 Nov 2026 00:34:57 GMT  
		Size: 392.9 MB (392853929 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ca43cb70ec9a1ce7d91d999d45481c8d002f638e277cce46cbd700939ca48f3`  
		Last Modified: Tue, 03 Nov 2026 00:34:49 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee73a4724ae35305d754fc7cd8463930e35084172e43738851e540e1306e1cce`  
		Last Modified: Tue, 03 Nov 2026 00:34:48 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a3a350fc4ac3c85a0c345b7e8228f66d5787e71ae16909bfb69df6d9419775b`  
		Last Modified: Tue, 03 Nov 2026 00:34:49 GMT  
		Size: 595.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:105f9af15035628805d35982863246ea9f749604af9f51890d26f516a814950b`  
		Last Modified: Tue, 03 Nov 2026 00:34:50 GMT  
		Size: 880.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18.0` - unknown; unknown

```console
$ docker pull odoo@sha256:305a6a95e750277cdfdf68f47d8f92fe6c4757cac8fe9de910d369e72c3d5e21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.0 MB (44013821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6eeee77a182f4b62df27f53334f4b66355db62f645c4e6eb3b5bc6c59749dc9f`

```dockerfile
```

-	Layers:
	-	`sha256:018bc5e6449228faf71bc74e9a24c6c98a0682fbb563a4d9e0324fc111af8373`  
		Last Modified: Tue, 03 Nov 2026 00:34:51 GMT  
		Size: 44.0 MB (43986568 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6983b777743b6d7c2d62aa0133b756514ee9ab0caa701aba6f01f633e32df4a5`  
		Last Modified: Tue, 03 Nov 2026 00:34:48 GMT  
		Size: 27.3 KB (27253 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:18.0-20261102`

```console
$ docker pull odoo@sha256:fb64ab690e0beef75ce7337015d74340a88d9f97be900c239e89023897f6e7c3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `odoo:18.0-20261102` - linux; amd64

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

### `odoo:18.0-20261102` - unknown; unknown

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

### `odoo:18.0-20261102` - linux; arm64 variant v8

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

### `odoo:18.0-20261102` - unknown; unknown

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

### `odoo:18.0-20261102` - linux; ppc64le

```console
$ docker pull odoo@sha256:546f05dc24fda4e1f12a3f0a81319ac526bab3823721b531f373d67f59efbc94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **692.2 MB (692236088 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afa30cbad215ea71fedcfff43fd3115c0a37c07bbe08d53ef6dd2f3ec261083f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Sun, 25 Oct 2026 14:18:35 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:18:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:18:35 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:18:39 GMT
ADD file:ef742f6d40def62a9b4c0b916161e4ab04e1a6b83bc4e20803daa0d5ab2ea12b in / 
# Sun, 25 Oct 2026 14:18:39 GMT
CMD ["/bin/bash"]
# Tue, 03 Nov 2026 00:15:59 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 03 Nov 2026 00:15:59 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 03 Nov 2026 00:15:59 GMT
ENV LANG=en_US.UTF-8
# Tue, 03 Nov 2026 00:15:59 GMT
ARG TARGETARCH=ppc64le
# Tue, 03 Nov 2026 00:15:59 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 03 Nov 2026 00:16:13 GMT
# ARGS: TARGETARCH=ppc64le
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:20:56 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:20:56 GMT
ENV ODOO_VERSION=18.0
# Tue, 03 Nov 2026 00:20:56 GMT
ARG ODOO_RELEASE=20261102
# Tue, 03 Nov 2026 00:20:56 GMT
ARG ODOO_SHA=349c907ea772231b39859c6e6a13093587860861
# Tue, 03 Nov 2026 00:31:43 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261102 ODOO_SHA=349c907ea772231b39859c6e6a13093587860861
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 03 Nov 2026 00:31:44 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 03 Nov 2026 00:31:44 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 03 Nov 2026 00:31:44 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261102 ODOO_SHA=349c907ea772231b39859c6e6a13093587860861
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 03 Nov 2026 00:31:44 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 03 Nov 2026 00:31:44 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 03 Nov 2026 00:31:44 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 03 Nov 2026 00:31:45 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 03 Nov 2026 00:31:45 GMT
USER odoo
# Tue, 03 Nov 2026 00:31:45 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 03 Nov 2026 00:31:45 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:400d78a2b842f2bd938ae79326cc66475d11b949ac6b2acbfbc7709090964eb8`  
		Last Modified: Sun, 25 Oct 2026 14:50:25 GMT  
		Size: 34.4 MB (34378308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:250157a23803c3e07f3e4465e1f9606abc0c5e21e600249deaa9fda75f2bf5ba`  
		Last Modified: Tue, 03 Nov 2026 00:29:16 GMT  
		Size: 249.4 MB (249382793 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06a6eeba402f3ba273d07fe34e9630bd8de1e44bdb48d6f4deb3858cf3e566f6`  
		Last Modified: Tue, 03 Nov 2026 00:29:06 GMT  
		Size: 14.7 MB (14743154 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d91b9a2240116b1addde2f24ee7af737939fec6464bdfec0bc9b2cce1a828265`  
		Last Modified: Tue, 03 Nov 2026 00:29:05 GMT  
		Size: 875.1 KB (875106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cf5ccdb906fa7de11f7532ac32b1b34ad520729a62dd8028dae60522f3e3a9b`  
		Last Modified: Tue, 03 Nov 2026 00:34:57 GMT  
		Size: 392.9 MB (392853929 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ca43cb70ec9a1ce7d91d999d45481c8d002f638e277cce46cbd700939ca48f3`  
		Last Modified: Tue, 03 Nov 2026 00:34:49 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee73a4724ae35305d754fc7cd8463930e35084172e43738851e540e1306e1cce`  
		Last Modified: Tue, 03 Nov 2026 00:34:48 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a3a350fc4ac3c85a0c345b7e8228f66d5787e71ae16909bfb69df6d9419775b`  
		Last Modified: Tue, 03 Nov 2026 00:34:49 GMT  
		Size: 595.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:105f9af15035628805d35982863246ea9f749604af9f51890d26f516a814950b`  
		Last Modified: Tue, 03 Nov 2026 00:34:50 GMT  
		Size: 880.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18.0-20261102` - unknown; unknown

```console
$ docker pull odoo@sha256:305a6a95e750277cdfdf68f47d8f92fe6c4757cac8fe9de910d369e72c3d5e21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.0 MB (44013821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6eeee77a182f4b62df27f53334f4b66355db62f645c4e6eb3b5bc6c59749dc9f`

```dockerfile
```

-	Layers:
	-	`sha256:018bc5e6449228faf71bc74e9a24c6c98a0682fbb563a4d9e0324fc111af8373`  
		Last Modified: Tue, 03 Nov 2026 00:34:51 GMT  
		Size: 44.0 MB (43986568 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6983b777743b6d7c2d62aa0133b756514ee9ab0caa701aba6f01f633e32df4a5`  
		Last Modified: Tue, 03 Nov 2026 00:34:48 GMT  
		Size: 27.3 KB (27253 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:19`

```console
$ docker pull odoo@sha256:c66880e287cbe49122c9e4aa70aecccae8f6684044a9cf2707f5169f6bbff22f
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
$ docker pull odoo@sha256:d96ef0d5377f73f6c14aab75160d392fe7568b001e185e12f4c40bf498954a68
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **716.4 MB (716363874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9c1a002e2494bb18b699ab51b589e5d184728da9602a5a0558a26453df9dbcb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Sun, 25 Oct 2026 14:18:35 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:18:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:18:35 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:18:39 GMT
ADD file:ef742f6d40def62a9b4c0b916161e4ab04e1a6b83bc4e20803daa0d5ab2ea12b in / 
# Sun, 25 Oct 2026 14:18:39 GMT
CMD ["/bin/bash"]
# Tue, 03 Nov 2026 00:15:59 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 03 Nov 2026 00:15:59 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 03 Nov 2026 00:15:59 GMT
ENV LANG=en_US.UTF-8
# Tue, 03 Nov 2026 00:15:59 GMT
ARG TARGETARCH=ppc64le
# Tue, 03 Nov 2026 00:15:59 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 03 Nov 2026 00:16:13 GMT
# ARGS: TARGETARCH=ppc64le
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:20:56 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:20:56 GMT
ENV ODOO_VERSION=19.0
# Tue, 03 Nov 2026 00:20:56 GMT
ARG ODOO_RELEASE=20261102
# Tue, 03 Nov 2026 00:20:56 GMT
ARG ODOO_SHA=a68201e81fff90efd7f7bc7f5f1d8ac43d633587
# Tue, 03 Nov 2026 00:24:43 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261102 ODOO_SHA=a68201e81fff90efd7f7bc7f5f1d8ac43d633587
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 03 Nov 2026 00:24:47 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 03 Nov 2026 00:24:47 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 03 Nov 2026 00:24:48 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261102 ODOO_SHA=a68201e81fff90efd7f7bc7f5f1d8ac43d633587
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 03 Nov 2026 00:24:48 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 03 Nov 2026 00:24:48 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 03 Nov 2026 00:24:48 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 03 Nov 2026 00:24:49 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 03 Nov 2026 00:24:49 GMT
USER odoo
# Tue, 03 Nov 2026 00:24:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 03 Nov 2026 00:24:49 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:400d78a2b842f2bd938ae79326cc66475d11b949ac6b2acbfbc7709090964eb8`  
		Last Modified: Sun, 25 Oct 2026 14:50:25 GMT  
		Size: 34.4 MB (34378308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:250157a23803c3e07f3e4465e1f9606abc0c5e21e600249deaa9fda75f2bf5ba`  
		Last Modified: Tue, 03 Nov 2026 00:29:16 GMT  
		Size: 249.4 MB (249382793 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06a6eeba402f3ba273d07fe34e9630bd8de1e44bdb48d6f4deb3858cf3e566f6`  
		Last Modified: Tue, 03 Nov 2026 00:29:06 GMT  
		Size: 14.7 MB (14743154 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d91b9a2240116b1addde2f24ee7af737939fec6464bdfec0bc9b2cce1a828265`  
		Last Modified: Tue, 03 Nov 2026 00:29:05 GMT  
		Size: 875.1 KB (875106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccd188e3980b40b3d2180f6883edd1cdc46c55f47ff52b104cd85aad612bbc48`  
		Last Modified: Tue, 03 Nov 2026 00:29:19 GMT  
		Size: 417.0 MB (416981756 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29ec8b3719d45feb173dd6c063b45f5d156f87df238c02b46f98a9452ba5fb1a`  
		Last Modified: Tue, 03 Nov 2026 00:29:07 GMT  
		Size: 718.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc8db1d73a6f0f3264e24d38c3cafd1be24500400f019f6b7cb72f86fedaa7ff`  
		Last Modified: Tue, 03 Nov 2026 00:29:08 GMT  
		Size: 558.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d2d0ddc9b191af1d6abc51033cd87279c00a94345f34a587fdac5e7410271c1`  
		Last Modified: Tue, 03 Nov 2026 00:29:08 GMT  
		Size: 601.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8040926e2b73368b8714801440c20ba7318d4222c6b42799da9bfb674fa0bff`  
		Last Modified: Tue, 03 Nov 2026 00:29:09 GMT  
		Size: 880.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19` - unknown; unknown

```console
$ docker pull odoo@sha256:96777eefcfd642667af4bd4d3c4d85017ab2fe91611284acb12758027cb83229
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.7 MB (52671823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31a3534805c13fbab023e706aa5978e18e6ea1d16b98a49acf62dcfa3ab20515`

```dockerfile
```

-	Layers:
	-	`sha256:a34e3dcd4769902539293bb607bd4045a4a72f308bfb9f98f7a373f9674a9c9d`  
		Last Modified: Tue, 03 Nov 2026 00:29:09 GMT  
		Size: 52.6 MB (52644571 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:33039397c42264422c0c54e45aef840b35ae95f177902b4814fc41a541ed27cf`  
		Last Modified: Tue, 03 Nov 2026 00:29:05 GMT  
		Size: 27.3 KB (27252 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:19.0`

```console
$ docker pull odoo@sha256:c66880e287cbe49122c9e4aa70aecccae8f6684044a9cf2707f5169f6bbff22f
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
$ docker pull odoo@sha256:d96ef0d5377f73f6c14aab75160d392fe7568b001e185e12f4c40bf498954a68
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **716.4 MB (716363874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9c1a002e2494bb18b699ab51b589e5d184728da9602a5a0558a26453df9dbcb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Sun, 25 Oct 2026 14:18:35 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:18:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:18:35 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:18:39 GMT
ADD file:ef742f6d40def62a9b4c0b916161e4ab04e1a6b83bc4e20803daa0d5ab2ea12b in / 
# Sun, 25 Oct 2026 14:18:39 GMT
CMD ["/bin/bash"]
# Tue, 03 Nov 2026 00:15:59 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 03 Nov 2026 00:15:59 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 03 Nov 2026 00:15:59 GMT
ENV LANG=en_US.UTF-8
# Tue, 03 Nov 2026 00:15:59 GMT
ARG TARGETARCH=ppc64le
# Tue, 03 Nov 2026 00:15:59 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 03 Nov 2026 00:16:13 GMT
# ARGS: TARGETARCH=ppc64le
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:20:56 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:20:56 GMT
ENV ODOO_VERSION=19.0
# Tue, 03 Nov 2026 00:20:56 GMT
ARG ODOO_RELEASE=20261102
# Tue, 03 Nov 2026 00:20:56 GMT
ARG ODOO_SHA=a68201e81fff90efd7f7bc7f5f1d8ac43d633587
# Tue, 03 Nov 2026 00:24:43 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261102 ODOO_SHA=a68201e81fff90efd7f7bc7f5f1d8ac43d633587
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 03 Nov 2026 00:24:47 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 03 Nov 2026 00:24:47 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 03 Nov 2026 00:24:48 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261102 ODOO_SHA=a68201e81fff90efd7f7bc7f5f1d8ac43d633587
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 03 Nov 2026 00:24:48 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 03 Nov 2026 00:24:48 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 03 Nov 2026 00:24:48 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 03 Nov 2026 00:24:49 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 03 Nov 2026 00:24:49 GMT
USER odoo
# Tue, 03 Nov 2026 00:24:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 03 Nov 2026 00:24:49 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:400d78a2b842f2bd938ae79326cc66475d11b949ac6b2acbfbc7709090964eb8`  
		Last Modified: Sun, 25 Oct 2026 14:50:25 GMT  
		Size: 34.4 MB (34378308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:250157a23803c3e07f3e4465e1f9606abc0c5e21e600249deaa9fda75f2bf5ba`  
		Last Modified: Tue, 03 Nov 2026 00:29:16 GMT  
		Size: 249.4 MB (249382793 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06a6eeba402f3ba273d07fe34e9630bd8de1e44bdb48d6f4deb3858cf3e566f6`  
		Last Modified: Tue, 03 Nov 2026 00:29:06 GMT  
		Size: 14.7 MB (14743154 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d91b9a2240116b1addde2f24ee7af737939fec6464bdfec0bc9b2cce1a828265`  
		Last Modified: Tue, 03 Nov 2026 00:29:05 GMT  
		Size: 875.1 KB (875106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccd188e3980b40b3d2180f6883edd1cdc46c55f47ff52b104cd85aad612bbc48`  
		Last Modified: Tue, 03 Nov 2026 00:29:19 GMT  
		Size: 417.0 MB (416981756 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29ec8b3719d45feb173dd6c063b45f5d156f87df238c02b46f98a9452ba5fb1a`  
		Last Modified: Tue, 03 Nov 2026 00:29:07 GMT  
		Size: 718.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc8db1d73a6f0f3264e24d38c3cafd1be24500400f019f6b7cb72f86fedaa7ff`  
		Last Modified: Tue, 03 Nov 2026 00:29:08 GMT  
		Size: 558.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d2d0ddc9b191af1d6abc51033cd87279c00a94345f34a587fdac5e7410271c1`  
		Last Modified: Tue, 03 Nov 2026 00:29:08 GMT  
		Size: 601.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8040926e2b73368b8714801440c20ba7318d4222c6b42799da9bfb674fa0bff`  
		Last Modified: Tue, 03 Nov 2026 00:29:09 GMT  
		Size: 880.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19.0` - unknown; unknown

```console
$ docker pull odoo@sha256:96777eefcfd642667af4bd4d3c4d85017ab2fe91611284acb12758027cb83229
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.7 MB (52671823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31a3534805c13fbab023e706aa5978e18e6ea1d16b98a49acf62dcfa3ab20515`

```dockerfile
```

-	Layers:
	-	`sha256:a34e3dcd4769902539293bb607bd4045a4a72f308bfb9f98f7a373f9674a9c9d`  
		Last Modified: Tue, 03 Nov 2026 00:29:09 GMT  
		Size: 52.6 MB (52644571 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:33039397c42264422c0c54e45aef840b35ae95f177902b4814fc41a541ed27cf`  
		Last Modified: Tue, 03 Nov 2026 00:29:05 GMT  
		Size: 27.3 KB (27252 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:19.0-20261102`

```console
$ docker pull odoo@sha256:c66880e287cbe49122c9e4aa70aecccae8f6684044a9cf2707f5169f6bbff22f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `odoo:19.0-20261102` - linux; amd64

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

### `odoo:19.0-20261102` - unknown; unknown

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

### `odoo:19.0-20261102` - linux; arm64 variant v8

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

### `odoo:19.0-20261102` - unknown; unknown

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

### `odoo:19.0-20261102` - linux; ppc64le

```console
$ docker pull odoo@sha256:d96ef0d5377f73f6c14aab75160d392fe7568b001e185e12f4c40bf498954a68
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **716.4 MB (716363874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9c1a002e2494bb18b699ab51b589e5d184728da9602a5a0558a26453df9dbcb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Sun, 25 Oct 2026 14:18:35 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:18:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:18:35 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:18:39 GMT
ADD file:ef742f6d40def62a9b4c0b916161e4ab04e1a6b83bc4e20803daa0d5ab2ea12b in / 
# Sun, 25 Oct 2026 14:18:39 GMT
CMD ["/bin/bash"]
# Tue, 03 Nov 2026 00:15:59 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 03 Nov 2026 00:15:59 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 03 Nov 2026 00:15:59 GMT
ENV LANG=en_US.UTF-8
# Tue, 03 Nov 2026 00:15:59 GMT
ARG TARGETARCH=ppc64le
# Tue, 03 Nov 2026 00:15:59 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 03 Nov 2026 00:16:13 GMT
# ARGS: TARGETARCH=ppc64le
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:20:56 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:20:56 GMT
ENV ODOO_VERSION=19.0
# Tue, 03 Nov 2026 00:20:56 GMT
ARG ODOO_RELEASE=20261102
# Tue, 03 Nov 2026 00:20:56 GMT
ARG ODOO_SHA=a68201e81fff90efd7f7bc7f5f1d8ac43d633587
# Tue, 03 Nov 2026 00:24:43 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261102 ODOO_SHA=a68201e81fff90efd7f7bc7f5f1d8ac43d633587
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 03 Nov 2026 00:24:47 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 03 Nov 2026 00:24:47 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 03 Nov 2026 00:24:48 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261102 ODOO_SHA=a68201e81fff90efd7f7bc7f5f1d8ac43d633587
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 03 Nov 2026 00:24:48 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 03 Nov 2026 00:24:48 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 03 Nov 2026 00:24:48 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 03 Nov 2026 00:24:49 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 03 Nov 2026 00:24:49 GMT
USER odoo
# Tue, 03 Nov 2026 00:24:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 03 Nov 2026 00:24:49 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:400d78a2b842f2bd938ae79326cc66475d11b949ac6b2acbfbc7709090964eb8`  
		Last Modified: Sun, 25 Oct 2026 14:50:25 GMT  
		Size: 34.4 MB (34378308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:250157a23803c3e07f3e4465e1f9606abc0c5e21e600249deaa9fda75f2bf5ba`  
		Last Modified: Tue, 03 Nov 2026 00:29:16 GMT  
		Size: 249.4 MB (249382793 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06a6eeba402f3ba273d07fe34e9630bd8de1e44bdb48d6f4deb3858cf3e566f6`  
		Last Modified: Tue, 03 Nov 2026 00:29:06 GMT  
		Size: 14.7 MB (14743154 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d91b9a2240116b1addde2f24ee7af737939fec6464bdfec0bc9b2cce1a828265`  
		Last Modified: Tue, 03 Nov 2026 00:29:05 GMT  
		Size: 875.1 KB (875106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccd188e3980b40b3d2180f6883edd1cdc46c55f47ff52b104cd85aad612bbc48`  
		Last Modified: Tue, 03 Nov 2026 00:29:19 GMT  
		Size: 417.0 MB (416981756 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29ec8b3719d45feb173dd6c063b45f5d156f87df238c02b46f98a9452ba5fb1a`  
		Last Modified: Tue, 03 Nov 2026 00:29:07 GMT  
		Size: 718.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc8db1d73a6f0f3264e24d38c3cafd1be24500400f019f6b7cb72f86fedaa7ff`  
		Last Modified: Tue, 03 Nov 2026 00:29:08 GMT  
		Size: 558.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d2d0ddc9b191af1d6abc51033cd87279c00a94345f34a587fdac5e7410271c1`  
		Last Modified: Tue, 03 Nov 2026 00:29:08 GMT  
		Size: 601.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8040926e2b73368b8714801440c20ba7318d4222c6b42799da9bfb674fa0bff`  
		Last Modified: Tue, 03 Nov 2026 00:29:09 GMT  
		Size: 880.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19.0-20261102` - unknown; unknown

```console
$ docker pull odoo@sha256:96777eefcfd642667af4bd4d3c4d85017ab2fe91611284acb12758027cb83229
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.7 MB (52671823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31a3534805c13fbab023e706aa5978e18e6ea1d16b98a49acf62dcfa3ab20515`

```dockerfile
```

-	Layers:
	-	`sha256:a34e3dcd4769902539293bb607bd4045a4a72f308bfb9f98f7a373f9674a9c9d`  
		Last Modified: Tue, 03 Nov 2026 00:29:09 GMT  
		Size: 52.6 MB (52644571 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:33039397c42264422c0c54e45aef840b35ae95f177902b4814fc41a541ed27cf`  
		Last Modified: Tue, 03 Nov 2026 00:29:05 GMT  
		Size: 27.3 KB (27252 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:20`

```console
$ docker pull odoo@sha256:c4f5d987b87393baad15836fc466109073ebdb03396f907f1ab311b20ab49d15
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
$ docker pull odoo@sha256:dea5146bfe0123a316536ba8acee66ac61296900642772c6921fde925d9ca045
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **820.6 MB (820623124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2db58ecdf80633cba6571c9ed19efec27dc9f630189dddab32b7b096d6dc13a8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Sun, 25 Oct 2026 14:18:35 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:18:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:18:35 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:18:39 GMT
ADD file:ef742f6d40def62a9b4c0b916161e4ab04e1a6b83bc4e20803daa0d5ab2ea12b in / 
# Sun, 25 Oct 2026 14:18:39 GMT
CMD ["/bin/bash"]
# Tue, 03 Nov 2026 00:15:59 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 03 Nov 2026 00:15:59 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 03 Nov 2026 00:15:59 GMT
ENV LANG=en_US.UTF-8
# Tue, 03 Nov 2026 00:15:59 GMT
ARG TARGETARCH=ppc64le
# Tue, 03 Nov 2026 00:15:59 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 03 Nov 2026 00:16:13 GMT
# ARGS: TARGETARCH=ppc64le
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:20:56 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:20:56 GMT
ENV ODOO_VERSION=20.0
# Tue, 03 Nov 2026 00:20:56 GMT
ARG ODOO_RELEASE=20261102
# Tue, 03 Nov 2026 00:20:56 GMT
ARG ODOO_SHA=0706abac09a953f10007e26aa31767af5f9d1b2b
# Tue, 03 Nov 2026 00:24:43 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261102 ODOO_SHA=0706abac09a953f10007e26aa31767af5f9d1b2b
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 03 Nov 2026 00:24:47 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 03 Nov 2026 00:24:48 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 03 Nov 2026 00:24:48 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261102 ODOO_SHA=0706abac09a953f10007e26aa31767af5f9d1b2b
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 03 Nov 2026 00:24:48 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 03 Nov 2026 00:24:48 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 03 Nov 2026 00:24:48 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 03 Nov 2026 00:24:49 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 03 Nov 2026 00:24:49 GMT
USER odoo
# Tue, 03 Nov 2026 00:24:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 03 Nov 2026 00:24:49 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:400d78a2b842f2bd938ae79326cc66475d11b949ac6b2acbfbc7709090964eb8`  
		Last Modified: Sun, 25 Oct 2026 14:50:25 GMT  
		Size: 34.4 MB (34378308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:250157a23803c3e07f3e4465e1f9606abc0c5e21e600249deaa9fda75f2bf5ba`  
		Last Modified: Tue, 03 Nov 2026 00:29:16 GMT  
		Size: 249.4 MB (249382793 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06a6eeba402f3ba273d07fe34e9630bd8de1e44bdb48d6f4deb3858cf3e566f6`  
		Last Modified: Tue, 03 Nov 2026 00:29:06 GMT  
		Size: 14.7 MB (14743154 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d91b9a2240116b1addde2f24ee7af737939fec6464bdfec0bc9b2cce1a828265`  
		Last Modified: Tue, 03 Nov 2026 00:29:05 GMT  
		Size: 875.1 KB (875106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7e57628e148c61c4bfec12d56368c915bb7246be4ac65a66674ed3afe9c336c`  
		Last Modified: Tue, 03 Nov 2026 00:29:43 GMT  
		Size: 521.2 MB (521240989 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d61f641126ed0ca731ca344ea9d47a607e5a8ca8d524fee3d497d618884167c3`  
		Last Modified: Tue, 03 Nov 2026 00:29:31 GMT  
		Size: 718.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40aff0ac535a2d6a02efd04bcb411e22c5f0c5d3375299e3755bab6fa609cd6c`  
		Last Modified: Tue, 03 Nov 2026 00:29:31 GMT  
		Size: 567.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88a3c38682bf41f08845a66b47ca925199cf688584b36e8e323e87e10cdf5f9d`  
		Last Modified: Tue, 03 Nov 2026 00:29:31 GMT  
		Size: 610.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:854f73f4b988b6058c0de4eb4013ef7f1eae3191713183cb61f3f33ebfec3dc4`  
		Last Modified: Tue, 03 Nov 2026 00:29:32 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:20` - unknown; unknown

```console
$ docker pull odoo@sha256:97f5eba1c994b3786a7eceb82f626c3bb1f0a5ed7f5e52bdc4a47b1c9e5fbbde
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.4 MB (55354244 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb1ae6a9766a12703786b6d9943a58f88ac7ffe35e11743772b236e0180ad53d`

```dockerfile
```

-	Layers:
	-	`sha256:1e80fdc1a3d2f845c3eb697e753547d9fb6e40430c9d7e6f2800d1f31d611238`  
		Last Modified: Tue, 03 Nov 2026 00:29:34 GMT  
		Size: 55.3 MB (55326691 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d901e3c7ad44144c326fb42ece2bf4aac8ef3de3171972f964c92424e5815f87`  
		Last Modified: Tue, 03 Nov 2026 00:29:31 GMT  
		Size: 27.6 KB (27553 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:20.0`

```console
$ docker pull odoo@sha256:c4f5d987b87393baad15836fc466109073ebdb03396f907f1ab311b20ab49d15
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
$ docker pull odoo@sha256:dea5146bfe0123a316536ba8acee66ac61296900642772c6921fde925d9ca045
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **820.6 MB (820623124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2db58ecdf80633cba6571c9ed19efec27dc9f630189dddab32b7b096d6dc13a8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Sun, 25 Oct 2026 14:18:35 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:18:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:18:35 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:18:39 GMT
ADD file:ef742f6d40def62a9b4c0b916161e4ab04e1a6b83bc4e20803daa0d5ab2ea12b in / 
# Sun, 25 Oct 2026 14:18:39 GMT
CMD ["/bin/bash"]
# Tue, 03 Nov 2026 00:15:59 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 03 Nov 2026 00:15:59 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 03 Nov 2026 00:15:59 GMT
ENV LANG=en_US.UTF-8
# Tue, 03 Nov 2026 00:15:59 GMT
ARG TARGETARCH=ppc64le
# Tue, 03 Nov 2026 00:15:59 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 03 Nov 2026 00:16:13 GMT
# ARGS: TARGETARCH=ppc64le
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:20:56 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:20:56 GMT
ENV ODOO_VERSION=20.0
# Tue, 03 Nov 2026 00:20:56 GMT
ARG ODOO_RELEASE=20261102
# Tue, 03 Nov 2026 00:20:56 GMT
ARG ODOO_SHA=0706abac09a953f10007e26aa31767af5f9d1b2b
# Tue, 03 Nov 2026 00:24:43 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261102 ODOO_SHA=0706abac09a953f10007e26aa31767af5f9d1b2b
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 03 Nov 2026 00:24:47 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 03 Nov 2026 00:24:48 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 03 Nov 2026 00:24:48 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261102 ODOO_SHA=0706abac09a953f10007e26aa31767af5f9d1b2b
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 03 Nov 2026 00:24:48 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 03 Nov 2026 00:24:48 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 03 Nov 2026 00:24:48 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 03 Nov 2026 00:24:49 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 03 Nov 2026 00:24:49 GMT
USER odoo
# Tue, 03 Nov 2026 00:24:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 03 Nov 2026 00:24:49 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:400d78a2b842f2bd938ae79326cc66475d11b949ac6b2acbfbc7709090964eb8`  
		Last Modified: Sun, 25 Oct 2026 14:50:25 GMT  
		Size: 34.4 MB (34378308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:250157a23803c3e07f3e4465e1f9606abc0c5e21e600249deaa9fda75f2bf5ba`  
		Last Modified: Tue, 03 Nov 2026 00:29:16 GMT  
		Size: 249.4 MB (249382793 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06a6eeba402f3ba273d07fe34e9630bd8de1e44bdb48d6f4deb3858cf3e566f6`  
		Last Modified: Tue, 03 Nov 2026 00:29:06 GMT  
		Size: 14.7 MB (14743154 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d91b9a2240116b1addde2f24ee7af737939fec6464bdfec0bc9b2cce1a828265`  
		Last Modified: Tue, 03 Nov 2026 00:29:05 GMT  
		Size: 875.1 KB (875106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7e57628e148c61c4bfec12d56368c915bb7246be4ac65a66674ed3afe9c336c`  
		Last Modified: Tue, 03 Nov 2026 00:29:43 GMT  
		Size: 521.2 MB (521240989 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d61f641126ed0ca731ca344ea9d47a607e5a8ca8d524fee3d497d618884167c3`  
		Last Modified: Tue, 03 Nov 2026 00:29:31 GMT  
		Size: 718.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40aff0ac535a2d6a02efd04bcb411e22c5f0c5d3375299e3755bab6fa609cd6c`  
		Last Modified: Tue, 03 Nov 2026 00:29:31 GMT  
		Size: 567.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88a3c38682bf41f08845a66b47ca925199cf688584b36e8e323e87e10cdf5f9d`  
		Last Modified: Tue, 03 Nov 2026 00:29:31 GMT  
		Size: 610.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:854f73f4b988b6058c0de4eb4013ef7f1eae3191713183cb61f3f33ebfec3dc4`  
		Last Modified: Tue, 03 Nov 2026 00:29:32 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:20.0` - unknown; unknown

```console
$ docker pull odoo@sha256:97f5eba1c994b3786a7eceb82f626c3bb1f0a5ed7f5e52bdc4a47b1c9e5fbbde
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.4 MB (55354244 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb1ae6a9766a12703786b6d9943a58f88ac7ffe35e11743772b236e0180ad53d`

```dockerfile
```

-	Layers:
	-	`sha256:1e80fdc1a3d2f845c3eb697e753547d9fb6e40430c9d7e6f2800d1f31d611238`  
		Last Modified: Tue, 03 Nov 2026 00:29:34 GMT  
		Size: 55.3 MB (55326691 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d901e3c7ad44144c326fb42ece2bf4aac8ef3de3171972f964c92424e5815f87`  
		Last Modified: Tue, 03 Nov 2026 00:29:31 GMT  
		Size: 27.6 KB (27553 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:20.0-20261102`

```console
$ docker pull odoo@sha256:c4f5d987b87393baad15836fc466109073ebdb03396f907f1ab311b20ab49d15
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `odoo:20.0-20261102` - linux; amd64

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

### `odoo:20.0-20261102` - unknown; unknown

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

### `odoo:20.0-20261102` - linux; arm64 variant v8

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

### `odoo:20.0-20261102` - unknown; unknown

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

### `odoo:20.0-20261102` - linux; ppc64le

```console
$ docker pull odoo@sha256:dea5146bfe0123a316536ba8acee66ac61296900642772c6921fde925d9ca045
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **820.6 MB (820623124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2db58ecdf80633cba6571c9ed19efec27dc9f630189dddab32b7b096d6dc13a8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Sun, 25 Oct 2026 14:18:35 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:18:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:18:35 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:18:39 GMT
ADD file:ef742f6d40def62a9b4c0b916161e4ab04e1a6b83bc4e20803daa0d5ab2ea12b in / 
# Sun, 25 Oct 2026 14:18:39 GMT
CMD ["/bin/bash"]
# Tue, 03 Nov 2026 00:15:59 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 03 Nov 2026 00:15:59 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 03 Nov 2026 00:15:59 GMT
ENV LANG=en_US.UTF-8
# Tue, 03 Nov 2026 00:15:59 GMT
ARG TARGETARCH=ppc64le
# Tue, 03 Nov 2026 00:15:59 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 03 Nov 2026 00:16:13 GMT
# ARGS: TARGETARCH=ppc64le
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:20:56 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:20:56 GMT
ENV ODOO_VERSION=20.0
# Tue, 03 Nov 2026 00:20:56 GMT
ARG ODOO_RELEASE=20261102
# Tue, 03 Nov 2026 00:20:56 GMT
ARG ODOO_SHA=0706abac09a953f10007e26aa31767af5f9d1b2b
# Tue, 03 Nov 2026 00:24:43 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261102 ODOO_SHA=0706abac09a953f10007e26aa31767af5f9d1b2b
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 03 Nov 2026 00:24:47 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 03 Nov 2026 00:24:48 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 03 Nov 2026 00:24:48 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261102 ODOO_SHA=0706abac09a953f10007e26aa31767af5f9d1b2b
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 03 Nov 2026 00:24:48 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 03 Nov 2026 00:24:48 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 03 Nov 2026 00:24:48 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 03 Nov 2026 00:24:49 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 03 Nov 2026 00:24:49 GMT
USER odoo
# Tue, 03 Nov 2026 00:24:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 03 Nov 2026 00:24:49 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:400d78a2b842f2bd938ae79326cc66475d11b949ac6b2acbfbc7709090964eb8`  
		Last Modified: Sun, 25 Oct 2026 14:50:25 GMT  
		Size: 34.4 MB (34378308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:250157a23803c3e07f3e4465e1f9606abc0c5e21e600249deaa9fda75f2bf5ba`  
		Last Modified: Tue, 03 Nov 2026 00:29:16 GMT  
		Size: 249.4 MB (249382793 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06a6eeba402f3ba273d07fe34e9630bd8de1e44bdb48d6f4deb3858cf3e566f6`  
		Last Modified: Tue, 03 Nov 2026 00:29:06 GMT  
		Size: 14.7 MB (14743154 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d91b9a2240116b1addde2f24ee7af737939fec6464bdfec0bc9b2cce1a828265`  
		Last Modified: Tue, 03 Nov 2026 00:29:05 GMT  
		Size: 875.1 KB (875106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7e57628e148c61c4bfec12d56368c915bb7246be4ac65a66674ed3afe9c336c`  
		Last Modified: Tue, 03 Nov 2026 00:29:43 GMT  
		Size: 521.2 MB (521240989 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d61f641126ed0ca731ca344ea9d47a607e5a8ca8d524fee3d497d618884167c3`  
		Last Modified: Tue, 03 Nov 2026 00:29:31 GMT  
		Size: 718.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40aff0ac535a2d6a02efd04bcb411e22c5f0c5d3375299e3755bab6fa609cd6c`  
		Last Modified: Tue, 03 Nov 2026 00:29:31 GMT  
		Size: 567.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88a3c38682bf41f08845a66b47ca925199cf688584b36e8e323e87e10cdf5f9d`  
		Last Modified: Tue, 03 Nov 2026 00:29:31 GMT  
		Size: 610.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:854f73f4b988b6058c0de4eb4013ef7f1eae3191713183cb61f3f33ebfec3dc4`  
		Last Modified: Tue, 03 Nov 2026 00:29:32 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:20.0-20261102` - unknown; unknown

```console
$ docker pull odoo@sha256:97f5eba1c994b3786a7eceb82f626c3bb1f0a5ed7f5e52bdc4a47b1c9e5fbbde
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.4 MB (55354244 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb1ae6a9766a12703786b6d9943a58f88ac7ffe35e11743772b236e0180ad53d`

```dockerfile
```

-	Layers:
	-	`sha256:1e80fdc1a3d2f845c3eb697e753547d9fb6e40430c9d7e6f2800d1f31d611238`  
		Last Modified: Tue, 03 Nov 2026 00:29:34 GMT  
		Size: 55.3 MB (55326691 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d901e3c7ad44144c326fb42ece2bf4aac8ef3de3171972f964c92424e5815f87`  
		Last Modified: Tue, 03 Nov 2026 00:29:31 GMT  
		Size: 27.6 KB (27553 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:latest`

```console
$ docker pull odoo@sha256:c4f5d987b87393baad15836fc466109073ebdb03396f907f1ab311b20ab49d15
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
$ docker pull odoo@sha256:dea5146bfe0123a316536ba8acee66ac61296900642772c6921fde925d9ca045
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **820.6 MB (820623124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2db58ecdf80633cba6571c9ed19efec27dc9f630189dddab32b7b096d6dc13a8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Sun, 25 Oct 2026 14:18:35 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:18:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:18:35 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:18:39 GMT
ADD file:ef742f6d40def62a9b4c0b916161e4ab04e1a6b83bc4e20803daa0d5ab2ea12b in / 
# Sun, 25 Oct 2026 14:18:39 GMT
CMD ["/bin/bash"]
# Tue, 03 Nov 2026 00:15:59 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 03 Nov 2026 00:15:59 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 03 Nov 2026 00:15:59 GMT
ENV LANG=en_US.UTF-8
# Tue, 03 Nov 2026 00:15:59 GMT
ARG TARGETARCH=ppc64le
# Tue, 03 Nov 2026 00:15:59 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 03 Nov 2026 00:16:13 GMT
# ARGS: TARGETARCH=ppc64le
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:20:56 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:20:56 GMT
ENV ODOO_VERSION=20.0
# Tue, 03 Nov 2026 00:20:56 GMT
ARG ODOO_RELEASE=20261102
# Tue, 03 Nov 2026 00:20:56 GMT
ARG ODOO_SHA=0706abac09a953f10007e26aa31767af5f9d1b2b
# Tue, 03 Nov 2026 00:24:43 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261102 ODOO_SHA=0706abac09a953f10007e26aa31767af5f9d1b2b
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 03 Nov 2026 00:24:47 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 03 Nov 2026 00:24:48 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 03 Nov 2026 00:24:48 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261102 ODOO_SHA=0706abac09a953f10007e26aa31767af5f9d1b2b
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 03 Nov 2026 00:24:48 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 03 Nov 2026 00:24:48 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 03 Nov 2026 00:24:48 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 03 Nov 2026 00:24:49 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 03 Nov 2026 00:24:49 GMT
USER odoo
# Tue, 03 Nov 2026 00:24:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 03 Nov 2026 00:24:49 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:400d78a2b842f2bd938ae79326cc66475d11b949ac6b2acbfbc7709090964eb8`  
		Last Modified: Sun, 25 Oct 2026 14:50:25 GMT  
		Size: 34.4 MB (34378308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:250157a23803c3e07f3e4465e1f9606abc0c5e21e600249deaa9fda75f2bf5ba`  
		Last Modified: Tue, 03 Nov 2026 00:29:16 GMT  
		Size: 249.4 MB (249382793 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06a6eeba402f3ba273d07fe34e9630bd8de1e44bdb48d6f4deb3858cf3e566f6`  
		Last Modified: Tue, 03 Nov 2026 00:29:06 GMT  
		Size: 14.7 MB (14743154 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d91b9a2240116b1addde2f24ee7af737939fec6464bdfec0bc9b2cce1a828265`  
		Last Modified: Tue, 03 Nov 2026 00:29:05 GMT  
		Size: 875.1 KB (875106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7e57628e148c61c4bfec12d56368c915bb7246be4ac65a66674ed3afe9c336c`  
		Last Modified: Tue, 03 Nov 2026 00:29:43 GMT  
		Size: 521.2 MB (521240989 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d61f641126ed0ca731ca344ea9d47a607e5a8ca8d524fee3d497d618884167c3`  
		Last Modified: Tue, 03 Nov 2026 00:29:31 GMT  
		Size: 718.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40aff0ac535a2d6a02efd04bcb411e22c5f0c5d3375299e3755bab6fa609cd6c`  
		Last Modified: Tue, 03 Nov 2026 00:29:31 GMT  
		Size: 567.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88a3c38682bf41f08845a66b47ca925199cf688584b36e8e323e87e10cdf5f9d`  
		Last Modified: Tue, 03 Nov 2026 00:29:31 GMT  
		Size: 610.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:854f73f4b988b6058c0de4eb4013ef7f1eae3191713183cb61f3f33ebfec3dc4`  
		Last Modified: Tue, 03 Nov 2026 00:29:32 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:latest` - unknown; unknown

```console
$ docker pull odoo@sha256:97f5eba1c994b3786a7eceb82f626c3bb1f0a5ed7f5e52bdc4a47b1c9e5fbbde
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.4 MB (55354244 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb1ae6a9766a12703786b6d9943a58f88ac7ffe35e11743772b236e0180ad53d`

```dockerfile
```

-	Layers:
	-	`sha256:1e80fdc1a3d2f845c3eb697e753547d9fb6e40430c9d7e6f2800d1f31d611238`  
		Last Modified: Tue, 03 Nov 2026 00:29:34 GMT  
		Size: 55.3 MB (55326691 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d901e3c7ad44144c326fb42ece2bf4aac8ef3de3171972f964c92424e5815f87`  
		Last Modified: Tue, 03 Nov 2026 00:29:31 GMT  
		Size: 27.6 KB (27553 bytes)  
		MIME: application/vnd.in-toto+json
