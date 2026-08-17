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
$ docker pull odoo@sha256:e3fccf7c31e340f67761a095e445f1364c5534746477516b9f93ad0a65389b8a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `odoo:17` - linux; amd64

```console
$ docker pull odoo@sha256:fa4b663e430545f11eedf187ab0da64a1ea692e8d906604df6b8c66f2d63b8ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **610.2 MB (610151537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f03ee19377d1821199b0fc908da5a72facb8dbef605a1947f521092cb9b6ab7`
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
# Mon, 17 Aug 2026 17:41:56 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Mon, 17 Aug 2026 17:41:56 GMT
SHELL [/bin/bash -xo pipefail -c]
# Mon, 17 Aug 2026 17:41:56 GMT
ENV LANG=en_US.UTF-8
# Mon, 17 Aug 2026 17:41:56 GMT
ARG TARGETARCH=amd64
# Mon, 17 Aug 2026 17:41:56 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     DEBIAN_FRONTEND=noninteractive     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Mon, 17 Aug 2026 17:42:04 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jammy-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 17 Aug 2026 17:42:32 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 17 Aug 2026 17:42:32 GMT
ENV ODOO_VERSION=17.0
# Mon, 17 Aug 2026 17:42:32 GMT
ARG ODOO_RELEASE=20260817
# Mon, 17 Aug 2026 17:42:32 GMT
ARG ODOO_SHA=1d05fd70e47168a5b4365a1a663595bb9583dfcd
# Mon, 17 Aug 2026 17:43:32 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260817 ODOO_SHA=1d05fd70e47168a5b4365a1a663595bb9583dfcd
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Mon, 17 Aug 2026 17:43:32 GMT
COPY ./entrypoint.sh / # buildkit
# Mon, 17 Aug 2026 17:43:33 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Mon, 17 Aug 2026 17:43:33 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260817 ODOO_SHA=1d05fd70e47168a5b4365a1a663595bb9583dfcd
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Mon, 17 Aug 2026 17:43:33 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Mon, 17 Aug 2026 17:43:33 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Mon, 17 Aug 2026 17:43:33 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Mon, 17 Aug 2026 17:43:33 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Mon, 17 Aug 2026 17:43:33 GMT
USER odoo
# Mon, 17 Aug 2026 17:43:33 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 17 Aug 2026 17:43:33 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:39a945af8df2ad9343f141c82355d3f2c4b576d432eda34c460d630607462b60`  
		Last Modified: Fri, 31 Jul 2026 22:53:51 GMT  
		Size: 29.7 MB (29736517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e140de8788a091d0585dd18f4d56bdf476549505da209ae3d751b482f8d15d1`  
		Last Modified: Mon, 17 Aug 2026 17:44:52 GMT  
		Size: 230.5 MB (230522957 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9574d0f88c37cd56c0a3406a61ed30b2c17d94ad4e4ea26aedf4edadb90edbd`  
		Last Modified: Mon, 17 Aug 2026 17:44:41 GMT  
		Size: 2.6 MB (2566162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:265df43cc806fd09eb6b3e7b1127f7750c8ed1bf676642d272ae2779abdb513e`  
		Last Modified: Mon, 17 Aug 2026 17:44:41 GMT  
		Size: 684.0 KB (683966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:248145b52333826f58b7797a126818b5132f65fdfcca2fab1ffb70f764e247fa`  
		Last Modified: Mon, 17 Aug 2026 17:44:54 GMT  
		Size: 346.6 MB (346639138 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e420b4f2a85f1a6bf5f84eef0ef5542ba3f24841587dde26573c0bb58839af8f`  
		Last Modified: Mon, 17 Aug 2026 17:44:42 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50819c9c166a3e5240b703984f02fdc954e499548dd42e9c8ef4c69f45dfdcf0`  
		Last Modified: Mon, 17 Aug 2026 17:44:43 GMT  
		Size: 555.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6af18e643cd46ad6275c97d86977edee693b5cc5c126056a716471344119cb75`  
		Last Modified: Mon, 17 Aug 2026 17:44:44 GMT  
		Size: 596.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75c587de282854ed84c4555f7788004302539062046cc9e49eee2b2452b35bd5`  
		Last Modified: Mon, 17 Aug 2026 17:44:44 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:17` - unknown; unknown

```console
$ docker pull odoo@sha256:d8b4c619d8cd28b0d9eb1b005a5f26146c13f215d846f5cedb1649bf8400c585
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.8 MB (40842906 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4e7d8ba0347b71c589ccb31ec1313ebbd056006e44d23223553f7bfec5b79d5`

```dockerfile
```

-	Layers:
	-	`sha256:0d29d9d4f2d16d1c7467be7b54813ae4672cafc10b105c482e025314482ce7e4`  
		Last Modified: Mon, 17 Aug 2026 17:44:44 GMT  
		Size: 40.8 MB (40815589 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4412a6996713b1e061887a8d41e4d5192410614450c7051ce00b8a0a4876a33f`  
		Last Modified: Mon, 17 Aug 2026 17:44:41 GMT  
		Size: 27.3 KB (27317 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:17` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:e7e630712448db56d308ae9c79da5e1656b13873114cc382b35e15b81fe3219a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **605.1 MB (605067147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9535426ecd889c1f75232eb7d70ff78483862d6cc247a0049ef0d21776b061da`
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
# Mon, 17 Aug 2026 17:42:01 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Mon, 17 Aug 2026 17:42:01 GMT
SHELL [/bin/bash -xo pipefail -c]
# Mon, 17 Aug 2026 17:42:01 GMT
ENV LANG=en_US.UTF-8
# Mon, 17 Aug 2026 17:42:01 GMT
ARG TARGETARCH=arm64
# Mon, 17 Aug 2026 17:42:01 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     DEBIAN_FRONTEND=noninteractive     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Mon, 17 Aug 2026 17:42:09 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jammy-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 17 Aug 2026 17:42:36 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 17 Aug 2026 17:42:36 GMT
ENV ODOO_VERSION=17.0
# Mon, 17 Aug 2026 17:42:36 GMT
ARG ODOO_RELEASE=20260817
# Mon, 17 Aug 2026 17:42:36 GMT
ARG ODOO_SHA=1d05fd70e47168a5b4365a1a663595bb9583dfcd
# Mon, 17 Aug 2026 17:43:41 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260817 ODOO_SHA=1d05fd70e47168a5b4365a1a663595bb9583dfcd
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Mon, 17 Aug 2026 17:43:41 GMT
COPY ./entrypoint.sh / # buildkit
# Mon, 17 Aug 2026 17:43:41 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Mon, 17 Aug 2026 17:43:41 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260817 ODOO_SHA=1d05fd70e47168a5b4365a1a663595bb9583dfcd
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Mon, 17 Aug 2026 17:43:41 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Mon, 17 Aug 2026 17:43:41 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Mon, 17 Aug 2026 17:43:41 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Mon, 17 Aug 2026 17:43:41 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Mon, 17 Aug 2026 17:43:41 GMT
USER odoo
# Mon, 17 Aug 2026 17:43:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 17 Aug 2026 17:43:41 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:e737c5ed04040f2f0a2a5834e272c5fa0ab6a31a0641be05eb1669153c7c4cfc`  
		Last Modified: Fri, 31 Jul 2026 22:53:57 GMT  
		Size: 27.6 MB (27620032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:338ed8729ebae36b2ba24c62f9db4a6b0a4142be3ad46067dc7647e92bb4fa12`  
		Last Modified: Mon, 17 Aug 2026 17:45:09 GMT  
		Size: 227.9 MB (227943611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c72a8eb9ee87829b4428629327000def263d96c0a3d469fa11f59cdeaa886aee`  
		Last Modified: Mon, 17 Aug 2026 17:44:56 GMT  
		Size: 2.6 MB (2562267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:285dacee564823e5bda60fac1efbf696f88a1c51f74124973d4704c8df2efbc1`  
		Last Modified: Mon, 17 Aug 2026 17:44:55 GMT  
		Size: 683.9 KB (683910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d3e86cf425b36adc8a21679b9753025ef838c076c178a973c3d449ce2269006`  
		Last Modified: Mon, 17 Aug 2026 17:45:14 GMT  
		Size: 346.3 MB (346254530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e420b4f2a85f1a6bf5f84eef0ef5542ba3f24841587dde26573c0bb58839af8f`  
		Last Modified: Mon, 17 Aug 2026 17:44:42 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3aaaff84ce00c437b424dbaadc866527fbe55665bda056b0695517df66156f5`  
		Last Modified: Mon, 17 Aug 2026 17:44:57 GMT  
		Size: 555.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e385ae45b0498359adfb2393ae8f3da76bb5f0ed9e54d920353197e07f95779`  
		Last Modified: Mon, 17 Aug 2026 17:44:59 GMT  
		Size: 595.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbc6d9596d66a21bfc0e949caea9cee6675c9c196c40b8d8d1c602e033696856`  
		Last Modified: Mon, 17 Aug 2026 17:44:59 GMT  
		Size: 880.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:17` - unknown; unknown

```console
$ docker pull odoo@sha256:96224a80b043c14c03ae8f1bd3f63650e2120e594d23b07502ff5cd7f38e1614
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.8 MB (40849562 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62ac886132402d7374596f2c94888b0f8ee7ad486736ccf78a877e95e6a2bc1a`

```dockerfile
```

-	Layers:
	-	`sha256:d10f5acfac85f6c81c84def0dde1e8037cf3992a9b30ef1ec0aa716591130ffe`  
		Last Modified: Mon, 17 Aug 2026 17:44:58 GMT  
		Size: 40.8 MB (40822093 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3de10acf7396215962c7835b74aaae70615feb51bc40c7ea9e09dc2baa08ce4d`  
		Last Modified: Mon, 17 Aug 2026 17:44:57 GMT  
		Size: 27.5 KB (27469 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:17.0`

```console
$ docker pull odoo@sha256:e3fccf7c31e340f67761a095e445f1364c5534746477516b9f93ad0a65389b8a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `odoo:17.0` - linux; amd64

```console
$ docker pull odoo@sha256:fa4b663e430545f11eedf187ab0da64a1ea692e8d906604df6b8c66f2d63b8ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **610.2 MB (610151537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f03ee19377d1821199b0fc908da5a72facb8dbef605a1947f521092cb9b6ab7`
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
# Mon, 17 Aug 2026 17:41:56 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Mon, 17 Aug 2026 17:41:56 GMT
SHELL [/bin/bash -xo pipefail -c]
# Mon, 17 Aug 2026 17:41:56 GMT
ENV LANG=en_US.UTF-8
# Mon, 17 Aug 2026 17:41:56 GMT
ARG TARGETARCH=amd64
# Mon, 17 Aug 2026 17:41:56 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     DEBIAN_FRONTEND=noninteractive     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Mon, 17 Aug 2026 17:42:04 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jammy-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 17 Aug 2026 17:42:32 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 17 Aug 2026 17:42:32 GMT
ENV ODOO_VERSION=17.0
# Mon, 17 Aug 2026 17:42:32 GMT
ARG ODOO_RELEASE=20260817
# Mon, 17 Aug 2026 17:42:32 GMT
ARG ODOO_SHA=1d05fd70e47168a5b4365a1a663595bb9583dfcd
# Mon, 17 Aug 2026 17:43:32 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260817 ODOO_SHA=1d05fd70e47168a5b4365a1a663595bb9583dfcd
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Mon, 17 Aug 2026 17:43:32 GMT
COPY ./entrypoint.sh / # buildkit
# Mon, 17 Aug 2026 17:43:33 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Mon, 17 Aug 2026 17:43:33 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260817 ODOO_SHA=1d05fd70e47168a5b4365a1a663595bb9583dfcd
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Mon, 17 Aug 2026 17:43:33 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Mon, 17 Aug 2026 17:43:33 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Mon, 17 Aug 2026 17:43:33 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Mon, 17 Aug 2026 17:43:33 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Mon, 17 Aug 2026 17:43:33 GMT
USER odoo
# Mon, 17 Aug 2026 17:43:33 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 17 Aug 2026 17:43:33 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:39a945af8df2ad9343f141c82355d3f2c4b576d432eda34c460d630607462b60`  
		Last Modified: Fri, 31 Jul 2026 22:53:51 GMT  
		Size: 29.7 MB (29736517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e140de8788a091d0585dd18f4d56bdf476549505da209ae3d751b482f8d15d1`  
		Last Modified: Mon, 17 Aug 2026 17:44:52 GMT  
		Size: 230.5 MB (230522957 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9574d0f88c37cd56c0a3406a61ed30b2c17d94ad4e4ea26aedf4edadb90edbd`  
		Last Modified: Mon, 17 Aug 2026 17:44:41 GMT  
		Size: 2.6 MB (2566162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:265df43cc806fd09eb6b3e7b1127f7750c8ed1bf676642d272ae2779abdb513e`  
		Last Modified: Mon, 17 Aug 2026 17:44:41 GMT  
		Size: 684.0 KB (683966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:248145b52333826f58b7797a126818b5132f65fdfcca2fab1ffb70f764e247fa`  
		Last Modified: Mon, 17 Aug 2026 17:44:54 GMT  
		Size: 346.6 MB (346639138 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e420b4f2a85f1a6bf5f84eef0ef5542ba3f24841587dde26573c0bb58839af8f`  
		Last Modified: Mon, 17 Aug 2026 17:44:42 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50819c9c166a3e5240b703984f02fdc954e499548dd42e9c8ef4c69f45dfdcf0`  
		Last Modified: Mon, 17 Aug 2026 17:44:43 GMT  
		Size: 555.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6af18e643cd46ad6275c97d86977edee693b5cc5c126056a716471344119cb75`  
		Last Modified: Mon, 17 Aug 2026 17:44:44 GMT  
		Size: 596.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75c587de282854ed84c4555f7788004302539062046cc9e49eee2b2452b35bd5`  
		Last Modified: Mon, 17 Aug 2026 17:44:44 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:17.0` - unknown; unknown

```console
$ docker pull odoo@sha256:d8b4c619d8cd28b0d9eb1b005a5f26146c13f215d846f5cedb1649bf8400c585
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.8 MB (40842906 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4e7d8ba0347b71c589ccb31ec1313ebbd056006e44d23223553f7bfec5b79d5`

```dockerfile
```

-	Layers:
	-	`sha256:0d29d9d4f2d16d1c7467be7b54813ae4672cafc10b105c482e025314482ce7e4`  
		Last Modified: Mon, 17 Aug 2026 17:44:44 GMT  
		Size: 40.8 MB (40815589 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4412a6996713b1e061887a8d41e4d5192410614450c7051ce00b8a0a4876a33f`  
		Last Modified: Mon, 17 Aug 2026 17:44:41 GMT  
		Size: 27.3 KB (27317 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:17.0` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:e7e630712448db56d308ae9c79da5e1656b13873114cc382b35e15b81fe3219a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **605.1 MB (605067147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9535426ecd889c1f75232eb7d70ff78483862d6cc247a0049ef0d21776b061da`
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
# Mon, 17 Aug 2026 17:42:01 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Mon, 17 Aug 2026 17:42:01 GMT
SHELL [/bin/bash -xo pipefail -c]
# Mon, 17 Aug 2026 17:42:01 GMT
ENV LANG=en_US.UTF-8
# Mon, 17 Aug 2026 17:42:01 GMT
ARG TARGETARCH=arm64
# Mon, 17 Aug 2026 17:42:01 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     DEBIAN_FRONTEND=noninteractive     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Mon, 17 Aug 2026 17:42:09 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jammy-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 17 Aug 2026 17:42:36 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 17 Aug 2026 17:42:36 GMT
ENV ODOO_VERSION=17.0
# Mon, 17 Aug 2026 17:42:36 GMT
ARG ODOO_RELEASE=20260817
# Mon, 17 Aug 2026 17:42:36 GMT
ARG ODOO_SHA=1d05fd70e47168a5b4365a1a663595bb9583dfcd
# Mon, 17 Aug 2026 17:43:41 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260817 ODOO_SHA=1d05fd70e47168a5b4365a1a663595bb9583dfcd
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Mon, 17 Aug 2026 17:43:41 GMT
COPY ./entrypoint.sh / # buildkit
# Mon, 17 Aug 2026 17:43:41 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Mon, 17 Aug 2026 17:43:41 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260817 ODOO_SHA=1d05fd70e47168a5b4365a1a663595bb9583dfcd
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Mon, 17 Aug 2026 17:43:41 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Mon, 17 Aug 2026 17:43:41 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Mon, 17 Aug 2026 17:43:41 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Mon, 17 Aug 2026 17:43:41 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Mon, 17 Aug 2026 17:43:41 GMT
USER odoo
# Mon, 17 Aug 2026 17:43:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 17 Aug 2026 17:43:41 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:e737c5ed04040f2f0a2a5834e272c5fa0ab6a31a0641be05eb1669153c7c4cfc`  
		Last Modified: Fri, 31 Jul 2026 22:53:57 GMT  
		Size: 27.6 MB (27620032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:338ed8729ebae36b2ba24c62f9db4a6b0a4142be3ad46067dc7647e92bb4fa12`  
		Last Modified: Mon, 17 Aug 2026 17:45:09 GMT  
		Size: 227.9 MB (227943611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c72a8eb9ee87829b4428629327000def263d96c0a3d469fa11f59cdeaa886aee`  
		Last Modified: Mon, 17 Aug 2026 17:44:56 GMT  
		Size: 2.6 MB (2562267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:285dacee564823e5bda60fac1efbf696f88a1c51f74124973d4704c8df2efbc1`  
		Last Modified: Mon, 17 Aug 2026 17:44:55 GMT  
		Size: 683.9 KB (683910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d3e86cf425b36adc8a21679b9753025ef838c076c178a973c3d449ce2269006`  
		Last Modified: Mon, 17 Aug 2026 17:45:14 GMT  
		Size: 346.3 MB (346254530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e420b4f2a85f1a6bf5f84eef0ef5542ba3f24841587dde26573c0bb58839af8f`  
		Last Modified: Mon, 17 Aug 2026 17:44:42 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3aaaff84ce00c437b424dbaadc866527fbe55665bda056b0695517df66156f5`  
		Last Modified: Mon, 17 Aug 2026 17:44:57 GMT  
		Size: 555.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e385ae45b0498359adfb2393ae8f3da76bb5f0ed9e54d920353197e07f95779`  
		Last Modified: Mon, 17 Aug 2026 17:44:59 GMT  
		Size: 595.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbc6d9596d66a21bfc0e949caea9cee6675c9c196c40b8d8d1c602e033696856`  
		Last Modified: Mon, 17 Aug 2026 17:44:59 GMT  
		Size: 880.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:17.0` - unknown; unknown

```console
$ docker pull odoo@sha256:96224a80b043c14c03ae8f1bd3f63650e2120e594d23b07502ff5cd7f38e1614
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.8 MB (40849562 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62ac886132402d7374596f2c94888b0f8ee7ad486736ccf78a877e95e6a2bc1a`

```dockerfile
```

-	Layers:
	-	`sha256:d10f5acfac85f6c81c84def0dde1e8037cf3992a9b30ef1ec0aa716591130ffe`  
		Last Modified: Mon, 17 Aug 2026 17:44:58 GMT  
		Size: 40.8 MB (40822093 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3de10acf7396215962c7835b74aaae70615feb51bc40c7ea9e09dc2baa08ce4d`  
		Last Modified: Mon, 17 Aug 2026 17:44:57 GMT  
		Size: 27.5 KB (27469 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:17.0-20260817`

```console
$ docker pull odoo@sha256:e3fccf7c31e340f67761a095e445f1364c5534746477516b9f93ad0a65389b8a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `odoo:17.0-20260817` - linux; amd64

```console
$ docker pull odoo@sha256:fa4b663e430545f11eedf187ab0da64a1ea692e8d906604df6b8c66f2d63b8ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **610.2 MB (610151537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f03ee19377d1821199b0fc908da5a72facb8dbef605a1947f521092cb9b6ab7`
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
# Mon, 17 Aug 2026 17:41:56 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Mon, 17 Aug 2026 17:41:56 GMT
SHELL [/bin/bash -xo pipefail -c]
# Mon, 17 Aug 2026 17:41:56 GMT
ENV LANG=en_US.UTF-8
# Mon, 17 Aug 2026 17:41:56 GMT
ARG TARGETARCH=amd64
# Mon, 17 Aug 2026 17:41:56 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     DEBIAN_FRONTEND=noninteractive     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Mon, 17 Aug 2026 17:42:04 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jammy-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 17 Aug 2026 17:42:32 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 17 Aug 2026 17:42:32 GMT
ENV ODOO_VERSION=17.0
# Mon, 17 Aug 2026 17:42:32 GMT
ARG ODOO_RELEASE=20260817
# Mon, 17 Aug 2026 17:42:32 GMT
ARG ODOO_SHA=1d05fd70e47168a5b4365a1a663595bb9583dfcd
# Mon, 17 Aug 2026 17:43:32 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260817 ODOO_SHA=1d05fd70e47168a5b4365a1a663595bb9583dfcd
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Mon, 17 Aug 2026 17:43:32 GMT
COPY ./entrypoint.sh / # buildkit
# Mon, 17 Aug 2026 17:43:33 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Mon, 17 Aug 2026 17:43:33 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260817 ODOO_SHA=1d05fd70e47168a5b4365a1a663595bb9583dfcd
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Mon, 17 Aug 2026 17:43:33 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Mon, 17 Aug 2026 17:43:33 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Mon, 17 Aug 2026 17:43:33 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Mon, 17 Aug 2026 17:43:33 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Mon, 17 Aug 2026 17:43:33 GMT
USER odoo
# Mon, 17 Aug 2026 17:43:33 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 17 Aug 2026 17:43:33 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:39a945af8df2ad9343f141c82355d3f2c4b576d432eda34c460d630607462b60`  
		Last Modified: Fri, 31 Jul 2026 22:53:51 GMT  
		Size: 29.7 MB (29736517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e140de8788a091d0585dd18f4d56bdf476549505da209ae3d751b482f8d15d1`  
		Last Modified: Mon, 17 Aug 2026 17:44:52 GMT  
		Size: 230.5 MB (230522957 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9574d0f88c37cd56c0a3406a61ed30b2c17d94ad4e4ea26aedf4edadb90edbd`  
		Last Modified: Mon, 17 Aug 2026 17:44:41 GMT  
		Size: 2.6 MB (2566162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:265df43cc806fd09eb6b3e7b1127f7750c8ed1bf676642d272ae2779abdb513e`  
		Last Modified: Mon, 17 Aug 2026 17:44:41 GMT  
		Size: 684.0 KB (683966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:248145b52333826f58b7797a126818b5132f65fdfcca2fab1ffb70f764e247fa`  
		Last Modified: Mon, 17 Aug 2026 17:44:54 GMT  
		Size: 346.6 MB (346639138 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e420b4f2a85f1a6bf5f84eef0ef5542ba3f24841587dde26573c0bb58839af8f`  
		Last Modified: Mon, 17 Aug 2026 17:44:42 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50819c9c166a3e5240b703984f02fdc954e499548dd42e9c8ef4c69f45dfdcf0`  
		Last Modified: Mon, 17 Aug 2026 17:44:43 GMT  
		Size: 555.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6af18e643cd46ad6275c97d86977edee693b5cc5c126056a716471344119cb75`  
		Last Modified: Mon, 17 Aug 2026 17:44:44 GMT  
		Size: 596.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75c587de282854ed84c4555f7788004302539062046cc9e49eee2b2452b35bd5`  
		Last Modified: Mon, 17 Aug 2026 17:44:44 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:17.0-20260817` - unknown; unknown

```console
$ docker pull odoo@sha256:d8b4c619d8cd28b0d9eb1b005a5f26146c13f215d846f5cedb1649bf8400c585
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.8 MB (40842906 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4e7d8ba0347b71c589ccb31ec1313ebbd056006e44d23223553f7bfec5b79d5`

```dockerfile
```

-	Layers:
	-	`sha256:0d29d9d4f2d16d1c7467be7b54813ae4672cafc10b105c482e025314482ce7e4`  
		Last Modified: Mon, 17 Aug 2026 17:44:44 GMT  
		Size: 40.8 MB (40815589 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4412a6996713b1e061887a8d41e4d5192410614450c7051ce00b8a0a4876a33f`  
		Last Modified: Mon, 17 Aug 2026 17:44:41 GMT  
		Size: 27.3 KB (27317 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:17.0-20260817` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:e7e630712448db56d308ae9c79da5e1656b13873114cc382b35e15b81fe3219a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **605.1 MB (605067147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9535426ecd889c1f75232eb7d70ff78483862d6cc247a0049ef0d21776b061da`
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
# Mon, 17 Aug 2026 17:42:01 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Mon, 17 Aug 2026 17:42:01 GMT
SHELL [/bin/bash -xo pipefail -c]
# Mon, 17 Aug 2026 17:42:01 GMT
ENV LANG=en_US.UTF-8
# Mon, 17 Aug 2026 17:42:01 GMT
ARG TARGETARCH=arm64
# Mon, 17 Aug 2026 17:42:01 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     DEBIAN_FRONTEND=noninteractive     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Mon, 17 Aug 2026 17:42:09 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jammy-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 17 Aug 2026 17:42:36 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 17 Aug 2026 17:42:36 GMT
ENV ODOO_VERSION=17.0
# Mon, 17 Aug 2026 17:42:36 GMT
ARG ODOO_RELEASE=20260817
# Mon, 17 Aug 2026 17:42:36 GMT
ARG ODOO_SHA=1d05fd70e47168a5b4365a1a663595bb9583dfcd
# Mon, 17 Aug 2026 17:43:41 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260817 ODOO_SHA=1d05fd70e47168a5b4365a1a663595bb9583dfcd
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Mon, 17 Aug 2026 17:43:41 GMT
COPY ./entrypoint.sh / # buildkit
# Mon, 17 Aug 2026 17:43:41 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Mon, 17 Aug 2026 17:43:41 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260817 ODOO_SHA=1d05fd70e47168a5b4365a1a663595bb9583dfcd
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Mon, 17 Aug 2026 17:43:41 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Mon, 17 Aug 2026 17:43:41 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Mon, 17 Aug 2026 17:43:41 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Mon, 17 Aug 2026 17:43:41 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Mon, 17 Aug 2026 17:43:41 GMT
USER odoo
# Mon, 17 Aug 2026 17:43:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 17 Aug 2026 17:43:41 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:e737c5ed04040f2f0a2a5834e272c5fa0ab6a31a0641be05eb1669153c7c4cfc`  
		Last Modified: Fri, 31 Jul 2026 22:53:57 GMT  
		Size: 27.6 MB (27620032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:338ed8729ebae36b2ba24c62f9db4a6b0a4142be3ad46067dc7647e92bb4fa12`  
		Last Modified: Mon, 17 Aug 2026 17:45:09 GMT  
		Size: 227.9 MB (227943611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c72a8eb9ee87829b4428629327000def263d96c0a3d469fa11f59cdeaa886aee`  
		Last Modified: Mon, 17 Aug 2026 17:44:56 GMT  
		Size: 2.6 MB (2562267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:285dacee564823e5bda60fac1efbf696f88a1c51f74124973d4704c8df2efbc1`  
		Last Modified: Mon, 17 Aug 2026 17:44:55 GMT  
		Size: 683.9 KB (683910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d3e86cf425b36adc8a21679b9753025ef838c076c178a973c3d449ce2269006`  
		Last Modified: Mon, 17 Aug 2026 17:45:14 GMT  
		Size: 346.3 MB (346254530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e420b4f2a85f1a6bf5f84eef0ef5542ba3f24841587dde26573c0bb58839af8f`  
		Last Modified: Mon, 17 Aug 2026 17:44:42 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3aaaff84ce00c437b424dbaadc866527fbe55665bda056b0695517df66156f5`  
		Last Modified: Mon, 17 Aug 2026 17:44:57 GMT  
		Size: 555.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e385ae45b0498359adfb2393ae8f3da76bb5f0ed9e54d920353197e07f95779`  
		Last Modified: Mon, 17 Aug 2026 17:44:59 GMT  
		Size: 595.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbc6d9596d66a21bfc0e949caea9cee6675c9c196c40b8d8d1c602e033696856`  
		Last Modified: Mon, 17 Aug 2026 17:44:59 GMT  
		Size: 880.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:17.0-20260817` - unknown; unknown

```console
$ docker pull odoo@sha256:96224a80b043c14c03ae8f1bd3f63650e2120e594d23b07502ff5cd7f38e1614
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.8 MB (40849562 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62ac886132402d7374596f2c94888b0f8ee7ad486736ccf78a877e95e6a2bc1a`

```dockerfile
```

-	Layers:
	-	`sha256:d10f5acfac85f6c81c84def0dde1e8037cf3992a9b30ef1ec0aa716591130ffe`  
		Last Modified: Mon, 17 Aug 2026 17:44:58 GMT  
		Size: 40.8 MB (40822093 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3de10acf7396215962c7835b74aaae70615feb51bc40c7ea9e09dc2baa08ce4d`  
		Last Modified: Mon, 17 Aug 2026 17:44:57 GMT  
		Size: 27.5 KB (27469 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:18`

```console
$ docker pull odoo@sha256:07ccc8963845e014688cd56b39380a33bda36f827f42f5a5514c7397ffa01132
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
$ docker pull odoo@sha256:149813c2bd3deb225500509bc7acd2970e88998233977d91bcf98f86c862eafb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **675.9 MB (675875745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2917446ab1f72e0e541a4af3d3cee9f5484c55cef5468456d7293a4e19abcddd`
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
# Mon, 17 Aug 2026 17:41:57 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Mon, 17 Aug 2026 17:41:57 GMT
SHELL [/bin/bash -xo pipefail -c]
# Mon, 17 Aug 2026 17:41:57 GMT
ENV LANG=en_US.UTF-8
# Mon, 17 Aug 2026 17:41:57 GMT
ARG TARGETARCH=amd64
# Mon, 17 Aug 2026 17:41:57 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Mon, 17 Aug 2026 17:42:05 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 17 Aug 2026 17:43:25 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 17 Aug 2026 17:43:25 GMT
ENV ODOO_VERSION=18.0
# Mon, 17 Aug 2026 17:43:25 GMT
ARG ODOO_RELEASE=20260817
# Mon, 17 Aug 2026 17:43:25 GMT
ARG ODOO_SHA=99716561524366617b0b4444ec15dc4300185b40
# Mon, 17 Aug 2026 17:44:18 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260817 ODOO_SHA=99716561524366617b0b4444ec15dc4300185b40
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Mon, 17 Aug 2026 17:44:18 GMT
COPY ./entrypoint.sh / # buildkit
# Mon, 17 Aug 2026 17:44:18 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Mon, 17 Aug 2026 17:44:18 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260817 ODOO_SHA=99716561524366617b0b4444ec15dc4300185b40
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Mon, 17 Aug 2026 17:44:18 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Mon, 17 Aug 2026 17:44:18 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Mon, 17 Aug 2026 17:44:18 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Mon, 17 Aug 2026 17:44:19 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Mon, 17 Aug 2026 17:44:19 GMT
USER odoo
# Mon, 17 Aug 2026 17:44:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 17 Aug 2026 17:44:19 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b313821406eb29d23b42def75675d5b20bea1b4995e2123bafd70496536d457`  
		Last Modified: Mon, 17 Aug 2026 17:45:50 GMT  
		Size: 241.1 MB (241083795 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bc6adbb8414046e7624e21eae7799310cc699f3ef48278bb6731210e04e82c9`  
		Last Modified: Mon, 17 Aug 2026 17:45:42 GMT  
		Size: 14.2 MB (14221578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9094bafa28e2363e87b9f10347af20a4fa47f907177596b436617bf39e4cf652`  
		Last Modified: Mon, 17 Aug 2026 17:45:41 GMT  
		Size: 869.4 KB (869396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1505c9b309fadb74a47951709179f36c84865a3fd651480262586e824717cfef`  
		Last Modified: Mon, 17 Aug 2026 17:45:53 GMT  
		Size: 389.9 MB (389947069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12b44aa086fcf30d0d68a0c8ffd656a053e8595d5cf5a5298dd1df1dfdd78c45`  
		Last Modified: Mon, 17 Aug 2026 17:45:43 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2eb302f4608c00cd9d4f1f0a766c1f566bfb7353e40f4a6d47c1252afbcbe81c`  
		Last Modified: Mon, 17 Aug 2026 17:45:44 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f9d53c9b8395da4fb671e26155efeb54977091f4076a910110478e4b679d1d2`  
		Last Modified: Mon, 17 Aug 2026 17:45:44 GMT  
		Size: 595.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e48c3deafac0ac7b32fa8e1d2f612598ccdaf074c4621600fdeb8f9fb647863`  
		Last Modified: Mon, 17 Aug 2026 17:45:45 GMT  
		Size: 880.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18` - unknown; unknown

```console
$ docker pull odoo@sha256:45af45a21f639e4f76c147324e96b5e4ec3ade20899968e6b6fb0d521334eaa8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.9 MB (43854516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98b8dbc3b630c048547348f0753b2c449821c1be24138c734339d22120313873`

```dockerfile
```

-	Layers:
	-	`sha256:7f4b5032efd2cc0286ac0ec1267885c4be1649d261cbb619ee2a2550926c9214`  
		Last Modified: Mon, 17 Aug 2026 17:45:44 GMT  
		Size: 43.8 MB (43827319 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a1a05332ef023e52167cf82d86b6353d84e2899951056c5e29b2d678ad708d07`  
		Last Modified: Mon, 17 Aug 2026 17:45:41 GMT  
		Size: 27.2 KB (27197 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:18` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:711df92d4cbdda4418379e4d179a977727779ca681057a2024da11104ef3a6ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **669.8 MB (669836000 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdacabda36cab184c7babe9ca08aa848d3f39cc21f9a36599c22d5e4aaec88df`
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
# Mon, 17 Aug 2026 17:42:01 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Mon, 17 Aug 2026 17:42:01 GMT
SHELL [/bin/bash -xo pipefail -c]
# Mon, 17 Aug 2026 17:42:01 GMT
ENV LANG=en_US.UTF-8
# Mon, 17 Aug 2026 17:42:01 GMT
ARG TARGETARCH=arm64
# Mon, 17 Aug 2026 17:42:01 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Mon, 17 Aug 2026 17:42:12 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 17 Aug 2026 17:43:16 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 17 Aug 2026 17:43:16 GMT
ENV ODOO_VERSION=18.0
# Mon, 17 Aug 2026 17:43:16 GMT
ARG ODOO_RELEASE=20260817
# Mon, 17 Aug 2026 17:43:16 GMT
ARG ODOO_SHA=99716561524366617b0b4444ec15dc4300185b40
# Mon, 17 Aug 2026 17:44:12 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260817 ODOO_SHA=99716561524366617b0b4444ec15dc4300185b40
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Mon, 17 Aug 2026 17:44:12 GMT
COPY ./entrypoint.sh / # buildkit
# Mon, 17 Aug 2026 17:44:12 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Mon, 17 Aug 2026 17:44:12 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260817 ODOO_SHA=99716561524366617b0b4444ec15dc4300185b40
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Mon, 17 Aug 2026 17:44:12 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Mon, 17 Aug 2026 17:44:12 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Mon, 17 Aug 2026 17:44:12 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Mon, 17 Aug 2026 17:44:12 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Mon, 17 Aug 2026 17:44:12 GMT
USER odoo
# Mon, 17 Aug 2026 17:44:12 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 17 Aug 2026 17:44:12 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44ee4219d4b963f0c9ecafbfe1002f50041186f1998c9207e89efd33ff1e33b0`  
		Last Modified: Mon, 17 Aug 2026 17:45:48 GMT  
		Size: 236.1 MB (236104256 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bcbaa3466690032c7be8686e0a215064c264e33f09d591730cd048a980ef286`  
		Last Modified: Mon, 17 Aug 2026 17:45:40 GMT  
		Size: 14.2 MB (14188002 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c39c3de4267631b66920eecdf046484a9ebb296172f3ccb09b216ddb8361d5c9`  
		Last Modified: Mon, 17 Aug 2026 17:45:39 GMT  
		Size: 869.1 KB (869143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ac44f8e5ca4aa158cfd7f6a5408b1d2561b77787af121d1aa1c121b8ebef65c`  
		Last Modified: Mon, 17 Aug 2026 17:45:51 GMT  
		Size: 389.8 MB (389784985 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1562d1f1fd7cfc6a7638c251989e9c9797840f13c49bdcf367b5f44c204c8be`  
		Last Modified: Mon, 17 Aug 2026 17:45:41 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1528758134af99cc6d35a48f63b6fd5c8fb003aca8f011630648fcb1e622c9fe`  
		Last Modified: Mon, 17 Aug 2026 17:45:42 GMT  
		Size: 554.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9797d7dc932477fc13f1c1ee6f66b2b9616365dcf0dfda363c91c9d7038dbab9`  
		Last Modified: Mon, 17 Aug 2026 17:45:42 GMT  
		Size: 595.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bac26312da168a3aa8d1f3b2d2f149babe288fe2edf9b78ca3c531c74c056e4`  
		Last Modified: Mon, 17 Aug 2026 17:45:43 GMT  
		Size: 880.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18` - unknown; unknown

```console
$ docker pull odoo@sha256:9b0f017861897000bf356a7d673ae1a0bdf955a5256266a4e3d23462a0f88db7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.9 MB (43861940 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd2ac7bce443fbe447ded196b4e55304b193b4b2fcab9c538ec98fdc7518aff8`

```dockerfile
```

-	Layers:
	-	`sha256:de6882610804c804c58d71dc8d91420cb7ac7d75936d4d61afe0fc35150c0016`  
		Last Modified: Mon, 17 Aug 2026 17:45:42 GMT  
		Size: 43.8 MB (43834591 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7f9aed5b6b4d4e3054d4f42f9757348d61af65e1e1774abc55ac40425823a1b0`  
		Last Modified: Mon, 17 Aug 2026 17:45:39 GMT  
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
$ docker pull odoo@sha256:07ccc8963845e014688cd56b39380a33bda36f827f42f5a5514c7397ffa01132
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
$ docker pull odoo@sha256:149813c2bd3deb225500509bc7acd2970e88998233977d91bcf98f86c862eafb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **675.9 MB (675875745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2917446ab1f72e0e541a4af3d3cee9f5484c55cef5468456d7293a4e19abcddd`
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
# Mon, 17 Aug 2026 17:41:57 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Mon, 17 Aug 2026 17:41:57 GMT
SHELL [/bin/bash -xo pipefail -c]
# Mon, 17 Aug 2026 17:41:57 GMT
ENV LANG=en_US.UTF-8
# Mon, 17 Aug 2026 17:41:57 GMT
ARG TARGETARCH=amd64
# Mon, 17 Aug 2026 17:41:57 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Mon, 17 Aug 2026 17:42:05 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 17 Aug 2026 17:43:25 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 17 Aug 2026 17:43:25 GMT
ENV ODOO_VERSION=18.0
# Mon, 17 Aug 2026 17:43:25 GMT
ARG ODOO_RELEASE=20260817
# Mon, 17 Aug 2026 17:43:25 GMT
ARG ODOO_SHA=99716561524366617b0b4444ec15dc4300185b40
# Mon, 17 Aug 2026 17:44:18 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260817 ODOO_SHA=99716561524366617b0b4444ec15dc4300185b40
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Mon, 17 Aug 2026 17:44:18 GMT
COPY ./entrypoint.sh / # buildkit
# Mon, 17 Aug 2026 17:44:18 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Mon, 17 Aug 2026 17:44:18 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260817 ODOO_SHA=99716561524366617b0b4444ec15dc4300185b40
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Mon, 17 Aug 2026 17:44:18 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Mon, 17 Aug 2026 17:44:18 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Mon, 17 Aug 2026 17:44:18 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Mon, 17 Aug 2026 17:44:19 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Mon, 17 Aug 2026 17:44:19 GMT
USER odoo
# Mon, 17 Aug 2026 17:44:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 17 Aug 2026 17:44:19 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b313821406eb29d23b42def75675d5b20bea1b4995e2123bafd70496536d457`  
		Last Modified: Mon, 17 Aug 2026 17:45:50 GMT  
		Size: 241.1 MB (241083795 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bc6adbb8414046e7624e21eae7799310cc699f3ef48278bb6731210e04e82c9`  
		Last Modified: Mon, 17 Aug 2026 17:45:42 GMT  
		Size: 14.2 MB (14221578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9094bafa28e2363e87b9f10347af20a4fa47f907177596b436617bf39e4cf652`  
		Last Modified: Mon, 17 Aug 2026 17:45:41 GMT  
		Size: 869.4 KB (869396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1505c9b309fadb74a47951709179f36c84865a3fd651480262586e824717cfef`  
		Last Modified: Mon, 17 Aug 2026 17:45:53 GMT  
		Size: 389.9 MB (389947069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12b44aa086fcf30d0d68a0c8ffd656a053e8595d5cf5a5298dd1df1dfdd78c45`  
		Last Modified: Mon, 17 Aug 2026 17:45:43 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2eb302f4608c00cd9d4f1f0a766c1f566bfb7353e40f4a6d47c1252afbcbe81c`  
		Last Modified: Mon, 17 Aug 2026 17:45:44 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f9d53c9b8395da4fb671e26155efeb54977091f4076a910110478e4b679d1d2`  
		Last Modified: Mon, 17 Aug 2026 17:45:44 GMT  
		Size: 595.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e48c3deafac0ac7b32fa8e1d2f612598ccdaf074c4621600fdeb8f9fb647863`  
		Last Modified: Mon, 17 Aug 2026 17:45:45 GMT  
		Size: 880.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18.0` - unknown; unknown

```console
$ docker pull odoo@sha256:45af45a21f639e4f76c147324e96b5e4ec3ade20899968e6b6fb0d521334eaa8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.9 MB (43854516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98b8dbc3b630c048547348f0753b2c449821c1be24138c734339d22120313873`

```dockerfile
```

-	Layers:
	-	`sha256:7f4b5032efd2cc0286ac0ec1267885c4be1649d261cbb619ee2a2550926c9214`  
		Last Modified: Mon, 17 Aug 2026 17:45:44 GMT  
		Size: 43.8 MB (43827319 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a1a05332ef023e52167cf82d86b6353d84e2899951056c5e29b2d678ad708d07`  
		Last Modified: Mon, 17 Aug 2026 17:45:41 GMT  
		Size: 27.2 KB (27197 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:18.0` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:711df92d4cbdda4418379e4d179a977727779ca681057a2024da11104ef3a6ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **669.8 MB (669836000 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdacabda36cab184c7babe9ca08aa848d3f39cc21f9a36599c22d5e4aaec88df`
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
# Mon, 17 Aug 2026 17:42:01 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Mon, 17 Aug 2026 17:42:01 GMT
SHELL [/bin/bash -xo pipefail -c]
# Mon, 17 Aug 2026 17:42:01 GMT
ENV LANG=en_US.UTF-8
# Mon, 17 Aug 2026 17:42:01 GMT
ARG TARGETARCH=arm64
# Mon, 17 Aug 2026 17:42:01 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Mon, 17 Aug 2026 17:42:12 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 17 Aug 2026 17:43:16 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 17 Aug 2026 17:43:16 GMT
ENV ODOO_VERSION=18.0
# Mon, 17 Aug 2026 17:43:16 GMT
ARG ODOO_RELEASE=20260817
# Mon, 17 Aug 2026 17:43:16 GMT
ARG ODOO_SHA=99716561524366617b0b4444ec15dc4300185b40
# Mon, 17 Aug 2026 17:44:12 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260817 ODOO_SHA=99716561524366617b0b4444ec15dc4300185b40
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Mon, 17 Aug 2026 17:44:12 GMT
COPY ./entrypoint.sh / # buildkit
# Mon, 17 Aug 2026 17:44:12 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Mon, 17 Aug 2026 17:44:12 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260817 ODOO_SHA=99716561524366617b0b4444ec15dc4300185b40
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Mon, 17 Aug 2026 17:44:12 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Mon, 17 Aug 2026 17:44:12 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Mon, 17 Aug 2026 17:44:12 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Mon, 17 Aug 2026 17:44:12 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Mon, 17 Aug 2026 17:44:12 GMT
USER odoo
# Mon, 17 Aug 2026 17:44:12 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 17 Aug 2026 17:44:12 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44ee4219d4b963f0c9ecafbfe1002f50041186f1998c9207e89efd33ff1e33b0`  
		Last Modified: Mon, 17 Aug 2026 17:45:48 GMT  
		Size: 236.1 MB (236104256 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bcbaa3466690032c7be8686e0a215064c264e33f09d591730cd048a980ef286`  
		Last Modified: Mon, 17 Aug 2026 17:45:40 GMT  
		Size: 14.2 MB (14188002 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c39c3de4267631b66920eecdf046484a9ebb296172f3ccb09b216ddb8361d5c9`  
		Last Modified: Mon, 17 Aug 2026 17:45:39 GMT  
		Size: 869.1 KB (869143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ac44f8e5ca4aa158cfd7f6a5408b1d2561b77787af121d1aa1c121b8ebef65c`  
		Last Modified: Mon, 17 Aug 2026 17:45:51 GMT  
		Size: 389.8 MB (389784985 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1562d1f1fd7cfc6a7638c251989e9c9797840f13c49bdcf367b5f44c204c8be`  
		Last Modified: Mon, 17 Aug 2026 17:45:41 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1528758134af99cc6d35a48f63b6fd5c8fb003aca8f011630648fcb1e622c9fe`  
		Last Modified: Mon, 17 Aug 2026 17:45:42 GMT  
		Size: 554.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9797d7dc932477fc13f1c1ee6f66b2b9616365dcf0dfda363c91c9d7038dbab9`  
		Last Modified: Mon, 17 Aug 2026 17:45:42 GMT  
		Size: 595.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bac26312da168a3aa8d1f3b2d2f149babe288fe2edf9b78ca3c531c74c056e4`  
		Last Modified: Mon, 17 Aug 2026 17:45:43 GMT  
		Size: 880.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18.0` - unknown; unknown

```console
$ docker pull odoo@sha256:9b0f017861897000bf356a7d673ae1a0bdf955a5256266a4e3d23462a0f88db7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.9 MB (43861940 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd2ac7bce443fbe447ded196b4e55304b193b4b2fcab9c538ec98fdc7518aff8`

```dockerfile
```

-	Layers:
	-	`sha256:de6882610804c804c58d71dc8d91420cb7ac7d75936d4d61afe0fc35150c0016`  
		Last Modified: Mon, 17 Aug 2026 17:45:42 GMT  
		Size: 43.8 MB (43834591 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7f9aed5b6b4d4e3054d4f42f9757348d61af65e1e1774abc55ac40425823a1b0`  
		Last Modified: Mon, 17 Aug 2026 17:45:39 GMT  
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
$ docker pull odoo@sha256:07ccc8963845e014688cd56b39380a33bda36f827f42f5a5514c7397ffa01132
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
$ docker pull odoo@sha256:149813c2bd3deb225500509bc7acd2970e88998233977d91bcf98f86c862eafb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **675.9 MB (675875745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2917446ab1f72e0e541a4af3d3cee9f5484c55cef5468456d7293a4e19abcddd`
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
# Mon, 17 Aug 2026 17:41:57 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Mon, 17 Aug 2026 17:41:57 GMT
SHELL [/bin/bash -xo pipefail -c]
# Mon, 17 Aug 2026 17:41:57 GMT
ENV LANG=en_US.UTF-8
# Mon, 17 Aug 2026 17:41:57 GMT
ARG TARGETARCH=amd64
# Mon, 17 Aug 2026 17:41:57 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Mon, 17 Aug 2026 17:42:05 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 17 Aug 2026 17:43:25 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 17 Aug 2026 17:43:25 GMT
ENV ODOO_VERSION=18.0
# Mon, 17 Aug 2026 17:43:25 GMT
ARG ODOO_RELEASE=20260817
# Mon, 17 Aug 2026 17:43:25 GMT
ARG ODOO_SHA=99716561524366617b0b4444ec15dc4300185b40
# Mon, 17 Aug 2026 17:44:18 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260817 ODOO_SHA=99716561524366617b0b4444ec15dc4300185b40
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Mon, 17 Aug 2026 17:44:18 GMT
COPY ./entrypoint.sh / # buildkit
# Mon, 17 Aug 2026 17:44:18 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Mon, 17 Aug 2026 17:44:18 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260817 ODOO_SHA=99716561524366617b0b4444ec15dc4300185b40
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Mon, 17 Aug 2026 17:44:18 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Mon, 17 Aug 2026 17:44:18 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Mon, 17 Aug 2026 17:44:18 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Mon, 17 Aug 2026 17:44:19 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Mon, 17 Aug 2026 17:44:19 GMT
USER odoo
# Mon, 17 Aug 2026 17:44:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 17 Aug 2026 17:44:19 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b313821406eb29d23b42def75675d5b20bea1b4995e2123bafd70496536d457`  
		Last Modified: Mon, 17 Aug 2026 17:45:50 GMT  
		Size: 241.1 MB (241083795 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bc6adbb8414046e7624e21eae7799310cc699f3ef48278bb6731210e04e82c9`  
		Last Modified: Mon, 17 Aug 2026 17:45:42 GMT  
		Size: 14.2 MB (14221578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9094bafa28e2363e87b9f10347af20a4fa47f907177596b436617bf39e4cf652`  
		Last Modified: Mon, 17 Aug 2026 17:45:41 GMT  
		Size: 869.4 KB (869396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1505c9b309fadb74a47951709179f36c84865a3fd651480262586e824717cfef`  
		Last Modified: Mon, 17 Aug 2026 17:45:53 GMT  
		Size: 389.9 MB (389947069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12b44aa086fcf30d0d68a0c8ffd656a053e8595d5cf5a5298dd1df1dfdd78c45`  
		Last Modified: Mon, 17 Aug 2026 17:45:43 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2eb302f4608c00cd9d4f1f0a766c1f566bfb7353e40f4a6d47c1252afbcbe81c`  
		Last Modified: Mon, 17 Aug 2026 17:45:44 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f9d53c9b8395da4fb671e26155efeb54977091f4076a910110478e4b679d1d2`  
		Last Modified: Mon, 17 Aug 2026 17:45:44 GMT  
		Size: 595.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e48c3deafac0ac7b32fa8e1d2f612598ccdaf074c4621600fdeb8f9fb647863`  
		Last Modified: Mon, 17 Aug 2026 17:45:45 GMT  
		Size: 880.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18.0-20260817` - unknown; unknown

```console
$ docker pull odoo@sha256:45af45a21f639e4f76c147324e96b5e4ec3ade20899968e6b6fb0d521334eaa8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.9 MB (43854516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98b8dbc3b630c048547348f0753b2c449821c1be24138c734339d22120313873`

```dockerfile
```

-	Layers:
	-	`sha256:7f4b5032efd2cc0286ac0ec1267885c4be1649d261cbb619ee2a2550926c9214`  
		Last Modified: Mon, 17 Aug 2026 17:45:44 GMT  
		Size: 43.8 MB (43827319 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a1a05332ef023e52167cf82d86b6353d84e2899951056c5e29b2d678ad708d07`  
		Last Modified: Mon, 17 Aug 2026 17:45:41 GMT  
		Size: 27.2 KB (27197 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:18.0-20260817` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:711df92d4cbdda4418379e4d179a977727779ca681057a2024da11104ef3a6ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **669.8 MB (669836000 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdacabda36cab184c7babe9ca08aa848d3f39cc21f9a36599c22d5e4aaec88df`
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
# Mon, 17 Aug 2026 17:42:01 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Mon, 17 Aug 2026 17:42:01 GMT
SHELL [/bin/bash -xo pipefail -c]
# Mon, 17 Aug 2026 17:42:01 GMT
ENV LANG=en_US.UTF-8
# Mon, 17 Aug 2026 17:42:01 GMT
ARG TARGETARCH=arm64
# Mon, 17 Aug 2026 17:42:01 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Mon, 17 Aug 2026 17:42:12 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 17 Aug 2026 17:43:16 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 17 Aug 2026 17:43:16 GMT
ENV ODOO_VERSION=18.0
# Mon, 17 Aug 2026 17:43:16 GMT
ARG ODOO_RELEASE=20260817
# Mon, 17 Aug 2026 17:43:16 GMT
ARG ODOO_SHA=99716561524366617b0b4444ec15dc4300185b40
# Mon, 17 Aug 2026 17:44:12 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260817 ODOO_SHA=99716561524366617b0b4444ec15dc4300185b40
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Mon, 17 Aug 2026 17:44:12 GMT
COPY ./entrypoint.sh / # buildkit
# Mon, 17 Aug 2026 17:44:12 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Mon, 17 Aug 2026 17:44:12 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260817 ODOO_SHA=99716561524366617b0b4444ec15dc4300185b40
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Mon, 17 Aug 2026 17:44:12 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Mon, 17 Aug 2026 17:44:12 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Mon, 17 Aug 2026 17:44:12 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Mon, 17 Aug 2026 17:44:12 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Mon, 17 Aug 2026 17:44:12 GMT
USER odoo
# Mon, 17 Aug 2026 17:44:12 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 17 Aug 2026 17:44:12 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44ee4219d4b963f0c9ecafbfe1002f50041186f1998c9207e89efd33ff1e33b0`  
		Last Modified: Mon, 17 Aug 2026 17:45:48 GMT  
		Size: 236.1 MB (236104256 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bcbaa3466690032c7be8686e0a215064c264e33f09d591730cd048a980ef286`  
		Last Modified: Mon, 17 Aug 2026 17:45:40 GMT  
		Size: 14.2 MB (14188002 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c39c3de4267631b66920eecdf046484a9ebb296172f3ccb09b216ddb8361d5c9`  
		Last Modified: Mon, 17 Aug 2026 17:45:39 GMT  
		Size: 869.1 KB (869143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ac44f8e5ca4aa158cfd7f6a5408b1d2561b77787af121d1aa1c121b8ebef65c`  
		Last Modified: Mon, 17 Aug 2026 17:45:51 GMT  
		Size: 389.8 MB (389784985 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1562d1f1fd7cfc6a7638c251989e9c9797840f13c49bdcf367b5f44c204c8be`  
		Last Modified: Mon, 17 Aug 2026 17:45:41 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1528758134af99cc6d35a48f63b6fd5c8fb003aca8f011630648fcb1e622c9fe`  
		Last Modified: Mon, 17 Aug 2026 17:45:42 GMT  
		Size: 554.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9797d7dc932477fc13f1c1ee6f66b2b9616365dcf0dfda363c91c9d7038dbab9`  
		Last Modified: Mon, 17 Aug 2026 17:45:42 GMT  
		Size: 595.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bac26312da168a3aa8d1f3b2d2f149babe288fe2edf9b78ca3c531c74c056e4`  
		Last Modified: Mon, 17 Aug 2026 17:45:43 GMT  
		Size: 880.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18.0-20260817` - unknown; unknown

```console
$ docker pull odoo@sha256:9b0f017861897000bf356a7d673ae1a0bdf955a5256266a4e3d23462a0f88db7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.9 MB (43861940 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd2ac7bce443fbe447ded196b4e55304b193b4b2fcab9c538ec98fdc7518aff8`

```dockerfile
```

-	Layers:
	-	`sha256:de6882610804c804c58d71dc8d91420cb7ac7d75936d4d61afe0fc35150c0016`  
		Last Modified: Mon, 17 Aug 2026 17:45:42 GMT  
		Size: 43.8 MB (43834591 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7f9aed5b6b4d4e3054d4f42f9757348d61af65e1e1774abc55ac40425823a1b0`  
		Last Modified: Mon, 17 Aug 2026 17:45:39 GMT  
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
$ docker pull odoo@sha256:4f2c0806459de9df877f206d8f1886b673c1c452354d75d17366ffcad2208f68
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
$ docker pull odoo@sha256:ff9c841c44954fa042b1dbe773f8a54acf44b8ba286ac2e2a34d1bd010078849
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **699.2 MB (699194388 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afef37d7e42f1a70a3abb0195e2ac359978507e466f92c142596f13dd25cbdb8`
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
# Mon, 17 Aug 2026 17:41:51 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Mon, 17 Aug 2026 17:41:51 GMT
SHELL [/bin/bash -xo pipefail -c]
# Mon, 17 Aug 2026 17:41:51 GMT
ENV LANG=en_US.UTF-8
# Mon, 17 Aug 2026 17:41:51 GMT
ARG TARGETARCH=amd64
# Mon, 17 Aug 2026 17:41:51 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Mon, 17 Aug 2026 17:42:00 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 17 Aug 2026 17:43:16 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 17 Aug 2026 17:43:16 GMT
ENV ODOO_VERSION=19.0
# Mon, 17 Aug 2026 17:43:16 GMT
ARG ODOO_RELEASE=20260817
# Mon, 17 Aug 2026 17:43:16 GMT
ARG ODOO_SHA=7e6c102efc7e2ad56801432fef7e2e0d2f703e5a
# Mon, 17 Aug 2026 17:44:20 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260817 ODOO_SHA=7e6c102efc7e2ad56801432fef7e2e0d2f703e5a
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Mon, 17 Aug 2026 17:44:20 GMT
COPY ./entrypoint.sh / # buildkit
# Mon, 17 Aug 2026 17:44:20 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Mon, 17 Aug 2026 17:44:20 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260817 ODOO_SHA=7e6c102efc7e2ad56801432fef7e2e0d2f703e5a
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Mon, 17 Aug 2026 17:44:20 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Mon, 17 Aug 2026 17:44:20 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Mon, 17 Aug 2026 17:44:20 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Mon, 17 Aug 2026 17:44:20 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Mon, 17 Aug 2026 17:44:20 GMT
USER odoo
# Mon, 17 Aug 2026 17:44:20 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 17 Aug 2026 17:44:20 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9efd23f14ae5c660d0c05881c7d56e99ed672f024722d11059557f8c1faac88f`  
		Last Modified: Mon, 17 Aug 2026 17:46:07 GMT  
		Size: 241.1 MB (241084075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d0f5fb19167fc31fc4bd5fcd63d43f9d01921535c69c49f2011cba4529477a4`  
		Last Modified: Mon, 17 Aug 2026 17:45:59 GMT  
		Size: 14.2 MB (14221669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7a6aafa56b6d1a26164b99f6e8e33b808fed689f586b397cec0ef8ea425cdaa`  
		Last Modified: Mon, 17 Aug 2026 17:45:58 GMT  
		Size: 869.3 KB (869329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c675a7dc7527d93765a7099b2a81a4cffe1251bde212f9217e1907c02b9c7203`  
		Last Modified: Mon, 17 Aug 2026 17:46:10 GMT  
		Size: 413.3 MB (413265457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26e6f2789e14f9a5183074a00a3e920a244d1f56e79fcc063700e0b4ac0476d4`  
		Last Modified: Mon, 17 Aug 2026 17:46:00 GMT  
		Size: 718.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:daeaa88c230057df66a759a8e881e910d339f6d9c06925382010beb5986be73c`  
		Last Modified: Mon, 17 Aug 2026 17:46:01 GMT  
		Size: 555.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65a63213736a12c67be601d3478702431198686d7c159270b77dbb0f89bcae47`  
		Last Modified: Mon, 17 Aug 2026 17:46:01 GMT  
		Size: 596.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2d0657f0e34d285877f2feb8de4c2fb75a6e38aa918359266807f1c360d006d`  
		Last Modified: Mon, 17 Aug 2026 17:46:02 GMT  
		Size: 880.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19` - unknown; unknown

```console
$ docker pull odoo@sha256:c08d27ddb1dcb672668e853c82b4e9d148e879282d9ae6806f2c59dba23335bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.3 MB (52314408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88f4cb43940d30e6f0afd3eb1727a8e1ab90d322467d2160e13e62e49f0d8868`

```dockerfile
```

-	Layers:
	-	`sha256:a6b0a6902391f571f7ae4e4945088e82edd0c9c490afc9276bb7be2acf53cc12`  
		Last Modified: Mon, 17 Aug 2026 17:46:01 GMT  
		Size: 52.3 MB (52286917 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2b3f202e937d97162630ed9024ef47f85394d80cfac1051bfef1e8451ffcf4e0`  
		Last Modified: Mon, 17 Aug 2026 17:45:58 GMT  
		Size: 27.5 KB (27491 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:19` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:baa81cbf611fd68bc99a9f3aada283ed2125efbfa15b1e603a95a59ca80d06a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **693.2 MB (693151776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97a1f8ae4fa8e45ef5d8618bea7fbd572aa8e8f8dcac81b926cb50a68c684158`
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
# Mon, 17 Aug 2026 17:41:55 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Mon, 17 Aug 2026 17:41:55 GMT
SHELL [/bin/bash -xo pipefail -c]
# Mon, 17 Aug 2026 17:41:55 GMT
ENV LANG=en_US.UTF-8
# Mon, 17 Aug 2026 17:41:55 GMT
ARG TARGETARCH=arm64
# Mon, 17 Aug 2026 17:41:55 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Mon, 17 Aug 2026 17:42:06 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 17 Aug 2026 17:43:06 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 17 Aug 2026 17:43:06 GMT
ENV ODOO_VERSION=19.0
# Mon, 17 Aug 2026 17:43:06 GMT
ARG ODOO_RELEASE=20260817
# Mon, 17 Aug 2026 17:43:06 GMT
ARG ODOO_SHA=7e6c102efc7e2ad56801432fef7e2e0d2f703e5a
# Mon, 17 Aug 2026 17:44:15 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260817 ODOO_SHA=7e6c102efc7e2ad56801432fef7e2e0d2f703e5a
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Mon, 17 Aug 2026 17:44:15 GMT
COPY ./entrypoint.sh / # buildkit
# Mon, 17 Aug 2026 17:44:15 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Mon, 17 Aug 2026 17:44:15 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260817 ODOO_SHA=7e6c102efc7e2ad56801432fef7e2e0d2f703e5a
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Mon, 17 Aug 2026 17:44:15 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Mon, 17 Aug 2026 17:44:15 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Mon, 17 Aug 2026 17:44:15 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Mon, 17 Aug 2026 17:44:15 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Mon, 17 Aug 2026 17:44:15 GMT
USER odoo
# Mon, 17 Aug 2026 17:44:15 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 17 Aug 2026 17:44:15 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d698baacb4949e389f181da31ae21d0e98e7d22ba2e0c3499f2892237d4206db`  
		Last Modified: Mon, 17 Aug 2026 17:46:08 GMT  
		Size: 236.1 MB (236103625 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a08cb049e080d6371c7283643fb5309eb135d26d9790fd3f3eb497a398b296a`  
		Last Modified: Mon, 17 Aug 2026 17:45:59 GMT  
		Size: 14.2 MB (14188029 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81bf96f596b4c0c7a4b4f5ab5de60c4f47159a8bbabb987570803be31149175c`  
		Last Modified: Mon, 17 Aug 2026 17:45:58 GMT  
		Size: 869.2 KB (869166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45702d05409a236f0c517f5092343c7df10e4a657f12eb3baad0452a9259c9b1`  
		Last Modified: Mon, 17 Aug 2026 17:46:10 GMT  
		Size: 413.1 MB (413101388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03a0f9282774a37992f4e45aa1de36942503cd22b5578c16475cf256aa69870f`  
		Last Modified: Mon, 17 Aug 2026 17:46:00 GMT  
		Size: 718.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18b3314f81f7c87286e977c46e3f58a1b544628f71a143fc470910fe3c6067b0`  
		Last Modified: Mon, 17 Aug 2026 17:46:01 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8db4116677f62edda58ea9ac0355da38869bf8bfb0fbc4ce69cf8cf3ee3750c0`  
		Last Modified: Mon, 17 Aug 2026 17:46:01 GMT  
		Size: 596.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59944b15e098910ab06ec68132f593d91be95ed70c3ca4573608dffe03f36fad`  
		Last Modified: Mon, 17 Aug 2026 17:46:02 GMT  
		Size: 880.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19` - unknown; unknown

```console
$ docker pull odoo@sha256:f42ebacfd1f465604df21ae5b19c35253beda9b83ffa3c98cf087b90644b2cf5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.3 MB (52321856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1783022efb256d21f90ad11c5c9e5cec4f281f608a1ac4f01d9bd15ad9b5a41b`

```dockerfile
```

-	Layers:
	-	`sha256:d3673b676a12e5e36844ac97839daa0ef4c8547ec7cb993bdd0b558b43e9bbaa`  
		Last Modified: Mon, 17 Aug 2026 17:46:01 GMT  
		Size: 52.3 MB (52294201 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2174ef3011689b458f88730997f00be347d2c2e23bdfe0169ae5bf574719c28e`  
		Last Modified: Mon, 17 Aug 2026 17:45:58 GMT  
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
$ docker pull odoo@sha256:4f2c0806459de9df877f206d8f1886b673c1c452354d75d17366ffcad2208f68
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
$ docker pull odoo@sha256:ff9c841c44954fa042b1dbe773f8a54acf44b8ba286ac2e2a34d1bd010078849
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **699.2 MB (699194388 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afef37d7e42f1a70a3abb0195e2ac359978507e466f92c142596f13dd25cbdb8`
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
# Mon, 17 Aug 2026 17:41:51 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Mon, 17 Aug 2026 17:41:51 GMT
SHELL [/bin/bash -xo pipefail -c]
# Mon, 17 Aug 2026 17:41:51 GMT
ENV LANG=en_US.UTF-8
# Mon, 17 Aug 2026 17:41:51 GMT
ARG TARGETARCH=amd64
# Mon, 17 Aug 2026 17:41:51 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Mon, 17 Aug 2026 17:42:00 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 17 Aug 2026 17:43:16 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 17 Aug 2026 17:43:16 GMT
ENV ODOO_VERSION=19.0
# Mon, 17 Aug 2026 17:43:16 GMT
ARG ODOO_RELEASE=20260817
# Mon, 17 Aug 2026 17:43:16 GMT
ARG ODOO_SHA=7e6c102efc7e2ad56801432fef7e2e0d2f703e5a
# Mon, 17 Aug 2026 17:44:20 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260817 ODOO_SHA=7e6c102efc7e2ad56801432fef7e2e0d2f703e5a
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Mon, 17 Aug 2026 17:44:20 GMT
COPY ./entrypoint.sh / # buildkit
# Mon, 17 Aug 2026 17:44:20 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Mon, 17 Aug 2026 17:44:20 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260817 ODOO_SHA=7e6c102efc7e2ad56801432fef7e2e0d2f703e5a
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Mon, 17 Aug 2026 17:44:20 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Mon, 17 Aug 2026 17:44:20 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Mon, 17 Aug 2026 17:44:20 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Mon, 17 Aug 2026 17:44:20 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Mon, 17 Aug 2026 17:44:20 GMT
USER odoo
# Mon, 17 Aug 2026 17:44:20 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 17 Aug 2026 17:44:20 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9efd23f14ae5c660d0c05881c7d56e99ed672f024722d11059557f8c1faac88f`  
		Last Modified: Mon, 17 Aug 2026 17:46:07 GMT  
		Size: 241.1 MB (241084075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d0f5fb19167fc31fc4bd5fcd63d43f9d01921535c69c49f2011cba4529477a4`  
		Last Modified: Mon, 17 Aug 2026 17:45:59 GMT  
		Size: 14.2 MB (14221669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7a6aafa56b6d1a26164b99f6e8e33b808fed689f586b397cec0ef8ea425cdaa`  
		Last Modified: Mon, 17 Aug 2026 17:45:58 GMT  
		Size: 869.3 KB (869329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c675a7dc7527d93765a7099b2a81a4cffe1251bde212f9217e1907c02b9c7203`  
		Last Modified: Mon, 17 Aug 2026 17:46:10 GMT  
		Size: 413.3 MB (413265457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26e6f2789e14f9a5183074a00a3e920a244d1f56e79fcc063700e0b4ac0476d4`  
		Last Modified: Mon, 17 Aug 2026 17:46:00 GMT  
		Size: 718.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:daeaa88c230057df66a759a8e881e910d339f6d9c06925382010beb5986be73c`  
		Last Modified: Mon, 17 Aug 2026 17:46:01 GMT  
		Size: 555.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65a63213736a12c67be601d3478702431198686d7c159270b77dbb0f89bcae47`  
		Last Modified: Mon, 17 Aug 2026 17:46:01 GMT  
		Size: 596.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2d0657f0e34d285877f2feb8de4c2fb75a6e38aa918359266807f1c360d006d`  
		Last Modified: Mon, 17 Aug 2026 17:46:02 GMT  
		Size: 880.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19.0` - unknown; unknown

```console
$ docker pull odoo@sha256:c08d27ddb1dcb672668e853c82b4e9d148e879282d9ae6806f2c59dba23335bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.3 MB (52314408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88f4cb43940d30e6f0afd3eb1727a8e1ab90d322467d2160e13e62e49f0d8868`

```dockerfile
```

-	Layers:
	-	`sha256:a6b0a6902391f571f7ae4e4945088e82edd0c9c490afc9276bb7be2acf53cc12`  
		Last Modified: Mon, 17 Aug 2026 17:46:01 GMT  
		Size: 52.3 MB (52286917 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2b3f202e937d97162630ed9024ef47f85394d80cfac1051bfef1e8451ffcf4e0`  
		Last Modified: Mon, 17 Aug 2026 17:45:58 GMT  
		Size: 27.5 KB (27491 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:19.0` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:baa81cbf611fd68bc99a9f3aada283ed2125efbfa15b1e603a95a59ca80d06a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **693.2 MB (693151776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97a1f8ae4fa8e45ef5d8618bea7fbd572aa8e8f8dcac81b926cb50a68c684158`
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
# Mon, 17 Aug 2026 17:41:55 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Mon, 17 Aug 2026 17:41:55 GMT
SHELL [/bin/bash -xo pipefail -c]
# Mon, 17 Aug 2026 17:41:55 GMT
ENV LANG=en_US.UTF-8
# Mon, 17 Aug 2026 17:41:55 GMT
ARG TARGETARCH=arm64
# Mon, 17 Aug 2026 17:41:55 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Mon, 17 Aug 2026 17:42:06 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 17 Aug 2026 17:43:06 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 17 Aug 2026 17:43:06 GMT
ENV ODOO_VERSION=19.0
# Mon, 17 Aug 2026 17:43:06 GMT
ARG ODOO_RELEASE=20260817
# Mon, 17 Aug 2026 17:43:06 GMT
ARG ODOO_SHA=7e6c102efc7e2ad56801432fef7e2e0d2f703e5a
# Mon, 17 Aug 2026 17:44:15 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260817 ODOO_SHA=7e6c102efc7e2ad56801432fef7e2e0d2f703e5a
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Mon, 17 Aug 2026 17:44:15 GMT
COPY ./entrypoint.sh / # buildkit
# Mon, 17 Aug 2026 17:44:15 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Mon, 17 Aug 2026 17:44:15 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260817 ODOO_SHA=7e6c102efc7e2ad56801432fef7e2e0d2f703e5a
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Mon, 17 Aug 2026 17:44:15 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Mon, 17 Aug 2026 17:44:15 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Mon, 17 Aug 2026 17:44:15 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Mon, 17 Aug 2026 17:44:15 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Mon, 17 Aug 2026 17:44:15 GMT
USER odoo
# Mon, 17 Aug 2026 17:44:15 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 17 Aug 2026 17:44:15 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d698baacb4949e389f181da31ae21d0e98e7d22ba2e0c3499f2892237d4206db`  
		Last Modified: Mon, 17 Aug 2026 17:46:08 GMT  
		Size: 236.1 MB (236103625 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a08cb049e080d6371c7283643fb5309eb135d26d9790fd3f3eb497a398b296a`  
		Last Modified: Mon, 17 Aug 2026 17:45:59 GMT  
		Size: 14.2 MB (14188029 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81bf96f596b4c0c7a4b4f5ab5de60c4f47159a8bbabb987570803be31149175c`  
		Last Modified: Mon, 17 Aug 2026 17:45:58 GMT  
		Size: 869.2 KB (869166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45702d05409a236f0c517f5092343c7df10e4a657f12eb3baad0452a9259c9b1`  
		Last Modified: Mon, 17 Aug 2026 17:46:10 GMT  
		Size: 413.1 MB (413101388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03a0f9282774a37992f4e45aa1de36942503cd22b5578c16475cf256aa69870f`  
		Last Modified: Mon, 17 Aug 2026 17:46:00 GMT  
		Size: 718.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18b3314f81f7c87286e977c46e3f58a1b544628f71a143fc470910fe3c6067b0`  
		Last Modified: Mon, 17 Aug 2026 17:46:01 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8db4116677f62edda58ea9ac0355da38869bf8bfb0fbc4ce69cf8cf3ee3750c0`  
		Last Modified: Mon, 17 Aug 2026 17:46:01 GMT  
		Size: 596.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59944b15e098910ab06ec68132f593d91be95ed70c3ca4573608dffe03f36fad`  
		Last Modified: Mon, 17 Aug 2026 17:46:02 GMT  
		Size: 880.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19.0` - unknown; unknown

```console
$ docker pull odoo@sha256:f42ebacfd1f465604df21ae5b19c35253beda9b83ffa3c98cf087b90644b2cf5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.3 MB (52321856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1783022efb256d21f90ad11c5c9e5cec4f281f608a1ac4f01d9bd15ad9b5a41b`

```dockerfile
```

-	Layers:
	-	`sha256:d3673b676a12e5e36844ac97839daa0ef4c8547ec7cb993bdd0b558b43e9bbaa`  
		Last Modified: Mon, 17 Aug 2026 17:46:01 GMT  
		Size: 52.3 MB (52294201 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2174ef3011689b458f88730997f00be347d2c2e23bdfe0169ae5bf574719c28e`  
		Last Modified: Mon, 17 Aug 2026 17:45:58 GMT  
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
$ docker pull odoo@sha256:4f2c0806459de9df877f206d8f1886b673c1c452354d75d17366ffcad2208f68
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
$ docker pull odoo@sha256:ff9c841c44954fa042b1dbe773f8a54acf44b8ba286ac2e2a34d1bd010078849
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **699.2 MB (699194388 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afef37d7e42f1a70a3abb0195e2ac359978507e466f92c142596f13dd25cbdb8`
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
# Mon, 17 Aug 2026 17:41:51 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Mon, 17 Aug 2026 17:41:51 GMT
SHELL [/bin/bash -xo pipefail -c]
# Mon, 17 Aug 2026 17:41:51 GMT
ENV LANG=en_US.UTF-8
# Mon, 17 Aug 2026 17:41:51 GMT
ARG TARGETARCH=amd64
# Mon, 17 Aug 2026 17:41:51 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Mon, 17 Aug 2026 17:42:00 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 17 Aug 2026 17:43:16 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 17 Aug 2026 17:43:16 GMT
ENV ODOO_VERSION=19.0
# Mon, 17 Aug 2026 17:43:16 GMT
ARG ODOO_RELEASE=20260817
# Mon, 17 Aug 2026 17:43:16 GMT
ARG ODOO_SHA=7e6c102efc7e2ad56801432fef7e2e0d2f703e5a
# Mon, 17 Aug 2026 17:44:20 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260817 ODOO_SHA=7e6c102efc7e2ad56801432fef7e2e0d2f703e5a
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Mon, 17 Aug 2026 17:44:20 GMT
COPY ./entrypoint.sh / # buildkit
# Mon, 17 Aug 2026 17:44:20 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Mon, 17 Aug 2026 17:44:20 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260817 ODOO_SHA=7e6c102efc7e2ad56801432fef7e2e0d2f703e5a
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Mon, 17 Aug 2026 17:44:20 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Mon, 17 Aug 2026 17:44:20 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Mon, 17 Aug 2026 17:44:20 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Mon, 17 Aug 2026 17:44:20 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Mon, 17 Aug 2026 17:44:20 GMT
USER odoo
# Mon, 17 Aug 2026 17:44:20 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 17 Aug 2026 17:44:20 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9efd23f14ae5c660d0c05881c7d56e99ed672f024722d11059557f8c1faac88f`  
		Last Modified: Mon, 17 Aug 2026 17:46:07 GMT  
		Size: 241.1 MB (241084075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d0f5fb19167fc31fc4bd5fcd63d43f9d01921535c69c49f2011cba4529477a4`  
		Last Modified: Mon, 17 Aug 2026 17:45:59 GMT  
		Size: 14.2 MB (14221669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7a6aafa56b6d1a26164b99f6e8e33b808fed689f586b397cec0ef8ea425cdaa`  
		Last Modified: Mon, 17 Aug 2026 17:45:58 GMT  
		Size: 869.3 KB (869329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c675a7dc7527d93765a7099b2a81a4cffe1251bde212f9217e1907c02b9c7203`  
		Last Modified: Mon, 17 Aug 2026 17:46:10 GMT  
		Size: 413.3 MB (413265457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26e6f2789e14f9a5183074a00a3e920a244d1f56e79fcc063700e0b4ac0476d4`  
		Last Modified: Mon, 17 Aug 2026 17:46:00 GMT  
		Size: 718.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:daeaa88c230057df66a759a8e881e910d339f6d9c06925382010beb5986be73c`  
		Last Modified: Mon, 17 Aug 2026 17:46:01 GMT  
		Size: 555.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65a63213736a12c67be601d3478702431198686d7c159270b77dbb0f89bcae47`  
		Last Modified: Mon, 17 Aug 2026 17:46:01 GMT  
		Size: 596.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2d0657f0e34d285877f2feb8de4c2fb75a6e38aa918359266807f1c360d006d`  
		Last Modified: Mon, 17 Aug 2026 17:46:02 GMT  
		Size: 880.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19.0-20260817` - unknown; unknown

```console
$ docker pull odoo@sha256:c08d27ddb1dcb672668e853c82b4e9d148e879282d9ae6806f2c59dba23335bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.3 MB (52314408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88f4cb43940d30e6f0afd3eb1727a8e1ab90d322467d2160e13e62e49f0d8868`

```dockerfile
```

-	Layers:
	-	`sha256:a6b0a6902391f571f7ae4e4945088e82edd0c9c490afc9276bb7be2acf53cc12`  
		Last Modified: Mon, 17 Aug 2026 17:46:01 GMT  
		Size: 52.3 MB (52286917 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2b3f202e937d97162630ed9024ef47f85394d80cfac1051bfef1e8451ffcf4e0`  
		Last Modified: Mon, 17 Aug 2026 17:45:58 GMT  
		Size: 27.5 KB (27491 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:19.0-20260817` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:baa81cbf611fd68bc99a9f3aada283ed2125efbfa15b1e603a95a59ca80d06a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **693.2 MB (693151776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97a1f8ae4fa8e45ef5d8618bea7fbd572aa8e8f8dcac81b926cb50a68c684158`
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
# Mon, 17 Aug 2026 17:41:55 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Mon, 17 Aug 2026 17:41:55 GMT
SHELL [/bin/bash -xo pipefail -c]
# Mon, 17 Aug 2026 17:41:55 GMT
ENV LANG=en_US.UTF-8
# Mon, 17 Aug 2026 17:41:55 GMT
ARG TARGETARCH=arm64
# Mon, 17 Aug 2026 17:41:55 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Mon, 17 Aug 2026 17:42:06 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 17 Aug 2026 17:43:06 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 17 Aug 2026 17:43:06 GMT
ENV ODOO_VERSION=19.0
# Mon, 17 Aug 2026 17:43:06 GMT
ARG ODOO_RELEASE=20260817
# Mon, 17 Aug 2026 17:43:06 GMT
ARG ODOO_SHA=7e6c102efc7e2ad56801432fef7e2e0d2f703e5a
# Mon, 17 Aug 2026 17:44:15 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260817 ODOO_SHA=7e6c102efc7e2ad56801432fef7e2e0d2f703e5a
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Mon, 17 Aug 2026 17:44:15 GMT
COPY ./entrypoint.sh / # buildkit
# Mon, 17 Aug 2026 17:44:15 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Mon, 17 Aug 2026 17:44:15 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260817 ODOO_SHA=7e6c102efc7e2ad56801432fef7e2e0d2f703e5a
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Mon, 17 Aug 2026 17:44:15 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Mon, 17 Aug 2026 17:44:15 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Mon, 17 Aug 2026 17:44:15 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Mon, 17 Aug 2026 17:44:15 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Mon, 17 Aug 2026 17:44:15 GMT
USER odoo
# Mon, 17 Aug 2026 17:44:15 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 17 Aug 2026 17:44:15 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d698baacb4949e389f181da31ae21d0e98e7d22ba2e0c3499f2892237d4206db`  
		Last Modified: Mon, 17 Aug 2026 17:46:08 GMT  
		Size: 236.1 MB (236103625 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a08cb049e080d6371c7283643fb5309eb135d26d9790fd3f3eb497a398b296a`  
		Last Modified: Mon, 17 Aug 2026 17:45:59 GMT  
		Size: 14.2 MB (14188029 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81bf96f596b4c0c7a4b4f5ab5de60c4f47159a8bbabb987570803be31149175c`  
		Last Modified: Mon, 17 Aug 2026 17:45:58 GMT  
		Size: 869.2 KB (869166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45702d05409a236f0c517f5092343c7df10e4a657f12eb3baad0452a9259c9b1`  
		Last Modified: Mon, 17 Aug 2026 17:46:10 GMT  
		Size: 413.1 MB (413101388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03a0f9282774a37992f4e45aa1de36942503cd22b5578c16475cf256aa69870f`  
		Last Modified: Mon, 17 Aug 2026 17:46:00 GMT  
		Size: 718.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18b3314f81f7c87286e977c46e3f58a1b544628f71a143fc470910fe3c6067b0`  
		Last Modified: Mon, 17 Aug 2026 17:46:01 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8db4116677f62edda58ea9ac0355da38869bf8bfb0fbc4ce69cf8cf3ee3750c0`  
		Last Modified: Mon, 17 Aug 2026 17:46:01 GMT  
		Size: 596.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59944b15e098910ab06ec68132f593d91be95ed70c3ca4573608dffe03f36fad`  
		Last Modified: Mon, 17 Aug 2026 17:46:02 GMT  
		Size: 880.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19.0-20260817` - unknown; unknown

```console
$ docker pull odoo@sha256:f42ebacfd1f465604df21ae5b19c35253beda9b83ffa3c98cf087b90644b2cf5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.3 MB (52321856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1783022efb256d21f90ad11c5c9e5cec4f281f608a1ac4f01d9bd15ad9b5a41b`

```dockerfile
```

-	Layers:
	-	`sha256:d3673b676a12e5e36844ac97839daa0ef4c8547ec7cb993bdd0b558b43e9bbaa`  
		Last Modified: Mon, 17 Aug 2026 17:46:01 GMT  
		Size: 52.3 MB (52294201 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2174ef3011689b458f88730997f00be347d2c2e23bdfe0169ae5bf574719c28e`  
		Last Modified: Mon, 17 Aug 2026 17:45:58 GMT  
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
$ docker pull odoo@sha256:4f2c0806459de9df877f206d8f1886b673c1c452354d75d17366ffcad2208f68
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
$ docker pull odoo@sha256:ff9c841c44954fa042b1dbe773f8a54acf44b8ba286ac2e2a34d1bd010078849
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **699.2 MB (699194388 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afef37d7e42f1a70a3abb0195e2ac359978507e466f92c142596f13dd25cbdb8`
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
# Mon, 17 Aug 2026 17:41:51 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Mon, 17 Aug 2026 17:41:51 GMT
SHELL [/bin/bash -xo pipefail -c]
# Mon, 17 Aug 2026 17:41:51 GMT
ENV LANG=en_US.UTF-8
# Mon, 17 Aug 2026 17:41:51 GMT
ARG TARGETARCH=amd64
# Mon, 17 Aug 2026 17:41:51 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Mon, 17 Aug 2026 17:42:00 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 17 Aug 2026 17:43:16 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 17 Aug 2026 17:43:16 GMT
ENV ODOO_VERSION=19.0
# Mon, 17 Aug 2026 17:43:16 GMT
ARG ODOO_RELEASE=20260817
# Mon, 17 Aug 2026 17:43:16 GMT
ARG ODOO_SHA=7e6c102efc7e2ad56801432fef7e2e0d2f703e5a
# Mon, 17 Aug 2026 17:44:20 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260817 ODOO_SHA=7e6c102efc7e2ad56801432fef7e2e0d2f703e5a
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Mon, 17 Aug 2026 17:44:20 GMT
COPY ./entrypoint.sh / # buildkit
# Mon, 17 Aug 2026 17:44:20 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Mon, 17 Aug 2026 17:44:20 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260817 ODOO_SHA=7e6c102efc7e2ad56801432fef7e2e0d2f703e5a
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Mon, 17 Aug 2026 17:44:20 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Mon, 17 Aug 2026 17:44:20 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Mon, 17 Aug 2026 17:44:20 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Mon, 17 Aug 2026 17:44:20 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Mon, 17 Aug 2026 17:44:20 GMT
USER odoo
# Mon, 17 Aug 2026 17:44:20 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 17 Aug 2026 17:44:20 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9efd23f14ae5c660d0c05881c7d56e99ed672f024722d11059557f8c1faac88f`  
		Last Modified: Mon, 17 Aug 2026 17:46:07 GMT  
		Size: 241.1 MB (241084075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d0f5fb19167fc31fc4bd5fcd63d43f9d01921535c69c49f2011cba4529477a4`  
		Last Modified: Mon, 17 Aug 2026 17:45:59 GMT  
		Size: 14.2 MB (14221669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7a6aafa56b6d1a26164b99f6e8e33b808fed689f586b397cec0ef8ea425cdaa`  
		Last Modified: Mon, 17 Aug 2026 17:45:58 GMT  
		Size: 869.3 KB (869329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c675a7dc7527d93765a7099b2a81a4cffe1251bde212f9217e1907c02b9c7203`  
		Last Modified: Mon, 17 Aug 2026 17:46:10 GMT  
		Size: 413.3 MB (413265457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26e6f2789e14f9a5183074a00a3e920a244d1f56e79fcc063700e0b4ac0476d4`  
		Last Modified: Mon, 17 Aug 2026 17:46:00 GMT  
		Size: 718.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:daeaa88c230057df66a759a8e881e910d339f6d9c06925382010beb5986be73c`  
		Last Modified: Mon, 17 Aug 2026 17:46:01 GMT  
		Size: 555.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65a63213736a12c67be601d3478702431198686d7c159270b77dbb0f89bcae47`  
		Last Modified: Mon, 17 Aug 2026 17:46:01 GMT  
		Size: 596.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2d0657f0e34d285877f2feb8de4c2fb75a6e38aa918359266807f1c360d006d`  
		Last Modified: Mon, 17 Aug 2026 17:46:02 GMT  
		Size: 880.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:latest` - unknown; unknown

```console
$ docker pull odoo@sha256:c08d27ddb1dcb672668e853c82b4e9d148e879282d9ae6806f2c59dba23335bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.3 MB (52314408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88f4cb43940d30e6f0afd3eb1727a8e1ab90d322467d2160e13e62e49f0d8868`

```dockerfile
```

-	Layers:
	-	`sha256:a6b0a6902391f571f7ae4e4945088e82edd0c9c490afc9276bb7be2acf53cc12`  
		Last Modified: Mon, 17 Aug 2026 17:46:01 GMT  
		Size: 52.3 MB (52286917 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2b3f202e937d97162630ed9024ef47f85394d80cfac1051bfef1e8451ffcf4e0`  
		Last Modified: Mon, 17 Aug 2026 17:45:58 GMT  
		Size: 27.5 KB (27491 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:latest` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:baa81cbf611fd68bc99a9f3aada283ed2125efbfa15b1e603a95a59ca80d06a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **693.2 MB (693151776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97a1f8ae4fa8e45ef5d8618bea7fbd572aa8e8f8dcac81b926cb50a68c684158`
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
# Mon, 17 Aug 2026 17:41:55 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Mon, 17 Aug 2026 17:41:55 GMT
SHELL [/bin/bash -xo pipefail -c]
# Mon, 17 Aug 2026 17:41:55 GMT
ENV LANG=en_US.UTF-8
# Mon, 17 Aug 2026 17:41:55 GMT
ARG TARGETARCH=arm64
# Mon, 17 Aug 2026 17:41:55 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Mon, 17 Aug 2026 17:42:06 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 17 Aug 2026 17:43:06 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 17 Aug 2026 17:43:06 GMT
ENV ODOO_VERSION=19.0
# Mon, 17 Aug 2026 17:43:06 GMT
ARG ODOO_RELEASE=20260817
# Mon, 17 Aug 2026 17:43:06 GMT
ARG ODOO_SHA=7e6c102efc7e2ad56801432fef7e2e0d2f703e5a
# Mon, 17 Aug 2026 17:44:15 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260817 ODOO_SHA=7e6c102efc7e2ad56801432fef7e2e0d2f703e5a
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Mon, 17 Aug 2026 17:44:15 GMT
COPY ./entrypoint.sh / # buildkit
# Mon, 17 Aug 2026 17:44:15 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Mon, 17 Aug 2026 17:44:15 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260817 ODOO_SHA=7e6c102efc7e2ad56801432fef7e2e0d2f703e5a
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Mon, 17 Aug 2026 17:44:15 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Mon, 17 Aug 2026 17:44:15 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Mon, 17 Aug 2026 17:44:15 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Mon, 17 Aug 2026 17:44:15 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Mon, 17 Aug 2026 17:44:15 GMT
USER odoo
# Mon, 17 Aug 2026 17:44:15 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 17 Aug 2026 17:44:15 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d698baacb4949e389f181da31ae21d0e98e7d22ba2e0c3499f2892237d4206db`  
		Last Modified: Mon, 17 Aug 2026 17:46:08 GMT  
		Size: 236.1 MB (236103625 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a08cb049e080d6371c7283643fb5309eb135d26d9790fd3f3eb497a398b296a`  
		Last Modified: Mon, 17 Aug 2026 17:45:59 GMT  
		Size: 14.2 MB (14188029 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81bf96f596b4c0c7a4b4f5ab5de60c4f47159a8bbabb987570803be31149175c`  
		Last Modified: Mon, 17 Aug 2026 17:45:58 GMT  
		Size: 869.2 KB (869166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45702d05409a236f0c517f5092343c7df10e4a657f12eb3baad0452a9259c9b1`  
		Last Modified: Mon, 17 Aug 2026 17:46:10 GMT  
		Size: 413.1 MB (413101388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03a0f9282774a37992f4e45aa1de36942503cd22b5578c16475cf256aa69870f`  
		Last Modified: Mon, 17 Aug 2026 17:46:00 GMT  
		Size: 718.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18b3314f81f7c87286e977c46e3f58a1b544628f71a143fc470910fe3c6067b0`  
		Last Modified: Mon, 17 Aug 2026 17:46:01 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8db4116677f62edda58ea9ac0355da38869bf8bfb0fbc4ce69cf8cf3ee3750c0`  
		Last Modified: Mon, 17 Aug 2026 17:46:01 GMT  
		Size: 596.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59944b15e098910ab06ec68132f593d91be95ed70c3ca4573608dffe03f36fad`  
		Last Modified: Mon, 17 Aug 2026 17:46:02 GMT  
		Size: 880.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:latest` - unknown; unknown

```console
$ docker pull odoo@sha256:f42ebacfd1f465604df21ae5b19c35253beda9b83ffa3c98cf087b90644b2cf5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.3 MB (52321856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1783022efb256d21f90ad11c5c9e5cec4f281f608a1ac4f01d9bd15ad9b5a41b`

```dockerfile
```

-	Layers:
	-	`sha256:d3673b676a12e5e36844ac97839daa0ef4c8547ec7cb993bdd0b558b43e9bbaa`  
		Last Modified: Mon, 17 Aug 2026 17:46:01 GMT  
		Size: 52.3 MB (52294201 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2174ef3011689b458f88730997f00be347d2c2e23bdfe0169ae5bf574719c28e`  
		Last Modified: Mon, 17 Aug 2026 17:45:58 GMT  
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
