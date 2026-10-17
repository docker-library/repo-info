<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `odoo`

-	[`odoo:18`](#odoo18)
-	[`odoo:18.0`](#odoo180)
-	[`odoo:18.0-20261015`](#odoo180-20261015)
-	[`odoo:19`](#odoo19)
-	[`odoo:19.0`](#odoo190)
-	[`odoo:19.0-20261015`](#odoo190-20261015)
-	[`odoo:20`](#odoo20)
-	[`odoo:20.0`](#odoo200)
-	[`odoo:20.0-20261015`](#odoo200-20261015)
-	[`odoo:latest`](#odoolatest)

## `odoo:18`

```console
$ docker pull odoo@sha256:1b346c6f9145c79b802b711a554a141acbd0503ed6cd7d31cb3c938889c4cc36
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
$ docker pull odoo@sha256:e4ec0b83c126d1fcc9a2bb124bd589b7db507f815557dc1425f9bac5501df4a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **675.1 MB (675127345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7338c37f01182d44ae28fd470250cfee549e455d329ecfc4d56346e0b00ee3d9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:52 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:52 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:52 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:54 GMT
ADD file:7121eb4a5ba391efb4ba9a38c532d1c5dc2d22d276f04e062f357eea36ee62c4 in / 
# Fri, 02 Oct 2026 08:10:55 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:34:01 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Sat, 17 Oct 2026 00:34:01 GMT
SHELL [/bin/bash -xo pipefail -c]
# Sat, 17 Oct 2026 00:34:01 GMT
ENV LANG=en_US.UTF-8
# Sat, 17 Oct 2026 00:34:01 GMT
ARG TARGETARCH=amd64
# Sat, 17 Oct 2026 00:34:01 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Sat, 17 Oct 2026 00:34:10 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:35:27 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:35:27 GMT
ENV ODOO_VERSION=18.0
# Sat, 17 Oct 2026 00:35:27 GMT
ARG ODOO_RELEASE=20261015
# Sat, 17 Oct 2026 00:35:27 GMT
ARG ODOO_SHA=21f8d7d61d37a8bb1a6a0e151bc976c91d8b8229
# Sat, 17 Oct 2026 00:36:14 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261015 ODOO_SHA=21f8d7d61d37a8bb1a6a0e151bc976c91d8b8229
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Sat, 17 Oct 2026 00:36:14 GMT
COPY ./entrypoint.sh / # buildkit
# Sat, 17 Oct 2026 00:36:14 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Sat, 17 Oct 2026 00:36:15 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261015 ODOO_SHA=21f8d7d61d37a8bb1a6a0e151bc976c91d8b8229
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Sat, 17 Oct 2026 00:36:15 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Sat, 17 Oct 2026 00:36:15 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Sat, 17 Oct 2026 00:36:15 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Sat, 17 Oct 2026 00:36:15 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Sat, 17 Oct 2026 00:36:15 GMT
USER odoo
# Sat, 17 Oct 2026 00:36:15 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 17 Oct 2026 00:36:15 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:f2b4ef06ff01a67d4bed7657a4ae379a7d07934b7c3e743454a22a0d5275fb2b`  
		Last Modified: Fri, 02 Oct 2026 08:36:14 GMT  
		Size: 29.8 MB (29765758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecca9be2172c0e872257ec95adaf772aa6a61be3e24d821ffdbf7f3249034a28`  
		Last Modified: Sat, 17 Oct 2026 00:37:46 GMT  
		Size: 238.7 MB (238715850 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:403758c5377969a6a75339b3c5c9bd317bdefb88e666a2a9d293170f17ecfca4`  
		Last Modified: Sat, 17 Oct 2026 00:37:33 GMT  
		Size: 14.2 MB (14226255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:539c32a599baf25d888d99b734ed535caf4a67573134c0d47c005cdd437608ce`  
		Last Modified: Sat, 17 Oct 2026 00:37:32 GMT  
		Size: 872.8 KB (872791 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:caaa24a1fad4d9610d94f909f906b3b5b1b9e03413670360c5570e4e76524a88`  
		Last Modified: Sat, 17 Oct 2026 00:37:51 GMT  
		Size: 391.5 MB (391543890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2055ec2e520e13543a351effd90297b9dc4f544dfbda3b606d4ea02dab632f1f`  
		Last Modified: Sat, 17 Oct 2026 00:37:34 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e19447fdc5e4c43813345899ecf8a25e4028ac4408f6966eefb261bffa0509df`  
		Last Modified: Sat, 17 Oct 2026 00:37:35 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87af8a59c9a69b442a8c72e3341692c34d42f0eac3a058ba5ab70ed0218e8ddb`  
		Last Modified: Sat, 17 Oct 2026 00:37:35 GMT  
		Size: 599.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:496e240ae2f370c329a624e841c8bc61fd7f91908c40f4e74d8111b01c15c3b7`  
		Last Modified: Sat, 17 Oct 2026 00:37:37 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18` - unknown; unknown

```console
$ docker pull odoo@sha256:a67fde227e53e06c96a802a11e318641d12cab21d11b3cdfd29a188239658496
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.0 MB (43962107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5d54fddfc31fadd8fe980dbe027f988b0a7ebd19cf74057926aa5f8d3aa6768`

```dockerfile
```

-	Layers:
	-	`sha256:b453a387e16c081ba87fcd328e3c624589b68f48f999a5649b47b156d4cfa008`  
		Last Modified: Sat, 17 Oct 2026 00:37:36 GMT  
		Size: 43.9 MB (43934910 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8fccab2db2b6cfc370f25f5b520d850cb7345bda750a490edcea1081b7b33f92`  
		Last Modified: Sat, 17 Oct 2026 00:37:32 GMT  
		Size: 27.2 KB (27197 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:18` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:56921e346e430147e27ac4dec727ab4244af1ea3f928f99c214ac0001818414a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **671.6 MB (671596611 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a26257a9442cc186525b809926db24eb113e94fbcaa06eb7e685fcd09cd043ab`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:23 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:23 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:23 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:25 GMT
ADD file:41d2e63ceb0b90641106340bc81ee11125254db51ee5a9d49e666bcf0388814f in / 
# Fri, 02 Oct 2026 08:10:26 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:33:48 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Sat, 17 Oct 2026 00:33:48 GMT
SHELL [/bin/bash -xo pipefail -c]
# Sat, 17 Oct 2026 00:33:48 GMT
ENV LANG=en_US.UTF-8
# Sat, 17 Oct 2026 00:33:48 GMT
ARG TARGETARCH=arm64
# Sat, 17 Oct 2026 00:33:48 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Sat, 17 Oct 2026 00:33:59 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:35:02 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:35:02 GMT
ENV ODOO_VERSION=18.0
# Sat, 17 Oct 2026 00:35:02 GMT
ARG ODOO_RELEASE=20261015
# Sat, 17 Oct 2026 00:35:02 GMT
ARG ODOO_SHA=21f8d7d61d37a8bb1a6a0e151bc976c91d8b8229
# Sat, 17 Oct 2026 00:36:00 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261015 ODOO_SHA=21f8d7d61d37a8bb1a6a0e151bc976c91d8b8229
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Sat, 17 Oct 2026 00:36:00 GMT
COPY ./entrypoint.sh / # buildkit
# Sat, 17 Oct 2026 00:36:00 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Sat, 17 Oct 2026 00:36:00 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261015 ODOO_SHA=21f8d7d61d37a8bb1a6a0e151bc976c91d8b8229
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Sat, 17 Oct 2026 00:36:00 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Sat, 17 Oct 2026 00:36:00 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Sat, 17 Oct 2026 00:36:00 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Sat, 17 Oct 2026 00:36:00 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Sat, 17 Oct 2026 00:36:00 GMT
USER odoo
# Sat, 17 Oct 2026 00:36:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 17 Oct 2026 00:36:00 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:d5aec63251bb323f816a0f4b8a554bd84e478466a9ed1068daef07368328e9a3`  
		Last Modified: Fri, 02 Oct 2026 08:36:21 GMT  
		Size: 28.9 MB (28939761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3978004bf1e99ae53708676a37100616fd449f23e09c2df417f89e0b392d885e`  
		Last Modified: Sat, 17 Oct 2026 00:37:35 GMT  
		Size: 236.2 MB (236186254 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fbafcc5b21c3738bb1477e99be20d6c0cb4f2cbb617fbf27d78766b4d35f718`  
		Last Modified: Sat, 17 Oct 2026 00:37:27 GMT  
		Size: 14.2 MB (14197300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50d0ace9db46b8ee902ad3a27ab8e88e26597fee74a51023adf93b578523674f`  
		Last Modified: Sat, 17 Oct 2026 00:37:26 GMT  
		Size: 872.6 KB (872584 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ea3d6e85d7ecb9327fa09baa5e0fd2472e7ebe6ec975515b84f1b01f9519987`  
		Last Modified: Sat, 17 Oct 2026 00:37:37 GMT  
		Size: 391.4 MB (391397914 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88516f380727ebbe221b7a26b9b8ea9d037fa6695a1db94281ba1dcb4d273bd5`  
		Last Modified: Sat, 17 Oct 2026 00:37:27 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d87058fbaf3b50b18b5886cd1a99088ebb9804f6cb50560e4b3b5a749c839ae`  
		Last Modified: Sat, 17 Oct 2026 00:37:28 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f09f58a630ea52fedccdbb53fe321294d81f99505ae442466ab09c71e0113c3b`  
		Last Modified: Sat, 17 Oct 2026 00:37:29 GMT  
		Size: 597.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd7535b85673c4627edc60f4653e472aba0a15674cefaf1d0065465e157b0565`  
		Last Modified: Sat, 17 Oct 2026 00:37:30 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18` - unknown; unknown

```console
$ docker pull odoo@sha256:58aac768588762ffa73230e1e4d8795d6fbee6a90b387b59b8bb702136f70571
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.0 MB (43969531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9508e42567ba59915b9bb556c60f94b3b1e7f12966cef564061cb1e7c399c89f`

```dockerfile
```

-	Layers:
	-	`sha256:0257746fe3e4537ab8f3dc9977c20da25746dd2e01829721a09b189950f8917e`  
		Last Modified: Sat, 17 Oct 2026 00:37:28 GMT  
		Size: 43.9 MB (43942182 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8dbdc2b3577d676b3ce3b8482a5fa6f9d33a08c06ed247bce0754b05a3ae20b4`  
		Last Modified: Sat, 17 Oct 2026 00:37:26 GMT  
		Size: 27.3 KB (27349 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:18` - linux; ppc64le

```console
$ docker pull odoo@sha256:237b8e16bda7348945c5a630237913d5640ab1217b15d4f6e51f025a3cfe662f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **691.6 MB (691613964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6798c9b4912182e788edf016da0f2104afe6d6b1a71b1d3bd0e0068f93d1d098`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Fri, 02 Oct 2026 08:03:52 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:03:52 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:03:53 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:03:57 GMT
ADD file:453509713ec04b626052519f384e2b9d016f8f4971a3e6dd75d87e74e89202c9 in / 
# Fri, 02 Oct 2026 08:03:57 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 01:44:47 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Sat, 17 Oct 2026 01:44:47 GMT
SHELL [/bin/bash -xo pipefail -c]
# Sat, 17 Oct 2026 01:44:47 GMT
ENV LANG=en_US.UTF-8
# Sat, 17 Oct 2026 01:44:47 GMT
ARG TARGETARCH=ppc64le
# Sat, 17 Oct 2026 01:44:47 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Sat, 17 Oct 2026 01:45:03 GMT
# ARGS: TARGETARCH=ppc64le
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 01:50:56 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 01:50:56 GMT
ENV ODOO_VERSION=18.0
# Sat, 17 Oct 2026 01:50:56 GMT
ARG ODOO_RELEASE=20261015
# Sat, 17 Oct 2026 01:50:56 GMT
ARG ODOO_SHA=21f8d7d61d37a8bb1a6a0e151bc976c91d8b8229
# Sat, 17 Oct 2026 02:03:09 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261015 ODOO_SHA=21f8d7d61d37a8bb1a6a0e151bc976c91d8b8229
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Sat, 17 Oct 2026 02:03:10 GMT
COPY ./entrypoint.sh / # buildkit
# Sat, 17 Oct 2026 02:03:10 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Sat, 17 Oct 2026 02:03:11 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261015 ODOO_SHA=21f8d7d61d37a8bb1a6a0e151bc976c91d8b8229
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Sat, 17 Oct 2026 02:03:11 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Sat, 17 Oct 2026 02:03:11 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Sat, 17 Oct 2026 02:03:11 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Sat, 17 Oct 2026 02:03:11 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Sat, 17 Oct 2026 02:03:11 GMT
USER odoo
# Sat, 17 Oct 2026 02:03:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 17 Oct 2026 02:03:11 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:d56805ebb73a9b4ab3eaf5e6375e8f25df35aba5e48ca970deb58001dac1f2ca`  
		Last Modified: Fri, 02 Oct 2026 08:36:36 GMT  
		Size: 34.4 MB (34377990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa22d41037f1b29e6bd07017dbe5885335dc1e8bc0a282df902f946042e5f073`  
		Last Modified: Sat, 17 Oct 2026 02:00:27 GMT  
		Size: 249.4 MB (249398075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e27e91439e065b4cff747d37ee9c7bc16b9bd06c82b3861e1e35e27226917ec8`  
		Last Modified: Sat, 17 Oct 2026 02:00:17 GMT  
		Size: 14.7 MB (14743400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11a1f5a296d42f380acd7c79d73a35a3430aa7c9ce866fac9daddbcce0b60bb3`  
		Last Modified: Sat, 17 Oct 2026 02:00:16 GMT  
		Size: 874.4 KB (874428 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:361a4516286165339e3c72f3d84cc272e0448eaa401062718cbe9328352ec1f2`  
		Last Modified: Sat, 17 Oct 2026 02:07:13 GMT  
		Size: 392.2 MB (392217273 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08be183e50ed16fcf05c1bea9d3ce3c0de7a2f7ffc8334426fab5bb837918def`  
		Last Modified: Sat, 17 Oct 2026 02:07:04 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fdea3b0ff2ef1319ed3d0999f6db699756656c291ae632489ab85a097ea4f9b`  
		Last Modified: Sat, 17 Oct 2026 02:07:04 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d612cfdfa6c1cc2daf72aa11858d83bbed9fca1d36085b4ccd329d4e0d5fda40`  
		Last Modified: Sat, 17 Oct 2026 02:07:04 GMT  
		Size: 598.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f553bb970a74b313a503cbedfe44d59f782a4d4a763488eea0815972d5b252bf`  
		Last Modified: Sat, 17 Oct 2026 02:07:05 GMT  
		Size: 877.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18` - unknown; unknown

```console
$ docker pull odoo@sha256:de6e3d6c07b40fc7ec1b2b618ced8e6b3c1012b37139998f06c27fc6b83186a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.0 MB (43970527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59f5e985411869b874f63a3f12f2cbc315dbeb4985a7fa0661eed6ec60dc6fb1`

```dockerfile
```

-	Layers:
	-	`sha256:d15a79769b6d09d77cf2995989517e413052623927486990e66be5b01c0adfb1`  
		Last Modified: Sat, 17 Oct 2026 02:07:07 GMT  
		Size: 43.9 MB (43943274 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f59350624f2f233ddc524ec91b129f93500b4a34391e2dd2b7e289038057c696`  
		Last Modified: Sat, 17 Oct 2026 02:07:04 GMT  
		Size: 27.3 KB (27253 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:18.0`

```console
$ docker pull odoo@sha256:1b346c6f9145c79b802b711a554a141acbd0503ed6cd7d31cb3c938889c4cc36
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
$ docker pull odoo@sha256:e4ec0b83c126d1fcc9a2bb124bd589b7db507f815557dc1425f9bac5501df4a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **675.1 MB (675127345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7338c37f01182d44ae28fd470250cfee549e455d329ecfc4d56346e0b00ee3d9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:52 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:52 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:52 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:54 GMT
ADD file:7121eb4a5ba391efb4ba9a38c532d1c5dc2d22d276f04e062f357eea36ee62c4 in / 
# Fri, 02 Oct 2026 08:10:55 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:34:01 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Sat, 17 Oct 2026 00:34:01 GMT
SHELL [/bin/bash -xo pipefail -c]
# Sat, 17 Oct 2026 00:34:01 GMT
ENV LANG=en_US.UTF-8
# Sat, 17 Oct 2026 00:34:01 GMT
ARG TARGETARCH=amd64
# Sat, 17 Oct 2026 00:34:01 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Sat, 17 Oct 2026 00:34:10 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:35:27 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:35:27 GMT
ENV ODOO_VERSION=18.0
# Sat, 17 Oct 2026 00:35:27 GMT
ARG ODOO_RELEASE=20261015
# Sat, 17 Oct 2026 00:35:27 GMT
ARG ODOO_SHA=21f8d7d61d37a8bb1a6a0e151bc976c91d8b8229
# Sat, 17 Oct 2026 00:36:14 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261015 ODOO_SHA=21f8d7d61d37a8bb1a6a0e151bc976c91d8b8229
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Sat, 17 Oct 2026 00:36:14 GMT
COPY ./entrypoint.sh / # buildkit
# Sat, 17 Oct 2026 00:36:14 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Sat, 17 Oct 2026 00:36:15 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261015 ODOO_SHA=21f8d7d61d37a8bb1a6a0e151bc976c91d8b8229
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Sat, 17 Oct 2026 00:36:15 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Sat, 17 Oct 2026 00:36:15 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Sat, 17 Oct 2026 00:36:15 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Sat, 17 Oct 2026 00:36:15 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Sat, 17 Oct 2026 00:36:15 GMT
USER odoo
# Sat, 17 Oct 2026 00:36:15 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 17 Oct 2026 00:36:15 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:f2b4ef06ff01a67d4bed7657a4ae379a7d07934b7c3e743454a22a0d5275fb2b`  
		Last Modified: Fri, 02 Oct 2026 08:36:14 GMT  
		Size: 29.8 MB (29765758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecca9be2172c0e872257ec95adaf772aa6a61be3e24d821ffdbf7f3249034a28`  
		Last Modified: Sat, 17 Oct 2026 00:37:46 GMT  
		Size: 238.7 MB (238715850 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:403758c5377969a6a75339b3c5c9bd317bdefb88e666a2a9d293170f17ecfca4`  
		Last Modified: Sat, 17 Oct 2026 00:37:33 GMT  
		Size: 14.2 MB (14226255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:539c32a599baf25d888d99b734ed535caf4a67573134c0d47c005cdd437608ce`  
		Last Modified: Sat, 17 Oct 2026 00:37:32 GMT  
		Size: 872.8 KB (872791 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:caaa24a1fad4d9610d94f909f906b3b5b1b9e03413670360c5570e4e76524a88`  
		Last Modified: Sat, 17 Oct 2026 00:37:51 GMT  
		Size: 391.5 MB (391543890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2055ec2e520e13543a351effd90297b9dc4f544dfbda3b606d4ea02dab632f1f`  
		Last Modified: Sat, 17 Oct 2026 00:37:34 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e19447fdc5e4c43813345899ecf8a25e4028ac4408f6966eefb261bffa0509df`  
		Last Modified: Sat, 17 Oct 2026 00:37:35 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87af8a59c9a69b442a8c72e3341692c34d42f0eac3a058ba5ab70ed0218e8ddb`  
		Last Modified: Sat, 17 Oct 2026 00:37:35 GMT  
		Size: 599.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:496e240ae2f370c329a624e841c8bc61fd7f91908c40f4e74d8111b01c15c3b7`  
		Last Modified: Sat, 17 Oct 2026 00:37:37 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18.0` - unknown; unknown

```console
$ docker pull odoo@sha256:a67fde227e53e06c96a802a11e318641d12cab21d11b3cdfd29a188239658496
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.0 MB (43962107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5d54fddfc31fadd8fe980dbe027f988b0a7ebd19cf74057926aa5f8d3aa6768`

```dockerfile
```

-	Layers:
	-	`sha256:b453a387e16c081ba87fcd328e3c624589b68f48f999a5649b47b156d4cfa008`  
		Last Modified: Sat, 17 Oct 2026 00:37:36 GMT  
		Size: 43.9 MB (43934910 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8fccab2db2b6cfc370f25f5b520d850cb7345bda750a490edcea1081b7b33f92`  
		Last Modified: Sat, 17 Oct 2026 00:37:32 GMT  
		Size: 27.2 KB (27197 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:18.0` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:56921e346e430147e27ac4dec727ab4244af1ea3f928f99c214ac0001818414a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **671.6 MB (671596611 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a26257a9442cc186525b809926db24eb113e94fbcaa06eb7e685fcd09cd043ab`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:23 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:23 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:23 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:25 GMT
ADD file:41d2e63ceb0b90641106340bc81ee11125254db51ee5a9d49e666bcf0388814f in / 
# Fri, 02 Oct 2026 08:10:26 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:33:48 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Sat, 17 Oct 2026 00:33:48 GMT
SHELL [/bin/bash -xo pipefail -c]
# Sat, 17 Oct 2026 00:33:48 GMT
ENV LANG=en_US.UTF-8
# Sat, 17 Oct 2026 00:33:48 GMT
ARG TARGETARCH=arm64
# Sat, 17 Oct 2026 00:33:48 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Sat, 17 Oct 2026 00:33:59 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:35:02 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:35:02 GMT
ENV ODOO_VERSION=18.0
# Sat, 17 Oct 2026 00:35:02 GMT
ARG ODOO_RELEASE=20261015
# Sat, 17 Oct 2026 00:35:02 GMT
ARG ODOO_SHA=21f8d7d61d37a8bb1a6a0e151bc976c91d8b8229
# Sat, 17 Oct 2026 00:36:00 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261015 ODOO_SHA=21f8d7d61d37a8bb1a6a0e151bc976c91d8b8229
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Sat, 17 Oct 2026 00:36:00 GMT
COPY ./entrypoint.sh / # buildkit
# Sat, 17 Oct 2026 00:36:00 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Sat, 17 Oct 2026 00:36:00 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261015 ODOO_SHA=21f8d7d61d37a8bb1a6a0e151bc976c91d8b8229
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Sat, 17 Oct 2026 00:36:00 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Sat, 17 Oct 2026 00:36:00 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Sat, 17 Oct 2026 00:36:00 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Sat, 17 Oct 2026 00:36:00 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Sat, 17 Oct 2026 00:36:00 GMT
USER odoo
# Sat, 17 Oct 2026 00:36:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 17 Oct 2026 00:36:00 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:d5aec63251bb323f816a0f4b8a554bd84e478466a9ed1068daef07368328e9a3`  
		Last Modified: Fri, 02 Oct 2026 08:36:21 GMT  
		Size: 28.9 MB (28939761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3978004bf1e99ae53708676a37100616fd449f23e09c2df417f89e0b392d885e`  
		Last Modified: Sat, 17 Oct 2026 00:37:35 GMT  
		Size: 236.2 MB (236186254 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fbafcc5b21c3738bb1477e99be20d6c0cb4f2cbb617fbf27d78766b4d35f718`  
		Last Modified: Sat, 17 Oct 2026 00:37:27 GMT  
		Size: 14.2 MB (14197300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50d0ace9db46b8ee902ad3a27ab8e88e26597fee74a51023adf93b578523674f`  
		Last Modified: Sat, 17 Oct 2026 00:37:26 GMT  
		Size: 872.6 KB (872584 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ea3d6e85d7ecb9327fa09baa5e0fd2472e7ebe6ec975515b84f1b01f9519987`  
		Last Modified: Sat, 17 Oct 2026 00:37:37 GMT  
		Size: 391.4 MB (391397914 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88516f380727ebbe221b7a26b9b8ea9d037fa6695a1db94281ba1dcb4d273bd5`  
		Last Modified: Sat, 17 Oct 2026 00:37:27 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d87058fbaf3b50b18b5886cd1a99088ebb9804f6cb50560e4b3b5a749c839ae`  
		Last Modified: Sat, 17 Oct 2026 00:37:28 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f09f58a630ea52fedccdbb53fe321294d81f99505ae442466ab09c71e0113c3b`  
		Last Modified: Sat, 17 Oct 2026 00:37:29 GMT  
		Size: 597.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd7535b85673c4627edc60f4653e472aba0a15674cefaf1d0065465e157b0565`  
		Last Modified: Sat, 17 Oct 2026 00:37:30 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18.0` - unknown; unknown

```console
$ docker pull odoo@sha256:58aac768588762ffa73230e1e4d8795d6fbee6a90b387b59b8bb702136f70571
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.0 MB (43969531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9508e42567ba59915b9bb556c60f94b3b1e7f12966cef564061cb1e7c399c89f`

```dockerfile
```

-	Layers:
	-	`sha256:0257746fe3e4537ab8f3dc9977c20da25746dd2e01829721a09b189950f8917e`  
		Last Modified: Sat, 17 Oct 2026 00:37:28 GMT  
		Size: 43.9 MB (43942182 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8dbdc2b3577d676b3ce3b8482a5fa6f9d33a08c06ed247bce0754b05a3ae20b4`  
		Last Modified: Sat, 17 Oct 2026 00:37:26 GMT  
		Size: 27.3 KB (27349 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:18.0` - linux; ppc64le

```console
$ docker pull odoo@sha256:237b8e16bda7348945c5a630237913d5640ab1217b15d4f6e51f025a3cfe662f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **691.6 MB (691613964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6798c9b4912182e788edf016da0f2104afe6d6b1a71b1d3bd0e0068f93d1d098`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Fri, 02 Oct 2026 08:03:52 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:03:52 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:03:53 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:03:57 GMT
ADD file:453509713ec04b626052519f384e2b9d016f8f4971a3e6dd75d87e74e89202c9 in / 
# Fri, 02 Oct 2026 08:03:57 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 01:44:47 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Sat, 17 Oct 2026 01:44:47 GMT
SHELL [/bin/bash -xo pipefail -c]
# Sat, 17 Oct 2026 01:44:47 GMT
ENV LANG=en_US.UTF-8
# Sat, 17 Oct 2026 01:44:47 GMT
ARG TARGETARCH=ppc64le
# Sat, 17 Oct 2026 01:44:47 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Sat, 17 Oct 2026 01:45:03 GMT
# ARGS: TARGETARCH=ppc64le
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 01:50:56 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 01:50:56 GMT
ENV ODOO_VERSION=18.0
# Sat, 17 Oct 2026 01:50:56 GMT
ARG ODOO_RELEASE=20261015
# Sat, 17 Oct 2026 01:50:56 GMT
ARG ODOO_SHA=21f8d7d61d37a8bb1a6a0e151bc976c91d8b8229
# Sat, 17 Oct 2026 02:03:09 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261015 ODOO_SHA=21f8d7d61d37a8bb1a6a0e151bc976c91d8b8229
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Sat, 17 Oct 2026 02:03:10 GMT
COPY ./entrypoint.sh / # buildkit
# Sat, 17 Oct 2026 02:03:10 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Sat, 17 Oct 2026 02:03:11 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261015 ODOO_SHA=21f8d7d61d37a8bb1a6a0e151bc976c91d8b8229
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Sat, 17 Oct 2026 02:03:11 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Sat, 17 Oct 2026 02:03:11 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Sat, 17 Oct 2026 02:03:11 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Sat, 17 Oct 2026 02:03:11 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Sat, 17 Oct 2026 02:03:11 GMT
USER odoo
# Sat, 17 Oct 2026 02:03:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 17 Oct 2026 02:03:11 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:d56805ebb73a9b4ab3eaf5e6375e8f25df35aba5e48ca970deb58001dac1f2ca`  
		Last Modified: Fri, 02 Oct 2026 08:36:36 GMT  
		Size: 34.4 MB (34377990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa22d41037f1b29e6bd07017dbe5885335dc1e8bc0a282df902f946042e5f073`  
		Last Modified: Sat, 17 Oct 2026 02:00:27 GMT  
		Size: 249.4 MB (249398075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e27e91439e065b4cff747d37ee9c7bc16b9bd06c82b3861e1e35e27226917ec8`  
		Last Modified: Sat, 17 Oct 2026 02:00:17 GMT  
		Size: 14.7 MB (14743400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11a1f5a296d42f380acd7c79d73a35a3430aa7c9ce866fac9daddbcce0b60bb3`  
		Last Modified: Sat, 17 Oct 2026 02:00:16 GMT  
		Size: 874.4 KB (874428 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:361a4516286165339e3c72f3d84cc272e0448eaa401062718cbe9328352ec1f2`  
		Last Modified: Sat, 17 Oct 2026 02:07:13 GMT  
		Size: 392.2 MB (392217273 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08be183e50ed16fcf05c1bea9d3ce3c0de7a2f7ffc8334426fab5bb837918def`  
		Last Modified: Sat, 17 Oct 2026 02:07:04 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fdea3b0ff2ef1319ed3d0999f6db699756656c291ae632489ab85a097ea4f9b`  
		Last Modified: Sat, 17 Oct 2026 02:07:04 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d612cfdfa6c1cc2daf72aa11858d83bbed9fca1d36085b4ccd329d4e0d5fda40`  
		Last Modified: Sat, 17 Oct 2026 02:07:04 GMT  
		Size: 598.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f553bb970a74b313a503cbedfe44d59f782a4d4a763488eea0815972d5b252bf`  
		Last Modified: Sat, 17 Oct 2026 02:07:05 GMT  
		Size: 877.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18.0` - unknown; unknown

```console
$ docker pull odoo@sha256:de6e3d6c07b40fc7ec1b2b618ced8e6b3c1012b37139998f06c27fc6b83186a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.0 MB (43970527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59f5e985411869b874f63a3f12f2cbc315dbeb4985a7fa0661eed6ec60dc6fb1`

```dockerfile
```

-	Layers:
	-	`sha256:d15a79769b6d09d77cf2995989517e413052623927486990e66be5b01c0adfb1`  
		Last Modified: Sat, 17 Oct 2026 02:07:07 GMT  
		Size: 43.9 MB (43943274 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f59350624f2f233ddc524ec91b129f93500b4a34391e2dd2b7e289038057c696`  
		Last Modified: Sat, 17 Oct 2026 02:07:04 GMT  
		Size: 27.3 KB (27253 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:18.0-20261015`

```console
$ docker pull odoo@sha256:1b346c6f9145c79b802b711a554a141acbd0503ed6cd7d31cb3c938889c4cc36
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `odoo:18.0-20261015` - linux; amd64

```console
$ docker pull odoo@sha256:e4ec0b83c126d1fcc9a2bb124bd589b7db507f815557dc1425f9bac5501df4a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **675.1 MB (675127345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7338c37f01182d44ae28fd470250cfee549e455d329ecfc4d56346e0b00ee3d9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:52 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:52 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:52 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:54 GMT
ADD file:7121eb4a5ba391efb4ba9a38c532d1c5dc2d22d276f04e062f357eea36ee62c4 in / 
# Fri, 02 Oct 2026 08:10:55 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:34:01 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Sat, 17 Oct 2026 00:34:01 GMT
SHELL [/bin/bash -xo pipefail -c]
# Sat, 17 Oct 2026 00:34:01 GMT
ENV LANG=en_US.UTF-8
# Sat, 17 Oct 2026 00:34:01 GMT
ARG TARGETARCH=amd64
# Sat, 17 Oct 2026 00:34:01 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Sat, 17 Oct 2026 00:34:10 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:35:27 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:35:27 GMT
ENV ODOO_VERSION=18.0
# Sat, 17 Oct 2026 00:35:27 GMT
ARG ODOO_RELEASE=20261015
# Sat, 17 Oct 2026 00:35:27 GMT
ARG ODOO_SHA=21f8d7d61d37a8bb1a6a0e151bc976c91d8b8229
# Sat, 17 Oct 2026 00:36:14 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261015 ODOO_SHA=21f8d7d61d37a8bb1a6a0e151bc976c91d8b8229
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Sat, 17 Oct 2026 00:36:14 GMT
COPY ./entrypoint.sh / # buildkit
# Sat, 17 Oct 2026 00:36:14 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Sat, 17 Oct 2026 00:36:15 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261015 ODOO_SHA=21f8d7d61d37a8bb1a6a0e151bc976c91d8b8229
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Sat, 17 Oct 2026 00:36:15 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Sat, 17 Oct 2026 00:36:15 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Sat, 17 Oct 2026 00:36:15 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Sat, 17 Oct 2026 00:36:15 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Sat, 17 Oct 2026 00:36:15 GMT
USER odoo
# Sat, 17 Oct 2026 00:36:15 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 17 Oct 2026 00:36:15 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:f2b4ef06ff01a67d4bed7657a4ae379a7d07934b7c3e743454a22a0d5275fb2b`  
		Last Modified: Fri, 02 Oct 2026 08:36:14 GMT  
		Size: 29.8 MB (29765758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecca9be2172c0e872257ec95adaf772aa6a61be3e24d821ffdbf7f3249034a28`  
		Last Modified: Sat, 17 Oct 2026 00:37:46 GMT  
		Size: 238.7 MB (238715850 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:403758c5377969a6a75339b3c5c9bd317bdefb88e666a2a9d293170f17ecfca4`  
		Last Modified: Sat, 17 Oct 2026 00:37:33 GMT  
		Size: 14.2 MB (14226255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:539c32a599baf25d888d99b734ed535caf4a67573134c0d47c005cdd437608ce`  
		Last Modified: Sat, 17 Oct 2026 00:37:32 GMT  
		Size: 872.8 KB (872791 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:caaa24a1fad4d9610d94f909f906b3b5b1b9e03413670360c5570e4e76524a88`  
		Last Modified: Sat, 17 Oct 2026 00:37:51 GMT  
		Size: 391.5 MB (391543890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2055ec2e520e13543a351effd90297b9dc4f544dfbda3b606d4ea02dab632f1f`  
		Last Modified: Sat, 17 Oct 2026 00:37:34 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e19447fdc5e4c43813345899ecf8a25e4028ac4408f6966eefb261bffa0509df`  
		Last Modified: Sat, 17 Oct 2026 00:37:35 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87af8a59c9a69b442a8c72e3341692c34d42f0eac3a058ba5ab70ed0218e8ddb`  
		Last Modified: Sat, 17 Oct 2026 00:37:35 GMT  
		Size: 599.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:496e240ae2f370c329a624e841c8bc61fd7f91908c40f4e74d8111b01c15c3b7`  
		Last Modified: Sat, 17 Oct 2026 00:37:37 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18.0-20261015` - unknown; unknown

```console
$ docker pull odoo@sha256:a67fde227e53e06c96a802a11e318641d12cab21d11b3cdfd29a188239658496
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.0 MB (43962107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5d54fddfc31fadd8fe980dbe027f988b0a7ebd19cf74057926aa5f8d3aa6768`

```dockerfile
```

-	Layers:
	-	`sha256:b453a387e16c081ba87fcd328e3c624589b68f48f999a5649b47b156d4cfa008`  
		Last Modified: Sat, 17 Oct 2026 00:37:36 GMT  
		Size: 43.9 MB (43934910 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8fccab2db2b6cfc370f25f5b520d850cb7345bda750a490edcea1081b7b33f92`  
		Last Modified: Sat, 17 Oct 2026 00:37:32 GMT  
		Size: 27.2 KB (27197 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:18.0-20261015` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:56921e346e430147e27ac4dec727ab4244af1ea3f928f99c214ac0001818414a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **671.6 MB (671596611 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a26257a9442cc186525b809926db24eb113e94fbcaa06eb7e685fcd09cd043ab`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:23 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:23 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:23 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:25 GMT
ADD file:41d2e63ceb0b90641106340bc81ee11125254db51ee5a9d49e666bcf0388814f in / 
# Fri, 02 Oct 2026 08:10:26 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:33:48 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Sat, 17 Oct 2026 00:33:48 GMT
SHELL [/bin/bash -xo pipefail -c]
# Sat, 17 Oct 2026 00:33:48 GMT
ENV LANG=en_US.UTF-8
# Sat, 17 Oct 2026 00:33:48 GMT
ARG TARGETARCH=arm64
# Sat, 17 Oct 2026 00:33:48 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Sat, 17 Oct 2026 00:33:59 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:35:02 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:35:02 GMT
ENV ODOO_VERSION=18.0
# Sat, 17 Oct 2026 00:35:02 GMT
ARG ODOO_RELEASE=20261015
# Sat, 17 Oct 2026 00:35:02 GMT
ARG ODOO_SHA=21f8d7d61d37a8bb1a6a0e151bc976c91d8b8229
# Sat, 17 Oct 2026 00:36:00 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261015 ODOO_SHA=21f8d7d61d37a8bb1a6a0e151bc976c91d8b8229
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Sat, 17 Oct 2026 00:36:00 GMT
COPY ./entrypoint.sh / # buildkit
# Sat, 17 Oct 2026 00:36:00 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Sat, 17 Oct 2026 00:36:00 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261015 ODOO_SHA=21f8d7d61d37a8bb1a6a0e151bc976c91d8b8229
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Sat, 17 Oct 2026 00:36:00 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Sat, 17 Oct 2026 00:36:00 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Sat, 17 Oct 2026 00:36:00 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Sat, 17 Oct 2026 00:36:00 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Sat, 17 Oct 2026 00:36:00 GMT
USER odoo
# Sat, 17 Oct 2026 00:36:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 17 Oct 2026 00:36:00 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:d5aec63251bb323f816a0f4b8a554bd84e478466a9ed1068daef07368328e9a3`  
		Last Modified: Fri, 02 Oct 2026 08:36:21 GMT  
		Size: 28.9 MB (28939761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3978004bf1e99ae53708676a37100616fd449f23e09c2df417f89e0b392d885e`  
		Last Modified: Sat, 17 Oct 2026 00:37:35 GMT  
		Size: 236.2 MB (236186254 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fbafcc5b21c3738bb1477e99be20d6c0cb4f2cbb617fbf27d78766b4d35f718`  
		Last Modified: Sat, 17 Oct 2026 00:37:27 GMT  
		Size: 14.2 MB (14197300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50d0ace9db46b8ee902ad3a27ab8e88e26597fee74a51023adf93b578523674f`  
		Last Modified: Sat, 17 Oct 2026 00:37:26 GMT  
		Size: 872.6 KB (872584 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ea3d6e85d7ecb9327fa09baa5e0fd2472e7ebe6ec975515b84f1b01f9519987`  
		Last Modified: Sat, 17 Oct 2026 00:37:37 GMT  
		Size: 391.4 MB (391397914 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88516f380727ebbe221b7a26b9b8ea9d037fa6695a1db94281ba1dcb4d273bd5`  
		Last Modified: Sat, 17 Oct 2026 00:37:27 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d87058fbaf3b50b18b5886cd1a99088ebb9804f6cb50560e4b3b5a749c839ae`  
		Last Modified: Sat, 17 Oct 2026 00:37:28 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f09f58a630ea52fedccdbb53fe321294d81f99505ae442466ab09c71e0113c3b`  
		Last Modified: Sat, 17 Oct 2026 00:37:29 GMT  
		Size: 597.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd7535b85673c4627edc60f4653e472aba0a15674cefaf1d0065465e157b0565`  
		Last Modified: Sat, 17 Oct 2026 00:37:30 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18.0-20261015` - unknown; unknown

```console
$ docker pull odoo@sha256:58aac768588762ffa73230e1e4d8795d6fbee6a90b387b59b8bb702136f70571
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.0 MB (43969531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9508e42567ba59915b9bb556c60f94b3b1e7f12966cef564061cb1e7c399c89f`

```dockerfile
```

-	Layers:
	-	`sha256:0257746fe3e4537ab8f3dc9977c20da25746dd2e01829721a09b189950f8917e`  
		Last Modified: Sat, 17 Oct 2026 00:37:28 GMT  
		Size: 43.9 MB (43942182 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8dbdc2b3577d676b3ce3b8482a5fa6f9d33a08c06ed247bce0754b05a3ae20b4`  
		Last Modified: Sat, 17 Oct 2026 00:37:26 GMT  
		Size: 27.3 KB (27349 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:18.0-20261015` - linux; ppc64le

```console
$ docker pull odoo@sha256:237b8e16bda7348945c5a630237913d5640ab1217b15d4f6e51f025a3cfe662f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **691.6 MB (691613964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6798c9b4912182e788edf016da0f2104afe6d6b1a71b1d3bd0e0068f93d1d098`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Fri, 02 Oct 2026 08:03:52 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:03:52 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:03:53 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:03:57 GMT
ADD file:453509713ec04b626052519f384e2b9d016f8f4971a3e6dd75d87e74e89202c9 in / 
# Fri, 02 Oct 2026 08:03:57 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 01:44:47 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Sat, 17 Oct 2026 01:44:47 GMT
SHELL [/bin/bash -xo pipefail -c]
# Sat, 17 Oct 2026 01:44:47 GMT
ENV LANG=en_US.UTF-8
# Sat, 17 Oct 2026 01:44:47 GMT
ARG TARGETARCH=ppc64le
# Sat, 17 Oct 2026 01:44:47 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Sat, 17 Oct 2026 01:45:03 GMT
# ARGS: TARGETARCH=ppc64le
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 01:50:56 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 01:50:56 GMT
ENV ODOO_VERSION=18.0
# Sat, 17 Oct 2026 01:50:56 GMT
ARG ODOO_RELEASE=20261015
# Sat, 17 Oct 2026 01:50:56 GMT
ARG ODOO_SHA=21f8d7d61d37a8bb1a6a0e151bc976c91d8b8229
# Sat, 17 Oct 2026 02:03:09 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261015 ODOO_SHA=21f8d7d61d37a8bb1a6a0e151bc976c91d8b8229
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Sat, 17 Oct 2026 02:03:10 GMT
COPY ./entrypoint.sh / # buildkit
# Sat, 17 Oct 2026 02:03:10 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Sat, 17 Oct 2026 02:03:11 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261015 ODOO_SHA=21f8d7d61d37a8bb1a6a0e151bc976c91d8b8229
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Sat, 17 Oct 2026 02:03:11 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Sat, 17 Oct 2026 02:03:11 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Sat, 17 Oct 2026 02:03:11 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Sat, 17 Oct 2026 02:03:11 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Sat, 17 Oct 2026 02:03:11 GMT
USER odoo
# Sat, 17 Oct 2026 02:03:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 17 Oct 2026 02:03:11 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:d56805ebb73a9b4ab3eaf5e6375e8f25df35aba5e48ca970deb58001dac1f2ca`  
		Last Modified: Fri, 02 Oct 2026 08:36:36 GMT  
		Size: 34.4 MB (34377990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa22d41037f1b29e6bd07017dbe5885335dc1e8bc0a282df902f946042e5f073`  
		Last Modified: Sat, 17 Oct 2026 02:00:27 GMT  
		Size: 249.4 MB (249398075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e27e91439e065b4cff747d37ee9c7bc16b9bd06c82b3861e1e35e27226917ec8`  
		Last Modified: Sat, 17 Oct 2026 02:00:17 GMT  
		Size: 14.7 MB (14743400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11a1f5a296d42f380acd7c79d73a35a3430aa7c9ce866fac9daddbcce0b60bb3`  
		Last Modified: Sat, 17 Oct 2026 02:00:16 GMT  
		Size: 874.4 KB (874428 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:361a4516286165339e3c72f3d84cc272e0448eaa401062718cbe9328352ec1f2`  
		Last Modified: Sat, 17 Oct 2026 02:07:13 GMT  
		Size: 392.2 MB (392217273 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08be183e50ed16fcf05c1bea9d3ce3c0de7a2f7ffc8334426fab5bb837918def`  
		Last Modified: Sat, 17 Oct 2026 02:07:04 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fdea3b0ff2ef1319ed3d0999f6db699756656c291ae632489ab85a097ea4f9b`  
		Last Modified: Sat, 17 Oct 2026 02:07:04 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d612cfdfa6c1cc2daf72aa11858d83bbed9fca1d36085b4ccd329d4e0d5fda40`  
		Last Modified: Sat, 17 Oct 2026 02:07:04 GMT  
		Size: 598.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f553bb970a74b313a503cbedfe44d59f782a4d4a763488eea0815972d5b252bf`  
		Last Modified: Sat, 17 Oct 2026 02:07:05 GMT  
		Size: 877.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18.0-20261015` - unknown; unknown

```console
$ docker pull odoo@sha256:de6e3d6c07b40fc7ec1b2b618ced8e6b3c1012b37139998f06c27fc6b83186a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.0 MB (43970527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59f5e985411869b874f63a3f12f2cbc315dbeb4985a7fa0661eed6ec60dc6fb1`

```dockerfile
```

-	Layers:
	-	`sha256:d15a79769b6d09d77cf2995989517e413052623927486990e66be5b01c0adfb1`  
		Last Modified: Sat, 17 Oct 2026 02:07:07 GMT  
		Size: 43.9 MB (43943274 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f59350624f2f233ddc524ec91b129f93500b4a34391e2dd2b7e289038057c696`  
		Last Modified: Sat, 17 Oct 2026 02:07:04 GMT  
		Size: 27.3 KB (27253 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:19`

```console
$ docker pull odoo@sha256:076562619a5de059388d9f9d90545cb575799c04869610a5b20839893819b41b
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
$ docker pull odoo@sha256:8062dba8327903d0c96daebff88027d41784a060ed3c9ff2dde09f372a45fdd0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **698.8 MB (698824191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3ebc0b5cec92d92afb8501e7eec310b1e5aa1e2317ec8c82b2bffcab2dfb735`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:52 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:52 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:52 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:54 GMT
ADD file:7121eb4a5ba391efb4ba9a38c532d1c5dc2d22d276f04e062f357eea36ee62c4 in / 
# Fri, 02 Oct 2026 08:10:55 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:33:50 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Sat, 17 Oct 2026 00:33:50 GMT
SHELL [/bin/bash -xo pipefail -c]
# Sat, 17 Oct 2026 00:33:50 GMT
ENV LANG=en_US.UTF-8
# Sat, 17 Oct 2026 00:33:50 GMT
ARG TARGETARCH=amd64
# Sat, 17 Oct 2026 00:33:50 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Sat, 17 Oct 2026 00:33:58 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:35:16 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:35:16 GMT
ENV ODOO_VERSION=19.0
# Sat, 17 Oct 2026 00:35:16 GMT
ARG ODOO_RELEASE=20261015
# Sat, 17 Oct 2026 00:35:16 GMT
ARG ODOO_SHA=3a2e406fa0399944a7c339baa5f53ca2e783e71b
# Sat, 17 Oct 2026 00:36:20 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261015 ODOO_SHA=3a2e406fa0399944a7c339baa5f53ca2e783e71b
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Sat, 17 Oct 2026 00:36:20 GMT
COPY ./entrypoint.sh / # buildkit
# Sat, 17 Oct 2026 00:36:21 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Sat, 17 Oct 2026 00:36:21 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261015 ODOO_SHA=3a2e406fa0399944a7c339baa5f53ca2e783e71b
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Sat, 17 Oct 2026 00:36:21 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Sat, 17 Oct 2026 00:36:21 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Sat, 17 Oct 2026 00:36:21 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Sat, 17 Oct 2026 00:36:21 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Sat, 17 Oct 2026 00:36:21 GMT
USER odoo
# Sat, 17 Oct 2026 00:36:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 17 Oct 2026 00:36:21 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:f2b4ef06ff01a67d4bed7657a4ae379a7d07934b7c3e743454a22a0d5275fb2b`  
		Last Modified: Fri, 02 Oct 2026 08:36:14 GMT  
		Size: 29.8 MB (29765758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1529e51f6518289513b9f06c387ecec7cb76b65116b364a6106aef238d7ce02b`  
		Last Modified: Sat, 17 Oct 2026 00:38:12 GMT  
		Size: 238.7 MB (238715936 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccf445cdf73be2281c1580e54f0d8fcab03f9d6d4aa4e2806571e6d12f9058c1`  
		Last Modified: Sat, 17 Oct 2026 00:38:03 GMT  
		Size: 14.2 MB (14226237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bf89fb6517e68645142236e4e31f8b1b1f6c29fd5db545f27dd4f25064b669b`  
		Last Modified: Sat, 17 Oct 2026 00:38:02 GMT  
		Size: 872.7 KB (872746 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f313fbc22ed138712e3684f633c0fb7d226bd1b3f6fa540d349949661b5b8f3`  
		Last Modified: Sat, 17 Oct 2026 00:38:15 GMT  
		Size: 415.2 MB (415240761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d04306fb24d3d374e36e8b21d32c0a995ae86deb7e86680af2b5f48ed3a90ee`  
		Last Modified: Sat, 17 Oct 2026 00:38:04 GMT  
		Size: 719.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77be135cb5229e3bcf891719698acf3b48331ac173bca43bfc4131dfbc0be1b3`  
		Last Modified: Sat, 17 Oct 2026 00:38:05 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92dc113627cc018511ce384c0ea257799958cff1d86acc7141868cc51b490cdc`  
		Last Modified: Sat, 17 Oct 2026 00:38:05 GMT  
		Size: 599.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d60683d24b8be37d282cead2cf798a2d02b81f3d453bbf72b1544b2dda151eb`  
		Last Modified: Sat, 17 Oct 2026 00:38:07 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19` - unknown; unknown

```console
$ docker pull odoo@sha256:f5dbb3b79d4d686f183d4f67fefef76c76776d98eaf8565719063288ff67be88
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.5 MB (52519071 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34a537fc529eda5aeeb00e2c6288f6443110fd63db390a0fea5c5da98ed4a193`

```dockerfile
```

-	Layers:
	-	`sha256:c9759b73e10528e1f3af712b5c8a58c0a3d41703a3cc6e7b38585c6edcdd1aeb`  
		Last Modified: Sat, 17 Oct 2026 00:38:06 GMT  
		Size: 52.5 MB (52491874 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a83e82c4c58ef47af62b35686b4f2710acb52b1762056d96bc2d1c28f73c583d`  
		Last Modified: Sat, 17 Oct 2026 00:38:02 GMT  
		Size: 27.2 KB (27197 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:19` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:29ba59f87b509f4311e5f786d8f98403f7a0b296c5e69de4a02d075f290bcb1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **695.3 MB (695302766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e96e0b85789544f6d1769596f4c26b6b3482164a7adb093cf146ee9b7129e564`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:23 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:23 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:23 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:25 GMT
ADD file:41d2e63ceb0b90641106340bc81ee11125254db51ee5a9d49e666bcf0388814f in / 
# Fri, 02 Oct 2026 08:10:26 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:33:43 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Sat, 17 Oct 2026 00:33:43 GMT
SHELL [/bin/bash -xo pipefail -c]
# Sat, 17 Oct 2026 00:33:43 GMT
ENV LANG=en_US.UTF-8
# Sat, 17 Oct 2026 00:33:43 GMT
ARG TARGETARCH=arm64
# Sat, 17 Oct 2026 00:33:43 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Sat, 17 Oct 2026 00:33:53 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:35:05 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:35:05 GMT
ENV ODOO_VERSION=19.0
# Sat, 17 Oct 2026 00:35:05 GMT
ARG ODOO_RELEASE=20261015
# Sat, 17 Oct 2026 00:35:05 GMT
ARG ODOO_SHA=3a2e406fa0399944a7c339baa5f53ca2e783e71b
# Sat, 17 Oct 2026 00:36:15 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261015 ODOO_SHA=3a2e406fa0399944a7c339baa5f53ca2e783e71b
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Sat, 17 Oct 2026 00:36:16 GMT
COPY ./entrypoint.sh / # buildkit
# Sat, 17 Oct 2026 00:36:16 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Sat, 17 Oct 2026 00:36:16 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261015 ODOO_SHA=3a2e406fa0399944a7c339baa5f53ca2e783e71b
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Sat, 17 Oct 2026 00:36:16 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Sat, 17 Oct 2026 00:36:16 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Sat, 17 Oct 2026 00:36:16 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Sat, 17 Oct 2026 00:36:16 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Sat, 17 Oct 2026 00:36:16 GMT
USER odoo
# Sat, 17 Oct 2026 00:36:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 17 Oct 2026 00:36:16 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:d5aec63251bb323f816a0f4b8a554bd84e478466a9ed1068daef07368328e9a3`  
		Last Modified: Fri, 02 Oct 2026 08:36:21 GMT  
		Size: 28.9 MB (28939761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9cbfa0594497838f7f0d535df73a201d8ddfdbb92a52cd52d59ec0806eac83f2`  
		Last Modified: Sat, 17 Oct 2026 00:38:07 GMT  
		Size: 236.2 MB (236186115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f78620b774621b2edb5f45eff30e5ef477214b70a2b21e6fde5a6d4b01536ef2`  
		Last Modified: Sat, 17 Oct 2026 00:37:59 GMT  
		Size: 14.2 MB (14197429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e48f2857f3731841c5b0e86ecbe831c659cc6cf00a8c13678a96cf335ed12c1f`  
		Last Modified: Sat, 17 Oct 2026 00:37:58 GMT  
		Size: 872.7 KB (872663 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4611cae6ed92e1975c1b0c1e618af6e7ae5552cfd077047904762a0436e6fde`  
		Last Modified: Sat, 17 Oct 2026 00:38:10 GMT  
		Size: 415.1 MB (415104052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:607ec7fc413de6004b70311a72261492f6c8574fc8e50f61f13803a6fca15664`  
		Last Modified: Sat, 17 Oct 2026 00:37:59 GMT  
		Size: 719.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cc952ebd022cd6eee0b8775acdb24753d165c087c23ae4c98bff5b9bd05a0f5`  
		Last Modified: Sat, 17 Oct 2026 00:38:00 GMT  
		Size: 555.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36320c76725e729d7943f0b645864ed8a0bf873127de9230969ec5a9538df031`  
		Last Modified: Sat, 17 Oct 2026 00:38:01 GMT  
		Size: 594.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1eb802e5b7e12288230c6e5bb33ff94ee46abf3c5243d02242529f6b53c0f450`  
		Last Modified: Sat, 17 Oct 2026 00:38:02 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19` - unknown; unknown

```console
$ docker pull odoo@sha256:8e6d91ecd3e1ed8faf17b3469896401b27331ac60228128b92c6aadfa8d19a05
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.5 MB (52526494 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63b598982ff74185778ebdb5cac187667e4d714e0712bd53f188c7ec7d826697`

```dockerfile
```

-	Layers:
	-	`sha256:3f6070e90e76e8ea6adb5059d104c9a2b7f4192ae83dea5b9cbfd6a96bf10392`  
		Last Modified: Sat, 17 Oct 2026 00:38:01 GMT  
		Size: 52.5 MB (52499146 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4836022266838e5d8fd65f1f33514db7904ca1c70b27a966fb8be07a3c26a070`  
		Last Modified: Sat, 17 Oct 2026 00:37:58 GMT  
		Size: 27.3 KB (27348 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:19` - linux; ppc64le

```console
$ docker pull odoo@sha256:3ba083d7749608fe95df51cf108b22db1369988aa75bcac9ac314558f453200f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **715.3 MB (715281166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:363bc08a7edb0d2c413991a6ad36c281b23cbaf1a5afc6573992b0337ac6fc1a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Fri, 02 Oct 2026 08:03:52 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:03:52 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:03:53 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:03:57 GMT
ADD file:453509713ec04b626052519f384e2b9d016f8f4971a3e6dd75d87e74e89202c9 in / 
# Fri, 02 Oct 2026 08:03:57 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 01:44:47 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Sat, 17 Oct 2026 01:44:47 GMT
SHELL [/bin/bash -xo pipefail -c]
# Sat, 17 Oct 2026 01:44:47 GMT
ENV LANG=en_US.UTF-8
# Sat, 17 Oct 2026 01:44:47 GMT
ARG TARGETARCH=ppc64le
# Sat, 17 Oct 2026 01:44:47 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Sat, 17 Oct 2026 01:45:03 GMT
# ARGS: TARGETARCH=ppc64le
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 01:50:56 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 01:50:56 GMT
ENV ODOO_VERSION=19.0
# Sat, 17 Oct 2026 01:50:56 GMT
ARG ODOO_RELEASE=20261015
# Sat, 17 Oct 2026 01:50:56 GMT
ARG ODOO_SHA=3a2e406fa0399944a7c339baa5f53ca2e783e71b
# Sat, 17 Oct 2026 01:54:50 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261015 ODOO_SHA=3a2e406fa0399944a7c339baa5f53ca2e783e71b
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Sat, 17 Oct 2026 01:54:55 GMT
COPY ./entrypoint.sh / # buildkit
# Sat, 17 Oct 2026 01:55:01 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Sat, 17 Oct 2026 01:55:06 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261015 ODOO_SHA=3a2e406fa0399944a7c339baa5f53ca2e783e71b
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Sat, 17 Oct 2026 01:55:06 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Sat, 17 Oct 2026 01:55:06 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Sat, 17 Oct 2026 01:55:06 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Sat, 17 Oct 2026 01:55:10 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Sat, 17 Oct 2026 01:55:10 GMT
USER odoo
# Sat, 17 Oct 2026 01:55:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 17 Oct 2026 01:55:10 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:d56805ebb73a9b4ab3eaf5e6375e8f25df35aba5e48ca970deb58001dac1f2ca`  
		Last Modified: Fri, 02 Oct 2026 08:36:36 GMT  
		Size: 34.4 MB (34377990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa22d41037f1b29e6bd07017dbe5885335dc1e8bc0a282df902f946042e5f073`  
		Last Modified: Sat, 17 Oct 2026 02:00:27 GMT  
		Size: 249.4 MB (249398075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e27e91439e065b4cff747d37ee9c7bc16b9bd06c82b3861e1e35e27226917ec8`  
		Last Modified: Sat, 17 Oct 2026 02:00:17 GMT  
		Size: 14.7 MB (14743400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11a1f5a296d42f380acd7c79d73a35a3430aa7c9ce866fac9daddbcce0b60bb3`  
		Last Modified: Sat, 17 Oct 2026 02:00:16 GMT  
		Size: 874.4 KB (874428 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b6caa71cbb5e9840a22f5007084221ce22b9d143e0195a9402b4464e6b4d78b`  
		Last Modified: Sat, 17 Oct 2026 02:00:31 GMT  
		Size: 415.9 MB (415884524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdce32c9eaf81196e46393fd58a8ae1c05b18dd7eb024a82d11f4876b6ee25ef`  
		Last Modified: Sat, 17 Oct 2026 02:00:18 GMT  
		Size: 719.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:959f2cf8fe66cec6dc3b8344be5b3c10040571fb8619fc87421fb40c8416238a`  
		Last Modified: Sat, 17 Oct 2026 02:00:19 GMT  
		Size: 554.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:427534d539c6f9b32453691e1d182fbb5c2e8aca1f31998ef3cc6b0e48d994c3`  
		Last Modified: Sat, 17 Oct 2026 02:00:20 GMT  
		Size: 599.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0de9cb89a96cbd892ba1293834a716cc5e29882abb585ccaced93b43a45d1d1c`  
		Last Modified: Sat, 17 Oct 2026 02:00:22 GMT  
		Size: 877.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19` - unknown; unknown

```console
$ docker pull odoo@sha256:85581fb185d95ebb8b9f5baef6e317005c9f167d50f850913a1ad2d7dcdd36e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.5 MB (52527490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58df9cc8679987309d366e257e51fa34d13719ff09b0b5cc4ac3f1ce7d5613b4`

```dockerfile
```

-	Layers:
	-	`sha256:3fdc054c7e5e4b3a996ed1a1dc908384508da4aae12a092f3e7c0ee2744b5265`  
		Last Modified: Sat, 17 Oct 2026 02:00:19 GMT  
		Size: 52.5 MB (52500238 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:513583bda4409646735ddaddcc136baa749cc1a2e857f8246dccaabedff0ef7d`  
		Last Modified: Sat, 17 Oct 2026 02:00:16 GMT  
		Size: 27.3 KB (27252 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:19.0`

```console
$ docker pull odoo@sha256:076562619a5de059388d9f9d90545cb575799c04869610a5b20839893819b41b
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
$ docker pull odoo@sha256:8062dba8327903d0c96daebff88027d41784a060ed3c9ff2dde09f372a45fdd0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **698.8 MB (698824191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3ebc0b5cec92d92afb8501e7eec310b1e5aa1e2317ec8c82b2bffcab2dfb735`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:52 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:52 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:52 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:54 GMT
ADD file:7121eb4a5ba391efb4ba9a38c532d1c5dc2d22d276f04e062f357eea36ee62c4 in / 
# Fri, 02 Oct 2026 08:10:55 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:33:50 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Sat, 17 Oct 2026 00:33:50 GMT
SHELL [/bin/bash -xo pipefail -c]
# Sat, 17 Oct 2026 00:33:50 GMT
ENV LANG=en_US.UTF-8
# Sat, 17 Oct 2026 00:33:50 GMT
ARG TARGETARCH=amd64
# Sat, 17 Oct 2026 00:33:50 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Sat, 17 Oct 2026 00:33:58 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:35:16 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:35:16 GMT
ENV ODOO_VERSION=19.0
# Sat, 17 Oct 2026 00:35:16 GMT
ARG ODOO_RELEASE=20261015
# Sat, 17 Oct 2026 00:35:16 GMT
ARG ODOO_SHA=3a2e406fa0399944a7c339baa5f53ca2e783e71b
# Sat, 17 Oct 2026 00:36:20 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261015 ODOO_SHA=3a2e406fa0399944a7c339baa5f53ca2e783e71b
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Sat, 17 Oct 2026 00:36:20 GMT
COPY ./entrypoint.sh / # buildkit
# Sat, 17 Oct 2026 00:36:21 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Sat, 17 Oct 2026 00:36:21 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261015 ODOO_SHA=3a2e406fa0399944a7c339baa5f53ca2e783e71b
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Sat, 17 Oct 2026 00:36:21 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Sat, 17 Oct 2026 00:36:21 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Sat, 17 Oct 2026 00:36:21 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Sat, 17 Oct 2026 00:36:21 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Sat, 17 Oct 2026 00:36:21 GMT
USER odoo
# Sat, 17 Oct 2026 00:36:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 17 Oct 2026 00:36:21 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:f2b4ef06ff01a67d4bed7657a4ae379a7d07934b7c3e743454a22a0d5275fb2b`  
		Last Modified: Fri, 02 Oct 2026 08:36:14 GMT  
		Size: 29.8 MB (29765758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1529e51f6518289513b9f06c387ecec7cb76b65116b364a6106aef238d7ce02b`  
		Last Modified: Sat, 17 Oct 2026 00:38:12 GMT  
		Size: 238.7 MB (238715936 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccf445cdf73be2281c1580e54f0d8fcab03f9d6d4aa4e2806571e6d12f9058c1`  
		Last Modified: Sat, 17 Oct 2026 00:38:03 GMT  
		Size: 14.2 MB (14226237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bf89fb6517e68645142236e4e31f8b1b1f6c29fd5db545f27dd4f25064b669b`  
		Last Modified: Sat, 17 Oct 2026 00:38:02 GMT  
		Size: 872.7 KB (872746 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f313fbc22ed138712e3684f633c0fb7d226bd1b3f6fa540d349949661b5b8f3`  
		Last Modified: Sat, 17 Oct 2026 00:38:15 GMT  
		Size: 415.2 MB (415240761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d04306fb24d3d374e36e8b21d32c0a995ae86deb7e86680af2b5f48ed3a90ee`  
		Last Modified: Sat, 17 Oct 2026 00:38:04 GMT  
		Size: 719.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77be135cb5229e3bcf891719698acf3b48331ac173bca43bfc4131dfbc0be1b3`  
		Last Modified: Sat, 17 Oct 2026 00:38:05 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92dc113627cc018511ce384c0ea257799958cff1d86acc7141868cc51b490cdc`  
		Last Modified: Sat, 17 Oct 2026 00:38:05 GMT  
		Size: 599.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d60683d24b8be37d282cead2cf798a2d02b81f3d453bbf72b1544b2dda151eb`  
		Last Modified: Sat, 17 Oct 2026 00:38:07 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19.0` - unknown; unknown

```console
$ docker pull odoo@sha256:f5dbb3b79d4d686f183d4f67fefef76c76776d98eaf8565719063288ff67be88
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.5 MB (52519071 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34a537fc529eda5aeeb00e2c6288f6443110fd63db390a0fea5c5da98ed4a193`

```dockerfile
```

-	Layers:
	-	`sha256:c9759b73e10528e1f3af712b5c8a58c0a3d41703a3cc6e7b38585c6edcdd1aeb`  
		Last Modified: Sat, 17 Oct 2026 00:38:06 GMT  
		Size: 52.5 MB (52491874 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a83e82c4c58ef47af62b35686b4f2710acb52b1762056d96bc2d1c28f73c583d`  
		Last Modified: Sat, 17 Oct 2026 00:38:02 GMT  
		Size: 27.2 KB (27197 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:19.0` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:29ba59f87b509f4311e5f786d8f98403f7a0b296c5e69de4a02d075f290bcb1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **695.3 MB (695302766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e96e0b85789544f6d1769596f4c26b6b3482164a7adb093cf146ee9b7129e564`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:23 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:23 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:23 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:25 GMT
ADD file:41d2e63ceb0b90641106340bc81ee11125254db51ee5a9d49e666bcf0388814f in / 
# Fri, 02 Oct 2026 08:10:26 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:33:43 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Sat, 17 Oct 2026 00:33:43 GMT
SHELL [/bin/bash -xo pipefail -c]
# Sat, 17 Oct 2026 00:33:43 GMT
ENV LANG=en_US.UTF-8
# Sat, 17 Oct 2026 00:33:43 GMT
ARG TARGETARCH=arm64
# Sat, 17 Oct 2026 00:33:43 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Sat, 17 Oct 2026 00:33:53 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:35:05 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:35:05 GMT
ENV ODOO_VERSION=19.0
# Sat, 17 Oct 2026 00:35:05 GMT
ARG ODOO_RELEASE=20261015
# Sat, 17 Oct 2026 00:35:05 GMT
ARG ODOO_SHA=3a2e406fa0399944a7c339baa5f53ca2e783e71b
# Sat, 17 Oct 2026 00:36:15 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261015 ODOO_SHA=3a2e406fa0399944a7c339baa5f53ca2e783e71b
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Sat, 17 Oct 2026 00:36:16 GMT
COPY ./entrypoint.sh / # buildkit
# Sat, 17 Oct 2026 00:36:16 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Sat, 17 Oct 2026 00:36:16 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261015 ODOO_SHA=3a2e406fa0399944a7c339baa5f53ca2e783e71b
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Sat, 17 Oct 2026 00:36:16 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Sat, 17 Oct 2026 00:36:16 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Sat, 17 Oct 2026 00:36:16 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Sat, 17 Oct 2026 00:36:16 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Sat, 17 Oct 2026 00:36:16 GMT
USER odoo
# Sat, 17 Oct 2026 00:36:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 17 Oct 2026 00:36:16 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:d5aec63251bb323f816a0f4b8a554bd84e478466a9ed1068daef07368328e9a3`  
		Last Modified: Fri, 02 Oct 2026 08:36:21 GMT  
		Size: 28.9 MB (28939761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9cbfa0594497838f7f0d535df73a201d8ddfdbb92a52cd52d59ec0806eac83f2`  
		Last Modified: Sat, 17 Oct 2026 00:38:07 GMT  
		Size: 236.2 MB (236186115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f78620b774621b2edb5f45eff30e5ef477214b70a2b21e6fde5a6d4b01536ef2`  
		Last Modified: Sat, 17 Oct 2026 00:37:59 GMT  
		Size: 14.2 MB (14197429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e48f2857f3731841c5b0e86ecbe831c659cc6cf00a8c13678a96cf335ed12c1f`  
		Last Modified: Sat, 17 Oct 2026 00:37:58 GMT  
		Size: 872.7 KB (872663 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4611cae6ed92e1975c1b0c1e618af6e7ae5552cfd077047904762a0436e6fde`  
		Last Modified: Sat, 17 Oct 2026 00:38:10 GMT  
		Size: 415.1 MB (415104052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:607ec7fc413de6004b70311a72261492f6c8574fc8e50f61f13803a6fca15664`  
		Last Modified: Sat, 17 Oct 2026 00:37:59 GMT  
		Size: 719.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cc952ebd022cd6eee0b8775acdb24753d165c087c23ae4c98bff5b9bd05a0f5`  
		Last Modified: Sat, 17 Oct 2026 00:38:00 GMT  
		Size: 555.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36320c76725e729d7943f0b645864ed8a0bf873127de9230969ec5a9538df031`  
		Last Modified: Sat, 17 Oct 2026 00:38:01 GMT  
		Size: 594.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1eb802e5b7e12288230c6e5bb33ff94ee46abf3c5243d02242529f6b53c0f450`  
		Last Modified: Sat, 17 Oct 2026 00:38:02 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19.0` - unknown; unknown

```console
$ docker pull odoo@sha256:8e6d91ecd3e1ed8faf17b3469896401b27331ac60228128b92c6aadfa8d19a05
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.5 MB (52526494 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63b598982ff74185778ebdb5cac187667e4d714e0712bd53f188c7ec7d826697`

```dockerfile
```

-	Layers:
	-	`sha256:3f6070e90e76e8ea6adb5059d104c9a2b7f4192ae83dea5b9cbfd6a96bf10392`  
		Last Modified: Sat, 17 Oct 2026 00:38:01 GMT  
		Size: 52.5 MB (52499146 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4836022266838e5d8fd65f1f33514db7904ca1c70b27a966fb8be07a3c26a070`  
		Last Modified: Sat, 17 Oct 2026 00:37:58 GMT  
		Size: 27.3 KB (27348 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:19.0` - linux; ppc64le

```console
$ docker pull odoo@sha256:3ba083d7749608fe95df51cf108b22db1369988aa75bcac9ac314558f453200f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **715.3 MB (715281166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:363bc08a7edb0d2c413991a6ad36c281b23cbaf1a5afc6573992b0337ac6fc1a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Fri, 02 Oct 2026 08:03:52 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:03:52 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:03:53 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:03:57 GMT
ADD file:453509713ec04b626052519f384e2b9d016f8f4971a3e6dd75d87e74e89202c9 in / 
# Fri, 02 Oct 2026 08:03:57 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 01:44:47 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Sat, 17 Oct 2026 01:44:47 GMT
SHELL [/bin/bash -xo pipefail -c]
# Sat, 17 Oct 2026 01:44:47 GMT
ENV LANG=en_US.UTF-8
# Sat, 17 Oct 2026 01:44:47 GMT
ARG TARGETARCH=ppc64le
# Sat, 17 Oct 2026 01:44:47 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Sat, 17 Oct 2026 01:45:03 GMT
# ARGS: TARGETARCH=ppc64le
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 01:50:56 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 01:50:56 GMT
ENV ODOO_VERSION=19.0
# Sat, 17 Oct 2026 01:50:56 GMT
ARG ODOO_RELEASE=20261015
# Sat, 17 Oct 2026 01:50:56 GMT
ARG ODOO_SHA=3a2e406fa0399944a7c339baa5f53ca2e783e71b
# Sat, 17 Oct 2026 01:54:50 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261015 ODOO_SHA=3a2e406fa0399944a7c339baa5f53ca2e783e71b
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Sat, 17 Oct 2026 01:54:55 GMT
COPY ./entrypoint.sh / # buildkit
# Sat, 17 Oct 2026 01:55:01 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Sat, 17 Oct 2026 01:55:06 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261015 ODOO_SHA=3a2e406fa0399944a7c339baa5f53ca2e783e71b
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Sat, 17 Oct 2026 01:55:06 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Sat, 17 Oct 2026 01:55:06 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Sat, 17 Oct 2026 01:55:06 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Sat, 17 Oct 2026 01:55:10 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Sat, 17 Oct 2026 01:55:10 GMT
USER odoo
# Sat, 17 Oct 2026 01:55:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 17 Oct 2026 01:55:10 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:d56805ebb73a9b4ab3eaf5e6375e8f25df35aba5e48ca970deb58001dac1f2ca`  
		Last Modified: Fri, 02 Oct 2026 08:36:36 GMT  
		Size: 34.4 MB (34377990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa22d41037f1b29e6bd07017dbe5885335dc1e8bc0a282df902f946042e5f073`  
		Last Modified: Sat, 17 Oct 2026 02:00:27 GMT  
		Size: 249.4 MB (249398075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e27e91439e065b4cff747d37ee9c7bc16b9bd06c82b3861e1e35e27226917ec8`  
		Last Modified: Sat, 17 Oct 2026 02:00:17 GMT  
		Size: 14.7 MB (14743400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11a1f5a296d42f380acd7c79d73a35a3430aa7c9ce866fac9daddbcce0b60bb3`  
		Last Modified: Sat, 17 Oct 2026 02:00:16 GMT  
		Size: 874.4 KB (874428 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b6caa71cbb5e9840a22f5007084221ce22b9d143e0195a9402b4464e6b4d78b`  
		Last Modified: Sat, 17 Oct 2026 02:00:31 GMT  
		Size: 415.9 MB (415884524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdce32c9eaf81196e46393fd58a8ae1c05b18dd7eb024a82d11f4876b6ee25ef`  
		Last Modified: Sat, 17 Oct 2026 02:00:18 GMT  
		Size: 719.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:959f2cf8fe66cec6dc3b8344be5b3c10040571fb8619fc87421fb40c8416238a`  
		Last Modified: Sat, 17 Oct 2026 02:00:19 GMT  
		Size: 554.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:427534d539c6f9b32453691e1d182fbb5c2e8aca1f31998ef3cc6b0e48d994c3`  
		Last Modified: Sat, 17 Oct 2026 02:00:20 GMT  
		Size: 599.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0de9cb89a96cbd892ba1293834a716cc5e29882abb585ccaced93b43a45d1d1c`  
		Last Modified: Sat, 17 Oct 2026 02:00:22 GMT  
		Size: 877.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19.0` - unknown; unknown

```console
$ docker pull odoo@sha256:85581fb185d95ebb8b9f5baef6e317005c9f167d50f850913a1ad2d7dcdd36e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.5 MB (52527490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58df9cc8679987309d366e257e51fa34d13719ff09b0b5cc4ac3f1ce7d5613b4`

```dockerfile
```

-	Layers:
	-	`sha256:3fdc054c7e5e4b3a996ed1a1dc908384508da4aae12a092f3e7c0ee2744b5265`  
		Last Modified: Sat, 17 Oct 2026 02:00:19 GMT  
		Size: 52.5 MB (52500238 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:513583bda4409646735ddaddcc136baa749cc1a2e857f8246dccaabedff0ef7d`  
		Last Modified: Sat, 17 Oct 2026 02:00:16 GMT  
		Size: 27.3 KB (27252 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:19.0-20261015`

```console
$ docker pull odoo@sha256:076562619a5de059388d9f9d90545cb575799c04869610a5b20839893819b41b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `odoo:19.0-20261015` - linux; amd64

```console
$ docker pull odoo@sha256:8062dba8327903d0c96daebff88027d41784a060ed3c9ff2dde09f372a45fdd0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **698.8 MB (698824191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3ebc0b5cec92d92afb8501e7eec310b1e5aa1e2317ec8c82b2bffcab2dfb735`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:52 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:52 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:52 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:54 GMT
ADD file:7121eb4a5ba391efb4ba9a38c532d1c5dc2d22d276f04e062f357eea36ee62c4 in / 
# Fri, 02 Oct 2026 08:10:55 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:33:50 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Sat, 17 Oct 2026 00:33:50 GMT
SHELL [/bin/bash -xo pipefail -c]
# Sat, 17 Oct 2026 00:33:50 GMT
ENV LANG=en_US.UTF-8
# Sat, 17 Oct 2026 00:33:50 GMT
ARG TARGETARCH=amd64
# Sat, 17 Oct 2026 00:33:50 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Sat, 17 Oct 2026 00:33:58 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:35:16 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:35:16 GMT
ENV ODOO_VERSION=19.0
# Sat, 17 Oct 2026 00:35:16 GMT
ARG ODOO_RELEASE=20261015
# Sat, 17 Oct 2026 00:35:16 GMT
ARG ODOO_SHA=3a2e406fa0399944a7c339baa5f53ca2e783e71b
# Sat, 17 Oct 2026 00:36:20 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261015 ODOO_SHA=3a2e406fa0399944a7c339baa5f53ca2e783e71b
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Sat, 17 Oct 2026 00:36:20 GMT
COPY ./entrypoint.sh / # buildkit
# Sat, 17 Oct 2026 00:36:21 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Sat, 17 Oct 2026 00:36:21 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261015 ODOO_SHA=3a2e406fa0399944a7c339baa5f53ca2e783e71b
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Sat, 17 Oct 2026 00:36:21 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Sat, 17 Oct 2026 00:36:21 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Sat, 17 Oct 2026 00:36:21 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Sat, 17 Oct 2026 00:36:21 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Sat, 17 Oct 2026 00:36:21 GMT
USER odoo
# Sat, 17 Oct 2026 00:36:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 17 Oct 2026 00:36:21 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:f2b4ef06ff01a67d4bed7657a4ae379a7d07934b7c3e743454a22a0d5275fb2b`  
		Last Modified: Fri, 02 Oct 2026 08:36:14 GMT  
		Size: 29.8 MB (29765758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1529e51f6518289513b9f06c387ecec7cb76b65116b364a6106aef238d7ce02b`  
		Last Modified: Sat, 17 Oct 2026 00:38:12 GMT  
		Size: 238.7 MB (238715936 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccf445cdf73be2281c1580e54f0d8fcab03f9d6d4aa4e2806571e6d12f9058c1`  
		Last Modified: Sat, 17 Oct 2026 00:38:03 GMT  
		Size: 14.2 MB (14226237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bf89fb6517e68645142236e4e31f8b1b1f6c29fd5db545f27dd4f25064b669b`  
		Last Modified: Sat, 17 Oct 2026 00:38:02 GMT  
		Size: 872.7 KB (872746 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f313fbc22ed138712e3684f633c0fb7d226bd1b3f6fa540d349949661b5b8f3`  
		Last Modified: Sat, 17 Oct 2026 00:38:15 GMT  
		Size: 415.2 MB (415240761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d04306fb24d3d374e36e8b21d32c0a995ae86deb7e86680af2b5f48ed3a90ee`  
		Last Modified: Sat, 17 Oct 2026 00:38:04 GMT  
		Size: 719.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77be135cb5229e3bcf891719698acf3b48331ac173bca43bfc4131dfbc0be1b3`  
		Last Modified: Sat, 17 Oct 2026 00:38:05 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92dc113627cc018511ce384c0ea257799958cff1d86acc7141868cc51b490cdc`  
		Last Modified: Sat, 17 Oct 2026 00:38:05 GMT  
		Size: 599.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d60683d24b8be37d282cead2cf798a2d02b81f3d453bbf72b1544b2dda151eb`  
		Last Modified: Sat, 17 Oct 2026 00:38:07 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19.0-20261015` - unknown; unknown

```console
$ docker pull odoo@sha256:f5dbb3b79d4d686f183d4f67fefef76c76776d98eaf8565719063288ff67be88
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.5 MB (52519071 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34a537fc529eda5aeeb00e2c6288f6443110fd63db390a0fea5c5da98ed4a193`

```dockerfile
```

-	Layers:
	-	`sha256:c9759b73e10528e1f3af712b5c8a58c0a3d41703a3cc6e7b38585c6edcdd1aeb`  
		Last Modified: Sat, 17 Oct 2026 00:38:06 GMT  
		Size: 52.5 MB (52491874 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a83e82c4c58ef47af62b35686b4f2710acb52b1762056d96bc2d1c28f73c583d`  
		Last Modified: Sat, 17 Oct 2026 00:38:02 GMT  
		Size: 27.2 KB (27197 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:19.0-20261015` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:29ba59f87b509f4311e5f786d8f98403f7a0b296c5e69de4a02d075f290bcb1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **695.3 MB (695302766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e96e0b85789544f6d1769596f4c26b6b3482164a7adb093cf146ee9b7129e564`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:23 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:23 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:23 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:25 GMT
ADD file:41d2e63ceb0b90641106340bc81ee11125254db51ee5a9d49e666bcf0388814f in / 
# Fri, 02 Oct 2026 08:10:26 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:33:43 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Sat, 17 Oct 2026 00:33:43 GMT
SHELL [/bin/bash -xo pipefail -c]
# Sat, 17 Oct 2026 00:33:43 GMT
ENV LANG=en_US.UTF-8
# Sat, 17 Oct 2026 00:33:43 GMT
ARG TARGETARCH=arm64
# Sat, 17 Oct 2026 00:33:43 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Sat, 17 Oct 2026 00:33:53 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:35:05 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:35:05 GMT
ENV ODOO_VERSION=19.0
# Sat, 17 Oct 2026 00:35:05 GMT
ARG ODOO_RELEASE=20261015
# Sat, 17 Oct 2026 00:35:05 GMT
ARG ODOO_SHA=3a2e406fa0399944a7c339baa5f53ca2e783e71b
# Sat, 17 Oct 2026 00:36:15 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261015 ODOO_SHA=3a2e406fa0399944a7c339baa5f53ca2e783e71b
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Sat, 17 Oct 2026 00:36:16 GMT
COPY ./entrypoint.sh / # buildkit
# Sat, 17 Oct 2026 00:36:16 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Sat, 17 Oct 2026 00:36:16 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261015 ODOO_SHA=3a2e406fa0399944a7c339baa5f53ca2e783e71b
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Sat, 17 Oct 2026 00:36:16 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Sat, 17 Oct 2026 00:36:16 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Sat, 17 Oct 2026 00:36:16 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Sat, 17 Oct 2026 00:36:16 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Sat, 17 Oct 2026 00:36:16 GMT
USER odoo
# Sat, 17 Oct 2026 00:36:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 17 Oct 2026 00:36:16 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:d5aec63251bb323f816a0f4b8a554bd84e478466a9ed1068daef07368328e9a3`  
		Last Modified: Fri, 02 Oct 2026 08:36:21 GMT  
		Size: 28.9 MB (28939761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9cbfa0594497838f7f0d535df73a201d8ddfdbb92a52cd52d59ec0806eac83f2`  
		Last Modified: Sat, 17 Oct 2026 00:38:07 GMT  
		Size: 236.2 MB (236186115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f78620b774621b2edb5f45eff30e5ef477214b70a2b21e6fde5a6d4b01536ef2`  
		Last Modified: Sat, 17 Oct 2026 00:37:59 GMT  
		Size: 14.2 MB (14197429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e48f2857f3731841c5b0e86ecbe831c659cc6cf00a8c13678a96cf335ed12c1f`  
		Last Modified: Sat, 17 Oct 2026 00:37:58 GMT  
		Size: 872.7 KB (872663 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4611cae6ed92e1975c1b0c1e618af6e7ae5552cfd077047904762a0436e6fde`  
		Last Modified: Sat, 17 Oct 2026 00:38:10 GMT  
		Size: 415.1 MB (415104052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:607ec7fc413de6004b70311a72261492f6c8574fc8e50f61f13803a6fca15664`  
		Last Modified: Sat, 17 Oct 2026 00:37:59 GMT  
		Size: 719.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cc952ebd022cd6eee0b8775acdb24753d165c087c23ae4c98bff5b9bd05a0f5`  
		Last Modified: Sat, 17 Oct 2026 00:38:00 GMT  
		Size: 555.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36320c76725e729d7943f0b645864ed8a0bf873127de9230969ec5a9538df031`  
		Last Modified: Sat, 17 Oct 2026 00:38:01 GMT  
		Size: 594.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1eb802e5b7e12288230c6e5bb33ff94ee46abf3c5243d02242529f6b53c0f450`  
		Last Modified: Sat, 17 Oct 2026 00:38:02 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19.0-20261015` - unknown; unknown

```console
$ docker pull odoo@sha256:8e6d91ecd3e1ed8faf17b3469896401b27331ac60228128b92c6aadfa8d19a05
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.5 MB (52526494 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63b598982ff74185778ebdb5cac187667e4d714e0712bd53f188c7ec7d826697`

```dockerfile
```

-	Layers:
	-	`sha256:3f6070e90e76e8ea6adb5059d104c9a2b7f4192ae83dea5b9cbfd6a96bf10392`  
		Last Modified: Sat, 17 Oct 2026 00:38:01 GMT  
		Size: 52.5 MB (52499146 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4836022266838e5d8fd65f1f33514db7904ca1c70b27a966fb8be07a3c26a070`  
		Last Modified: Sat, 17 Oct 2026 00:37:58 GMT  
		Size: 27.3 KB (27348 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:19.0-20261015` - linux; ppc64le

```console
$ docker pull odoo@sha256:3ba083d7749608fe95df51cf108b22db1369988aa75bcac9ac314558f453200f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **715.3 MB (715281166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:363bc08a7edb0d2c413991a6ad36c281b23cbaf1a5afc6573992b0337ac6fc1a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Fri, 02 Oct 2026 08:03:52 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:03:52 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:03:53 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:03:57 GMT
ADD file:453509713ec04b626052519f384e2b9d016f8f4971a3e6dd75d87e74e89202c9 in / 
# Fri, 02 Oct 2026 08:03:57 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 01:44:47 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Sat, 17 Oct 2026 01:44:47 GMT
SHELL [/bin/bash -xo pipefail -c]
# Sat, 17 Oct 2026 01:44:47 GMT
ENV LANG=en_US.UTF-8
# Sat, 17 Oct 2026 01:44:47 GMT
ARG TARGETARCH=ppc64le
# Sat, 17 Oct 2026 01:44:47 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Sat, 17 Oct 2026 01:45:03 GMT
# ARGS: TARGETARCH=ppc64le
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 01:50:56 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 01:50:56 GMT
ENV ODOO_VERSION=19.0
# Sat, 17 Oct 2026 01:50:56 GMT
ARG ODOO_RELEASE=20261015
# Sat, 17 Oct 2026 01:50:56 GMT
ARG ODOO_SHA=3a2e406fa0399944a7c339baa5f53ca2e783e71b
# Sat, 17 Oct 2026 01:54:50 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261015 ODOO_SHA=3a2e406fa0399944a7c339baa5f53ca2e783e71b
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Sat, 17 Oct 2026 01:54:55 GMT
COPY ./entrypoint.sh / # buildkit
# Sat, 17 Oct 2026 01:55:01 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Sat, 17 Oct 2026 01:55:06 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261015 ODOO_SHA=3a2e406fa0399944a7c339baa5f53ca2e783e71b
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Sat, 17 Oct 2026 01:55:06 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Sat, 17 Oct 2026 01:55:06 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Sat, 17 Oct 2026 01:55:06 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Sat, 17 Oct 2026 01:55:10 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Sat, 17 Oct 2026 01:55:10 GMT
USER odoo
# Sat, 17 Oct 2026 01:55:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 17 Oct 2026 01:55:10 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:d56805ebb73a9b4ab3eaf5e6375e8f25df35aba5e48ca970deb58001dac1f2ca`  
		Last Modified: Fri, 02 Oct 2026 08:36:36 GMT  
		Size: 34.4 MB (34377990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa22d41037f1b29e6bd07017dbe5885335dc1e8bc0a282df902f946042e5f073`  
		Last Modified: Sat, 17 Oct 2026 02:00:27 GMT  
		Size: 249.4 MB (249398075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e27e91439e065b4cff747d37ee9c7bc16b9bd06c82b3861e1e35e27226917ec8`  
		Last Modified: Sat, 17 Oct 2026 02:00:17 GMT  
		Size: 14.7 MB (14743400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11a1f5a296d42f380acd7c79d73a35a3430aa7c9ce866fac9daddbcce0b60bb3`  
		Last Modified: Sat, 17 Oct 2026 02:00:16 GMT  
		Size: 874.4 KB (874428 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b6caa71cbb5e9840a22f5007084221ce22b9d143e0195a9402b4464e6b4d78b`  
		Last Modified: Sat, 17 Oct 2026 02:00:31 GMT  
		Size: 415.9 MB (415884524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdce32c9eaf81196e46393fd58a8ae1c05b18dd7eb024a82d11f4876b6ee25ef`  
		Last Modified: Sat, 17 Oct 2026 02:00:18 GMT  
		Size: 719.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:959f2cf8fe66cec6dc3b8344be5b3c10040571fb8619fc87421fb40c8416238a`  
		Last Modified: Sat, 17 Oct 2026 02:00:19 GMT  
		Size: 554.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:427534d539c6f9b32453691e1d182fbb5c2e8aca1f31998ef3cc6b0e48d994c3`  
		Last Modified: Sat, 17 Oct 2026 02:00:20 GMT  
		Size: 599.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0de9cb89a96cbd892ba1293834a716cc5e29882abb585ccaced93b43a45d1d1c`  
		Last Modified: Sat, 17 Oct 2026 02:00:22 GMT  
		Size: 877.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19.0-20261015` - unknown; unknown

```console
$ docker pull odoo@sha256:85581fb185d95ebb8b9f5baef6e317005c9f167d50f850913a1ad2d7dcdd36e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.5 MB (52527490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58df9cc8679987309d366e257e51fa34d13719ff09b0b5cc4ac3f1ce7d5613b4`

```dockerfile
```

-	Layers:
	-	`sha256:3fdc054c7e5e4b3a996ed1a1dc908384508da4aae12a092f3e7c0ee2744b5265`  
		Last Modified: Sat, 17 Oct 2026 02:00:19 GMT  
		Size: 52.5 MB (52500238 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:513583bda4409646735ddaddcc136baa749cc1a2e857f8246dccaabedff0ef7d`  
		Last Modified: Sat, 17 Oct 2026 02:00:16 GMT  
		Size: 27.3 KB (27252 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:20`

```console
$ docker pull odoo@sha256:61e3c71b0503c5f658e604c3e340bede20b97d05f726179fa006eae50a32fd23
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
$ docker pull odoo@sha256:a9e8e6b30e89eb29b2074489ad31dd285a2776f3479cce1ccedfa04722a3057b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **800.1 MB (800099290 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fb34d6be25b3e4c5c9edf4ceaa438636f820dd22b3aee2ff961f1a89e710813`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:52 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:52 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:52 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:54 GMT
ADD file:7121eb4a5ba391efb4ba9a38c532d1c5dc2d22d276f04e062f357eea36ee62c4 in / 
# Fri, 02 Oct 2026 08:10:55 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:33:46 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Sat, 17 Oct 2026 00:33:46 GMT
SHELL [/bin/bash -xo pipefail -c]
# Sat, 17 Oct 2026 00:33:46 GMT
ENV LANG=en_US.UTF-8
# Sat, 17 Oct 2026 00:33:46 GMT
ARG TARGETARCH=amd64
# Sat, 17 Oct 2026 00:33:46 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Sat, 17 Oct 2026 00:33:57 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:35:08 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:35:08 GMT
ENV ODOO_VERSION=20.0
# Sat, 17 Oct 2026 00:35:08 GMT
ARG ODOO_RELEASE=20261015
# Sat, 17 Oct 2026 00:35:08 GMT
ARG ODOO_SHA=ae908bc0fa5e01d076a74a1008f07ad8869f819d
# Sat, 17 Oct 2026 00:36:20 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261015 ODOO_SHA=ae908bc0fa5e01d076a74a1008f07ad8869f819d
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Sat, 17 Oct 2026 00:36:20 GMT
COPY ./entrypoint.sh / # buildkit
# Sat, 17 Oct 2026 00:36:21 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Sat, 17 Oct 2026 00:36:21 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261015 ODOO_SHA=ae908bc0fa5e01d076a74a1008f07ad8869f819d
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Sat, 17 Oct 2026 00:36:21 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Sat, 17 Oct 2026 00:36:21 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Sat, 17 Oct 2026 00:36:21 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Sat, 17 Oct 2026 00:36:21 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Sat, 17 Oct 2026 00:36:21 GMT
USER odoo
# Sat, 17 Oct 2026 00:36:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 17 Oct 2026 00:36:21 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:f2b4ef06ff01a67d4bed7657a4ae379a7d07934b7c3e743454a22a0d5275fb2b`  
		Last Modified: Fri, 02 Oct 2026 08:36:14 GMT  
		Size: 29.8 MB (29765758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc41e60165fd8bc470aea073c070850ced7cf1c11daa43aa95a8df9610b3d107`  
		Last Modified: Sat, 17 Oct 2026 00:38:14 GMT  
		Size: 238.7 MB (238715323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c55a1bbb28495705bc1ceb29d23572acb75b67512f9afd8b3e487dc1cea436de`  
		Last Modified: Sat, 17 Oct 2026 00:38:06 GMT  
		Size: 14.2 MB (14226218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d46699a0e3fe9b357627406515ba593824f78063db732fbb40d2083e1364007a`  
		Last Modified: Sat, 17 Oct 2026 00:38:05 GMT  
		Size: 872.7 KB (872705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a876f5146b96a08a0c3a8f39628e2828c5c5af50fc47cbd740fcbdb81afeaee`  
		Last Modified: Sat, 17 Oct 2026 00:38:19 GMT  
		Size: 516.5 MB (516516518 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b518ce5e4f42b57786c9407135a460f9266a9ea0a6eeb14b5eecdb29a3f1b93`  
		Last Modified: Sat, 17 Oct 2026 00:38:06 GMT  
		Size: 718.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4725efff51704784047103e5b55a159c1e0a9a43a0f06d2acdf3556d593c3526`  
		Last Modified: Sat, 17 Oct 2026 00:38:07 GMT  
		Size: 566.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59438c5a47ded6c17539f49c0bad44c9fffaff13bb8596b4530d3ce0357d9ee4`  
		Last Modified: Sat, 17 Oct 2026 00:38:08 GMT  
		Size: 606.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12a6541bf2a8f04b9d4292bb680739abfad21a9a9497fa5d5b5eb1b9531594db`  
		Last Modified: Sat, 17 Oct 2026 00:38:09 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:20` - unknown; unknown

```console
$ docker pull odoo@sha256:f86f183263aea4e917f2820d57c05aff571382c89de490b2ed36d1eac22fc2f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.1 MB (55095651 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a3c52d62401cdd5e0fa11d93cfe7a3fb20f2930166a6c6bfc9b8fe2f80d52f5`

```dockerfile
```

-	Layers:
	-	`sha256:9ae8e95c20bd08f1dfa8a4a781e0a943497043ac41f3eb868ced635dc5354f73`  
		Last Modified: Sat, 17 Oct 2026 00:38:08 GMT  
		Size: 55.1 MB (55068160 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d69cb87ebcd8f5dbf8095091df65e4cc4dfdd21d986afffd164897a74f618d5a`  
		Last Modified: Sat, 17 Oct 2026 00:38:04 GMT  
		Size: 27.5 KB (27491 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:20` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:0a819993865ef825a04571b66f9487d0a49ee529320347fd3d534bb5bd5b8af5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **796.6 MB (796561661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efe708767b32174fea1859a576cab3e8962d5567492acb5000ce9cfc3cf4ae7f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:23 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:23 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:23 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:25 GMT
ADD file:41d2e63ceb0b90641106340bc81ee11125254db51ee5a9d49e666bcf0388814f in / 
# Fri, 02 Oct 2026 08:10:26 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:33:30 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Sat, 17 Oct 2026 00:33:30 GMT
SHELL [/bin/bash -xo pipefail -c]
# Sat, 17 Oct 2026 00:33:30 GMT
ENV LANG=en_US.UTF-8
# Sat, 17 Oct 2026 00:33:30 GMT
ARG TARGETARCH=arm64
# Sat, 17 Oct 2026 00:33:30 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Sat, 17 Oct 2026 00:33:40 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:34:42 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:34:42 GMT
ENV ODOO_VERSION=20.0
# Sat, 17 Oct 2026 00:34:42 GMT
ARG ODOO_RELEASE=20261015
# Sat, 17 Oct 2026 00:34:42 GMT
ARG ODOO_SHA=ae908bc0fa5e01d076a74a1008f07ad8869f819d
# Sat, 17 Oct 2026 00:35:56 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261015 ODOO_SHA=ae908bc0fa5e01d076a74a1008f07ad8869f819d
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Sat, 17 Oct 2026 00:35:57 GMT
COPY ./entrypoint.sh / # buildkit
# Sat, 17 Oct 2026 00:35:57 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Sat, 17 Oct 2026 00:35:57 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261015 ODOO_SHA=ae908bc0fa5e01d076a74a1008f07ad8869f819d
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Sat, 17 Oct 2026 00:35:57 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Sat, 17 Oct 2026 00:35:57 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Sat, 17 Oct 2026 00:35:57 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Sat, 17 Oct 2026 00:35:57 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Sat, 17 Oct 2026 00:35:57 GMT
USER odoo
# Sat, 17 Oct 2026 00:35:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 17 Oct 2026 00:35:57 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:d5aec63251bb323f816a0f4b8a554bd84e478466a9ed1068daef07368328e9a3`  
		Last Modified: Fri, 02 Oct 2026 08:36:21 GMT  
		Size: 28.9 MB (28939761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4295fed790a3ca2e9f87b48f7d8d4fb01c61c5c895a937c484838393bed28bbc`  
		Last Modified: Sat, 17 Oct 2026 00:38:03 GMT  
		Size: 236.2 MB (236186171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33fd5beca4c9462c1fbdcf32fbd0b77979c9407129b0a7fec6e33578384bf765`  
		Last Modified: Sat, 17 Oct 2026 00:37:55 GMT  
		Size: 14.2 MB (14197420 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91fd92931044cd0127e250f2cca6848ee9dc748936c335f390ec79a18a4a1148`  
		Last Modified: Sat, 17 Oct 2026 00:37:54 GMT  
		Size: 872.7 KB (872653 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c609709e9df5cb98212bd4e3d1d7fb374bed5bb013db0ede5b889e261362a2ef`  
		Last Modified: Sat, 17 Oct 2026 00:38:08 GMT  
		Size: 516.4 MB (516362895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2923ac13a53be2d01a3fc0d1574c0da2fd608a77d3565c060697bee280ebfef`  
		Last Modified: Sat, 17 Oct 2026 00:37:56 GMT  
		Size: 716.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95af7b257259f9bf03e0197d05f1d179f1ab2056b627643f3d9e2cfba13d7b9e`  
		Last Modified: Sat, 17 Oct 2026 00:37:57 GMT  
		Size: 564.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac87ea72eeac048f199843087cd8f0f26d7f1a9db031238ad74fec58ba614bf3`  
		Last Modified: Sat, 17 Oct 2026 00:37:57 GMT  
		Size: 604.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6141fccb6ebffbd564193ebcd5cd09cdfacf6c0511a9da9ebd08685f9d68093`  
		Last Modified: Sat, 17 Oct 2026 00:37:58 GMT  
		Size: 877.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:20` - unknown; unknown

```console
$ docker pull odoo@sha256:ceb00fbc76abab55f83f92caa025115e65bcfcaa2e06de6b8f1a2d47342edd7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.1 MB (55103099 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb7335fae34c0d2a7bee1822731efaedd74bbe26dab90629602a38cbcc5d5b37`

```dockerfile
```

-	Layers:
	-	`sha256:059bb175540c24e512834604b80f5ab5c96ee4c7a73c8d01b6165f38ad67b94e`  
		Last Modified: Sat, 17 Oct 2026 00:37:57 GMT  
		Size: 55.1 MB (55075444 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c114fe47d26c79856095ff53d02f85add80ed3532ffefa3ffd125a6eff29eec6`  
		Last Modified: Sat, 17 Oct 2026 00:37:54 GMT  
		Size: 27.7 KB (27655 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:20` - linux; ppc64le

```console
$ docker pull odoo@sha256:b30623ea572986dc38cfcbea58414784864a73d8ae867611d8fcaa7d422330c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **816.6 MB (816585912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56fafa357d8b54ea18e71360f789596ecf39b62d9ecaf00b2700c71c5dc52529`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Fri, 02 Oct 2026 08:03:52 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:03:52 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:03:53 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:03:57 GMT
ADD file:453509713ec04b626052519f384e2b9d016f8f4971a3e6dd75d87e74e89202c9 in / 
# Fri, 02 Oct 2026 08:03:57 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 01:44:47 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Sat, 17 Oct 2026 01:44:47 GMT
SHELL [/bin/bash -xo pipefail -c]
# Sat, 17 Oct 2026 01:44:47 GMT
ENV LANG=en_US.UTF-8
# Sat, 17 Oct 2026 01:44:47 GMT
ARG TARGETARCH=ppc64le
# Sat, 17 Oct 2026 01:44:47 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Sat, 17 Oct 2026 01:45:03 GMT
# ARGS: TARGETARCH=ppc64le
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 01:50:56 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 01:50:56 GMT
ENV ODOO_VERSION=20.0
# Sat, 17 Oct 2026 01:50:56 GMT
ARG ODOO_RELEASE=20261015
# Sat, 17 Oct 2026 01:50:56 GMT
ARG ODOO_SHA=ae908bc0fa5e01d076a74a1008f07ad8869f819d
# Sat, 17 Oct 2026 01:54:50 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261015 ODOO_SHA=ae908bc0fa5e01d076a74a1008f07ad8869f819d
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Sat, 17 Oct 2026 01:54:56 GMT
COPY ./entrypoint.sh / # buildkit
# Sat, 17 Oct 2026 01:55:02 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Sat, 17 Oct 2026 01:55:07 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261015 ODOO_SHA=ae908bc0fa5e01d076a74a1008f07ad8869f819d
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Sat, 17 Oct 2026 01:55:07 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Sat, 17 Oct 2026 01:55:07 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Sat, 17 Oct 2026 01:55:07 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Sat, 17 Oct 2026 01:55:10 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Sat, 17 Oct 2026 01:55:10 GMT
USER odoo
# Sat, 17 Oct 2026 01:55:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 17 Oct 2026 01:55:10 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:d56805ebb73a9b4ab3eaf5e6375e8f25df35aba5e48ca970deb58001dac1f2ca`  
		Last Modified: Fri, 02 Oct 2026 08:36:36 GMT  
		Size: 34.4 MB (34377990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa22d41037f1b29e6bd07017dbe5885335dc1e8bc0a282df902f946042e5f073`  
		Last Modified: Sat, 17 Oct 2026 02:00:27 GMT  
		Size: 249.4 MB (249398075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e27e91439e065b4cff747d37ee9c7bc16b9bd06c82b3861e1e35e27226917ec8`  
		Last Modified: Sat, 17 Oct 2026 02:00:17 GMT  
		Size: 14.7 MB (14743400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11a1f5a296d42f380acd7c79d73a35a3430aa7c9ce866fac9daddbcce0b60bb3`  
		Last Modified: Sat, 17 Oct 2026 02:00:16 GMT  
		Size: 874.4 KB (874428 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf0958a4623576a6c250ae3dc420cfaa5ceb2a0096e5a53c82ddf8e804836683`  
		Last Modified: Sat, 17 Oct 2026 02:00:32 GMT  
		Size: 517.2 MB (517189248 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acbe2d0bae9a2c80fd3f28c212a59fd45b57c9955c3e7b4b7e11cdb53c97042c`  
		Last Modified: Sat, 17 Oct 2026 02:00:19 GMT  
		Size: 716.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b0015453a937f5c6071179c3ffa075e7d4fc1e661de739527345a360df92586`  
		Last Modified: Sat, 17 Oct 2026 02:00:19 GMT  
		Size: 567.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87609dc2559ba85cd7f785962da5326e9101f3e516ad9441aab1f6c4406c7d1f`  
		Last Modified: Sat, 17 Oct 2026 02:00:21 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:415c29a2f36050979ea98a06a944cf1d0ba694a4aeadd553d60fcc2a5c1c0add`  
		Last Modified: Sat, 17 Oct 2026 02:00:22 GMT  
		Size: 877.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:20` - unknown; unknown

```console
$ docker pull odoo@sha256:350f68d103be1727dbdfa07e2160be5101181fe2450995eebf47e2bda97c9e39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.1 MB (55104083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ebd46b2edd3e0c9e4a410a94e9a744a746c8da0257473273b93f557d1f8bdb8`

```dockerfile
```

-	Layers:
	-	`sha256:e77c1ba3dc892a423212122cb382ab4d6302c07a90dfb4dd1e53862648a1c3cf`  
		Last Modified: Sat, 17 Oct 2026 02:00:20 GMT  
		Size: 55.1 MB (55076530 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:30bf33ff03fce96e953ef16ac8e1e223972d2e980819c8628ada22c1e58c2363`  
		Last Modified: Sat, 17 Oct 2026 02:00:16 GMT  
		Size: 27.6 KB (27553 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:20.0`

```console
$ docker pull odoo@sha256:61e3c71b0503c5f658e604c3e340bede20b97d05f726179fa006eae50a32fd23
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
$ docker pull odoo@sha256:a9e8e6b30e89eb29b2074489ad31dd285a2776f3479cce1ccedfa04722a3057b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **800.1 MB (800099290 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fb34d6be25b3e4c5c9edf4ceaa438636f820dd22b3aee2ff961f1a89e710813`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:52 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:52 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:52 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:54 GMT
ADD file:7121eb4a5ba391efb4ba9a38c532d1c5dc2d22d276f04e062f357eea36ee62c4 in / 
# Fri, 02 Oct 2026 08:10:55 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:33:46 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Sat, 17 Oct 2026 00:33:46 GMT
SHELL [/bin/bash -xo pipefail -c]
# Sat, 17 Oct 2026 00:33:46 GMT
ENV LANG=en_US.UTF-8
# Sat, 17 Oct 2026 00:33:46 GMT
ARG TARGETARCH=amd64
# Sat, 17 Oct 2026 00:33:46 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Sat, 17 Oct 2026 00:33:57 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:35:08 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:35:08 GMT
ENV ODOO_VERSION=20.0
# Sat, 17 Oct 2026 00:35:08 GMT
ARG ODOO_RELEASE=20261015
# Sat, 17 Oct 2026 00:35:08 GMT
ARG ODOO_SHA=ae908bc0fa5e01d076a74a1008f07ad8869f819d
# Sat, 17 Oct 2026 00:36:20 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261015 ODOO_SHA=ae908bc0fa5e01d076a74a1008f07ad8869f819d
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Sat, 17 Oct 2026 00:36:20 GMT
COPY ./entrypoint.sh / # buildkit
# Sat, 17 Oct 2026 00:36:21 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Sat, 17 Oct 2026 00:36:21 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261015 ODOO_SHA=ae908bc0fa5e01d076a74a1008f07ad8869f819d
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Sat, 17 Oct 2026 00:36:21 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Sat, 17 Oct 2026 00:36:21 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Sat, 17 Oct 2026 00:36:21 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Sat, 17 Oct 2026 00:36:21 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Sat, 17 Oct 2026 00:36:21 GMT
USER odoo
# Sat, 17 Oct 2026 00:36:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 17 Oct 2026 00:36:21 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:f2b4ef06ff01a67d4bed7657a4ae379a7d07934b7c3e743454a22a0d5275fb2b`  
		Last Modified: Fri, 02 Oct 2026 08:36:14 GMT  
		Size: 29.8 MB (29765758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc41e60165fd8bc470aea073c070850ced7cf1c11daa43aa95a8df9610b3d107`  
		Last Modified: Sat, 17 Oct 2026 00:38:14 GMT  
		Size: 238.7 MB (238715323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c55a1bbb28495705bc1ceb29d23572acb75b67512f9afd8b3e487dc1cea436de`  
		Last Modified: Sat, 17 Oct 2026 00:38:06 GMT  
		Size: 14.2 MB (14226218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d46699a0e3fe9b357627406515ba593824f78063db732fbb40d2083e1364007a`  
		Last Modified: Sat, 17 Oct 2026 00:38:05 GMT  
		Size: 872.7 KB (872705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a876f5146b96a08a0c3a8f39628e2828c5c5af50fc47cbd740fcbdb81afeaee`  
		Last Modified: Sat, 17 Oct 2026 00:38:19 GMT  
		Size: 516.5 MB (516516518 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b518ce5e4f42b57786c9407135a460f9266a9ea0a6eeb14b5eecdb29a3f1b93`  
		Last Modified: Sat, 17 Oct 2026 00:38:06 GMT  
		Size: 718.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4725efff51704784047103e5b55a159c1e0a9a43a0f06d2acdf3556d593c3526`  
		Last Modified: Sat, 17 Oct 2026 00:38:07 GMT  
		Size: 566.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59438c5a47ded6c17539f49c0bad44c9fffaff13bb8596b4530d3ce0357d9ee4`  
		Last Modified: Sat, 17 Oct 2026 00:38:08 GMT  
		Size: 606.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12a6541bf2a8f04b9d4292bb680739abfad21a9a9497fa5d5b5eb1b9531594db`  
		Last Modified: Sat, 17 Oct 2026 00:38:09 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:20.0` - unknown; unknown

```console
$ docker pull odoo@sha256:f86f183263aea4e917f2820d57c05aff571382c89de490b2ed36d1eac22fc2f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.1 MB (55095651 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a3c52d62401cdd5e0fa11d93cfe7a3fb20f2930166a6c6bfc9b8fe2f80d52f5`

```dockerfile
```

-	Layers:
	-	`sha256:9ae8e95c20bd08f1dfa8a4a781e0a943497043ac41f3eb868ced635dc5354f73`  
		Last Modified: Sat, 17 Oct 2026 00:38:08 GMT  
		Size: 55.1 MB (55068160 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d69cb87ebcd8f5dbf8095091df65e4cc4dfdd21d986afffd164897a74f618d5a`  
		Last Modified: Sat, 17 Oct 2026 00:38:04 GMT  
		Size: 27.5 KB (27491 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:20.0` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:0a819993865ef825a04571b66f9487d0a49ee529320347fd3d534bb5bd5b8af5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **796.6 MB (796561661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efe708767b32174fea1859a576cab3e8962d5567492acb5000ce9cfc3cf4ae7f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:23 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:23 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:23 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:25 GMT
ADD file:41d2e63ceb0b90641106340bc81ee11125254db51ee5a9d49e666bcf0388814f in / 
# Fri, 02 Oct 2026 08:10:26 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:33:30 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Sat, 17 Oct 2026 00:33:30 GMT
SHELL [/bin/bash -xo pipefail -c]
# Sat, 17 Oct 2026 00:33:30 GMT
ENV LANG=en_US.UTF-8
# Sat, 17 Oct 2026 00:33:30 GMT
ARG TARGETARCH=arm64
# Sat, 17 Oct 2026 00:33:30 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Sat, 17 Oct 2026 00:33:40 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:34:42 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:34:42 GMT
ENV ODOO_VERSION=20.0
# Sat, 17 Oct 2026 00:34:42 GMT
ARG ODOO_RELEASE=20261015
# Sat, 17 Oct 2026 00:34:42 GMT
ARG ODOO_SHA=ae908bc0fa5e01d076a74a1008f07ad8869f819d
# Sat, 17 Oct 2026 00:35:56 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261015 ODOO_SHA=ae908bc0fa5e01d076a74a1008f07ad8869f819d
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Sat, 17 Oct 2026 00:35:57 GMT
COPY ./entrypoint.sh / # buildkit
# Sat, 17 Oct 2026 00:35:57 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Sat, 17 Oct 2026 00:35:57 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261015 ODOO_SHA=ae908bc0fa5e01d076a74a1008f07ad8869f819d
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Sat, 17 Oct 2026 00:35:57 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Sat, 17 Oct 2026 00:35:57 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Sat, 17 Oct 2026 00:35:57 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Sat, 17 Oct 2026 00:35:57 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Sat, 17 Oct 2026 00:35:57 GMT
USER odoo
# Sat, 17 Oct 2026 00:35:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 17 Oct 2026 00:35:57 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:d5aec63251bb323f816a0f4b8a554bd84e478466a9ed1068daef07368328e9a3`  
		Last Modified: Fri, 02 Oct 2026 08:36:21 GMT  
		Size: 28.9 MB (28939761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4295fed790a3ca2e9f87b48f7d8d4fb01c61c5c895a937c484838393bed28bbc`  
		Last Modified: Sat, 17 Oct 2026 00:38:03 GMT  
		Size: 236.2 MB (236186171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33fd5beca4c9462c1fbdcf32fbd0b77979c9407129b0a7fec6e33578384bf765`  
		Last Modified: Sat, 17 Oct 2026 00:37:55 GMT  
		Size: 14.2 MB (14197420 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91fd92931044cd0127e250f2cca6848ee9dc748936c335f390ec79a18a4a1148`  
		Last Modified: Sat, 17 Oct 2026 00:37:54 GMT  
		Size: 872.7 KB (872653 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c609709e9df5cb98212bd4e3d1d7fb374bed5bb013db0ede5b889e261362a2ef`  
		Last Modified: Sat, 17 Oct 2026 00:38:08 GMT  
		Size: 516.4 MB (516362895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2923ac13a53be2d01a3fc0d1574c0da2fd608a77d3565c060697bee280ebfef`  
		Last Modified: Sat, 17 Oct 2026 00:37:56 GMT  
		Size: 716.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95af7b257259f9bf03e0197d05f1d179f1ab2056b627643f3d9e2cfba13d7b9e`  
		Last Modified: Sat, 17 Oct 2026 00:37:57 GMT  
		Size: 564.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac87ea72eeac048f199843087cd8f0f26d7f1a9db031238ad74fec58ba614bf3`  
		Last Modified: Sat, 17 Oct 2026 00:37:57 GMT  
		Size: 604.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6141fccb6ebffbd564193ebcd5cd09cdfacf6c0511a9da9ebd08685f9d68093`  
		Last Modified: Sat, 17 Oct 2026 00:37:58 GMT  
		Size: 877.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:20.0` - unknown; unknown

```console
$ docker pull odoo@sha256:ceb00fbc76abab55f83f92caa025115e65bcfcaa2e06de6b8f1a2d47342edd7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.1 MB (55103099 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb7335fae34c0d2a7bee1822731efaedd74bbe26dab90629602a38cbcc5d5b37`

```dockerfile
```

-	Layers:
	-	`sha256:059bb175540c24e512834604b80f5ab5c96ee4c7a73c8d01b6165f38ad67b94e`  
		Last Modified: Sat, 17 Oct 2026 00:37:57 GMT  
		Size: 55.1 MB (55075444 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c114fe47d26c79856095ff53d02f85add80ed3532ffefa3ffd125a6eff29eec6`  
		Last Modified: Sat, 17 Oct 2026 00:37:54 GMT  
		Size: 27.7 KB (27655 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:20.0` - linux; ppc64le

```console
$ docker pull odoo@sha256:b30623ea572986dc38cfcbea58414784864a73d8ae867611d8fcaa7d422330c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **816.6 MB (816585912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56fafa357d8b54ea18e71360f789596ecf39b62d9ecaf00b2700c71c5dc52529`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Fri, 02 Oct 2026 08:03:52 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:03:52 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:03:53 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:03:57 GMT
ADD file:453509713ec04b626052519f384e2b9d016f8f4971a3e6dd75d87e74e89202c9 in / 
# Fri, 02 Oct 2026 08:03:57 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 01:44:47 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Sat, 17 Oct 2026 01:44:47 GMT
SHELL [/bin/bash -xo pipefail -c]
# Sat, 17 Oct 2026 01:44:47 GMT
ENV LANG=en_US.UTF-8
# Sat, 17 Oct 2026 01:44:47 GMT
ARG TARGETARCH=ppc64le
# Sat, 17 Oct 2026 01:44:47 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Sat, 17 Oct 2026 01:45:03 GMT
# ARGS: TARGETARCH=ppc64le
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 01:50:56 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 01:50:56 GMT
ENV ODOO_VERSION=20.0
# Sat, 17 Oct 2026 01:50:56 GMT
ARG ODOO_RELEASE=20261015
# Sat, 17 Oct 2026 01:50:56 GMT
ARG ODOO_SHA=ae908bc0fa5e01d076a74a1008f07ad8869f819d
# Sat, 17 Oct 2026 01:54:50 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261015 ODOO_SHA=ae908bc0fa5e01d076a74a1008f07ad8869f819d
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Sat, 17 Oct 2026 01:54:56 GMT
COPY ./entrypoint.sh / # buildkit
# Sat, 17 Oct 2026 01:55:02 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Sat, 17 Oct 2026 01:55:07 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261015 ODOO_SHA=ae908bc0fa5e01d076a74a1008f07ad8869f819d
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Sat, 17 Oct 2026 01:55:07 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Sat, 17 Oct 2026 01:55:07 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Sat, 17 Oct 2026 01:55:07 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Sat, 17 Oct 2026 01:55:10 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Sat, 17 Oct 2026 01:55:10 GMT
USER odoo
# Sat, 17 Oct 2026 01:55:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 17 Oct 2026 01:55:10 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:d56805ebb73a9b4ab3eaf5e6375e8f25df35aba5e48ca970deb58001dac1f2ca`  
		Last Modified: Fri, 02 Oct 2026 08:36:36 GMT  
		Size: 34.4 MB (34377990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa22d41037f1b29e6bd07017dbe5885335dc1e8bc0a282df902f946042e5f073`  
		Last Modified: Sat, 17 Oct 2026 02:00:27 GMT  
		Size: 249.4 MB (249398075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e27e91439e065b4cff747d37ee9c7bc16b9bd06c82b3861e1e35e27226917ec8`  
		Last Modified: Sat, 17 Oct 2026 02:00:17 GMT  
		Size: 14.7 MB (14743400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11a1f5a296d42f380acd7c79d73a35a3430aa7c9ce866fac9daddbcce0b60bb3`  
		Last Modified: Sat, 17 Oct 2026 02:00:16 GMT  
		Size: 874.4 KB (874428 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf0958a4623576a6c250ae3dc420cfaa5ceb2a0096e5a53c82ddf8e804836683`  
		Last Modified: Sat, 17 Oct 2026 02:00:32 GMT  
		Size: 517.2 MB (517189248 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acbe2d0bae9a2c80fd3f28c212a59fd45b57c9955c3e7b4b7e11cdb53c97042c`  
		Last Modified: Sat, 17 Oct 2026 02:00:19 GMT  
		Size: 716.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b0015453a937f5c6071179c3ffa075e7d4fc1e661de739527345a360df92586`  
		Last Modified: Sat, 17 Oct 2026 02:00:19 GMT  
		Size: 567.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87609dc2559ba85cd7f785962da5326e9101f3e516ad9441aab1f6c4406c7d1f`  
		Last Modified: Sat, 17 Oct 2026 02:00:21 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:415c29a2f36050979ea98a06a944cf1d0ba694a4aeadd553d60fcc2a5c1c0add`  
		Last Modified: Sat, 17 Oct 2026 02:00:22 GMT  
		Size: 877.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:20.0` - unknown; unknown

```console
$ docker pull odoo@sha256:350f68d103be1727dbdfa07e2160be5101181fe2450995eebf47e2bda97c9e39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.1 MB (55104083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ebd46b2edd3e0c9e4a410a94e9a744a746c8da0257473273b93f557d1f8bdb8`

```dockerfile
```

-	Layers:
	-	`sha256:e77c1ba3dc892a423212122cb382ab4d6302c07a90dfb4dd1e53862648a1c3cf`  
		Last Modified: Sat, 17 Oct 2026 02:00:20 GMT  
		Size: 55.1 MB (55076530 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:30bf33ff03fce96e953ef16ac8e1e223972d2e980819c8628ada22c1e58c2363`  
		Last Modified: Sat, 17 Oct 2026 02:00:16 GMT  
		Size: 27.6 KB (27553 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:20.0-20261015`

```console
$ docker pull odoo@sha256:61e3c71b0503c5f658e604c3e340bede20b97d05f726179fa006eae50a32fd23
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `odoo:20.0-20261015` - linux; amd64

```console
$ docker pull odoo@sha256:a9e8e6b30e89eb29b2074489ad31dd285a2776f3479cce1ccedfa04722a3057b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **800.1 MB (800099290 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fb34d6be25b3e4c5c9edf4ceaa438636f820dd22b3aee2ff961f1a89e710813`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:52 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:52 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:52 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:54 GMT
ADD file:7121eb4a5ba391efb4ba9a38c532d1c5dc2d22d276f04e062f357eea36ee62c4 in / 
# Fri, 02 Oct 2026 08:10:55 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:33:46 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Sat, 17 Oct 2026 00:33:46 GMT
SHELL [/bin/bash -xo pipefail -c]
# Sat, 17 Oct 2026 00:33:46 GMT
ENV LANG=en_US.UTF-8
# Sat, 17 Oct 2026 00:33:46 GMT
ARG TARGETARCH=amd64
# Sat, 17 Oct 2026 00:33:46 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Sat, 17 Oct 2026 00:33:57 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:35:08 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:35:08 GMT
ENV ODOO_VERSION=20.0
# Sat, 17 Oct 2026 00:35:08 GMT
ARG ODOO_RELEASE=20261015
# Sat, 17 Oct 2026 00:35:08 GMT
ARG ODOO_SHA=ae908bc0fa5e01d076a74a1008f07ad8869f819d
# Sat, 17 Oct 2026 00:36:20 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261015 ODOO_SHA=ae908bc0fa5e01d076a74a1008f07ad8869f819d
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Sat, 17 Oct 2026 00:36:20 GMT
COPY ./entrypoint.sh / # buildkit
# Sat, 17 Oct 2026 00:36:21 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Sat, 17 Oct 2026 00:36:21 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261015 ODOO_SHA=ae908bc0fa5e01d076a74a1008f07ad8869f819d
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Sat, 17 Oct 2026 00:36:21 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Sat, 17 Oct 2026 00:36:21 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Sat, 17 Oct 2026 00:36:21 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Sat, 17 Oct 2026 00:36:21 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Sat, 17 Oct 2026 00:36:21 GMT
USER odoo
# Sat, 17 Oct 2026 00:36:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 17 Oct 2026 00:36:21 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:f2b4ef06ff01a67d4bed7657a4ae379a7d07934b7c3e743454a22a0d5275fb2b`  
		Last Modified: Fri, 02 Oct 2026 08:36:14 GMT  
		Size: 29.8 MB (29765758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc41e60165fd8bc470aea073c070850ced7cf1c11daa43aa95a8df9610b3d107`  
		Last Modified: Sat, 17 Oct 2026 00:38:14 GMT  
		Size: 238.7 MB (238715323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c55a1bbb28495705bc1ceb29d23572acb75b67512f9afd8b3e487dc1cea436de`  
		Last Modified: Sat, 17 Oct 2026 00:38:06 GMT  
		Size: 14.2 MB (14226218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d46699a0e3fe9b357627406515ba593824f78063db732fbb40d2083e1364007a`  
		Last Modified: Sat, 17 Oct 2026 00:38:05 GMT  
		Size: 872.7 KB (872705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a876f5146b96a08a0c3a8f39628e2828c5c5af50fc47cbd740fcbdb81afeaee`  
		Last Modified: Sat, 17 Oct 2026 00:38:19 GMT  
		Size: 516.5 MB (516516518 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b518ce5e4f42b57786c9407135a460f9266a9ea0a6eeb14b5eecdb29a3f1b93`  
		Last Modified: Sat, 17 Oct 2026 00:38:06 GMT  
		Size: 718.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4725efff51704784047103e5b55a159c1e0a9a43a0f06d2acdf3556d593c3526`  
		Last Modified: Sat, 17 Oct 2026 00:38:07 GMT  
		Size: 566.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59438c5a47ded6c17539f49c0bad44c9fffaff13bb8596b4530d3ce0357d9ee4`  
		Last Modified: Sat, 17 Oct 2026 00:38:08 GMT  
		Size: 606.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12a6541bf2a8f04b9d4292bb680739abfad21a9a9497fa5d5b5eb1b9531594db`  
		Last Modified: Sat, 17 Oct 2026 00:38:09 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:20.0-20261015` - unknown; unknown

```console
$ docker pull odoo@sha256:f86f183263aea4e917f2820d57c05aff571382c89de490b2ed36d1eac22fc2f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.1 MB (55095651 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a3c52d62401cdd5e0fa11d93cfe7a3fb20f2930166a6c6bfc9b8fe2f80d52f5`

```dockerfile
```

-	Layers:
	-	`sha256:9ae8e95c20bd08f1dfa8a4a781e0a943497043ac41f3eb868ced635dc5354f73`  
		Last Modified: Sat, 17 Oct 2026 00:38:08 GMT  
		Size: 55.1 MB (55068160 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d69cb87ebcd8f5dbf8095091df65e4cc4dfdd21d986afffd164897a74f618d5a`  
		Last Modified: Sat, 17 Oct 2026 00:38:04 GMT  
		Size: 27.5 KB (27491 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:20.0-20261015` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:0a819993865ef825a04571b66f9487d0a49ee529320347fd3d534bb5bd5b8af5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **796.6 MB (796561661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efe708767b32174fea1859a576cab3e8962d5567492acb5000ce9cfc3cf4ae7f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:23 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:23 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:23 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:25 GMT
ADD file:41d2e63ceb0b90641106340bc81ee11125254db51ee5a9d49e666bcf0388814f in / 
# Fri, 02 Oct 2026 08:10:26 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:33:30 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Sat, 17 Oct 2026 00:33:30 GMT
SHELL [/bin/bash -xo pipefail -c]
# Sat, 17 Oct 2026 00:33:30 GMT
ENV LANG=en_US.UTF-8
# Sat, 17 Oct 2026 00:33:30 GMT
ARG TARGETARCH=arm64
# Sat, 17 Oct 2026 00:33:30 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Sat, 17 Oct 2026 00:33:40 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:34:42 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:34:42 GMT
ENV ODOO_VERSION=20.0
# Sat, 17 Oct 2026 00:34:42 GMT
ARG ODOO_RELEASE=20261015
# Sat, 17 Oct 2026 00:34:42 GMT
ARG ODOO_SHA=ae908bc0fa5e01d076a74a1008f07ad8869f819d
# Sat, 17 Oct 2026 00:35:56 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261015 ODOO_SHA=ae908bc0fa5e01d076a74a1008f07ad8869f819d
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Sat, 17 Oct 2026 00:35:57 GMT
COPY ./entrypoint.sh / # buildkit
# Sat, 17 Oct 2026 00:35:57 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Sat, 17 Oct 2026 00:35:57 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261015 ODOO_SHA=ae908bc0fa5e01d076a74a1008f07ad8869f819d
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Sat, 17 Oct 2026 00:35:57 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Sat, 17 Oct 2026 00:35:57 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Sat, 17 Oct 2026 00:35:57 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Sat, 17 Oct 2026 00:35:57 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Sat, 17 Oct 2026 00:35:57 GMT
USER odoo
# Sat, 17 Oct 2026 00:35:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 17 Oct 2026 00:35:57 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:d5aec63251bb323f816a0f4b8a554bd84e478466a9ed1068daef07368328e9a3`  
		Last Modified: Fri, 02 Oct 2026 08:36:21 GMT  
		Size: 28.9 MB (28939761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4295fed790a3ca2e9f87b48f7d8d4fb01c61c5c895a937c484838393bed28bbc`  
		Last Modified: Sat, 17 Oct 2026 00:38:03 GMT  
		Size: 236.2 MB (236186171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33fd5beca4c9462c1fbdcf32fbd0b77979c9407129b0a7fec6e33578384bf765`  
		Last Modified: Sat, 17 Oct 2026 00:37:55 GMT  
		Size: 14.2 MB (14197420 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91fd92931044cd0127e250f2cca6848ee9dc748936c335f390ec79a18a4a1148`  
		Last Modified: Sat, 17 Oct 2026 00:37:54 GMT  
		Size: 872.7 KB (872653 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c609709e9df5cb98212bd4e3d1d7fb374bed5bb013db0ede5b889e261362a2ef`  
		Last Modified: Sat, 17 Oct 2026 00:38:08 GMT  
		Size: 516.4 MB (516362895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2923ac13a53be2d01a3fc0d1574c0da2fd608a77d3565c060697bee280ebfef`  
		Last Modified: Sat, 17 Oct 2026 00:37:56 GMT  
		Size: 716.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95af7b257259f9bf03e0197d05f1d179f1ab2056b627643f3d9e2cfba13d7b9e`  
		Last Modified: Sat, 17 Oct 2026 00:37:57 GMT  
		Size: 564.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac87ea72eeac048f199843087cd8f0f26d7f1a9db031238ad74fec58ba614bf3`  
		Last Modified: Sat, 17 Oct 2026 00:37:57 GMT  
		Size: 604.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6141fccb6ebffbd564193ebcd5cd09cdfacf6c0511a9da9ebd08685f9d68093`  
		Last Modified: Sat, 17 Oct 2026 00:37:58 GMT  
		Size: 877.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:20.0-20261015` - unknown; unknown

```console
$ docker pull odoo@sha256:ceb00fbc76abab55f83f92caa025115e65bcfcaa2e06de6b8f1a2d47342edd7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.1 MB (55103099 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb7335fae34c0d2a7bee1822731efaedd74bbe26dab90629602a38cbcc5d5b37`

```dockerfile
```

-	Layers:
	-	`sha256:059bb175540c24e512834604b80f5ab5c96ee4c7a73c8d01b6165f38ad67b94e`  
		Last Modified: Sat, 17 Oct 2026 00:37:57 GMT  
		Size: 55.1 MB (55075444 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c114fe47d26c79856095ff53d02f85add80ed3532ffefa3ffd125a6eff29eec6`  
		Last Modified: Sat, 17 Oct 2026 00:37:54 GMT  
		Size: 27.7 KB (27655 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:20.0-20261015` - linux; ppc64le

```console
$ docker pull odoo@sha256:b30623ea572986dc38cfcbea58414784864a73d8ae867611d8fcaa7d422330c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **816.6 MB (816585912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56fafa357d8b54ea18e71360f789596ecf39b62d9ecaf00b2700c71c5dc52529`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Fri, 02 Oct 2026 08:03:52 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:03:52 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:03:53 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:03:57 GMT
ADD file:453509713ec04b626052519f384e2b9d016f8f4971a3e6dd75d87e74e89202c9 in / 
# Fri, 02 Oct 2026 08:03:57 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 01:44:47 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Sat, 17 Oct 2026 01:44:47 GMT
SHELL [/bin/bash -xo pipefail -c]
# Sat, 17 Oct 2026 01:44:47 GMT
ENV LANG=en_US.UTF-8
# Sat, 17 Oct 2026 01:44:47 GMT
ARG TARGETARCH=ppc64le
# Sat, 17 Oct 2026 01:44:47 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Sat, 17 Oct 2026 01:45:03 GMT
# ARGS: TARGETARCH=ppc64le
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 01:50:56 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 01:50:56 GMT
ENV ODOO_VERSION=20.0
# Sat, 17 Oct 2026 01:50:56 GMT
ARG ODOO_RELEASE=20261015
# Sat, 17 Oct 2026 01:50:56 GMT
ARG ODOO_SHA=ae908bc0fa5e01d076a74a1008f07ad8869f819d
# Sat, 17 Oct 2026 01:54:50 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261015 ODOO_SHA=ae908bc0fa5e01d076a74a1008f07ad8869f819d
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Sat, 17 Oct 2026 01:54:56 GMT
COPY ./entrypoint.sh / # buildkit
# Sat, 17 Oct 2026 01:55:02 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Sat, 17 Oct 2026 01:55:07 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261015 ODOO_SHA=ae908bc0fa5e01d076a74a1008f07ad8869f819d
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Sat, 17 Oct 2026 01:55:07 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Sat, 17 Oct 2026 01:55:07 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Sat, 17 Oct 2026 01:55:07 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Sat, 17 Oct 2026 01:55:10 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Sat, 17 Oct 2026 01:55:10 GMT
USER odoo
# Sat, 17 Oct 2026 01:55:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 17 Oct 2026 01:55:10 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:d56805ebb73a9b4ab3eaf5e6375e8f25df35aba5e48ca970deb58001dac1f2ca`  
		Last Modified: Fri, 02 Oct 2026 08:36:36 GMT  
		Size: 34.4 MB (34377990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa22d41037f1b29e6bd07017dbe5885335dc1e8bc0a282df902f946042e5f073`  
		Last Modified: Sat, 17 Oct 2026 02:00:27 GMT  
		Size: 249.4 MB (249398075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e27e91439e065b4cff747d37ee9c7bc16b9bd06c82b3861e1e35e27226917ec8`  
		Last Modified: Sat, 17 Oct 2026 02:00:17 GMT  
		Size: 14.7 MB (14743400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11a1f5a296d42f380acd7c79d73a35a3430aa7c9ce866fac9daddbcce0b60bb3`  
		Last Modified: Sat, 17 Oct 2026 02:00:16 GMT  
		Size: 874.4 KB (874428 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf0958a4623576a6c250ae3dc420cfaa5ceb2a0096e5a53c82ddf8e804836683`  
		Last Modified: Sat, 17 Oct 2026 02:00:32 GMT  
		Size: 517.2 MB (517189248 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acbe2d0bae9a2c80fd3f28c212a59fd45b57c9955c3e7b4b7e11cdb53c97042c`  
		Last Modified: Sat, 17 Oct 2026 02:00:19 GMT  
		Size: 716.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b0015453a937f5c6071179c3ffa075e7d4fc1e661de739527345a360df92586`  
		Last Modified: Sat, 17 Oct 2026 02:00:19 GMT  
		Size: 567.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87609dc2559ba85cd7f785962da5326e9101f3e516ad9441aab1f6c4406c7d1f`  
		Last Modified: Sat, 17 Oct 2026 02:00:21 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:415c29a2f36050979ea98a06a944cf1d0ba694a4aeadd553d60fcc2a5c1c0add`  
		Last Modified: Sat, 17 Oct 2026 02:00:22 GMT  
		Size: 877.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:20.0-20261015` - unknown; unknown

```console
$ docker pull odoo@sha256:350f68d103be1727dbdfa07e2160be5101181fe2450995eebf47e2bda97c9e39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.1 MB (55104083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ebd46b2edd3e0c9e4a410a94e9a744a746c8da0257473273b93f557d1f8bdb8`

```dockerfile
```

-	Layers:
	-	`sha256:e77c1ba3dc892a423212122cb382ab4d6302c07a90dfb4dd1e53862648a1c3cf`  
		Last Modified: Sat, 17 Oct 2026 02:00:20 GMT  
		Size: 55.1 MB (55076530 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:30bf33ff03fce96e953ef16ac8e1e223972d2e980819c8628ada22c1e58c2363`  
		Last Modified: Sat, 17 Oct 2026 02:00:16 GMT  
		Size: 27.6 KB (27553 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:latest`

```console
$ docker pull odoo@sha256:61e3c71b0503c5f658e604c3e340bede20b97d05f726179fa006eae50a32fd23
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
$ docker pull odoo@sha256:a9e8e6b30e89eb29b2074489ad31dd285a2776f3479cce1ccedfa04722a3057b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **800.1 MB (800099290 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fb34d6be25b3e4c5c9edf4ceaa438636f820dd22b3aee2ff961f1a89e710813`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:52 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:52 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:52 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:54 GMT
ADD file:7121eb4a5ba391efb4ba9a38c532d1c5dc2d22d276f04e062f357eea36ee62c4 in / 
# Fri, 02 Oct 2026 08:10:55 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:33:46 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Sat, 17 Oct 2026 00:33:46 GMT
SHELL [/bin/bash -xo pipefail -c]
# Sat, 17 Oct 2026 00:33:46 GMT
ENV LANG=en_US.UTF-8
# Sat, 17 Oct 2026 00:33:46 GMT
ARG TARGETARCH=amd64
# Sat, 17 Oct 2026 00:33:46 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Sat, 17 Oct 2026 00:33:57 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:35:08 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:35:08 GMT
ENV ODOO_VERSION=20.0
# Sat, 17 Oct 2026 00:35:08 GMT
ARG ODOO_RELEASE=20261015
# Sat, 17 Oct 2026 00:35:08 GMT
ARG ODOO_SHA=ae908bc0fa5e01d076a74a1008f07ad8869f819d
# Sat, 17 Oct 2026 00:36:20 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261015 ODOO_SHA=ae908bc0fa5e01d076a74a1008f07ad8869f819d
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Sat, 17 Oct 2026 00:36:20 GMT
COPY ./entrypoint.sh / # buildkit
# Sat, 17 Oct 2026 00:36:21 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Sat, 17 Oct 2026 00:36:21 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261015 ODOO_SHA=ae908bc0fa5e01d076a74a1008f07ad8869f819d
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Sat, 17 Oct 2026 00:36:21 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Sat, 17 Oct 2026 00:36:21 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Sat, 17 Oct 2026 00:36:21 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Sat, 17 Oct 2026 00:36:21 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Sat, 17 Oct 2026 00:36:21 GMT
USER odoo
# Sat, 17 Oct 2026 00:36:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 17 Oct 2026 00:36:21 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:f2b4ef06ff01a67d4bed7657a4ae379a7d07934b7c3e743454a22a0d5275fb2b`  
		Last Modified: Fri, 02 Oct 2026 08:36:14 GMT  
		Size: 29.8 MB (29765758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc41e60165fd8bc470aea073c070850ced7cf1c11daa43aa95a8df9610b3d107`  
		Last Modified: Sat, 17 Oct 2026 00:38:14 GMT  
		Size: 238.7 MB (238715323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c55a1bbb28495705bc1ceb29d23572acb75b67512f9afd8b3e487dc1cea436de`  
		Last Modified: Sat, 17 Oct 2026 00:38:06 GMT  
		Size: 14.2 MB (14226218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d46699a0e3fe9b357627406515ba593824f78063db732fbb40d2083e1364007a`  
		Last Modified: Sat, 17 Oct 2026 00:38:05 GMT  
		Size: 872.7 KB (872705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a876f5146b96a08a0c3a8f39628e2828c5c5af50fc47cbd740fcbdb81afeaee`  
		Last Modified: Sat, 17 Oct 2026 00:38:19 GMT  
		Size: 516.5 MB (516516518 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b518ce5e4f42b57786c9407135a460f9266a9ea0a6eeb14b5eecdb29a3f1b93`  
		Last Modified: Sat, 17 Oct 2026 00:38:06 GMT  
		Size: 718.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4725efff51704784047103e5b55a159c1e0a9a43a0f06d2acdf3556d593c3526`  
		Last Modified: Sat, 17 Oct 2026 00:38:07 GMT  
		Size: 566.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59438c5a47ded6c17539f49c0bad44c9fffaff13bb8596b4530d3ce0357d9ee4`  
		Last Modified: Sat, 17 Oct 2026 00:38:08 GMT  
		Size: 606.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12a6541bf2a8f04b9d4292bb680739abfad21a9a9497fa5d5b5eb1b9531594db`  
		Last Modified: Sat, 17 Oct 2026 00:38:09 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:latest` - unknown; unknown

```console
$ docker pull odoo@sha256:f86f183263aea4e917f2820d57c05aff571382c89de490b2ed36d1eac22fc2f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.1 MB (55095651 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a3c52d62401cdd5e0fa11d93cfe7a3fb20f2930166a6c6bfc9b8fe2f80d52f5`

```dockerfile
```

-	Layers:
	-	`sha256:9ae8e95c20bd08f1dfa8a4a781e0a943497043ac41f3eb868ced635dc5354f73`  
		Last Modified: Sat, 17 Oct 2026 00:38:08 GMT  
		Size: 55.1 MB (55068160 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d69cb87ebcd8f5dbf8095091df65e4cc4dfdd21d986afffd164897a74f618d5a`  
		Last Modified: Sat, 17 Oct 2026 00:38:04 GMT  
		Size: 27.5 KB (27491 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:latest` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:0a819993865ef825a04571b66f9487d0a49ee529320347fd3d534bb5bd5b8af5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **796.6 MB (796561661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efe708767b32174fea1859a576cab3e8962d5567492acb5000ce9cfc3cf4ae7f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:23 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:23 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:23 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:25 GMT
ADD file:41d2e63ceb0b90641106340bc81ee11125254db51ee5a9d49e666bcf0388814f in / 
# Fri, 02 Oct 2026 08:10:26 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:33:30 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Sat, 17 Oct 2026 00:33:30 GMT
SHELL [/bin/bash -xo pipefail -c]
# Sat, 17 Oct 2026 00:33:30 GMT
ENV LANG=en_US.UTF-8
# Sat, 17 Oct 2026 00:33:30 GMT
ARG TARGETARCH=arm64
# Sat, 17 Oct 2026 00:33:30 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Sat, 17 Oct 2026 00:33:40 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:34:42 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:34:42 GMT
ENV ODOO_VERSION=20.0
# Sat, 17 Oct 2026 00:34:42 GMT
ARG ODOO_RELEASE=20261015
# Sat, 17 Oct 2026 00:34:42 GMT
ARG ODOO_SHA=ae908bc0fa5e01d076a74a1008f07ad8869f819d
# Sat, 17 Oct 2026 00:35:56 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261015 ODOO_SHA=ae908bc0fa5e01d076a74a1008f07ad8869f819d
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Sat, 17 Oct 2026 00:35:57 GMT
COPY ./entrypoint.sh / # buildkit
# Sat, 17 Oct 2026 00:35:57 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Sat, 17 Oct 2026 00:35:57 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261015 ODOO_SHA=ae908bc0fa5e01d076a74a1008f07ad8869f819d
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Sat, 17 Oct 2026 00:35:57 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Sat, 17 Oct 2026 00:35:57 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Sat, 17 Oct 2026 00:35:57 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Sat, 17 Oct 2026 00:35:57 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Sat, 17 Oct 2026 00:35:57 GMT
USER odoo
# Sat, 17 Oct 2026 00:35:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 17 Oct 2026 00:35:57 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:d5aec63251bb323f816a0f4b8a554bd84e478466a9ed1068daef07368328e9a3`  
		Last Modified: Fri, 02 Oct 2026 08:36:21 GMT  
		Size: 28.9 MB (28939761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4295fed790a3ca2e9f87b48f7d8d4fb01c61c5c895a937c484838393bed28bbc`  
		Last Modified: Sat, 17 Oct 2026 00:38:03 GMT  
		Size: 236.2 MB (236186171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33fd5beca4c9462c1fbdcf32fbd0b77979c9407129b0a7fec6e33578384bf765`  
		Last Modified: Sat, 17 Oct 2026 00:37:55 GMT  
		Size: 14.2 MB (14197420 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91fd92931044cd0127e250f2cca6848ee9dc748936c335f390ec79a18a4a1148`  
		Last Modified: Sat, 17 Oct 2026 00:37:54 GMT  
		Size: 872.7 KB (872653 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c609709e9df5cb98212bd4e3d1d7fb374bed5bb013db0ede5b889e261362a2ef`  
		Last Modified: Sat, 17 Oct 2026 00:38:08 GMT  
		Size: 516.4 MB (516362895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2923ac13a53be2d01a3fc0d1574c0da2fd608a77d3565c060697bee280ebfef`  
		Last Modified: Sat, 17 Oct 2026 00:37:56 GMT  
		Size: 716.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95af7b257259f9bf03e0197d05f1d179f1ab2056b627643f3d9e2cfba13d7b9e`  
		Last Modified: Sat, 17 Oct 2026 00:37:57 GMT  
		Size: 564.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac87ea72eeac048f199843087cd8f0f26d7f1a9db031238ad74fec58ba614bf3`  
		Last Modified: Sat, 17 Oct 2026 00:37:57 GMT  
		Size: 604.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6141fccb6ebffbd564193ebcd5cd09cdfacf6c0511a9da9ebd08685f9d68093`  
		Last Modified: Sat, 17 Oct 2026 00:37:58 GMT  
		Size: 877.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:latest` - unknown; unknown

```console
$ docker pull odoo@sha256:ceb00fbc76abab55f83f92caa025115e65bcfcaa2e06de6b8f1a2d47342edd7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.1 MB (55103099 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb7335fae34c0d2a7bee1822731efaedd74bbe26dab90629602a38cbcc5d5b37`

```dockerfile
```

-	Layers:
	-	`sha256:059bb175540c24e512834604b80f5ab5c96ee4c7a73c8d01b6165f38ad67b94e`  
		Last Modified: Sat, 17 Oct 2026 00:37:57 GMT  
		Size: 55.1 MB (55075444 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c114fe47d26c79856095ff53d02f85add80ed3532ffefa3ffd125a6eff29eec6`  
		Last Modified: Sat, 17 Oct 2026 00:37:54 GMT  
		Size: 27.7 KB (27655 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:latest` - linux; ppc64le

```console
$ docker pull odoo@sha256:b30623ea572986dc38cfcbea58414784864a73d8ae867611d8fcaa7d422330c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **816.6 MB (816585912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56fafa357d8b54ea18e71360f789596ecf39b62d9ecaf00b2700c71c5dc52529`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Fri, 02 Oct 2026 08:03:52 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:03:52 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:03:53 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:03:57 GMT
ADD file:453509713ec04b626052519f384e2b9d016f8f4971a3e6dd75d87e74e89202c9 in / 
# Fri, 02 Oct 2026 08:03:57 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 01:44:47 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Sat, 17 Oct 2026 01:44:47 GMT
SHELL [/bin/bash -xo pipefail -c]
# Sat, 17 Oct 2026 01:44:47 GMT
ENV LANG=en_US.UTF-8
# Sat, 17 Oct 2026 01:44:47 GMT
ARG TARGETARCH=ppc64le
# Sat, 17 Oct 2026 01:44:47 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Sat, 17 Oct 2026 01:45:03 GMT
# ARGS: TARGETARCH=ppc64le
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 01:50:56 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 01:50:56 GMT
ENV ODOO_VERSION=20.0
# Sat, 17 Oct 2026 01:50:56 GMT
ARG ODOO_RELEASE=20261015
# Sat, 17 Oct 2026 01:50:56 GMT
ARG ODOO_SHA=ae908bc0fa5e01d076a74a1008f07ad8869f819d
# Sat, 17 Oct 2026 01:54:50 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261015 ODOO_SHA=ae908bc0fa5e01d076a74a1008f07ad8869f819d
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Sat, 17 Oct 2026 01:54:56 GMT
COPY ./entrypoint.sh / # buildkit
# Sat, 17 Oct 2026 01:55:02 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Sat, 17 Oct 2026 01:55:07 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261015 ODOO_SHA=ae908bc0fa5e01d076a74a1008f07ad8869f819d
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Sat, 17 Oct 2026 01:55:07 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Sat, 17 Oct 2026 01:55:07 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Sat, 17 Oct 2026 01:55:07 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Sat, 17 Oct 2026 01:55:10 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Sat, 17 Oct 2026 01:55:10 GMT
USER odoo
# Sat, 17 Oct 2026 01:55:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 17 Oct 2026 01:55:10 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:d56805ebb73a9b4ab3eaf5e6375e8f25df35aba5e48ca970deb58001dac1f2ca`  
		Last Modified: Fri, 02 Oct 2026 08:36:36 GMT  
		Size: 34.4 MB (34377990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa22d41037f1b29e6bd07017dbe5885335dc1e8bc0a282df902f946042e5f073`  
		Last Modified: Sat, 17 Oct 2026 02:00:27 GMT  
		Size: 249.4 MB (249398075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e27e91439e065b4cff747d37ee9c7bc16b9bd06c82b3861e1e35e27226917ec8`  
		Last Modified: Sat, 17 Oct 2026 02:00:17 GMT  
		Size: 14.7 MB (14743400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11a1f5a296d42f380acd7c79d73a35a3430aa7c9ce866fac9daddbcce0b60bb3`  
		Last Modified: Sat, 17 Oct 2026 02:00:16 GMT  
		Size: 874.4 KB (874428 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf0958a4623576a6c250ae3dc420cfaa5ceb2a0096e5a53c82ddf8e804836683`  
		Last Modified: Sat, 17 Oct 2026 02:00:32 GMT  
		Size: 517.2 MB (517189248 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acbe2d0bae9a2c80fd3f28c212a59fd45b57c9955c3e7b4b7e11cdb53c97042c`  
		Last Modified: Sat, 17 Oct 2026 02:00:19 GMT  
		Size: 716.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b0015453a937f5c6071179c3ffa075e7d4fc1e661de739527345a360df92586`  
		Last Modified: Sat, 17 Oct 2026 02:00:19 GMT  
		Size: 567.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87609dc2559ba85cd7f785962da5326e9101f3e516ad9441aab1f6c4406c7d1f`  
		Last Modified: Sat, 17 Oct 2026 02:00:21 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:415c29a2f36050979ea98a06a944cf1d0ba694a4aeadd553d60fcc2a5c1c0add`  
		Last Modified: Sat, 17 Oct 2026 02:00:22 GMT  
		Size: 877.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:latest` - unknown; unknown

```console
$ docker pull odoo@sha256:350f68d103be1727dbdfa07e2160be5101181fe2450995eebf47e2bda97c9e39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.1 MB (55104083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ebd46b2edd3e0c9e4a410a94e9a744a746c8da0257473273b93f557d1f8bdb8`

```dockerfile
```

-	Layers:
	-	`sha256:e77c1ba3dc892a423212122cb382ab4d6302c07a90dfb4dd1e53862648a1c3cf`  
		Last Modified: Sat, 17 Oct 2026 02:00:20 GMT  
		Size: 55.1 MB (55076530 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:30bf33ff03fce96e953ef16ac8e1e223972d2e980819c8628ada22c1e58c2363`  
		Last Modified: Sat, 17 Oct 2026 02:00:16 GMT  
		Size: 27.6 KB (27553 bytes)  
		MIME: application/vnd.in-toto+json
