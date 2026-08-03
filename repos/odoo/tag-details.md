<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `odoo`

-	[`odoo:17`](#odoo17)
-	[`odoo:17.0`](#odoo170)
-	[`odoo:17.0-20260803`](#odoo170-20260803)
-	[`odoo:18`](#odoo18)
-	[`odoo:18.0`](#odoo180)
-	[`odoo:18.0-20260803`](#odoo180-20260803)
-	[`odoo:19`](#odoo19)
-	[`odoo:19.0`](#odoo190)
-	[`odoo:19.0-20260803`](#odoo190-20260803)
-	[`odoo:latest`](#odoolatest)

## `odoo:17`

```console
$ docker pull odoo@sha256:f83602ecb7c5dfab85402bd10ece785bb2a883dd8e97e6884cacf4566dd4daa1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `odoo:17` - linux; amd64

```console
$ docker pull odoo@sha256:dee029c7e7b3e6ff01a0221cdd4d29b62072a520e1664bdb8e4cbf9a026e1082
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **609.3 MB (609343911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a55a2e00a1fd8fede44f152af0aa7318f7b7fe7ab4129e1ff1daad7a083ab5ba`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Mon, 29 Jun 2026 11:07:30 GMT
ARG RELEASE
# Mon, 29 Jun 2026 11:07:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 11:07:30 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 11:07:32 GMT
ADD file:c5143b228eb55f19ed4d3b653ad68ec7afe54ded0247e090ce3afb9e5484adfb in / 
# Mon, 29 Jun 2026 11:07:32 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 18:42:27 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Thu, 23 Jul 2026 18:42:27 GMT
SHELL [/bin/bash -xo pipefail -c]
# Thu, 23 Jul 2026 18:42:27 GMT
ENV LANG=en_US.UTF-8
# Thu, 23 Jul 2026 18:42:27 GMT
ARG TARGETARCH=amd64
# Thu, 23 Jul 2026 18:42:27 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     DEBIAN_FRONTEND=noninteractive     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Thu, 23 Jul 2026 18:42:34 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jammy-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 23 Jul 2026 18:43:04 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 23 Jul 2026 18:43:04 GMT
ENV ODOO_VERSION=17.0
# Thu, 23 Jul 2026 18:43:04 GMT
ARG ODOO_RELEASE=20260723
# Thu, 23 Jul 2026 18:43:04 GMT
ARG ODOO_SHA=5ff18afa5597d4ac5498d1ea788c0ea8d7b80ef4
# Thu, 23 Jul 2026 18:44:11 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260723 ODOO_SHA=5ff18afa5597d4ac5498d1ea788c0ea8d7b80ef4
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Thu, 23 Jul 2026 18:44:12 GMT
COPY ./entrypoint.sh / # buildkit
# Thu, 23 Jul 2026 18:44:12 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Thu, 23 Jul 2026 18:44:12 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260723 ODOO_SHA=5ff18afa5597d4ac5498d1ea788c0ea8d7b80ef4
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Thu, 23 Jul 2026 18:44:12 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Thu, 23 Jul 2026 18:44:12 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Thu, 23 Jul 2026 18:44:12 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Thu, 23 Jul 2026 18:44:12 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Thu, 23 Jul 2026 18:44:12 GMT
USER odoo
# Thu, 23 Jul 2026 18:44:12 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 23 Jul 2026 18:44:12 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c36a0614774c0a356969d3b4428d21b694b9f8dfdc828322b99f3e7732ad5453`  
		Last Modified: Thu, 23 Jul 2026 18:45:31 GMT  
		Size: 230.5 MB (230523053 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:117964e3938e0e1118fd1ae29b2761c7e4ff5625a3aa3163a0c48894bf97b867`  
		Last Modified: Thu, 23 Jul 2026 18:45:20 GMT  
		Size: 2.6 MB (2553788 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14366ac54791ad3c20a5d4c06839e68a3e136ebdffe75a18e199504c3de589ae`  
		Last Modified: Thu, 23 Jul 2026 18:45:20 GMT  
		Size: 681.4 KB (681384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b133c10f21d9fd113ec3e45ed64d3c33377a1a3990930e67d8dc45fc952d4b93`  
		Last Modified: Thu, 23 Jul 2026 18:45:33 GMT  
		Size: 345.8 MB (345844012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0310883bae7df2ffe2306498ba9d08a5f890af37d5a9a1545f990968b3b0dd65`  
		Last Modified: Thu, 23 Jul 2026 18:45:22 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e9e93f76bfcd4df9d2fa3f23e4910ebfcad709de96b1beb24a1d0fe185febb5`  
		Last Modified: Thu, 23 Jul 2026 18:45:22 GMT  
		Size: 554.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2e3d43dedced50a57e221f706ddec118cd5dfa949d8b6af0de3a839aef887cb`  
		Last Modified: Thu, 23 Jul 2026 18:45:24 GMT  
		Size: 594.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e5361dd7d098b6ce1d77408ddc2968e1afa56152eb15f7e4eb49c2928d1edc4`  
		Last Modified: Thu, 23 Jul 2026 18:45:24 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:17` - unknown; unknown

```console
$ docker pull odoo@sha256:f3737237e4d663775ea230676518edf0b9a09bb25ce85290d72007debe8fcc08
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.7 MB (40746067 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1d2d633f9094680ceef8e120d585f177c9906d774e4ca7e22bcf610f360a973`

```dockerfile
```

-	Layers:
	-	`sha256:ceef79f3a38cb1501f2900c6f60b7cc0dede7e61b747d4534d50966261806ede`  
		Last Modified: Thu, 23 Jul 2026 18:45:23 GMT  
		Size: 40.7 MB (40718750 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9769adb6c6507aba086839dac434e4e8138d28d6e5599b5671fe61493a75079f`  
		Last Modified: Thu, 23 Jul 2026 18:45:20 GMT  
		Size: 27.3 KB (27317 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:17` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:6a9998f614e18ebec139eaca2bfd907482911fd269dfba5ae36223db5eda45ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **604.3 MB (604265358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:beaa2c5e8ec26dbfa2354674f6d92ae9443cd567724a4f5d18d5ae9195e40951`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Mon, 29 Jun 2026 10:38:39 GMT
ARG RELEASE
# Mon, 29 Jun 2026 10:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 10:38:39 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 10:38:42 GMT
ADD file:a517741c956f6a7e4b7cb0efd9bc418ce3cc54eb49b5314080ff606a7430ac2a in / 
# Mon, 29 Jun 2026 10:38:42 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 18:41:46 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Thu, 23 Jul 2026 18:41:46 GMT
SHELL [/bin/bash -xo pipefail -c]
# Thu, 23 Jul 2026 18:41:46 GMT
ENV LANG=en_US.UTF-8
# Thu, 23 Jul 2026 18:41:46 GMT
ARG TARGETARCH=arm64
# Thu, 23 Jul 2026 18:41:46 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     DEBIAN_FRONTEND=noninteractive     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Thu, 23 Jul 2026 18:41:55 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jammy-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 23 Jul 2026 18:42:27 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 23 Jul 2026 18:42:27 GMT
ENV ODOO_VERSION=17.0
# Thu, 23 Jul 2026 18:42:27 GMT
ARG ODOO_RELEASE=20260723
# Thu, 23 Jul 2026 18:42:27 GMT
ARG ODOO_SHA=5ff18afa5597d4ac5498d1ea788c0ea8d7b80ef4
# Thu, 23 Jul 2026 18:43:27 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260723 ODOO_SHA=5ff18afa5597d4ac5498d1ea788c0ea8d7b80ef4
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Thu, 23 Jul 2026 18:43:28 GMT
COPY ./entrypoint.sh / # buildkit
# Thu, 23 Jul 2026 18:43:28 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Thu, 23 Jul 2026 18:43:28 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260723 ODOO_SHA=5ff18afa5597d4ac5498d1ea788c0ea8d7b80ef4
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Thu, 23 Jul 2026 18:43:28 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Thu, 23 Jul 2026 18:43:28 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Thu, 23 Jul 2026 18:43:28 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Thu, 23 Jul 2026 18:43:28 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Thu, 23 Jul 2026 18:43:28 GMT
USER odoo
# Thu, 23 Jul 2026 18:43:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 23 Jul 2026 18:43:28 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:858ded2d84fc448e193b3bb46a5a90aaa22aba7567429daca8ca620b5f94e2db`  
		Last Modified: Thu, 23 Jul 2026 18:44:59 GMT  
		Size: 227.9 MB (227946412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c59a2fbdd92faceafb002e82817d2858bdd696c4dbfa75d5cea33f165f6aa69b`  
		Last Modified: Thu, 23 Jul 2026 18:44:44 GMT  
		Size: 2.5 MB (2549271 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c63411ac30822a74d2d8d5b15467c8ec797b155bb5fc62c6f6429a8c2fac5120`  
		Last Modified: Thu, 23 Jul 2026 18:44:43 GMT  
		Size: 681.5 KB (681506 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f3c95338a8753e8b58ca22f33019088a3154c92f1e0520890b50e3d3ec5f3b8`  
		Last Modified: Thu, 23 Jul 2026 18:45:02 GMT  
		Size: 345.5 MB (345472194 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa462a8152c6c849b07e0e5bcde52283c82a8c152004008dd7a8b4b65813d36a`  
		Last Modified: Thu, 23 Jul 2026 18:44:45 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f9aa0e868ab0e2ef9e8515d6dcb5cfee7eb5460a28318e5d1171227947d5ea5`  
		Last Modified: Thu, 23 Jul 2026 18:44:45 GMT  
		Size: 553.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bf5a441e4cfddbac6778217bc3d4b46fcde8a738a37391e0d6cbaf8c3cf7d37`  
		Last Modified: Thu, 23 Jul 2026 18:44:47 GMT  
		Size: 593.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b0a6e88847abee5933204c1f69491c56187bda8681d795b9beeb7b920bb0d36`  
		Last Modified: Thu, 23 Jul 2026 18:44:47 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:17` - unknown; unknown

```console
$ docker pull odoo@sha256:3573e0bf7ea1317aaabb2099fb48a716e1eb0180b3680f995b1bdc354c8451ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.8 MB (40752721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f39c54d681308b64869f80bbd125260bd1fc2c604f53d23d9457d2ddff06b845`

```dockerfile
```

-	Layers:
	-	`sha256:af947d0dba7e7d28f154218f29f264dc4013b56b446add4e6b1608ef1430a8d6`  
		Last Modified: Thu, 23 Jul 2026 18:44:47 GMT  
		Size: 40.7 MB (40725254 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:79246b60455fdc28ac2fd93271d8771bca08d72a77ae838533ee7c79b51ca454`  
		Last Modified: Thu, 23 Jul 2026 18:44:43 GMT  
		Size: 27.5 KB (27467 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:17.0`

```console
$ docker pull odoo@sha256:f83602ecb7c5dfab85402bd10ece785bb2a883dd8e97e6884cacf4566dd4daa1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `odoo:17.0` - linux; amd64

```console
$ docker pull odoo@sha256:dee029c7e7b3e6ff01a0221cdd4d29b62072a520e1664bdb8e4cbf9a026e1082
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **609.3 MB (609343911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a55a2e00a1fd8fede44f152af0aa7318f7b7fe7ab4129e1ff1daad7a083ab5ba`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Mon, 29 Jun 2026 11:07:30 GMT
ARG RELEASE
# Mon, 29 Jun 2026 11:07:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 11:07:30 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 11:07:32 GMT
ADD file:c5143b228eb55f19ed4d3b653ad68ec7afe54ded0247e090ce3afb9e5484adfb in / 
# Mon, 29 Jun 2026 11:07:32 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 18:42:27 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Thu, 23 Jul 2026 18:42:27 GMT
SHELL [/bin/bash -xo pipefail -c]
# Thu, 23 Jul 2026 18:42:27 GMT
ENV LANG=en_US.UTF-8
# Thu, 23 Jul 2026 18:42:27 GMT
ARG TARGETARCH=amd64
# Thu, 23 Jul 2026 18:42:27 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     DEBIAN_FRONTEND=noninteractive     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Thu, 23 Jul 2026 18:42:34 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jammy-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 23 Jul 2026 18:43:04 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 23 Jul 2026 18:43:04 GMT
ENV ODOO_VERSION=17.0
# Thu, 23 Jul 2026 18:43:04 GMT
ARG ODOO_RELEASE=20260723
# Thu, 23 Jul 2026 18:43:04 GMT
ARG ODOO_SHA=5ff18afa5597d4ac5498d1ea788c0ea8d7b80ef4
# Thu, 23 Jul 2026 18:44:11 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260723 ODOO_SHA=5ff18afa5597d4ac5498d1ea788c0ea8d7b80ef4
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Thu, 23 Jul 2026 18:44:12 GMT
COPY ./entrypoint.sh / # buildkit
# Thu, 23 Jul 2026 18:44:12 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Thu, 23 Jul 2026 18:44:12 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260723 ODOO_SHA=5ff18afa5597d4ac5498d1ea788c0ea8d7b80ef4
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Thu, 23 Jul 2026 18:44:12 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Thu, 23 Jul 2026 18:44:12 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Thu, 23 Jul 2026 18:44:12 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Thu, 23 Jul 2026 18:44:12 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Thu, 23 Jul 2026 18:44:12 GMT
USER odoo
# Thu, 23 Jul 2026 18:44:12 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 23 Jul 2026 18:44:12 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c36a0614774c0a356969d3b4428d21b694b9f8dfdc828322b99f3e7732ad5453`  
		Last Modified: Thu, 23 Jul 2026 18:45:31 GMT  
		Size: 230.5 MB (230523053 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:117964e3938e0e1118fd1ae29b2761c7e4ff5625a3aa3163a0c48894bf97b867`  
		Last Modified: Thu, 23 Jul 2026 18:45:20 GMT  
		Size: 2.6 MB (2553788 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14366ac54791ad3c20a5d4c06839e68a3e136ebdffe75a18e199504c3de589ae`  
		Last Modified: Thu, 23 Jul 2026 18:45:20 GMT  
		Size: 681.4 KB (681384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b133c10f21d9fd113ec3e45ed64d3c33377a1a3990930e67d8dc45fc952d4b93`  
		Last Modified: Thu, 23 Jul 2026 18:45:33 GMT  
		Size: 345.8 MB (345844012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0310883bae7df2ffe2306498ba9d08a5f890af37d5a9a1545f990968b3b0dd65`  
		Last Modified: Thu, 23 Jul 2026 18:45:22 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e9e93f76bfcd4df9d2fa3f23e4910ebfcad709de96b1beb24a1d0fe185febb5`  
		Last Modified: Thu, 23 Jul 2026 18:45:22 GMT  
		Size: 554.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2e3d43dedced50a57e221f706ddec118cd5dfa949d8b6af0de3a839aef887cb`  
		Last Modified: Thu, 23 Jul 2026 18:45:24 GMT  
		Size: 594.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e5361dd7d098b6ce1d77408ddc2968e1afa56152eb15f7e4eb49c2928d1edc4`  
		Last Modified: Thu, 23 Jul 2026 18:45:24 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:17.0` - unknown; unknown

```console
$ docker pull odoo@sha256:f3737237e4d663775ea230676518edf0b9a09bb25ce85290d72007debe8fcc08
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.7 MB (40746067 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1d2d633f9094680ceef8e120d585f177c9906d774e4ca7e22bcf610f360a973`

```dockerfile
```

-	Layers:
	-	`sha256:ceef79f3a38cb1501f2900c6f60b7cc0dede7e61b747d4534d50966261806ede`  
		Last Modified: Thu, 23 Jul 2026 18:45:23 GMT  
		Size: 40.7 MB (40718750 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9769adb6c6507aba086839dac434e4e8138d28d6e5599b5671fe61493a75079f`  
		Last Modified: Thu, 23 Jul 2026 18:45:20 GMT  
		Size: 27.3 KB (27317 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:17.0` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:6a9998f614e18ebec139eaca2bfd907482911fd269dfba5ae36223db5eda45ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **604.3 MB (604265358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:beaa2c5e8ec26dbfa2354674f6d92ae9443cd567724a4f5d18d5ae9195e40951`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Mon, 29 Jun 2026 10:38:39 GMT
ARG RELEASE
# Mon, 29 Jun 2026 10:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 10:38:39 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 10:38:42 GMT
ADD file:a517741c956f6a7e4b7cb0efd9bc418ce3cc54eb49b5314080ff606a7430ac2a in / 
# Mon, 29 Jun 2026 10:38:42 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 18:41:46 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Thu, 23 Jul 2026 18:41:46 GMT
SHELL [/bin/bash -xo pipefail -c]
# Thu, 23 Jul 2026 18:41:46 GMT
ENV LANG=en_US.UTF-8
# Thu, 23 Jul 2026 18:41:46 GMT
ARG TARGETARCH=arm64
# Thu, 23 Jul 2026 18:41:46 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     DEBIAN_FRONTEND=noninteractive     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Thu, 23 Jul 2026 18:41:55 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jammy-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 23 Jul 2026 18:42:27 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 23 Jul 2026 18:42:27 GMT
ENV ODOO_VERSION=17.0
# Thu, 23 Jul 2026 18:42:27 GMT
ARG ODOO_RELEASE=20260723
# Thu, 23 Jul 2026 18:42:27 GMT
ARG ODOO_SHA=5ff18afa5597d4ac5498d1ea788c0ea8d7b80ef4
# Thu, 23 Jul 2026 18:43:27 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260723 ODOO_SHA=5ff18afa5597d4ac5498d1ea788c0ea8d7b80ef4
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Thu, 23 Jul 2026 18:43:28 GMT
COPY ./entrypoint.sh / # buildkit
# Thu, 23 Jul 2026 18:43:28 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Thu, 23 Jul 2026 18:43:28 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260723 ODOO_SHA=5ff18afa5597d4ac5498d1ea788c0ea8d7b80ef4
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Thu, 23 Jul 2026 18:43:28 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Thu, 23 Jul 2026 18:43:28 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Thu, 23 Jul 2026 18:43:28 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Thu, 23 Jul 2026 18:43:28 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Thu, 23 Jul 2026 18:43:28 GMT
USER odoo
# Thu, 23 Jul 2026 18:43:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 23 Jul 2026 18:43:28 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:858ded2d84fc448e193b3bb46a5a90aaa22aba7567429daca8ca620b5f94e2db`  
		Last Modified: Thu, 23 Jul 2026 18:44:59 GMT  
		Size: 227.9 MB (227946412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c59a2fbdd92faceafb002e82817d2858bdd696c4dbfa75d5cea33f165f6aa69b`  
		Last Modified: Thu, 23 Jul 2026 18:44:44 GMT  
		Size: 2.5 MB (2549271 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c63411ac30822a74d2d8d5b15467c8ec797b155bb5fc62c6f6429a8c2fac5120`  
		Last Modified: Thu, 23 Jul 2026 18:44:43 GMT  
		Size: 681.5 KB (681506 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f3c95338a8753e8b58ca22f33019088a3154c92f1e0520890b50e3d3ec5f3b8`  
		Last Modified: Thu, 23 Jul 2026 18:45:02 GMT  
		Size: 345.5 MB (345472194 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa462a8152c6c849b07e0e5bcde52283c82a8c152004008dd7a8b4b65813d36a`  
		Last Modified: Thu, 23 Jul 2026 18:44:45 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f9aa0e868ab0e2ef9e8515d6dcb5cfee7eb5460a28318e5d1171227947d5ea5`  
		Last Modified: Thu, 23 Jul 2026 18:44:45 GMT  
		Size: 553.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bf5a441e4cfddbac6778217bc3d4b46fcde8a738a37391e0d6cbaf8c3cf7d37`  
		Last Modified: Thu, 23 Jul 2026 18:44:47 GMT  
		Size: 593.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b0a6e88847abee5933204c1f69491c56187bda8681d795b9beeb7b920bb0d36`  
		Last Modified: Thu, 23 Jul 2026 18:44:47 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:17.0` - unknown; unknown

```console
$ docker pull odoo@sha256:3573e0bf7ea1317aaabb2099fb48a716e1eb0180b3680f995b1bdc354c8451ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.8 MB (40752721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f39c54d681308b64869f80bbd125260bd1fc2c604f53d23d9457d2ddff06b845`

```dockerfile
```

-	Layers:
	-	`sha256:af947d0dba7e7d28f154218f29f264dc4013b56b446add4e6b1608ef1430a8d6`  
		Last Modified: Thu, 23 Jul 2026 18:44:47 GMT  
		Size: 40.7 MB (40725254 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:79246b60455fdc28ac2fd93271d8771bca08d72a77ae838533ee7c79b51ca454`  
		Last Modified: Thu, 23 Jul 2026 18:44:43 GMT  
		Size: 27.5 KB (27467 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:17.0-20260803`

```console
$ docker pull odoo@sha256:eb37f58646a901dc7727cf448cae36daaefaba79de33b5058dab79aa4c04aefb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 0

## `odoo:18`

```console
$ docker pull odoo@sha256:66fae420378996f4c7e633b3fd47bfef0909170d75db897e3935e8ad1162db1a
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
$ docker pull odoo@sha256:5d4844fbcc12ce729da6de0e2d1c688b512627e514fdff9c513cbea4d4ff5aeb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **674.8 MB (674830637 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fc895a8cdb2afbaf750c7a229284ac44f1ab63494aba021a90a54198b97047a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Mon, 22 Jun 2026 21:24:17 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:24:18 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:24:18 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:24:20 GMT
ADD file:8c609c85109d07bf47cf268a175b3be8bbe34fc0c41d15d99b090d099f4dc837 in / 
# Mon, 22 Jun 2026 21:24:21 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 18:39:07 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Thu, 23 Jul 2026 18:39:07 GMT
SHELL [/bin/bash -xo pipefail -c]
# Thu, 23 Jul 2026 18:39:07 GMT
ENV LANG=en_US.UTF-8
# Thu, 23 Jul 2026 18:39:07 GMT
ARG TARGETARCH=amd64
# Thu, 23 Jul 2026 18:39:07 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Thu, 23 Jul 2026 18:39:16 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 23 Jul 2026 18:40:24 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 23 Jul 2026 18:40:24 GMT
ENV ODOO_VERSION=18.0
# Thu, 23 Jul 2026 18:40:24 GMT
ARG ODOO_RELEASE=20260723
# Thu, 23 Jul 2026 18:40:24 GMT
ARG ODOO_SHA=01d1e7c6da2caa8f69424efaebfcf0f901996c7b
# Thu, 23 Jul 2026 18:41:17 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260723 ODOO_SHA=01d1e7c6da2caa8f69424efaebfcf0f901996c7b
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Thu, 23 Jul 2026 18:41:18 GMT
COPY ./entrypoint.sh / # buildkit
# Thu, 23 Jul 2026 18:41:18 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Thu, 23 Jul 2026 18:41:18 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260723 ODOO_SHA=01d1e7c6da2caa8f69424efaebfcf0f901996c7b
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Thu, 23 Jul 2026 18:41:18 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Thu, 23 Jul 2026 18:41:18 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Thu, 23 Jul 2026 18:41:18 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Thu, 23 Jul 2026 18:41:18 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Thu, 23 Jul 2026 18:41:18 GMT
USER odoo
# Thu, 23 Jul 2026 18:41:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 23 Jul 2026 18:41:18 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:ca2678b20700c15185707964d9211b1a6406196114bf675f568b6025d37b3888`  
		Last Modified: Tue, 23 Jun 2026 01:34:01 GMT  
		Size: 29.7 MB (29735601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b59d67dbbed1a208bdd64d7ce480dc28066e9365beefab6782fd5986f309d0e7`  
		Last Modified: Thu, 23 Jul 2026 18:42:51 GMT  
		Size: 238.7 MB (238687883 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fb09be83688cec024d71b9ef8ba9a146b1d57ef33848dfd01ccc2bde8ca0bbe`  
		Last Modified: Thu, 23 Jul 2026 18:42:40 GMT  
		Size: 16.6 MB (16610550 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fe2da723329d0d089df10cd36e25835e74580963f24d45cc893c783e756aefa`  
		Last Modified: Thu, 23 Jul 2026 18:42:39 GMT  
		Size: 865.7 KB (865701 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de5cb38964cce07c76fd148d2bf69cb10e23bb374eadd0d94936999ed9f2502c`  
		Last Modified: Thu, 23 Jul 2026 18:42:54 GMT  
		Size: 388.9 MB (388928104 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37cd1f9b24222a11f3d49e89dbbbc137777b2b83567adf907cbce437e8c06f0b`  
		Last Modified: Thu, 23 Jul 2026 18:42:41 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecc31487196911f6d6ae77510e3b405614baff6dd42b8b62a3862cacd9580e7b`  
		Last Modified: Thu, 23 Jul 2026 18:42:42 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aee912f1bc167397f5d4733a8ee95e2d94d03f8cfb4aef128ee5b63713518c9d`  
		Last Modified: Thu, 23 Jul 2026 18:42:42 GMT  
		Size: 596.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c98491d9c1c52df977d00bcfd7811f16ab6fadbc2d00ff94d9150249a05e32eb`  
		Last Modified: Thu, 23 Jul 2026 18:42:43 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18` - unknown; unknown

```console
$ docker pull odoo@sha256:642b1ef7c5195a565e2bdddf2ed6bdea73a21d3ff6817eb075a09b420d292970
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.8 MB (43840958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0c9a783ee9fbb3f50c56a19154230f6858587d2614dd9506c6e3f9e64532ee3`

```dockerfile
```

-	Layers:
	-	`sha256:b6ad57cbca6b3783f54efab1393a9806c6a02f647cf67f39bfac819eddfd4d5c`  
		Last Modified: Thu, 23 Jul 2026 18:42:42 GMT  
		Size: 43.8 MB (43813762 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:de06075ce045517b6165828e6ef2e8cfa60aa08c3b991c012758c32281f6fbf0`  
		Last Modified: Thu, 23 Jul 2026 18:42:39 GMT  
		Size: 27.2 KB (27196 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:18` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:f9de6e2c787377e71b223b119364e81f6cead9cfdb1b8af5a038fe0733d89349
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **671.2 MB (671185414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0691ce05ead67aa46eadc29822205882602012cf35f14361013a57a3a8787bcc`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Mon, 22 Jun 2026 21:25:05 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:25:05 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:25:05 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:25:07 GMT
ADD file:cdc9a547b921f36a32310f732815bbee6c6e4f5bd768ab5d49cdc0aa1b9f4785 in / 
# Mon, 22 Jun 2026 21:25:07 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 18:38:51 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Thu, 23 Jul 2026 18:38:51 GMT
SHELL [/bin/bash -xo pipefail -c]
# Thu, 23 Jul 2026 18:38:51 GMT
ENV LANG=en_US.UTF-8
# Thu, 23 Jul 2026 18:38:51 GMT
ARG TARGETARCH=arm64
# Thu, 23 Jul 2026 18:38:51 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Thu, 23 Jul 2026 18:39:03 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 23 Jul 2026 18:40:13 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 23 Jul 2026 18:40:13 GMT
ENV ODOO_VERSION=18.0
# Thu, 23 Jul 2026 18:40:13 GMT
ARG ODOO_RELEASE=20260723
# Thu, 23 Jul 2026 18:40:13 GMT
ARG ODOO_SHA=01d1e7c6da2caa8f69424efaebfcf0f901996c7b
# Thu, 23 Jul 2026 18:41:12 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260723 ODOO_SHA=01d1e7c6da2caa8f69424efaebfcf0f901996c7b
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Thu, 23 Jul 2026 18:41:12 GMT
COPY ./entrypoint.sh / # buildkit
# Thu, 23 Jul 2026 18:41:12 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Thu, 23 Jul 2026 18:41:13 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260723 ODOO_SHA=01d1e7c6da2caa8f69424efaebfcf0f901996c7b
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Thu, 23 Jul 2026 18:41:13 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Thu, 23 Jul 2026 18:41:13 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Thu, 23 Jul 2026 18:41:13 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Thu, 23 Jul 2026 18:41:13 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Thu, 23 Jul 2026 18:41:13 GMT
USER odoo
# Thu, 23 Jul 2026 18:41:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 23 Jul 2026 18:41:13 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:4b987da45db4d6278590ab89840c7167ea397df222f3ee4cdb77c3e15694b1a9`  
		Last Modified: Tue, 23 Jun 2026 01:34:08 GMT  
		Size: 28.9 MB (28884180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80ac48eba03719f9d432fbb54f36200fa979dbd8abec7ba6239b94e343e96b7c`  
		Last Modified: Thu, 23 Jul 2026 18:42:59 GMT  
		Size: 236.1 MB (236101054 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:562d1163e36f7d5990679455ab647407549c24cefa463c551481095be1e52b0e`  
		Last Modified: Thu, 23 Jul 2026 18:42:47 GMT  
		Size: 16.5 MB (16549713 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4d29581763bdb5866ca0b003ba9f23dc003a2494f13e2f24c1dfaa479af5c67`  
		Last Modified: Thu, 23 Jul 2026 18:42:46 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44a6e451edf064cae45c2054d1a530a5b59388bb5d738c222e62ecff3f226365`  
		Last Modified: Thu, 23 Jul 2026 18:43:04 GMT  
		Size: 388.8 MB (388781915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da6e75794053bc0415b707731a0883252faa5b82206a4a9d8f9bee3c891b749b`  
		Last Modified: Thu, 23 Jul 2026 18:42:48 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fab781e0c14a9fe2269769ec417e1041f121a67891a725bb1ce44b6c56ae7b91`  
		Last Modified: Thu, 23 Jul 2026 18:42:49 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd818a6f87824a20dc13a653e3306b8a288f4f26b5300cb98fc475d711569fe3`  
		Last Modified: Thu, 23 Jul 2026 18:42:50 GMT  
		Size: 601.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9b11363fb202f22790b28d5498f25577b55ad9d8960e48131b51850aaacaf11`  
		Last Modified: Thu, 23 Jul 2026 18:42:50 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18` - unknown; unknown

```console
$ docker pull odoo@sha256:18c2eadaa88d4f5c37cde54eec18bcae4094990dab01a71e60346580bfe3bec2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.8 MB (43848383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3750c01548aefeae26461b62e6c4dba9c2e82964e614d4868d561bf177537731`

```dockerfile
```

-	Layers:
	-	`sha256:e508a1cb68bf230501e4889d8254542f6f2e43a474c555deb17de0c1efd27729`  
		Last Modified: Thu, 23 Jul 2026 18:42:50 GMT  
		Size: 43.8 MB (43821034 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ff283c6891ab9ebeb551b69eb48e1bbadf2dd1912067b557d0e02c6fc1106acb`  
		Last Modified: Thu, 23 Jul 2026 18:42:46 GMT  
		Size: 27.3 KB (27349 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:18` - linux; ppc64le

```console
$ docker pull odoo@sha256:cca9b712acf575c46a0494b7269aaf600bc460b1283bda4b9dd1e6c70b71241c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **691.2 MB (691166947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e11be9d1b1d909c11f81ee6a86ab9c0f953956e25497d28383cfaf432182f9e4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Mon, 22 Jun 2026 21:24:57 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:24:57 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:24:57 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:25:00 GMT
ADD file:80a608ac5245946ff88c571e9d9b1259a58a3a309e569fbe7ed52f07c2ed3b39 in / 
# Mon, 22 Jun 2026 21:25:01 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 18:38:46 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Thu, 23 Jul 2026 18:38:46 GMT
SHELL [/bin/bash -xo pipefail -c]
# Thu, 23 Jul 2026 18:38:46 GMT
ENV LANG=en_US.UTF-8
# Thu, 23 Jul 2026 18:38:46 GMT
ARG TARGETARCH=ppc64le
# Thu, 23 Jul 2026 18:38:46 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Thu, 23 Jul 2026 18:39:08 GMT
# ARGS: TARGETARCH=ppc64le
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 23 Jul 2026 18:43:22 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 23 Jul 2026 18:43:22 GMT
ENV ODOO_VERSION=18.0
# Thu, 23 Jul 2026 18:43:22 GMT
ARG ODOO_RELEASE=20260723
# Thu, 23 Jul 2026 18:43:22 GMT
ARG ODOO_SHA=01d1e7c6da2caa8f69424efaebfcf0f901996c7b
# Thu, 23 Jul 2026 18:45:56 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260723 ODOO_SHA=01d1e7c6da2caa8f69424efaebfcf0f901996c7b
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Thu, 23 Jul 2026 18:45:57 GMT
COPY ./entrypoint.sh / # buildkit
# Thu, 23 Jul 2026 18:46:00 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Thu, 23 Jul 2026 18:46:00 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260723 ODOO_SHA=01d1e7c6da2caa8f69424efaebfcf0f901996c7b
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Thu, 23 Jul 2026 18:46:00 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Thu, 23 Jul 2026 18:46:00 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Thu, 23 Jul 2026 18:46:00 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Thu, 23 Jul 2026 18:46:00 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Thu, 23 Jul 2026 18:46:00 GMT
USER odoo
# Thu, 23 Jul 2026 18:46:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 23 Jul 2026 18:46:00 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:54973426d6a3ff47babf11aed16ea13dd9377608c1d09a81758f109a18049199`  
		Last Modified: Tue, 23 Jun 2026 01:34:28 GMT  
		Size: 34.3 MB (34313476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67b15bd8a7f3a48a5ac70529afaa24563e8d01ff895679c9f45398f8614e90e6`  
		Last Modified: Thu, 23 Jul 2026 18:49:13 GMT  
		Size: 249.2 MB (249239779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfdf2336aa5596339147ac98fd4137e52d058f58f4477b395e68c8b25b30b0ec`  
		Last Modified: Thu, 23 Jul 2026 18:49:03 GMT  
		Size: 17.3 MB (17286695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55d17f8475d1d9caae7a4ae1f4844babf63d7af1ccca04e884559f84f12a2eb5`  
		Last Modified: Thu, 23 Jul 2026 18:49:02 GMT  
		Size: 866.8 KB (866792 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94dcbed26fdfb6fbe81594ad236c2c9af763cb0e5825cddb3a15dd0ec949494d`  
		Last Modified: Thu, 23 Jul 2026 18:49:16 GMT  
		Size: 389.5 MB (389457407 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4730ca8e2343abc2d65741af4b1f79f2c6a00b5e0d7b9ae318f6d55b93c37f09`  
		Last Modified: Thu, 23 Jul 2026 18:49:04 GMT  
		Size: 766.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:325e9afb4ea86469605f29f1b28499a8233e1d802aa94835f3e0a250a491a365`  
		Last Modified: Thu, 23 Jul 2026 18:49:05 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd3cc267077e016034f4f52674df5b5f64db79cc44c428bae214e5051c30c977`  
		Last Modified: Thu, 23 Jul 2026 18:49:05 GMT  
		Size: 596.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab219a5fc458ab439d5d7dc4060e06b2ba28ab2ab82a43a54b3f9e59b537799c`  
		Last Modified: Thu, 23 Jul 2026 18:49:06 GMT  
		Size: 880.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18` - unknown; unknown

```console
$ docker pull odoo@sha256:ccd6638c529b3eb12173e371768974e9dd3d0852a113d9a2fdd1b2f51e7589f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.8 MB (43849379 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06410f563c38830ac51b0757a86dfabbefea790c93da5d7a8db1381c3123ac04`

```dockerfile
```

-	Layers:
	-	`sha256:ee6a2eb3c0f65f48af3bd5a2fa67899c9a6a68b536e3af3a110f9343a4a5d9be`  
		Last Modified: Thu, 23 Jul 2026 18:49:05 GMT  
		Size: 43.8 MB (43822126 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ad95b49aed3c6e70e0d53cbe2e17fec2ed7170735bfdaf0efa9c2899c9545f18`  
		Last Modified: Thu, 23 Jul 2026 18:49:01 GMT  
		Size: 27.3 KB (27253 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:18.0`

```console
$ docker pull odoo@sha256:66fae420378996f4c7e633b3fd47bfef0909170d75db897e3935e8ad1162db1a
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
$ docker pull odoo@sha256:5d4844fbcc12ce729da6de0e2d1c688b512627e514fdff9c513cbea4d4ff5aeb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **674.8 MB (674830637 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fc895a8cdb2afbaf750c7a229284ac44f1ab63494aba021a90a54198b97047a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Mon, 22 Jun 2026 21:24:17 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:24:18 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:24:18 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:24:20 GMT
ADD file:8c609c85109d07bf47cf268a175b3be8bbe34fc0c41d15d99b090d099f4dc837 in / 
# Mon, 22 Jun 2026 21:24:21 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 18:39:07 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Thu, 23 Jul 2026 18:39:07 GMT
SHELL [/bin/bash -xo pipefail -c]
# Thu, 23 Jul 2026 18:39:07 GMT
ENV LANG=en_US.UTF-8
# Thu, 23 Jul 2026 18:39:07 GMT
ARG TARGETARCH=amd64
# Thu, 23 Jul 2026 18:39:07 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Thu, 23 Jul 2026 18:39:16 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 23 Jul 2026 18:40:24 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 23 Jul 2026 18:40:24 GMT
ENV ODOO_VERSION=18.0
# Thu, 23 Jul 2026 18:40:24 GMT
ARG ODOO_RELEASE=20260723
# Thu, 23 Jul 2026 18:40:24 GMT
ARG ODOO_SHA=01d1e7c6da2caa8f69424efaebfcf0f901996c7b
# Thu, 23 Jul 2026 18:41:17 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260723 ODOO_SHA=01d1e7c6da2caa8f69424efaebfcf0f901996c7b
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Thu, 23 Jul 2026 18:41:18 GMT
COPY ./entrypoint.sh / # buildkit
# Thu, 23 Jul 2026 18:41:18 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Thu, 23 Jul 2026 18:41:18 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260723 ODOO_SHA=01d1e7c6da2caa8f69424efaebfcf0f901996c7b
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Thu, 23 Jul 2026 18:41:18 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Thu, 23 Jul 2026 18:41:18 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Thu, 23 Jul 2026 18:41:18 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Thu, 23 Jul 2026 18:41:18 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Thu, 23 Jul 2026 18:41:18 GMT
USER odoo
# Thu, 23 Jul 2026 18:41:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 23 Jul 2026 18:41:18 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:ca2678b20700c15185707964d9211b1a6406196114bf675f568b6025d37b3888`  
		Last Modified: Tue, 23 Jun 2026 01:34:01 GMT  
		Size: 29.7 MB (29735601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b59d67dbbed1a208bdd64d7ce480dc28066e9365beefab6782fd5986f309d0e7`  
		Last Modified: Thu, 23 Jul 2026 18:42:51 GMT  
		Size: 238.7 MB (238687883 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fb09be83688cec024d71b9ef8ba9a146b1d57ef33848dfd01ccc2bde8ca0bbe`  
		Last Modified: Thu, 23 Jul 2026 18:42:40 GMT  
		Size: 16.6 MB (16610550 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fe2da723329d0d089df10cd36e25835e74580963f24d45cc893c783e756aefa`  
		Last Modified: Thu, 23 Jul 2026 18:42:39 GMT  
		Size: 865.7 KB (865701 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de5cb38964cce07c76fd148d2bf69cb10e23bb374eadd0d94936999ed9f2502c`  
		Last Modified: Thu, 23 Jul 2026 18:42:54 GMT  
		Size: 388.9 MB (388928104 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37cd1f9b24222a11f3d49e89dbbbc137777b2b83567adf907cbce437e8c06f0b`  
		Last Modified: Thu, 23 Jul 2026 18:42:41 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecc31487196911f6d6ae77510e3b405614baff6dd42b8b62a3862cacd9580e7b`  
		Last Modified: Thu, 23 Jul 2026 18:42:42 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aee912f1bc167397f5d4733a8ee95e2d94d03f8cfb4aef128ee5b63713518c9d`  
		Last Modified: Thu, 23 Jul 2026 18:42:42 GMT  
		Size: 596.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c98491d9c1c52df977d00bcfd7811f16ab6fadbc2d00ff94d9150249a05e32eb`  
		Last Modified: Thu, 23 Jul 2026 18:42:43 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18.0` - unknown; unknown

```console
$ docker pull odoo@sha256:642b1ef7c5195a565e2bdddf2ed6bdea73a21d3ff6817eb075a09b420d292970
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.8 MB (43840958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0c9a783ee9fbb3f50c56a19154230f6858587d2614dd9506c6e3f9e64532ee3`

```dockerfile
```

-	Layers:
	-	`sha256:b6ad57cbca6b3783f54efab1393a9806c6a02f647cf67f39bfac819eddfd4d5c`  
		Last Modified: Thu, 23 Jul 2026 18:42:42 GMT  
		Size: 43.8 MB (43813762 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:de06075ce045517b6165828e6ef2e8cfa60aa08c3b991c012758c32281f6fbf0`  
		Last Modified: Thu, 23 Jul 2026 18:42:39 GMT  
		Size: 27.2 KB (27196 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:18.0` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:f9de6e2c787377e71b223b119364e81f6cead9cfdb1b8af5a038fe0733d89349
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **671.2 MB (671185414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0691ce05ead67aa46eadc29822205882602012cf35f14361013a57a3a8787bcc`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Mon, 22 Jun 2026 21:25:05 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:25:05 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:25:05 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:25:07 GMT
ADD file:cdc9a547b921f36a32310f732815bbee6c6e4f5bd768ab5d49cdc0aa1b9f4785 in / 
# Mon, 22 Jun 2026 21:25:07 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 18:38:51 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Thu, 23 Jul 2026 18:38:51 GMT
SHELL [/bin/bash -xo pipefail -c]
# Thu, 23 Jul 2026 18:38:51 GMT
ENV LANG=en_US.UTF-8
# Thu, 23 Jul 2026 18:38:51 GMT
ARG TARGETARCH=arm64
# Thu, 23 Jul 2026 18:38:51 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Thu, 23 Jul 2026 18:39:03 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 23 Jul 2026 18:40:13 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 23 Jul 2026 18:40:13 GMT
ENV ODOO_VERSION=18.0
# Thu, 23 Jul 2026 18:40:13 GMT
ARG ODOO_RELEASE=20260723
# Thu, 23 Jul 2026 18:40:13 GMT
ARG ODOO_SHA=01d1e7c6da2caa8f69424efaebfcf0f901996c7b
# Thu, 23 Jul 2026 18:41:12 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260723 ODOO_SHA=01d1e7c6da2caa8f69424efaebfcf0f901996c7b
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Thu, 23 Jul 2026 18:41:12 GMT
COPY ./entrypoint.sh / # buildkit
# Thu, 23 Jul 2026 18:41:12 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Thu, 23 Jul 2026 18:41:13 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260723 ODOO_SHA=01d1e7c6da2caa8f69424efaebfcf0f901996c7b
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Thu, 23 Jul 2026 18:41:13 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Thu, 23 Jul 2026 18:41:13 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Thu, 23 Jul 2026 18:41:13 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Thu, 23 Jul 2026 18:41:13 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Thu, 23 Jul 2026 18:41:13 GMT
USER odoo
# Thu, 23 Jul 2026 18:41:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 23 Jul 2026 18:41:13 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:4b987da45db4d6278590ab89840c7167ea397df222f3ee4cdb77c3e15694b1a9`  
		Last Modified: Tue, 23 Jun 2026 01:34:08 GMT  
		Size: 28.9 MB (28884180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80ac48eba03719f9d432fbb54f36200fa979dbd8abec7ba6239b94e343e96b7c`  
		Last Modified: Thu, 23 Jul 2026 18:42:59 GMT  
		Size: 236.1 MB (236101054 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:562d1163e36f7d5990679455ab647407549c24cefa463c551481095be1e52b0e`  
		Last Modified: Thu, 23 Jul 2026 18:42:47 GMT  
		Size: 16.5 MB (16549713 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4d29581763bdb5866ca0b003ba9f23dc003a2494f13e2f24c1dfaa479af5c67`  
		Last Modified: Thu, 23 Jul 2026 18:42:46 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44a6e451edf064cae45c2054d1a530a5b59388bb5d738c222e62ecff3f226365`  
		Last Modified: Thu, 23 Jul 2026 18:43:04 GMT  
		Size: 388.8 MB (388781915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da6e75794053bc0415b707731a0883252faa5b82206a4a9d8f9bee3c891b749b`  
		Last Modified: Thu, 23 Jul 2026 18:42:48 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fab781e0c14a9fe2269769ec417e1041f121a67891a725bb1ce44b6c56ae7b91`  
		Last Modified: Thu, 23 Jul 2026 18:42:49 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd818a6f87824a20dc13a653e3306b8a288f4f26b5300cb98fc475d711569fe3`  
		Last Modified: Thu, 23 Jul 2026 18:42:50 GMT  
		Size: 601.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9b11363fb202f22790b28d5498f25577b55ad9d8960e48131b51850aaacaf11`  
		Last Modified: Thu, 23 Jul 2026 18:42:50 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18.0` - unknown; unknown

```console
$ docker pull odoo@sha256:18c2eadaa88d4f5c37cde54eec18bcae4094990dab01a71e60346580bfe3bec2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.8 MB (43848383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3750c01548aefeae26461b62e6c4dba9c2e82964e614d4868d561bf177537731`

```dockerfile
```

-	Layers:
	-	`sha256:e508a1cb68bf230501e4889d8254542f6f2e43a474c555deb17de0c1efd27729`  
		Last Modified: Thu, 23 Jul 2026 18:42:50 GMT  
		Size: 43.8 MB (43821034 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ff283c6891ab9ebeb551b69eb48e1bbadf2dd1912067b557d0e02c6fc1106acb`  
		Last Modified: Thu, 23 Jul 2026 18:42:46 GMT  
		Size: 27.3 KB (27349 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:18.0` - linux; ppc64le

```console
$ docker pull odoo@sha256:cca9b712acf575c46a0494b7269aaf600bc460b1283bda4b9dd1e6c70b71241c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **691.2 MB (691166947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e11be9d1b1d909c11f81ee6a86ab9c0f953956e25497d28383cfaf432182f9e4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Mon, 22 Jun 2026 21:24:57 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:24:57 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:24:57 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:25:00 GMT
ADD file:80a608ac5245946ff88c571e9d9b1259a58a3a309e569fbe7ed52f07c2ed3b39 in / 
# Mon, 22 Jun 2026 21:25:01 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 18:38:46 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Thu, 23 Jul 2026 18:38:46 GMT
SHELL [/bin/bash -xo pipefail -c]
# Thu, 23 Jul 2026 18:38:46 GMT
ENV LANG=en_US.UTF-8
# Thu, 23 Jul 2026 18:38:46 GMT
ARG TARGETARCH=ppc64le
# Thu, 23 Jul 2026 18:38:46 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Thu, 23 Jul 2026 18:39:08 GMT
# ARGS: TARGETARCH=ppc64le
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 23 Jul 2026 18:43:22 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 23 Jul 2026 18:43:22 GMT
ENV ODOO_VERSION=18.0
# Thu, 23 Jul 2026 18:43:22 GMT
ARG ODOO_RELEASE=20260723
# Thu, 23 Jul 2026 18:43:22 GMT
ARG ODOO_SHA=01d1e7c6da2caa8f69424efaebfcf0f901996c7b
# Thu, 23 Jul 2026 18:45:56 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260723 ODOO_SHA=01d1e7c6da2caa8f69424efaebfcf0f901996c7b
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Thu, 23 Jul 2026 18:45:57 GMT
COPY ./entrypoint.sh / # buildkit
# Thu, 23 Jul 2026 18:46:00 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Thu, 23 Jul 2026 18:46:00 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260723 ODOO_SHA=01d1e7c6da2caa8f69424efaebfcf0f901996c7b
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Thu, 23 Jul 2026 18:46:00 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Thu, 23 Jul 2026 18:46:00 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Thu, 23 Jul 2026 18:46:00 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Thu, 23 Jul 2026 18:46:00 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Thu, 23 Jul 2026 18:46:00 GMT
USER odoo
# Thu, 23 Jul 2026 18:46:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 23 Jul 2026 18:46:00 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:54973426d6a3ff47babf11aed16ea13dd9377608c1d09a81758f109a18049199`  
		Last Modified: Tue, 23 Jun 2026 01:34:28 GMT  
		Size: 34.3 MB (34313476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67b15bd8a7f3a48a5ac70529afaa24563e8d01ff895679c9f45398f8614e90e6`  
		Last Modified: Thu, 23 Jul 2026 18:49:13 GMT  
		Size: 249.2 MB (249239779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfdf2336aa5596339147ac98fd4137e52d058f58f4477b395e68c8b25b30b0ec`  
		Last Modified: Thu, 23 Jul 2026 18:49:03 GMT  
		Size: 17.3 MB (17286695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55d17f8475d1d9caae7a4ae1f4844babf63d7af1ccca04e884559f84f12a2eb5`  
		Last Modified: Thu, 23 Jul 2026 18:49:02 GMT  
		Size: 866.8 KB (866792 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94dcbed26fdfb6fbe81594ad236c2c9af763cb0e5825cddb3a15dd0ec949494d`  
		Last Modified: Thu, 23 Jul 2026 18:49:16 GMT  
		Size: 389.5 MB (389457407 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4730ca8e2343abc2d65741af4b1f79f2c6a00b5e0d7b9ae318f6d55b93c37f09`  
		Last Modified: Thu, 23 Jul 2026 18:49:04 GMT  
		Size: 766.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:325e9afb4ea86469605f29f1b28499a8233e1d802aa94835f3e0a250a491a365`  
		Last Modified: Thu, 23 Jul 2026 18:49:05 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd3cc267077e016034f4f52674df5b5f64db79cc44c428bae214e5051c30c977`  
		Last Modified: Thu, 23 Jul 2026 18:49:05 GMT  
		Size: 596.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab219a5fc458ab439d5d7dc4060e06b2ba28ab2ab82a43a54b3f9e59b537799c`  
		Last Modified: Thu, 23 Jul 2026 18:49:06 GMT  
		Size: 880.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18.0` - unknown; unknown

```console
$ docker pull odoo@sha256:ccd6638c529b3eb12173e371768974e9dd3d0852a113d9a2fdd1b2f51e7589f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.8 MB (43849379 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06410f563c38830ac51b0757a86dfabbefea790c93da5d7a8db1381c3123ac04`

```dockerfile
```

-	Layers:
	-	`sha256:ee6a2eb3c0f65f48af3bd5a2fa67899c9a6a68b536e3af3a110f9343a4a5d9be`  
		Last Modified: Thu, 23 Jul 2026 18:49:05 GMT  
		Size: 43.8 MB (43822126 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ad95b49aed3c6e70e0d53cbe2e17fec2ed7170735bfdaf0efa9c2899c9545f18`  
		Last Modified: Thu, 23 Jul 2026 18:49:01 GMT  
		Size: 27.3 KB (27253 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:18.0-20260803`

```console
$ docker pull odoo@sha256:eb37f58646a901dc7727cf448cae36daaefaba79de33b5058dab79aa4c04aefb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 0

## `odoo:19`

```console
$ docker pull odoo@sha256:e415f9924395e7521245813135112f264b9222bcde3b1d3c2ee9ff073081540a
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
$ docker pull odoo@sha256:27cd70587642d36fca6b929decbe43310f2d7809368dbd3bdfe00a1bffc8c975
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **696.3 MB (696331125 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48dd8b690d6b5fe8f6a82731ce290db12470f83f39911a1806157a4220de9451`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Mon, 22 Jun 2026 21:24:17 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:24:18 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:24:18 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:24:20 GMT
ADD file:8c609c85109d07bf47cf268a175b3be8bbe34fc0c41d15d99b090d099f4dc837 in / 
# Mon, 22 Jun 2026 21:24:21 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 18:37:51 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Thu, 23 Jul 2026 18:37:51 GMT
SHELL [/bin/bash -xo pipefail -c]
# Thu, 23 Jul 2026 18:37:51 GMT
ENV LANG=en_US.UTF-8
# Thu, 23 Jul 2026 18:37:51 GMT
ARG TARGETARCH=amd64
# Thu, 23 Jul 2026 18:37:51 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Thu, 23 Jul 2026 18:38:03 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 23 Jul 2026 18:39:08 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 23 Jul 2026 18:39:08 GMT
ENV ODOO_VERSION=19.0
# Thu, 23 Jul 2026 18:39:08 GMT
ARG ODOO_RELEASE=20260723
# Thu, 23 Jul 2026 18:39:08 GMT
ARG ODOO_SHA=b1da9c218d92fb4fcd85baae79b60ddcb4bf2118
# Thu, 23 Jul 2026 18:40:07 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260723 ODOO_SHA=b1da9c218d92fb4fcd85baae79b60ddcb4bf2118
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Thu, 23 Jul 2026 18:40:07 GMT
COPY ./entrypoint.sh / # buildkit
# Thu, 23 Jul 2026 18:40:07 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Thu, 23 Jul 2026 18:40:07 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260723 ODOO_SHA=b1da9c218d92fb4fcd85baae79b60ddcb4bf2118
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Thu, 23 Jul 2026 18:40:07 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Thu, 23 Jul 2026 18:40:07 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Thu, 23 Jul 2026 18:40:07 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Thu, 23 Jul 2026 18:40:07 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Thu, 23 Jul 2026 18:40:07 GMT
USER odoo
# Thu, 23 Jul 2026 18:40:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 23 Jul 2026 18:40:07 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:ca2678b20700c15185707964d9211b1a6406196114bf675f568b6025d37b3888`  
		Last Modified: Tue, 23 Jun 2026 01:34:01 GMT  
		Size: 29.7 MB (29735601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc7320d3e16c68681eb89f27b672e938d38cb231bfe42c498556bffb6de4160f`  
		Last Modified: Thu, 23 Jul 2026 18:41:51 GMT  
		Size: 238.7 MB (238687572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9cdfb8d0a7e95efa05a56b123e82ade5f72092759a00bc54fa9c42702d68bbe`  
		Last Modified: Thu, 23 Jul 2026 18:41:40 GMT  
		Size: 16.6 MB (16610470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eaf2ec0c10ee87a0e8883926a15d25d0ea2d01c87651be8ed9cfd05589554e8d`  
		Last Modified: Thu, 23 Jul 2026 18:41:39 GMT  
		Size: 865.7 KB (865684 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5ccb7329693729128a5ff9eba47067aecc2d74315b6685f8d4024c527a10175`  
		Last Modified: Thu, 23 Jul 2026 18:41:55 GMT  
		Size: 410.4 MB (410429048 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7d65a2a7a7fae482928d0c701f60013e23298ffd49f83ca62045484335969dd`  
		Last Modified: Thu, 23 Jul 2026 18:41:40 GMT  
		Size: 717.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:036503ac0436aca29c49b62f2394587002d98088a8397dbacf8f364437b248aa`  
		Last Modified: Thu, 23 Jul 2026 18:41:42 GMT  
		Size: 558.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f512e2c33336f181c886b1cb4c8684e053376e5c0b84214d91f88ae6df5f0606`  
		Last Modified: Thu, 23 Jul 2026 18:41:42 GMT  
		Size: 598.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:697215fd50e26d1333b4e5f0c6c22da54c46107d3809f12491d72c8b362931c6`  
		Last Modified: Thu, 23 Jul 2026 18:41:44 GMT  
		Size: 877.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19` - unknown; unknown

```console
$ docker pull odoo@sha256:79c0ac50c698b55904fef817e0d4bbbb313ebbcf2d1e816b6ff9299765dfec69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.3 MB (52278378 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ca8b2b31007988f5561d55b62e2c2203ef337e4e8bd2397bd0704c2e5d5c99e`

```dockerfile
```

-	Layers:
	-	`sha256:c8cc76a59d5314385c4476029957ecb3358e75961347d8dff51e8a0fe1ea4931`  
		Last Modified: Thu, 23 Jul 2026 18:41:43 GMT  
		Size: 52.3 MB (52250887 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:778c7b647a8b6b329beaf6c28d432ab8e770ff8fa2621b4f320d25eddc19e1c4`  
		Last Modified: Thu, 23 Jul 2026 18:41:39 GMT  
		Size: 27.5 KB (27491 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:19` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:641f46b275ee9afee45f54321cb3db923f866aa317a4cdcca803d4d420e9aee8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **692.7 MB (692659942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00f224f182eed9e014914be3854e74892f230674a40fac512658f923bef99d4a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Mon, 22 Jun 2026 21:25:05 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:25:05 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:25:05 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:25:07 GMT
ADD file:cdc9a547b921f36a32310f732815bbee6c6e4f5bd768ab5d49cdc0aa1b9f4785 in / 
# Mon, 22 Jun 2026 21:25:07 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 18:37:45 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Thu, 23 Jul 2026 18:37:45 GMT
SHELL [/bin/bash -xo pipefail -c]
# Thu, 23 Jul 2026 18:37:45 GMT
ENV LANG=en_US.UTF-8
# Thu, 23 Jul 2026 18:37:45 GMT
ARG TARGETARCH=arm64
# Thu, 23 Jul 2026 18:37:45 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Thu, 23 Jul 2026 18:37:57 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 23 Jul 2026 18:39:09 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 23 Jul 2026 18:39:09 GMT
ENV ODOO_VERSION=19.0
# Thu, 23 Jul 2026 18:39:09 GMT
ARG ODOO_RELEASE=20260723
# Thu, 23 Jul 2026 18:39:09 GMT
ARG ODOO_SHA=b1da9c218d92fb4fcd85baae79b60ddcb4bf2118
# Thu, 23 Jul 2026 18:40:25 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260723 ODOO_SHA=b1da9c218d92fb4fcd85baae79b60ddcb4bf2118
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Thu, 23 Jul 2026 18:40:25 GMT
COPY ./entrypoint.sh / # buildkit
# Thu, 23 Jul 2026 18:40:25 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Thu, 23 Jul 2026 18:40:25 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260723 ODOO_SHA=b1da9c218d92fb4fcd85baae79b60ddcb4bf2118
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Thu, 23 Jul 2026 18:40:25 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Thu, 23 Jul 2026 18:40:25 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Thu, 23 Jul 2026 18:40:25 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Thu, 23 Jul 2026 18:40:25 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Thu, 23 Jul 2026 18:40:25 GMT
USER odoo
# Thu, 23 Jul 2026 18:40:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 23 Jul 2026 18:40:25 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:4b987da45db4d6278590ab89840c7167ea397df222f3ee4cdb77c3e15694b1a9`  
		Last Modified: Tue, 23 Jun 2026 01:34:08 GMT  
		Size: 28.9 MB (28884180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49a28eadcbc9ca34fbacd526391e6266275a4ce31d0ea1838e6cd050cff22e95`  
		Last Modified: Thu, 23 Jul 2026 18:42:34 GMT  
		Size: 236.1 MB (236103989 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fed1b9975ca4cc1e798bb289661a861dd29dda1acfef5420cf629d598e29e4d`  
		Last Modified: Thu, 23 Jul 2026 18:42:26 GMT  
		Size: 16.5 MB (16549659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dce92467d358ff1f50fb5051af85bce1289661e8c1d7673a98102347a44e35b8`  
		Last Modified: Thu, 23 Jul 2026 18:42:25 GMT  
		Size: 865.8 KB (865847 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65469913f41aee70c16317d619207cdadc393085951489990474e12b858cdfeb`  
		Last Modified: Thu, 23 Jul 2026 18:42:37 GMT  
		Size: 410.3 MB (410253515 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6dd9ddd2507ba4ea52acffd0fab098fb7b670c14e5c0daa92db2b65fe4368a09`  
		Last Modified: Thu, 23 Jul 2026 18:42:26 GMT  
		Size: 718.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fcc6e128376ff0627229eebaaf0df55ca71b2e9478dd712492cfd041c3ad933`  
		Last Modified: Thu, 23 Jul 2026 18:42:28 GMT  
		Size: 557.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04baf7646a0eb1dcfed0debc1f963233c52bb057d8124486bfbf9cf318b03374`  
		Last Modified: Thu, 23 Jul 2026 18:42:28 GMT  
		Size: 597.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc1db0d3827907f650ef05764fc63ed80e1957600f0f5e7ba23d278381c9eb84`  
		Last Modified: Thu, 23 Jul 2026 18:42:29 GMT  
		Size: 880.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19` - unknown; unknown

```console
$ docker pull odoo@sha256:59d636aaa6c505a1b9e67d0b89beb03197a023e9864a908714b782339d574048
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.3 MB (52285826 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16c22339a9efb46f5c56b8001685ed00d2f0a885c46b460033ff48ec0a64f40b`

```dockerfile
```

-	Layers:
	-	`sha256:0201506d7ba31ed2b3362b59815d90a9e7227e55c36319d3796c1fc02990c725`  
		Last Modified: Thu, 23 Jul 2026 18:42:28 GMT  
		Size: 52.3 MB (52258171 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:18885634bbafe900a65e48947cadce0056b200e4108aadbf5ec29e9ba3ad7f0e`  
		Last Modified: Thu, 23 Jul 2026 18:42:25 GMT  
		Size: 27.7 KB (27655 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:19` - linux; ppc64le

```console
$ docker pull odoo@sha256:f32e2b55666c66a1b4ded7100d456e5f7c63a76ce93db59d3bd15251d1fad89e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **712.7 MB (712669557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94b4380b46e880b2a894c6991b19336d409b6698c4004a58e7daba1ce2bd8d5a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Mon, 22 Jun 2026 21:24:57 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:24:57 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:24:57 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:25:00 GMT
ADD file:80a608ac5245946ff88c571e9d9b1259a58a3a309e569fbe7ed52f07c2ed3b39 in / 
# Mon, 22 Jun 2026 21:25:01 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 18:38:46 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Thu, 23 Jul 2026 18:38:46 GMT
SHELL [/bin/bash -xo pipefail -c]
# Thu, 23 Jul 2026 18:38:46 GMT
ENV LANG=en_US.UTF-8
# Thu, 23 Jul 2026 18:38:46 GMT
ARG TARGETARCH=ppc64le
# Thu, 23 Jul 2026 18:38:46 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Thu, 23 Jul 2026 18:39:08 GMT
# ARGS: TARGETARCH=ppc64le
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 23 Jul 2026 18:43:22 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 23 Jul 2026 18:43:22 GMT
ENV ODOO_VERSION=19.0
# Thu, 23 Jul 2026 18:43:22 GMT
ARG ODOO_RELEASE=20260723
# Thu, 23 Jul 2026 18:43:22 GMT
ARG ODOO_SHA=b1da9c218d92fb4fcd85baae79b60ddcb4bf2118
# Thu, 23 Jul 2026 18:46:12 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260723 ODOO_SHA=b1da9c218d92fb4fcd85baae79b60ddcb4bf2118
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Thu, 23 Jul 2026 18:46:13 GMT
COPY ./entrypoint.sh / # buildkit
# Thu, 23 Jul 2026 18:46:14 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Thu, 23 Jul 2026 18:46:14 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260723 ODOO_SHA=b1da9c218d92fb4fcd85baae79b60ddcb4bf2118
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Thu, 23 Jul 2026 18:46:14 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Thu, 23 Jul 2026 18:46:14 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Thu, 23 Jul 2026 18:46:14 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Thu, 23 Jul 2026 18:46:14 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Thu, 23 Jul 2026 18:46:14 GMT
USER odoo
# Thu, 23 Jul 2026 18:46:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 23 Jul 2026 18:46:14 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:54973426d6a3ff47babf11aed16ea13dd9377608c1d09a81758f109a18049199`  
		Last Modified: Tue, 23 Jun 2026 01:34:28 GMT  
		Size: 34.3 MB (34313476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67b15bd8a7f3a48a5ac70529afaa24563e8d01ff895679c9f45398f8614e90e6`  
		Last Modified: Thu, 23 Jul 2026 18:49:13 GMT  
		Size: 249.2 MB (249239779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfdf2336aa5596339147ac98fd4137e52d058f58f4477b395e68c8b25b30b0ec`  
		Last Modified: Thu, 23 Jul 2026 18:49:03 GMT  
		Size: 17.3 MB (17286695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55d17f8475d1d9caae7a4ae1f4844babf63d7af1ccca04e884559f84f12a2eb5`  
		Last Modified: Thu, 23 Jul 2026 18:49:02 GMT  
		Size: 866.8 KB (866792 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75f1d8ea61c23d8e5a38a87261d53d70d005496409326d84374dfa918552a707`  
		Last Modified: Thu, 23 Jul 2026 18:50:15 GMT  
		Size: 411.0 MB (410960066 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e61d573502156a2e95406ce633c7128bcddfef0a210022bdcf728401efc77c61`  
		Last Modified: Thu, 23 Jul 2026 18:50:05 GMT  
		Size: 717.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f26c3bfea7b412f2b286859fa2f19a5c667015b76f38633a3b76c36afbc6377`  
		Last Modified: Thu, 23 Jul 2026 18:50:05 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb0183836dbec54f5686a928b532d01f1bce5c6a9fd5806889fd1106b3b4c49a`  
		Last Modified: Thu, 23 Jul 2026 18:50:05 GMT  
		Size: 597.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6762d8d26c6771331abd94d12687f25fbafb75ddb71567be51689d93fd5971a4`  
		Last Modified: Thu, 23 Jul 2026 18:50:07 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19` - unknown; unknown

```console
$ docker pull odoo@sha256:0576dc40145aac8c5673db917773c980e0af9931c12d344ce5e0697fbc985905
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.3 MB (52286810 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41a173ae0cd404e2cde9cb76bec6ebbe588acc9b389fce9c9d931c8aedb604ce`

```dockerfile
```

-	Layers:
	-	`sha256:64a7b4bcee8db3375c02e4e799ab98fde47c32872341586e9ab285a44b4f05f9`  
		Last Modified: Thu, 23 Jul 2026 18:50:08 GMT  
		Size: 52.3 MB (52259257 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ac8018c8620d00a9639cb49acc8bf1adffe3fde6d1ac0a32df566ad154283781`  
		Last Modified: Thu, 23 Jul 2026 18:50:05 GMT  
		Size: 27.6 KB (27553 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:19.0`

```console
$ docker pull odoo@sha256:e415f9924395e7521245813135112f264b9222bcde3b1d3c2ee9ff073081540a
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
$ docker pull odoo@sha256:27cd70587642d36fca6b929decbe43310f2d7809368dbd3bdfe00a1bffc8c975
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **696.3 MB (696331125 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48dd8b690d6b5fe8f6a82731ce290db12470f83f39911a1806157a4220de9451`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Mon, 22 Jun 2026 21:24:17 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:24:18 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:24:18 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:24:20 GMT
ADD file:8c609c85109d07bf47cf268a175b3be8bbe34fc0c41d15d99b090d099f4dc837 in / 
# Mon, 22 Jun 2026 21:24:21 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 18:37:51 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Thu, 23 Jul 2026 18:37:51 GMT
SHELL [/bin/bash -xo pipefail -c]
# Thu, 23 Jul 2026 18:37:51 GMT
ENV LANG=en_US.UTF-8
# Thu, 23 Jul 2026 18:37:51 GMT
ARG TARGETARCH=amd64
# Thu, 23 Jul 2026 18:37:51 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Thu, 23 Jul 2026 18:38:03 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 23 Jul 2026 18:39:08 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 23 Jul 2026 18:39:08 GMT
ENV ODOO_VERSION=19.0
# Thu, 23 Jul 2026 18:39:08 GMT
ARG ODOO_RELEASE=20260723
# Thu, 23 Jul 2026 18:39:08 GMT
ARG ODOO_SHA=b1da9c218d92fb4fcd85baae79b60ddcb4bf2118
# Thu, 23 Jul 2026 18:40:07 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260723 ODOO_SHA=b1da9c218d92fb4fcd85baae79b60ddcb4bf2118
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Thu, 23 Jul 2026 18:40:07 GMT
COPY ./entrypoint.sh / # buildkit
# Thu, 23 Jul 2026 18:40:07 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Thu, 23 Jul 2026 18:40:07 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260723 ODOO_SHA=b1da9c218d92fb4fcd85baae79b60ddcb4bf2118
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Thu, 23 Jul 2026 18:40:07 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Thu, 23 Jul 2026 18:40:07 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Thu, 23 Jul 2026 18:40:07 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Thu, 23 Jul 2026 18:40:07 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Thu, 23 Jul 2026 18:40:07 GMT
USER odoo
# Thu, 23 Jul 2026 18:40:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 23 Jul 2026 18:40:07 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:ca2678b20700c15185707964d9211b1a6406196114bf675f568b6025d37b3888`  
		Last Modified: Tue, 23 Jun 2026 01:34:01 GMT  
		Size: 29.7 MB (29735601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc7320d3e16c68681eb89f27b672e938d38cb231bfe42c498556bffb6de4160f`  
		Last Modified: Thu, 23 Jul 2026 18:41:51 GMT  
		Size: 238.7 MB (238687572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9cdfb8d0a7e95efa05a56b123e82ade5f72092759a00bc54fa9c42702d68bbe`  
		Last Modified: Thu, 23 Jul 2026 18:41:40 GMT  
		Size: 16.6 MB (16610470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eaf2ec0c10ee87a0e8883926a15d25d0ea2d01c87651be8ed9cfd05589554e8d`  
		Last Modified: Thu, 23 Jul 2026 18:41:39 GMT  
		Size: 865.7 KB (865684 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5ccb7329693729128a5ff9eba47067aecc2d74315b6685f8d4024c527a10175`  
		Last Modified: Thu, 23 Jul 2026 18:41:55 GMT  
		Size: 410.4 MB (410429048 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7d65a2a7a7fae482928d0c701f60013e23298ffd49f83ca62045484335969dd`  
		Last Modified: Thu, 23 Jul 2026 18:41:40 GMT  
		Size: 717.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:036503ac0436aca29c49b62f2394587002d98088a8397dbacf8f364437b248aa`  
		Last Modified: Thu, 23 Jul 2026 18:41:42 GMT  
		Size: 558.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f512e2c33336f181c886b1cb4c8684e053376e5c0b84214d91f88ae6df5f0606`  
		Last Modified: Thu, 23 Jul 2026 18:41:42 GMT  
		Size: 598.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:697215fd50e26d1333b4e5f0c6c22da54c46107d3809f12491d72c8b362931c6`  
		Last Modified: Thu, 23 Jul 2026 18:41:44 GMT  
		Size: 877.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19.0` - unknown; unknown

```console
$ docker pull odoo@sha256:79c0ac50c698b55904fef817e0d4bbbb313ebbcf2d1e816b6ff9299765dfec69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.3 MB (52278378 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ca8b2b31007988f5561d55b62e2c2203ef337e4e8bd2397bd0704c2e5d5c99e`

```dockerfile
```

-	Layers:
	-	`sha256:c8cc76a59d5314385c4476029957ecb3358e75961347d8dff51e8a0fe1ea4931`  
		Last Modified: Thu, 23 Jul 2026 18:41:43 GMT  
		Size: 52.3 MB (52250887 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:778c7b647a8b6b329beaf6c28d432ab8e770ff8fa2621b4f320d25eddc19e1c4`  
		Last Modified: Thu, 23 Jul 2026 18:41:39 GMT  
		Size: 27.5 KB (27491 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:19.0` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:641f46b275ee9afee45f54321cb3db923f866aa317a4cdcca803d4d420e9aee8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **692.7 MB (692659942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00f224f182eed9e014914be3854e74892f230674a40fac512658f923bef99d4a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Mon, 22 Jun 2026 21:25:05 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:25:05 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:25:05 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:25:07 GMT
ADD file:cdc9a547b921f36a32310f732815bbee6c6e4f5bd768ab5d49cdc0aa1b9f4785 in / 
# Mon, 22 Jun 2026 21:25:07 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 18:37:45 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Thu, 23 Jul 2026 18:37:45 GMT
SHELL [/bin/bash -xo pipefail -c]
# Thu, 23 Jul 2026 18:37:45 GMT
ENV LANG=en_US.UTF-8
# Thu, 23 Jul 2026 18:37:45 GMT
ARG TARGETARCH=arm64
# Thu, 23 Jul 2026 18:37:45 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Thu, 23 Jul 2026 18:37:57 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 23 Jul 2026 18:39:09 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 23 Jul 2026 18:39:09 GMT
ENV ODOO_VERSION=19.0
# Thu, 23 Jul 2026 18:39:09 GMT
ARG ODOO_RELEASE=20260723
# Thu, 23 Jul 2026 18:39:09 GMT
ARG ODOO_SHA=b1da9c218d92fb4fcd85baae79b60ddcb4bf2118
# Thu, 23 Jul 2026 18:40:25 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260723 ODOO_SHA=b1da9c218d92fb4fcd85baae79b60ddcb4bf2118
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Thu, 23 Jul 2026 18:40:25 GMT
COPY ./entrypoint.sh / # buildkit
# Thu, 23 Jul 2026 18:40:25 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Thu, 23 Jul 2026 18:40:25 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260723 ODOO_SHA=b1da9c218d92fb4fcd85baae79b60ddcb4bf2118
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Thu, 23 Jul 2026 18:40:25 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Thu, 23 Jul 2026 18:40:25 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Thu, 23 Jul 2026 18:40:25 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Thu, 23 Jul 2026 18:40:25 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Thu, 23 Jul 2026 18:40:25 GMT
USER odoo
# Thu, 23 Jul 2026 18:40:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 23 Jul 2026 18:40:25 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:4b987da45db4d6278590ab89840c7167ea397df222f3ee4cdb77c3e15694b1a9`  
		Last Modified: Tue, 23 Jun 2026 01:34:08 GMT  
		Size: 28.9 MB (28884180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49a28eadcbc9ca34fbacd526391e6266275a4ce31d0ea1838e6cd050cff22e95`  
		Last Modified: Thu, 23 Jul 2026 18:42:34 GMT  
		Size: 236.1 MB (236103989 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fed1b9975ca4cc1e798bb289661a861dd29dda1acfef5420cf629d598e29e4d`  
		Last Modified: Thu, 23 Jul 2026 18:42:26 GMT  
		Size: 16.5 MB (16549659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dce92467d358ff1f50fb5051af85bce1289661e8c1d7673a98102347a44e35b8`  
		Last Modified: Thu, 23 Jul 2026 18:42:25 GMT  
		Size: 865.8 KB (865847 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65469913f41aee70c16317d619207cdadc393085951489990474e12b858cdfeb`  
		Last Modified: Thu, 23 Jul 2026 18:42:37 GMT  
		Size: 410.3 MB (410253515 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6dd9ddd2507ba4ea52acffd0fab098fb7b670c14e5c0daa92db2b65fe4368a09`  
		Last Modified: Thu, 23 Jul 2026 18:42:26 GMT  
		Size: 718.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fcc6e128376ff0627229eebaaf0df55ca71b2e9478dd712492cfd041c3ad933`  
		Last Modified: Thu, 23 Jul 2026 18:42:28 GMT  
		Size: 557.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04baf7646a0eb1dcfed0debc1f963233c52bb057d8124486bfbf9cf318b03374`  
		Last Modified: Thu, 23 Jul 2026 18:42:28 GMT  
		Size: 597.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc1db0d3827907f650ef05764fc63ed80e1957600f0f5e7ba23d278381c9eb84`  
		Last Modified: Thu, 23 Jul 2026 18:42:29 GMT  
		Size: 880.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19.0` - unknown; unknown

```console
$ docker pull odoo@sha256:59d636aaa6c505a1b9e67d0b89beb03197a023e9864a908714b782339d574048
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.3 MB (52285826 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16c22339a9efb46f5c56b8001685ed00d2f0a885c46b460033ff48ec0a64f40b`

```dockerfile
```

-	Layers:
	-	`sha256:0201506d7ba31ed2b3362b59815d90a9e7227e55c36319d3796c1fc02990c725`  
		Last Modified: Thu, 23 Jul 2026 18:42:28 GMT  
		Size: 52.3 MB (52258171 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:18885634bbafe900a65e48947cadce0056b200e4108aadbf5ec29e9ba3ad7f0e`  
		Last Modified: Thu, 23 Jul 2026 18:42:25 GMT  
		Size: 27.7 KB (27655 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:19.0` - linux; ppc64le

```console
$ docker pull odoo@sha256:f32e2b55666c66a1b4ded7100d456e5f7c63a76ce93db59d3bd15251d1fad89e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **712.7 MB (712669557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94b4380b46e880b2a894c6991b19336d409b6698c4004a58e7daba1ce2bd8d5a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Mon, 22 Jun 2026 21:24:57 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:24:57 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:24:57 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:25:00 GMT
ADD file:80a608ac5245946ff88c571e9d9b1259a58a3a309e569fbe7ed52f07c2ed3b39 in / 
# Mon, 22 Jun 2026 21:25:01 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 18:38:46 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Thu, 23 Jul 2026 18:38:46 GMT
SHELL [/bin/bash -xo pipefail -c]
# Thu, 23 Jul 2026 18:38:46 GMT
ENV LANG=en_US.UTF-8
# Thu, 23 Jul 2026 18:38:46 GMT
ARG TARGETARCH=ppc64le
# Thu, 23 Jul 2026 18:38:46 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Thu, 23 Jul 2026 18:39:08 GMT
# ARGS: TARGETARCH=ppc64le
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 23 Jul 2026 18:43:22 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 23 Jul 2026 18:43:22 GMT
ENV ODOO_VERSION=19.0
# Thu, 23 Jul 2026 18:43:22 GMT
ARG ODOO_RELEASE=20260723
# Thu, 23 Jul 2026 18:43:22 GMT
ARG ODOO_SHA=b1da9c218d92fb4fcd85baae79b60ddcb4bf2118
# Thu, 23 Jul 2026 18:46:12 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260723 ODOO_SHA=b1da9c218d92fb4fcd85baae79b60ddcb4bf2118
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Thu, 23 Jul 2026 18:46:13 GMT
COPY ./entrypoint.sh / # buildkit
# Thu, 23 Jul 2026 18:46:14 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Thu, 23 Jul 2026 18:46:14 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260723 ODOO_SHA=b1da9c218d92fb4fcd85baae79b60ddcb4bf2118
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Thu, 23 Jul 2026 18:46:14 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Thu, 23 Jul 2026 18:46:14 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Thu, 23 Jul 2026 18:46:14 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Thu, 23 Jul 2026 18:46:14 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Thu, 23 Jul 2026 18:46:14 GMT
USER odoo
# Thu, 23 Jul 2026 18:46:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 23 Jul 2026 18:46:14 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:54973426d6a3ff47babf11aed16ea13dd9377608c1d09a81758f109a18049199`  
		Last Modified: Tue, 23 Jun 2026 01:34:28 GMT  
		Size: 34.3 MB (34313476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67b15bd8a7f3a48a5ac70529afaa24563e8d01ff895679c9f45398f8614e90e6`  
		Last Modified: Thu, 23 Jul 2026 18:49:13 GMT  
		Size: 249.2 MB (249239779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfdf2336aa5596339147ac98fd4137e52d058f58f4477b395e68c8b25b30b0ec`  
		Last Modified: Thu, 23 Jul 2026 18:49:03 GMT  
		Size: 17.3 MB (17286695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55d17f8475d1d9caae7a4ae1f4844babf63d7af1ccca04e884559f84f12a2eb5`  
		Last Modified: Thu, 23 Jul 2026 18:49:02 GMT  
		Size: 866.8 KB (866792 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75f1d8ea61c23d8e5a38a87261d53d70d005496409326d84374dfa918552a707`  
		Last Modified: Thu, 23 Jul 2026 18:50:15 GMT  
		Size: 411.0 MB (410960066 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e61d573502156a2e95406ce633c7128bcddfef0a210022bdcf728401efc77c61`  
		Last Modified: Thu, 23 Jul 2026 18:50:05 GMT  
		Size: 717.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f26c3bfea7b412f2b286859fa2f19a5c667015b76f38633a3b76c36afbc6377`  
		Last Modified: Thu, 23 Jul 2026 18:50:05 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb0183836dbec54f5686a928b532d01f1bce5c6a9fd5806889fd1106b3b4c49a`  
		Last Modified: Thu, 23 Jul 2026 18:50:05 GMT  
		Size: 597.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6762d8d26c6771331abd94d12687f25fbafb75ddb71567be51689d93fd5971a4`  
		Last Modified: Thu, 23 Jul 2026 18:50:07 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19.0` - unknown; unknown

```console
$ docker pull odoo@sha256:0576dc40145aac8c5673db917773c980e0af9931c12d344ce5e0697fbc985905
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.3 MB (52286810 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41a173ae0cd404e2cde9cb76bec6ebbe588acc9b389fce9c9d931c8aedb604ce`

```dockerfile
```

-	Layers:
	-	`sha256:64a7b4bcee8db3375c02e4e799ab98fde47c32872341586e9ab285a44b4f05f9`  
		Last Modified: Thu, 23 Jul 2026 18:50:08 GMT  
		Size: 52.3 MB (52259257 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ac8018c8620d00a9639cb49acc8bf1adffe3fde6d1ac0a32df566ad154283781`  
		Last Modified: Thu, 23 Jul 2026 18:50:05 GMT  
		Size: 27.6 KB (27553 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:19.0-20260803`

```console
$ docker pull odoo@sha256:eb37f58646a901dc7727cf448cae36daaefaba79de33b5058dab79aa4c04aefb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 0

## `odoo:latest`

```console
$ docker pull odoo@sha256:e415f9924395e7521245813135112f264b9222bcde3b1d3c2ee9ff073081540a
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
$ docker pull odoo@sha256:27cd70587642d36fca6b929decbe43310f2d7809368dbd3bdfe00a1bffc8c975
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **696.3 MB (696331125 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48dd8b690d6b5fe8f6a82731ce290db12470f83f39911a1806157a4220de9451`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Mon, 22 Jun 2026 21:24:17 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:24:18 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:24:18 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:24:20 GMT
ADD file:8c609c85109d07bf47cf268a175b3be8bbe34fc0c41d15d99b090d099f4dc837 in / 
# Mon, 22 Jun 2026 21:24:21 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 18:37:51 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Thu, 23 Jul 2026 18:37:51 GMT
SHELL [/bin/bash -xo pipefail -c]
# Thu, 23 Jul 2026 18:37:51 GMT
ENV LANG=en_US.UTF-8
# Thu, 23 Jul 2026 18:37:51 GMT
ARG TARGETARCH=amd64
# Thu, 23 Jul 2026 18:37:51 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Thu, 23 Jul 2026 18:38:03 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 23 Jul 2026 18:39:08 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 23 Jul 2026 18:39:08 GMT
ENV ODOO_VERSION=19.0
# Thu, 23 Jul 2026 18:39:08 GMT
ARG ODOO_RELEASE=20260723
# Thu, 23 Jul 2026 18:39:08 GMT
ARG ODOO_SHA=b1da9c218d92fb4fcd85baae79b60ddcb4bf2118
# Thu, 23 Jul 2026 18:40:07 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260723 ODOO_SHA=b1da9c218d92fb4fcd85baae79b60ddcb4bf2118
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Thu, 23 Jul 2026 18:40:07 GMT
COPY ./entrypoint.sh / # buildkit
# Thu, 23 Jul 2026 18:40:07 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Thu, 23 Jul 2026 18:40:07 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260723 ODOO_SHA=b1da9c218d92fb4fcd85baae79b60ddcb4bf2118
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Thu, 23 Jul 2026 18:40:07 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Thu, 23 Jul 2026 18:40:07 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Thu, 23 Jul 2026 18:40:07 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Thu, 23 Jul 2026 18:40:07 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Thu, 23 Jul 2026 18:40:07 GMT
USER odoo
# Thu, 23 Jul 2026 18:40:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 23 Jul 2026 18:40:07 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:ca2678b20700c15185707964d9211b1a6406196114bf675f568b6025d37b3888`  
		Last Modified: Tue, 23 Jun 2026 01:34:01 GMT  
		Size: 29.7 MB (29735601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc7320d3e16c68681eb89f27b672e938d38cb231bfe42c498556bffb6de4160f`  
		Last Modified: Thu, 23 Jul 2026 18:41:51 GMT  
		Size: 238.7 MB (238687572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9cdfb8d0a7e95efa05a56b123e82ade5f72092759a00bc54fa9c42702d68bbe`  
		Last Modified: Thu, 23 Jul 2026 18:41:40 GMT  
		Size: 16.6 MB (16610470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eaf2ec0c10ee87a0e8883926a15d25d0ea2d01c87651be8ed9cfd05589554e8d`  
		Last Modified: Thu, 23 Jul 2026 18:41:39 GMT  
		Size: 865.7 KB (865684 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5ccb7329693729128a5ff9eba47067aecc2d74315b6685f8d4024c527a10175`  
		Last Modified: Thu, 23 Jul 2026 18:41:55 GMT  
		Size: 410.4 MB (410429048 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7d65a2a7a7fae482928d0c701f60013e23298ffd49f83ca62045484335969dd`  
		Last Modified: Thu, 23 Jul 2026 18:41:40 GMT  
		Size: 717.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:036503ac0436aca29c49b62f2394587002d98088a8397dbacf8f364437b248aa`  
		Last Modified: Thu, 23 Jul 2026 18:41:42 GMT  
		Size: 558.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f512e2c33336f181c886b1cb4c8684e053376e5c0b84214d91f88ae6df5f0606`  
		Last Modified: Thu, 23 Jul 2026 18:41:42 GMT  
		Size: 598.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:697215fd50e26d1333b4e5f0c6c22da54c46107d3809f12491d72c8b362931c6`  
		Last Modified: Thu, 23 Jul 2026 18:41:44 GMT  
		Size: 877.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:latest` - unknown; unknown

```console
$ docker pull odoo@sha256:79c0ac50c698b55904fef817e0d4bbbb313ebbcf2d1e816b6ff9299765dfec69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.3 MB (52278378 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ca8b2b31007988f5561d55b62e2c2203ef337e4e8bd2397bd0704c2e5d5c99e`

```dockerfile
```

-	Layers:
	-	`sha256:c8cc76a59d5314385c4476029957ecb3358e75961347d8dff51e8a0fe1ea4931`  
		Last Modified: Thu, 23 Jul 2026 18:41:43 GMT  
		Size: 52.3 MB (52250887 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:778c7b647a8b6b329beaf6c28d432ab8e770ff8fa2621b4f320d25eddc19e1c4`  
		Last Modified: Thu, 23 Jul 2026 18:41:39 GMT  
		Size: 27.5 KB (27491 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:latest` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:641f46b275ee9afee45f54321cb3db923f866aa317a4cdcca803d4d420e9aee8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **692.7 MB (692659942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00f224f182eed9e014914be3854e74892f230674a40fac512658f923bef99d4a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Mon, 22 Jun 2026 21:25:05 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:25:05 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:25:05 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:25:07 GMT
ADD file:cdc9a547b921f36a32310f732815bbee6c6e4f5bd768ab5d49cdc0aa1b9f4785 in / 
# Mon, 22 Jun 2026 21:25:07 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 18:37:45 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Thu, 23 Jul 2026 18:37:45 GMT
SHELL [/bin/bash -xo pipefail -c]
# Thu, 23 Jul 2026 18:37:45 GMT
ENV LANG=en_US.UTF-8
# Thu, 23 Jul 2026 18:37:45 GMT
ARG TARGETARCH=arm64
# Thu, 23 Jul 2026 18:37:45 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Thu, 23 Jul 2026 18:37:57 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 23 Jul 2026 18:39:09 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 23 Jul 2026 18:39:09 GMT
ENV ODOO_VERSION=19.0
# Thu, 23 Jul 2026 18:39:09 GMT
ARG ODOO_RELEASE=20260723
# Thu, 23 Jul 2026 18:39:09 GMT
ARG ODOO_SHA=b1da9c218d92fb4fcd85baae79b60ddcb4bf2118
# Thu, 23 Jul 2026 18:40:25 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260723 ODOO_SHA=b1da9c218d92fb4fcd85baae79b60ddcb4bf2118
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Thu, 23 Jul 2026 18:40:25 GMT
COPY ./entrypoint.sh / # buildkit
# Thu, 23 Jul 2026 18:40:25 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Thu, 23 Jul 2026 18:40:25 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260723 ODOO_SHA=b1da9c218d92fb4fcd85baae79b60ddcb4bf2118
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Thu, 23 Jul 2026 18:40:25 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Thu, 23 Jul 2026 18:40:25 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Thu, 23 Jul 2026 18:40:25 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Thu, 23 Jul 2026 18:40:25 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Thu, 23 Jul 2026 18:40:25 GMT
USER odoo
# Thu, 23 Jul 2026 18:40:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 23 Jul 2026 18:40:25 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:4b987da45db4d6278590ab89840c7167ea397df222f3ee4cdb77c3e15694b1a9`  
		Last Modified: Tue, 23 Jun 2026 01:34:08 GMT  
		Size: 28.9 MB (28884180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49a28eadcbc9ca34fbacd526391e6266275a4ce31d0ea1838e6cd050cff22e95`  
		Last Modified: Thu, 23 Jul 2026 18:42:34 GMT  
		Size: 236.1 MB (236103989 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fed1b9975ca4cc1e798bb289661a861dd29dda1acfef5420cf629d598e29e4d`  
		Last Modified: Thu, 23 Jul 2026 18:42:26 GMT  
		Size: 16.5 MB (16549659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dce92467d358ff1f50fb5051af85bce1289661e8c1d7673a98102347a44e35b8`  
		Last Modified: Thu, 23 Jul 2026 18:42:25 GMT  
		Size: 865.8 KB (865847 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65469913f41aee70c16317d619207cdadc393085951489990474e12b858cdfeb`  
		Last Modified: Thu, 23 Jul 2026 18:42:37 GMT  
		Size: 410.3 MB (410253515 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6dd9ddd2507ba4ea52acffd0fab098fb7b670c14e5c0daa92db2b65fe4368a09`  
		Last Modified: Thu, 23 Jul 2026 18:42:26 GMT  
		Size: 718.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fcc6e128376ff0627229eebaaf0df55ca71b2e9478dd712492cfd041c3ad933`  
		Last Modified: Thu, 23 Jul 2026 18:42:28 GMT  
		Size: 557.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04baf7646a0eb1dcfed0debc1f963233c52bb057d8124486bfbf9cf318b03374`  
		Last Modified: Thu, 23 Jul 2026 18:42:28 GMT  
		Size: 597.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc1db0d3827907f650ef05764fc63ed80e1957600f0f5e7ba23d278381c9eb84`  
		Last Modified: Thu, 23 Jul 2026 18:42:29 GMT  
		Size: 880.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:latest` - unknown; unknown

```console
$ docker pull odoo@sha256:59d636aaa6c505a1b9e67d0b89beb03197a023e9864a908714b782339d574048
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.3 MB (52285826 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16c22339a9efb46f5c56b8001685ed00d2f0a885c46b460033ff48ec0a64f40b`

```dockerfile
```

-	Layers:
	-	`sha256:0201506d7ba31ed2b3362b59815d90a9e7227e55c36319d3796c1fc02990c725`  
		Last Modified: Thu, 23 Jul 2026 18:42:28 GMT  
		Size: 52.3 MB (52258171 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:18885634bbafe900a65e48947cadce0056b200e4108aadbf5ec29e9ba3ad7f0e`  
		Last Modified: Thu, 23 Jul 2026 18:42:25 GMT  
		Size: 27.7 KB (27655 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:latest` - linux; ppc64le

```console
$ docker pull odoo@sha256:f32e2b55666c66a1b4ded7100d456e5f7c63a76ce93db59d3bd15251d1fad89e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **712.7 MB (712669557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94b4380b46e880b2a894c6991b19336d409b6698c4004a58e7daba1ce2bd8d5a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Mon, 22 Jun 2026 21:24:57 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:24:57 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:24:57 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:25:00 GMT
ADD file:80a608ac5245946ff88c571e9d9b1259a58a3a309e569fbe7ed52f07c2ed3b39 in / 
# Mon, 22 Jun 2026 21:25:01 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 18:38:46 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Thu, 23 Jul 2026 18:38:46 GMT
SHELL [/bin/bash -xo pipefail -c]
# Thu, 23 Jul 2026 18:38:46 GMT
ENV LANG=en_US.UTF-8
# Thu, 23 Jul 2026 18:38:46 GMT
ARG TARGETARCH=ppc64le
# Thu, 23 Jul 2026 18:38:46 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Thu, 23 Jul 2026 18:39:08 GMT
# ARGS: TARGETARCH=ppc64le
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 23 Jul 2026 18:43:22 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 23 Jul 2026 18:43:22 GMT
ENV ODOO_VERSION=19.0
# Thu, 23 Jul 2026 18:43:22 GMT
ARG ODOO_RELEASE=20260723
# Thu, 23 Jul 2026 18:43:22 GMT
ARG ODOO_SHA=b1da9c218d92fb4fcd85baae79b60ddcb4bf2118
# Thu, 23 Jul 2026 18:46:12 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260723 ODOO_SHA=b1da9c218d92fb4fcd85baae79b60ddcb4bf2118
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Thu, 23 Jul 2026 18:46:13 GMT
COPY ./entrypoint.sh / # buildkit
# Thu, 23 Jul 2026 18:46:14 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Thu, 23 Jul 2026 18:46:14 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260723 ODOO_SHA=b1da9c218d92fb4fcd85baae79b60ddcb4bf2118
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Thu, 23 Jul 2026 18:46:14 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Thu, 23 Jul 2026 18:46:14 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Thu, 23 Jul 2026 18:46:14 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Thu, 23 Jul 2026 18:46:14 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Thu, 23 Jul 2026 18:46:14 GMT
USER odoo
# Thu, 23 Jul 2026 18:46:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 23 Jul 2026 18:46:14 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:54973426d6a3ff47babf11aed16ea13dd9377608c1d09a81758f109a18049199`  
		Last Modified: Tue, 23 Jun 2026 01:34:28 GMT  
		Size: 34.3 MB (34313476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67b15bd8a7f3a48a5ac70529afaa24563e8d01ff895679c9f45398f8614e90e6`  
		Last Modified: Thu, 23 Jul 2026 18:49:13 GMT  
		Size: 249.2 MB (249239779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfdf2336aa5596339147ac98fd4137e52d058f58f4477b395e68c8b25b30b0ec`  
		Last Modified: Thu, 23 Jul 2026 18:49:03 GMT  
		Size: 17.3 MB (17286695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55d17f8475d1d9caae7a4ae1f4844babf63d7af1ccca04e884559f84f12a2eb5`  
		Last Modified: Thu, 23 Jul 2026 18:49:02 GMT  
		Size: 866.8 KB (866792 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75f1d8ea61c23d8e5a38a87261d53d70d005496409326d84374dfa918552a707`  
		Last Modified: Thu, 23 Jul 2026 18:50:15 GMT  
		Size: 411.0 MB (410960066 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e61d573502156a2e95406ce633c7128bcddfef0a210022bdcf728401efc77c61`  
		Last Modified: Thu, 23 Jul 2026 18:50:05 GMT  
		Size: 717.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f26c3bfea7b412f2b286859fa2f19a5c667015b76f38633a3b76c36afbc6377`  
		Last Modified: Thu, 23 Jul 2026 18:50:05 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb0183836dbec54f5686a928b532d01f1bce5c6a9fd5806889fd1106b3b4c49a`  
		Last Modified: Thu, 23 Jul 2026 18:50:05 GMT  
		Size: 597.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6762d8d26c6771331abd94d12687f25fbafb75ddb71567be51689d93fd5971a4`  
		Last Modified: Thu, 23 Jul 2026 18:50:07 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:latest` - unknown; unknown

```console
$ docker pull odoo@sha256:0576dc40145aac8c5673db917773c980e0af9931c12d344ce5e0697fbc985905
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.3 MB (52286810 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41a173ae0cd404e2cde9cb76bec6ebbe588acc9b389fce9c9d931c8aedb604ce`

```dockerfile
```

-	Layers:
	-	`sha256:64a7b4bcee8db3375c02e4e799ab98fde47c32872341586e9ab285a44b4f05f9`  
		Last Modified: Thu, 23 Jul 2026 18:50:08 GMT  
		Size: 52.3 MB (52259257 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ac8018c8620d00a9639cb49acc8bf1adffe3fde6d1ac0a32df566ad154283781`  
		Last Modified: Thu, 23 Jul 2026 18:50:05 GMT  
		Size: 27.6 KB (27553 bytes)  
		MIME: application/vnd.in-toto+json
