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
