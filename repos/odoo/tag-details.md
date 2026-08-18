<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `odoo`

-	[`odoo:17`](#odoo17)
-	[`odoo:17.0`](#odoo170)
-	[`odoo:17.0-20260817`](#odoo170-20260817)
-	[`odoo:18`](#odoo18)
-	[`odoo:18.0`](#odoo180)
-	[`odoo:18.0-20260817`](#odoo180-20260817)
-	[`odoo:19`](#odoo19)
-	[`odoo:19.0`](#odoo190)
-	[`odoo:19.0-20260817`](#odoo190-20260817)
-	[`odoo:latest`](#odoolatest)

## `odoo:17`

```console
$ docker pull odoo@sha256:0969260596e142c913f1be06e832efcd2347efb440363433c7ef6f24948f40ca
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `odoo:17` - linux; amd64

```console
$ docker pull odoo@sha256:a55613a1488c930e6f6edbac7ba3ff11bb770106e7d0c5e1cc495ef8818ee924
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **610.2 MB (610151026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:914922181bdd5ce858a03c0f5e0c27ecbafeb342b38cac53c705e0739d6e348f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:09 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:09 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:12 GMT
ADD file:799f4e238d67485cc109d93512f4fe6f75bafc26a3476772191154125e52201d in / 
# Mon, 10 Aug 2026 17:38:12 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:20:11 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 18 Aug 2026 01:20:11 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 18 Aug 2026 01:20:11 GMT
ENV LANG=en_US.UTF-8
# Tue, 18 Aug 2026 01:20:11 GMT
ARG TARGETARCH=amd64
# Tue, 18 Aug 2026 01:20:11 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     DEBIAN_FRONTEND=noninteractive     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 18 Aug 2026 01:20:18 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jammy-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:20:51 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:20:51 GMT
ENV ODOO_VERSION=17.0
# Tue, 18 Aug 2026 01:20:51 GMT
ARG ODOO_RELEASE=20260817
# Tue, 18 Aug 2026 01:20:51 GMT
ARG ODOO_SHA=1d05fd70e47168a5b4365a1a663595bb9583dfcd
# Tue, 18 Aug 2026 01:21:56 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260817 ODOO_SHA=1d05fd70e47168a5b4365a1a663595bb9583dfcd
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 18 Aug 2026 01:21:57 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 18 Aug 2026 01:21:57 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 18 Aug 2026 01:21:57 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260817 ODOO_SHA=1d05fd70e47168a5b4365a1a663595bb9583dfcd
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 18 Aug 2026 01:21:57 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 18 Aug 2026 01:21:57 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 18 Aug 2026 01:21:57 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 18 Aug 2026 01:21:57 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 18 Aug 2026 01:21:57 GMT
USER odoo
# Tue, 18 Aug 2026 01:21:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Aug 2026 01:21:57 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2b83ec3f8aeb5163bdc198e8c247e9d03921211e11d159702149463a669067d`  
		Last Modified: Tue, 18 Aug 2026 01:23:19 GMT  
		Size: 230.5 MB (230520634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba2d9340ed6e3d1a719865ec0444fc8d51f3dfefb8000e0964ba7a9b4dc65d70`  
		Last Modified: Tue, 18 Aug 2026 01:23:08 GMT  
		Size: 2.6 MB (2566139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:635eb5d3be6ebec1172888f2932093a2042a4cfaed190073f7502982d75c7878`  
		Last Modified: Tue, 18 Aug 2026 01:23:08 GMT  
		Size: 684.0 KB (683954 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fdaff94a1871216638db0d77f51070395d93b621eaa65f5b9e28a82d180f5e7`  
		Last Modified: Tue, 18 Aug 2026 01:23:21 GMT  
		Size: 346.6 MB (346640561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:892faf8b7777f0e1fbbd4f56d4c444e7f50af507a9ad8902f6c76fb601130f76`  
		Last Modified: Tue, 18 Aug 2026 01:23:10 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9730c184347a2a4da60a72d63f885253e409238d038e3172a31c0ec8e12fac3e`  
		Last Modified: Tue, 18 Aug 2026 01:23:10 GMT  
		Size: 555.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32ca7666d223a342d817d3501541995236f3559a6a66cc8177589f598363d14b`  
		Last Modified: Tue, 18 Aug 2026 01:23:11 GMT  
		Size: 595.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f469f6399a13ea5022412f562a1e8454c328079ce1ed96d6e2893675741eb7f6`  
		Last Modified: Tue, 18 Aug 2026 01:23:11 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:17` - unknown; unknown

```console
$ docker pull odoo@sha256:dd6ca49ed3d6fbbd04171c2b77439436a0ddb20c56bb5dbd4fecb02e141b0f24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.8 MB (40842906 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a36d86660122ffe5cb7cf12a75147a85d53113bcf2570d1406867081adde1fe`

```dockerfile
```

-	Layers:
	-	`sha256:48fa92c051a8d94f60923cb70de765abc45cf6c95ec1499d8f322d338876aaff`  
		Last Modified: Tue, 18 Aug 2026 01:23:11 GMT  
		Size: 40.8 MB (40815589 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7179a518cee510b65efbb4790c5be066f78d27da7bcb4c621b638a56a8ea39e0`  
		Last Modified: Tue, 18 Aug 2026 01:23:08 GMT  
		Size: 27.3 KB (27317 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:17` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:b2fa932f2fd3a18c0d125aaf296a1d9902d25a0915d8e9df9f3598cdd01909ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **605.1 MB (605070434 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:053dea41b52cff678e471efa79fa3dc010efd8de9f8edc49231a0add01c14998`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:35 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:35 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:37 GMT
ADD file:c4ec32d39509d0c1acf2ddbb89cdc1fb3ceeae66ef80238f2ba7df53758fb44a in / 
# Mon, 10 Aug 2026 17:38:38 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:19:54 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 18 Aug 2026 01:19:54 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 18 Aug 2026 01:19:54 GMT
ENV LANG=en_US.UTF-8
# Tue, 18 Aug 2026 01:19:54 GMT
ARG TARGETARCH=arm64
# Tue, 18 Aug 2026 01:19:54 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     DEBIAN_FRONTEND=noninteractive     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 18 Aug 2026 01:20:03 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jammy-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:20:32 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:20:32 GMT
ENV ODOO_VERSION=17.0
# Tue, 18 Aug 2026 01:20:32 GMT
ARG ODOO_RELEASE=20260817
# Tue, 18 Aug 2026 01:20:32 GMT
ARG ODOO_SHA=1d05fd70e47168a5b4365a1a663595bb9583dfcd
# Tue, 18 Aug 2026 01:21:34 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260817 ODOO_SHA=1d05fd70e47168a5b4365a1a663595bb9583dfcd
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 18 Aug 2026 01:21:35 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 18 Aug 2026 01:21:35 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 18 Aug 2026 01:21:35 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260817 ODOO_SHA=1d05fd70e47168a5b4365a1a663595bb9583dfcd
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 18 Aug 2026 01:21:35 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 18 Aug 2026 01:21:35 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 18 Aug 2026 01:21:35 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 18 Aug 2026 01:21:35 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 18 Aug 2026 01:21:35 GMT
USER odoo
# Tue, 18 Aug 2026 01:21:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Aug 2026 01:21:35 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac9b194314e22fb42e07f1037f38dd2c66d49324821bb18d36eba4e5a1081068`  
		Last Modified: Tue, 18 Aug 2026 01:23:00 GMT  
		Size: 227.9 MB (227944250 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ff9f9dd7e30f533dc5dc8ef6dd9572f022489ccaa19215fca49d887d3180597`  
		Last Modified: Tue, 18 Aug 2026 01:22:50 GMT  
		Size: 2.6 MB (2562195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae45293ff2a62d85c109cfd07ba968f278e57684522f3d2a363b7a353a7b07e8`  
		Last Modified: Tue, 18 Aug 2026 01:22:50 GMT  
		Size: 684.0 KB (683970 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c0064303b7865ca396819c95bef1ed012ece3b4afa147df7abfcde19c31bf51`  
		Last Modified: Tue, 18 Aug 2026 01:23:02 GMT  
		Size: 346.3 MB (346256771 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03e2f88cfe91bfd0588ad1d24598f8dc99a84f348053c45e495c2b412426fef5`  
		Last Modified: Tue, 18 Aug 2026 01:22:51 GMT  
		Size: 766.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30b25ffa8118428f1bf9c57925efa4874af3d39281062f1c4883f3ec1b008fd9`  
		Last Modified: Tue, 18 Aug 2026 01:22:52 GMT  
		Size: 555.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:319dded3c687c11117f099eb37274843073231231dfc96e3e4b0a7951fa1cc96`  
		Last Modified: Tue, 18 Aug 2026 01:22:53 GMT  
		Size: 595.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6ade2634e087160c6930cda7b28481f2a827af32306ff07a75c1ffe4fad796f`  
		Last Modified: Tue, 18 Aug 2026 01:22:53 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:17` - unknown; unknown

```console
$ docker pull odoo@sha256:3cf0323ac6f7d238ee1fec725e0faeb16685c6e105c1da621570ea982c7ffc6c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.8 MB (40849562 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e15b87b4a352b12b58ab558764084f67f43ba0059ffbcbd345540fd0e147ba4`

```dockerfile
```

-	Layers:
	-	`sha256:4bcd1712765ca86c0868778d9b0e07180a4b33136f0e09141f9874f3e7092a4b`  
		Last Modified: Tue, 18 Aug 2026 01:22:53 GMT  
		Size: 40.8 MB (40822093 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4e0f56518adaf7a8f3d11936e6b235cb0cb67fe411748acacc815820b4fcf440`  
		Last Modified: Tue, 18 Aug 2026 01:22:50 GMT  
		Size: 27.5 KB (27469 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:17.0`

```console
$ docker pull odoo@sha256:0969260596e142c913f1be06e832efcd2347efb440363433c7ef6f24948f40ca
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `odoo:17.0` - linux; amd64

```console
$ docker pull odoo@sha256:a55613a1488c930e6f6edbac7ba3ff11bb770106e7d0c5e1cc495ef8818ee924
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **610.2 MB (610151026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:914922181bdd5ce858a03c0f5e0c27ecbafeb342b38cac53c705e0739d6e348f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:09 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:09 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:12 GMT
ADD file:799f4e238d67485cc109d93512f4fe6f75bafc26a3476772191154125e52201d in / 
# Mon, 10 Aug 2026 17:38:12 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:20:11 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 18 Aug 2026 01:20:11 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 18 Aug 2026 01:20:11 GMT
ENV LANG=en_US.UTF-8
# Tue, 18 Aug 2026 01:20:11 GMT
ARG TARGETARCH=amd64
# Tue, 18 Aug 2026 01:20:11 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     DEBIAN_FRONTEND=noninteractive     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 18 Aug 2026 01:20:18 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jammy-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:20:51 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:20:51 GMT
ENV ODOO_VERSION=17.0
# Tue, 18 Aug 2026 01:20:51 GMT
ARG ODOO_RELEASE=20260817
# Tue, 18 Aug 2026 01:20:51 GMT
ARG ODOO_SHA=1d05fd70e47168a5b4365a1a663595bb9583dfcd
# Tue, 18 Aug 2026 01:21:56 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260817 ODOO_SHA=1d05fd70e47168a5b4365a1a663595bb9583dfcd
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 18 Aug 2026 01:21:57 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 18 Aug 2026 01:21:57 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 18 Aug 2026 01:21:57 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260817 ODOO_SHA=1d05fd70e47168a5b4365a1a663595bb9583dfcd
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 18 Aug 2026 01:21:57 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 18 Aug 2026 01:21:57 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 18 Aug 2026 01:21:57 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 18 Aug 2026 01:21:57 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 18 Aug 2026 01:21:57 GMT
USER odoo
# Tue, 18 Aug 2026 01:21:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Aug 2026 01:21:57 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2b83ec3f8aeb5163bdc198e8c247e9d03921211e11d159702149463a669067d`  
		Last Modified: Tue, 18 Aug 2026 01:23:19 GMT  
		Size: 230.5 MB (230520634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba2d9340ed6e3d1a719865ec0444fc8d51f3dfefb8000e0964ba7a9b4dc65d70`  
		Last Modified: Tue, 18 Aug 2026 01:23:08 GMT  
		Size: 2.6 MB (2566139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:635eb5d3be6ebec1172888f2932093a2042a4cfaed190073f7502982d75c7878`  
		Last Modified: Tue, 18 Aug 2026 01:23:08 GMT  
		Size: 684.0 KB (683954 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fdaff94a1871216638db0d77f51070395d93b621eaa65f5b9e28a82d180f5e7`  
		Last Modified: Tue, 18 Aug 2026 01:23:21 GMT  
		Size: 346.6 MB (346640561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:892faf8b7777f0e1fbbd4f56d4c444e7f50af507a9ad8902f6c76fb601130f76`  
		Last Modified: Tue, 18 Aug 2026 01:23:10 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9730c184347a2a4da60a72d63f885253e409238d038e3172a31c0ec8e12fac3e`  
		Last Modified: Tue, 18 Aug 2026 01:23:10 GMT  
		Size: 555.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32ca7666d223a342d817d3501541995236f3559a6a66cc8177589f598363d14b`  
		Last Modified: Tue, 18 Aug 2026 01:23:11 GMT  
		Size: 595.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f469f6399a13ea5022412f562a1e8454c328079ce1ed96d6e2893675741eb7f6`  
		Last Modified: Tue, 18 Aug 2026 01:23:11 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:17.0` - unknown; unknown

```console
$ docker pull odoo@sha256:dd6ca49ed3d6fbbd04171c2b77439436a0ddb20c56bb5dbd4fecb02e141b0f24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.8 MB (40842906 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a36d86660122ffe5cb7cf12a75147a85d53113bcf2570d1406867081adde1fe`

```dockerfile
```

-	Layers:
	-	`sha256:48fa92c051a8d94f60923cb70de765abc45cf6c95ec1499d8f322d338876aaff`  
		Last Modified: Tue, 18 Aug 2026 01:23:11 GMT  
		Size: 40.8 MB (40815589 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7179a518cee510b65efbb4790c5be066f78d27da7bcb4c621b638a56a8ea39e0`  
		Last Modified: Tue, 18 Aug 2026 01:23:08 GMT  
		Size: 27.3 KB (27317 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:17.0` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:b2fa932f2fd3a18c0d125aaf296a1d9902d25a0915d8e9df9f3598cdd01909ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **605.1 MB (605070434 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:053dea41b52cff678e471efa79fa3dc010efd8de9f8edc49231a0add01c14998`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:35 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:35 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:37 GMT
ADD file:c4ec32d39509d0c1acf2ddbb89cdc1fb3ceeae66ef80238f2ba7df53758fb44a in / 
# Mon, 10 Aug 2026 17:38:38 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:19:54 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 18 Aug 2026 01:19:54 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 18 Aug 2026 01:19:54 GMT
ENV LANG=en_US.UTF-8
# Tue, 18 Aug 2026 01:19:54 GMT
ARG TARGETARCH=arm64
# Tue, 18 Aug 2026 01:19:54 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     DEBIAN_FRONTEND=noninteractive     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 18 Aug 2026 01:20:03 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jammy-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:20:32 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:20:32 GMT
ENV ODOO_VERSION=17.0
# Tue, 18 Aug 2026 01:20:32 GMT
ARG ODOO_RELEASE=20260817
# Tue, 18 Aug 2026 01:20:32 GMT
ARG ODOO_SHA=1d05fd70e47168a5b4365a1a663595bb9583dfcd
# Tue, 18 Aug 2026 01:21:34 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260817 ODOO_SHA=1d05fd70e47168a5b4365a1a663595bb9583dfcd
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 18 Aug 2026 01:21:35 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 18 Aug 2026 01:21:35 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 18 Aug 2026 01:21:35 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260817 ODOO_SHA=1d05fd70e47168a5b4365a1a663595bb9583dfcd
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 18 Aug 2026 01:21:35 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 18 Aug 2026 01:21:35 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 18 Aug 2026 01:21:35 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 18 Aug 2026 01:21:35 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 18 Aug 2026 01:21:35 GMT
USER odoo
# Tue, 18 Aug 2026 01:21:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Aug 2026 01:21:35 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac9b194314e22fb42e07f1037f38dd2c66d49324821bb18d36eba4e5a1081068`  
		Last Modified: Tue, 18 Aug 2026 01:23:00 GMT  
		Size: 227.9 MB (227944250 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ff9f9dd7e30f533dc5dc8ef6dd9572f022489ccaa19215fca49d887d3180597`  
		Last Modified: Tue, 18 Aug 2026 01:22:50 GMT  
		Size: 2.6 MB (2562195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae45293ff2a62d85c109cfd07ba968f278e57684522f3d2a363b7a353a7b07e8`  
		Last Modified: Tue, 18 Aug 2026 01:22:50 GMT  
		Size: 684.0 KB (683970 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c0064303b7865ca396819c95bef1ed012ece3b4afa147df7abfcde19c31bf51`  
		Last Modified: Tue, 18 Aug 2026 01:23:02 GMT  
		Size: 346.3 MB (346256771 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03e2f88cfe91bfd0588ad1d24598f8dc99a84f348053c45e495c2b412426fef5`  
		Last Modified: Tue, 18 Aug 2026 01:22:51 GMT  
		Size: 766.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30b25ffa8118428f1bf9c57925efa4874af3d39281062f1c4883f3ec1b008fd9`  
		Last Modified: Tue, 18 Aug 2026 01:22:52 GMT  
		Size: 555.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:319dded3c687c11117f099eb37274843073231231dfc96e3e4b0a7951fa1cc96`  
		Last Modified: Tue, 18 Aug 2026 01:22:53 GMT  
		Size: 595.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6ade2634e087160c6930cda7b28481f2a827af32306ff07a75c1ffe4fad796f`  
		Last Modified: Tue, 18 Aug 2026 01:22:53 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:17.0` - unknown; unknown

```console
$ docker pull odoo@sha256:3cf0323ac6f7d238ee1fec725e0faeb16685c6e105c1da621570ea982c7ffc6c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.8 MB (40849562 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e15b87b4a352b12b58ab558764084f67f43ba0059ffbcbd345540fd0e147ba4`

```dockerfile
```

-	Layers:
	-	`sha256:4bcd1712765ca86c0868778d9b0e07180a4b33136f0e09141f9874f3e7092a4b`  
		Last Modified: Tue, 18 Aug 2026 01:22:53 GMT  
		Size: 40.8 MB (40822093 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4e0f56518adaf7a8f3d11936e6b235cb0cb67fe411748acacc815820b4fcf440`  
		Last Modified: Tue, 18 Aug 2026 01:22:50 GMT  
		Size: 27.5 KB (27469 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:17.0-20260817`

```console
$ docker pull odoo@sha256:0969260596e142c913f1be06e832efcd2347efb440363433c7ef6f24948f40ca
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `odoo:17.0-20260817` - linux; amd64

```console
$ docker pull odoo@sha256:a55613a1488c930e6f6edbac7ba3ff11bb770106e7d0c5e1cc495ef8818ee924
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **610.2 MB (610151026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:914922181bdd5ce858a03c0f5e0c27ecbafeb342b38cac53c705e0739d6e348f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:09 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:09 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:12 GMT
ADD file:799f4e238d67485cc109d93512f4fe6f75bafc26a3476772191154125e52201d in / 
# Mon, 10 Aug 2026 17:38:12 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:20:11 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 18 Aug 2026 01:20:11 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 18 Aug 2026 01:20:11 GMT
ENV LANG=en_US.UTF-8
# Tue, 18 Aug 2026 01:20:11 GMT
ARG TARGETARCH=amd64
# Tue, 18 Aug 2026 01:20:11 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     DEBIAN_FRONTEND=noninteractive     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 18 Aug 2026 01:20:18 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jammy-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:20:51 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:20:51 GMT
ENV ODOO_VERSION=17.0
# Tue, 18 Aug 2026 01:20:51 GMT
ARG ODOO_RELEASE=20260817
# Tue, 18 Aug 2026 01:20:51 GMT
ARG ODOO_SHA=1d05fd70e47168a5b4365a1a663595bb9583dfcd
# Tue, 18 Aug 2026 01:21:56 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260817 ODOO_SHA=1d05fd70e47168a5b4365a1a663595bb9583dfcd
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 18 Aug 2026 01:21:57 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 18 Aug 2026 01:21:57 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 18 Aug 2026 01:21:57 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260817 ODOO_SHA=1d05fd70e47168a5b4365a1a663595bb9583dfcd
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 18 Aug 2026 01:21:57 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 18 Aug 2026 01:21:57 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 18 Aug 2026 01:21:57 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 18 Aug 2026 01:21:57 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 18 Aug 2026 01:21:57 GMT
USER odoo
# Tue, 18 Aug 2026 01:21:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Aug 2026 01:21:57 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2b83ec3f8aeb5163bdc198e8c247e9d03921211e11d159702149463a669067d`  
		Last Modified: Tue, 18 Aug 2026 01:23:19 GMT  
		Size: 230.5 MB (230520634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba2d9340ed6e3d1a719865ec0444fc8d51f3dfefb8000e0964ba7a9b4dc65d70`  
		Last Modified: Tue, 18 Aug 2026 01:23:08 GMT  
		Size: 2.6 MB (2566139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:635eb5d3be6ebec1172888f2932093a2042a4cfaed190073f7502982d75c7878`  
		Last Modified: Tue, 18 Aug 2026 01:23:08 GMT  
		Size: 684.0 KB (683954 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fdaff94a1871216638db0d77f51070395d93b621eaa65f5b9e28a82d180f5e7`  
		Last Modified: Tue, 18 Aug 2026 01:23:21 GMT  
		Size: 346.6 MB (346640561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:892faf8b7777f0e1fbbd4f56d4c444e7f50af507a9ad8902f6c76fb601130f76`  
		Last Modified: Tue, 18 Aug 2026 01:23:10 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9730c184347a2a4da60a72d63f885253e409238d038e3172a31c0ec8e12fac3e`  
		Last Modified: Tue, 18 Aug 2026 01:23:10 GMT  
		Size: 555.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32ca7666d223a342d817d3501541995236f3559a6a66cc8177589f598363d14b`  
		Last Modified: Tue, 18 Aug 2026 01:23:11 GMT  
		Size: 595.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f469f6399a13ea5022412f562a1e8454c328079ce1ed96d6e2893675741eb7f6`  
		Last Modified: Tue, 18 Aug 2026 01:23:11 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:17.0-20260817` - unknown; unknown

```console
$ docker pull odoo@sha256:dd6ca49ed3d6fbbd04171c2b77439436a0ddb20c56bb5dbd4fecb02e141b0f24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.8 MB (40842906 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a36d86660122ffe5cb7cf12a75147a85d53113bcf2570d1406867081adde1fe`

```dockerfile
```

-	Layers:
	-	`sha256:48fa92c051a8d94f60923cb70de765abc45cf6c95ec1499d8f322d338876aaff`  
		Last Modified: Tue, 18 Aug 2026 01:23:11 GMT  
		Size: 40.8 MB (40815589 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7179a518cee510b65efbb4790c5be066f78d27da7bcb4c621b638a56a8ea39e0`  
		Last Modified: Tue, 18 Aug 2026 01:23:08 GMT  
		Size: 27.3 KB (27317 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:17.0-20260817` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:b2fa932f2fd3a18c0d125aaf296a1d9902d25a0915d8e9df9f3598cdd01909ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **605.1 MB (605070434 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:053dea41b52cff678e471efa79fa3dc010efd8de9f8edc49231a0add01c14998`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:35 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:35 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:37 GMT
ADD file:c4ec32d39509d0c1acf2ddbb89cdc1fb3ceeae66ef80238f2ba7df53758fb44a in / 
# Mon, 10 Aug 2026 17:38:38 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:19:54 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 18 Aug 2026 01:19:54 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 18 Aug 2026 01:19:54 GMT
ENV LANG=en_US.UTF-8
# Tue, 18 Aug 2026 01:19:54 GMT
ARG TARGETARCH=arm64
# Tue, 18 Aug 2026 01:19:54 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     DEBIAN_FRONTEND=noninteractive     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 18 Aug 2026 01:20:03 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jammy-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:20:32 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:20:32 GMT
ENV ODOO_VERSION=17.0
# Tue, 18 Aug 2026 01:20:32 GMT
ARG ODOO_RELEASE=20260817
# Tue, 18 Aug 2026 01:20:32 GMT
ARG ODOO_SHA=1d05fd70e47168a5b4365a1a663595bb9583dfcd
# Tue, 18 Aug 2026 01:21:34 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260817 ODOO_SHA=1d05fd70e47168a5b4365a1a663595bb9583dfcd
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 18 Aug 2026 01:21:35 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 18 Aug 2026 01:21:35 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 18 Aug 2026 01:21:35 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260817 ODOO_SHA=1d05fd70e47168a5b4365a1a663595bb9583dfcd
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 18 Aug 2026 01:21:35 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 18 Aug 2026 01:21:35 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 18 Aug 2026 01:21:35 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 18 Aug 2026 01:21:35 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 18 Aug 2026 01:21:35 GMT
USER odoo
# Tue, 18 Aug 2026 01:21:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Aug 2026 01:21:35 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac9b194314e22fb42e07f1037f38dd2c66d49324821bb18d36eba4e5a1081068`  
		Last Modified: Tue, 18 Aug 2026 01:23:00 GMT  
		Size: 227.9 MB (227944250 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ff9f9dd7e30f533dc5dc8ef6dd9572f022489ccaa19215fca49d887d3180597`  
		Last Modified: Tue, 18 Aug 2026 01:22:50 GMT  
		Size: 2.6 MB (2562195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae45293ff2a62d85c109cfd07ba968f278e57684522f3d2a363b7a353a7b07e8`  
		Last Modified: Tue, 18 Aug 2026 01:22:50 GMT  
		Size: 684.0 KB (683970 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c0064303b7865ca396819c95bef1ed012ece3b4afa147df7abfcde19c31bf51`  
		Last Modified: Tue, 18 Aug 2026 01:23:02 GMT  
		Size: 346.3 MB (346256771 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03e2f88cfe91bfd0588ad1d24598f8dc99a84f348053c45e495c2b412426fef5`  
		Last Modified: Tue, 18 Aug 2026 01:22:51 GMT  
		Size: 766.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30b25ffa8118428f1bf9c57925efa4874af3d39281062f1c4883f3ec1b008fd9`  
		Last Modified: Tue, 18 Aug 2026 01:22:52 GMT  
		Size: 555.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:319dded3c687c11117f099eb37274843073231231dfc96e3e4b0a7951fa1cc96`  
		Last Modified: Tue, 18 Aug 2026 01:22:53 GMT  
		Size: 595.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6ade2634e087160c6930cda7b28481f2a827af32306ff07a75c1ffe4fad796f`  
		Last Modified: Tue, 18 Aug 2026 01:22:53 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:17.0-20260817` - unknown; unknown

```console
$ docker pull odoo@sha256:3cf0323ac6f7d238ee1fec725e0faeb16685c6e105c1da621570ea982c7ffc6c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.8 MB (40849562 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e15b87b4a352b12b58ab558764084f67f43ba0059ffbcbd345540fd0e147ba4`

```dockerfile
```

-	Layers:
	-	`sha256:4bcd1712765ca86c0868778d9b0e07180a4b33136f0e09141f9874f3e7092a4b`  
		Last Modified: Tue, 18 Aug 2026 01:22:53 GMT  
		Size: 40.8 MB (40822093 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4e0f56518adaf7a8f3d11936e6b235cb0cb67fe411748acacc815820b4fcf440`  
		Last Modified: Tue, 18 Aug 2026 01:22:50 GMT  
		Size: 27.5 KB (27469 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:18`

```console
$ docker pull odoo@sha256:94421e37f01aaf9b32307f166e0b63d7345e1a9687fd2c414dc7aba474c19757
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
$ docker pull odoo@sha256:c8a24e2dc163f8fe1986226d16e7b0e19c78704d9135a5482494546cdea4864c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **673.5 MB (673482007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:923bfe32a76d1ef03d41e96b3d0e737151ed17f8baef5a77622862649f0dc3b5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Mon, 17 Aug 2026 13:09:48 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:09:48 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:09:48 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:09:50 GMT
ADD file:cb9335ce6f27399c2b17787739d6675502767c53e0335ded2a5f0d003d996650 in / 
# Mon, 17 Aug 2026 13:09:51 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:25:19 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 18 Aug 2026 19:25:19 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 18 Aug 2026 19:25:19 GMT
ENV LANG=en_US.UTF-8
# Tue, 18 Aug 2026 19:25:19 GMT
ARG TARGETARCH=amd64
# Tue, 18 Aug 2026 19:25:19 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 18 Aug 2026 19:25:25 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:25 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:25 GMT
ENV ODOO_VERSION=18.0
# Tue, 18 Aug 2026 19:26:25 GMT
ARG ODOO_RELEASE=20260817
# Tue, 18 Aug 2026 19:26:25 GMT
ARG ODOO_SHA=99716561524366617b0b4444ec15dc4300185b40
# Tue, 18 Aug 2026 19:27:16 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260817 ODOO_SHA=99716561524366617b0b4444ec15dc4300185b40
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 18 Aug 2026 19:27:17 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 18 Aug 2026 19:27:17 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 18 Aug 2026 19:27:17 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260817 ODOO_SHA=99716561524366617b0b4444ec15dc4300185b40
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 18 Aug 2026 19:27:17 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 18 Aug 2026 19:27:17 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 18 Aug 2026 19:27:17 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 18 Aug 2026 19:27:17 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 18 Aug 2026 19:27:17 GMT
USER odoo
# Tue, 18 Aug 2026 19:27:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Aug 2026 19:27:17 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32d855acdd0bfc6b48c53672c6dfc57290d020b21bb5b7d8ce44c746ff1682ae`  
		Last Modified: Tue, 18 Aug 2026 19:28:42 GMT  
		Size: 238.7 MB (238686707 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49b93650006dc8fbba714ee0d03f6dea3de5c10d33a3b2494d9f421698450253`  
		Last Modified: Tue, 18 Aug 2026 19:28:35 GMT  
		Size: 14.2 MB (14220880 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e12484c0c945629796316dd1bdab15d333ac0c96c726b21b4a50ad3ec6cc71c`  
		Last Modified: Tue, 18 Aug 2026 19:28:34 GMT  
		Size: 869.3 KB (869270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64feb8df90027bbebc817b0f0a0914253d6f90289aaea8a16776e9ea7cb64902`  
		Last Modified: Tue, 18 Aug 2026 19:28:45 GMT  
		Size: 389.9 MB (389949546 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddaa6fb049dccaee7ebbcab6f0cffa840f9d4bcccd0d61d98a804628b36e6f13`  
		Last Modified: Tue, 18 Aug 2026 19:28:35 GMT  
		Size: 766.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa8316bff9128bad1d1b02bf7393229f7f9ba85a744829ca2808f8be5ab74db2`  
		Last Modified: Tue, 18 Aug 2026 19:28:37 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbbd88cffa59df5394b910e11ff1c80b8dd51cf270da31d814347dd2b45916e1`  
		Last Modified: Tue, 18 Aug 2026 19:28:37 GMT  
		Size: 596.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5ed7f2f92769429e785300df5589e3e849de977d5309028c7277f5463e196e5`  
		Last Modified: Tue, 18 Aug 2026 19:28:38 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18` - unknown; unknown

```console
$ docker pull odoo@sha256:d95a924dd4007f925549b7dd5ee4cd79ab0d249ebe5c13a2c36bf73946695955
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.9 MB (43854516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75d5527b0818183ed729d4dad7ed08472ff9706293b400c595379b198ae093f6`

```dockerfile
```

-	Layers:
	-	`sha256:b3db08fc621ea5fe390942171d6023cffc11c0ebeea1b91c174322ea989e672e`  
		Last Modified: Tue, 18 Aug 2026 19:28:36 GMT  
		Size: 43.8 MB (43827319 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f368710e5ada6188ab456ef668ecbf77e4814fd9146bbcf5f094e543f147aee6`  
		Last Modified: Tue, 18 Aug 2026 19:28:34 GMT  
		Size: 27.2 KB (27197 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:18` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:a5f27b5ec8a6ddd9c2049a619b133c93e5ae5245d1aa5f26e323ec167d296e40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **669.8 MB (669848869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b60494ba2adb0e707f57e7cb316ae2af1af87040acb30db81f52b1fec4cd74ab`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Mon, 17 Aug 2026 13:11:31 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:11:31 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:11:31 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:11:34 GMT
ADD file:0387b3d029de8fa08641ccfaa44c6a4ad07b93035420d53b49783ea27527d153 in / 
# Mon, 17 Aug 2026 13:11:34 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:25:28 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 18 Aug 2026 19:25:28 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 18 Aug 2026 19:25:28 GMT
ENV LANG=en_US.UTF-8
# Tue, 18 Aug 2026 19:25:28 GMT
ARG TARGETARCH=arm64
# Tue, 18 Aug 2026 19:25:28 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 18 Aug 2026 19:25:35 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:31 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:31 GMT
ENV ODOO_VERSION=18.0
# Tue, 18 Aug 2026 19:26:31 GMT
ARG ODOO_RELEASE=20260817
# Tue, 18 Aug 2026 19:26:31 GMT
ARG ODOO_SHA=99716561524366617b0b4444ec15dc4300185b40
# Tue, 18 Aug 2026 19:27:30 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260817 ODOO_SHA=99716561524366617b0b4444ec15dc4300185b40
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 18 Aug 2026 19:27:31 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 18 Aug 2026 19:27:31 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 18 Aug 2026 19:27:31 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260817 ODOO_SHA=99716561524366617b0b4444ec15dc4300185b40
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 18 Aug 2026 19:27:31 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 18 Aug 2026 19:27:31 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 18 Aug 2026 19:27:31 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 18 Aug 2026 19:27:31 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 18 Aug 2026 19:27:31 GMT
USER odoo
# Tue, 18 Aug 2026 19:27:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Aug 2026 19:27:31 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7dcc7d7a9ab842693725bcef520ce48b040fcd372554b46f96b8d6ee6868bde`  
		Last Modified: Tue, 18 Aug 2026 19:29:04 GMT  
		Size: 236.1 MB (236102506 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e80f55b69e7c8cfc4a1eeed3519889c80ad625c4fb1670fc57548ad5a581a22`  
		Last Modified: Tue, 18 Aug 2026 19:28:56 GMT  
		Size: 14.2 MB (14188147 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5d640f4b16888738f15b24dd2f4596a794d309a13e37ba4a86ac3d6bbb7894e`  
		Last Modified: Tue, 18 Aug 2026 19:28:55 GMT  
		Size: 869.2 KB (869175 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4537ef868048218df876bcb195710456c274c59b2edcc11bdffef2dd38eb2996`  
		Last Modified: Tue, 18 Aug 2026 19:29:06 GMT  
		Size: 389.8 MB (389799012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7414c9bf65f45faeb171458af3ef5b042768ba580e64023a2f3abe26a1b5060d`  
		Last Modified: Tue, 18 Aug 2026 19:28:57 GMT  
		Size: 766.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:537822c1d83e27701a594fbb24cabdedb1e2ede8ff7c1b3a9265c06238dceb05`  
		Last Modified: Tue, 18 Aug 2026 19:28:58 GMT  
		Size: 555.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcdd23a1c67892acc07a28ef4b6d1b959c330fe3fed0fc2f2c465b3c671317ee`  
		Last Modified: Tue, 18 Aug 2026 19:28:58 GMT  
		Size: 595.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bc0ef65d98dc6144d3037ec4b1e7d0029d330f4181d54b7e8e78d4bc8882366`  
		Last Modified: Tue, 18 Aug 2026 19:28:59 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18` - unknown; unknown

```console
$ docker pull odoo@sha256:9826aa8a8b1b56bf897329818ba5201ecf4641ca60fbbe97a8c6431cacf2516d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.9 MB (43861940 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3270f221a056738265d2d8e137318338927fabd001e8ca9456a9cf527f196c6`

```dockerfile
```

-	Layers:
	-	`sha256:c3e955b98f8ca7148b9a3421892fe0409d903459395d02a00c23311b086e2524`  
		Last Modified: Tue, 18 Aug 2026 19:28:58 GMT  
		Size: 43.8 MB (43834591 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e5bf0dd7bdc1ac3e9acefa3c612c79080535155d0b100fe47d91b970e282a9d1`  
		Last Modified: Tue, 18 Aug 2026 19:28:55 GMT  
		Size: 27.3 KB (27349 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:18` - linux; ppc64le

```console
$ docker pull odoo@sha256:cf64ee630db8269e6ae67e4182e895bafa50053aa3b1d7a5edffda963389f793
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **692.3 MB (692265807 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4242322198a6615d26d841ed4f48bcea92f349d920a292cf3fbe86c2cc9e76d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Fri, 31 Jul 2026 20:44:29 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:44:29 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:44:29 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:44:32 GMT
ADD file:de84028a58b37b343ef7acd8f4c9a3bfde61683d6c522e683a978115b04d031b in / 
# Fri, 31 Jul 2026 20:44:33 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 02:14:01 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 04 Aug 2026 02:14:01 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 04 Aug 2026 02:14:01 GMT
ENV LANG=en_US.UTF-8
# Tue, 04 Aug 2026 02:14:01 GMT
ARG TARGETARCH=ppc64le
# Tue, 04 Aug 2026 02:14:01 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 04 Aug 2026 02:14:13 GMT
# ARGS: TARGETARCH=ppc64le
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:18:29 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:18:29 GMT
ENV ODOO_VERSION=18.0
# Tue, 04 Aug 2026 02:18:29 GMT
ARG ODOO_RELEASE=20260817
# Tue, 04 Aug 2026 02:18:29 GMT
ARG ODOO_SHA=99716561524366617b0b4444ec15dc4300185b40
# Mon, 17 Aug 2026 18:12:08 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260817 ODOO_SHA=99716561524366617b0b4444ec15dc4300185b40
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Mon, 17 Aug 2026 18:12:09 GMT
COPY ./entrypoint.sh / # buildkit
# Mon, 17 Aug 2026 18:12:09 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Mon, 17 Aug 2026 18:12:09 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260817 ODOO_SHA=99716561524366617b0b4444ec15dc4300185b40
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Mon, 17 Aug 2026 18:12:09 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Mon, 17 Aug 2026 18:12:09 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Mon, 17 Aug 2026 18:12:09 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Mon, 17 Aug 2026 18:12:09 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Mon, 17 Aug 2026 18:12:09 GMT
USER odoo
# Mon, 17 Aug 2026 18:12:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 17 Aug 2026 18:12:09 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:9d1bffbd46bb5cede430c07896855e38e8bfe397bbc67fe1808f03623a4aad12`  
		Last Modified: Fri, 31 Jul 2026 22:22:43 GMT  
		Size: 34.3 MB (34310673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6b80f0ff01e54e5f3e4db76f77d41df0cd7b71474ba53aee9e7d39e71dc5381`  
		Last Modified: Tue, 04 Aug 2026 02:24:27 GMT  
		Size: 251.9 MB (251870008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea489879c18085d21140c5f6599574d961476004172b12939c5306013e8c0c49`  
		Last Modified: Tue, 04 Aug 2026 02:24:18 GMT  
		Size: 14.7 MB (14730456 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16e0c5b3de369b12762f97eebe8d1c4ae15cbe6b228dc366b1ac31571a6da4c0`  
		Last Modified: Tue, 04 Aug 2026 02:24:17 GMT  
		Size: 868.5 KB (868536 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74c6da56b2279647b3bd1f00b053fb31a388bc86e5232d8d502baa3e423af868`  
		Last Modified: Mon, 17 Aug 2026 18:15:38 GMT  
		Size: 390.5 MB (390483336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3639e8d96fd80108e3536471c91d76e46e803c6d620880a2bf4e95625566141d`  
		Last Modified: Mon, 17 Aug 2026 18:15:28 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ac2b026539aee98ba580ef1413e9100169e4d5baf5eb59986375c6301126a89`  
		Last Modified: Mon, 17 Aug 2026 18:15:28 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08776322d7a82029bfd44bb3a3cc4cd19c419a745615c3cbb40ccd084f5e195d`  
		Last Modified: Mon, 17 Aug 2026 18:15:28 GMT  
		Size: 596.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c09be78e4c41f32b1654e72db4fc18a8c5d6710b3114e232037088f5c2c39db4`  
		Last Modified: Mon, 17 Aug 2026 18:15:30 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18` - unknown; unknown

```console
$ docker pull odoo@sha256:2d77ad3f24280293f20381dd4e539101787203e50a33961467421c4fbe611a7f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.9 MB (43862936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b264a33b0ae14d630ef47bb9b3227f446fe7a089933ac6916a1d506bdf9e8d70`

```dockerfile
```

-	Layers:
	-	`sha256:051e2f81aa5233547e2ee131662c9137c0836f442fdc3b843244451c5a146eae`  
		Last Modified: Mon, 17 Aug 2026 18:15:31 GMT  
		Size: 43.8 MB (43835683 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:642f2530697f92b3168a4978d652f1d2f2bad38addfba015169dac3f31c264a8`  
		Last Modified: Mon, 17 Aug 2026 18:15:28 GMT  
		Size: 27.3 KB (27253 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:18.0`

```console
$ docker pull odoo@sha256:94421e37f01aaf9b32307f166e0b63d7345e1a9687fd2c414dc7aba474c19757
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
$ docker pull odoo@sha256:c8a24e2dc163f8fe1986226d16e7b0e19c78704d9135a5482494546cdea4864c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **673.5 MB (673482007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:923bfe32a76d1ef03d41e96b3d0e737151ed17f8baef5a77622862649f0dc3b5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Mon, 17 Aug 2026 13:09:48 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:09:48 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:09:48 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:09:50 GMT
ADD file:cb9335ce6f27399c2b17787739d6675502767c53e0335ded2a5f0d003d996650 in / 
# Mon, 17 Aug 2026 13:09:51 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:25:19 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 18 Aug 2026 19:25:19 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 18 Aug 2026 19:25:19 GMT
ENV LANG=en_US.UTF-8
# Tue, 18 Aug 2026 19:25:19 GMT
ARG TARGETARCH=amd64
# Tue, 18 Aug 2026 19:25:19 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 18 Aug 2026 19:25:25 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:25 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:25 GMT
ENV ODOO_VERSION=18.0
# Tue, 18 Aug 2026 19:26:25 GMT
ARG ODOO_RELEASE=20260817
# Tue, 18 Aug 2026 19:26:25 GMT
ARG ODOO_SHA=99716561524366617b0b4444ec15dc4300185b40
# Tue, 18 Aug 2026 19:27:16 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260817 ODOO_SHA=99716561524366617b0b4444ec15dc4300185b40
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 18 Aug 2026 19:27:17 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 18 Aug 2026 19:27:17 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 18 Aug 2026 19:27:17 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260817 ODOO_SHA=99716561524366617b0b4444ec15dc4300185b40
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 18 Aug 2026 19:27:17 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 18 Aug 2026 19:27:17 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 18 Aug 2026 19:27:17 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 18 Aug 2026 19:27:17 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 18 Aug 2026 19:27:17 GMT
USER odoo
# Tue, 18 Aug 2026 19:27:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Aug 2026 19:27:17 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32d855acdd0bfc6b48c53672c6dfc57290d020b21bb5b7d8ce44c746ff1682ae`  
		Last Modified: Tue, 18 Aug 2026 19:28:42 GMT  
		Size: 238.7 MB (238686707 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49b93650006dc8fbba714ee0d03f6dea3de5c10d33a3b2494d9f421698450253`  
		Last Modified: Tue, 18 Aug 2026 19:28:35 GMT  
		Size: 14.2 MB (14220880 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e12484c0c945629796316dd1bdab15d333ac0c96c726b21b4a50ad3ec6cc71c`  
		Last Modified: Tue, 18 Aug 2026 19:28:34 GMT  
		Size: 869.3 KB (869270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64feb8df90027bbebc817b0f0a0914253d6f90289aaea8a16776e9ea7cb64902`  
		Last Modified: Tue, 18 Aug 2026 19:28:45 GMT  
		Size: 389.9 MB (389949546 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddaa6fb049dccaee7ebbcab6f0cffa840f9d4bcccd0d61d98a804628b36e6f13`  
		Last Modified: Tue, 18 Aug 2026 19:28:35 GMT  
		Size: 766.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa8316bff9128bad1d1b02bf7393229f7f9ba85a744829ca2808f8be5ab74db2`  
		Last Modified: Tue, 18 Aug 2026 19:28:37 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbbd88cffa59df5394b910e11ff1c80b8dd51cf270da31d814347dd2b45916e1`  
		Last Modified: Tue, 18 Aug 2026 19:28:37 GMT  
		Size: 596.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5ed7f2f92769429e785300df5589e3e849de977d5309028c7277f5463e196e5`  
		Last Modified: Tue, 18 Aug 2026 19:28:38 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18.0` - unknown; unknown

```console
$ docker pull odoo@sha256:d95a924dd4007f925549b7dd5ee4cd79ab0d249ebe5c13a2c36bf73946695955
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.9 MB (43854516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75d5527b0818183ed729d4dad7ed08472ff9706293b400c595379b198ae093f6`

```dockerfile
```

-	Layers:
	-	`sha256:b3db08fc621ea5fe390942171d6023cffc11c0ebeea1b91c174322ea989e672e`  
		Last Modified: Tue, 18 Aug 2026 19:28:36 GMT  
		Size: 43.8 MB (43827319 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f368710e5ada6188ab456ef668ecbf77e4814fd9146bbcf5f094e543f147aee6`  
		Last Modified: Tue, 18 Aug 2026 19:28:34 GMT  
		Size: 27.2 KB (27197 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:18.0` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:a5f27b5ec8a6ddd9c2049a619b133c93e5ae5245d1aa5f26e323ec167d296e40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **669.8 MB (669848869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b60494ba2adb0e707f57e7cb316ae2af1af87040acb30db81f52b1fec4cd74ab`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Mon, 17 Aug 2026 13:11:31 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:11:31 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:11:31 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:11:34 GMT
ADD file:0387b3d029de8fa08641ccfaa44c6a4ad07b93035420d53b49783ea27527d153 in / 
# Mon, 17 Aug 2026 13:11:34 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:25:28 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 18 Aug 2026 19:25:28 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 18 Aug 2026 19:25:28 GMT
ENV LANG=en_US.UTF-8
# Tue, 18 Aug 2026 19:25:28 GMT
ARG TARGETARCH=arm64
# Tue, 18 Aug 2026 19:25:28 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 18 Aug 2026 19:25:35 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:31 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:31 GMT
ENV ODOO_VERSION=18.0
# Tue, 18 Aug 2026 19:26:31 GMT
ARG ODOO_RELEASE=20260817
# Tue, 18 Aug 2026 19:26:31 GMT
ARG ODOO_SHA=99716561524366617b0b4444ec15dc4300185b40
# Tue, 18 Aug 2026 19:27:30 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260817 ODOO_SHA=99716561524366617b0b4444ec15dc4300185b40
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 18 Aug 2026 19:27:31 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 18 Aug 2026 19:27:31 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 18 Aug 2026 19:27:31 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260817 ODOO_SHA=99716561524366617b0b4444ec15dc4300185b40
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 18 Aug 2026 19:27:31 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 18 Aug 2026 19:27:31 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 18 Aug 2026 19:27:31 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 18 Aug 2026 19:27:31 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 18 Aug 2026 19:27:31 GMT
USER odoo
# Tue, 18 Aug 2026 19:27:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Aug 2026 19:27:31 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7dcc7d7a9ab842693725bcef520ce48b040fcd372554b46f96b8d6ee6868bde`  
		Last Modified: Tue, 18 Aug 2026 19:29:04 GMT  
		Size: 236.1 MB (236102506 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e80f55b69e7c8cfc4a1eeed3519889c80ad625c4fb1670fc57548ad5a581a22`  
		Last Modified: Tue, 18 Aug 2026 19:28:56 GMT  
		Size: 14.2 MB (14188147 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5d640f4b16888738f15b24dd2f4596a794d309a13e37ba4a86ac3d6bbb7894e`  
		Last Modified: Tue, 18 Aug 2026 19:28:55 GMT  
		Size: 869.2 KB (869175 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4537ef868048218df876bcb195710456c274c59b2edcc11bdffef2dd38eb2996`  
		Last Modified: Tue, 18 Aug 2026 19:29:06 GMT  
		Size: 389.8 MB (389799012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7414c9bf65f45faeb171458af3ef5b042768ba580e64023a2f3abe26a1b5060d`  
		Last Modified: Tue, 18 Aug 2026 19:28:57 GMT  
		Size: 766.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:537822c1d83e27701a594fbb24cabdedb1e2ede8ff7c1b3a9265c06238dceb05`  
		Last Modified: Tue, 18 Aug 2026 19:28:58 GMT  
		Size: 555.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcdd23a1c67892acc07a28ef4b6d1b959c330fe3fed0fc2f2c465b3c671317ee`  
		Last Modified: Tue, 18 Aug 2026 19:28:58 GMT  
		Size: 595.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bc0ef65d98dc6144d3037ec4b1e7d0029d330f4181d54b7e8e78d4bc8882366`  
		Last Modified: Tue, 18 Aug 2026 19:28:59 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18.0` - unknown; unknown

```console
$ docker pull odoo@sha256:9826aa8a8b1b56bf897329818ba5201ecf4641ca60fbbe97a8c6431cacf2516d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.9 MB (43861940 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3270f221a056738265d2d8e137318338927fabd001e8ca9456a9cf527f196c6`

```dockerfile
```

-	Layers:
	-	`sha256:c3e955b98f8ca7148b9a3421892fe0409d903459395d02a00c23311b086e2524`  
		Last Modified: Tue, 18 Aug 2026 19:28:58 GMT  
		Size: 43.8 MB (43834591 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e5bf0dd7bdc1ac3e9acefa3c612c79080535155d0b100fe47d91b970e282a9d1`  
		Last Modified: Tue, 18 Aug 2026 19:28:55 GMT  
		Size: 27.3 KB (27349 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:18.0` - linux; ppc64le

```console
$ docker pull odoo@sha256:cf64ee630db8269e6ae67e4182e895bafa50053aa3b1d7a5edffda963389f793
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **692.3 MB (692265807 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4242322198a6615d26d841ed4f48bcea92f349d920a292cf3fbe86c2cc9e76d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Fri, 31 Jul 2026 20:44:29 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:44:29 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:44:29 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:44:32 GMT
ADD file:de84028a58b37b343ef7acd8f4c9a3bfde61683d6c522e683a978115b04d031b in / 
# Fri, 31 Jul 2026 20:44:33 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 02:14:01 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 04 Aug 2026 02:14:01 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 04 Aug 2026 02:14:01 GMT
ENV LANG=en_US.UTF-8
# Tue, 04 Aug 2026 02:14:01 GMT
ARG TARGETARCH=ppc64le
# Tue, 04 Aug 2026 02:14:01 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 04 Aug 2026 02:14:13 GMT
# ARGS: TARGETARCH=ppc64le
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:18:29 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:18:29 GMT
ENV ODOO_VERSION=18.0
# Tue, 04 Aug 2026 02:18:29 GMT
ARG ODOO_RELEASE=20260817
# Tue, 04 Aug 2026 02:18:29 GMT
ARG ODOO_SHA=99716561524366617b0b4444ec15dc4300185b40
# Mon, 17 Aug 2026 18:12:08 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260817 ODOO_SHA=99716561524366617b0b4444ec15dc4300185b40
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Mon, 17 Aug 2026 18:12:09 GMT
COPY ./entrypoint.sh / # buildkit
# Mon, 17 Aug 2026 18:12:09 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Mon, 17 Aug 2026 18:12:09 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260817 ODOO_SHA=99716561524366617b0b4444ec15dc4300185b40
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Mon, 17 Aug 2026 18:12:09 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Mon, 17 Aug 2026 18:12:09 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Mon, 17 Aug 2026 18:12:09 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Mon, 17 Aug 2026 18:12:09 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Mon, 17 Aug 2026 18:12:09 GMT
USER odoo
# Mon, 17 Aug 2026 18:12:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 17 Aug 2026 18:12:09 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:9d1bffbd46bb5cede430c07896855e38e8bfe397bbc67fe1808f03623a4aad12`  
		Last Modified: Fri, 31 Jul 2026 22:22:43 GMT  
		Size: 34.3 MB (34310673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6b80f0ff01e54e5f3e4db76f77d41df0cd7b71474ba53aee9e7d39e71dc5381`  
		Last Modified: Tue, 04 Aug 2026 02:24:27 GMT  
		Size: 251.9 MB (251870008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea489879c18085d21140c5f6599574d961476004172b12939c5306013e8c0c49`  
		Last Modified: Tue, 04 Aug 2026 02:24:18 GMT  
		Size: 14.7 MB (14730456 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16e0c5b3de369b12762f97eebe8d1c4ae15cbe6b228dc366b1ac31571a6da4c0`  
		Last Modified: Tue, 04 Aug 2026 02:24:17 GMT  
		Size: 868.5 KB (868536 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74c6da56b2279647b3bd1f00b053fb31a388bc86e5232d8d502baa3e423af868`  
		Last Modified: Mon, 17 Aug 2026 18:15:38 GMT  
		Size: 390.5 MB (390483336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3639e8d96fd80108e3536471c91d76e46e803c6d620880a2bf4e95625566141d`  
		Last Modified: Mon, 17 Aug 2026 18:15:28 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ac2b026539aee98ba580ef1413e9100169e4d5baf5eb59986375c6301126a89`  
		Last Modified: Mon, 17 Aug 2026 18:15:28 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08776322d7a82029bfd44bb3a3cc4cd19c419a745615c3cbb40ccd084f5e195d`  
		Last Modified: Mon, 17 Aug 2026 18:15:28 GMT  
		Size: 596.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c09be78e4c41f32b1654e72db4fc18a8c5d6710b3114e232037088f5c2c39db4`  
		Last Modified: Mon, 17 Aug 2026 18:15:30 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18.0` - unknown; unknown

```console
$ docker pull odoo@sha256:2d77ad3f24280293f20381dd4e539101787203e50a33961467421c4fbe611a7f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.9 MB (43862936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b264a33b0ae14d630ef47bb9b3227f446fe7a089933ac6916a1d506bdf9e8d70`

```dockerfile
```

-	Layers:
	-	`sha256:051e2f81aa5233547e2ee131662c9137c0836f442fdc3b843244451c5a146eae`  
		Last Modified: Mon, 17 Aug 2026 18:15:31 GMT  
		Size: 43.8 MB (43835683 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:642f2530697f92b3168a4978d652f1d2f2bad38addfba015169dac3f31c264a8`  
		Last Modified: Mon, 17 Aug 2026 18:15:28 GMT  
		Size: 27.3 KB (27253 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:18.0-20260817`

```console
$ docker pull odoo@sha256:94421e37f01aaf9b32307f166e0b63d7345e1a9687fd2c414dc7aba474c19757
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `odoo:18.0-20260817` - linux; amd64

```console
$ docker pull odoo@sha256:c8a24e2dc163f8fe1986226d16e7b0e19c78704d9135a5482494546cdea4864c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **673.5 MB (673482007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:923bfe32a76d1ef03d41e96b3d0e737151ed17f8baef5a77622862649f0dc3b5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Mon, 17 Aug 2026 13:09:48 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:09:48 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:09:48 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:09:50 GMT
ADD file:cb9335ce6f27399c2b17787739d6675502767c53e0335ded2a5f0d003d996650 in / 
# Mon, 17 Aug 2026 13:09:51 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:25:19 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 18 Aug 2026 19:25:19 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 18 Aug 2026 19:25:19 GMT
ENV LANG=en_US.UTF-8
# Tue, 18 Aug 2026 19:25:19 GMT
ARG TARGETARCH=amd64
# Tue, 18 Aug 2026 19:25:19 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 18 Aug 2026 19:25:25 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:25 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:25 GMT
ENV ODOO_VERSION=18.0
# Tue, 18 Aug 2026 19:26:25 GMT
ARG ODOO_RELEASE=20260817
# Tue, 18 Aug 2026 19:26:25 GMT
ARG ODOO_SHA=99716561524366617b0b4444ec15dc4300185b40
# Tue, 18 Aug 2026 19:27:16 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260817 ODOO_SHA=99716561524366617b0b4444ec15dc4300185b40
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 18 Aug 2026 19:27:17 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 18 Aug 2026 19:27:17 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 18 Aug 2026 19:27:17 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260817 ODOO_SHA=99716561524366617b0b4444ec15dc4300185b40
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 18 Aug 2026 19:27:17 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 18 Aug 2026 19:27:17 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 18 Aug 2026 19:27:17 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 18 Aug 2026 19:27:17 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 18 Aug 2026 19:27:17 GMT
USER odoo
# Tue, 18 Aug 2026 19:27:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Aug 2026 19:27:17 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32d855acdd0bfc6b48c53672c6dfc57290d020b21bb5b7d8ce44c746ff1682ae`  
		Last Modified: Tue, 18 Aug 2026 19:28:42 GMT  
		Size: 238.7 MB (238686707 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49b93650006dc8fbba714ee0d03f6dea3de5c10d33a3b2494d9f421698450253`  
		Last Modified: Tue, 18 Aug 2026 19:28:35 GMT  
		Size: 14.2 MB (14220880 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e12484c0c945629796316dd1bdab15d333ac0c96c726b21b4a50ad3ec6cc71c`  
		Last Modified: Tue, 18 Aug 2026 19:28:34 GMT  
		Size: 869.3 KB (869270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64feb8df90027bbebc817b0f0a0914253d6f90289aaea8a16776e9ea7cb64902`  
		Last Modified: Tue, 18 Aug 2026 19:28:45 GMT  
		Size: 389.9 MB (389949546 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddaa6fb049dccaee7ebbcab6f0cffa840f9d4bcccd0d61d98a804628b36e6f13`  
		Last Modified: Tue, 18 Aug 2026 19:28:35 GMT  
		Size: 766.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa8316bff9128bad1d1b02bf7393229f7f9ba85a744829ca2808f8be5ab74db2`  
		Last Modified: Tue, 18 Aug 2026 19:28:37 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbbd88cffa59df5394b910e11ff1c80b8dd51cf270da31d814347dd2b45916e1`  
		Last Modified: Tue, 18 Aug 2026 19:28:37 GMT  
		Size: 596.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5ed7f2f92769429e785300df5589e3e849de977d5309028c7277f5463e196e5`  
		Last Modified: Tue, 18 Aug 2026 19:28:38 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18.0-20260817` - unknown; unknown

```console
$ docker pull odoo@sha256:d95a924dd4007f925549b7dd5ee4cd79ab0d249ebe5c13a2c36bf73946695955
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.9 MB (43854516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75d5527b0818183ed729d4dad7ed08472ff9706293b400c595379b198ae093f6`

```dockerfile
```

-	Layers:
	-	`sha256:b3db08fc621ea5fe390942171d6023cffc11c0ebeea1b91c174322ea989e672e`  
		Last Modified: Tue, 18 Aug 2026 19:28:36 GMT  
		Size: 43.8 MB (43827319 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f368710e5ada6188ab456ef668ecbf77e4814fd9146bbcf5f094e543f147aee6`  
		Last Modified: Tue, 18 Aug 2026 19:28:34 GMT  
		Size: 27.2 KB (27197 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:18.0-20260817` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:a5f27b5ec8a6ddd9c2049a619b133c93e5ae5245d1aa5f26e323ec167d296e40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **669.8 MB (669848869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b60494ba2adb0e707f57e7cb316ae2af1af87040acb30db81f52b1fec4cd74ab`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Mon, 17 Aug 2026 13:11:31 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:11:31 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:11:31 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:11:34 GMT
ADD file:0387b3d029de8fa08641ccfaa44c6a4ad07b93035420d53b49783ea27527d153 in / 
# Mon, 17 Aug 2026 13:11:34 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:25:28 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 18 Aug 2026 19:25:28 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 18 Aug 2026 19:25:28 GMT
ENV LANG=en_US.UTF-8
# Tue, 18 Aug 2026 19:25:28 GMT
ARG TARGETARCH=arm64
# Tue, 18 Aug 2026 19:25:28 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 18 Aug 2026 19:25:35 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:31 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:31 GMT
ENV ODOO_VERSION=18.0
# Tue, 18 Aug 2026 19:26:31 GMT
ARG ODOO_RELEASE=20260817
# Tue, 18 Aug 2026 19:26:31 GMT
ARG ODOO_SHA=99716561524366617b0b4444ec15dc4300185b40
# Tue, 18 Aug 2026 19:27:30 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260817 ODOO_SHA=99716561524366617b0b4444ec15dc4300185b40
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 18 Aug 2026 19:27:31 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 18 Aug 2026 19:27:31 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 18 Aug 2026 19:27:31 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260817 ODOO_SHA=99716561524366617b0b4444ec15dc4300185b40
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 18 Aug 2026 19:27:31 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 18 Aug 2026 19:27:31 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 18 Aug 2026 19:27:31 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 18 Aug 2026 19:27:31 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 18 Aug 2026 19:27:31 GMT
USER odoo
# Tue, 18 Aug 2026 19:27:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Aug 2026 19:27:31 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7dcc7d7a9ab842693725bcef520ce48b040fcd372554b46f96b8d6ee6868bde`  
		Last Modified: Tue, 18 Aug 2026 19:29:04 GMT  
		Size: 236.1 MB (236102506 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e80f55b69e7c8cfc4a1eeed3519889c80ad625c4fb1670fc57548ad5a581a22`  
		Last Modified: Tue, 18 Aug 2026 19:28:56 GMT  
		Size: 14.2 MB (14188147 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5d640f4b16888738f15b24dd2f4596a794d309a13e37ba4a86ac3d6bbb7894e`  
		Last Modified: Tue, 18 Aug 2026 19:28:55 GMT  
		Size: 869.2 KB (869175 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4537ef868048218df876bcb195710456c274c59b2edcc11bdffef2dd38eb2996`  
		Last Modified: Tue, 18 Aug 2026 19:29:06 GMT  
		Size: 389.8 MB (389799012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7414c9bf65f45faeb171458af3ef5b042768ba580e64023a2f3abe26a1b5060d`  
		Last Modified: Tue, 18 Aug 2026 19:28:57 GMT  
		Size: 766.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:537822c1d83e27701a594fbb24cabdedb1e2ede8ff7c1b3a9265c06238dceb05`  
		Last Modified: Tue, 18 Aug 2026 19:28:58 GMT  
		Size: 555.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcdd23a1c67892acc07a28ef4b6d1b959c330fe3fed0fc2f2c465b3c671317ee`  
		Last Modified: Tue, 18 Aug 2026 19:28:58 GMT  
		Size: 595.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bc0ef65d98dc6144d3037ec4b1e7d0029d330f4181d54b7e8e78d4bc8882366`  
		Last Modified: Tue, 18 Aug 2026 19:28:59 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18.0-20260817` - unknown; unknown

```console
$ docker pull odoo@sha256:9826aa8a8b1b56bf897329818ba5201ecf4641ca60fbbe97a8c6431cacf2516d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.9 MB (43861940 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3270f221a056738265d2d8e137318338927fabd001e8ca9456a9cf527f196c6`

```dockerfile
```

-	Layers:
	-	`sha256:c3e955b98f8ca7148b9a3421892fe0409d903459395d02a00c23311b086e2524`  
		Last Modified: Tue, 18 Aug 2026 19:28:58 GMT  
		Size: 43.8 MB (43834591 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e5bf0dd7bdc1ac3e9acefa3c612c79080535155d0b100fe47d91b970e282a9d1`  
		Last Modified: Tue, 18 Aug 2026 19:28:55 GMT  
		Size: 27.3 KB (27349 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:18.0-20260817` - linux; ppc64le

```console
$ docker pull odoo@sha256:cf64ee630db8269e6ae67e4182e895bafa50053aa3b1d7a5edffda963389f793
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **692.3 MB (692265807 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4242322198a6615d26d841ed4f48bcea92f349d920a292cf3fbe86c2cc9e76d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Fri, 31 Jul 2026 20:44:29 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:44:29 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:44:29 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:44:32 GMT
ADD file:de84028a58b37b343ef7acd8f4c9a3bfde61683d6c522e683a978115b04d031b in / 
# Fri, 31 Jul 2026 20:44:33 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 02:14:01 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 04 Aug 2026 02:14:01 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 04 Aug 2026 02:14:01 GMT
ENV LANG=en_US.UTF-8
# Tue, 04 Aug 2026 02:14:01 GMT
ARG TARGETARCH=ppc64le
# Tue, 04 Aug 2026 02:14:01 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 04 Aug 2026 02:14:13 GMT
# ARGS: TARGETARCH=ppc64le
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:18:29 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:18:29 GMT
ENV ODOO_VERSION=18.0
# Tue, 04 Aug 2026 02:18:29 GMT
ARG ODOO_RELEASE=20260817
# Tue, 04 Aug 2026 02:18:29 GMT
ARG ODOO_SHA=99716561524366617b0b4444ec15dc4300185b40
# Mon, 17 Aug 2026 18:12:08 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260817 ODOO_SHA=99716561524366617b0b4444ec15dc4300185b40
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Mon, 17 Aug 2026 18:12:09 GMT
COPY ./entrypoint.sh / # buildkit
# Mon, 17 Aug 2026 18:12:09 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Mon, 17 Aug 2026 18:12:09 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260817 ODOO_SHA=99716561524366617b0b4444ec15dc4300185b40
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Mon, 17 Aug 2026 18:12:09 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Mon, 17 Aug 2026 18:12:09 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Mon, 17 Aug 2026 18:12:09 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Mon, 17 Aug 2026 18:12:09 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Mon, 17 Aug 2026 18:12:09 GMT
USER odoo
# Mon, 17 Aug 2026 18:12:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 17 Aug 2026 18:12:09 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:9d1bffbd46bb5cede430c07896855e38e8bfe397bbc67fe1808f03623a4aad12`  
		Last Modified: Fri, 31 Jul 2026 22:22:43 GMT  
		Size: 34.3 MB (34310673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6b80f0ff01e54e5f3e4db76f77d41df0cd7b71474ba53aee9e7d39e71dc5381`  
		Last Modified: Tue, 04 Aug 2026 02:24:27 GMT  
		Size: 251.9 MB (251870008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea489879c18085d21140c5f6599574d961476004172b12939c5306013e8c0c49`  
		Last Modified: Tue, 04 Aug 2026 02:24:18 GMT  
		Size: 14.7 MB (14730456 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16e0c5b3de369b12762f97eebe8d1c4ae15cbe6b228dc366b1ac31571a6da4c0`  
		Last Modified: Tue, 04 Aug 2026 02:24:17 GMT  
		Size: 868.5 KB (868536 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74c6da56b2279647b3bd1f00b053fb31a388bc86e5232d8d502baa3e423af868`  
		Last Modified: Mon, 17 Aug 2026 18:15:38 GMT  
		Size: 390.5 MB (390483336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3639e8d96fd80108e3536471c91d76e46e803c6d620880a2bf4e95625566141d`  
		Last Modified: Mon, 17 Aug 2026 18:15:28 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ac2b026539aee98ba580ef1413e9100169e4d5baf5eb59986375c6301126a89`  
		Last Modified: Mon, 17 Aug 2026 18:15:28 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08776322d7a82029bfd44bb3a3cc4cd19c419a745615c3cbb40ccd084f5e195d`  
		Last Modified: Mon, 17 Aug 2026 18:15:28 GMT  
		Size: 596.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c09be78e4c41f32b1654e72db4fc18a8c5d6710b3114e232037088f5c2c39db4`  
		Last Modified: Mon, 17 Aug 2026 18:15:30 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18.0-20260817` - unknown; unknown

```console
$ docker pull odoo@sha256:2d77ad3f24280293f20381dd4e539101787203e50a33961467421c4fbe611a7f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.9 MB (43862936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b264a33b0ae14d630ef47bb9b3227f446fe7a089933ac6916a1d506bdf9e8d70`

```dockerfile
```

-	Layers:
	-	`sha256:051e2f81aa5233547e2ee131662c9137c0836f442fdc3b843244451c5a146eae`  
		Last Modified: Mon, 17 Aug 2026 18:15:31 GMT  
		Size: 43.8 MB (43835683 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:642f2530697f92b3168a4978d652f1d2f2bad38addfba015169dac3f31c264a8`  
		Last Modified: Mon, 17 Aug 2026 18:15:28 GMT  
		Size: 27.3 KB (27253 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:19`

```console
$ docker pull odoo@sha256:4a96c54e7ccddc83ab3baba00be8f7cac418cbd5bd0291247ed1bba8bbd5d5e7
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
$ docker pull odoo@sha256:58ddf2d09623931292435f00d6cc0d9c25b0382636c3ff6037e43abfb698fa29
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **696.8 MB (696788564 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b035658c87344395df999c4ad196dd81e25be7a2e3c94cad4b87b87588afc939`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Mon, 17 Aug 2026 13:09:48 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:09:48 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:09:48 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:09:50 GMT
ADD file:cb9335ce6f27399c2b17787739d6675502767c53e0335ded2a5f0d003d996650 in / 
# Mon, 17 Aug 2026 13:09:51 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:25:14 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 18 Aug 2026 19:25:14 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 18 Aug 2026 19:25:14 GMT
ENV LANG=en_US.UTF-8
# Tue, 18 Aug 2026 19:25:14 GMT
ARG TARGETARCH=amd64
# Tue, 18 Aug 2026 19:25:14 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 18 Aug 2026 19:25:19 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:22 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:22 GMT
ENV ODOO_VERSION=19.0
# Tue, 18 Aug 2026 19:26:22 GMT
ARG ODOO_RELEASE=20260817
# Tue, 18 Aug 2026 19:26:22 GMT
ARG ODOO_SHA=7e6c102efc7e2ad56801432fef7e2e0d2f703e5a
# Tue, 18 Aug 2026 19:27:31 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260817 ODOO_SHA=7e6c102efc7e2ad56801432fef7e2e0d2f703e5a
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 18 Aug 2026 19:27:31 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 18 Aug 2026 19:27:31 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 18 Aug 2026 19:27:31 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260817 ODOO_SHA=7e6c102efc7e2ad56801432fef7e2e0d2f703e5a
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 18 Aug 2026 19:27:31 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 18 Aug 2026 19:27:31 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 18 Aug 2026 19:27:31 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 18 Aug 2026 19:27:31 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 18 Aug 2026 19:27:31 GMT
USER odoo
# Tue, 18 Aug 2026 19:27:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Aug 2026 19:27:31 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b42e62ec05eff9e2b262b8b6e09a8dcdad7d8dc625733d4740244200cd3a2a5`  
		Last Modified: Tue, 18 Aug 2026 19:29:24 GMT  
		Size: 238.7 MB (238685508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:baa0480330c95b56faab40b71b0a035cad10c8242e4494b5ee7d6cfa0f3f5683`  
		Last Modified: Tue, 18 Aug 2026 19:29:12 GMT  
		Size: 14.2 MB (14221601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:638d28cb59e3a34547fd2fa72edccfab96bd19f49853e8bcad89a9cda259da10`  
		Last Modified: Tue, 18 Aug 2026 19:29:11 GMT  
		Size: 869.4 KB (869372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16747e58e0076d581f08948a771606bc7a1aa1030346c4310039b3612130b427`  
		Last Modified: Tue, 18 Aug 2026 19:29:29 GMT  
		Size: 413.3 MB (413256535 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:263419c46f7d122fa1a8ce1e51b9d2a123a1da6897af7165669d504f710b1049`  
		Last Modified: Tue, 18 Aug 2026 19:29:12 GMT  
		Size: 716.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20ff752012cd78b99355f78e6429e47d0d5f1c7614b76438d34dde51113285fe`  
		Last Modified: Tue, 18 Aug 2026 19:29:14 GMT  
		Size: 554.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:061011a546a47d0eca61dc4f7129fbf0c1adfea6db8cc93cdd5afc296cb12543`  
		Last Modified: Tue, 18 Aug 2026 19:29:14 GMT  
		Size: 594.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bcbf66303919ceca1f0574705801a3e600a630417a71eaec9cde984510368c3`  
		Last Modified: Tue, 18 Aug 2026 19:29:15 GMT  
		Size: 877.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19` - unknown; unknown

```console
$ docker pull odoo@sha256:9b3d132dc1ddbc039cce4ed7fde82eb7bfc189ddb9fda1b0df3de4bd31ed70f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.3 MB (52314408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83ae3b52df8cdcc8e32975ce1beaf8bfc8498694dd43443f0220ade807ec9eb5`

```dockerfile
```

-	Layers:
	-	`sha256:e81187ab2ab2706848bfa02d1ad89c1f4156b36f3d21fbbdea369499b6281e0c`  
		Last Modified: Tue, 18 Aug 2026 19:29:14 GMT  
		Size: 52.3 MB (52286917 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3fd68181a7b3f04cfb83251c995aa477d42ac16ffd835e115af95fed07357b5e`  
		Last Modified: Tue, 18 Aug 2026 19:29:11 GMT  
		Size: 27.5 KB (27491 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:19` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:2642cda15f9c3ff83cf36e98d138747a3321c83c69eba18e7ef8a3baa8ce3919
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **693.2 MB (693167101 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d290f6c7ba1103f9faf5ede92b59fdc416246f06a67f1f443f6539fd76319fc0`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Mon, 17 Aug 2026 13:11:31 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:11:31 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:11:31 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:11:34 GMT
ADD file:0387b3d029de8fa08641ccfaa44c6a4ad07b93035420d53b49783ea27527d153 in / 
# Mon, 17 Aug 2026 13:11:34 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:25:22 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 18 Aug 2026 19:25:22 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 18 Aug 2026 19:25:22 GMT
ENV LANG=en_US.UTF-8
# Tue, 18 Aug 2026 19:25:22 GMT
ARG TARGETARCH=arm64
# Tue, 18 Aug 2026 19:25:22 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 18 Aug 2026 19:25:29 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:25 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:25 GMT
ENV ODOO_VERSION=19.0
# Tue, 18 Aug 2026 19:26:25 GMT
ARG ODOO_RELEASE=20260817
# Tue, 18 Aug 2026 19:26:25 GMT
ARG ODOO_SHA=7e6c102efc7e2ad56801432fef7e2e0d2f703e5a
# Tue, 18 Aug 2026 19:27:35 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260817 ODOO_SHA=7e6c102efc7e2ad56801432fef7e2e0d2f703e5a
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 18 Aug 2026 19:27:35 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 18 Aug 2026 19:27:35 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 18 Aug 2026 19:27:35 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260817 ODOO_SHA=7e6c102efc7e2ad56801432fef7e2e0d2f703e5a
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 18 Aug 2026 19:27:35 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 18 Aug 2026 19:27:35 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 18 Aug 2026 19:27:35 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 18 Aug 2026 19:27:35 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 18 Aug 2026 19:27:35 GMT
USER odoo
# Tue, 18 Aug 2026 19:27:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Aug 2026 19:27:35 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da0e0af374879dc58e2f2e4a134b34fc856795e2bf088563f8a92723fe28b663`  
		Last Modified: Tue, 18 Aug 2026 19:29:31 GMT  
		Size: 236.1 MB (236104044 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:893a4de64bd005c8d7d69535831774de586f93f6189c3df6bbf2d2e3f4bf58c7`  
		Last Modified: Tue, 18 Aug 2026 19:29:24 GMT  
		Size: 14.2 MB (14187881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33e047c66fe288fb129022aa2b4696e2f4feec700c9f8afcc2c76f3f6f77d1e5`  
		Last Modified: Tue, 18 Aug 2026 19:29:23 GMT  
		Size: 869.2 KB (869250 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fb0500e6428e675dc6aff654201c02c8db5e36a44bb8567d7c9d41f3771c32a`  
		Last Modified: Tue, 18 Aug 2026 19:29:35 GMT  
		Size: 413.1 MB (413115947 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79fbb39860a92977f6c267becef4851333eb9aec5899a1deb23205cc97236fe3`  
		Last Modified: Tue, 18 Aug 2026 19:29:24 GMT  
		Size: 716.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e13564a3b0b63965281e929a7cd110381ebc0ad64a82f36a27a6e49c5bbe519`  
		Last Modified: Tue, 18 Aug 2026 19:29:26 GMT  
		Size: 555.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:518baa60dd32363d22ce5f4b78cb9e70255c8d8f61affa676f54974788dd04f6`  
		Last Modified: Tue, 18 Aug 2026 19:29:26 GMT  
		Size: 594.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:920d8db3b8680905dfbfaf28c2ee474076c2f1cab670d4370d90ff07900bfb14`  
		Last Modified: Tue, 18 Aug 2026 19:29:27 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19` - unknown; unknown

```console
$ docker pull odoo@sha256:6e38cb2b650cda6198c40a6f0fb1a7ac2e8be808e8d621c95f6b3b180ce193ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.3 MB (52321856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1a56cea12d24d4a0f6105b6b27140b3fdea3b69ca0ec3e16e70db5dd81deb79`

```dockerfile
```

-	Layers:
	-	`sha256:78c88337ce44292e5e12dc48b454474afca1827d1ea6310279a9e9aa77474a77`  
		Last Modified: Tue, 18 Aug 2026 19:29:26 GMT  
		Size: 52.3 MB (52294201 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:757edbd2ff7ed1a481ad745d4e3a96c2c819e4f7b7a4da7089ad4bd1c0cb87f7`  
		Last Modified: Tue, 18 Aug 2026 19:29:23 GMT  
		Size: 27.7 KB (27655 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:19` - linux; ppc64le

```console
$ docker pull odoo@sha256:e146cabd50afc8ed6f76b078e0c71e6475dec9b904dc7462684ca2d04f317bae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **715.6 MB (715566445 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94b7fce839664448f9b97418abd60aa1700542a1cea9fc824bfa4feaf562d3fb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Fri, 31 Jul 2026 20:44:29 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:44:29 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:44:29 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:44:32 GMT
ADD file:de84028a58b37b343ef7acd8f4c9a3bfde61683d6c522e683a978115b04d031b in / 
# Fri, 31 Jul 2026 20:44:33 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 02:14:01 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 04 Aug 2026 02:14:01 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 04 Aug 2026 02:14:01 GMT
ENV LANG=en_US.UTF-8
# Tue, 04 Aug 2026 02:14:01 GMT
ARG TARGETARCH=ppc64le
# Tue, 04 Aug 2026 02:14:01 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 04 Aug 2026 02:14:13 GMT
# ARGS: TARGETARCH=ppc64le
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:18:29 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:18:29 GMT
ENV ODOO_VERSION=19.0
# Tue, 04 Aug 2026 02:18:29 GMT
ARG ODOO_RELEASE=20260817
# Tue, 04 Aug 2026 02:18:29 GMT
ARG ODOO_SHA=7e6c102efc7e2ad56801432fef7e2e0d2f703e5a
# Mon, 17 Aug 2026 18:12:24 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260817 ODOO_SHA=7e6c102efc7e2ad56801432fef7e2e0d2f703e5a
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Mon, 17 Aug 2026 18:12:25 GMT
COPY ./entrypoint.sh / # buildkit
# Mon, 17 Aug 2026 18:12:25 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Mon, 17 Aug 2026 18:12:26 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260817 ODOO_SHA=7e6c102efc7e2ad56801432fef7e2e0d2f703e5a
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Mon, 17 Aug 2026 18:12:26 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Mon, 17 Aug 2026 18:12:26 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Mon, 17 Aug 2026 18:12:26 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Mon, 17 Aug 2026 18:12:26 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Mon, 17 Aug 2026 18:12:26 GMT
USER odoo
# Mon, 17 Aug 2026 18:12:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 17 Aug 2026 18:12:26 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:9d1bffbd46bb5cede430c07896855e38e8bfe397bbc67fe1808f03623a4aad12`  
		Last Modified: Fri, 31 Jul 2026 22:22:43 GMT  
		Size: 34.3 MB (34310673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6b80f0ff01e54e5f3e4db76f77d41df0cd7b71474ba53aee9e7d39e71dc5381`  
		Last Modified: Tue, 04 Aug 2026 02:24:27 GMT  
		Size: 251.9 MB (251870008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea489879c18085d21140c5f6599574d961476004172b12939c5306013e8c0c49`  
		Last Modified: Tue, 04 Aug 2026 02:24:18 GMT  
		Size: 14.7 MB (14730456 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16e0c5b3de369b12762f97eebe8d1c4ae15cbe6b228dc366b1ac31571a6da4c0`  
		Last Modified: Tue, 04 Aug 2026 02:24:17 GMT  
		Size: 868.5 KB (868536 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fba10f5b923c4817242443e88228af7fc939d3fabde0b1cc27033fe93dbf30b9`  
		Last Modified: Mon, 17 Aug 2026 18:16:34 GMT  
		Size: 413.8 MB (413784022 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cbd8dec0ef1053cadeccb14bdb8b25a9e6761a6c725de010f27a5c9b5d7cdb3`  
		Last Modified: Mon, 17 Aug 2026 18:16:24 GMT  
		Size: 718.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0de683cc210502e825a999d8f607ac7991d13bd7ba9a99e3b2fbf8cf8fb6adc`  
		Last Modified: Mon, 17 Aug 2026 18:16:24 GMT  
		Size: 555.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb2414cef4deecdb3c1640197925005e8b7ddac78807ecaa3708f84754fd6bdf`  
		Last Modified: Mon, 17 Aug 2026 18:16:24 GMT  
		Size: 598.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:977f669a723b9b147eedc6eb82845fffd752a1740173738ce155b27309a20dec`  
		Last Modified: Mon, 17 Aug 2026 18:16:25 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19` - unknown; unknown

```console
$ docker pull odoo@sha256:e1882c0ba4c90874b727a548590346e608c93a1b1b6b0542b4fa76db6f19b57e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.3 MB (52322840 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7e7f685c24f58cc436d73955ba6df84d2bce02a80beb9a0e192ca8a9d26cdb3`

```dockerfile
```

-	Layers:
	-	`sha256:4217468fce7c21d9bb6e7021d655b4c798251a173acb1c9f439c2b89572bc6fb`  
		Last Modified: Mon, 17 Aug 2026 18:16:27 GMT  
		Size: 52.3 MB (52295287 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5bc0178a1b2adcd30a365c99da8bfb4120102957eca121cd7a544373b691664c`  
		Last Modified: Mon, 17 Aug 2026 18:16:24 GMT  
		Size: 27.6 KB (27553 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:19.0`

```console
$ docker pull odoo@sha256:4a96c54e7ccddc83ab3baba00be8f7cac418cbd5bd0291247ed1bba8bbd5d5e7
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
$ docker pull odoo@sha256:58ddf2d09623931292435f00d6cc0d9c25b0382636c3ff6037e43abfb698fa29
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **696.8 MB (696788564 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b035658c87344395df999c4ad196dd81e25be7a2e3c94cad4b87b87588afc939`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Mon, 17 Aug 2026 13:09:48 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:09:48 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:09:48 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:09:50 GMT
ADD file:cb9335ce6f27399c2b17787739d6675502767c53e0335ded2a5f0d003d996650 in / 
# Mon, 17 Aug 2026 13:09:51 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:25:14 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 18 Aug 2026 19:25:14 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 18 Aug 2026 19:25:14 GMT
ENV LANG=en_US.UTF-8
# Tue, 18 Aug 2026 19:25:14 GMT
ARG TARGETARCH=amd64
# Tue, 18 Aug 2026 19:25:14 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 18 Aug 2026 19:25:19 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:22 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:22 GMT
ENV ODOO_VERSION=19.0
# Tue, 18 Aug 2026 19:26:22 GMT
ARG ODOO_RELEASE=20260817
# Tue, 18 Aug 2026 19:26:22 GMT
ARG ODOO_SHA=7e6c102efc7e2ad56801432fef7e2e0d2f703e5a
# Tue, 18 Aug 2026 19:27:31 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260817 ODOO_SHA=7e6c102efc7e2ad56801432fef7e2e0d2f703e5a
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 18 Aug 2026 19:27:31 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 18 Aug 2026 19:27:31 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 18 Aug 2026 19:27:31 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260817 ODOO_SHA=7e6c102efc7e2ad56801432fef7e2e0d2f703e5a
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 18 Aug 2026 19:27:31 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 18 Aug 2026 19:27:31 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 18 Aug 2026 19:27:31 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 18 Aug 2026 19:27:31 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 18 Aug 2026 19:27:31 GMT
USER odoo
# Tue, 18 Aug 2026 19:27:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Aug 2026 19:27:31 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b42e62ec05eff9e2b262b8b6e09a8dcdad7d8dc625733d4740244200cd3a2a5`  
		Last Modified: Tue, 18 Aug 2026 19:29:24 GMT  
		Size: 238.7 MB (238685508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:baa0480330c95b56faab40b71b0a035cad10c8242e4494b5ee7d6cfa0f3f5683`  
		Last Modified: Tue, 18 Aug 2026 19:29:12 GMT  
		Size: 14.2 MB (14221601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:638d28cb59e3a34547fd2fa72edccfab96bd19f49853e8bcad89a9cda259da10`  
		Last Modified: Tue, 18 Aug 2026 19:29:11 GMT  
		Size: 869.4 KB (869372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16747e58e0076d581f08948a771606bc7a1aa1030346c4310039b3612130b427`  
		Last Modified: Tue, 18 Aug 2026 19:29:29 GMT  
		Size: 413.3 MB (413256535 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:263419c46f7d122fa1a8ce1e51b9d2a123a1da6897af7165669d504f710b1049`  
		Last Modified: Tue, 18 Aug 2026 19:29:12 GMT  
		Size: 716.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20ff752012cd78b99355f78e6429e47d0d5f1c7614b76438d34dde51113285fe`  
		Last Modified: Tue, 18 Aug 2026 19:29:14 GMT  
		Size: 554.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:061011a546a47d0eca61dc4f7129fbf0c1adfea6db8cc93cdd5afc296cb12543`  
		Last Modified: Tue, 18 Aug 2026 19:29:14 GMT  
		Size: 594.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bcbf66303919ceca1f0574705801a3e600a630417a71eaec9cde984510368c3`  
		Last Modified: Tue, 18 Aug 2026 19:29:15 GMT  
		Size: 877.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19.0` - unknown; unknown

```console
$ docker pull odoo@sha256:9b3d132dc1ddbc039cce4ed7fde82eb7bfc189ddb9fda1b0df3de4bd31ed70f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.3 MB (52314408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83ae3b52df8cdcc8e32975ce1beaf8bfc8498694dd43443f0220ade807ec9eb5`

```dockerfile
```

-	Layers:
	-	`sha256:e81187ab2ab2706848bfa02d1ad89c1f4156b36f3d21fbbdea369499b6281e0c`  
		Last Modified: Tue, 18 Aug 2026 19:29:14 GMT  
		Size: 52.3 MB (52286917 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3fd68181a7b3f04cfb83251c995aa477d42ac16ffd835e115af95fed07357b5e`  
		Last Modified: Tue, 18 Aug 2026 19:29:11 GMT  
		Size: 27.5 KB (27491 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:19.0` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:2642cda15f9c3ff83cf36e98d138747a3321c83c69eba18e7ef8a3baa8ce3919
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **693.2 MB (693167101 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d290f6c7ba1103f9faf5ede92b59fdc416246f06a67f1f443f6539fd76319fc0`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Mon, 17 Aug 2026 13:11:31 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:11:31 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:11:31 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:11:34 GMT
ADD file:0387b3d029de8fa08641ccfaa44c6a4ad07b93035420d53b49783ea27527d153 in / 
# Mon, 17 Aug 2026 13:11:34 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:25:22 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 18 Aug 2026 19:25:22 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 18 Aug 2026 19:25:22 GMT
ENV LANG=en_US.UTF-8
# Tue, 18 Aug 2026 19:25:22 GMT
ARG TARGETARCH=arm64
# Tue, 18 Aug 2026 19:25:22 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 18 Aug 2026 19:25:29 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:25 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:25 GMT
ENV ODOO_VERSION=19.0
# Tue, 18 Aug 2026 19:26:25 GMT
ARG ODOO_RELEASE=20260817
# Tue, 18 Aug 2026 19:26:25 GMT
ARG ODOO_SHA=7e6c102efc7e2ad56801432fef7e2e0d2f703e5a
# Tue, 18 Aug 2026 19:27:35 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260817 ODOO_SHA=7e6c102efc7e2ad56801432fef7e2e0d2f703e5a
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 18 Aug 2026 19:27:35 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 18 Aug 2026 19:27:35 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 18 Aug 2026 19:27:35 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260817 ODOO_SHA=7e6c102efc7e2ad56801432fef7e2e0d2f703e5a
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 18 Aug 2026 19:27:35 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 18 Aug 2026 19:27:35 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 18 Aug 2026 19:27:35 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 18 Aug 2026 19:27:35 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 18 Aug 2026 19:27:35 GMT
USER odoo
# Tue, 18 Aug 2026 19:27:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Aug 2026 19:27:35 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da0e0af374879dc58e2f2e4a134b34fc856795e2bf088563f8a92723fe28b663`  
		Last Modified: Tue, 18 Aug 2026 19:29:31 GMT  
		Size: 236.1 MB (236104044 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:893a4de64bd005c8d7d69535831774de586f93f6189c3df6bbf2d2e3f4bf58c7`  
		Last Modified: Tue, 18 Aug 2026 19:29:24 GMT  
		Size: 14.2 MB (14187881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33e047c66fe288fb129022aa2b4696e2f4feec700c9f8afcc2c76f3f6f77d1e5`  
		Last Modified: Tue, 18 Aug 2026 19:29:23 GMT  
		Size: 869.2 KB (869250 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fb0500e6428e675dc6aff654201c02c8db5e36a44bb8567d7c9d41f3771c32a`  
		Last Modified: Tue, 18 Aug 2026 19:29:35 GMT  
		Size: 413.1 MB (413115947 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79fbb39860a92977f6c267becef4851333eb9aec5899a1deb23205cc97236fe3`  
		Last Modified: Tue, 18 Aug 2026 19:29:24 GMT  
		Size: 716.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e13564a3b0b63965281e929a7cd110381ebc0ad64a82f36a27a6e49c5bbe519`  
		Last Modified: Tue, 18 Aug 2026 19:29:26 GMT  
		Size: 555.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:518baa60dd32363d22ce5f4b78cb9e70255c8d8f61affa676f54974788dd04f6`  
		Last Modified: Tue, 18 Aug 2026 19:29:26 GMT  
		Size: 594.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:920d8db3b8680905dfbfaf28c2ee474076c2f1cab670d4370d90ff07900bfb14`  
		Last Modified: Tue, 18 Aug 2026 19:29:27 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19.0` - unknown; unknown

```console
$ docker pull odoo@sha256:6e38cb2b650cda6198c40a6f0fb1a7ac2e8be808e8d621c95f6b3b180ce193ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.3 MB (52321856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1a56cea12d24d4a0f6105b6b27140b3fdea3b69ca0ec3e16e70db5dd81deb79`

```dockerfile
```

-	Layers:
	-	`sha256:78c88337ce44292e5e12dc48b454474afca1827d1ea6310279a9e9aa77474a77`  
		Last Modified: Tue, 18 Aug 2026 19:29:26 GMT  
		Size: 52.3 MB (52294201 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:757edbd2ff7ed1a481ad745d4e3a96c2c819e4f7b7a4da7089ad4bd1c0cb87f7`  
		Last Modified: Tue, 18 Aug 2026 19:29:23 GMT  
		Size: 27.7 KB (27655 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:19.0` - linux; ppc64le

```console
$ docker pull odoo@sha256:e146cabd50afc8ed6f76b078e0c71e6475dec9b904dc7462684ca2d04f317bae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **715.6 MB (715566445 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94b7fce839664448f9b97418abd60aa1700542a1cea9fc824bfa4feaf562d3fb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Fri, 31 Jul 2026 20:44:29 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:44:29 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:44:29 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:44:32 GMT
ADD file:de84028a58b37b343ef7acd8f4c9a3bfde61683d6c522e683a978115b04d031b in / 
# Fri, 31 Jul 2026 20:44:33 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 02:14:01 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 04 Aug 2026 02:14:01 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 04 Aug 2026 02:14:01 GMT
ENV LANG=en_US.UTF-8
# Tue, 04 Aug 2026 02:14:01 GMT
ARG TARGETARCH=ppc64le
# Tue, 04 Aug 2026 02:14:01 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 04 Aug 2026 02:14:13 GMT
# ARGS: TARGETARCH=ppc64le
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:18:29 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:18:29 GMT
ENV ODOO_VERSION=19.0
# Tue, 04 Aug 2026 02:18:29 GMT
ARG ODOO_RELEASE=20260817
# Tue, 04 Aug 2026 02:18:29 GMT
ARG ODOO_SHA=7e6c102efc7e2ad56801432fef7e2e0d2f703e5a
# Mon, 17 Aug 2026 18:12:24 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260817 ODOO_SHA=7e6c102efc7e2ad56801432fef7e2e0d2f703e5a
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Mon, 17 Aug 2026 18:12:25 GMT
COPY ./entrypoint.sh / # buildkit
# Mon, 17 Aug 2026 18:12:25 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Mon, 17 Aug 2026 18:12:26 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260817 ODOO_SHA=7e6c102efc7e2ad56801432fef7e2e0d2f703e5a
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Mon, 17 Aug 2026 18:12:26 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Mon, 17 Aug 2026 18:12:26 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Mon, 17 Aug 2026 18:12:26 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Mon, 17 Aug 2026 18:12:26 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Mon, 17 Aug 2026 18:12:26 GMT
USER odoo
# Mon, 17 Aug 2026 18:12:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 17 Aug 2026 18:12:26 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:9d1bffbd46bb5cede430c07896855e38e8bfe397bbc67fe1808f03623a4aad12`  
		Last Modified: Fri, 31 Jul 2026 22:22:43 GMT  
		Size: 34.3 MB (34310673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6b80f0ff01e54e5f3e4db76f77d41df0cd7b71474ba53aee9e7d39e71dc5381`  
		Last Modified: Tue, 04 Aug 2026 02:24:27 GMT  
		Size: 251.9 MB (251870008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea489879c18085d21140c5f6599574d961476004172b12939c5306013e8c0c49`  
		Last Modified: Tue, 04 Aug 2026 02:24:18 GMT  
		Size: 14.7 MB (14730456 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16e0c5b3de369b12762f97eebe8d1c4ae15cbe6b228dc366b1ac31571a6da4c0`  
		Last Modified: Tue, 04 Aug 2026 02:24:17 GMT  
		Size: 868.5 KB (868536 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fba10f5b923c4817242443e88228af7fc939d3fabde0b1cc27033fe93dbf30b9`  
		Last Modified: Mon, 17 Aug 2026 18:16:34 GMT  
		Size: 413.8 MB (413784022 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cbd8dec0ef1053cadeccb14bdb8b25a9e6761a6c725de010f27a5c9b5d7cdb3`  
		Last Modified: Mon, 17 Aug 2026 18:16:24 GMT  
		Size: 718.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0de683cc210502e825a999d8f607ac7991d13bd7ba9a99e3b2fbf8cf8fb6adc`  
		Last Modified: Mon, 17 Aug 2026 18:16:24 GMT  
		Size: 555.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb2414cef4deecdb3c1640197925005e8b7ddac78807ecaa3708f84754fd6bdf`  
		Last Modified: Mon, 17 Aug 2026 18:16:24 GMT  
		Size: 598.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:977f669a723b9b147eedc6eb82845fffd752a1740173738ce155b27309a20dec`  
		Last Modified: Mon, 17 Aug 2026 18:16:25 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19.0` - unknown; unknown

```console
$ docker pull odoo@sha256:e1882c0ba4c90874b727a548590346e608c93a1b1b6b0542b4fa76db6f19b57e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.3 MB (52322840 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7e7f685c24f58cc436d73955ba6df84d2bce02a80beb9a0e192ca8a9d26cdb3`

```dockerfile
```

-	Layers:
	-	`sha256:4217468fce7c21d9bb6e7021d655b4c798251a173acb1c9f439c2b89572bc6fb`  
		Last Modified: Mon, 17 Aug 2026 18:16:27 GMT  
		Size: 52.3 MB (52295287 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5bc0178a1b2adcd30a365c99da8bfb4120102957eca121cd7a544373b691664c`  
		Last Modified: Mon, 17 Aug 2026 18:16:24 GMT  
		Size: 27.6 KB (27553 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:19.0-20260817`

```console
$ docker pull odoo@sha256:4a96c54e7ccddc83ab3baba00be8f7cac418cbd5bd0291247ed1bba8bbd5d5e7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `odoo:19.0-20260817` - linux; amd64

```console
$ docker pull odoo@sha256:58ddf2d09623931292435f00d6cc0d9c25b0382636c3ff6037e43abfb698fa29
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **696.8 MB (696788564 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b035658c87344395df999c4ad196dd81e25be7a2e3c94cad4b87b87588afc939`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Mon, 17 Aug 2026 13:09:48 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:09:48 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:09:48 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:09:50 GMT
ADD file:cb9335ce6f27399c2b17787739d6675502767c53e0335ded2a5f0d003d996650 in / 
# Mon, 17 Aug 2026 13:09:51 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:25:14 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 18 Aug 2026 19:25:14 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 18 Aug 2026 19:25:14 GMT
ENV LANG=en_US.UTF-8
# Tue, 18 Aug 2026 19:25:14 GMT
ARG TARGETARCH=amd64
# Tue, 18 Aug 2026 19:25:14 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 18 Aug 2026 19:25:19 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:22 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:22 GMT
ENV ODOO_VERSION=19.0
# Tue, 18 Aug 2026 19:26:22 GMT
ARG ODOO_RELEASE=20260817
# Tue, 18 Aug 2026 19:26:22 GMT
ARG ODOO_SHA=7e6c102efc7e2ad56801432fef7e2e0d2f703e5a
# Tue, 18 Aug 2026 19:27:31 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260817 ODOO_SHA=7e6c102efc7e2ad56801432fef7e2e0d2f703e5a
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 18 Aug 2026 19:27:31 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 18 Aug 2026 19:27:31 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 18 Aug 2026 19:27:31 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260817 ODOO_SHA=7e6c102efc7e2ad56801432fef7e2e0d2f703e5a
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 18 Aug 2026 19:27:31 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 18 Aug 2026 19:27:31 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 18 Aug 2026 19:27:31 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 18 Aug 2026 19:27:31 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 18 Aug 2026 19:27:31 GMT
USER odoo
# Tue, 18 Aug 2026 19:27:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Aug 2026 19:27:31 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b42e62ec05eff9e2b262b8b6e09a8dcdad7d8dc625733d4740244200cd3a2a5`  
		Last Modified: Tue, 18 Aug 2026 19:29:24 GMT  
		Size: 238.7 MB (238685508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:baa0480330c95b56faab40b71b0a035cad10c8242e4494b5ee7d6cfa0f3f5683`  
		Last Modified: Tue, 18 Aug 2026 19:29:12 GMT  
		Size: 14.2 MB (14221601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:638d28cb59e3a34547fd2fa72edccfab96bd19f49853e8bcad89a9cda259da10`  
		Last Modified: Tue, 18 Aug 2026 19:29:11 GMT  
		Size: 869.4 KB (869372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16747e58e0076d581f08948a771606bc7a1aa1030346c4310039b3612130b427`  
		Last Modified: Tue, 18 Aug 2026 19:29:29 GMT  
		Size: 413.3 MB (413256535 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:263419c46f7d122fa1a8ce1e51b9d2a123a1da6897af7165669d504f710b1049`  
		Last Modified: Tue, 18 Aug 2026 19:29:12 GMT  
		Size: 716.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20ff752012cd78b99355f78e6429e47d0d5f1c7614b76438d34dde51113285fe`  
		Last Modified: Tue, 18 Aug 2026 19:29:14 GMT  
		Size: 554.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:061011a546a47d0eca61dc4f7129fbf0c1adfea6db8cc93cdd5afc296cb12543`  
		Last Modified: Tue, 18 Aug 2026 19:29:14 GMT  
		Size: 594.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bcbf66303919ceca1f0574705801a3e600a630417a71eaec9cde984510368c3`  
		Last Modified: Tue, 18 Aug 2026 19:29:15 GMT  
		Size: 877.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19.0-20260817` - unknown; unknown

```console
$ docker pull odoo@sha256:9b3d132dc1ddbc039cce4ed7fde82eb7bfc189ddb9fda1b0df3de4bd31ed70f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.3 MB (52314408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83ae3b52df8cdcc8e32975ce1beaf8bfc8498694dd43443f0220ade807ec9eb5`

```dockerfile
```

-	Layers:
	-	`sha256:e81187ab2ab2706848bfa02d1ad89c1f4156b36f3d21fbbdea369499b6281e0c`  
		Last Modified: Tue, 18 Aug 2026 19:29:14 GMT  
		Size: 52.3 MB (52286917 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3fd68181a7b3f04cfb83251c995aa477d42ac16ffd835e115af95fed07357b5e`  
		Last Modified: Tue, 18 Aug 2026 19:29:11 GMT  
		Size: 27.5 KB (27491 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:19.0-20260817` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:2642cda15f9c3ff83cf36e98d138747a3321c83c69eba18e7ef8a3baa8ce3919
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **693.2 MB (693167101 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d290f6c7ba1103f9faf5ede92b59fdc416246f06a67f1f443f6539fd76319fc0`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Mon, 17 Aug 2026 13:11:31 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:11:31 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:11:31 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:11:34 GMT
ADD file:0387b3d029de8fa08641ccfaa44c6a4ad07b93035420d53b49783ea27527d153 in / 
# Mon, 17 Aug 2026 13:11:34 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:25:22 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 18 Aug 2026 19:25:22 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 18 Aug 2026 19:25:22 GMT
ENV LANG=en_US.UTF-8
# Tue, 18 Aug 2026 19:25:22 GMT
ARG TARGETARCH=arm64
# Tue, 18 Aug 2026 19:25:22 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 18 Aug 2026 19:25:29 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:25 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:25 GMT
ENV ODOO_VERSION=19.0
# Tue, 18 Aug 2026 19:26:25 GMT
ARG ODOO_RELEASE=20260817
# Tue, 18 Aug 2026 19:26:25 GMT
ARG ODOO_SHA=7e6c102efc7e2ad56801432fef7e2e0d2f703e5a
# Tue, 18 Aug 2026 19:27:35 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260817 ODOO_SHA=7e6c102efc7e2ad56801432fef7e2e0d2f703e5a
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 18 Aug 2026 19:27:35 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 18 Aug 2026 19:27:35 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 18 Aug 2026 19:27:35 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260817 ODOO_SHA=7e6c102efc7e2ad56801432fef7e2e0d2f703e5a
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 18 Aug 2026 19:27:35 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 18 Aug 2026 19:27:35 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 18 Aug 2026 19:27:35 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 18 Aug 2026 19:27:35 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 18 Aug 2026 19:27:35 GMT
USER odoo
# Tue, 18 Aug 2026 19:27:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Aug 2026 19:27:35 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da0e0af374879dc58e2f2e4a134b34fc856795e2bf088563f8a92723fe28b663`  
		Last Modified: Tue, 18 Aug 2026 19:29:31 GMT  
		Size: 236.1 MB (236104044 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:893a4de64bd005c8d7d69535831774de586f93f6189c3df6bbf2d2e3f4bf58c7`  
		Last Modified: Tue, 18 Aug 2026 19:29:24 GMT  
		Size: 14.2 MB (14187881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33e047c66fe288fb129022aa2b4696e2f4feec700c9f8afcc2c76f3f6f77d1e5`  
		Last Modified: Tue, 18 Aug 2026 19:29:23 GMT  
		Size: 869.2 KB (869250 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fb0500e6428e675dc6aff654201c02c8db5e36a44bb8567d7c9d41f3771c32a`  
		Last Modified: Tue, 18 Aug 2026 19:29:35 GMT  
		Size: 413.1 MB (413115947 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79fbb39860a92977f6c267becef4851333eb9aec5899a1deb23205cc97236fe3`  
		Last Modified: Tue, 18 Aug 2026 19:29:24 GMT  
		Size: 716.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e13564a3b0b63965281e929a7cd110381ebc0ad64a82f36a27a6e49c5bbe519`  
		Last Modified: Tue, 18 Aug 2026 19:29:26 GMT  
		Size: 555.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:518baa60dd32363d22ce5f4b78cb9e70255c8d8f61affa676f54974788dd04f6`  
		Last Modified: Tue, 18 Aug 2026 19:29:26 GMT  
		Size: 594.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:920d8db3b8680905dfbfaf28c2ee474076c2f1cab670d4370d90ff07900bfb14`  
		Last Modified: Tue, 18 Aug 2026 19:29:27 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19.0-20260817` - unknown; unknown

```console
$ docker pull odoo@sha256:6e38cb2b650cda6198c40a6f0fb1a7ac2e8be808e8d621c95f6b3b180ce193ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.3 MB (52321856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1a56cea12d24d4a0f6105b6b27140b3fdea3b69ca0ec3e16e70db5dd81deb79`

```dockerfile
```

-	Layers:
	-	`sha256:78c88337ce44292e5e12dc48b454474afca1827d1ea6310279a9e9aa77474a77`  
		Last Modified: Tue, 18 Aug 2026 19:29:26 GMT  
		Size: 52.3 MB (52294201 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:757edbd2ff7ed1a481ad745d4e3a96c2c819e4f7b7a4da7089ad4bd1c0cb87f7`  
		Last Modified: Tue, 18 Aug 2026 19:29:23 GMT  
		Size: 27.7 KB (27655 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:19.0-20260817` - linux; ppc64le

```console
$ docker pull odoo@sha256:e146cabd50afc8ed6f76b078e0c71e6475dec9b904dc7462684ca2d04f317bae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **715.6 MB (715566445 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94b7fce839664448f9b97418abd60aa1700542a1cea9fc824bfa4feaf562d3fb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Fri, 31 Jul 2026 20:44:29 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:44:29 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:44:29 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:44:32 GMT
ADD file:de84028a58b37b343ef7acd8f4c9a3bfde61683d6c522e683a978115b04d031b in / 
# Fri, 31 Jul 2026 20:44:33 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 02:14:01 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 04 Aug 2026 02:14:01 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 04 Aug 2026 02:14:01 GMT
ENV LANG=en_US.UTF-8
# Tue, 04 Aug 2026 02:14:01 GMT
ARG TARGETARCH=ppc64le
# Tue, 04 Aug 2026 02:14:01 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 04 Aug 2026 02:14:13 GMT
# ARGS: TARGETARCH=ppc64le
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:18:29 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:18:29 GMT
ENV ODOO_VERSION=19.0
# Tue, 04 Aug 2026 02:18:29 GMT
ARG ODOO_RELEASE=20260817
# Tue, 04 Aug 2026 02:18:29 GMT
ARG ODOO_SHA=7e6c102efc7e2ad56801432fef7e2e0d2f703e5a
# Mon, 17 Aug 2026 18:12:24 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260817 ODOO_SHA=7e6c102efc7e2ad56801432fef7e2e0d2f703e5a
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Mon, 17 Aug 2026 18:12:25 GMT
COPY ./entrypoint.sh / # buildkit
# Mon, 17 Aug 2026 18:12:25 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Mon, 17 Aug 2026 18:12:26 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260817 ODOO_SHA=7e6c102efc7e2ad56801432fef7e2e0d2f703e5a
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Mon, 17 Aug 2026 18:12:26 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Mon, 17 Aug 2026 18:12:26 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Mon, 17 Aug 2026 18:12:26 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Mon, 17 Aug 2026 18:12:26 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Mon, 17 Aug 2026 18:12:26 GMT
USER odoo
# Mon, 17 Aug 2026 18:12:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 17 Aug 2026 18:12:26 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:9d1bffbd46bb5cede430c07896855e38e8bfe397bbc67fe1808f03623a4aad12`  
		Last Modified: Fri, 31 Jul 2026 22:22:43 GMT  
		Size: 34.3 MB (34310673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6b80f0ff01e54e5f3e4db76f77d41df0cd7b71474ba53aee9e7d39e71dc5381`  
		Last Modified: Tue, 04 Aug 2026 02:24:27 GMT  
		Size: 251.9 MB (251870008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea489879c18085d21140c5f6599574d961476004172b12939c5306013e8c0c49`  
		Last Modified: Tue, 04 Aug 2026 02:24:18 GMT  
		Size: 14.7 MB (14730456 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16e0c5b3de369b12762f97eebe8d1c4ae15cbe6b228dc366b1ac31571a6da4c0`  
		Last Modified: Tue, 04 Aug 2026 02:24:17 GMT  
		Size: 868.5 KB (868536 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fba10f5b923c4817242443e88228af7fc939d3fabde0b1cc27033fe93dbf30b9`  
		Last Modified: Mon, 17 Aug 2026 18:16:34 GMT  
		Size: 413.8 MB (413784022 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cbd8dec0ef1053cadeccb14bdb8b25a9e6761a6c725de010f27a5c9b5d7cdb3`  
		Last Modified: Mon, 17 Aug 2026 18:16:24 GMT  
		Size: 718.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0de683cc210502e825a999d8f607ac7991d13bd7ba9a99e3b2fbf8cf8fb6adc`  
		Last Modified: Mon, 17 Aug 2026 18:16:24 GMT  
		Size: 555.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb2414cef4deecdb3c1640197925005e8b7ddac78807ecaa3708f84754fd6bdf`  
		Last Modified: Mon, 17 Aug 2026 18:16:24 GMT  
		Size: 598.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:977f669a723b9b147eedc6eb82845fffd752a1740173738ce155b27309a20dec`  
		Last Modified: Mon, 17 Aug 2026 18:16:25 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19.0-20260817` - unknown; unknown

```console
$ docker pull odoo@sha256:e1882c0ba4c90874b727a548590346e608c93a1b1b6b0542b4fa76db6f19b57e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.3 MB (52322840 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7e7f685c24f58cc436d73955ba6df84d2bce02a80beb9a0e192ca8a9d26cdb3`

```dockerfile
```

-	Layers:
	-	`sha256:4217468fce7c21d9bb6e7021d655b4c798251a173acb1c9f439c2b89572bc6fb`  
		Last Modified: Mon, 17 Aug 2026 18:16:27 GMT  
		Size: 52.3 MB (52295287 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5bc0178a1b2adcd30a365c99da8bfb4120102957eca121cd7a544373b691664c`  
		Last Modified: Mon, 17 Aug 2026 18:16:24 GMT  
		Size: 27.6 KB (27553 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:latest`

```console
$ docker pull odoo@sha256:4a96c54e7ccddc83ab3baba00be8f7cac418cbd5bd0291247ed1bba8bbd5d5e7
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
$ docker pull odoo@sha256:58ddf2d09623931292435f00d6cc0d9c25b0382636c3ff6037e43abfb698fa29
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **696.8 MB (696788564 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b035658c87344395df999c4ad196dd81e25be7a2e3c94cad4b87b87588afc939`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Mon, 17 Aug 2026 13:09:48 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:09:48 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:09:48 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:09:50 GMT
ADD file:cb9335ce6f27399c2b17787739d6675502767c53e0335ded2a5f0d003d996650 in / 
# Mon, 17 Aug 2026 13:09:51 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:25:14 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 18 Aug 2026 19:25:14 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 18 Aug 2026 19:25:14 GMT
ENV LANG=en_US.UTF-8
# Tue, 18 Aug 2026 19:25:14 GMT
ARG TARGETARCH=amd64
# Tue, 18 Aug 2026 19:25:14 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 18 Aug 2026 19:25:19 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:22 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:22 GMT
ENV ODOO_VERSION=19.0
# Tue, 18 Aug 2026 19:26:22 GMT
ARG ODOO_RELEASE=20260817
# Tue, 18 Aug 2026 19:26:22 GMT
ARG ODOO_SHA=7e6c102efc7e2ad56801432fef7e2e0d2f703e5a
# Tue, 18 Aug 2026 19:27:31 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260817 ODOO_SHA=7e6c102efc7e2ad56801432fef7e2e0d2f703e5a
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 18 Aug 2026 19:27:31 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 18 Aug 2026 19:27:31 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 18 Aug 2026 19:27:31 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260817 ODOO_SHA=7e6c102efc7e2ad56801432fef7e2e0d2f703e5a
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 18 Aug 2026 19:27:31 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 18 Aug 2026 19:27:31 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 18 Aug 2026 19:27:31 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 18 Aug 2026 19:27:31 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 18 Aug 2026 19:27:31 GMT
USER odoo
# Tue, 18 Aug 2026 19:27:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Aug 2026 19:27:31 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b42e62ec05eff9e2b262b8b6e09a8dcdad7d8dc625733d4740244200cd3a2a5`  
		Last Modified: Tue, 18 Aug 2026 19:29:24 GMT  
		Size: 238.7 MB (238685508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:baa0480330c95b56faab40b71b0a035cad10c8242e4494b5ee7d6cfa0f3f5683`  
		Last Modified: Tue, 18 Aug 2026 19:29:12 GMT  
		Size: 14.2 MB (14221601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:638d28cb59e3a34547fd2fa72edccfab96bd19f49853e8bcad89a9cda259da10`  
		Last Modified: Tue, 18 Aug 2026 19:29:11 GMT  
		Size: 869.4 KB (869372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16747e58e0076d581f08948a771606bc7a1aa1030346c4310039b3612130b427`  
		Last Modified: Tue, 18 Aug 2026 19:29:29 GMT  
		Size: 413.3 MB (413256535 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:263419c46f7d122fa1a8ce1e51b9d2a123a1da6897af7165669d504f710b1049`  
		Last Modified: Tue, 18 Aug 2026 19:29:12 GMT  
		Size: 716.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20ff752012cd78b99355f78e6429e47d0d5f1c7614b76438d34dde51113285fe`  
		Last Modified: Tue, 18 Aug 2026 19:29:14 GMT  
		Size: 554.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:061011a546a47d0eca61dc4f7129fbf0c1adfea6db8cc93cdd5afc296cb12543`  
		Last Modified: Tue, 18 Aug 2026 19:29:14 GMT  
		Size: 594.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bcbf66303919ceca1f0574705801a3e600a630417a71eaec9cde984510368c3`  
		Last Modified: Tue, 18 Aug 2026 19:29:15 GMT  
		Size: 877.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:latest` - unknown; unknown

```console
$ docker pull odoo@sha256:9b3d132dc1ddbc039cce4ed7fde82eb7bfc189ddb9fda1b0df3de4bd31ed70f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.3 MB (52314408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83ae3b52df8cdcc8e32975ce1beaf8bfc8498694dd43443f0220ade807ec9eb5`

```dockerfile
```

-	Layers:
	-	`sha256:e81187ab2ab2706848bfa02d1ad89c1f4156b36f3d21fbbdea369499b6281e0c`  
		Last Modified: Tue, 18 Aug 2026 19:29:14 GMT  
		Size: 52.3 MB (52286917 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3fd68181a7b3f04cfb83251c995aa477d42ac16ffd835e115af95fed07357b5e`  
		Last Modified: Tue, 18 Aug 2026 19:29:11 GMT  
		Size: 27.5 KB (27491 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:latest` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:2642cda15f9c3ff83cf36e98d138747a3321c83c69eba18e7ef8a3baa8ce3919
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **693.2 MB (693167101 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d290f6c7ba1103f9faf5ede92b59fdc416246f06a67f1f443f6539fd76319fc0`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Mon, 17 Aug 2026 13:11:31 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:11:31 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:11:31 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:11:34 GMT
ADD file:0387b3d029de8fa08641ccfaa44c6a4ad07b93035420d53b49783ea27527d153 in / 
# Mon, 17 Aug 2026 13:11:34 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:25:22 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 18 Aug 2026 19:25:22 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 18 Aug 2026 19:25:22 GMT
ENV LANG=en_US.UTF-8
# Tue, 18 Aug 2026 19:25:22 GMT
ARG TARGETARCH=arm64
# Tue, 18 Aug 2026 19:25:22 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 18 Aug 2026 19:25:29 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:25 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:26:25 GMT
ENV ODOO_VERSION=19.0
# Tue, 18 Aug 2026 19:26:25 GMT
ARG ODOO_RELEASE=20260817
# Tue, 18 Aug 2026 19:26:25 GMT
ARG ODOO_SHA=7e6c102efc7e2ad56801432fef7e2e0d2f703e5a
# Tue, 18 Aug 2026 19:27:35 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260817 ODOO_SHA=7e6c102efc7e2ad56801432fef7e2e0d2f703e5a
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 18 Aug 2026 19:27:35 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 18 Aug 2026 19:27:35 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 18 Aug 2026 19:27:35 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260817 ODOO_SHA=7e6c102efc7e2ad56801432fef7e2e0d2f703e5a
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 18 Aug 2026 19:27:35 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 18 Aug 2026 19:27:35 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 18 Aug 2026 19:27:35 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 18 Aug 2026 19:27:35 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 18 Aug 2026 19:27:35 GMT
USER odoo
# Tue, 18 Aug 2026 19:27:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Aug 2026 19:27:35 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da0e0af374879dc58e2f2e4a134b34fc856795e2bf088563f8a92723fe28b663`  
		Last Modified: Tue, 18 Aug 2026 19:29:31 GMT  
		Size: 236.1 MB (236104044 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:893a4de64bd005c8d7d69535831774de586f93f6189c3df6bbf2d2e3f4bf58c7`  
		Last Modified: Tue, 18 Aug 2026 19:29:24 GMT  
		Size: 14.2 MB (14187881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33e047c66fe288fb129022aa2b4696e2f4feec700c9f8afcc2c76f3f6f77d1e5`  
		Last Modified: Tue, 18 Aug 2026 19:29:23 GMT  
		Size: 869.2 KB (869250 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fb0500e6428e675dc6aff654201c02c8db5e36a44bb8567d7c9d41f3771c32a`  
		Last Modified: Tue, 18 Aug 2026 19:29:35 GMT  
		Size: 413.1 MB (413115947 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79fbb39860a92977f6c267becef4851333eb9aec5899a1deb23205cc97236fe3`  
		Last Modified: Tue, 18 Aug 2026 19:29:24 GMT  
		Size: 716.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e13564a3b0b63965281e929a7cd110381ebc0ad64a82f36a27a6e49c5bbe519`  
		Last Modified: Tue, 18 Aug 2026 19:29:26 GMT  
		Size: 555.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:518baa60dd32363d22ce5f4b78cb9e70255c8d8f61affa676f54974788dd04f6`  
		Last Modified: Tue, 18 Aug 2026 19:29:26 GMT  
		Size: 594.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:920d8db3b8680905dfbfaf28c2ee474076c2f1cab670d4370d90ff07900bfb14`  
		Last Modified: Tue, 18 Aug 2026 19:29:27 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:latest` - unknown; unknown

```console
$ docker pull odoo@sha256:6e38cb2b650cda6198c40a6f0fb1a7ac2e8be808e8d621c95f6b3b180ce193ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.3 MB (52321856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1a56cea12d24d4a0f6105b6b27140b3fdea3b69ca0ec3e16e70db5dd81deb79`

```dockerfile
```

-	Layers:
	-	`sha256:78c88337ce44292e5e12dc48b454474afca1827d1ea6310279a9e9aa77474a77`  
		Last Modified: Tue, 18 Aug 2026 19:29:26 GMT  
		Size: 52.3 MB (52294201 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:757edbd2ff7ed1a481ad745d4e3a96c2c819e4f7b7a4da7089ad4bd1c0cb87f7`  
		Last Modified: Tue, 18 Aug 2026 19:29:23 GMT  
		Size: 27.7 KB (27655 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:latest` - linux; ppc64le

```console
$ docker pull odoo@sha256:e146cabd50afc8ed6f76b078e0c71e6475dec9b904dc7462684ca2d04f317bae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **715.6 MB (715566445 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94b7fce839664448f9b97418abd60aa1700542a1cea9fc824bfa4feaf562d3fb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Fri, 31 Jul 2026 20:44:29 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:44:29 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:44:29 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:44:32 GMT
ADD file:de84028a58b37b343ef7acd8f4c9a3bfde61683d6c522e683a978115b04d031b in / 
# Fri, 31 Jul 2026 20:44:33 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 02:14:01 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 04 Aug 2026 02:14:01 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 04 Aug 2026 02:14:01 GMT
ENV LANG=en_US.UTF-8
# Tue, 04 Aug 2026 02:14:01 GMT
ARG TARGETARCH=ppc64le
# Tue, 04 Aug 2026 02:14:01 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 04 Aug 2026 02:14:13 GMT
# ARGS: TARGETARCH=ppc64le
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:18:29 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:18:29 GMT
ENV ODOO_VERSION=19.0
# Tue, 04 Aug 2026 02:18:29 GMT
ARG ODOO_RELEASE=20260817
# Tue, 04 Aug 2026 02:18:29 GMT
ARG ODOO_SHA=7e6c102efc7e2ad56801432fef7e2e0d2f703e5a
# Mon, 17 Aug 2026 18:12:24 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260817 ODOO_SHA=7e6c102efc7e2ad56801432fef7e2e0d2f703e5a
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Mon, 17 Aug 2026 18:12:25 GMT
COPY ./entrypoint.sh / # buildkit
# Mon, 17 Aug 2026 18:12:25 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Mon, 17 Aug 2026 18:12:26 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260817 ODOO_SHA=7e6c102efc7e2ad56801432fef7e2e0d2f703e5a
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Mon, 17 Aug 2026 18:12:26 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Mon, 17 Aug 2026 18:12:26 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Mon, 17 Aug 2026 18:12:26 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Mon, 17 Aug 2026 18:12:26 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Mon, 17 Aug 2026 18:12:26 GMT
USER odoo
# Mon, 17 Aug 2026 18:12:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 17 Aug 2026 18:12:26 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:9d1bffbd46bb5cede430c07896855e38e8bfe397bbc67fe1808f03623a4aad12`  
		Last Modified: Fri, 31 Jul 2026 22:22:43 GMT  
		Size: 34.3 MB (34310673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6b80f0ff01e54e5f3e4db76f77d41df0cd7b71474ba53aee9e7d39e71dc5381`  
		Last Modified: Tue, 04 Aug 2026 02:24:27 GMT  
		Size: 251.9 MB (251870008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea489879c18085d21140c5f6599574d961476004172b12939c5306013e8c0c49`  
		Last Modified: Tue, 04 Aug 2026 02:24:18 GMT  
		Size: 14.7 MB (14730456 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16e0c5b3de369b12762f97eebe8d1c4ae15cbe6b228dc366b1ac31571a6da4c0`  
		Last Modified: Tue, 04 Aug 2026 02:24:17 GMT  
		Size: 868.5 KB (868536 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fba10f5b923c4817242443e88228af7fc939d3fabde0b1cc27033fe93dbf30b9`  
		Last Modified: Mon, 17 Aug 2026 18:16:34 GMT  
		Size: 413.8 MB (413784022 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cbd8dec0ef1053cadeccb14bdb8b25a9e6761a6c725de010f27a5c9b5d7cdb3`  
		Last Modified: Mon, 17 Aug 2026 18:16:24 GMT  
		Size: 718.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0de683cc210502e825a999d8f607ac7991d13bd7ba9a99e3b2fbf8cf8fb6adc`  
		Last Modified: Mon, 17 Aug 2026 18:16:24 GMT  
		Size: 555.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb2414cef4deecdb3c1640197925005e8b7ddac78807ecaa3708f84754fd6bdf`  
		Last Modified: Mon, 17 Aug 2026 18:16:24 GMT  
		Size: 598.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:977f669a723b9b147eedc6eb82845fffd752a1740173738ce155b27309a20dec`  
		Last Modified: Mon, 17 Aug 2026 18:16:25 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:latest` - unknown; unknown

```console
$ docker pull odoo@sha256:e1882c0ba4c90874b727a548590346e608c93a1b1b6b0542b4fa76db6f19b57e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.3 MB (52322840 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7e7f685c24f58cc436d73955ba6df84d2bce02a80beb9a0e192ca8a9d26cdb3`

```dockerfile
```

-	Layers:
	-	`sha256:4217468fce7c21d9bb6e7021d655b4c798251a173acb1c9f439c2b89572bc6fb`  
		Last Modified: Mon, 17 Aug 2026 18:16:27 GMT  
		Size: 52.3 MB (52295287 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5bc0178a1b2adcd30a365c99da8bfb4120102957eca121cd7a544373b691664c`  
		Last Modified: Mon, 17 Aug 2026 18:16:24 GMT  
		Size: 27.6 KB (27553 bytes)  
		MIME: application/vnd.in-toto+json
