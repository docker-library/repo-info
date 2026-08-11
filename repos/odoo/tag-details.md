<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `odoo`

-	[`odoo:17`](#odoo17)
-	[`odoo:17.0`](#odoo170)
-	[`odoo:17.0-20260810`](#odoo170-20260810)
-	[`odoo:18`](#odoo18)
-	[`odoo:18.0`](#odoo180)
-	[`odoo:18.0-20260810`](#odoo180-20260810)
-	[`odoo:19`](#odoo19)
-	[`odoo:19.0`](#odoo190)
-	[`odoo:19.0-20260810`](#odoo190-20260810)
-	[`odoo:latest`](#odoolatest)

## `odoo:17`

```console
$ docker pull odoo@sha256:4959237918da385a5befe007fc95177bc2244c048ebc55097b7aa71c703e70ba
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `odoo:17` - linux; amd64

```console
$ docker pull odoo@sha256:431fd8bd2d4c875e51a8368a45dc0ab8f7fbe06ffd85180ef61433652c5929b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **610.1 MB (610131717 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b5b8f0d5771b25640b75f70c2936292aae882bcdefd7075b3e4b85e784c3726`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Fri, 31 Jul 2026 21:53:09 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:53:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:53:09 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:53:11 GMT
ADD file:4501ff54ffd37d854b1cfbcd2e37da58bf8a49da3a6a82232d03e7556d337a92 in / 
# Fri, 31 Jul 2026 21:53:12 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 23:18:47 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Mon, 10 Aug 2026 23:18:47 GMT
SHELL [/bin/bash -xo pipefail -c]
# Mon, 10 Aug 2026 23:18:47 GMT
ENV LANG=en_US.UTF-8
# Mon, 10 Aug 2026 23:18:47 GMT
ARG TARGETARCH=amd64
# Mon, 10 Aug 2026 23:18:47 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     DEBIAN_FRONTEND=noninteractive     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Mon, 10 Aug 2026 23:18:55 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jammy-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 10 Aug 2026 23:19:28 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 10 Aug 2026 23:19:28 GMT
ENV ODOO_VERSION=17.0
# Mon, 10 Aug 2026 23:19:28 GMT
ARG ODOO_RELEASE=20260810
# Mon, 10 Aug 2026 23:19:28 GMT
ARG ODOO_SHA=1b95b2735a0d8be33a8bba35abf92a5fa38e81a7
# Mon, 10 Aug 2026 23:20:32 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260810 ODOO_SHA=1b95b2735a0d8be33a8bba35abf92a5fa38e81a7
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Mon, 10 Aug 2026 23:20:32 GMT
COPY ./entrypoint.sh / # buildkit
# Mon, 10 Aug 2026 23:20:32 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Mon, 10 Aug 2026 23:20:32 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260810 ODOO_SHA=1b95b2735a0d8be33a8bba35abf92a5fa38e81a7
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Mon, 10 Aug 2026 23:20:32 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Mon, 10 Aug 2026 23:20:32 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Mon, 10 Aug 2026 23:20:32 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Mon, 10 Aug 2026 23:20:32 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Mon, 10 Aug 2026 23:20:32 GMT
USER odoo
# Mon, 10 Aug 2026 23:20:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 10 Aug 2026 23:20:32 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:39a945af8df2ad9343f141c82355d3f2c4b576d432eda34c460d630607462b60`  
		Last Modified: Fri, 31 Jul 2026 22:53:51 GMT  
		Size: 29.7 MB (29736517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bf75afa08f43caf7429543e2f6cd493ab11a5c75f00fafe925166ef136e2866`  
		Last Modified: Mon, 10 Aug 2026 23:21:55 GMT  
		Size: 230.5 MB (230520706 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddb425a2415020b01c633dc2f64a3d3bfcf0378dd2d93a2b199b8fd079bd5b2c`  
		Last Modified: Mon, 10 Aug 2026 23:21:47 GMT  
		Size: 2.6 MB (2553807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:771d8bb049c34832919bcef9a87d6b578601589758b104a72ef48eda9ca1bbb8`  
		Last Modified: Mon, 10 Aug 2026 23:21:47 GMT  
		Size: 684.0 KB (683952 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a074bf664843ef99f0434c3c460bf709abe742d4b69f199de93ffcc67fb665e0`  
		Last Modified: Mon, 10 Aug 2026 23:21:57 GMT  
		Size: 346.6 MB (346633941 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:896155910b4747033090e02c20ba644f51a588b8543dd84bbc9a6721facb7448`  
		Last Modified: Mon, 10 Aug 2026 23:21:49 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29839f65164ca7ecb9f491d8ef41faa5eabaeb68b71e914acb90c27a3cad41ac`  
		Last Modified: Mon, 10 Aug 2026 23:21:49 GMT  
		Size: 555.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc5799918a73ecc4879ce43e204ac256c4c1803be9caf816034bb89d312d7e4e`  
		Last Modified: Mon, 10 Aug 2026 23:21:50 GMT  
		Size: 595.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3dbdf85801b943b4fe2e4f7b5596809db180adfa1e8039acd9af87579871623`  
		Last Modified: Mon, 10 Aug 2026 23:21:50 GMT  
		Size: 877.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:17` - unknown; unknown

```console
$ docker pull odoo@sha256:ad8611bfed25162f355ebe042bf1daf7e4c6b05146dbdf39106b456f5bd45268
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.8 MB (40844962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6bbf17d64813f0be8915c5075c40c8020e35f0218bec7093ecd388730e0e55c`

```dockerfile
```

-	Layers:
	-	`sha256:abc708ee58aebea01617bfa8f9dd1c157a9a9719f9986b219023e45dfe94b096`  
		Last Modified: Mon, 10 Aug 2026 23:21:49 GMT  
		Size: 40.8 MB (40817645 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:00b5bfd55fb45ae1c551f7008eca69bf1aafa215bac8f3bb96b7c2c6b994469b`  
		Last Modified: Mon, 10 Aug 2026 23:21:47 GMT  
		Size: 27.3 KB (27317 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:17` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:5bffb34c47b30fa7d2099e885046cccac651f947c2896675f89fc01e5d6f1ede
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **605.0 MB (605045829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bfa9005eeb433506f5bace6808db11cb2e114c5f6610a4ab89eb247ae1ed6b5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Fri, 31 Jul 2026 21:58:10 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:58:10 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:58:10 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:58:12 GMT
ADD file:66c837214dd75fd34fbf726aabdc4c4a739297d5d853247e4c885c4bce5b7f6a in / 
# Fri, 31 Jul 2026 21:58:12 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 23:16:41 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Mon, 10 Aug 2026 23:16:41 GMT
SHELL [/bin/bash -xo pipefail -c]
# Mon, 10 Aug 2026 23:16:41 GMT
ENV LANG=en_US.UTF-8
# Mon, 10 Aug 2026 23:16:41 GMT
ARG TARGETARCH=arm64
# Mon, 10 Aug 2026 23:16:41 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     DEBIAN_FRONTEND=noninteractive     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Mon, 10 Aug 2026 23:16:49 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jammy-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 10 Aug 2026 23:17:20 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 10 Aug 2026 23:17:20 GMT
ENV ODOO_VERSION=17.0
# Mon, 10 Aug 2026 23:17:20 GMT
ARG ODOO_RELEASE=20260810
# Mon, 10 Aug 2026 23:17:20 GMT
ARG ODOO_SHA=1b95b2735a0d8be33a8bba35abf92a5fa38e81a7
# Mon, 10 Aug 2026 23:18:24 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260810 ODOO_SHA=1b95b2735a0d8be33a8bba35abf92a5fa38e81a7
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Mon, 10 Aug 2026 23:18:24 GMT
COPY ./entrypoint.sh / # buildkit
# Mon, 10 Aug 2026 23:18:24 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Mon, 10 Aug 2026 23:18:24 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260810 ODOO_SHA=1b95b2735a0d8be33a8bba35abf92a5fa38e81a7
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Mon, 10 Aug 2026 23:18:24 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Mon, 10 Aug 2026 23:18:24 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Mon, 10 Aug 2026 23:18:24 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Mon, 10 Aug 2026 23:18:24 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Mon, 10 Aug 2026 23:18:24 GMT
USER odoo
# Mon, 10 Aug 2026 23:18:24 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 10 Aug 2026 23:18:24 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:e737c5ed04040f2f0a2a5834e272c5fa0ab6a31a0641be05eb1669153c7c4cfc`  
		Last Modified: Fri, 31 Jul 2026 22:53:57 GMT  
		Size: 27.6 MB (27620032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b8325976c16e48dc94a67b3778f4343d30fbb0c0f98d09a2bef23afab0357b0`  
		Last Modified: Mon, 10 Aug 2026 23:19:49 GMT  
		Size: 227.9 MB (227944565 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbf4acb0b01ead4c66e8e80b198ed4284135ba1035fb51d66c30c18b57f6270d`  
		Last Modified: Mon, 10 Aug 2026 23:19:40 GMT  
		Size: 2.5 MB (2549277 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9970304e8d445322dbe474f62e71b40efbae67b9268e77d799f89e991f2ab5c0`  
		Last Modified: Mon, 10 Aug 2026 23:19:40 GMT  
		Size: 683.9 KB (683885 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2eab4e47c2c542f0d66d5a284b7d54140de16a52b600eebe8b1982cc4d660fa`  
		Last Modified: Mon, 10 Aug 2026 23:19:51 GMT  
		Size: 346.2 MB (346245274 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19614d9b0ff5828a9c3fbee3c336f979472410fa4e92d07e6d6d4f4b834eafe2`  
		Last Modified: Mon, 10 Aug 2026 23:19:42 GMT  
		Size: 768.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8869b3252c3d88df10265c0e7b234837c4d2b28355ce1bfeb1f1a462547ad22c`  
		Last Modified: Mon, 10 Aug 2026 23:19:42 GMT  
		Size: 555.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f91c15c1a6c4e5b33bbd3098c0cebaba2c46eb6c4483853d5c86fc7615ec75e`  
		Last Modified: Mon, 10 Aug 2026 23:19:43 GMT  
		Size: 594.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4a6128c44c03832614935c41c40b83eabd1644e5d367fc380e6f24747744697`  
		Last Modified: Mon, 10 Aug 2026 23:19:43 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:17` - unknown; unknown

```console
$ docker pull odoo@sha256:30815b60b07a3bd2a754b7afb490fd469b2568fc4523aaba0e30773baa6b37b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.9 MB (40851618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:066216065a67678e9d8265760ea4bfce1eaca8c80ae074f6cc5b0b7ba311bb7e`

```dockerfile
```

-	Layers:
	-	`sha256:88301bfdbed1ecb78926d76934ab2b14589b6c11e22b6326b3ce423643afe449`  
		Last Modified: Mon, 10 Aug 2026 23:19:43 GMT  
		Size: 40.8 MB (40824149 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:406a8d011b38cf72f8f1371c523d8e4d8783df5959e39b613b485bcd9808c985`  
		Last Modified: Mon, 10 Aug 2026 23:19:40 GMT  
		Size: 27.5 KB (27469 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:17.0`

```console
$ docker pull odoo@sha256:4959237918da385a5befe007fc95177bc2244c048ebc55097b7aa71c703e70ba
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `odoo:17.0` - linux; amd64

```console
$ docker pull odoo@sha256:431fd8bd2d4c875e51a8368a45dc0ab8f7fbe06ffd85180ef61433652c5929b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **610.1 MB (610131717 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b5b8f0d5771b25640b75f70c2936292aae882bcdefd7075b3e4b85e784c3726`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Fri, 31 Jul 2026 21:53:09 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:53:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:53:09 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:53:11 GMT
ADD file:4501ff54ffd37d854b1cfbcd2e37da58bf8a49da3a6a82232d03e7556d337a92 in / 
# Fri, 31 Jul 2026 21:53:12 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 23:18:47 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Mon, 10 Aug 2026 23:18:47 GMT
SHELL [/bin/bash -xo pipefail -c]
# Mon, 10 Aug 2026 23:18:47 GMT
ENV LANG=en_US.UTF-8
# Mon, 10 Aug 2026 23:18:47 GMT
ARG TARGETARCH=amd64
# Mon, 10 Aug 2026 23:18:47 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     DEBIAN_FRONTEND=noninteractive     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Mon, 10 Aug 2026 23:18:55 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jammy-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 10 Aug 2026 23:19:28 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 10 Aug 2026 23:19:28 GMT
ENV ODOO_VERSION=17.0
# Mon, 10 Aug 2026 23:19:28 GMT
ARG ODOO_RELEASE=20260810
# Mon, 10 Aug 2026 23:19:28 GMT
ARG ODOO_SHA=1b95b2735a0d8be33a8bba35abf92a5fa38e81a7
# Mon, 10 Aug 2026 23:20:32 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260810 ODOO_SHA=1b95b2735a0d8be33a8bba35abf92a5fa38e81a7
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Mon, 10 Aug 2026 23:20:32 GMT
COPY ./entrypoint.sh / # buildkit
# Mon, 10 Aug 2026 23:20:32 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Mon, 10 Aug 2026 23:20:32 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260810 ODOO_SHA=1b95b2735a0d8be33a8bba35abf92a5fa38e81a7
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Mon, 10 Aug 2026 23:20:32 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Mon, 10 Aug 2026 23:20:32 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Mon, 10 Aug 2026 23:20:32 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Mon, 10 Aug 2026 23:20:32 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Mon, 10 Aug 2026 23:20:32 GMT
USER odoo
# Mon, 10 Aug 2026 23:20:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 10 Aug 2026 23:20:32 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:39a945af8df2ad9343f141c82355d3f2c4b576d432eda34c460d630607462b60`  
		Last Modified: Fri, 31 Jul 2026 22:53:51 GMT  
		Size: 29.7 MB (29736517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bf75afa08f43caf7429543e2f6cd493ab11a5c75f00fafe925166ef136e2866`  
		Last Modified: Mon, 10 Aug 2026 23:21:55 GMT  
		Size: 230.5 MB (230520706 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddb425a2415020b01c633dc2f64a3d3bfcf0378dd2d93a2b199b8fd079bd5b2c`  
		Last Modified: Mon, 10 Aug 2026 23:21:47 GMT  
		Size: 2.6 MB (2553807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:771d8bb049c34832919bcef9a87d6b578601589758b104a72ef48eda9ca1bbb8`  
		Last Modified: Mon, 10 Aug 2026 23:21:47 GMT  
		Size: 684.0 KB (683952 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a074bf664843ef99f0434c3c460bf709abe742d4b69f199de93ffcc67fb665e0`  
		Last Modified: Mon, 10 Aug 2026 23:21:57 GMT  
		Size: 346.6 MB (346633941 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:896155910b4747033090e02c20ba644f51a588b8543dd84bbc9a6721facb7448`  
		Last Modified: Mon, 10 Aug 2026 23:21:49 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29839f65164ca7ecb9f491d8ef41faa5eabaeb68b71e914acb90c27a3cad41ac`  
		Last Modified: Mon, 10 Aug 2026 23:21:49 GMT  
		Size: 555.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc5799918a73ecc4879ce43e204ac256c4c1803be9caf816034bb89d312d7e4e`  
		Last Modified: Mon, 10 Aug 2026 23:21:50 GMT  
		Size: 595.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3dbdf85801b943b4fe2e4f7b5596809db180adfa1e8039acd9af87579871623`  
		Last Modified: Mon, 10 Aug 2026 23:21:50 GMT  
		Size: 877.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:17.0` - unknown; unknown

```console
$ docker pull odoo@sha256:ad8611bfed25162f355ebe042bf1daf7e4c6b05146dbdf39106b456f5bd45268
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.8 MB (40844962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6bbf17d64813f0be8915c5075c40c8020e35f0218bec7093ecd388730e0e55c`

```dockerfile
```

-	Layers:
	-	`sha256:abc708ee58aebea01617bfa8f9dd1c157a9a9719f9986b219023e45dfe94b096`  
		Last Modified: Mon, 10 Aug 2026 23:21:49 GMT  
		Size: 40.8 MB (40817645 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:00b5bfd55fb45ae1c551f7008eca69bf1aafa215bac8f3bb96b7c2c6b994469b`  
		Last Modified: Mon, 10 Aug 2026 23:21:47 GMT  
		Size: 27.3 KB (27317 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:17.0` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:5bffb34c47b30fa7d2099e885046cccac651f947c2896675f89fc01e5d6f1ede
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **605.0 MB (605045829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bfa9005eeb433506f5bace6808db11cb2e114c5f6610a4ab89eb247ae1ed6b5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Fri, 31 Jul 2026 21:58:10 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:58:10 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:58:10 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:58:12 GMT
ADD file:66c837214dd75fd34fbf726aabdc4c4a739297d5d853247e4c885c4bce5b7f6a in / 
# Fri, 31 Jul 2026 21:58:12 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 23:16:41 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Mon, 10 Aug 2026 23:16:41 GMT
SHELL [/bin/bash -xo pipefail -c]
# Mon, 10 Aug 2026 23:16:41 GMT
ENV LANG=en_US.UTF-8
# Mon, 10 Aug 2026 23:16:41 GMT
ARG TARGETARCH=arm64
# Mon, 10 Aug 2026 23:16:41 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     DEBIAN_FRONTEND=noninteractive     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Mon, 10 Aug 2026 23:16:49 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jammy-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 10 Aug 2026 23:17:20 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 10 Aug 2026 23:17:20 GMT
ENV ODOO_VERSION=17.0
# Mon, 10 Aug 2026 23:17:20 GMT
ARG ODOO_RELEASE=20260810
# Mon, 10 Aug 2026 23:17:20 GMT
ARG ODOO_SHA=1b95b2735a0d8be33a8bba35abf92a5fa38e81a7
# Mon, 10 Aug 2026 23:18:24 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260810 ODOO_SHA=1b95b2735a0d8be33a8bba35abf92a5fa38e81a7
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Mon, 10 Aug 2026 23:18:24 GMT
COPY ./entrypoint.sh / # buildkit
# Mon, 10 Aug 2026 23:18:24 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Mon, 10 Aug 2026 23:18:24 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260810 ODOO_SHA=1b95b2735a0d8be33a8bba35abf92a5fa38e81a7
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Mon, 10 Aug 2026 23:18:24 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Mon, 10 Aug 2026 23:18:24 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Mon, 10 Aug 2026 23:18:24 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Mon, 10 Aug 2026 23:18:24 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Mon, 10 Aug 2026 23:18:24 GMT
USER odoo
# Mon, 10 Aug 2026 23:18:24 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 10 Aug 2026 23:18:24 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:e737c5ed04040f2f0a2a5834e272c5fa0ab6a31a0641be05eb1669153c7c4cfc`  
		Last Modified: Fri, 31 Jul 2026 22:53:57 GMT  
		Size: 27.6 MB (27620032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b8325976c16e48dc94a67b3778f4343d30fbb0c0f98d09a2bef23afab0357b0`  
		Last Modified: Mon, 10 Aug 2026 23:19:49 GMT  
		Size: 227.9 MB (227944565 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbf4acb0b01ead4c66e8e80b198ed4284135ba1035fb51d66c30c18b57f6270d`  
		Last Modified: Mon, 10 Aug 2026 23:19:40 GMT  
		Size: 2.5 MB (2549277 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9970304e8d445322dbe474f62e71b40efbae67b9268e77d799f89e991f2ab5c0`  
		Last Modified: Mon, 10 Aug 2026 23:19:40 GMT  
		Size: 683.9 KB (683885 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2eab4e47c2c542f0d66d5a284b7d54140de16a52b600eebe8b1982cc4d660fa`  
		Last Modified: Mon, 10 Aug 2026 23:19:51 GMT  
		Size: 346.2 MB (346245274 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19614d9b0ff5828a9c3fbee3c336f979472410fa4e92d07e6d6d4f4b834eafe2`  
		Last Modified: Mon, 10 Aug 2026 23:19:42 GMT  
		Size: 768.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8869b3252c3d88df10265c0e7b234837c4d2b28355ce1bfeb1f1a462547ad22c`  
		Last Modified: Mon, 10 Aug 2026 23:19:42 GMT  
		Size: 555.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f91c15c1a6c4e5b33bbd3098c0cebaba2c46eb6c4483853d5c86fc7615ec75e`  
		Last Modified: Mon, 10 Aug 2026 23:19:43 GMT  
		Size: 594.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4a6128c44c03832614935c41c40b83eabd1644e5d367fc380e6f24747744697`  
		Last Modified: Mon, 10 Aug 2026 23:19:43 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:17.0` - unknown; unknown

```console
$ docker pull odoo@sha256:30815b60b07a3bd2a754b7afb490fd469b2568fc4523aaba0e30773baa6b37b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.9 MB (40851618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:066216065a67678e9d8265760ea4bfce1eaca8c80ae074f6cc5b0b7ba311bb7e`

```dockerfile
```

-	Layers:
	-	`sha256:88301bfdbed1ecb78926d76934ab2b14589b6c11e22b6326b3ce423643afe449`  
		Last Modified: Mon, 10 Aug 2026 23:19:43 GMT  
		Size: 40.8 MB (40824149 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:406a8d011b38cf72f8f1371c523d8e4d8783df5959e39b613b485bcd9808c985`  
		Last Modified: Mon, 10 Aug 2026 23:19:40 GMT  
		Size: 27.5 KB (27469 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:17.0-20260810`

```console
$ docker pull odoo@sha256:4959237918da385a5befe007fc95177bc2244c048ebc55097b7aa71c703e70ba
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `odoo:17.0-20260810` - linux; amd64

```console
$ docker pull odoo@sha256:431fd8bd2d4c875e51a8368a45dc0ab8f7fbe06ffd85180ef61433652c5929b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **610.1 MB (610131717 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b5b8f0d5771b25640b75f70c2936292aae882bcdefd7075b3e4b85e784c3726`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Fri, 31 Jul 2026 21:53:09 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:53:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:53:09 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:53:11 GMT
ADD file:4501ff54ffd37d854b1cfbcd2e37da58bf8a49da3a6a82232d03e7556d337a92 in / 
# Fri, 31 Jul 2026 21:53:12 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 23:18:47 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Mon, 10 Aug 2026 23:18:47 GMT
SHELL [/bin/bash -xo pipefail -c]
# Mon, 10 Aug 2026 23:18:47 GMT
ENV LANG=en_US.UTF-8
# Mon, 10 Aug 2026 23:18:47 GMT
ARG TARGETARCH=amd64
# Mon, 10 Aug 2026 23:18:47 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     DEBIAN_FRONTEND=noninteractive     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Mon, 10 Aug 2026 23:18:55 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jammy-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 10 Aug 2026 23:19:28 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 10 Aug 2026 23:19:28 GMT
ENV ODOO_VERSION=17.0
# Mon, 10 Aug 2026 23:19:28 GMT
ARG ODOO_RELEASE=20260810
# Mon, 10 Aug 2026 23:19:28 GMT
ARG ODOO_SHA=1b95b2735a0d8be33a8bba35abf92a5fa38e81a7
# Mon, 10 Aug 2026 23:20:32 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260810 ODOO_SHA=1b95b2735a0d8be33a8bba35abf92a5fa38e81a7
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Mon, 10 Aug 2026 23:20:32 GMT
COPY ./entrypoint.sh / # buildkit
# Mon, 10 Aug 2026 23:20:32 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Mon, 10 Aug 2026 23:20:32 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260810 ODOO_SHA=1b95b2735a0d8be33a8bba35abf92a5fa38e81a7
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Mon, 10 Aug 2026 23:20:32 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Mon, 10 Aug 2026 23:20:32 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Mon, 10 Aug 2026 23:20:32 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Mon, 10 Aug 2026 23:20:32 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Mon, 10 Aug 2026 23:20:32 GMT
USER odoo
# Mon, 10 Aug 2026 23:20:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 10 Aug 2026 23:20:32 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:39a945af8df2ad9343f141c82355d3f2c4b576d432eda34c460d630607462b60`  
		Last Modified: Fri, 31 Jul 2026 22:53:51 GMT  
		Size: 29.7 MB (29736517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bf75afa08f43caf7429543e2f6cd493ab11a5c75f00fafe925166ef136e2866`  
		Last Modified: Mon, 10 Aug 2026 23:21:55 GMT  
		Size: 230.5 MB (230520706 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddb425a2415020b01c633dc2f64a3d3bfcf0378dd2d93a2b199b8fd079bd5b2c`  
		Last Modified: Mon, 10 Aug 2026 23:21:47 GMT  
		Size: 2.6 MB (2553807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:771d8bb049c34832919bcef9a87d6b578601589758b104a72ef48eda9ca1bbb8`  
		Last Modified: Mon, 10 Aug 2026 23:21:47 GMT  
		Size: 684.0 KB (683952 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a074bf664843ef99f0434c3c460bf709abe742d4b69f199de93ffcc67fb665e0`  
		Last Modified: Mon, 10 Aug 2026 23:21:57 GMT  
		Size: 346.6 MB (346633941 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:896155910b4747033090e02c20ba644f51a588b8543dd84bbc9a6721facb7448`  
		Last Modified: Mon, 10 Aug 2026 23:21:49 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29839f65164ca7ecb9f491d8ef41faa5eabaeb68b71e914acb90c27a3cad41ac`  
		Last Modified: Mon, 10 Aug 2026 23:21:49 GMT  
		Size: 555.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc5799918a73ecc4879ce43e204ac256c4c1803be9caf816034bb89d312d7e4e`  
		Last Modified: Mon, 10 Aug 2026 23:21:50 GMT  
		Size: 595.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3dbdf85801b943b4fe2e4f7b5596809db180adfa1e8039acd9af87579871623`  
		Last Modified: Mon, 10 Aug 2026 23:21:50 GMT  
		Size: 877.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:17.0-20260810` - unknown; unknown

```console
$ docker pull odoo@sha256:ad8611bfed25162f355ebe042bf1daf7e4c6b05146dbdf39106b456f5bd45268
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.8 MB (40844962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6bbf17d64813f0be8915c5075c40c8020e35f0218bec7093ecd388730e0e55c`

```dockerfile
```

-	Layers:
	-	`sha256:abc708ee58aebea01617bfa8f9dd1c157a9a9719f9986b219023e45dfe94b096`  
		Last Modified: Mon, 10 Aug 2026 23:21:49 GMT  
		Size: 40.8 MB (40817645 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:00b5bfd55fb45ae1c551f7008eca69bf1aafa215bac8f3bb96b7c2c6b994469b`  
		Last Modified: Mon, 10 Aug 2026 23:21:47 GMT  
		Size: 27.3 KB (27317 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:17.0-20260810` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:5bffb34c47b30fa7d2099e885046cccac651f947c2896675f89fc01e5d6f1ede
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **605.0 MB (605045829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bfa9005eeb433506f5bace6808db11cb2e114c5f6610a4ab89eb247ae1ed6b5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Fri, 31 Jul 2026 21:58:10 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:58:10 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:58:10 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:58:12 GMT
ADD file:66c837214dd75fd34fbf726aabdc4c4a739297d5d853247e4c885c4bce5b7f6a in / 
# Fri, 31 Jul 2026 21:58:12 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 23:16:41 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Mon, 10 Aug 2026 23:16:41 GMT
SHELL [/bin/bash -xo pipefail -c]
# Mon, 10 Aug 2026 23:16:41 GMT
ENV LANG=en_US.UTF-8
# Mon, 10 Aug 2026 23:16:41 GMT
ARG TARGETARCH=arm64
# Mon, 10 Aug 2026 23:16:41 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     DEBIAN_FRONTEND=noninteractive     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Mon, 10 Aug 2026 23:16:49 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jammy-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 10 Aug 2026 23:17:20 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 10 Aug 2026 23:17:20 GMT
ENV ODOO_VERSION=17.0
# Mon, 10 Aug 2026 23:17:20 GMT
ARG ODOO_RELEASE=20260810
# Mon, 10 Aug 2026 23:17:20 GMT
ARG ODOO_SHA=1b95b2735a0d8be33a8bba35abf92a5fa38e81a7
# Mon, 10 Aug 2026 23:18:24 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260810 ODOO_SHA=1b95b2735a0d8be33a8bba35abf92a5fa38e81a7
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Mon, 10 Aug 2026 23:18:24 GMT
COPY ./entrypoint.sh / # buildkit
# Mon, 10 Aug 2026 23:18:24 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Mon, 10 Aug 2026 23:18:24 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260810 ODOO_SHA=1b95b2735a0d8be33a8bba35abf92a5fa38e81a7
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Mon, 10 Aug 2026 23:18:24 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Mon, 10 Aug 2026 23:18:24 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Mon, 10 Aug 2026 23:18:24 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Mon, 10 Aug 2026 23:18:24 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Mon, 10 Aug 2026 23:18:24 GMT
USER odoo
# Mon, 10 Aug 2026 23:18:24 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 10 Aug 2026 23:18:24 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:e737c5ed04040f2f0a2a5834e272c5fa0ab6a31a0641be05eb1669153c7c4cfc`  
		Last Modified: Fri, 31 Jul 2026 22:53:57 GMT  
		Size: 27.6 MB (27620032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b8325976c16e48dc94a67b3778f4343d30fbb0c0f98d09a2bef23afab0357b0`  
		Last Modified: Mon, 10 Aug 2026 23:19:49 GMT  
		Size: 227.9 MB (227944565 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbf4acb0b01ead4c66e8e80b198ed4284135ba1035fb51d66c30c18b57f6270d`  
		Last Modified: Mon, 10 Aug 2026 23:19:40 GMT  
		Size: 2.5 MB (2549277 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9970304e8d445322dbe474f62e71b40efbae67b9268e77d799f89e991f2ab5c0`  
		Last Modified: Mon, 10 Aug 2026 23:19:40 GMT  
		Size: 683.9 KB (683885 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2eab4e47c2c542f0d66d5a284b7d54140de16a52b600eebe8b1982cc4d660fa`  
		Last Modified: Mon, 10 Aug 2026 23:19:51 GMT  
		Size: 346.2 MB (346245274 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19614d9b0ff5828a9c3fbee3c336f979472410fa4e92d07e6d6d4f4b834eafe2`  
		Last Modified: Mon, 10 Aug 2026 23:19:42 GMT  
		Size: 768.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8869b3252c3d88df10265c0e7b234837c4d2b28355ce1bfeb1f1a462547ad22c`  
		Last Modified: Mon, 10 Aug 2026 23:19:42 GMT  
		Size: 555.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f91c15c1a6c4e5b33bbd3098c0cebaba2c46eb6c4483853d5c86fc7615ec75e`  
		Last Modified: Mon, 10 Aug 2026 23:19:43 GMT  
		Size: 594.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4a6128c44c03832614935c41c40b83eabd1644e5d367fc380e6f24747744697`  
		Last Modified: Mon, 10 Aug 2026 23:19:43 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:17.0-20260810` - unknown; unknown

```console
$ docker pull odoo@sha256:30815b60b07a3bd2a754b7afb490fd469b2568fc4523aaba0e30773baa6b37b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.9 MB (40851618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:066216065a67678e9d8265760ea4bfce1eaca8c80ae074f6cc5b0b7ba311bb7e`

```dockerfile
```

-	Layers:
	-	`sha256:88301bfdbed1ecb78926d76934ab2b14589b6c11e22b6326b3ce423643afe449`  
		Last Modified: Mon, 10 Aug 2026 23:19:43 GMT  
		Size: 40.8 MB (40824149 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:406a8d011b38cf72f8f1371c523d8e4d8783df5959e39b613b485bcd9808c985`  
		Last Modified: Mon, 10 Aug 2026 23:19:40 GMT  
		Size: 27.5 KB (27469 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:18`

```console
$ docker pull odoo@sha256:4ea9b4667921130add13c1b859aa170a4572b5c3c3d747bfb0ef152fdb0b48a7
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
$ docker pull odoo@sha256:27992c4540c2dfb2f12b2ecaeb5c78a333c9d20a5fb4e6f0904faa53d6af9827
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **675.6 MB (675615382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b01d8fd7a981a9dd4c2a63fe231f8684581449c28d52a4554b99579e3176cc56`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Fri, 31 Jul 2026 20:37:20 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:37:20 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:37:20 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:37:22 GMT
ADD file:d938ff3d4eee15d8600de84bf85eac6ecd0f20bc92dfe305dafbff0bdc974c0f in / 
# Fri, 31 Jul 2026 20:37:23 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 23:18:37 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Mon, 10 Aug 2026 23:18:37 GMT
SHELL [/bin/bash -xo pipefail -c]
# Mon, 10 Aug 2026 23:18:37 GMT
ENV LANG=en_US.UTF-8
# Mon, 10 Aug 2026 23:18:37 GMT
ARG TARGETARCH=amd64
# Mon, 10 Aug 2026 23:18:37 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Mon, 10 Aug 2026 23:18:47 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 10 Aug 2026 23:20:02 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 10 Aug 2026 23:20:02 GMT
ENV ODOO_VERSION=18.0
# Mon, 10 Aug 2026 23:20:02 GMT
ARG ODOO_RELEASE=20260810
# Mon, 10 Aug 2026 23:20:02 GMT
ARG ODOO_SHA=6decf89835c665e67fd788128941f8fb8d104563
# Mon, 10 Aug 2026 23:20:56 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260810 ODOO_SHA=6decf89835c665e67fd788128941f8fb8d104563
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Mon, 10 Aug 2026 23:20:57 GMT
COPY ./entrypoint.sh / # buildkit
# Mon, 10 Aug 2026 23:20:57 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Mon, 10 Aug 2026 23:20:57 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260810 ODOO_SHA=6decf89835c665e67fd788128941f8fb8d104563
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Mon, 10 Aug 2026 23:20:57 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Mon, 10 Aug 2026 23:20:57 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Mon, 10 Aug 2026 23:20:57 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Mon, 10 Aug 2026 23:20:57 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Mon, 10 Aug 2026 23:20:57 GMT
USER odoo
# Mon, 10 Aug 2026 23:20:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 10 Aug 2026 23:20:57 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adcf2d674256c43a81f6a79ae92ba99dee81659aa96f34c0da0280caabcac923`  
		Last Modified: Mon, 10 Aug 2026 23:22:31 GMT  
		Size: 241.1 MB (241082487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dec897cd682e03f1218c55a774d99949937f137caa3bb66d1df2e2d76a7c4006`  
		Last Modified: Mon, 10 Aug 2026 23:22:22 GMT  
		Size: 14.2 MB (14202607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3d049a6deea2d1c1ff1a7be87bd0e6a860384e7fd9d393fe6c0f35ab068618e`  
		Last Modified: Mon, 10 Aug 2026 23:22:21 GMT  
		Size: 869.3 KB (869274 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96cb212fc33ca736f23b4dc9396edec8124686a6fb57d57788f766ef21496e94`  
		Last Modified: Mon, 10 Aug 2026 23:22:34 GMT  
		Size: 389.7 MB (389707110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66262296ce747d2291f3eebf1e9025ddeb601f65f0ac100a293c2f1d3fbc3925`  
		Last Modified: Mon, 10 Aug 2026 23:22:23 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b39aa18e85afe059b782299f981062b2f2341e29c54d11bbb8f9b52bbde44786`  
		Last Modified: Mon, 10 Aug 2026 23:22:24 GMT  
		Size: 555.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29dbb5f6a972d7f9ef1591ec9feff0e86326115ac69991a381fee962a61e77ec`  
		Last Modified: Mon, 10 Aug 2026 23:22:24 GMT  
		Size: 595.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cbcbb7bd623ce48c6aa44fb6b10607aa0c01ca05d137e37fcfecd84e1ebc29c`  
		Last Modified: Mon, 10 Aug 2026 23:22:25 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18` - unknown; unknown

```console
$ docker pull odoo@sha256:d51a0385448cc3be8885d22e49778dd5bf8b43e7a2e74f59fbcefa89725d5f3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.9 MB (43857231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7de9b7bcaaf1d106bbfb0bd117152c755af1f554636106ee9ddea5b2ca4475cc`

```dockerfile
```

-	Layers:
	-	`sha256:f50a78de8b3f27f6067ea066ac3f242dfb9f0fb65522aadf689d87bc5cbf166a`  
		Last Modified: Mon, 10 Aug 2026 23:22:24 GMT  
		Size: 43.8 MB (43830034 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:73f97d647b61a069a3f2808a26e9c6f62408577b6413e7dbb9b24efb6be3b242`  
		Last Modified: Mon, 10 Aug 2026 23:22:21 GMT  
		Size: 27.2 KB (27197 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:18` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:fceb7cc19f8a5c77368fe7c98f61712e3d419a5eca8c9acd52942aad9935cfb3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **669.6 MB (669592102 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e32e8966825c48fa67c00868437cab9f6ffee6020b894e59b6ca988880012ec9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Fri, 31 Jul 2026 20:45:33 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:45:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:45:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:45:37 GMT
ADD file:695c79b2217675519eeed9028b8e5d7ae9915817a49f5bf34e80ad57197f07f6 in / 
# Fri, 31 Jul 2026 20:45:37 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 23:16:30 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Mon, 10 Aug 2026 23:16:30 GMT
SHELL [/bin/bash -xo pipefail -c]
# Mon, 10 Aug 2026 23:16:30 GMT
ENV LANG=en_US.UTF-8
# Mon, 10 Aug 2026 23:16:30 GMT
ARG TARGETARCH=arm64
# Mon, 10 Aug 2026 23:16:30 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Mon, 10 Aug 2026 23:16:40 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 10 Aug 2026 23:17:49 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 10 Aug 2026 23:17:49 GMT
ENV ODOO_VERSION=18.0
# Mon, 10 Aug 2026 23:17:49 GMT
ARG ODOO_RELEASE=20260810
# Mon, 10 Aug 2026 23:17:49 GMT
ARG ODOO_SHA=6decf89835c665e67fd788128941f8fb8d104563
# Mon, 10 Aug 2026 23:18:46 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260810 ODOO_SHA=6decf89835c665e67fd788128941f8fb8d104563
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Mon, 10 Aug 2026 23:18:47 GMT
COPY ./entrypoint.sh / # buildkit
# Mon, 10 Aug 2026 23:18:47 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Mon, 10 Aug 2026 23:18:47 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260810 ODOO_SHA=6decf89835c665e67fd788128941f8fb8d104563
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Mon, 10 Aug 2026 23:18:47 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Mon, 10 Aug 2026 23:18:47 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Mon, 10 Aug 2026 23:18:47 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Mon, 10 Aug 2026 23:18:47 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Mon, 10 Aug 2026 23:18:47 GMT
USER odoo
# Mon, 10 Aug 2026 23:18:47 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 10 Aug 2026 23:18:47 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3a780537f394a7e39871c5e3d38cac82833a0bb5c86ba8eaef4774c78add185`  
		Last Modified: Mon, 10 Aug 2026 23:20:23 GMT  
		Size: 236.1 MB (236101488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7e9720924fe8f4f883a06c54ef98f01ff889dabd0376d9a0af6bab64f949cf5`  
		Last Modified: Mon, 10 Aug 2026 23:20:14 GMT  
		Size: 14.2 MB (14171293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13cd5fd1a787c50530a4bfee0cc315282875d8ce7bd6b145d32c525c7d4a097b`  
		Last Modified: Mon, 10 Aug 2026 23:20:12 GMT  
		Size: 869.2 KB (869232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca19f3e8e02ebb91bc060d8858916180a35b17de69e3e905518b62c4433f9dd7`  
		Last Modified: Mon, 10 Aug 2026 23:20:26 GMT  
		Size: 389.6 MB (389560472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c48786ec39df30a0d0200ebd34d67615ba1c5f1e3bf465f41d70afa5c76de750`  
		Last Modified: Mon, 10 Aug 2026 23:20:14 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9f3c55baf9ff65cdd75c879e7fbdac83b9bf1f86a0c43c3963c1fa1a31770d7`  
		Last Modified: Mon, 10 Aug 2026 23:20:15 GMT  
		Size: 557.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e49004351ef403393e96839e254c6711d566c4e6b9d52a82ec5b4bcd716e4396`  
		Last Modified: Mon, 10 Aug 2026 23:20:15 GMT  
		Size: 597.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d0a91dc3046768124366d957a336d552be3c0c37efa3792af17994ab3640054`  
		Last Modified: Mon, 10 Aug 2026 23:20:17 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18` - unknown; unknown

```console
$ docker pull odoo@sha256:b0e506b865870cae6d3ec0e8f202807698651d61ea5b69ead4d2609fd6e54493
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.9 MB (43864655 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6044811b649f01bd22a7eca7536d01e5af1859d01c14adcec35da4fad6b7e87`

```dockerfile
```

-	Layers:
	-	`sha256:989501052e3efbeb2d08f6ede6a94ef5d21faf3aadf77cdcee4ddba70d87b0fb`  
		Last Modified: Mon, 10 Aug 2026 23:20:15 GMT  
		Size: 43.8 MB (43837306 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:07185e924296a61a219987476a0a11346e8c3cb541bc27b993a8efc10f1cf60c`  
		Last Modified: Mon, 10 Aug 2026 23:20:12 GMT  
		Size: 27.3 KB (27349 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:18` - linux; ppc64le

```console
$ docker pull odoo@sha256:a172c4f21e78210517b4db1e85d7a999c536b55250e56620bb704a8c1dcbdcac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **692.0 MB (692026509 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc6ad769ec135fa29bc454d3f0b5572ad5af1b1e2c20db1dfa29ccb2725061be`
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
ARG ODOO_RELEASE=20260810
# Tue, 04 Aug 2026 02:18:29 GMT
ARG ODOO_SHA=6decf89835c665e67fd788128941f8fb8d104563
# Mon, 10 Aug 2026 23:14:54 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260810 ODOO_SHA=6decf89835c665e67fd788128941f8fb8d104563
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Mon, 10 Aug 2026 23:14:55 GMT
COPY ./entrypoint.sh / # buildkit
# Mon, 10 Aug 2026 23:14:55 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Mon, 10 Aug 2026 23:14:56 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260810 ODOO_SHA=6decf89835c665e67fd788128941f8fb8d104563
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Mon, 10 Aug 2026 23:14:56 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Mon, 10 Aug 2026 23:14:56 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Mon, 10 Aug 2026 23:14:56 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Mon, 10 Aug 2026 23:14:56 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Mon, 10 Aug 2026 23:14:56 GMT
USER odoo
# Mon, 10 Aug 2026 23:14:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 10 Aug 2026 23:14:56 GMT
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
	-	`sha256:f20417d5b9230f6422b203d2862688e2dd38ed562ddd87415bd72d22f118d066`  
		Last Modified: Mon, 10 Aug 2026 23:18:16 GMT  
		Size: 390.2 MB (390244036 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c826ea5ad38c67f65de052b8b638ca59c72c54ba268655fa587efcd3735425e`  
		Last Modified: Mon, 10 Aug 2026 23:18:07 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce07e5d5877314b587df61a5eb516f44f10fd011b8f9f9685ff5f867154eea86`  
		Last Modified: Mon, 10 Aug 2026 23:18:07 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0af49008e06b5e859a5cb0df1e4b5d25c32442615bd841a5ba4d74fe90246903`  
		Last Modified: Mon, 10 Aug 2026 23:18:07 GMT  
		Size: 600.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f190cbb7191ca9ef3597ef5901e53a26e729afa90dc841e23ff1443343412637`  
		Last Modified: Mon, 10 Aug 2026 23:18:08 GMT  
		Size: 877.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18` - unknown; unknown

```console
$ docker pull odoo@sha256:b1c95408e711aba04370ed2acdfb0e21d37de6f41e8170a91f00db75ba7d1833
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.9 MB (43865651 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cfdb280a4444ecfac3df732961cb4e8675df98e4125b5df5df05d42301e81ad`

```dockerfile
```

-	Layers:
	-	`sha256:fb525bbf17cc4342190466fe8ee2719f72f3eb5dea3b12fa56b0c22c3c394219`  
		Last Modified: Mon, 10 Aug 2026 23:18:09 GMT  
		Size: 43.8 MB (43838398 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8a76d45d5a5ce259fc388d6866de6dd35904d7e253660bb1cf9aa7081cedbe92`  
		Last Modified: Mon, 10 Aug 2026 23:18:07 GMT  
		Size: 27.3 KB (27253 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:18.0`

```console
$ docker pull odoo@sha256:4ea9b4667921130add13c1b859aa170a4572b5c3c3d747bfb0ef152fdb0b48a7
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
$ docker pull odoo@sha256:27992c4540c2dfb2f12b2ecaeb5c78a333c9d20a5fb4e6f0904faa53d6af9827
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **675.6 MB (675615382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b01d8fd7a981a9dd4c2a63fe231f8684581449c28d52a4554b99579e3176cc56`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Fri, 31 Jul 2026 20:37:20 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:37:20 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:37:20 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:37:22 GMT
ADD file:d938ff3d4eee15d8600de84bf85eac6ecd0f20bc92dfe305dafbff0bdc974c0f in / 
# Fri, 31 Jul 2026 20:37:23 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 23:18:37 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Mon, 10 Aug 2026 23:18:37 GMT
SHELL [/bin/bash -xo pipefail -c]
# Mon, 10 Aug 2026 23:18:37 GMT
ENV LANG=en_US.UTF-8
# Mon, 10 Aug 2026 23:18:37 GMT
ARG TARGETARCH=amd64
# Mon, 10 Aug 2026 23:18:37 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Mon, 10 Aug 2026 23:18:47 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 10 Aug 2026 23:20:02 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 10 Aug 2026 23:20:02 GMT
ENV ODOO_VERSION=18.0
# Mon, 10 Aug 2026 23:20:02 GMT
ARG ODOO_RELEASE=20260810
# Mon, 10 Aug 2026 23:20:02 GMT
ARG ODOO_SHA=6decf89835c665e67fd788128941f8fb8d104563
# Mon, 10 Aug 2026 23:20:56 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260810 ODOO_SHA=6decf89835c665e67fd788128941f8fb8d104563
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Mon, 10 Aug 2026 23:20:57 GMT
COPY ./entrypoint.sh / # buildkit
# Mon, 10 Aug 2026 23:20:57 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Mon, 10 Aug 2026 23:20:57 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260810 ODOO_SHA=6decf89835c665e67fd788128941f8fb8d104563
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Mon, 10 Aug 2026 23:20:57 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Mon, 10 Aug 2026 23:20:57 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Mon, 10 Aug 2026 23:20:57 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Mon, 10 Aug 2026 23:20:57 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Mon, 10 Aug 2026 23:20:57 GMT
USER odoo
# Mon, 10 Aug 2026 23:20:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 10 Aug 2026 23:20:57 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adcf2d674256c43a81f6a79ae92ba99dee81659aa96f34c0da0280caabcac923`  
		Last Modified: Mon, 10 Aug 2026 23:22:31 GMT  
		Size: 241.1 MB (241082487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dec897cd682e03f1218c55a774d99949937f137caa3bb66d1df2e2d76a7c4006`  
		Last Modified: Mon, 10 Aug 2026 23:22:22 GMT  
		Size: 14.2 MB (14202607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3d049a6deea2d1c1ff1a7be87bd0e6a860384e7fd9d393fe6c0f35ab068618e`  
		Last Modified: Mon, 10 Aug 2026 23:22:21 GMT  
		Size: 869.3 KB (869274 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96cb212fc33ca736f23b4dc9396edec8124686a6fb57d57788f766ef21496e94`  
		Last Modified: Mon, 10 Aug 2026 23:22:34 GMT  
		Size: 389.7 MB (389707110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66262296ce747d2291f3eebf1e9025ddeb601f65f0ac100a293c2f1d3fbc3925`  
		Last Modified: Mon, 10 Aug 2026 23:22:23 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b39aa18e85afe059b782299f981062b2f2341e29c54d11bbb8f9b52bbde44786`  
		Last Modified: Mon, 10 Aug 2026 23:22:24 GMT  
		Size: 555.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29dbb5f6a972d7f9ef1591ec9feff0e86326115ac69991a381fee962a61e77ec`  
		Last Modified: Mon, 10 Aug 2026 23:22:24 GMT  
		Size: 595.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cbcbb7bd623ce48c6aa44fb6b10607aa0c01ca05d137e37fcfecd84e1ebc29c`  
		Last Modified: Mon, 10 Aug 2026 23:22:25 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18.0` - unknown; unknown

```console
$ docker pull odoo@sha256:d51a0385448cc3be8885d22e49778dd5bf8b43e7a2e74f59fbcefa89725d5f3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.9 MB (43857231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7de9b7bcaaf1d106bbfb0bd117152c755af1f554636106ee9ddea5b2ca4475cc`

```dockerfile
```

-	Layers:
	-	`sha256:f50a78de8b3f27f6067ea066ac3f242dfb9f0fb65522aadf689d87bc5cbf166a`  
		Last Modified: Mon, 10 Aug 2026 23:22:24 GMT  
		Size: 43.8 MB (43830034 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:73f97d647b61a069a3f2808a26e9c6f62408577b6413e7dbb9b24efb6be3b242`  
		Last Modified: Mon, 10 Aug 2026 23:22:21 GMT  
		Size: 27.2 KB (27197 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:18.0` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:fceb7cc19f8a5c77368fe7c98f61712e3d419a5eca8c9acd52942aad9935cfb3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **669.6 MB (669592102 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e32e8966825c48fa67c00868437cab9f6ffee6020b894e59b6ca988880012ec9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Fri, 31 Jul 2026 20:45:33 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:45:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:45:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:45:37 GMT
ADD file:695c79b2217675519eeed9028b8e5d7ae9915817a49f5bf34e80ad57197f07f6 in / 
# Fri, 31 Jul 2026 20:45:37 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 23:16:30 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Mon, 10 Aug 2026 23:16:30 GMT
SHELL [/bin/bash -xo pipefail -c]
# Mon, 10 Aug 2026 23:16:30 GMT
ENV LANG=en_US.UTF-8
# Mon, 10 Aug 2026 23:16:30 GMT
ARG TARGETARCH=arm64
# Mon, 10 Aug 2026 23:16:30 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Mon, 10 Aug 2026 23:16:40 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 10 Aug 2026 23:17:49 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 10 Aug 2026 23:17:49 GMT
ENV ODOO_VERSION=18.0
# Mon, 10 Aug 2026 23:17:49 GMT
ARG ODOO_RELEASE=20260810
# Mon, 10 Aug 2026 23:17:49 GMT
ARG ODOO_SHA=6decf89835c665e67fd788128941f8fb8d104563
# Mon, 10 Aug 2026 23:18:46 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260810 ODOO_SHA=6decf89835c665e67fd788128941f8fb8d104563
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Mon, 10 Aug 2026 23:18:47 GMT
COPY ./entrypoint.sh / # buildkit
# Mon, 10 Aug 2026 23:18:47 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Mon, 10 Aug 2026 23:18:47 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260810 ODOO_SHA=6decf89835c665e67fd788128941f8fb8d104563
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Mon, 10 Aug 2026 23:18:47 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Mon, 10 Aug 2026 23:18:47 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Mon, 10 Aug 2026 23:18:47 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Mon, 10 Aug 2026 23:18:47 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Mon, 10 Aug 2026 23:18:47 GMT
USER odoo
# Mon, 10 Aug 2026 23:18:47 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 10 Aug 2026 23:18:47 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3a780537f394a7e39871c5e3d38cac82833a0bb5c86ba8eaef4774c78add185`  
		Last Modified: Mon, 10 Aug 2026 23:20:23 GMT  
		Size: 236.1 MB (236101488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7e9720924fe8f4f883a06c54ef98f01ff889dabd0376d9a0af6bab64f949cf5`  
		Last Modified: Mon, 10 Aug 2026 23:20:14 GMT  
		Size: 14.2 MB (14171293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13cd5fd1a787c50530a4bfee0cc315282875d8ce7bd6b145d32c525c7d4a097b`  
		Last Modified: Mon, 10 Aug 2026 23:20:12 GMT  
		Size: 869.2 KB (869232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca19f3e8e02ebb91bc060d8858916180a35b17de69e3e905518b62c4433f9dd7`  
		Last Modified: Mon, 10 Aug 2026 23:20:26 GMT  
		Size: 389.6 MB (389560472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c48786ec39df30a0d0200ebd34d67615ba1c5f1e3bf465f41d70afa5c76de750`  
		Last Modified: Mon, 10 Aug 2026 23:20:14 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9f3c55baf9ff65cdd75c879e7fbdac83b9bf1f86a0c43c3963c1fa1a31770d7`  
		Last Modified: Mon, 10 Aug 2026 23:20:15 GMT  
		Size: 557.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e49004351ef403393e96839e254c6711d566c4e6b9d52a82ec5b4bcd716e4396`  
		Last Modified: Mon, 10 Aug 2026 23:20:15 GMT  
		Size: 597.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d0a91dc3046768124366d957a336d552be3c0c37efa3792af17994ab3640054`  
		Last Modified: Mon, 10 Aug 2026 23:20:17 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18.0` - unknown; unknown

```console
$ docker pull odoo@sha256:b0e506b865870cae6d3ec0e8f202807698651d61ea5b69ead4d2609fd6e54493
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.9 MB (43864655 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6044811b649f01bd22a7eca7536d01e5af1859d01c14adcec35da4fad6b7e87`

```dockerfile
```

-	Layers:
	-	`sha256:989501052e3efbeb2d08f6ede6a94ef5d21faf3aadf77cdcee4ddba70d87b0fb`  
		Last Modified: Mon, 10 Aug 2026 23:20:15 GMT  
		Size: 43.8 MB (43837306 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:07185e924296a61a219987476a0a11346e8c3cb541bc27b993a8efc10f1cf60c`  
		Last Modified: Mon, 10 Aug 2026 23:20:12 GMT  
		Size: 27.3 KB (27349 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:18.0` - linux; ppc64le

```console
$ docker pull odoo@sha256:a172c4f21e78210517b4db1e85d7a999c536b55250e56620bb704a8c1dcbdcac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **692.0 MB (692026509 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc6ad769ec135fa29bc454d3f0b5572ad5af1b1e2c20db1dfa29ccb2725061be`
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
ARG ODOO_RELEASE=20260810
# Tue, 04 Aug 2026 02:18:29 GMT
ARG ODOO_SHA=6decf89835c665e67fd788128941f8fb8d104563
# Mon, 10 Aug 2026 23:14:54 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260810 ODOO_SHA=6decf89835c665e67fd788128941f8fb8d104563
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Mon, 10 Aug 2026 23:14:55 GMT
COPY ./entrypoint.sh / # buildkit
# Mon, 10 Aug 2026 23:14:55 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Mon, 10 Aug 2026 23:14:56 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260810 ODOO_SHA=6decf89835c665e67fd788128941f8fb8d104563
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Mon, 10 Aug 2026 23:14:56 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Mon, 10 Aug 2026 23:14:56 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Mon, 10 Aug 2026 23:14:56 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Mon, 10 Aug 2026 23:14:56 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Mon, 10 Aug 2026 23:14:56 GMT
USER odoo
# Mon, 10 Aug 2026 23:14:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 10 Aug 2026 23:14:56 GMT
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
	-	`sha256:f20417d5b9230f6422b203d2862688e2dd38ed562ddd87415bd72d22f118d066`  
		Last Modified: Mon, 10 Aug 2026 23:18:16 GMT  
		Size: 390.2 MB (390244036 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c826ea5ad38c67f65de052b8b638ca59c72c54ba268655fa587efcd3735425e`  
		Last Modified: Mon, 10 Aug 2026 23:18:07 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce07e5d5877314b587df61a5eb516f44f10fd011b8f9f9685ff5f867154eea86`  
		Last Modified: Mon, 10 Aug 2026 23:18:07 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0af49008e06b5e859a5cb0df1e4b5d25c32442615bd841a5ba4d74fe90246903`  
		Last Modified: Mon, 10 Aug 2026 23:18:07 GMT  
		Size: 600.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f190cbb7191ca9ef3597ef5901e53a26e729afa90dc841e23ff1443343412637`  
		Last Modified: Mon, 10 Aug 2026 23:18:08 GMT  
		Size: 877.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18.0` - unknown; unknown

```console
$ docker pull odoo@sha256:b1c95408e711aba04370ed2acdfb0e21d37de6f41e8170a91f00db75ba7d1833
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.9 MB (43865651 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cfdb280a4444ecfac3df732961cb4e8675df98e4125b5df5df05d42301e81ad`

```dockerfile
```

-	Layers:
	-	`sha256:fb525bbf17cc4342190466fe8ee2719f72f3eb5dea3b12fa56b0c22c3c394219`  
		Last Modified: Mon, 10 Aug 2026 23:18:09 GMT  
		Size: 43.8 MB (43838398 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8a76d45d5a5ce259fc388d6866de6dd35904d7e253660bb1cf9aa7081cedbe92`  
		Last Modified: Mon, 10 Aug 2026 23:18:07 GMT  
		Size: 27.3 KB (27253 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:18.0-20260810`

```console
$ docker pull odoo@sha256:4ea9b4667921130add13c1b859aa170a4572b5c3c3d747bfb0ef152fdb0b48a7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `odoo:18.0-20260810` - linux; amd64

```console
$ docker pull odoo@sha256:27992c4540c2dfb2f12b2ecaeb5c78a333c9d20a5fb4e6f0904faa53d6af9827
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **675.6 MB (675615382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b01d8fd7a981a9dd4c2a63fe231f8684581449c28d52a4554b99579e3176cc56`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Fri, 31 Jul 2026 20:37:20 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:37:20 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:37:20 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:37:22 GMT
ADD file:d938ff3d4eee15d8600de84bf85eac6ecd0f20bc92dfe305dafbff0bdc974c0f in / 
# Fri, 31 Jul 2026 20:37:23 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 23:18:37 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Mon, 10 Aug 2026 23:18:37 GMT
SHELL [/bin/bash -xo pipefail -c]
# Mon, 10 Aug 2026 23:18:37 GMT
ENV LANG=en_US.UTF-8
# Mon, 10 Aug 2026 23:18:37 GMT
ARG TARGETARCH=amd64
# Mon, 10 Aug 2026 23:18:37 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Mon, 10 Aug 2026 23:18:47 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 10 Aug 2026 23:20:02 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 10 Aug 2026 23:20:02 GMT
ENV ODOO_VERSION=18.0
# Mon, 10 Aug 2026 23:20:02 GMT
ARG ODOO_RELEASE=20260810
# Mon, 10 Aug 2026 23:20:02 GMT
ARG ODOO_SHA=6decf89835c665e67fd788128941f8fb8d104563
# Mon, 10 Aug 2026 23:20:56 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260810 ODOO_SHA=6decf89835c665e67fd788128941f8fb8d104563
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Mon, 10 Aug 2026 23:20:57 GMT
COPY ./entrypoint.sh / # buildkit
# Mon, 10 Aug 2026 23:20:57 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Mon, 10 Aug 2026 23:20:57 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260810 ODOO_SHA=6decf89835c665e67fd788128941f8fb8d104563
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Mon, 10 Aug 2026 23:20:57 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Mon, 10 Aug 2026 23:20:57 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Mon, 10 Aug 2026 23:20:57 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Mon, 10 Aug 2026 23:20:57 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Mon, 10 Aug 2026 23:20:57 GMT
USER odoo
# Mon, 10 Aug 2026 23:20:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 10 Aug 2026 23:20:57 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adcf2d674256c43a81f6a79ae92ba99dee81659aa96f34c0da0280caabcac923`  
		Last Modified: Mon, 10 Aug 2026 23:22:31 GMT  
		Size: 241.1 MB (241082487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dec897cd682e03f1218c55a774d99949937f137caa3bb66d1df2e2d76a7c4006`  
		Last Modified: Mon, 10 Aug 2026 23:22:22 GMT  
		Size: 14.2 MB (14202607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3d049a6deea2d1c1ff1a7be87bd0e6a860384e7fd9d393fe6c0f35ab068618e`  
		Last Modified: Mon, 10 Aug 2026 23:22:21 GMT  
		Size: 869.3 KB (869274 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96cb212fc33ca736f23b4dc9396edec8124686a6fb57d57788f766ef21496e94`  
		Last Modified: Mon, 10 Aug 2026 23:22:34 GMT  
		Size: 389.7 MB (389707110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66262296ce747d2291f3eebf1e9025ddeb601f65f0ac100a293c2f1d3fbc3925`  
		Last Modified: Mon, 10 Aug 2026 23:22:23 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b39aa18e85afe059b782299f981062b2f2341e29c54d11bbb8f9b52bbde44786`  
		Last Modified: Mon, 10 Aug 2026 23:22:24 GMT  
		Size: 555.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29dbb5f6a972d7f9ef1591ec9feff0e86326115ac69991a381fee962a61e77ec`  
		Last Modified: Mon, 10 Aug 2026 23:22:24 GMT  
		Size: 595.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cbcbb7bd623ce48c6aa44fb6b10607aa0c01ca05d137e37fcfecd84e1ebc29c`  
		Last Modified: Mon, 10 Aug 2026 23:22:25 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18.0-20260810` - unknown; unknown

```console
$ docker pull odoo@sha256:d51a0385448cc3be8885d22e49778dd5bf8b43e7a2e74f59fbcefa89725d5f3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.9 MB (43857231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7de9b7bcaaf1d106bbfb0bd117152c755af1f554636106ee9ddea5b2ca4475cc`

```dockerfile
```

-	Layers:
	-	`sha256:f50a78de8b3f27f6067ea066ac3f242dfb9f0fb65522aadf689d87bc5cbf166a`  
		Last Modified: Mon, 10 Aug 2026 23:22:24 GMT  
		Size: 43.8 MB (43830034 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:73f97d647b61a069a3f2808a26e9c6f62408577b6413e7dbb9b24efb6be3b242`  
		Last Modified: Mon, 10 Aug 2026 23:22:21 GMT  
		Size: 27.2 KB (27197 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:18.0-20260810` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:fceb7cc19f8a5c77368fe7c98f61712e3d419a5eca8c9acd52942aad9935cfb3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **669.6 MB (669592102 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e32e8966825c48fa67c00868437cab9f6ffee6020b894e59b6ca988880012ec9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Fri, 31 Jul 2026 20:45:33 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:45:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:45:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:45:37 GMT
ADD file:695c79b2217675519eeed9028b8e5d7ae9915817a49f5bf34e80ad57197f07f6 in / 
# Fri, 31 Jul 2026 20:45:37 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 23:16:30 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Mon, 10 Aug 2026 23:16:30 GMT
SHELL [/bin/bash -xo pipefail -c]
# Mon, 10 Aug 2026 23:16:30 GMT
ENV LANG=en_US.UTF-8
# Mon, 10 Aug 2026 23:16:30 GMT
ARG TARGETARCH=arm64
# Mon, 10 Aug 2026 23:16:30 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Mon, 10 Aug 2026 23:16:40 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 10 Aug 2026 23:17:49 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 10 Aug 2026 23:17:49 GMT
ENV ODOO_VERSION=18.0
# Mon, 10 Aug 2026 23:17:49 GMT
ARG ODOO_RELEASE=20260810
# Mon, 10 Aug 2026 23:17:49 GMT
ARG ODOO_SHA=6decf89835c665e67fd788128941f8fb8d104563
# Mon, 10 Aug 2026 23:18:46 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260810 ODOO_SHA=6decf89835c665e67fd788128941f8fb8d104563
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Mon, 10 Aug 2026 23:18:47 GMT
COPY ./entrypoint.sh / # buildkit
# Mon, 10 Aug 2026 23:18:47 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Mon, 10 Aug 2026 23:18:47 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260810 ODOO_SHA=6decf89835c665e67fd788128941f8fb8d104563
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Mon, 10 Aug 2026 23:18:47 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Mon, 10 Aug 2026 23:18:47 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Mon, 10 Aug 2026 23:18:47 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Mon, 10 Aug 2026 23:18:47 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Mon, 10 Aug 2026 23:18:47 GMT
USER odoo
# Mon, 10 Aug 2026 23:18:47 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 10 Aug 2026 23:18:47 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3a780537f394a7e39871c5e3d38cac82833a0bb5c86ba8eaef4774c78add185`  
		Last Modified: Mon, 10 Aug 2026 23:20:23 GMT  
		Size: 236.1 MB (236101488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7e9720924fe8f4f883a06c54ef98f01ff889dabd0376d9a0af6bab64f949cf5`  
		Last Modified: Mon, 10 Aug 2026 23:20:14 GMT  
		Size: 14.2 MB (14171293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13cd5fd1a787c50530a4bfee0cc315282875d8ce7bd6b145d32c525c7d4a097b`  
		Last Modified: Mon, 10 Aug 2026 23:20:12 GMT  
		Size: 869.2 KB (869232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca19f3e8e02ebb91bc060d8858916180a35b17de69e3e905518b62c4433f9dd7`  
		Last Modified: Mon, 10 Aug 2026 23:20:26 GMT  
		Size: 389.6 MB (389560472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c48786ec39df30a0d0200ebd34d67615ba1c5f1e3bf465f41d70afa5c76de750`  
		Last Modified: Mon, 10 Aug 2026 23:20:14 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9f3c55baf9ff65cdd75c879e7fbdac83b9bf1f86a0c43c3963c1fa1a31770d7`  
		Last Modified: Mon, 10 Aug 2026 23:20:15 GMT  
		Size: 557.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e49004351ef403393e96839e254c6711d566c4e6b9d52a82ec5b4bcd716e4396`  
		Last Modified: Mon, 10 Aug 2026 23:20:15 GMT  
		Size: 597.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d0a91dc3046768124366d957a336d552be3c0c37efa3792af17994ab3640054`  
		Last Modified: Mon, 10 Aug 2026 23:20:17 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18.0-20260810` - unknown; unknown

```console
$ docker pull odoo@sha256:b0e506b865870cae6d3ec0e8f202807698651d61ea5b69ead4d2609fd6e54493
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.9 MB (43864655 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6044811b649f01bd22a7eca7536d01e5af1859d01c14adcec35da4fad6b7e87`

```dockerfile
```

-	Layers:
	-	`sha256:989501052e3efbeb2d08f6ede6a94ef5d21faf3aadf77cdcee4ddba70d87b0fb`  
		Last Modified: Mon, 10 Aug 2026 23:20:15 GMT  
		Size: 43.8 MB (43837306 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:07185e924296a61a219987476a0a11346e8c3cb541bc27b993a8efc10f1cf60c`  
		Last Modified: Mon, 10 Aug 2026 23:20:12 GMT  
		Size: 27.3 KB (27349 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:18.0-20260810` - linux; ppc64le

```console
$ docker pull odoo@sha256:a172c4f21e78210517b4db1e85d7a999c536b55250e56620bb704a8c1dcbdcac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **692.0 MB (692026509 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc6ad769ec135fa29bc454d3f0b5572ad5af1b1e2c20db1dfa29ccb2725061be`
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
ARG ODOO_RELEASE=20260810
# Tue, 04 Aug 2026 02:18:29 GMT
ARG ODOO_SHA=6decf89835c665e67fd788128941f8fb8d104563
# Mon, 10 Aug 2026 23:14:54 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260810 ODOO_SHA=6decf89835c665e67fd788128941f8fb8d104563
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Mon, 10 Aug 2026 23:14:55 GMT
COPY ./entrypoint.sh / # buildkit
# Mon, 10 Aug 2026 23:14:55 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Mon, 10 Aug 2026 23:14:56 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260810 ODOO_SHA=6decf89835c665e67fd788128941f8fb8d104563
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Mon, 10 Aug 2026 23:14:56 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Mon, 10 Aug 2026 23:14:56 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Mon, 10 Aug 2026 23:14:56 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Mon, 10 Aug 2026 23:14:56 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Mon, 10 Aug 2026 23:14:56 GMT
USER odoo
# Mon, 10 Aug 2026 23:14:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 10 Aug 2026 23:14:56 GMT
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
	-	`sha256:f20417d5b9230f6422b203d2862688e2dd38ed562ddd87415bd72d22f118d066`  
		Last Modified: Mon, 10 Aug 2026 23:18:16 GMT  
		Size: 390.2 MB (390244036 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c826ea5ad38c67f65de052b8b638ca59c72c54ba268655fa587efcd3735425e`  
		Last Modified: Mon, 10 Aug 2026 23:18:07 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce07e5d5877314b587df61a5eb516f44f10fd011b8f9f9685ff5f867154eea86`  
		Last Modified: Mon, 10 Aug 2026 23:18:07 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0af49008e06b5e859a5cb0df1e4b5d25c32442615bd841a5ba4d74fe90246903`  
		Last Modified: Mon, 10 Aug 2026 23:18:07 GMT  
		Size: 600.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f190cbb7191ca9ef3597ef5901e53a26e729afa90dc841e23ff1443343412637`  
		Last Modified: Mon, 10 Aug 2026 23:18:08 GMT  
		Size: 877.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18.0-20260810` - unknown; unknown

```console
$ docker pull odoo@sha256:b1c95408e711aba04370ed2acdfb0e21d37de6f41e8170a91f00db75ba7d1833
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.9 MB (43865651 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cfdb280a4444ecfac3df732961cb4e8675df98e4125b5df5df05d42301e81ad`

```dockerfile
```

-	Layers:
	-	`sha256:fb525bbf17cc4342190466fe8ee2719f72f3eb5dea3b12fa56b0c22c3c394219`  
		Last Modified: Mon, 10 Aug 2026 23:18:09 GMT  
		Size: 43.8 MB (43838398 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8a76d45d5a5ce259fc388d6866de6dd35904d7e253660bb1cf9aa7081cedbe92`  
		Last Modified: Mon, 10 Aug 2026 23:18:07 GMT  
		Size: 27.3 KB (27253 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:19`

```console
$ docker pull odoo@sha256:94a4f480b8039dc9ca2bca9e77e59f97d3311f66e2aad663cf2670be9c66d4ea
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
$ docker pull odoo@sha256:7fcd40c8638205f4844240397712ebbaa07918eb54f734f09e2c61274c3ae83f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **698.6 MB (698561583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09e7bc64740590e083400ad0f96745ca7290e4fda6bfa1dd1dedc3cccd88e51b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Fri, 31 Jul 2026 20:37:20 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:37:20 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:37:20 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:37:22 GMT
ADD file:d938ff3d4eee15d8600de84bf85eac6ecd0f20bc92dfe305dafbff0bdc974c0f in / 
# Fri, 31 Jul 2026 20:37:23 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 23:14:18 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Mon, 10 Aug 2026 23:14:18 GMT
SHELL [/bin/bash -xo pipefail -c]
# Mon, 10 Aug 2026 23:14:18 GMT
ENV LANG=en_US.UTF-8
# Mon, 10 Aug 2026 23:14:18 GMT
ARG TARGETARCH=amd64
# Mon, 10 Aug 2026 23:14:18 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Mon, 10 Aug 2026 23:14:30 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 10 Aug 2026 23:15:45 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 10 Aug 2026 23:15:45 GMT
ENV ODOO_VERSION=19.0
# Mon, 10 Aug 2026 23:15:45 GMT
ARG ODOO_RELEASE=20260810
# Mon, 10 Aug 2026 23:15:45 GMT
ARG ODOO_SHA=bacbca01d50578864c2628cb26eef0368abc01cd
# Mon, 10 Aug 2026 23:16:45 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260810 ODOO_SHA=bacbca01d50578864c2628cb26eef0368abc01cd
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Mon, 10 Aug 2026 23:16:46 GMT
COPY ./entrypoint.sh / # buildkit
# Mon, 10 Aug 2026 23:16:46 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Mon, 10 Aug 2026 23:16:46 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260810 ODOO_SHA=bacbca01d50578864c2628cb26eef0368abc01cd
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Mon, 10 Aug 2026 23:16:46 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Mon, 10 Aug 2026 23:16:46 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Mon, 10 Aug 2026 23:16:46 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Mon, 10 Aug 2026 23:16:46 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Mon, 10 Aug 2026 23:16:46 GMT
USER odoo
# Mon, 10 Aug 2026 23:16:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 10 Aug 2026 23:16:46 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22721a676ac2b03761eb493d8dab8306d10e7f05f1f9f828fa36c0d5960f7cfd`  
		Last Modified: Mon, 10 Aug 2026 23:18:31 GMT  
		Size: 241.1 MB (241082579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e688ec4ba05500ad5192d8d9cf02b5da48f01bb496c44a1131f7b1073710f382`  
		Last Modified: Mon, 10 Aug 2026 23:18:24 GMT  
		Size: 14.2 MB (14202700 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8473d20727b40904770e327bba308675f7dd896c6808c946b3799390de3900d5`  
		Last Modified: Mon, 10 Aug 2026 23:18:22 GMT  
		Size: 869.3 KB (869292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70d8f74617e381e5405d3ef4e0f86f35490cfa163b5a3ade1a7a245453f6dc05`  
		Last Modified: Mon, 10 Aug 2026 23:18:34 GMT  
		Size: 412.7 MB (412653156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:974bd2291e056ab1636e9f12e8d3ab6585fbcdf75f8b084b6973630f9ff83d6f`  
		Last Modified: Mon, 10 Aug 2026 23:18:24 GMT  
		Size: 718.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32c131f5f8f7b50e2d6d515910f037273ff3f997ffc5d7e37983319715b6cc4a`  
		Last Modified: Mon, 10 Aug 2026 23:18:25 GMT  
		Size: 555.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:835de79a363a0dd6d9b336218d734c994518be6d38634ff7ac066f6e322353ef`  
		Last Modified: Mon, 10 Aug 2026 23:18:25 GMT  
		Size: 596.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0363899787188e97043d6eeec291f880bf2dbdb4a5ca699d8e4c98397712c6c`  
		Last Modified: Mon, 10 Aug 2026 23:18:26 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19` - unknown; unknown

```console
$ docker pull odoo@sha256:9a449973022bbda0c50a914ce83d583fae6b27094c36e35ecebd112f62d1fdcc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.3 MB (52306755 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56c7ac8e1eda37f1acf380467d00fcaf70c4096ce6abe2a4ae2473df29e32351`

```dockerfile
```

-	Layers:
	-	`sha256:0086ec3fa525595d32beb00f925a07be077513821e8e1681984e275314ff0e0f`  
		Last Modified: Mon, 10 Aug 2026 23:18:26 GMT  
		Size: 52.3 MB (52279264 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:354b0258c81734f1adbab5d0e4be2870ec01d35fd5563e22b0b039cf8f1fb8ca`  
		Last Modified: Mon, 10 Aug 2026 23:18:22 GMT  
		Size: 27.5 KB (27491 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:19` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:026109b7ba78d00d018e59693a3355386304067d8b8caf6f17990031b9c269f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **692.6 MB (692564632 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf01da24e093ee75fed80192c6a5e7895453fa9642934ef75f6928d89c64cab4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Fri, 31 Jul 2026 20:45:33 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:45:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:45:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:45:37 GMT
ADD file:695c79b2217675519eeed9028b8e5d7ae9915817a49f5bf34e80ad57197f07f6 in / 
# Fri, 31 Jul 2026 20:45:37 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 23:15:26 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Mon, 10 Aug 2026 23:15:26 GMT
SHELL [/bin/bash -xo pipefail -c]
# Mon, 10 Aug 2026 23:15:26 GMT
ENV LANG=en_US.UTF-8
# Mon, 10 Aug 2026 23:15:26 GMT
ARG TARGETARCH=arm64
# Mon, 10 Aug 2026 23:15:26 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Mon, 10 Aug 2026 23:15:35 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 10 Aug 2026 23:16:36 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 10 Aug 2026 23:16:36 GMT
ENV ODOO_VERSION=19.0
# Mon, 10 Aug 2026 23:16:36 GMT
ARG ODOO_RELEASE=20260810
# Mon, 10 Aug 2026 23:16:36 GMT
ARG ODOO_SHA=bacbca01d50578864c2628cb26eef0368abc01cd
# Mon, 10 Aug 2026 23:17:42 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260810 ODOO_SHA=bacbca01d50578864c2628cb26eef0368abc01cd
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Mon, 10 Aug 2026 23:17:43 GMT
COPY ./entrypoint.sh / # buildkit
# Mon, 10 Aug 2026 23:17:43 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Mon, 10 Aug 2026 23:17:43 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260810 ODOO_SHA=bacbca01d50578864c2628cb26eef0368abc01cd
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Mon, 10 Aug 2026 23:17:43 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Mon, 10 Aug 2026 23:17:43 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Mon, 10 Aug 2026 23:17:43 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Mon, 10 Aug 2026 23:17:43 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Mon, 10 Aug 2026 23:17:43 GMT
USER odoo
# Mon, 10 Aug 2026 23:17:43 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 10 Aug 2026 23:17:43 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec668771dda4e14ddd665eeb77c3a0dd0d35f6de6a7c6a785fb5abeca53355a1`  
		Last Modified: Mon, 10 Aug 2026 23:19:39 GMT  
		Size: 236.1 MB (236101879 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff73463460a89b59a665bdf547eb3fb95c928b030f9a291f0910b5164aec1475`  
		Last Modified: Mon, 10 Aug 2026 23:19:31 GMT  
		Size: 14.2 MB (14171320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cd625d078de5fdc8de66bd2c5c15147f9cc8f7a244ac38c74b4b349588eb59c`  
		Last Modified: Mon, 10 Aug 2026 23:19:29 GMT  
		Size: 869.2 KB (869176 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4004ed7c8cf77142a40c33a2de0a93968ffacbb2f5eec882763df1e026048b45`  
		Last Modified: Mon, 10 Aug 2026 23:19:42 GMT  
		Size: 412.5 MB (412532689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58dd3541bf41d961bad90dcb54b12d86dcad8bcafdfab0382ac006ab37c195f8`  
		Last Modified: Mon, 10 Aug 2026 23:19:31 GMT  
		Size: 719.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73c27908214a5cc9dc7a73f42d2a5a7b83c8ee498099a87ba0d470dea381c99c`  
		Last Modified: Mon, 10 Aug 2026 23:19:32 GMT  
		Size: 557.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df81a2bb478837ac2a51b7d2166616a82a0c5147a15dc73871a264807236facc`  
		Last Modified: Mon, 10 Aug 2026 23:19:32 GMT  
		Size: 596.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fe6b4b55507cc73b3f507506d5413624694afda91988869fab43794aabf805d`  
		Last Modified: Mon, 10 Aug 2026 23:19:33 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19` - unknown; unknown

```console
$ docker pull odoo@sha256:ca30d1c388fefa962786f80b2c7db34f83f6acb19f75d449ccf5f7b0ad16e4e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.3 MB (52314203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18410a1b336efdb37dfbfce285566b2c1896356db12d6e5531ab7e0390b7cca4`

```dockerfile
```

-	Layers:
	-	`sha256:66cd02957b5476783c60ac1637136213eb3db0cdc57c3f6cff0d4b1f18a748a1`  
		Last Modified: Mon, 10 Aug 2026 23:19:33 GMT  
		Size: 52.3 MB (52286548 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1c54e64f05a11019f25732c4cfa58b0fb63d48ae3ce1bdd7b8d239b10aee2f8f`  
		Last Modified: Mon, 10 Aug 2026 23:19:29 GMT  
		Size: 27.7 KB (27655 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:19` - linux; ppc64le

```console
$ docker pull odoo@sha256:2610202e1ef45ee42e1c835b3b5f684aa5f604e2832b28e5cfd287e8e5f2728e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **715.0 MB (714969897 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e04b5805792e9ed1b7df8cd1a20c231cdbccf7b7de214bbd4bde7d892c2d187c`
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
ARG ODOO_RELEASE=20260810
# Tue, 04 Aug 2026 02:18:29 GMT
ARG ODOO_SHA=bacbca01d50578864c2628cb26eef0368abc01cd
# Mon, 10 Aug 2026 23:15:08 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260810 ODOO_SHA=bacbca01d50578864c2628cb26eef0368abc01cd
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Mon, 10 Aug 2026 23:15:09 GMT
COPY ./entrypoint.sh / # buildkit
# Mon, 10 Aug 2026 23:15:09 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Mon, 10 Aug 2026 23:15:10 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260810 ODOO_SHA=bacbca01d50578864c2628cb26eef0368abc01cd
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Mon, 10 Aug 2026 23:15:10 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Mon, 10 Aug 2026 23:15:10 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Mon, 10 Aug 2026 23:15:10 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Mon, 10 Aug 2026 23:15:10 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Mon, 10 Aug 2026 23:15:10 GMT
USER odoo
# Mon, 10 Aug 2026 23:15:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 10 Aug 2026 23:15:10 GMT
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
	-	`sha256:8ff80d2285decbeb282b83094defae61927513aa93cc15dec761f3455c7a3325`  
		Last Modified: Mon, 10 Aug 2026 23:19:17 GMT  
		Size: 413.2 MB (413187475 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8658211ae18ef7a9d42ff6857cb1d5888cd8e69152e51f804c769ec927cd8903`  
		Last Modified: Mon, 10 Aug 2026 23:19:08 GMT  
		Size: 716.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04f91417c8cc2526f196c1381867611fefc7d9b061f5654f7d1ab5bf20a2637e`  
		Last Modified: Mon, 10 Aug 2026 23:19:08 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9c31fda4ab247a7ceeacb25656117ac95a655d30d956dbdc878d1252c8b1ae4`  
		Last Modified: Mon, 10 Aug 2026 23:19:08 GMT  
		Size: 599.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:634acd952764bb9155bd37ad39be476ffae4111250f19666f5015f045f6c5bcc`  
		Last Modified: Mon, 10 Aug 2026 23:19:09 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19` - unknown; unknown

```console
$ docker pull odoo@sha256:74fa77f4f79bbefcadbad409b8ca93e2a44e4cca0c05d3caf6b04cbab9828435
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.3 MB (52315186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e74818324d879aef0b1a98e82d98f1edd85871f7b97ce73bf70a939e689a2fac`

```dockerfile
```

-	Layers:
	-	`sha256:3f560f8df27db8fb08586a4706e04c34646c94ef080eb2f9ec82dbc645daf5db`  
		Last Modified: Mon, 10 Aug 2026 23:19:11 GMT  
		Size: 52.3 MB (52287634 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e7eff0c19fa434dd6421555d48557538fc383d8f7e3cd939c15261bcd13a37de`  
		Last Modified: Mon, 10 Aug 2026 23:19:08 GMT  
		Size: 27.6 KB (27552 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:19.0`

```console
$ docker pull odoo@sha256:94a4f480b8039dc9ca2bca9e77e59f97d3311f66e2aad663cf2670be9c66d4ea
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
$ docker pull odoo@sha256:7fcd40c8638205f4844240397712ebbaa07918eb54f734f09e2c61274c3ae83f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **698.6 MB (698561583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09e7bc64740590e083400ad0f96745ca7290e4fda6bfa1dd1dedc3cccd88e51b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Fri, 31 Jul 2026 20:37:20 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:37:20 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:37:20 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:37:22 GMT
ADD file:d938ff3d4eee15d8600de84bf85eac6ecd0f20bc92dfe305dafbff0bdc974c0f in / 
# Fri, 31 Jul 2026 20:37:23 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 23:14:18 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Mon, 10 Aug 2026 23:14:18 GMT
SHELL [/bin/bash -xo pipefail -c]
# Mon, 10 Aug 2026 23:14:18 GMT
ENV LANG=en_US.UTF-8
# Mon, 10 Aug 2026 23:14:18 GMT
ARG TARGETARCH=amd64
# Mon, 10 Aug 2026 23:14:18 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Mon, 10 Aug 2026 23:14:30 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 10 Aug 2026 23:15:45 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 10 Aug 2026 23:15:45 GMT
ENV ODOO_VERSION=19.0
# Mon, 10 Aug 2026 23:15:45 GMT
ARG ODOO_RELEASE=20260810
# Mon, 10 Aug 2026 23:15:45 GMT
ARG ODOO_SHA=bacbca01d50578864c2628cb26eef0368abc01cd
# Mon, 10 Aug 2026 23:16:45 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260810 ODOO_SHA=bacbca01d50578864c2628cb26eef0368abc01cd
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Mon, 10 Aug 2026 23:16:46 GMT
COPY ./entrypoint.sh / # buildkit
# Mon, 10 Aug 2026 23:16:46 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Mon, 10 Aug 2026 23:16:46 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260810 ODOO_SHA=bacbca01d50578864c2628cb26eef0368abc01cd
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Mon, 10 Aug 2026 23:16:46 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Mon, 10 Aug 2026 23:16:46 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Mon, 10 Aug 2026 23:16:46 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Mon, 10 Aug 2026 23:16:46 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Mon, 10 Aug 2026 23:16:46 GMT
USER odoo
# Mon, 10 Aug 2026 23:16:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 10 Aug 2026 23:16:46 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22721a676ac2b03761eb493d8dab8306d10e7f05f1f9f828fa36c0d5960f7cfd`  
		Last Modified: Mon, 10 Aug 2026 23:18:31 GMT  
		Size: 241.1 MB (241082579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e688ec4ba05500ad5192d8d9cf02b5da48f01bb496c44a1131f7b1073710f382`  
		Last Modified: Mon, 10 Aug 2026 23:18:24 GMT  
		Size: 14.2 MB (14202700 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8473d20727b40904770e327bba308675f7dd896c6808c946b3799390de3900d5`  
		Last Modified: Mon, 10 Aug 2026 23:18:22 GMT  
		Size: 869.3 KB (869292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70d8f74617e381e5405d3ef4e0f86f35490cfa163b5a3ade1a7a245453f6dc05`  
		Last Modified: Mon, 10 Aug 2026 23:18:34 GMT  
		Size: 412.7 MB (412653156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:974bd2291e056ab1636e9f12e8d3ab6585fbcdf75f8b084b6973630f9ff83d6f`  
		Last Modified: Mon, 10 Aug 2026 23:18:24 GMT  
		Size: 718.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32c131f5f8f7b50e2d6d515910f037273ff3f997ffc5d7e37983319715b6cc4a`  
		Last Modified: Mon, 10 Aug 2026 23:18:25 GMT  
		Size: 555.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:835de79a363a0dd6d9b336218d734c994518be6d38634ff7ac066f6e322353ef`  
		Last Modified: Mon, 10 Aug 2026 23:18:25 GMT  
		Size: 596.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0363899787188e97043d6eeec291f880bf2dbdb4a5ca699d8e4c98397712c6c`  
		Last Modified: Mon, 10 Aug 2026 23:18:26 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19.0` - unknown; unknown

```console
$ docker pull odoo@sha256:9a449973022bbda0c50a914ce83d583fae6b27094c36e35ecebd112f62d1fdcc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.3 MB (52306755 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56c7ac8e1eda37f1acf380467d00fcaf70c4096ce6abe2a4ae2473df29e32351`

```dockerfile
```

-	Layers:
	-	`sha256:0086ec3fa525595d32beb00f925a07be077513821e8e1681984e275314ff0e0f`  
		Last Modified: Mon, 10 Aug 2026 23:18:26 GMT  
		Size: 52.3 MB (52279264 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:354b0258c81734f1adbab5d0e4be2870ec01d35fd5563e22b0b039cf8f1fb8ca`  
		Last Modified: Mon, 10 Aug 2026 23:18:22 GMT  
		Size: 27.5 KB (27491 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:19.0` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:026109b7ba78d00d018e59693a3355386304067d8b8caf6f17990031b9c269f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **692.6 MB (692564632 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf01da24e093ee75fed80192c6a5e7895453fa9642934ef75f6928d89c64cab4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Fri, 31 Jul 2026 20:45:33 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:45:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:45:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:45:37 GMT
ADD file:695c79b2217675519eeed9028b8e5d7ae9915817a49f5bf34e80ad57197f07f6 in / 
# Fri, 31 Jul 2026 20:45:37 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 23:15:26 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Mon, 10 Aug 2026 23:15:26 GMT
SHELL [/bin/bash -xo pipefail -c]
# Mon, 10 Aug 2026 23:15:26 GMT
ENV LANG=en_US.UTF-8
# Mon, 10 Aug 2026 23:15:26 GMT
ARG TARGETARCH=arm64
# Mon, 10 Aug 2026 23:15:26 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Mon, 10 Aug 2026 23:15:35 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 10 Aug 2026 23:16:36 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 10 Aug 2026 23:16:36 GMT
ENV ODOO_VERSION=19.0
# Mon, 10 Aug 2026 23:16:36 GMT
ARG ODOO_RELEASE=20260810
# Mon, 10 Aug 2026 23:16:36 GMT
ARG ODOO_SHA=bacbca01d50578864c2628cb26eef0368abc01cd
# Mon, 10 Aug 2026 23:17:42 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260810 ODOO_SHA=bacbca01d50578864c2628cb26eef0368abc01cd
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Mon, 10 Aug 2026 23:17:43 GMT
COPY ./entrypoint.sh / # buildkit
# Mon, 10 Aug 2026 23:17:43 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Mon, 10 Aug 2026 23:17:43 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260810 ODOO_SHA=bacbca01d50578864c2628cb26eef0368abc01cd
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Mon, 10 Aug 2026 23:17:43 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Mon, 10 Aug 2026 23:17:43 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Mon, 10 Aug 2026 23:17:43 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Mon, 10 Aug 2026 23:17:43 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Mon, 10 Aug 2026 23:17:43 GMT
USER odoo
# Mon, 10 Aug 2026 23:17:43 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 10 Aug 2026 23:17:43 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec668771dda4e14ddd665eeb77c3a0dd0d35f6de6a7c6a785fb5abeca53355a1`  
		Last Modified: Mon, 10 Aug 2026 23:19:39 GMT  
		Size: 236.1 MB (236101879 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff73463460a89b59a665bdf547eb3fb95c928b030f9a291f0910b5164aec1475`  
		Last Modified: Mon, 10 Aug 2026 23:19:31 GMT  
		Size: 14.2 MB (14171320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cd625d078de5fdc8de66bd2c5c15147f9cc8f7a244ac38c74b4b349588eb59c`  
		Last Modified: Mon, 10 Aug 2026 23:19:29 GMT  
		Size: 869.2 KB (869176 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4004ed7c8cf77142a40c33a2de0a93968ffacbb2f5eec882763df1e026048b45`  
		Last Modified: Mon, 10 Aug 2026 23:19:42 GMT  
		Size: 412.5 MB (412532689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58dd3541bf41d961bad90dcb54b12d86dcad8bcafdfab0382ac006ab37c195f8`  
		Last Modified: Mon, 10 Aug 2026 23:19:31 GMT  
		Size: 719.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73c27908214a5cc9dc7a73f42d2a5a7b83c8ee498099a87ba0d470dea381c99c`  
		Last Modified: Mon, 10 Aug 2026 23:19:32 GMT  
		Size: 557.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df81a2bb478837ac2a51b7d2166616a82a0c5147a15dc73871a264807236facc`  
		Last Modified: Mon, 10 Aug 2026 23:19:32 GMT  
		Size: 596.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fe6b4b55507cc73b3f507506d5413624694afda91988869fab43794aabf805d`  
		Last Modified: Mon, 10 Aug 2026 23:19:33 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19.0` - unknown; unknown

```console
$ docker pull odoo@sha256:ca30d1c388fefa962786f80b2c7db34f83f6acb19f75d449ccf5f7b0ad16e4e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.3 MB (52314203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18410a1b336efdb37dfbfce285566b2c1896356db12d6e5531ab7e0390b7cca4`

```dockerfile
```

-	Layers:
	-	`sha256:66cd02957b5476783c60ac1637136213eb3db0cdc57c3f6cff0d4b1f18a748a1`  
		Last Modified: Mon, 10 Aug 2026 23:19:33 GMT  
		Size: 52.3 MB (52286548 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1c54e64f05a11019f25732c4cfa58b0fb63d48ae3ce1bdd7b8d239b10aee2f8f`  
		Last Modified: Mon, 10 Aug 2026 23:19:29 GMT  
		Size: 27.7 KB (27655 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:19.0` - linux; ppc64le

```console
$ docker pull odoo@sha256:2610202e1ef45ee42e1c835b3b5f684aa5f604e2832b28e5cfd287e8e5f2728e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **715.0 MB (714969897 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e04b5805792e9ed1b7df8cd1a20c231cdbccf7b7de214bbd4bde7d892c2d187c`
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
ARG ODOO_RELEASE=20260810
# Tue, 04 Aug 2026 02:18:29 GMT
ARG ODOO_SHA=bacbca01d50578864c2628cb26eef0368abc01cd
# Mon, 10 Aug 2026 23:15:08 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260810 ODOO_SHA=bacbca01d50578864c2628cb26eef0368abc01cd
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Mon, 10 Aug 2026 23:15:09 GMT
COPY ./entrypoint.sh / # buildkit
# Mon, 10 Aug 2026 23:15:09 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Mon, 10 Aug 2026 23:15:10 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260810 ODOO_SHA=bacbca01d50578864c2628cb26eef0368abc01cd
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Mon, 10 Aug 2026 23:15:10 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Mon, 10 Aug 2026 23:15:10 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Mon, 10 Aug 2026 23:15:10 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Mon, 10 Aug 2026 23:15:10 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Mon, 10 Aug 2026 23:15:10 GMT
USER odoo
# Mon, 10 Aug 2026 23:15:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 10 Aug 2026 23:15:10 GMT
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
	-	`sha256:8ff80d2285decbeb282b83094defae61927513aa93cc15dec761f3455c7a3325`  
		Last Modified: Mon, 10 Aug 2026 23:19:17 GMT  
		Size: 413.2 MB (413187475 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8658211ae18ef7a9d42ff6857cb1d5888cd8e69152e51f804c769ec927cd8903`  
		Last Modified: Mon, 10 Aug 2026 23:19:08 GMT  
		Size: 716.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04f91417c8cc2526f196c1381867611fefc7d9b061f5654f7d1ab5bf20a2637e`  
		Last Modified: Mon, 10 Aug 2026 23:19:08 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9c31fda4ab247a7ceeacb25656117ac95a655d30d956dbdc878d1252c8b1ae4`  
		Last Modified: Mon, 10 Aug 2026 23:19:08 GMT  
		Size: 599.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:634acd952764bb9155bd37ad39be476ffae4111250f19666f5015f045f6c5bcc`  
		Last Modified: Mon, 10 Aug 2026 23:19:09 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19.0` - unknown; unknown

```console
$ docker pull odoo@sha256:74fa77f4f79bbefcadbad409b8ca93e2a44e4cca0c05d3caf6b04cbab9828435
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.3 MB (52315186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e74818324d879aef0b1a98e82d98f1edd85871f7b97ce73bf70a939e689a2fac`

```dockerfile
```

-	Layers:
	-	`sha256:3f560f8df27db8fb08586a4706e04c34646c94ef080eb2f9ec82dbc645daf5db`  
		Last Modified: Mon, 10 Aug 2026 23:19:11 GMT  
		Size: 52.3 MB (52287634 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e7eff0c19fa434dd6421555d48557538fc383d8f7e3cd939c15261bcd13a37de`  
		Last Modified: Mon, 10 Aug 2026 23:19:08 GMT  
		Size: 27.6 KB (27552 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:19.0-20260810`

```console
$ docker pull odoo@sha256:94a4f480b8039dc9ca2bca9e77e59f97d3311f66e2aad663cf2670be9c66d4ea
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `odoo:19.0-20260810` - linux; amd64

```console
$ docker pull odoo@sha256:7fcd40c8638205f4844240397712ebbaa07918eb54f734f09e2c61274c3ae83f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **698.6 MB (698561583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09e7bc64740590e083400ad0f96745ca7290e4fda6bfa1dd1dedc3cccd88e51b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Fri, 31 Jul 2026 20:37:20 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:37:20 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:37:20 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:37:22 GMT
ADD file:d938ff3d4eee15d8600de84bf85eac6ecd0f20bc92dfe305dafbff0bdc974c0f in / 
# Fri, 31 Jul 2026 20:37:23 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 23:14:18 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Mon, 10 Aug 2026 23:14:18 GMT
SHELL [/bin/bash -xo pipefail -c]
# Mon, 10 Aug 2026 23:14:18 GMT
ENV LANG=en_US.UTF-8
# Mon, 10 Aug 2026 23:14:18 GMT
ARG TARGETARCH=amd64
# Mon, 10 Aug 2026 23:14:18 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Mon, 10 Aug 2026 23:14:30 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 10 Aug 2026 23:15:45 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 10 Aug 2026 23:15:45 GMT
ENV ODOO_VERSION=19.0
# Mon, 10 Aug 2026 23:15:45 GMT
ARG ODOO_RELEASE=20260810
# Mon, 10 Aug 2026 23:15:45 GMT
ARG ODOO_SHA=bacbca01d50578864c2628cb26eef0368abc01cd
# Mon, 10 Aug 2026 23:16:45 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260810 ODOO_SHA=bacbca01d50578864c2628cb26eef0368abc01cd
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Mon, 10 Aug 2026 23:16:46 GMT
COPY ./entrypoint.sh / # buildkit
# Mon, 10 Aug 2026 23:16:46 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Mon, 10 Aug 2026 23:16:46 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260810 ODOO_SHA=bacbca01d50578864c2628cb26eef0368abc01cd
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Mon, 10 Aug 2026 23:16:46 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Mon, 10 Aug 2026 23:16:46 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Mon, 10 Aug 2026 23:16:46 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Mon, 10 Aug 2026 23:16:46 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Mon, 10 Aug 2026 23:16:46 GMT
USER odoo
# Mon, 10 Aug 2026 23:16:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 10 Aug 2026 23:16:46 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22721a676ac2b03761eb493d8dab8306d10e7f05f1f9f828fa36c0d5960f7cfd`  
		Last Modified: Mon, 10 Aug 2026 23:18:31 GMT  
		Size: 241.1 MB (241082579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e688ec4ba05500ad5192d8d9cf02b5da48f01bb496c44a1131f7b1073710f382`  
		Last Modified: Mon, 10 Aug 2026 23:18:24 GMT  
		Size: 14.2 MB (14202700 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8473d20727b40904770e327bba308675f7dd896c6808c946b3799390de3900d5`  
		Last Modified: Mon, 10 Aug 2026 23:18:22 GMT  
		Size: 869.3 KB (869292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70d8f74617e381e5405d3ef4e0f86f35490cfa163b5a3ade1a7a245453f6dc05`  
		Last Modified: Mon, 10 Aug 2026 23:18:34 GMT  
		Size: 412.7 MB (412653156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:974bd2291e056ab1636e9f12e8d3ab6585fbcdf75f8b084b6973630f9ff83d6f`  
		Last Modified: Mon, 10 Aug 2026 23:18:24 GMT  
		Size: 718.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32c131f5f8f7b50e2d6d515910f037273ff3f997ffc5d7e37983319715b6cc4a`  
		Last Modified: Mon, 10 Aug 2026 23:18:25 GMT  
		Size: 555.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:835de79a363a0dd6d9b336218d734c994518be6d38634ff7ac066f6e322353ef`  
		Last Modified: Mon, 10 Aug 2026 23:18:25 GMT  
		Size: 596.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0363899787188e97043d6eeec291f880bf2dbdb4a5ca699d8e4c98397712c6c`  
		Last Modified: Mon, 10 Aug 2026 23:18:26 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19.0-20260810` - unknown; unknown

```console
$ docker pull odoo@sha256:9a449973022bbda0c50a914ce83d583fae6b27094c36e35ecebd112f62d1fdcc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.3 MB (52306755 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56c7ac8e1eda37f1acf380467d00fcaf70c4096ce6abe2a4ae2473df29e32351`

```dockerfile
```

-	Layers:
	-	`sha256:0086ec3fa525595d32beb00f925a07be077513821e8e1681984e275314ff0e0f`  
		Last Modified: Mon, 10 Aug 2026 23:18:26 GMT  
		Size: 52.3 MB (52279264 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:354b0258c81734f1adbab5d0e4be2870ec01d35fd5563e22b0b039cf8f1fb8ca`  
		Last Modified: Mon, 10 Aug 2026 23:18:22 GMT  
		Size: 27.5 KB (27491 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:19.0-20260810` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:026109b7ba78d00d018e59693a3355386304067d8b8caf6f17990031b9c269f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **692.6 MB (692564632 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf01da24e093ee75fed80192c6a5e7895453fa9642934ef75f6928d89c64cab4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Fri, 31 Jul 2026 20:45:33 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:45:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:45:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:45:37 GMT
ADD file:695c79b2217675519eeed9028b8e5d7ae9915817a49f5bf34e80ad57197f07f6 in / 
# Fri, 31 Jul 2026 20:45:37 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 23:15:26 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Mon, 10 Aug 2026 23:15:26 GMT
SHELL [/bin/bash -xo pipefail -c]
# Mon, 10 Aug 2026 23:15:26 GMT
ENV LANG=en_US.UTF-8
# Mon, 10 Aug 2026 23:15:26 GMT
ARG TARGETARCH=arm64
# Mon, 10 Aug 2026 23:15:26 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Mon, 10 Aug 2026 23:15:35 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 10 Aug 2026 23:16:36 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 10 Aug 2026 23:16:36 GMT
ENV ODOO_VERSION=19.0
# Mon, 10 Aug 2026 23:16:36 GMT
ARG ODOO_RELEASE=20260810
# Mon, 10 Aug 2026 23:16:36 GMT
ARG ODOO_SHA=bacbca01d50578864c2628cb26eef0368abc01cd
# Mon, 10 Aug 2026 23:17:42 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260810 ODOO_SHA=bacbca01d50578864c2628cb26eef0368abc01cd
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Mon, 10 Aug 2026 23:17:43 GMT
COPY ./entrypoint.sh / # buildkit
# Mon, 10 Aug 2026 23:17:43 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Mon, 10 Aug 2026 23:17:43 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260810 ODOO_SHA=bacbca01d50578864c2628cb26eef0368abc01cd
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Mon, 10 Aug 2026 23:17:43 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Mon, 10 Aug 2026 23:17:43 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Mon, 10 Aug 2026 23:17:43 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Mon, 10 Aug 2026 23:17:43 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Mon, 10 Aug 2026 23:17:43 GMT
USER odoo
# Mon, 10 Aug 2026 23:17:43 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 10 Aug 2026 23:17:43 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec668771dda4e14ddd665eeb77c3a0dd0d35f6de6a7c6a785fb5abeca53355a1`  
		Last Modified: Mon, 10 Aug 2026 23:19:39 GMT  
		Size: 236.1 MB (236101879 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff73463460a89b59a665bdf547eb3fb95c928b030f9a291f0910b5164aec1475`  
		Last Modified: Mon, 10 Aug 2026 23:19:31 GMT  
		Size: 14.2 MB (14171320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cd625d078de5fdc8de66bd2c5c15147f9cc8f7a244ac38c74b4b349588eb59c`  
		Last Modified: Mon, 10 Aug 2026 23:19:29 GMT  
		Size: 869.2 KB (869176 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4004ed7c8cf77142a40c33a2de0a93968ffacbb2f5eec882763df1e026048b45`  
		Last Modified: Mon, 10 Aug 2026 23:19:42 GMT  
		Size: 412.5 MB (412532689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58dd3541bf41d961bad90dcb54b12d86dcad8bcafdfab0382ac006ab37c195f8`  
		Last Modified: Mon, 10 Aug 2026 23:19:31 GMT  
		Size: 719.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73c27908214a5cc9dc7a73f42d2a5a7b83c8ee498099a87ba0d470dea381c99c`  
		Last Modified: Mon, 10 Aug 2026 23:19:32 GMT  
		Size: 557.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df81a2bb478837ac2a51b7d2166616a82a0c5147a15dc73871a264807236facc`  
		Last Modified: Mon, 10 Aug 2026 23:19:32 GMT  
		Size: 596.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fe6b4b55507cc73b3f507506d5413624694afda91988869fab43794aabf805d`  
		Last Modified: Mon, 10 Aug 2026 23:19:33 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19.0-20260810` - unknown; unknown

```console
$ docker pull odoo@sha256:ca30d1c388fefa962786f80b2c7db34f83f6acb19f75d449ccf5f7b0ad16e4e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.3 MB (52314203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18410a1b336efdb37dfbfce285566b2c1896356db12d6e5531ab7e0390b7cca4`

```dockerfile
```

-	Layers:
	-	`sha256:66cd02957b5476783c60ac1637136213eb3db0cdc57c3f6cff0d4b1f18a748a1`  
		Last Modified: Mon, 10 Aug 2026 23:19:33 GMT  
		Size: 52.3 MB (52286548 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1c54e64f05a11019f25732c4cfa58b0fb63d48ae3ce1bdd7b8d239b10aee2f8f`  
		Last Modified: Mon, 10 Aug 2026 23:19:29 GMT  
		Size: 27.7 KB (27655 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:19.0-20260810` - linux; ppc64le

```console
$ docker pull odoo@sha256:2610202e1ef45ee42e1c835b3b5f684aa5f604e2832b28e5cfd287e8e5f2728e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **715.0 MB (714969897 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e04b5805792e9ed1b7df8cd1a20c231cdbccf7b7de214bbd4bde7d892c2d187c`
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
ARG ODOO_RELEASE=20260810
# Tue, 04 Aug 2026 02:18:29 GMT
ARG ODOO_SHA=bacbca01d50578864c2628cb26eef0368abc01cd
# Mon, 10 Aug 2026 23:15:08 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260810 ODOO_SHA=bacbca01d50578864c2628cb26eef0368abc01cd
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Mon, 10 Aug 2026 23:15:09 GMT
COPY ./entrypoint.sh / # buildkit
# Mon, 10 Aug 2026 23:15:09 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Mon, 10 Aug 2026 23:15:10 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260810 ODOO_SHA=bacbca01d50578864c2628cb26eef0368abc01cd
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Mon, 10 Aug 2026 23:15:10 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Mon, 10 Aug 2026 23:15:10 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Mon, 10 Aug 2026 23:15:10 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Mon, 10 Aug 2026 23:15:10 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Mon, 10 Aug 2026 23:15:10 GMT
USER odoo
# Mon, 10 Aug 2026 23:15:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 10 Aug 2026 23:15:10 GMT
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
	-	`sha256:8ff80d2285decbeb282b83094defae61927513aa93cc15dec761f3455c7a3325`  
		Last Modified: Mon, 10 Aug 2026 23:19:17 GMT  
		Size: 413.2 MB (413187475 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8658211ae18ef7a9d42ff6857cb1d5888cd8e69152e51f804c769ec927cd8903`  
		Last Modified: Mon, 10 Aug 2026 23:19:08 GMT  
		Size: 716.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04f91417c8cc2526f196c1381867611fefc7d9b061f5654f7d1ab5bf20a2637e`  
		Last Modified: Mon, 10 Aug 2026 23:19:08 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9c31fda4ab247a7ceeacb25656117ac95a655d30d956dbdc878d1252c8b1ae4`  
		Last Modified: Mon, 10 Aug 2026 23:19:08 GMT  
		Size: 599.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:634acd952764bb9155bd37ad39be476ffae4111250f19666f5015f045f6c5bcc`  
		Last Modified: Mon, 10 Aug 2026 23:19:09 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19.0-20260810` - unknown; unknown

```console
$ docker pull odoo@sha256:74fa77f4f79bbefcadbad409b8ca93e2a44e4cca0c05d3caf6b04cbab9828435
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.3 MB (52315186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e74818324d879aef0b1a98e82d98f1edd85871f7b97ce73bf70a939e689a2fac`

```dockerfile
```

-	Layers:
	-	`sha256:3f560f8df27db8fb08586a4706e04c34646c94ef080eb2f9ec82dbc645daf5db`  
		Last Modified: Mon, 10 Aug 2026 23:19:11 GMT  
		Size: 52.3 MB (52287634 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e7eff0c19fa434dd6421555d48557538fc383d8f7e3cd939c15261bcd13a37de`  
		Last Modified: Mon, 10 Aug 2026 23:19:08 GMT  
		Size: 27.6 KB (27552 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:latest`

```console
$ docker pull odoo@sha256:94a4f480b8039dc9ca2bca9e77e59f97d3311f66e2aad663cf2670be9c66d4ea
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
$ docker pull odoo@sha256:7fcd40c8638205f4844240397712ebbaa07918eb54f734f09e2c61274c3ae83f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **698.6 MB (698561583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09e7bc64740590e083400ad0f96745ca7290e4fda6bfa1dd1dedc3cccd88e51b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Fri, 31 Jul 2026 20:37:20 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:37:20 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:37:20 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:37:22 GMT
ADD file:d938ff3d4eee15d8600de84bf85eac6ecd0f20bc92dfe305dafbff0bdc974c0f in / 
# Fri, 31 Jul 2026 20:37:23 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 23:14:18 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Mon, 10 Aug 2026 23:14:18 GMT
SHELL [/bin/bash -xo pipefail -c]
# Mon, 10 Aug 2026 23:14:18 GMT
ENV LANG=en_US.UTF-8
# Mon, 10 Aug 2026 23:14:18 GMT
ARG TARGETARCH=amd64
# Mon, 10 Aug 2026 23:14:18 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Mon, 10 Aug 2026 23:14:30 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 10 Aug 2026 23:15:45 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 10 Aug 2026 23:15:45 GMT
ENV ODOO_VERSION=19.0
# Mon, 10 Aug 2026 23:15:45 GMT
ARG ODOO_RELEASE=20260810
# Mon, 10 Aug 2026 23:15:45 GMT
ARG ODOO_SHA=bacbca01d50578864c2628cb26eef0368abc01cd
# Mon, 10 Aug 2026 23:16:45 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260810 ODOO_SHA=bacbca01d50578864c2628cb26eef0368abc01cd
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Mon, 10 Aug 2026 23:16:46 GMT
COPY ./entrypoint.sh / # buildkit
# Mon, 10 Aug 2026 23:16:46 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Mon, 10 Aug 2026 23:16:46 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260810 ODOO_SHA=bacbca01d50578864c2628cb26eef0368abc01cd
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Mon, 10 Aug 2026 23:16:46 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Mon, 10 Aug 2026 23:16:46 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Mon, 10 Aug 2026 23:16:46 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Mon, 10 Aug 2026 23:16:46 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Mon, 10 Aug 2026 23:16:46 GMT
USER odoo
# Mon, 10 Aug 2026 23:16:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 10 Aug 2026 23:16:46 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22721a676ac2b03761eb493d8dab8306d10e7f05f1f9f828fa36c0d5960f7cfd`  
		Last Modified: Mon, 10 Aug 2026 23:18:31 GMT  
		Size: 241.1 MB (241082579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e688ec4ba05500ad5192d8d9cf02b5da48f01bb496c44a1131f7b1073710f382`  
		Last Modified: Mon, 10 Aug 2026 23:18:24 GMT  
		Size: 14.2 MB (14202700 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8473d20727b40904770e327bba308675f7dd896c6808c946b3799390de3900d5`  
		Last Modified: Mon, 10 Aug 2026 23:18:22 GMT  
		Size: 869.3 KB (869292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70d8f74617e381e5405d3ef4e0f86f35490cfa163b5a3ade1a7a245453f6dc05`  
		Last Modified: Mon, 10 Aug 2026 23:18:34 GMT  
		Size: 412.7 MB (412653156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:974bd2291e056ab1636e9f12e8d3ab6585fbcdf75f8b084b6973630f9ff83d6f`  
		Last Modified: Mon, 10 Aug 2026 23:18:24 GMT  
		Size: 718.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32c131f5f8f7b50e2d6d515910f037273ff3f997ffc5d7e37983319715b6cc4a`  
		Last Modified: Mon, 10 Aug 2026 23:18:25 GMT  
		Size: 555.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:835de79a363a0dd6d9b336218d734c994518be6d38634ff7ac066f6e322353ef`  
		Last Modified: Mon, 10 Aug 2026 23:18:25 GMT  
		Size: 596.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0363899787188e97043d6eeec291f880bf2dbdb4a5ca699d8e4c98397712c6c`  
		Last Modified: Mon, 10 Aug 2026 23:18:26 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:latest` - unknown; unknown

```console
$ docker pull odoo@sha256:9a449973022bbda0c50a914ce83d583fae6b27094c36e35ecebd112f62d1fdcc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.3 MB (52306755 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56c7ac8e1eda37f1acf380467d00fcaf70c4096ce6abe2a4ae2473df29e32351`

```dockerfile
```

-	Layers:
	-	`sha256:0086ec3fa525595d32beb00f925a07be077513821e8e1681984e275314ff0e0f`  
		Last Modified: Mon, 10 Aug 2026 23:18:26 GMT  
		Size: 52.3 MB (52279264 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:354b0258c81734f1adbab5d0e4be2870ec01d35fd5563e22b0b039cf8f1fb8ca`  
		Last Modified: Mon, 10 Aug 2026 23:18:22 GMT  
		Size: 27.5 KB (27491 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:latest` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:026109b7ba78d00d018e59693a3355386304067d8b8caf6f17990031b9c269f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **692.6 MB (692564632 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf01da24e093ee75fed80192c6a5e7895453fa9642934ef75f6928d89c64cab4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Fri, 31 Jul 2026 20:45:33 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:45:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:45:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:45:37 GMT
ADD file:695c79b2217675519eeed9028b8e5d7ae9915817a49f5bf34e80ad57197f07f6 in / 
# Fri, 31 Jul 2026 20:45:37 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 23:15:26 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Mon, 10 Aug 2026 23:15:26 GMT
SHELL [/bin/bash -xo pipefail -c]
# Mon, 10 Aug 2026 23:15:26 GMT
ENV LANG=en_US.UTF-8
# Mon, 10 Aug 2026 23:15:26 GMT
ARG TARGETARCH=arm64
# Mon, 10 Aug 2026 23:15:26 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Mon, 10 Aug 2026 23:15:35 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 10 Aug 2026 23:16:36 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 10 Aug 2026 23:16:36 GMT
ENV ODOO_VERSION=19.0
# Mon, 10 Aug 2026 23:16:36 GMT
ARG ODOO_RELEASE=20260810
# Mon, 10 Aug 2026 23:16:36 GMT
ARG ODOO_SHA=bacbca01d50578864c2628cb26eef0368abc01cd
# Mon, 10 Aug 2026 23:17:42 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260810 ODOO_SHA=bacbca01d50578864c2628cb26eef0368abc01cd
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Mon, 10 Aug 2026 23:17:43 GMT
COPY ./entrypoint.sh / # buildkit
# Mon, 10 Aug 2026 23:17:43 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Mon, 10 Aug 2026 23:17:43 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260810 ODOO_SHA=bacbca01d50578864c2628cb26eef0368abc01cd
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Mon, 10 Aug 2026 23:17:43 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Mon, 10 Aug 2026 23:17:43 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Mon, 10 Aug 2026 23:17:43 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Mon, 10 Aug 2026 23:17:43 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Mon, 10 Aug 2026 23:17:43 GMT
USER odoo
# Mon, 10 Aug 2026 23:17:43 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 10 Aug 2026 23:17:43 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec668771dda4e14ddd665eeb77c3a0dd0d35f6de6a7c6a785fb5abeca53355a1`  
		Last Modified: Mon, 10 Aug 2026 23:19:39 GMT  
		Size: 236.1 MB (236101879 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff73463460a89b59a665bdf547eb3fb95c928b030f9a291f0910b5164aec1475`  
		Last Modified: Mon, 10 Aug 2026 23:19:31 GMT  
		Size: 14.2 MB (14171320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cd625d078de5fdc8de66bd2c5c15147f9cc8f7a244ac38c74b4b349588eb59c`  
		Last Modified: Mon, 10 Aug 2026 23:19:29 GMT  
		Size: 869.2 KB (869176 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4004ed7c8cf77142a40c33a2de0a93968ffacbb2f5eec882763df1e026048b45`  
		Last Modified: Mon, 10 Aug 2026 23:19:42 GMT  
		Size: 412.5 MB (412532689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58dd3541bf41d961bad90dcb54b12d86dcad8bcafdfab0382ac006ab37c195f8`  
		Last Modified: Mon, 10 Aug 2026 23:19:31 GMT  
		Size: 719.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73c27908214a5cc9dc7a73f42d2a5a7b83c8ee498099a87ba0d470dea381c99c`  
		Last Modified: Mon, 10 Aug 2026 23:19:32 GMT  
		Size: 557.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df81a2bb478837ac2a51b7d2166616a82a0c5147a15dc73871a264807236facc`  
		Last Modified: Mon, 10 Aug 2026 23:19:32 GMT  
		Size: 596.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fe6b4b55507cc73b3f507506d5413624694afda91988869fab43794aabf805d`  
		Last Modified: Mon, 10 Aug 2026 23:19:33 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:latest` - unknown; unknown

```console
$ docker pull odoo@sha256:ca30d1c388fefa962786f80b2c7db34f83f6acb19f75d449ccf5f7b0ad16e4e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.3 MB (52314203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18410a1b336efdb37dfbfce285566b2c1896356db12d6e5531ab7e0390b7cca4`

```dockerfile
```

-	Layers:
	-	`sha256:66cd02957b5476783c60ac1637136213eb3db0cdc57c3f6cff0d4b1f18a748a1`  
		Last Modified: Mon, 10 Aug 2026 23:19:33 GMT  
		Size: 52.3 MB (52286548 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1c54e64f05a11019f25732c4cfa58b0fb63d48ae3ce1bdd7b8d239b10aee2f8f`  
		Last Modified: Mon, 10 Aug 2026 23:19:29 GMT  
		Size: 27.7 KB (27655 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:latest` - linux; ppc64le

```console
$ docker pull odoo@sha256:2610202e1ef45ee42e1c835b3b5f684aa5f604e2832b28e5cfd287e8e5f2728e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **715.0 MB (714969897 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e04b5805792e9ed1b7df8cd1a20c231cdbccf7b7de214bbd4bde7d892c2d187c`
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
ARG ODOO_RELEASE=20260810
# Tue, 04 Aug 2026 02:18:29 GMT
ARG ODOO_SHA=bacbca01d50578864c2628cb26eef0368abc01cd
# Mon, 10 Aug 2026 23:15:08 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260810 ODOO_SHA=bacbca01d50578864c2628cb26eef0368abc01cd
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Mon, 10 Aug 2026 23:15:09 GMT
COPY ./entrypoint.sh / # buildkit
# Mon, 10 Aug 2026 23:15:09 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Mon, 10 Aug 2026 23:15:10 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260810 ODOO_SHA=bacbca01d50578864c2628cb26eef0368abc01cd
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Mon, 10 Aug 2026 23:15:10 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Mon, 10 Aug 2026 23:15:10 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Mon, 10 Aug 2026 23:15:10 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Mon, 10 Aug 2026 23:15:10 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Mon, 10 Aug 2026 23:15:10 GMT
USER odoo
# Mon, 10 Aug 2026 23:15:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 10 Aug 2026 23:15:10 GMT
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
	-	`sha256:8ff80d2285decbeb282b83094defae61927513aa93cc15dec761f3455c7a3325`  
		Last Modified: Mon, 10 Aug 2026 23:19:17 GMT  
		Size: 413.2 MB (413187475 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8658211ae18ef7a9d42ff6857cb1d5888cd8e69152e51f804c769ec927cd8903`  
		Last Modified: Mon, 10 Aug 2026 23:19:08 GMT  
		Size: 716.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04f91417c8cc2526f196c1381867611fefc7d9b061f5654f7d1ab5bf20a2637e`  
		Last Modified: Mon, 10 Aug 2026 23:19:08 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9c31fda4ab247a7ceeacb25656117ac95a655d30d956dbdc878d1252c8b1ae4`  
		Last Modified: Mon, 10 Aug 2026 23:19:08 GMT  
		Size: 599.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:634acd952764bb9155bd37ad39be476ffae4111250f19666f5015f045f6c5bcc`  
		Last Modified: Mon, 10 Aug 2026 23:19:09 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:latest` - unknown; unknown

```console
$ docker pull odoo@sha256:74fa77f4f79bbefcadbad409b8ca93e2a44e4cca0c05d3caf6b04cbab9828435
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.3 MB (52315186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e74818324d879aef0b1a98e82d98f1edd85871f7b97ce73bf70a939e689a2fac`

```dockerfile
```

-	Layers:
	-	`sha256:3f560f8df27db8fb08586a4706e04c34646c94ef080eb2f9ec82dbc645daf5db`  
		Last Modified: Mon, 10 Aug 2026 23:19:11 GMT  
		Size: 52.3 MB (52287634 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e7eff0c19fa434dd6421555d48557538fc383d8f7e3cd939c15261bcd13a37de`  
		Last Modified: Mon, 10 Aug 2026 23:19:08 GMT  
		Size: 27.6 KB (27552 bytes)  
		MIME: application/vnd.in-toto+json
