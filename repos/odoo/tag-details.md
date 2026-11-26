<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `odoo`

-	[`odoo:18`](#odoo18)
-	[`odoo:18.0`](#odoo180)
-	[`odoo:18.0-20261124`](#odoo180-20261124)
-	[`odoo:19`](#odoo19)
-	[`odoo:19.0`](#odoo190)
-	[`odoo:19.0-20261123`](#odoo190-20261123)
-	[`odoo:20`](#odoo20)
-	[`odoo:20.0`](#odoo200)
-	[`odoo:20.0-20261123`](#odoo200-20261123)
-	[`odoo:latest`](#odoolatest)

## `odoo:18`

```console
$ docker pull odoo@sha256:364b17dfcf0019c9e5c7e1754a56b36c748f2907b38bc2209ce0d3d88e371c35
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
$ docker pull odoo@sha256:5cec40a73e3f676742b9a01c83f74a8eedc7bb66860d078a48f88ddce4f6e2d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **676.3 MB (676289430 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f53e5ed6ae2606fd9289087055391330c24af069a92686c9a7d2e954aaad7ca`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Tue, 10 Nov 2026 18:35:15 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:35:15 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:35:15 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:35:17 GMT
ADD file:54dafd97985c3ec227e2c96be9290657cf2ab456885b5fc8a24c9278bca65e60 in / 
# Tue, 10 Nov 2026 18:35:18 GMT
CMD ["/bin/bash"]
# Tue, 24 Nov 2026 21:10:50 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 24 Nov 2026 21:10:50 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 24 Nov 2026 21:10:50 GMT
ENV LANG=en_US.UTF-8
# Tue, 24 Nov 2026 21:10:50 GMT
ARG TARGETARCH=amd64
# Tue, 24 Nov 2026 21:10:50 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 24 Nov 2026 21:10:55 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 21:11:58 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 21:11:58 GMT
ENV ODOO_VERSION=18.0
# Tue, 24 Nov 2026 21:11:58 GMT
ARG ODOO_RELEASE=20261124
# Tue, 24 Nov 2026 21:11:58 GMT
ARG ODOO_SHA=e51908de8cf1e8f692c892db477761db5da4b5d1
# Tue, 24 Nov 2026 21:12:52 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261124 ODOO_SHA=e51908de8cf1e8f692c892db477761db5da4b5d1
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 24 Nov 2026 21:12:53 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 24 Nov 2026 21:12:53 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 24 Nov 2026 21:12:53 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261124 ODOO_SHA=e51908de8cf1e8f692c892db477761db5da4b5d1
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 24 Nov 2026 21:12:53 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 24 Nov 2026 21:12:53 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 24 Nov 2026 21:12:53 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 24 Nov 2026 21:12:53 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 24 Nov 2026 21:12:53 GMT
USER odoo
# Tue, 24 Nov 2026 21:12:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 24 Nov 2026 21:12:53 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:8e8df94085bf9af8de500d2042195f1819a4c381b7f3be2a6b920cab65039050`  
		Last Modified: Tue, 10 Nov 2026 20:09:19 GMT  
		Size: 29.8 MB (29793297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74549f23a2d8c4b519c9e6152a4258d7bb052f70e2c95622843bded787cb21fb`  
		Last Modified: Tue, 24 Nov 2026 21:14:17 GMT  
		Size: 238.7 MB (238728922 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fba9e685d2273c83e5a9c91e43ddabea0b2a7c2f71e54ec130ad3cf4139797e`  
		Last Modified: Tue, 24 Nov 2026 21:14:09 GMT  
		Size: 14.2 MB (14228399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8fbf3ecb1100f0ddaf8bad8ed3867b025a2aaebdf3ae5cc83592a08d83c1284`  
		Last Modified: Tue, 24 Nov 2026 21:14:08 GMT  
		Size: 879.6 KB (879571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4b432fbcd2e2679e554e4bd8b5b0189f2a8f0a6fe0a645bde3f4db62f159e71`  
		Last Modified: Tue, 24 Nov 2026 21:14:19 GMT  
		Size: 392.7 MB (392656442 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88a50ecc6736ba3e9d38f686c083afcdf632eabc2b4624795fd5070bc67fab3f`  
		Last Modified: Tue, 24 Nov 2026 21:14:09 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:826d57ab054b25185a7287f9d8ac09e809b3b1de447023c39680c9628d3ba5d2`  
		Last Modified: Tue, 24 Nov 2026 21:14:10 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b2298a2880ef2bc576e70dd894d32b4426080b3152638043d42edc7b578d646`  
		Last Modified: Tue, 24 Nov 2026 21:14:10 GMT  
		Size: 596.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:874b22a71cd8aa092c8b31a661039a502616c40f195ecca2cc50fb2d7f8d5892`  
		Last Modified: Tue, 24 Nov 2026 21:14:12 GMT  
		Size: 880.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18` - unknown; unknown

```console
$ docker pull odoo@sha256:e78357d8b281cd9acc7f85c094fcedd843ce95beecaeeb446cc18b2b7add11a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.1 MB (44067377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9e61cc32591582c5c5f48339612112458dcbf1e6979763d077d838cbeb76c29`

```dockerfile
```

-	Layers:
	-	`sha256:d1da39bea1bc69a939cb73683b3a42df13f5f5561ecc146a77e72100e22844af`  
		Last Modified: Tue, 24 Nov 2026 21:14:11 GMT  
		Size: 44.0 MB (44040180 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:66d6ad455279258d8cbd19a9905b180f73937cfb6b51a08978ea1dbbc2e0093b`  
		Last Modified: Tue, 24 Nov 2026 21:14:08 GMT  
		Size: 27.2 KB (27197 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:18` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:e6a7a4e8d1a8cd0dfaa2c7a680268f1b99d1ff4ecbbf63b0823ed6268876a6d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **672.8 MB (672778774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:100c93a5e5feba62d0cec93b5446ac2c5bcd880d7a6eda6be10e4587d7c1c2df`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Tue, 10 Nov 2026 18:31:19 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:31:19 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:31:19 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:31:22 GMT
ADD file:2a6d7d3511af5b48de2ccdad66ef2aa7544bf264ce928935ad4469c76a66169b in / 
# Tue, 10 Nov 2026 18:31:22 GMT
CMD ["/bin/bash"]
# Tue, 24 Nov 2026 21:12:04 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 24 Nov 2026 21:12:04 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 24 Nov 2026 21:12:04 GMT
ENV LANG=en_US.UTF-8
# Tue, 24 Nov 2026 21:12:04 GMT
ARG TARGETARCH=arm64
# Tue, 24 Nov 2026 21:12:04 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 24 Nov 2026 21:12:10 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 21:13:05 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 21:13:05 GMT
ENV ODOO_VERSION=18.0
# Tue, 24 Nov 2026 21:13:05 GMT
ARG ODOO_RELEASE=20261124
# Tue, 24 Nov 2026 21:13:05 GMT
ARG ODOO_SHA=e51908de8cf1e8f692c892db477761db5da4b5d1
# Tue, 24 Nov 2026 21:14:06 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261124 ODOO_SHA=e51908de8cf1e8f692c892db477761db5da4b5d1
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 24 Nov 2026 21:14:06 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 24 Nov 2026 21:14:06 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 24 Nov 2026 21:14:06 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261124 ODOO_SHA=e51908de8cf1e8f692c892db477761db5da4b5d1
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 24 Nov 2026 21:14:06 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 24 Nov 2026 21:14:06 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 24 Nov 2026 21:14:06 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 24 Nov 2026 21:14:06 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 24 Nov 2026 21:14:06 GMT
USER odoo
# Tue, 24 Nov 2026 21:14:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 24 Nov 2026 21:14:06 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:6542099f24f28e8effaa18375a01b636d7898b6807da55b7c2d7a7a8d9eb103c`  
		Last Modified: Tue, 10 Nov 2026 20:09:25 GMT  
		Size: 29.0 MB (28965318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ced23a41b66096b095f4b0a1781b2c1b2e7bc13a91b144fecccc6636954204e8`  
		Last Modified: Tue, 24 Nov 2026 21:15:46 GMT  
		Size: 236.2 MB (236196980 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:057ae4546287d6df0c50cc02a1ab3d2be709b25d37822cc6162a386eb27b1fff`  
		Last Modified: Tue, 24 Nov 2026 21:15:38 GMT  
		Size: 14.2 MB (14206238 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:611f81a74e3cbb3a10df348e2e68cd38edccf53a6e421be0c5dbd23bf574a75a`  
		Last Modified: Tue, 24 Nov 2026 21:15:37 GMT  
		Size: 879.8 KB (879777 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f40de3c259a6c87fe452a4fbbbd377f0fab7dac7388ed314c1aa6c185a2fc21`  
		Last Modified: Tue, 24 Nov 2026 21:15:49 GMT  
		Size: 392.5 MB (392527662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8431943b89e88bdcfdcdaf3c31ba315e8cf5f42d0f5fa413db9c8614a691299`  
		Last Modified: Tue, 24 Nov 2026 21:15:38 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5e2d2698dc36d7707b336faa2d719a79856bf2550bf95ff335d3a424a35697e`  
		Last Modified: Tue, 24 Nov 2026 21:15:40 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0a7c85273763e1cc4fcb5a8905cfe1cf4139e9c013b282fd8b6d196d0cbd557`  
		Last Modified: Tue, 24 Nov 2026 21:15:40 GMT  
		Size: 596.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e0566245c682bff7bd1f0af7f0c9732dda7f3fa1b5279874cf629286e5a04fc`  
		Last Modified: Tue, 24 Nov 2026 21:15:41 GMT  
		Size: 880.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18` - unknown; unknown

```console
$ docker pull odoo@sha256:a432c46caef2e26f4ccd53ae59797c41d781cec92c2264dd01964b4ba9ee09f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.1 MB (44074801 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c550a82ae0465b65bc254183820ea8ff1fea8160b7f5fc8edcc2a4a0964a9a50`

```dockerfile
```

-	Layers:
	-	`sha256:f1a7e1b0a3c1fd982a9ade542deb175c90fd6c9a9d3b79253a611cdd14e89b3a`  
		Last Modified: Tue, 24 Nov 2026 21:15:40 GMT  
		Size: 44.0 MB (44047452 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c92694b72c57b255e885ccf3ca33eda6054a2ef7c10c60bd5c214ff026d6c032`  
		Last Modified: Tue, 24 Nov 2026 21:15:37 GMT  
		Size: 27.3 KB (27349 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:18` - linux; ppc64le

```console
$ docker pull odoo@sha256:14cf7d4618fe927294f2505bb6f7c8f07e85333a7d5ff1f6271f9275fce1e42f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **692.8 MB (692788429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb3015b07109aa3448b3e25cb658bb18dfd87f7f912ec8587ce2449496cff3d7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Tue, 10 Nov 2026 18:32:30 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:32:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:32:30 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:32:33 GMT
ADD file:9fc87f5d4993c1f29848a41be6f1c74d6ab81fed009749aa0f9d0206b6b19eb0 in / 
# Tue, 10 Nov 2026 18:32:34 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:47:47 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Fri, 20 Nov 2026 03:47:47 GMT
SHELL [/bin/bash -xo pipefail -c]
# Fri, 20 Nov 2026 03:47:47 GMT
ENV LANG=en_US.UTF-8
# Fri, 20 Nov 2026 03:47:47 GMT
ARG TARGETARCH=ppc64le
# Fri, 20 Nov 2026 03:47:47 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Fri, 20 Nov 2026 03:48:01 GMT
# ARGS: TARGETARCH=ppc64le
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:52:38 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:52:38 GMT
ENV ODOO_VERSION=18.0
# Fri, 20 Nov 2026 03:52:38 GMT
ARG ODOO_RELEASE=20261124
# Fri, 20 Nov 2026 03:52:38 GMT
ARG ODOO_SHA=e51908de8cf1e8f692c892db477761db5da4b5d1
# Tue, 24 Nov 2026 23:41:17 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261124 ODOO_SHA=e51908de8cf1e8f692c892db477761db5da4b5d1
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 24 Nov 2026 23:41:30 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 24 Nov 2026 23:41:30 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 24 Nov 2026 23:41:31 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261124 ODOO_SHA=e51908de8cf1e8f692c892db477761db5da4b5d1
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 24 Nov 2026 23:41:31 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 24 Nov 2026 23:41:31 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 24 Nov 2026 23:41:31 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 24 Nov 2026 23:41:31 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 24 Nov 2026 23:41:31 GMT
USER odoo
# Tue, 24 Nov 2026 23:41:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 24 Nov 2026 23:41:31 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:6c769a4f95bc536aae313c2bf7fcbf46e8cc18ed65fefad2a8ccfc1b5b7a63b4`  
		Last Modified: Tue, 10 Nov 2026 20:09:39 GMT  
		Size: 34.4 MB (34406239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09d23117909b1e154619850f663e5569eee5dbcc94f9ac42ebce205ced4b3216`  
		Last Modified: Fri, 20 Nov 2026 04:00:23 GMT  
		Size: 249.4 MB (249408577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92bbbe0bfdd20d044abe9826b7a10c9c8fec1fa7c0af70499d9c16ebac621942`  
		Last Modified: Fri, 20 Nov 2026 04:00:13 GMT  
		Size: 14.8 MB (14765235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d487da9837144c93790f88f70ddb5e7d4b836443f900d194bf0cb96b0c6b34b7`  
		Last Modified: Fri, 20 Nov 2026 04:00:11 GMT  
		Size: 881.0 KB (881010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a44df4f2adaec9b5c1105249d5e7481a1b3d48a8bd85f4ccb2952b8d9ad06f78`  
		Last Modified: Tue, 24 Nov 2026 23:44:51 GMT  
		Size: 393.3 MB (393324576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:151fa3150a6e22e24973f5c5555c03d6c8556243c55cb5a8c853b8ac2f7aac2f`  
		Last Modified: Tue, 24 Nov 2026 23:44:43 GMT  
		Size: 766.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b9d84fa439f66a1961d1f6b1805767a840cfa5a311e30f1ea4f1570b531ec59`  
		Last Modified: Tue, 24 Nov 2026 23:44:43 GMT  
		Size: 554.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c510d45135d5984c2cbf136ce43afd09689aaa1cc2c0d0f5d955784077172678`  
		Last Modified: Tue, 24 Nov 2026 23:44:43 GMT  
		Size: 594.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41938188ac4d144e6c7c1a1cff56a4c4ecb8c4ab1d6a11b3302798dbd2072967`  
		Last Modified: Tue, 24 Nov 2026 23:44:44 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18` - unknown; unknown

```console
$ docker pull odoo@sha256:9b27de6bacb12b65c5398336cbe40fcdc4af498e7cfc12a917d618f242fdbe05
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.1 MB (44075792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4dc0dae86aa69812b37437ec2a91947702a736a48141e2e0540df2f79ee38155`

```dockerfile
```

-	Layers:
	-	`sha256:ea11a1938d23b0f68b9f39b60648f7ad25bbad6e2b6e318ebe0cf85b9fcaff17`  
		Last Modified: Tue, 24 Nov 2026 23:44:45 GMT  
		Size: 44.0 MB (44048540 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bf1c4d14b57f0c6ded6ca39b8d052ae86dcbacf7f89a2af7e4fce9cc49c88a71`  
		Last Modified: Tue, 24 Nov 2026 23:44:43 GMT  
		Size: 27.3 KB (27252 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:18.0`

```console
$ docker pull odoo@sha256:364b17dfcf0019c9e5c7e1754a56b36c748f2907b38bc2209ce0d3d88e371c35
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
$ docker pull odoo@sha256:5cec40a73e3f676742b9a01c83f74a8eedc7bb66860d078a48f88ddce4f6e2d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **676.3 MB (676289430 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f53e5ed6ae2606fd9289087055391330c24af069a92686c9a7d2e954aaad7ca`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Tue, 10 Nov 2026 18:35:15 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:35:15 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:35:15 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:35:17 GMT
ADD file:54dafd97985c3ec227e2c96be9290657cf2ab456885b5fc8a24c9278bca65e60 in / 
# Tue, 10 Nov 2026 18:35:18 GMT
CMD ["/bin/bash"]
# Tue, 24 Nov 2026 21:10:50 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 24 Nov 2026 21:10:50 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 24 Nov 2026 21:10:50 GMT
ENV LANG=en_US.UTF-8
# Tue, 24 Nov 2026 21:10:50 GMT
ARG TARGETARCH=amd64
# Tue, 24 Nov 2026 21:10:50 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 24 Nov 2026 21:10:55 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 21:11:58 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 21:11:58 GMT
ENV ODOO_VERSION=18.0
# Tue, 24 Nov 2026 21:11:58 GMT
ARG ODOO_RELEASE=20261124
# Tue, 24 Nov 2026 21:11:58 GMT
ARG ODOO_SHA=e51908de8cf1e8f692c892db477761db5da4b5d1
# Tue, 24 Nov 2026 21:12:52 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261124 ODOO_SHA=e51908de8cf1e8f692c892db477761db5da4b5d1
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 24 Nov 2026 21:12:53 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 24 Nov 2026 21:12:53 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 24 Nov 2026 21:12:53 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261124 ODOO_SHA=e51908de8cf1e8f692c892db477761db5da4b5d1
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 24 Nov 2026 21:12:53 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 24 Nov 2026 21:12:53 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 24 Nov 2026 21:12:53 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 24 Nov 2026 21:12:53 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 24 Nov 2026 21:12:53 GMT
USER odoo
# Tue, 24 Nov 2026 21:12:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 24 Nov 2026 21:12:53 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:8e8df94085bf9af8de500d2042195f1819a4c381b7f3be2a6b920cab65039050`  
		Last Modified: Tue, 10 Nov 2026 20:09:19 GMT  
		Size: 29.8 MB (29793297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74549f23a2d8c4b519c9e6152a4258d7bb052f70e2c95622843bded787cb21fb`  
		Last Modified: Tue, 24 Nov 2026 21:14:17 GMT  
		Size: 238.7 MB (238728922 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fba9e685d2273c83e5a9c91e43ddabea0b2a7c2f71e54ec130ad3cf4139797e`  
		Last Modified: Tue, 24 Nov 2026 21:14:09 GMT  
		Size: 14.2 MB (14228399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8fbf3ecb1100f0ddaf8bad8ed3867b025a2aaebdf3ae5cc83592a08d83c1284`  
		Last Modified: Tue, 24 Nov 2026 21:14:08 GMT  
		Size: 879.6 KB (879571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4b432fbcd2e2679e554e4bd8b5b0189f2a8f0a6fe0a645bde3f4db62f159e71`  
		Last Modified: Tue, 24 Nov 2026 21:14:19 GMT  
		Size: 392.7 MB (392656442 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88a50ecc6736ba3e9d38f686c083afcdf632eabc2b4624795fd5070bc67fab3f`  
		Last Modified: Tue, 24 Nov 2026 21:14:09 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:826d57ab054b25185a7287f9d8ac09e809b3b1de447023c39680c9628d3ba5d2`  
		Last Modified: Tue, 24 Nov 2026 21:14:10 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b2298a2880ef2bc576e70dd894d32b4426080b3152638043d42edc7b578d646`  
		Last Modified: Tue, 24 Nov 2026 21:14:10 GMT  
		Size: 596.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:874b22a71cd8aa092c8b31a661039a502616c40f195ecca2cc50fb2d7f8d5892`  
		Last Modified: Tue, 24 Nov 2026 21:14:12 GMT  
		Size: 880.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18.0` - unknown; unknown

```console
$ docker pull odoo@sha256:e78357d8b281cd9acc7f85c094fcedd843ce95beecaeeb446cc18b2b7add11a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.1 MB (44067377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9e61cc32591582c5c5f48339612112458dcbf1e6979763d077d838cbeb76c29`

```dockerfile
```

-	Layers:
	-	`sha256:d1da39bea1bc69a939cb73683b3a42df13f5f5561ecc146a77e72100e22844af`  
		Last Modified: Tue, 24 Nov 2026 21:14:11 GMT  
		Size: 44.0 MB (44040180 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:66d6ad455279258d8cbd19a9905b180f73937cfb6b51a08978ea1dbbc2e0093b`  
		Last Modified: Tue, 24 Nov 2026 21:14:08 GMT  
		Size: 27.2 KB (27197 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:18.0` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:e6a7a4e8d1a8cd0dfaa2c7a680268f1b99d1ff4ecbbf63b0823ed6268876a6d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **672.8 MB (672778774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:100c93a5e5feba62d0cec93b5446ac2c5bcd880d7a6eda6be10e4587d7c1c2df`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Tue, 10 Nov 2026 18:31:19 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:31:19 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:31:19 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:31:22 GMT
ADD file:2a6d7d3511af5b48de2ccdad66ef2aa7544bf264ce928935ad4469c76a66169b in / 
# Tue, 10 Nov 2026 18:31:22 GMT
CMD ["/bin/bash"]
# Tue, 24 Nov 2026 21:12:04 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 24 Nov 2026 21:12:04 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 24 Nov 2026 21:12:04 GMT
ENV LANG=en_US.UTF-8
# Tue, 24 Nov 2026 21:12:04 GMT
ARG TARGETARCH=arm64
# Tue, 24 Nov 2026 21:12:04 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 24 Nov 2026 21:12:10 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 21:13:05 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 21:13:05 GMT
ENV ODOO_VERSION=18.0
# Tue, 24 Nov 2026 21:13:05 GMT
ARG ODOO_RELEASE=20261124
# Tue, 24 Nov 2026 21:13:05 GMT
ARG ODOO_SHA=e51908de8cf1e8f692c892db477761db5da4b5d1
# Tue, 24 Nov 2026 21:14:06 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261124 ODOO_SHA=e51908de8cf1e8f692c892db477761db5da4b5d1
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 24 Nov 2026 21:14:06 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 24 Nov 2026 21:14:06 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 24 Nov 2026 21:14:06 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261124 ODOO_SHA=e51908de8cf1e8f692c892db477761db5da4b5d1
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 24 Nov 2026 21:14:06 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 24 Nov 2026 21:14:06 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 24 Nov 2026 21:14:06 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 24 Nov 2026 21:14:06 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 24 Nov 2026 21:14:06 GMT
USER odoo
# Tue, 24 Nov 2026 21:14:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 24 Nov 2026 21:14:06 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:6542099f24f28e8effaa18375a01b636d7898b6807da55b7c2d7a7a8d9eb103c`  
		Last Modified: Tue, 10 Nov 2026 20:09:25 GMT  
		Size: 29.0 MB (28965318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ced23a41b66096b095f4b0a1781b2c1b2e7bc13a91b144fecccc6636954204e8`  
		Last Modified: Tue, 24 Nov 2026 21:15:46 GMT  
		Size: 236.2 MB (236196980 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:057ae4546287d6df0c50cc02a1ab3d2be709b25d37822cc6162a386eb27b1fff`  
		Last Modified: Tue, 24 Nov 2026 21:15:38 GMT  
		Size: 14.2 MB (14206238 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:611f81a74e3cbb3a10df348e2e68cd38edccf53a6e421be0c5dbd23bf574a75a`  
		Last Modified: Tue, 24 Nov 2026 21:15:37 GMT  
		Size: 879.8 KB (879777 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f40de3c259a6c87fe452a4fbbbd377f0fab7dac7388ed314c1aa6c185a2fc21`  
		Last Modified: Tue, 24 Nov 2026 21:15:49 GMT  
		Size: 392.5 MB (392527662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8431943b89e88bdcfdcdaf3c31ba315e8cf5f42d0f5fa413db9c8614a691299`  
		Last Modified: Tue, 24 Nov 2026 21:15:38 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5e2d2698dc36d7707b336faa2d719a79856bf2550bf95ff335d3a424a35697e`  
		Last Modified: Tue, 24 Nov 2026 21:15:40 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0a7c85273763e1cc4fcb5a8905cfe1cf4139e9c013b282fd8b6d196d0cbd557`  
		Last Modified: Tue, 24 Nov 2026 21:15:40 GMT  
		Size: 596.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e0566245c682bff7bd1f0af7f0c9732dda7f3fa1b5279874cf629286e5a04fc`  
		Last Modified: Tue, 24 Nov 2026 21:15:41 GMT  
		Size: 880.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18.0` - unknown; unknown

```console
$ docker pull odoo@sha256:a432c46caef2e26f4ccd53ae59797c41d781cec92c2264dd01964b4ba9ee09f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.1 MB (44074801 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c550a82ae0465b65bc254183820ea8ff1fea8160b7f5fc8edcc2a4a0964a9a50`

```dockerfile
```

-	Layers:
	-	`sha256:f1a7e1b0a3c1fd982a9ade542deb175c90fd6c9a9d3b79253a611cdd14e89b3a`  
		Last Modified: Tue, 24 Nov 2026 21:15:40 GMT  
		Size: 44.0 MB (44047452 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c92694b72c57b255e885ccf3ca33eda6054a2ef7c10c60bd5c214ff026d6c032`  
		Last Modified: Tue, 24 Nov 2026 21:15:37 GMT  
		Size: 27.3 KB (27349 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:18.0` - linux; ppc64le

```console
$ docker pull odoo@sha256:14cf7d4618fe927294f2505bb6f7c8f07e85333a7d5ff1f6271f9275fce1e42f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **692.8 MB (692788429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb3015b07109aa3448b3e25cb658bb18dfd87f7f912ec8587ce2449496cff3d7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Tue, 10 Nov 2026 18:32:30 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:32:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:32:30 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:32:33 GMT
ADD file:9fc87f5d4993c1f29848a41be6f1c74d6ab81fed009749aa0f9d0206b6b19eb0 in / 
# Tue, 10 Nov 2026 18:32:34 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:47:47 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Fri, 20 Nov 2026 03:47:47 GMT
SHELL [/bin/bash -xo pipefail -c]
# Fri, 20 Nov 2026 03:47:47 GMT
ENV LANG=en_US.UTF-8
# Fri, 20 Nov 2026 03:47:47 GMT
ARG TARGETARCH=ppc64le
# Fri, 20 Nov 2026 03:47:47 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Fri, 20 Nov 2026 03:48:01 GMT
# ARGS: TARGETARCH=ppc64le
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:52:38 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:52:38 GMT
ENV ODOO_VERSION=18.0
# Fri, 20 Nov 2026 03:52:38 GMT
ARG ODOO_RELEASE=20261124
# Fri, 20 Nov 2026 03:52:38 GMT
ARG ODOO_SHA=e51908de8cf1e8f692c892db477761db5da4b5d1
# Tue, 24 Nov 2026 23:41:17 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261124 ODOO_SHA=e51908de8cf1e8f692c892db477761db5da4b5d1
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 24 Nov 2026 23:41:30 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 24 Nov 2026 23:41:30 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 24 Nov 2026 23:41:31 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261124 ODOO_SHA=e51908de8cf1e8f692c892db477761db5da4b5d1
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 24 Nov 2026 23:41:31 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 24 Nov 2026 23:41:31 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 24 Nov 2026 23:41:31 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 24 Nov 2026 23:41:31 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 24 Nov 2026 23:41:31 GMT
USER odoo
# Tue, 24 Nov 2026 23:41:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 24 Nov 2026 23:41:31 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:6c769a4f95bc536aae313c2bf7fcbf46e8cc18ed65fefad2a8ccfc1b5b7a63b4`  
		Last Modified: Tue, 10 Nov 2026 20:09:39 GMT  
		Size: 34.4 MB (34406239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09d23117909b1e154619850f663e5569eee5dbcc94f9ac42ebce205ced4b3216`  
		Last Modified: Fri, 20 Nov 2026 04:00:23 GMT  
		Size: 249.4 MB (249408577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92bbbe0bfdd20d044abe9826b7a10c9c8fec1fa7c0af70499d9c16ebac621942`  
		Last Modified: Fri, 20 Nov 2026 04:00:13 GMT  
		Size: 14.8 MB (14765235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d487da9837144c93790f88f70ddb5e7d4b836443f900d194bf0cb96b0c6b34b7`  
		Last Modified: Fri, 20 Nov 2026 04:00:11 GMT  
		Size: 881.0 KB (881010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a44df4f2adaec9b5c1105249d5e7481a1b3d48a8bd85f4ccb2952b8d9ad06f78`  
		Last Modified: Tue, 24 Nov 2026 23:44:51 GMT  
		Size: 393.3 MB (393324576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:151fa3150a6e22e24973f5c5555c03d6c8556243c55cb5a8c853b8ac2f7aac2f`  
		Last Modified: Tue, 24 Nov 2026 23:44:43 GMT  
		Size: 766.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b9d84fa439f66a1961d1f6b1805767a840cfa5a311e30f1ea4f1570b531ec59`  
		Last Modified: Tue, 24 Nov 2026 23:44:43 GMT  
		Size: 554.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c510d45135d5984c2cbf136ce43afd09689aaa1cc2c0d0f5d955784077172678`  
		Last Modified: Tue, 24 Nov 2026 23:44:43 GMT  
		Size: 594.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41938188ac4d144e6c7c1a1cff56a4c4ecb8c4ab1d6a11b3302798dbd2072967`  
		Last Modified: Tue, 24 Nov 2026 23:44:44 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18.0` - unknown; unknown

```console
$ docker pull odoo@sha256:9b27de6bacb12b65c5398336cbe40fcdc4af498e7cfc12a917d618f242fdbe05
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.1 MB (44075792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4dc0dae86aa69812b37437ec2a91947702a736a48141e2e0540df2f79ee38155`

```dockerfile
```

-	Layers:
	-	`sha256:ea11a1938d23b0f68b9f39b60648f7ad25bbad6e2b6e318ebe0cf85b9fcaff17`  
		Last Modified: Tue, 24 Nov 2026 23:44:45 GMT  
		Size: 44.0 MB (44048540 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bf1c4d14b57f0c6ded6ca39b8d052ae86dcbacf7f89a2af7e4fce9cc49c88a71`  
		Last Modified: Tue, 24 Nov 2026 23:44:43 GMT  
		Size: 27.3 KB (27252 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:18.0-20261124`

```console
$ docker pull odoo@sha256:364b17dfcf0019c9e5c7e1754a56b36c748f2907b38bc2209ce0d3d88e371c35
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `odoo:18.0-20261124` - linux; amd64

```console
$ docker pull odoo@sha256:5cec40a73e3f676742b9a01c83f74a8eedc7bb66860d078a48f88ddce4f6e2d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **676.3 MB (676289430 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f53e5ed6ae2606fd9289087055391330c24af069a92686c9a7d2e954aaad7ca`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Tue, 10 Nov 2026 18:35:15 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:35:15 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:35:15 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:35:17 GMT
ADD file:54dafd97985c3ec227e2c96be9290657cf2ab456885b5fc8a24c9278bca65e60 in / 
# Tue, 10 Nov 2026 18:35:18 GMT
CMD ["/bin/bash"]
# Tue, 24 Nov 2026 21:10:50 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 24 Nov 2026 21:10:50 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 24 Nov 2026 21:10:50 GMT
ENV LANG=en_US.UTF-8
# Tue, 24 Nov 2026 21:10:50 GMT
ARG TARGETARCH=amd64
# Tue, 24 Nov 2026 21:10:50 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 24 Nov 2026 21:10:55 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 21:11:58 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 21:11:58 GMT
ENV ODOO_VERSION=18.0
# Tue, 24 Nov 2026 21:11:58 GMT
ARG ODOO_RELEASE=20261124
# Tue, 24 Nov 2026 21:11:58 GMT
ARG ODOO_SHA=e51908de8cf1e8f692c892db477761db5da4b5d1
# Tue, 24 Nov 2026 21:12:52 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261124 ODOO_SHA=e51908de8cf1e8f692c892db477761db5da4b5d1
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 24 Nov 2026 21:12:53 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 24 Nov 2026 21:12:53 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 24 Nov 2026 21:12:53 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261124 ODOO_SHA=e51908de8cf1e8f692c892db477761db5da4b5d1
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 24 Nov 2026 21:12:53 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 24 Nov 2026 21:12:53 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 24 Nov 2026 21:12:53 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 24 Nov 2026 21:12:53 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 24 Nov 2026 21:12:53 GMT
USER odoo
# Tue, 24 Nov 2026 21:12:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 24 Nov 2026 21:12:53 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:8e8df94085bf9af8de500d2042195f1819a4c381b7f3be2a6b920cab65039050`  
		Last Modified: Tue, 10 Nov 2026 20:09:19 GMT  
		Size: 29.8 MB (29793297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74549f23a2d8c4b519c9e6152a4258d7bb052f70e2c95622843bded787cb21fb`  
		Last Modified: Tue, 24 Nov 2026 21:14:17 GMT  
		Size: 238.7 MB (238728922 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fba9e685d2273c83e5a9c91e43ddabea0b2a7c2f71e54ec130ad3cf4139797e`  
		Last Modified: Tue, 24 Nov 2026 21:14:09 GMT  
		Size: 14.2 MB (14228399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8fbf3ecb1100f0ddaf8bad8ed3867b025a2aaebdf3ae5cc83592a08d83c1284`  
		Last Modified: Tue, 24 Nov 2026 21:14:08 GMT  
		Size: 879.6 KB (879571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4b432fbcd2e2679e554e4bd8b5b0189f2a8f0a6fe0a645bde3f4db62f159e71`  
		Last Modified: Tue, 24 Nov 2026 21:14:19 GMT  
		Size: 392.7 MB (392656442 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88a50ecc6736ba3e9d38f686c083afcdf632eabc2b4624795fd5070bc67fab3f`  
		Last Modified: Tue, 24 Nov 2026 21:14:09 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:826d57ab054b25185a7287f9d8ac09e809b3b1de447023c39680c9628d3ba5d2`  
		Last Modified: Tue, 24 Nov 2026 21:14:10 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b2298a2880ef2bc576e70dd894d32b4426080b3152638043d42edc7b578d646`  
		Last Modified: Tue, 24 Nov 2026 21:14:10 GMT  
		Size: 596.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:874b22a71cd8aa092c8b31a661039a502616c40f195ecca2cc50fb2d7f8d5892`  
		Last Modified: Tue, 24 Nov 2026 21:14:12 GMT  
		Size: 880.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18.0-20261124` - unknown; unknown

```console
$ docker pull odoo@sha256:e78357d8b281cd9acc7f85c094fcedd843ce95beecaeeb446cc18b2b7add11a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.1 MB (44067377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9e61cc32591582c5c5f48339612112458dcbf1e6979763d077d838cbeb76c29`

```dockerfile
```

-	Layers:
	-	`sha256:d1da39bea1bc69a939cb73683b3a42df13f5f5561ecc146a77e72100e22844af`  
		Last Modified: Tue, 24 Nov 2026 21:14:11 GMT  
		Size: 44.0 MB (44040180 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:66d6ad455279258d8cbd19a9905b180f73937cfb6b51a08978ea1dbbc2e0093b`  
		Last Modified: Tue, 24 Nov 2026 21:14:08 GMT  
		Size: 27.2 KB (27197 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:18.0-20261124` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:e6a7a4e8d1a8cd0dfaa2c7a680268f1b99d1ff4ecbbf63b0823ed6268876a6d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **672.8 MB (672778774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:100c93a5e5feba62d0cec93b5446ac2c5bcd880d7a6eda6be10e4587d7c1c2df`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Tue, 10 Nov 2026 18:31:19 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:31:19 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:31:19 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:31:22 GMT
ADD file:2a6d7d3511af5b48de2ccdad66ef2aa7544bf264ce928935ad4469c76a66169b in / 
# Tue, 10 Nov 2026 18:31:22 GMT
CMD ["/bin/bash"]
# Tue, 24 Nov 2026 21:12:04 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 24 Nov 2026 21:12:04 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 24 Nov 2026 21:12:04 GMT
ENV LANG=en_US.UTF-8
# Tue, 24 Nov 2026 21:12:04 GMT
ARG TARGETARCH=arm64
# Tue, 24 Nov 2026 21:12:04 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 24 Nov 2026 21:12:10 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 21:13:05 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 21:13:05 GMT
ENV ODOO_VERSION=18.0
# Tue, 24 Nov 2026 21:13:05 GMT
ARG ODOO_RELEASE=20261124
# Tue, 24 Nov 2026 21:13:05 GMT
ARG ODOO_SHA=e51908de8cf1e8f692c892db477761db5da4b5d1
# Tue, 24 Nov 2026 21:14:06 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261124 ODOO_SHA=e51908de8cf1e8f692c892db477761db5da4b5d1
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 24 Nov 2026 21:14:06 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 24 Nov 2026 21:14:06 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 24 Nov 2026 21:14:06 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261124 ODOO_SHA=e51908de8cf1e8f692c892db477761db5da4b5d1
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 24 Nov 2026 21:14:06 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 24 Nov 2026 21:14:06 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 24 Nov 2026 21:14:06 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 24 Nov 2026 21:14:06 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 24 Nov 2026 21:14:06 GMT
USER odoo
# Tue, 24 Nov 2026 21:14:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 24 Nov 2026 21:14:06 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:6542099f24f28e8effaa18375a01b636d7898b6807da55b7c2d7a7a8d9eb103c`  
		Last Modified: Tue, 10 Nov 2026 20:09:25 GMT  
		Size: 29.0 MB (28965318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ced23a41b66096b095f4b0a1781b2c1b2e7bc13a91b144fecccc6636954204e8`  
		Last Modified: Tue, 24 Nov 2026 21:15:46 GMT  
		Size: 236.2 MB (236196980 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:057ae4546287d6df0c50cc02a1ab3d2be709b25d37822cc6162a386eb27b1fff`  
		Last Modified: Tue, 24 Nov 2026 21:15:38 GMT  
		Size: 14.2 MB (14206238 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:611f81a74e3cbb3a10df348e2e68cd38edccf53a6e421be0c5dbd23bf574a75a`  
		Last Modified: Tue, 24 Nov 2026 21:15:37 GMT  
		Size: 879.8 KB (879777 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f40de3c259a6c87fe452a4fbbbd377f0fab7dac7388ed314c1aa6c185a2fc21`  
		Last Modified: Tue, 24 Nov 2026 21:15:49 GMT  
		Size: 392.5 MB (392527662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8431943b89e88bdcfdcdaf3c31ba315e8cf5f42d0f5fa413db9c8614a691299`  
		Last Modified: Tue, 24 Nov 2026 21:15:38 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5e2d2698dc36d7707b336faa2d719a79856bf2550bf95ff335d3a424a35697e`  
		Last Modified: Tue, 24 Nov 2026 21:15:40 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0a7c85273763e1cc4fcb5a8905cfe1cf4139e9c013b282fd8b6d196d0cbd557`  
		Last Modified: Tue, 24 Nov 2026 21:15:40 GMT  
		Size: 596.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e0566245c682bff7bd1f0af7f0c9732dda7f3fa1b5279874cf629286e5a04fc`  
		Last Modified: Tue, 24 Nov 2026 21:15:41 GMT  
		Size: 880.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18.0-20261124` - unknown; unknown

```console
$ docker pull odoo@sha256:a432c46caef2e26f4ccd53ae59797c41d781cec92c2264dd01964b4ba9ee09f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.1 MB (44074801 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c550a82ae0465b65bc254183820ea8ff1fea8160b7f5fc8edcc2a4a0964a9a50`

```dockerfile
```

-	Layers:
	-	`sha256:f1a7e1b0a3c1fd982a9ade542deb175c90fd6c9a9d3b79253a611cdd14e89b3a`  
		Last Modified: Tue, 24 Nov 2026 21:15:40 GMT  
		Size: 44.0 MB (44047452 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c92694b72c57b255e885ccf3ca33eda6054a2ef7c10c60bd5c214ff026d6c032`  
		Last Modified: Tue, 24 Nov 2026 21:15:37 GMT  
		Size: 27.3 KB (27349 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:18.0-20261124` - linux; ppc64le

```console
$ docker pull odoo@sha256:14cf7d4618fe927294f2505bb6f7c8f07e85333a7d5ff1f6271f9275fce1e42f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **692.8 MB (692788429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb3015b07109aa3448b3e25cb658bb18dfd87f7f912ec8587ce2449496cff3d7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Tue, 10 Nov 2026 18:32:30 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:32:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:32:30 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:32:33 GMT
ADD file:9fc87f5d4993c1f29848a41be6f1c74d6ab81fed009749aa0f9d0206b6b19eb0 in / 
# Tue, 10 Nov 2026 18:32:34 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:47:47 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Fri, 20 Nov 2026 03:47:47 GMT
SHELL [/bin/bash -xo pipefail -c]
# Fri, 20 Nov 2026 03:47:47 GMT
ENV LANG=en_US.UTF-8
# Fri, 20 Nov 2026 03:47:47 GMT
ARG TARGETARCH=ppc64le
# Fri, 20 Nov 2026 03:47:47 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Fri, 20 Nov 2026 03:48:01 GMT
# ARGS: TARGETARCH=ppc64le
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:52:38 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:52:38 GMT
ENV ODOO_VERSION=18.0
# Fri, 20 Nov 2026 03:52:38 GMT
ARG ODOO_RELEASE=20261124
# Fri, 20 Nov 2026 03:52:38 GMT
ARG ODOO_SHA=e51908de8cf1e8f692c892db477761db5da4b5d1
# Tue, 24 Nov 2026 23:41:17 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261124 ODOO_SHA=e51908de8cf1e8f692c892db477761db5da4b5d1
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 24 Nov 2026 23:41:30 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 24 Nov 2026 23:41:30 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 24 Nov 2026 23:41:31 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261124 ODOO_SHA=e51908de8cf1e8f692c892db477761db5da4b5d1
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 24 Nov 2026 23:41:31 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 24 Nov 2026 23:41:31 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 24 Nov 2026 23:41:31 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 24 Nov 2026 23:41:31 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 24 Nov 2026 23:41:31 GMT
USER odoo
# Tue, 24 Nov 2026 23:41:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 24 Nov 2026 23:41:31 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:6c769a4f95bc536aae313c2bf7fcbf46e8cc18ed65fefad2a8ccfc1b5b7a63b4`  
		Last Modified: Tue, 10 Nov 2026 20:09:39 GMT  
		Size: 34.4 MB (34406239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09d23117909b1e154619850f663e5569eee5dbcc94f9ac42ebce205ced4b3216`  
		Last Modified: Fri, 20 Nov 2026 04:00:23 GMT  
		Size: 249.4 MB (249408577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92bbbe0bfdd20d044abe9826b7a10c9c8fec1fa7c0af70499d9c16ebac621942`  
		Last Modified: Fri, 20 Nov 2026 04:00:13 GMT  
		Size: 14.8 MB (14765235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d487da9837144c93790f88f70ddb5e7d4b836443f900d194bf0cb96b0c6b34b7`  
		Last Modified: Fri, 20 Nov 2026 04:00:11 GMT  
		Size: 881.0 KB (881010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a44df4f2adaec9b5c1105249d5e7481a1b3d48a8bd85f4ccb2952b8d9ad06f78`  
		Last Modified: Tue, 24 Nov 2026 23:44:51 GMT  
		Size: 393.3 MB (393324576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:151fa3150a6e22e24973f5c5555c03d6c8556243c55cb5a8c853b8ac2f7aac2f`  
		Last Modified: Tue, 24 Nov 2026 23:44:43 GMT  
		Size: 766.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b9d84fa439f66a1961d1f6b1805767a840cfa5a311e30f1ea4f1570b531ec59`  
		Last Modified: Tue, 24 Nov 2026 23:44:43 GMT  
		Size: 554.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c510d45135d5984c2cbf136ce43afd09689aaa1cc2c0d0f5d955784077172678`  
		Last Modified: Tue, 24 Nov 2026 23:44:43 GMT  
		Size: 594.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41938188ac4d144e6c7c1a1cff56a4c4ecb8c4ab1d6a11b3302798dbd2072967`  
		Last Modified: Tue, 24 Nov 2026 23:44:44 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18.0-20261124` - unknown; unknown

```console
$ docker pull odoo@sha256:9b27de6bacb12b65c5398336cbe40fcdc4af498e7cfc12a917d618f242fdbe05
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.1 MB (44075792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4dc0dae86aa69812b37437ec2a91947702a736a48141e2e0540df2f79ee38155`

```dockerfile
```

-	Layers:
	-	`sha256:ea11a1938d23b0f68b9f39b60648f7ad25bbad6e2b6e318ebe0cf85b9fcaff17`  
		Last Modified: Tue, 24 Nov 2026 23:44:45 GMT  
		Size: 44.0 MB (44048540 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bf1c4d14b57f0c6ded6ca39b8d052ae86dcbacf7f89a2af7e4fce9cc49c88a71`  
		Last Modified: Tue, 24 Nov 2026 23:44:43 GMT  
		Size: 27.3 KB (27252 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:19`

```console
$ docker pull odoo@sha256:c30b26d599d06c2fe9ce5c215725f034ad7636326b4f9ce2469eabb5e59ea1a3
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
$ docker pull odoo@sha256:c158d501261555aed32c0f30271555e7b23fb4256f406e5e3b14c4f05eadc574
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **701.0 MB (701013884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2b29f069810c7d382ac56a892e33bc543d48c8ce887b506d04a44284721285b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Tue, 10 Nov 2026 18:35:15 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:35:15 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:35:15 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:35:17 GMT
ADD file:54dafd97985c3ec227e2c96be9290657cf2ab456885b5fc8a24c9278bca65e60 in / 
# Tue, 10 Nov 2026 18:35:18 GMT
CMD ["/bin/bash"]
# Tue, 24 Nov 2026 21:10:54 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 24 Nov 2026 21:10:54 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 24 Nov 2026 21:10:54 GMT
ENV LANG=en_US.UTF-8
# Tue, 24 Nov 2026 21:10:54 GMT
ARG TARGETARCH=amd64
# Tue, 24 Nov 2026 21:10:54 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 24 Nov 2026 21:10:59 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 21:12:03 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 21:12:03 GMT
ENV ODOO_VERSION=19.0
# Tue, 24 Nov 2026 21:12:03 GMT
ARG ODOO_RELEASE=20261123
# Tue, 24 Nov 2026 21:12:03 GMT
ARG ODOO_SHA=a5e98d0287bbfe242e8b34ffd22ca80147e63242
# Tue, 24 Nov 2026 21:13:09 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261123 ODOO_SHA=a5e98d0287bbfe242e8b34ffd22ca80147e63242
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 24 Nov 2026 21:13:09 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 24 Nov 2026 21:13:09 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 24 Nov 2026 21:13:09 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261123 ODOO_SHA=a5e98d0287bbfe242e8b34ffd22ca80147e63242
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 24 Nov 2026 21:13:09 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 24 Nov 2026 21:13:09 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 24 Nov 2026 21:13:09 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 24 Nov 2026 21:13:09 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 24 Nov 2026 21:13:09 GMT
USER odoo
# Tue, 24 Nov 2026 21:13:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 24 Nov 2026 21:13:09 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:8e8df94085bf9af8de500d2042195f1819a4c381b7f3be2a6b920cab65039050`  
		Last Modified: Tue, 10 Nov 2026 20:09:19 GMT  
		Size: 29.8 MB (29793297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcbb31e34933387cfe4f85a1395bf756e76d1076b37d7f387e7528b0492136e7`  
		Last Modified: Tue, 24 Nov 2026 21:14:56 GMT  
		Size: 238.7 MB (238729075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85c42b48504e86b099a3b694fa066641b6325a8d7698a46477ee80f1dd8caf86`  
		Last Modified: Tue, 24 Nov 2026 21:14:48 GMT  
		Size: 14.2 MB (14228336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9e0e3d013217dd2b4bdb8df7abdcda381888b1771881aa54d51828f725d8831`  
		Last Modified: Tue, 24 Nov 2026 21:14:47 GMT  
		Size: 879.7 KB (879705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6abb6487b20dfbc35f710b82e335cba740cd1662a16d943b94d690f404b5830e`  
		Last Modified: Tue, 24 Nov 2026 21:14:59 GMT  
		Size: 417.4 MB (417380723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3856e375f4a3c758ecbb2983174c734d491283317cad904c8a25ed7188899b0`  
		Last Modified: Tue, 24 Nov 2026 21:14:48 GMT  
		Size: 717.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:911b2826e4105d3c863e087e076e67e14f619fd4972c3007862d0c472bc057f6`  
		Last Modified: Tue, 24 Nov 2026 21:14:49 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86ca1d965bd90ed679f1b460a4058012bf184c31dbd60187f7d0b3be0911fa58`  
		Last Modified: Tue, 24 Nov 2026 21:14:50 GMT  
		Size: 596.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c515af1af16328e51c271eba6bb2f8b95ddc1c46dc6be8e37d4655e338b46903`  
		Last Modified: Tue, 24 Nov 2026 21:14:51 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19` - unknown; unknown

```console
$ docker pull odoo@sha256:cb73263adbd9f6ab6d62515b284340fc66e15050b0c3f2968baacb00e0776aef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.8 MB (52793670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11c421d191061ba710986738d2ef0e8735b0ffc6691adb64faa7e007d90ebf48`

```dockerfile
```

-	Layers:
	-	`sha256:15c09aef730df22b1e34292c61d2db22cf3da2668085184db19b3b15166d3289`  
		Last Modified: Tue, 24 Nov 2026 21:14:50 GMT  
		Size: 52.8 MB (52766473 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a260303be42a9ee805b044701d6db4f2683ce829cc4498e2c01f8aa13952f150`  
		Last Modified: Tue, 24 Nov 2026 21:14:47 GMT  
		Size: 27.2 KB (27197 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:19` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:f8b1ed5936de5b71c3be7a244fcd179ad1b9baae2b3054e76c2272607645124b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **697.5 MB (697490735 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03a72c54e4a10f3878890b6efceb57675525f46f584b84f85737b63e7825c08c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Tue, 10 Nov 2026 18:31:19 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:31:19 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:31:19 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:31:22 GMT
ADD file:2a6d7d3511af5b48de2ccdad66ef2aa7544bf264ce928935ad4469c76a66169b in / 
# Tue, 10 Nov 2026 18:31:22 GMT
CMD ["/bin/bash"]
# Tue, 24 Nov 2026 21:11:35 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 24 Nov 2026 21:11:35 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 24 Nov 2026 21:11:35 GMT
ENV LANG=en_US.UTF-8
# Tue, 24 Nov 2026 21:11:35 GMT
ARG TARGETARCH=arm64
# Tue, 24 Nov 2026 21:11:35 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 24 Nov 2026 21:11:41 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 21:12:41 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 21:12:41 GMT
ENV ODOO_VERSION=19.0
# Tue, 24 Nov 2026 21:12:41 GMT
ARG ODOO_RELEASE=20261123
# Tue, 24 Nov 2026 21:12:41 GMT
ARG ODOO_SHA=a5e98d0287bbfe242e8b34ffd22ca80147e63242
# Tue, 24 Nov 2026 21:13:52 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261123 ODOO_SHA=a5e98d0287bbfe242e8b34ffd22ca80147e63242
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 24 Nov 2026 21:13:53 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 24 Nov 2026 21:13:53 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 24 Nov 2026 21:13:53 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261123 ODOO_SHA=a5e98d0287bbfe242e8b34ffd22ca80147e63242
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 24 Nov 2026 21:13:53 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 24 Nov 2026 21:13:53 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 24 Nov 2026 21:13:53 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 24 Nov 2026 21:13:53 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 24 Nov 2026 21:13:53 GMT
USER odoo
# Tue, 24 Nov 2026 21:13:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 24 Nov 2026 21:13:53 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:6542099f24f28e8effaa18375a01b636d7898b6807da55b7c2d7a7a8d9eb103c`  
		Last Modified: Tue, 10 Nov 2026 20:09:25 GMT  
		Size: 29.0 MB (28965318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:726bddcb3fdcda4065d088b78fea746aea55a68eae374d49b5f97b9c3c5c3da1`  
		Last Modified: Tue, 24 Nov 2026 21:15:54 GMT  
		Size: 236.2 MB (236197802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b20ea673a29cca59e295a6b3421df07f7e8983e20c8354a9e3d8167512550391`  
		Last Modified: Tue, 24 Nov 2026 21:15:47 GMT  
		Size: 14.2 MB (14206315 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fa7e0bafa494aefe6bcee6a55c3325a62d41c5bab96e88fd3a1190bb86e690a`  
		Last Modified: Tue, 24 Nov 2026 21:15:46 GMT  
		Size: 879.9 KB (879911 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77094cad2d8d22b79312d1a36dff0f4ebac76734c888d7a829285c1eb4db35e9`  
		Last Modified: Tue, 24 Nov 2026 21:15:58 GMT  
		Size: 417.2 MB (417238638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c5679057ef8493488d16a6c3c7807cc8436a49a34f1a4dca4e04468d7e72b85`  
		Last Modified: Tue, 24 Nov 2026 21:15:47 GMT  
		Size: 718.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c833a976542d7e44b1b1d8f87eaa7a8948b8dcafc3151be7f1e6d0e39d13376`  
		Last Modified: Tue, 24 Nov 2026 21:15:48 GMT  
		Size: 557.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b77bbd30f9d0aeba3ca1fa565354303d07c39aabfeb27c7725b04f49ba94eb7`  
		Last Modified: Tue, 24 Nov 2026 21:15:49 GMT  
		Size: 597.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ae042eea8fb62da9f8b6420fe4a73fbb0c11b38411dfd4cd08efd8fc8b239e4`  
		Last Modified: Tue, 24 Nov 2026 21:15:50 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19` - unknown; unknown

```console
$ docker pull odoo@sha256:bca71eb5dc2fe1c05490d07593bdc7f3c9d30a9fca84aacaf7c042e47a75c456
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.8 MB (52801093 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8aebbb22abf5a7e069a125a91612ff542ab5b715b5685a14a0cadbb7a1ab47c6`

```dockerfile
```

-	Layers:
	-	`sha256:972f1d1ea6706075d32b982725bcdbaae98e27c3852dfb24eb06628dde14e3ba`  
		Last Modified: Tue, 24 Nov 2026 21:15:49 GMT  
		Size: 52.8 MB (52773745 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a57ab86efd12b972cce5ccb0adfb58fbbe6739827c293113c812c357c467408f`  
		Last Modified: Tue, 24 Nov 2026 21:15:46 GMT  
		Size: 27.3 KB (27348 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:19` - linux; ppc64le

```console
$ docker pull odoo@sha256:c0a1fabbcfda9d66f8ea58187dade25f3c67b7d055c8ba4e77dbb2a455230484
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **717.5 MB (717514912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4160a0dbcbb5ce7c811399cb17e2a9d5f224b6d1e70e7ec837d5014909ceba52`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Tue, 10 Nov 2026 18:32:30 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:32:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:32:30 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:32:33 GMT
ADD file:9fc87f5d4993c1f29848a41be6f1c74d6ab81fed009749aa0f9d0206b6b19eb0 in / 
# Tue, 10 Nov 2026 18:32:34 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:47:47 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Fri, 20 Nov 2026 03:47:47 GMT
SHELL [/bin/bash -xo pipefail -c]
# Fri, 20 Nov 2026 03:47:47 GMT
ENV LANG=en_US.UTF-8
# Fri, 20 Nov 2026 03:47:47 GMT
ARG TARGETARCH=ppc64le
# Fri, 20 Nov 2026 03:47:47 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Fri, 20 Nov 2026 03:48:01 GMT
# ARGS: TARGETARCH=ppc64le
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:52:38 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:52:38 GMT
ENV ODOO_VERSION=19.0
# Fri, 20 Nov 2026 03:52:38 GMT
ARG ODOO_RELEASE=20261123
# Fri, 20 Nov 2026 03:52:38 GMT
ARG ODOO_SHA=a5e98d0287bbfe242e8b34ffd22ca80147e63242
# Tue, 24 Nov 2026 23:37:05 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261123 ODOO_SHA=a5e98d0287bbfe242e8b34ffd22ca80147e63242
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 24 Nov 2026 23:37:07 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 24 Nov 2026 23:37:07 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 24 Nov 2026 23:37:08 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261123 ODOO_SHA=a5e98d0287bbfe242e8b34ffd22ca80147e63242
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 24 Nov 2026 23:37:08 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 24 Nov 2026 23:37:08 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 24 Nov 2026 23:37:08 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 24 Nov 2026 23:37:09 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 24 Nov 2026 23:37:09 GMT
USER odoo
# Tue, 24 Nov 2026 23:37:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 24 Nov 2026 23:37:09 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:6c769a4f95bc536aae313c2bf7fcbf46e8cc18ed65fefad2a8ccfc1b5b7a63b4`  
		Last Modified: Tue, 10 Nov 2026 20:09:39 GMT  
		Size: 34.4 MB (34406239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09d23117909b1e154619850f663e5569eee5dbcc94f9ac42ebce205ced4b3216`  
		Last Modified: Fri, 20 Nov 2026 04:00:23 GMT  
		Size: 249.4 MB (249408577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92bbbe0bfdd20d044abe9826b7a10c9c8fec1fa7c0af70499d9c16ebac621942`  
		Last Modified: Fri, 20 Nov 2026 04:00:13 GMT  
		Size: 14.8 MB (14765235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d487da9837144c93790f88f70ddb5e7d4b836443f900d194bf0cb96b0c6b34b7`  
		Last Modified: Fri, 20 Nov 2026 04:00:11 GMT  
		Size: 881.0 KB (881010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:052eb539fb6a52855e7e505ab9f2cc8dff279e837b5712a968fcf834e4b591be`  
		Last Modified: Tue, 24 Nov 2026 23:41:17 GMT  
		Size: 418.1 MB (418051098 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d093d0ccc1e18802f4f32a6168f5589ecc757da092329d53c90b71a50e2a7aa6`  
		Last Modified: Tue, 24 Nov 2026 23:41:07 GMT  
		Size: 717.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3082a399e7d36dc7b701cbcc117a5b33c27f45d387b78f7de0d58b51be4ac342`  
		Last Modified: Tue, 24 Nov 2026 23:41:07 GMT  
		Size: 557.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97e1b49a16fe8ce0693e207adb4068bc7c17338474b3f97806744b7871496977`  
		Last Modified: Tue, 24 Nov 2026 23:41:07 GMT  
		Size: 599.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f622f479f27683f87161aa2eb7aba1b061786d03c80e889baed3572e47926d57`  
		Last Modified: Tue, 24 Nov 2026 23:41:08 GMT  
		Size: 880.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19` - unknown; unknown

```console
$ docker pull odoo@sha256:bd5baadace495b2dc8c387eff43e7e51278a7ec71051504a4171ab3d6163b636
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.8 MB (52802086 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b81a10aff9de069cba45aa8e95962fd563e34d3a781d5a5407700910c605939f`

```dockerfile
```

-	Layers:
	-	`sha256:3f79c559d1154ff608b9fc7c836aea108819fa5075fbb50f57cfd10d752cfc1d`  
		Last Modified: Tue, 24 Nov 2026 23:41:10 GMT  
		Size: 52.8 MB (52774833 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3915230a50e87cbd96f4eb2717bf790746cee7de0580561437c3a1ea9f24ad59`  
		Last Modified: Tue, 24 Nov 2026 23:41:07 GMT  
		Size: 27.3 KB (27253 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:19.0`

```console
$ docker pull odoo@sha256:c30b26d599d06c2fe9ce5c215725f034ad7636326b4f9ce2469eabb5e59ea1a3
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
$ docker pull odoo@sha256:c158d501261555aed32c0f30271555e7b23fb4256f406e5e3b14c4f05eadc574
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **701.0 MB (701013884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2b29f069810c7d382ac56a892e33bc543d48c8ce887b506d04a44284721285b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Tue, 10 Nov 2026 18:35:15 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:35:15 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:35:15 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:35:17 GMT
ADD file:54dafd97985c3ec227e2c96be9290657cf2ab456885b5fc8a24c9278bca65e60 in / 
# Tue, 10 Nov 2026 18:35:18 GMT
CMD ["/bin/bash"]
# Tue, 24 Nov 2026 21:10:54 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 24 Nov 2026 21:10:54 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 24 Nov 2026 21:10:54 GMT
ENV LANG=en_US.UTF-8
# Tue, 24 Nov 2026 21:10:54 GMT
ARG TARGETARCH=amd64
# Tue, 24 Nov 2026 21:10:54 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 24 Nov 2026 21:10:59 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 21:12:03 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 21:12:03 GMT
ENV ODOO_VERSION=19.0
# Tue, 24 Nov 2026 21:12:03 GMT
ARG ODOO_RELEASE=20261123
# Tue, 24 Nov 2026 21:12:03 GMT
ARG ODOO_SHA=a5e98d0287bbfe242e8b34ffd22ca80147e63242
# Tue, 24 Nov 2026 21:13:09 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261123 ODOO_SHA=a5e98d0287bbfe242e8b34ffd22ca80147e63242
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 24 Nov 2026 21:13:09 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 24 Nov 2026 21:13:09 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 24 Nov 2026 21:13:09 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261123 ODOO_SHA=a5e98d0287bbfe242e8b34ffd22ca80147e63242
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 24 Nov 2026 21:13:09 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 24 Nov 2026 21:13:09 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 24 Nov 2026 21:13:09 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 24 Nov 2026 21:13:09 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 24 Nov 2026 21:13:09 GMT
USER odoo
# Tue, 24 Nov 2026 21:13:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 24 Nov 2026 21:13:09 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:8e8df94085bf9af8de500d2042195f1819a4c381b7f3be2a6b920cab65039050`  
		Last Modified: Tue, 10 Nov 2026 20:09:19 GMT  
		Size: 29.8 MB (29793297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcbb31e34933387cfe4f85a1395bf756e76d1076b37d7f387e7528b0492136e7`  
		Last Modified: Tue, 24 Nov 2026 21:14:56 GMT  
		Size: 238.7 MB (238729075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85c42b48504e86b099a3b694fa066641b6325a8d7698a46477ee80f1dd8caf86`  
		Last Modified: Tue, 24 Nov 2026 21:14:48 GMT  
		Size: 14.2 MB (14228336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9e0e3d013217dd2b4bdb8df7abdcda381888b1771881aa54d51828f725d8831`  
		Last Modified: Tue, 24 Nov 2026 21:14:47 GMT  
		Size: 879.7 KB (879705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6abb6487b20dfbc35f710b82e335cba740cd1662a16d943b94d690f404b5830e`  
		Last Modified: Tue, 24 Nov 2026 21:14:59 GMT  
		Size: 417.4 MB (417380723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3856e375f4a3c758ecbb2983174c734d491283317cad904c8a25ed7188899b0`  
		Last Modified: Tue, 24 Nov 2026 21:14:48 GMT  
		Size: 717.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:911b2826e4105d3c863e087e076e67e14f619fd4972c3007862d0c472bc057f6`  
		Last Modified: Tue, 24 Nov 2026 21:14:49 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86ca1d965bd90ed679f1b460a4058012bf184c31dbd60187f7d0b3be0911fa58`  
		Last Modified: Tue, 24 Nov 2026 21:14:50 GMT  
		Size: 596.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c515af1af16328e51c271eba6bb2f8b95ddc1c46dc6be8e37d4655e338b46903`  
		Last Modified: Tue, 24 Nov 2026 21:14:51 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19.0` - unknown; unknown

```console
$ docker pull odoo@sha256:cb73263adbd9f6ab6d62515b284340fc66e15050b0c3f2968baacb00e0776aef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.8 MB (52793670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11c421d191061ba710986738d2ef0e8735b0ffc6691adb64faa7e007d90ebf48`

```dockerfile
```

-	Layers:
	-	`sha256:15c09aef730df22b1e34292c61d2db22cf3da2668085184db19b3b15166d3289`  
		Last Modified: Tue, 24 Nov 2026 21:14:50 GMT  
		Size: 52.8 MB (52766473 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a260303be42a9ee805b044701d6db4f2683ce829cc4498e2c01f8aa13952f150`  
		Last Modified: Tue, 24 Nov 2026 21:14:47 GMT  
		Size: 27.2 KB (27197 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:19.0` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:f8b1ed5936de5b71c3be7a244fcd179ad1b9baae2b3054e76c2272607645124b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **697.5 MB (697490735 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03a72c54e4a10f3878890b6efceb57675525f46f584b84f85737b63e7825c08c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Tue, 10 Nov 2026 18:31:19 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:31:19 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:31:19 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:31:22 GMT
ADD file:2a6d7d3511af5b48de2ccdad66ef2aa7544bf264ce928935ad4469c76a66169b in / 
# Tue, 10 Nov 2026 18:31:22 GMT
CMD ["/bin/bash"]
# Tue, 24 Nov 2026 21:11:35 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 24 Nov 2026 21:11:35 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 24 Nov 2026 21:11:35 GMT
ENV LANG=en_US.UTF-8
# Tue, 24 Nov 2026 21:11:35 GMT
ARG TARGETARCH=arm64
# Tue, 24 Nov 2026 21:11:35 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 24 Nov 2026 21:11:41 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 21:12:41 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 21:12:41 GMT
ENV ODOO_VERSION=19.0
# Tue, 24 Nov 2026 21:12:41 GMT
ARG ODOO_RELEASE=20261123
# Tue, 24 Nov 2026 21:12:41 GMT
ARG ODOO_SHA=a5e98d0287bbfe242e8b34ffd22ca80147e63242
# Tue, 24 Nov 2026 21:13:52 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261123 ODOO_SHA=a5e98d0287bbfe242e8b34ffd22ca80147e63242
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 24 Nov 2026 21:13:53 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 24 Nov 2026 21:13:53 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 24 Nov 2026 21:13:53 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261123 ODOO_SHA=a5e98d0287bbfe242e8b34ffd22ca80147e63242
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 24 Nov 2026 21:13:53 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 24 Nov 2026 21:13:53 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 24 Nov 2026 21:13:53 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 24 Nov 2026 21:13:53 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 24 Nov 2026 21:13:53 GMT
USER odoo
# Tue, 24 Nov 2026 21:13:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 24 Nov 2026 21:13:53 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:6542099f24f28e8effaa18375a01b636d7898b6807da55b7c2d7a7a8d9eb103c`  
		Last Modified: Tue, 10 Nov 2026 20:09:25 GMT  
		Size: 29.0 MB (28965318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:726bddcb3fdcda4065d088b78fea746aea55a68eae374d49b5f97b9c3c5c3da1`  
		Last Modified: Tue, 24 Nov 2026 21:15:54 GMT  
		Size: 236.2 MB (236197802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b20ea673a29cca59e295a6b3421df07f7e8983e20c8354a9e3d8167512550391`  
		Last Modified: Tue, 24 Nov 2026 21:15:47 GMT  
		Size: 14.2 MB (14206315 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fa7e0bafa494aefe6bcee6a55c3325a62d41c5bab96e88fd3a1190bb86e690a`  
		Last Modified: Tue, 24 Nov 2026 21:15:46 GMT  
		Size: 879.9 KB (879911 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77094cad2d8d22b79312d1a36dff0f4ebac76734c888d7a829285c1eb4db35e9`  
		Last Modified: Tue, 24 Nov 2026 21:15:58 GMT  
		Size: 417.2 MB (417238638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c5679057ef8493488d16a6c3c7807cc8436a49a34f1a4dca4e04468d7e72b85`  
		Last Modified: Tue, 24 Nov 2026 21:15:47 GMT  
		Size: 718.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c833a976542d7e44b1b1d8f87eaa7a8948b8dcafc3151be7f1e6d0e39d13376`  
		Last Modified: Tue, 24 Nov 2026 21:15:48 GMT  
		Size: 557.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b77bbd30f9d0aeba3ca1fa565354303d07c39aabfeb27c7725b04f49ba94eb7`  
		Last Modified: Tue, 24 Nov 2026 21:15:49 GMT  
		Size: 597.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ae042eea8fb62da9f8b6420fe4a73fbb0c11b38411dfd4cd08efd8fc8b239e4`  
		Last Modified: Tue, 24 Nov 2026 21:15:50 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19.0` - unknown; unknown

```console
$ docker pull odoo@sha256:bca71eb5dc2fe1c05490d07593bdc7f3c9d30a9fca84aacaf7c042e47a75c456
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.8 MB (52801093 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8aebbb22abf5a7e069a125a91612ff542ab5b715b5685a14a0cadbb7a1ab47c6`

```dockerfile
```

-	Layers:
	-	`sha256:972f1d1ea6706075d32b982725bcdbaae98e27c3852dfb24eb06628dde14e3ba`  
		Last Modified: Tue, 24 Nov 2026 21:15:49 GMT  
		Size: 52.8 MB (52773745 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a57ab86efd12b972cce5ccb0adfb58fbbe6739827c293113c812c357c467408f`  
		Last Modified: Tue, 24 Nov 2026 21:15:46 GMT  
		Size: 27.3 KB (27348 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:19.0` - linux; ppc64le

```console
$ docker pull odoo@sha256:c0a1fabbcfda9d66f8ea58187dade25f3c67b7d055c8ba4e77dbb2a455230484
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **717.5 MB (717514912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4160a0dbcbb5ce7c811399cb17e2a9d5f224b6d1e70e7ec837d5014909ceba52`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Tue, 10 Nov 2026 18:32:30 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:32:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:32:30 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:32:33 GMT
ADD file:9fc87f5d4993c1f29848a41be6f1c74d6ab81fed009749aa0f9d0206b6b19eb0 in / 
# Tue, 10 Nov 2026 18:32:34 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:47:47 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Fri, 20 Nov 2026 03:47:47 GMT
SHELL [/bin/bash -xo pipefail -c]
# Fri, 20 Nov 2026 03:47:47 GMT
ENV LANG=en_US.UTF-8
# Fri, 20 Nov 2026 03:47:47 GMT
ARG TARGETARCH=ppc64le
# Fri, 20 Nov 2026 03:47:47 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Fri, 20 Nov 2026 03:48:01 GMT
# ARGS: TARGETARCH=ppc64le
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:52:38 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:52:38 GMT
ENV ODOO_VERSION=19.0
# Fri, 20 Nov 2026 03:52:38 GMT
ARG ODOO_RELEASE=20261123
# Fri, 20 Nov 2026 03:52:38 GMT
ARG ODOO_SHA=a5e98d0287bbfe242e8b34ffd22ca80147e63242
# Tue, 24 Nov 2026 23:37:05 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261123 ODOO_SHA=a5e98d0287bbfe242e8b34ffd22ca80147e63242
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 24 Nov 2026 23:37:07 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 24 Nov 2026 23:37:07 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 24 Nov 2026 23:37:08 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261123 ODOO_SHA=a5e98d0287bbfe242e8b34ffd22ca80147e63242
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 24 Nov 2026 23:37:08 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 24 Nov 2026 23:37:08 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 24 Nov 2026 23:37:08 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 24 Nov 2026 23:37:09 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 24 Nov 2026 23:37:09 GMT
USER odoo
# Tue, 24 Nov 2026 23:37:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 24 Nov 2026 23:37:09 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:6c769a4f95bc536aae313c2bf7fcbf46e8cc18ed65fefad2a8ccfc1b5b7a63b4`  
		Last Modified: Tue, 10 Nov 2026 20:09:39 GMT  
		Size: 34.4 MB (34406239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09d23117909b1e154619850f663e5569eee5dbcc94f9ac42ebce205ced4b3216`  
		Last Modified: Fri, 20 Nov 2026 04:00:23 GMT  
		Size: 249.4 MB (249408577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92bbbe0bfdd20d044abe9826b7a10c9c8fec1fa7c0af70499d9c16ebac621942`  
		Last Modified: Fri, 20 Nov 2026 04:00:13 GMT  
		Size: 14.8 MB (14765235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d487da9837144c93790f88f70ddb5e7d4b836443f900d194bf0cb96b0c6b34b7`  
		Last Modified: Fri, 20 Nov 2026 04:00:11 GMT  
		Size: 881.0 KB (881010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:052eb539fb6a52855e7e505ab9f2cc8dff279e837b5712a968fcf834e4b591be`  
		Last Modified: Tue, 24 Nov 2026 23:41:17 GMT  
		Size: 418.1 MB (418051098 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d093d0ccc1e18802f4f32a6168f5589ecc757da092329d53c90b71a50e2a7aa6`  
		Last Modified: Tue, 24 Nov 2026 23:41:07 GMT  
		Size: 717.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3082a399e7d36dc7b701cbcc117a5b33c27f45d387b78f7de0d58b51be4ac342`  
		Last Modified: Tue, 24 Nov 2026 23:41:07 GMT  
		Size: 557.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97e1b49a16fe8ce0693e207adb4068bc7c17338474b3f97806744b7871496977`  
		Last Modified: Tue, 24 Nov 2026 23:41:07 GMT  
		Size: 599.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f622f479f27683f87161aa2eb7aba1b061786d03c80e889baed3572e47926d57`  
		Last Modified: Tue, 24 Nov 2026 23:41:08 GMT  
		Size: 880.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19.0` - unknown; unknown

```console
$ docker pull odoo@sha256:bd5baadace495b2dc8c387eff43e7e51278a7ec71051504a4171ab3d6163b636
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.8 MB (52802086 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b81a10aff9de069cba45aa8e95962fd563e34d3a781d5a5407700910c605939f`

```dockerfile
```

-	Layers:
	-	`sha256:3f79c559d1154ff608b9fc7c836aea108819fa5075fbb50f57cfd10d752cfc1d`  
		Last Modified: Tue, 24 Nov 2026 23:41:10 GMT  
		Size: 52.8 MB (52774833 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3915230a50e87cbd96f4eb2717bf790746cee7de0580561437c3a1ea9f24ad59`  
		Last Modified: Tue, 24 Nov 2026 23:41:07 GMT  
		Size: 27.3 KB (27253 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:19.0-20261123`

```console
$ docker pull odoo@sha256:c30b26d599d06c2fe9ce5c215725f034ad7636326b4f9ce2469eabb5e59ea1a3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `odoo:19.0-20261123` - linux; amd64

```console
$ docker pull odoo@sha256:c158d501261555aed32c0f30271555e7b23fb4256f406e5e3b14c4f05eadc574
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **701.0 MB (701013884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2b29f069810c7d382ac56a892e33bc543d48c8ce887b506d04a44284721285b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Tue, 10 Nov 2026 18:35:15 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:35:15 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:35:15 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:35:17 GMT
ADD file:54dafd97985c3ec227e2c96be9290657cf2ab456885b5fc8a24c9278bca65e60 in / 
# Tue, 10 Nov 2026 18:35:18 GMT
CMD ["/bin/bash"]
# Tue, 24 Nov 2026 21:10:54 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 24 Nov 2026 21:10:54 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 24 Nov 2026 21:10:54 GMT
ENV LANG=en_US.UTF-8
# Tue, 24 Nov 2026 21:10:54 GMT
ARG TARGETARCH=amd64
# Tue, 24 Nov 2026 21:10:54 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 24 Nov 2026 21:10:59 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 21:12:03 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 21:12:03 GMT
ENV ODOO_VERSION=19.0
# Tue, 24 Nov 2026 21:12:03 GMT
ARG ODOO_RELEASE=20261123
# Tue, 24 Nov 2026 21:12:03 GMT
ARG ODOO_SHA=a5e98d0287bbfe242e8b34ffd22ca80147e63242
# Tue, 24 Nov 2026 21:13:09 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261123 ODOO_SHA=a5e98d0287bbfe242e8b34ffd22ca80147e63242
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 24 Nov 2026 21:13:09 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 24 Nov 2026 21:13:09 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 24 Nov 2026 21:13:09 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261123 ODOO_SHA=a5e98d0287bbfe242e8b34ffd22ca80147e63242
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 24 Nov 2026 21:13:09 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 24 Nov 2026 21:13:09 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 24 Nov 2026 21:13:09 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 24 Nov 2026 21:13:09 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 24 Nov 2026 21:13:09 GMT
USER odoo
# Tue, 24 Nov 2026 21:13:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 24 Nov 2026 21:13:09 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:8e8df94085bf9af8de500d2042195f1819a4c381b7f3be2a6b920cab65039050`  
		Last Modified: Tue, 10 Nov 2026 20:09:19 GMT  
		Size: 29.8 MB (29793297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcbb31e34933387cfe4f85a1395bf756e76d1076b37d7f387e7528b0492136e7`  
		Last Modified: Tue, 24 Nov 2026 21:14:56 GMT  
		Size: 238.7 MB (238729075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85c42b48504e86b099a3b694fa066641b6325a8d7698a46477ee80f1dd8caf86`  
		Last Modified: Tue, 24 Nov 2026 21:14:48 GMT  
		Size: 14.2 MB (14228336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9e0e3d013217dd2b4bdb8df7abdcda381888b1771881aa54d51828f725d8831`  
		Last Modified: Tue, 24 Nov 2026 21:14:47 GMT  
		Size: 879.7 KB (879705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6abb6487b20dfbc35f710b82e335cba740cd1662a16d943b94d690f404b5830e`  
		Last Modified: Tue, 24 Nov 2026 21:14:59 GMT  
		Size: 417.4 MB (417380723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3856e375f4a3c758ecbb2983174c734d491283317cad904c8a25ed7188899b0`  
		Last Modified: Tue, 24 Nov 2026 21:14:48 GMT  
		Size: 717.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:911b2826e4105d3c863e087e076e67e14f619fd4972c3007862d0c472bc057f6`  
		Last Modified: Tue, 24 Nov 2026 21:14:49 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86ca1d965bd90ed679f1b460a4058012bf184c31dbd60187f7d0b3be0911fa58`  
		Last Modified: Tue, 24 Nov 2026 21:14:50 GMT  
		Size: 596.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c515af1af16328e51c271eba6bb2f8b95ddc1c46dc6be8e37d4655e338b46903`  
		Last Modified: Tue, 24 Nov 2026 21:14:51 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19.0-20261123` - unknown; unknown

```console
$ docker pull odoo@sha256:cb73263adbd9f6ab6d62515b284340fc66e15050b0c3f2968baacb00e0776aef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.8 MB (52793670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11c421d191061ba710986738d2ef0e8735b0ffc6691adb64faa7e007d90ebf48`

```dockerfile
```

-	Layers:
	-	`sha256:15c09aef730df22b1e34292c61d2db22cf3da2668085184db19b3b15166d3289`  
		Last Modified: Tue, 24 Nov 2026 21:14:50 GMT  
		Size: 52.8 MB (52766473 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a260303be42a9ee805b044701d6db4f2683ce829cc4498e2c01f8aa13952f150`  
		Last Modified: Tue, 24 Nov 2026 21:14:47 GMT  
		Size: 27.2 KB (27197 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:19.0-20261123` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:f8b1ed5936de5b71c3be7a244fcd179ad1b9baae2b3054e76c2272607645124b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **697.5 MB (697490735 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03a72c54e4a10f3878890b6efceb57675525f46f584b84f85737b63e7825c08c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Tue, 10 Nov 2026 18:31:19 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:31:19 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:31:19 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:31:22 GMT
ADD file:2a6d7d3511af5b48de2ccdad66ef2aa7544bf264ce928935ad4469c76a66169b in / 
# Tue, 10 Nov 2026 18:31:22 GMT
CMD ["/bin/bash"]
# Tue, 24 Nov 2026 21:11:35 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 24 Nov 2026 21:11:35 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 24 Nov 2026 21:11:35 GMT
ENV LANG=en_US.UTF-8
# Tue, 24 Nov 2026 21:11:35 GMT
ARG TARGETARCH=arm64
# Tue, 24 Nov 2026 21:11:35 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 24 Nov 2026 21:11:41 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 21:12:41 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 21:12:41 GMT
ENV ODOO_VERSION=19.0
# Tue, 24 Nov 2026 21:12:41 GMT
ARG ODOO_RELEASE=20261123
# Tue, 24 Nov 2026 21:12:41 GMT
ARG ODOO_SHA=a5e98d0287bbfe242e8b34ffd22ca80147e63242
# Tue, 24 Nov 2026 21:13:52 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261123 ODOO_SHA=a5e98d0287bbfe242e8b34ffd22ca80147e63242
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 24 Nov 2026 21:13:53 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 24 Nov 2026 21:13:53 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 24 Nov 2026 21:13:53 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261123 ODOO_SHA=a5e98d0287bbfe242e8b34ffd22ca80147e63242
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 24 Nov 2026 21:13:53 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 24 Nov 2026 21:13:53 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 24 Nov 2026 21:13:53 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 24 Nov 2026 21:13:53 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 24 Nov 2026 21:13:53 GMT
USER odoo
# Tue, 24 Nov 2026 21:13:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 24 Nov 2026 21:13:53 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:6542099f24f28e8effaa18375a01b636d7898b6807da55b7c2d7a7a8d9eb103c`  
		Last Modified: Tue, 10 Nov 2026 20:09:25 GMT  
		Size: 29.0 MB (28965318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:726bddcb3fdcda4065d088b78fea746aea55a68eae374d49b5f97b9c3c5c3da1`  
		Last Modified: Tue, 24 Nov 2026 21:15:54 GMT  
		Size: 236.2 MB (236197802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b20ea673a29cca59e295a6b3421df07f7e8983e20c8354a9e3d8167512550391`  
		Last Modified: Tue, 24 Nov 2026 21:15:47 GMT  
		Size: 14.2 MB (14206315 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fa7e0bafa494aefe6bcee6a55c3325a62d41c5bab96e88fd3a1190bb86e690a`  
		Last Modified: Tue, 24 Nov 2026 21:15:46 GMT  
		Size: 879.9 KB (879911 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77094cad2d8d22b79312d1a36dff0f4ebac76734c888d7a829285c1eb4db35e9`  
		Last Modified: Tue, 24 Nov 2026 21:15:58 GMT  
		Size: 417.2 MB (417238638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c5679057ef8493488d16a6c3c7807cc8436a49a34f1a4dca4e04468d7e72b85`  
		Last Modified: Tue, 24 Nov 2026 21:15:47 GMT  
		Size: 718.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c833a976542d7e44b1b1d8f87eaa7a8948b8dcafc3151be7f1e6d0e39d13376`  
		Last Modified: Tue, 24 Nov 2026 21:15:48 GMT  
		Size: 557.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b77bbd30f9d0aeba3ca1fa565354303d07c39aabfeb27c7725b04f49ba94eb7`  
		Last Modified: Tue, 24 Nov 2026 21:15:49 GMT  
		Size: 597.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ae042eea8fb62da9f8b6420fe4a73fbb0c11b38411dfd4cd08efd8fc8b239e4`  
		Last Modified: Tue, 24 Nov 2026 21:15:50 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19.0-20261123` - unknown; unknown

```console
$ docker pull odoo@sha256:bca71eb5dc2fe1c05490d07593bdc7f3c9d30a9fca84aacaf7c042e47a75c456
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.8 MB (52801093 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8aebbb22abf5a7e069a125a91612ff542ab5b715b5685a14a0cadbb7a1ab47c6`

```dockerfile
```

-	Layers:
	-	`sha256:972f1d1ea6706075d32b982725bcdbaae98e27c3852dfb24eb06628dde14e3ba`  
		Last Modified: Tue, 24 Nov 2026 21:15:49 GMT  
		Size: 52.8 MB (52773745 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a57ab86efd12b972cce5ccb0adfb58fbbe6739827c293113c812c357c467408f`  
		Last Modified: Tue, 24 Nov 2026 21:15:46 GMT  
		Size: 27.3 KB (27348 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:19.0-20261123` - linux; ppc64le

```console
$ docker pull odoo@sha256:c0a1fabbcfda9d66f8ea58187dade25f3c67b7d055c8ba4e77dbb2a455230484
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **717.5 MB (717514912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4160a0dbcbb5ce7c811399cb17e2a9d5f224b6d1e70e7ec837d5014909ceba52`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Tue, 10 Nov 2026 18:32:30 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:32:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:32:30 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:32:33 GMT
ADD file:9fc87f5d4993c1f29848a41be6f1c74d6ab81fed009749aa0f9d0206b6b19eb0 in / 
# Tue, 10 Nov 2026 18:32:34 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:47:47 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Fri, 20 Nov 2026 03:47:47 GMT
SHELL [/bin/bash -xo pipefail -c]
# Fri, 20 Nov 2026 03:47:47 GMT
ENV LANG=en_US.UTF-8
# Fri, 20 Nov 2026 03:47:47 GMT
ARG TARGETARCH=ppc64le
# Fri, 20 Nov 2026 03:47:47 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Fri, 20 Nov 2026 03:48:01 GMT
# ARGS: TARGETARCH=ppc64le
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:52:38 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:52:38 GMT
ENV ODOO_VERSION=19.0
# Fri, 20 Nov 2026 03:52:38 GMT
ARG ODOO_RELEASE=20261123
# Fri, 20 Nov 2026 03:52:38 GMT
ARG ODOO_SHA=a5e98d0287bbfe242e8b34ffd22ca80147e63242
# Tue, 24 Nov 2026 23:37:05 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261123 ODOO_SHA=a5e98d0287bbfe242e8b34ffd22ca80147e63242
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 24 Nov 2026 23:37:07 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 24 Nov 2026 23:37:07 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 24 Nov 2026 23:37:08 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261123 ODOO_SHA=a5e98d0287bbfe242e8b34ffd22ca80147e63242
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 24 Nov 2026 23:37:08 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 24 Nov 2026 23:37:08 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 24 Nov 2026 23:37:08 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 24 Nov 2026 23:37:09 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 24 Nov 2026 23:37:09 GMT
USER odoo
# Tue, 24 Nov 2026 23:37:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 24 Nov 2026 23:37:09 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:6c769a4f95bc536aae313c2bf7fcbf46e8cc18ed65fefad2a8ccfc1b5b7a63b4`  
		Last Modified: Tue, 10 Nov 2026 20:09:39 GMT  
		Size: 34.4 MB (34406239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09d23117909b1e154619850f663e5569eee5dbcc94f9ac42ebce205ced4b3216`  
		Last Modified: Fri, 20 Nov 2026 04:00:23 GMT  
		Size: 249.4 MB (249408577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92bbbe0bfdd20d044abe9826b7a10c9c8fec1fa7c0af70499d9c16ebac621942`  
		Last Modified: Fri, 20 Nov 2026 04:00:13 GMT  
		Size: 14.8 MB (14765235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d487da9837144c93790f88f70ddb5e7d4b836443f900d194bf0cb96b0c6b34b7`  
		Last Modified: Fri, 20 Nov 2026 04:00:11 GMT  
		Size: 881.0 KB (881010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:052eb539fb6a52855e7e505ab9f2cc8dff279e837b5712a968fcf834e4b591be`  
		Last Modified: Tue, 24 Nov 2026 23:41:17 GMT  
		Size: 418.1 MB (418051098 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d093d0ccc1e18802f4f32a6168f5589ecc757da092329d53c90b71a50e2a7aa6`  
		Last Modified: Tue, 24 Nov 2026 23:41:07 GMT  
		Size: 717.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3082a399e7d36dc7b701cbcc117a5b33c27f45d387b78f7de0d58b51be4ac342`  
		Last Modified: Tue, 24 Nov 2026 23:41:07 GMT  
		Size: 557.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97e1b49a16fe8ce0693e207adb4068bc7c17338474b3f97806744b7871496977`  
		Last Modified: Tue, 24 Nov 2026 23:41:07 GMT  
		Size: 599.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f622f479f27683f87161aa2eb7aba1b061786d03c80e889baed3572e47926d57`  
		Last Modified: Tue, 24 Nov 2026 23:41:08 GMT  
		Size: 880.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19.0-20261123` - unknown; unknown

```console
$ docker pull odoo@sha256:bd5baadace495b2dc8c387eff43e7e51278a7ec71051504a4171ab3d6163b636
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.8 MB (52802086 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b81a10aff9de069cba45aa8e95962fd563e34d3a781d5a5407700910c605939f`

```dockerfile
```

-	Layers:
	-	`sha256:3f79c559d1154ff608b9fc7c836aea108819fa5075fbb50f57cfd10d752cfc1d`  
		Last Modified: Tue, 24 Nov 2026 23:41:10 GMT  
		Size: 52.8 MB (52774833 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3915230a50e87cbd96f4eb2717bf790746cee7de0580561437c3a1ea9f24ad59`  
		Last Modified: Tue, 24 Nov 2026 23:41:07 GMT  
		Size: 27.3 KB (27253 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:20`

```console
$ docker pull odoo@sha256:6709a38456a588273462c83400a0b6dbe09038deefc05846a8d3d25231dbb82e
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
$ docker pull odoo@sha256:384fe7f9e2afc641d004d4de9e17b48b761a0d07cb2bf1ef802bfca6f356add3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **807.8 MB (807781775 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:def5d6befda4b942c4b14dde1fa1384d7b017c3e606cc7f3bf6192f097fe244a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Tue, 10 Nov 2026 18:35:15 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:35:15 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:35:15 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:35:17 GMT
ADD file:54dafd97985c3ec227e2c96be9290657cf2ab456885b5fc8a24c9278bca65e60 in / 
# Tue, 10 Nov 2026 18:35:18 GMT
CMD ["/bin/bash"]
# Tue, 24 Nov 2026 21:10:46 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 24 Nov 2026 21:10:46 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 24 Nov 2026 21:10:46 GMT
ENV LANG=en_US.UTF-8
# Tue, 24 Nov 2026 21:10:46 GMT
ARG TARGETARCH=amd64
# Tue, 24 Nov 2026 21:10:46 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 24 Nov 2026 21:10:51 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 21:12:01 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 21:12:01 GMT
ENV ODOO_VERSION=20.0
# Tue, 24 Nov 2026 21:12:01 GMT
ARG ODOO_RELEASE=20261123
# Tue, 24 Nov 2026 21:12:01 GMT
ARG ODOO_SHA=fed17e66e7206a178795979673610508e2e34cac
# Tue, 24 Nov 2026 21:13:11 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261123 ODOO_SHA=fed17e66e7206a178795979673610508e2e34cac
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 24 Nov 2026 21:13:11 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 24 Nov 2026 21:13:11 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 24 Nov 2026 21:13:12 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261123 ODOO_SHA=fed17e66e7206a178795979673610508e2e34cac
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 24 Nov 2026 21:13:12 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 24 Nov 2026 21:13:12 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 24 Nov 2026 21:13:12 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 24 Nov 2026 21:13:12 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 24 Nov 2026 21:13:12 GMT
USER odoo
# Tue, 24 Nov 2026 21:13:12 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 24 Nov 2026 21:13:12 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:8e8df94085bf9af8de500d2042195f1819a4c381b7f3be2a6b920cab65039050`  
		Last Modified: Tue, 10 Nov 2026 20:09:19 GMT  
		Size: 29.8 MB (29793297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2077fa53d514d62b08ebf5d20f0dfb9b1776d17c1ae8f82100d5816adc2a266`  
		Last Modified: Tue, 24 Nov 2026 21:15:10 GMT  
		Size: 238.7 MB (238729006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce8e387d6d9dd5cb499a36b039d16d58e67579f028fb6165a10e9f9909107930`  
		Last Modified: Tue, 24 Nov 2026 21:15:01 GMT  
		Size: 14.2 MB (14228372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eed1d153dae363ae965847ec90cb52303491677efefc71d35e644f9d12ca1809`  
		Last Modified: Tue, 24 Nov 2026 21:15:01 GMT  
		Size: 879.6 KB (879610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:922ba3d3d425b9dfbb6ed95b20e704085798ced59aef20e71aefa39bd747bf01`  
		Last Modified: Tue, 24 Nov 2026 21:15:17 GMT  
		Size: 524.1 MB (524148721 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b892c581f2fafb9452ed40d5677af49a0a78f2a4c90a54cd6f2b3567c01c5a33`  
		Last Modified: Tue, 24 Nov 2026 21:15:02 GMT  
		Size: 716.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:159aefd8b402602c23c2d3b9d234e9ac8bc2555ca5aaee4fe43c537e271c219d`  
		Last Modified: Tue, 24 Nov 2026 21:15:03 GMT  
		Size: 566.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b74508c9e530054fc9d737f670836d1c09ba10e7a1f36cecc684677377f8725`  
		Last Modified: Tue, 24 Nov 2026 21:15:04 GMT  
		Size: 609.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32263e068dcbb74c6373df79850bd75f5efd5ab82e7711809d2f8d0224bff8dc`  
		Last Modified: Tue, 24 Nov 2026 21:15:05 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:20` - unknown; unknown

```console
$ docker pull odoo@sha256:68cbec189319a4739ad24fb90b9dcebc6af9a5fe44a1a0b5ad480ff10187edc2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.6 MB (55616374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65f0cf639698947edc7a91bac12da5bf4573950d6759310b76b07445f71b48b3`

```dockerfile
```

-	Layers:
	-	`sha256:d6e1b8f87be6f7a82e950a846ce6771ba25ed5d09a8f3a3f4fb89acd1013dee4`  
		Last Modified: Tue, 24 Nov 2026 21:15:04 GMT  
		Size: 55.6 MB (55588883 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:61c1889340c33330a7cf413a94c5ee521f0db2d8f487dbe5131761b576da36ba`  
		Last Modified: Tue, 24 Nov 2026 21:15:00 GMT  
		Size: 27.5 KB (27491 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:20` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:223e61abd963ab1f048084e766cf592534fb2d442cd070793fe5ea2afe68c17d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **804.3 MB (804265662 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b8d17b4870ed61dbd777227045e8a4393a12149efc20f9cb81ec3e40524ecaa`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Tue, 10 Nov 2026 18:31:19 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:31:19 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:31:19 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:31:22 GMT
ADD file:2a6d7d3511af5b48de2ccdad66ef2aa7544bf264ce928935ad4469c76a66169b in / 
# Tue, 10 Nov 2026 18:31:22 GMT
CMD ["/bin/bash"]
# Tue, 24 Nov 2026 21:11:31 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 24 Nov 2026 21:11:31 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 24 Nov 2026 21:11:31 GMT
ENV LANG=en_US.UTF-8
# Tue, 24 Nov 2026 21:11:31 GMT
ARG TARGETARCH=arm64
# Tue, 24 Nov 2026 21:11:31 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 24 Nov 2026 21:11:37 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 21:12:38 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 21:12:38 GMT
ENV ODOO_VERSION=20.0
# Tue, 24 Nov 2026 21:12:38 GMT
ARG ODOO_RELEASE=20261123
# Tue, 24 Nov 2026 21:12:38 GMT
ARG ODOO_SHA=fed17e66e7206a178795979673610508e2e34cac
# Tue, 24 Nov 2026 21:13:54 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261123 ODOO_SHA=fed17e66e7206a178795979673610508e2e34cac
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 24 Nov 2026 21:13:55 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 24 Nov 2026 21:13:55 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 24 Nov 2026 21:13:55 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261123 ODOO_SHA=fed17e66e7206a178795979673610508e2e34cac
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 24 Nov 2026 21:13:55 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 24 Nov 2026 21:13:55 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 24 Nov 2026 21:13:55 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 24 Nov 2026 21:13:55 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 24 Nov 2026 21:13:55 GMT
USER odoo
# Tue, 24 Nov 2026 21:13:55 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 24 Nov 2026 21:13:55 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:6542099f24f28e8effaa18375a01b636d7898b6807da55b7c2d7a7a8d9eb103c`  
		Last Modified: Tue, 10 Nov 2026 20:09:25 GMT  
		Size: 29.0 MB (28965318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aaefe124e2ae473937db5f55d9f1415b9e22d145743b367f1ee4bea31a8605c7`  
		Last Modified: Tue, 24 Nov 2026 21:16:11 GMT  
		Size: 236.2 MB (236197553 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ea541ab537a909ee37bd941d47302b4464d3850f069a17d34f50fd870b49634`  
		Last Modified: Tue, 24 Nov 2026 21:15:51 GMT  
		Size: 14.2 MB (14206270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6023a1d34df08bbcea799f8fc1e45433f27d87235beb492bb9341894fb53f1eb`  
		Last Modified: Tue, 24 Nov 2026 21:15:50 GMT  
		Size: 879.9 KB (879864 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:467132dad35b3f6d6d10c572fbbedf57fe08f672c18d3124a4fe1b6a3a804f5d`  
		Last Modified: Tue, 24 Nov 2026 21:16:23 GMT  
		Size: 524.0 MB (524013885 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d8895b96776a8f58d6efcbceaa0bd2a9e8378a8224723bf9bf599e485cde077`  
		Last Modified: Tue, 24 Nov 2026 21:15:52 GMT  
		Size: 717.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac638ee994141271470b9c232080637604243d8493cd9a0f108f3f37d564bb84`  
		Last Modified: Tue, 24 Nov 2026 21:15:53 GMT  
		Size: 567.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d944ef6094dad1575145d419370c2e001d03a18e37447112c9861245b9c1f3d4`  
		Last Modified: Tue, 24 Nov 2026 21:15:53 GMT  
		Size: 607.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2572125a5a884ba65069ee1e9af3a2aad5752dc31f5efbbd159e38d2895640a8`  
		Last Modified: Tue, 24 Nov 2026 21:15:55 GMT  
		Size: 881.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:20` - unknown; unknown

```console
$ docker pull odoo@sha256:1abc1d85ad16c1033833a856f0d1a9797e3a3222a7ba3a49eeccab7aae3e59c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.6 MB (55623821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d38d26ac8bb465527a7af2c094bcdcb8d954cdb463bd00ffdf364a27976609b`

```dockerfile
```

-	Layers:
	-	`sha256:fa1f87e5e6412bf1c773e38d26ae6e52a8f2aec5b9473a712f54f5f920318b26`  
		Last Modified: Tue, 24 Nov 2026 21:15:54 GMT  
		Size: 55.6 MB (55596167 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3ba94438d444191b6d2ab4a5237af5743228415db53b106050dd5db19ca77de5`  
		Last Modified: Tue, 24 Nov 2026 21:15:50 GMT  
		Size: 27.7 KB (27654 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:20` - linux; ppc64le

```console
$ docker pull odoo@sha256:b85eb9a9d1831d6ec7ea32e10973e25738b42095991dfaeb8ce18bb2234268a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **824.3 MB (824304943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8d9742ac37f81a5e42e0af3a68052e1e1559632496bc5113e804584c46e0984`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Tue, 10 Nov 2026 18:32:30 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:32:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:32:30 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:32:33 GMT
ADD file:9fc87f5d4993c1f29848a41be6f1c74d6ab81fed009749aa0f9d0206b6b19eb0 in / 
# Tue, 10 Nov 2026 18:32:34 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:47:47 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Fri, 20 Nov 2026 03:47:47 GMT
SHELL [/bin/bash -xo pipefail -c]
# Fri, 20 Nov 2026 03:47:47 GMT
ENV LANG=en_US.UTF-8
# Fri, 20 Nov 2026 03:47:47 GMT
ARG TARGETARCH=ppc64le
# Fri, 20 Nov 2026 03:47:47 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Fri, 20 Nov 2026 03:48:01 GMT
# ARGS: TARGETARCH=ppc64le
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:52:38 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:52:38 GMT
ENV ODOO_VERSION=20.0
# Fri, 20 Nov 2026 03:52:38 GMT
ARG ODOO_RELEASE=20261123
# Fri, 20 Nov 2026 03:52:38 GMT
ARG ODOO_SHA=fed17e66e7206a178795979673610508e2e34cac
# Tue, 24 Nov 2026 23:34:07 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261123 ODOO_SHA=fed17e66e7206a178795979673610508e2e34cac
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 24 Nov 2026 23:34:08 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 24 Nov 2026 23:34:08 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 24 Nov 2026 23:34:09 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261123 ODOO_SHA=fed17e66e7206a178795979673610508e2e34cac
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 24 Nov 2026 23:34:09 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 24 Nov 2026 23:34:09 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 24 Nov 2026 23:34:09 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 24 Nov 2026 23:34:09 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 24 Nov 2026 23:34:09 GMT
USER odoo
# Tue, 24 Nov 2026 23:34:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 24 Nov 2026 23:34:09 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:6c769a4f95bc536aae313c2bf7fcbf46e8cc18ed65fefad2a8ccfc1b5b7a63b4`  
		Last Modified: Tue, 10 Nov 2026 20:09:39 GMT  
		Size: 34.4 MB (34406239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09d23117909b1e154619850f663e5569eee5dbcc94f9ac42ebce205ced4b3216`  
		Last Modified: Fri, 20 Nov 2026 04:00:23 GMT  
		Size: 249.4 MB (249408577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92bbbe0bfdd20d044abe9826b7a10c9c8fec1fa7c0af70499d9c16ebac621942`  
		Last Modified: Fri, 20 Nov 2026 04:00:13 GMT  
		Size: 14.8 MB (14765235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d487da9837144c93790f88f70ddb5e7d4b836443f900d194bf0cb96b0c6b34b7`  
		Last Modified: Fri, 20 Nov 2026 04:00:11 GMT  
		Size: 881.0 KB (881010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94390b9a61979070bf2c8ca4a67c29cd7872f92a8c1ee63bc80a2bf29ef997a4`  
		Last Modified: Tue, 24 Nov 2026 23:38:54 GMT  
		Size: 524.8 MB (524841114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44b86d29347286f8671fbab5027bfbb5d7ec051da2de4840d7edef7b436631fe`  
		Last Modified: Tue, 24 Nov 2026 23:38:43 GMT  
		Size: 717.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7eacde92c99ca8d13f04bb9d4157e76229281bd46a098466e230578b64935a12`  
		Last Modified: Tue, 24 Nov 2026 23:38:42 GMT  
		Size: 565.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92c18e069a598d940e0eff3cacd3b0d5d6410524f67eea8d7b3f7a38ba6f854a`  
		Last Modified: Tue, 24 Nov 2026 23:38:43 GMT  
		Size: 608.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea5a5761909060a416fd184daa39afa5e76b5ac3964a27870bbc8b775deb003c`  
		Last Modified: Tue, 24 Nov 2026 23:38:44 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:20` - unknown; unknown

```console
$ docker pull odoo@sha256:5ed2ddced1dd2f72c416612421ff7e5b1f809f47ee552b417cc1fbd50a5dbf1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.6 MB (55624802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4d3e0479615acbc1aeb9f717df4188bd478829cf49d2bb2dd22b494b02bb767`

```dockerfile
```

-	Layers:
	-	`sha256:ecc627eedde30585d9fa8dfa8ac60e257603396e74c69256a7aef7ecd144728d`  
		Last Modified: Tue, 24 Nov 2026 23:38:45 GMT  
		Size: 55.6 MB (55597249 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:564344be2da342362c3c406a67ed7a08141295acc1864edd151f828442ec36f2`  
		Last Modified: Tue, 24 Nov 2026 23:38:42 GMT  
		Size: 27.6 KB (27553 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:20.0`

```console
$ docker pull odoo@sha256:6709a38456a588273462c83400a0b6dbe09038deefc05846a8d3d25231dbb82e
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
$ docker pull odoo@sha256:384fe7f9e2afc641d004d4de9e17b48b761a0d07cb2bf1ef802bfca6f356add3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **807.8 MB (807781775 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:def5d6befda4b942c4b14dde1fa1384d7b017c3e606cc7f3bf6192f097fe244a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Tue, 10 Nov 2026 18:35:15 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:35:15 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:35:15 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:35:17 GMT
ADD file:54dafd97985c3ec227e2c96be9290657cf2ab456885b5fc8a24c9278bca65e60 in / 
# Tue, 10 Nov 2026 18:35:18 GMT
CMD ["/bin/bash"]
# Tue, 24 Nov 2026 21:10:46 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 24 Nov 2026 21:10:46 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 24 Nov 2026 21:10:46 GMT
ENV LANG=en_US.UTF-8
# Tue, 24 Nov 2026 21:10:46 GMT
ARG TARGETARCH=amd64
# Tue, 24 Nov 2026 21:10:46 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 24 Nov 2026 21:10:51 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 21:12:01 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 21:12:01 GMT
ENV ODOO_VERSION=20.0
# Tue, 24 Nov 2026 21:12:01 GMT
ARG ODOO_RELEASE=20261123
# Tue, 24 Nov 2026 21:12:01 GMT
ARG ODOO_SHA=fed17e66e7206a178795979673610508e2e34cac
# Tue, 24 Nov 2026 21:13:11 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261123 ODOO_SHA=fed17e66e7206a178795979673610508e2e34cac
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 24 Nov 2026 21:13:11 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 24 Nov 2026 21:13:11 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 24 Nov 2026 21:13:12 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261123 ODOO_SHA=fed17e66e7206a178795979673610508e2e34cac
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 24 Nov 2026 21:13:12 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 24 Nov 2026 21:13:12 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 24 Nov 2026 21:13:12 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 24 Nov 2026 21:13:12 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 24 Nov 2026 21:13:12 GMT
USER odoo
# Tue, 24 Nov 2026 21:13:12 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 24 Nov 2026 21:13:12 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:8e8df94085bf9af8de500d2042195f1819a4c381b7f3be2a6b920cab65039050`  
		Last Modified: Tue, 10 Nov 2026 20:09:19 GMT  
		Size: 29.8 MB (29793297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2077fa53d514d62b08ebf5d20f0dfb9b1776d17c1ae8f82100d5816adc2a266`  
		Last Modified: Tue, 24 Nov 2026 21:15:10 GMT  
		Size: 238.7 MB (238729006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce8e387d6d9dd5cb499a36b039d16d58e67579f028fb6165a10e9f9909107930`  
		Last Modified: Tue, 24 Nov 2026 21:15:01 GMT  
		Size: 14.2 MB (14228372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eed1d153dae363ae965847ec90cb52303491677efefc71d35e644f9d12ca1809`  
		Last Modified: Tue, 24 Nov 2026 21:15:01 GMT  
		Size: 879.6 KB (879610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:922ba3d3d425b9dfbb6ed95b20e704085798ced59aef20e71aefa39bd747bf01`  
		Last Modified: Tue, 24 Nov 2026 21:15:17 GMT  
		Size: 524.1 MB (524148721 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b892c581f2fafb9452ed40d5677af49a0a78f2a4c90a54cd6f2b3567c01c5a33`  
		Last Modified: Tue, 24 Nov 2026 21:15:02 GMT  
		Size: 716.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:159aefd8b402602c23c2d3b9d234e9ac8bc2555ca5aaee4fe43c537e271c219d`  
		Last Modified: Tue, 24 Nov 2026 21:15:03 GMT  
		Size: 566.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b74508c9e530054fc9d737f670836d1c09ba10e7a1f36cecc684677377f8725`  
		Last Modified: Tue, 24 Nov 2026 21:15:04 GMT  
		Size: 609.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32263e068dcbb74c6373df79850bd75f5efd5ab82e7711809d2f8d0224bff8dc`  
		Last Modified: Tue, 24 Nov 2026 21:15:05 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:20.0` - unknown; unknown

```console
$ docker pull odoo@sha256:68cbec189319a4739ad24fb90b9dcebc6af9a5fe44a1a0b5ad480ff10187edc2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.6 MB (55616374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65f0cf639698947edc7a91bac12da5bf4573950d6759310b76b07445f71b48b3`

```dockerfile
```

-	Layers:
	-	`sha256:d6e1b8f87be6f7a82e950a846ce6771ba25ed5d09a8f3a3f4fb89acd1013dee4`  
		Last Modified: Tue, 24 Nov 2026 21:15:04 GMT  
		Size: 55.6 MB (55588883 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:61c1889340c33330a7cf413a94c5ee521f0db2d8f487dbe5131761b576da36ba`  
		Last Modified: Tue, 24 Nov 2026 21:15:00 GMT  
		Size: 27.5 KB (27491 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:20.0` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:223e61abd963ab1f048084e766cf592534fb2d442cd070793fe5ea2afe68c17d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **804.3 MB (804265662 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b8d17b4870ed61dbd777227045e8a4393a12149efc20f9cb81ec3e40524ecaa`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Tue, 10 Nov 2026 18:31:19 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:31:19 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:31:19 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:31:22 GMT
ADD file:2a6d7d3511af5b48de2ccdad66ef2aa7544bf264ce928935ad4469c76a66169b in / 
# Tue, 10 Nov 2026 18:31:22 GMT
CMD ["/bin/bash"]
# Tue, 24 Nov 2026 21:11:31 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 24 Nov 2026 21:11:31 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 24 Nov 2026 21:11:31 GMT
ENV LANG=en_US.UTF-8
# Tue, 24 Nov 2026 21:11:31 GMT
ARG TARGETARCH=arm64
# Tue, 24 Nov 2026 21:11:31 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 24 Nov 2026 21:11:37 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 21:12:38 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 21:12:38 GMT
ENV ODOO_VERSION=20.0
# Tue, 24 Nov 2026 21:12:38 GMT
ARG ODOO_RELEASE=20261123
# Tue, 24 Nov 2026 21:12:38 GMT
ARG ODOO_SHA=fed17e66e7206a178795979673610508e2e34cac
# Tue, 24 Nov 2026 21:13:54 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261123 ODOO_SHA=fed17e66e7206a178795979673610508e2e34cac
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 24 Nov 2026 21:13:55 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 24 Nov 2026 21:13:55 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 24 Nov 2026 21:13:55 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261123 ODOO_SHA=fed17e66e7206a178795979673610508e2e34cac
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 24 Nov 2026 21:13:55 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 24 Nov 2026 21:13:55 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 24 Nov 2026 21:13:55 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 24 Nov 2026 21:13:55 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 24 Nov 2026 21:13:55 GMT
USER odoo
# Tue, 24 Nov 2026 21:13:55 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 24 Nov 2026 21:13:55 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:6542099f24f28e8effaa18375a01b636d7898b6807da55b7c2d7a7a8d9eb103c`  
		Last Modified: Tue, 10 Nov 2026 20:09:25 GMT  
		Size: 29.0 MB (28965318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aaefe124e2ae473937db5f55d9f1415b9e22d145743b367f1ee4bea31a8605c7`  
		Last Modified: Tue, 24 Nov 2026 21:16:11 GMT  
		Size: 236.2 MB (236197553 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ea541ab537a909ee37bd941d47302b4464d3850f069a17d34f50fd870b49634`  
		Last Modified: Tue, 24 Nov 2026 21:15:51 GMT  
		Size: 14.2 MB (14206270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6023a1d34df08bbcea799f8fc1e45433f27d87235beb492bb9341894fb53f1eb`  
		Last Modified: Tue, 24 Nov 2026 21:15:50 GMT  
		Size: 879.9 KB (879864 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:467132dad35b3f6d6d10c572fbbedf57fe08f672c18d3124a4fe1b6a3a804f5d`  
		Last Modified: Tue, 24 Nov 2026 21:16:23 GMT  
		Size: 524.0 MB (524013885 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d8895b96776a8f58d6efcbceaa0bd2a9e8378a8224723bf9bf599e485cde077`  
		Last Modified: Tue, 24 Nov 2026 21:15:52 GMT  
		Size: 717.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac638ee994141271470b9c232080637604243d8493cd9a0f108f3f37d564bb84`  
		Last Modified: Tue, 24 Nov 2026 21:15:53 GMT  
		Size: 567.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d944ef6094dad1575145d419370c2e001d03a18e37447112c9861245b9c1f3d4`  
		Last Modified: Tue, 24 Nov 2026 21:15:53 GMT  
		Size: 607.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2572125a5a884ba65069ee1e9af3a2aad5752dc31f5efbbd159e38d2895640a8`  
		Last Modified: Tue, 24 Nov 2026 21:15:55 GMT  
		Size: 881.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:20.0` - unknown; unknown

```console
$ docker pull odoo@sha256:1abc1d85ad16c1033833a856f0d1a9797e3a3222a7ba3a49eeccab7aae3e59c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.6 MB (55623821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d38d26ac8bb465527a7af2c094bcdcb8d954cdb463bd00ffdf364a27976609b`

```dockerfile
```

-	Layers:
	-	`sha256:fa1f87e5e6412bf1c773e38d26ae6e52a8f2aec5b9473a712f54f5f920318b26`  
		Last Modified: Tue, 24 Nov 2026 21:15:54 GMT  
		Size: 55.6 MB (55596167 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3ba94438d444191b6d2ab4a5237af5743228415db53b106050dd5db19ca77de5`  
		Last Modified: Tue, 24 Nov 2026 21:15:50 GMT  
		Size: 27.7 KB (27654 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:20.0` - linux; ppc64le

```console
$ docker pull odoo@sha256:b85eb9a9d1831d6ec7ea32e10973e25738b42095991dfaeb8ce18bb2234268a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **824.3 MB (824304943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8d9742ac37f81a5e42e0af3a68052e1e1559632496bc5113e804584c46e0984`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Tue, 10 Nov 2026 18:32:30 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:32:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:32:30 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:32:33 GMT
ADD file:9fc87f5d4993c1f29848a41be6f1c74d6ab81fed009749aa0f9d0206b6b19eb0 in / 
# Tue, 10 Nov 2026 18:32:34 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:47:47 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Fri, 20 Nov 2026 03:47:47 GMT
SHELL [/bin/bash -xo pipefail -c]
# Fri, 20 Nov 2026 03:47:47 GMT
ENV LANG=en_US.UTF-8
# Fri, 20 Nov 2026 03:47:47 GMT
ARG TARGETARCH=ppc64le
# Fri, 20 Nov 2026 03:47:47 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Fri, 20 Nov 2026 03:48:01 GMT
# ARGS: TARGETARCH=ppc64le
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:52:38 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:52:38 GMT
ENV ODOO_VERSION=20.0
# Fri, 20 Nov 2026 03:52:38 GMT
ARG ODOO_RELEASE=20261123
# Fri, 20 Nov 2026 03:52:38 GMT
ARG ODOO_SHA=fed17e66e7206a178795979673610508e2e34cac
# Tue, 24 Nov 2026 23:34:07 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261123 ODOO_SHA=fed17e66e7206a178795979673610508e2e34cac
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 24 Nov 2026 23:34:08 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 24 Nov 2026 23:34:08 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 24 Nov 2026 23:34:09 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261123 ODOO_SHA=fed17e66e7206a178795979673610508e2e34cac
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 24 Nov 2026 23:34:09 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 24 Nov 2026 23:34:09 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 24 Nov 2026 23:34:09 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 24 Nov 2026 23:34:09 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 24 Nov 2026 23:34:09 GMT
USER odoo
# Tue, 24 Nov 2026 23:34:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 24 Nov 2026 23:34:09 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:6c769a4f95bc536aae313c2bf7fcbf46e8cc18ed65fefad2a8ccfc1b5b7a63b4`  
		Last Modified: Tue, 10 Nov 2026 20:09:39 GMT  
		Size: 34.4 MB (34406239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09d23117909b1e154619850f663e5569eee5dbcc94f9ac42ebce205ced4b3216`  
		Last Modified: Fri, 20 Nov 2026 04:00:23 GMT  
		Size: 249.4 MB (249408577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92bbbe0bfdd20d044abe9826b7a10c9c8fec1fa7c0af70499d9c16ebac621942`  
		Last Modified: Fri, 20 Nov 2026 04:00:13 GMT  
		Size: 14.8 MB (14765235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d487da9837144c93790f88f70ddb5e7d4b836443f900d194bf0cb96b0c6b34b7`  
		Last Modified: Fri, 20 Nov 2026 04:00:11 GMT  
		Size: 881.0 KB (881010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94390b9a61979070bf2c8ca4a67c29cd7872f92a8c1ee63bc80a2bf29ef997a4`  
		Last Modified: Tue, 24 Nov 2026 23:38:54 GMT  
		Size: 524.8 MB (524841114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44b86d29347286f8671fbab5027bfbb5d7ec051da2de4840d7edef7b436631fe`  
		Last Modified: Tue, 24 Nov 2026 23:38:43 GMT  
		Size: 717.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7eacde92c99ca8d13f04bb9d4157e76229281bd46a098466e230578b64935a12`  
		Last Modified: Tue, 24 Nov 2026 23:38:42 GMT  
		Size: 565.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92c18e069a598d940e0eff3cacd3b0d5d6410524f67eea8d7b3f7a38ba6f854a`  
		Last Modified: Tue, 24 Nov 2026 23:38:43 GMT  
		Size: 608.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea5a5761909060a416fd184daa39afa5e76b5ac3964a27870bbc8b775deb003c`  
		Last Modified: Tue, 24 Nov 2026 23:38:44 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:20.0` - unknown; unknown

```console
$ docker pull odoo@sha256:5ed2ddced1dd2f72c416612421ff7e5b1f809f47ee552b417cc1fbd50a5dbf1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.6 MB (55624802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4d3e0479615acbc1aeb9f717df4188bd478829cf49d2bb2dd22b494b02bb767`

```dockerfile
```

-	Layers:
	-	`sha256:ecc627eedde30585d9fa8dfa8ac60e257603396e74c69256a7aef7ecd144728d`  
		Last Modified: Tue, 24 Nov 2026 23:38:45 GMT  
		Size: 55.6 MB (55597249 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:564344be2da342362c3c406a67ed7a08141295acc1864edd151f828442ec36f2`  
		Last Modified: Tue, 24 Nov 2026 23:38:42 GMT  
		Size: 27.6 KB (27553 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:20.0-20261123`

```console
$ docker pull odoo@sha256:6709a38456a588273462c83400a0b6dbe09038deefc05846a8d3d25231dbb82e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `odoo:20.0-20261123` - linux; amd64

```console
$ docker pull odoo@sha256:384fe7f9e2afc641d004d4de9e17b48b761a0d07cb2bf1ef802bfca6f356add3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **807.8 MB (807781775 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:def5d6befda4b942c4b14dde1fa1384d7b017c3e606cc7f3bf6192f097fe244a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Tue, 10 Nov 2026 18:35:15 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:35:15 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:35:15 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:35:17 GMT
ADD file:54dafd97985c3ec227e2c96be9290657cf2ab456885b5fc8a24c9278bca65e60 in / 
# Tue, 10 Nov 2026 18:35:18 GMT
CMD ["/bin/bash"]
# Tue, 24 Nov 2026 21:10:46 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 24 Nov 2026 21:10:46 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 24 Nov 2026 21:10:46 GMT
ENV LANG=en_US.UTF-8
# Tue, 24 Nov 2026 21:10:46 GMT
ARG TARGETARCH=amd64
# Tue, 24 Nov 2026 21:10:46 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 24 Nov 2026 21:10:51 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 21:12:01 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 21:12:01 GMT
ENV ODOO_VERSION=20.0
# Tue, 24 Nov 2026 21:12:01 GMT
ARG ODOO_RELEASE=20261123
# Tue, 24 Nov 2026 21:12:01 GMT
ARG ODOO_SHA=fed17e66e7206a178795979673610508e2e34cac
# Tue, 24 Nov 2026 21:13:11 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261123 ODOO_SHA=fed17e66e7206a178795979673610508e2e34cac
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 24 Nov 2026 21:13:11 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 24 Nov 2026 21:13:11 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 24 Nov 2026 21:13:12 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261123 ODOO_SHA=fed17e66e7206a178795979673610508e2e34cac
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 24 Nov 2026 21:13:12 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 24 Nov 2026 21:13:12 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 24 Nov 2026 21:13:12 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 24 Nov 2026 21:13:12 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 24 Nov 2026 21:13:12 GMT
USER odoo
# Tue, 24 Nov 2026 21:13:12 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 24 Nov 2026 21:13:12 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:8e8df94085bf9af8de500d2042195f1819a4c381b7f3be2a6b920cab65039050`  
		Last Modified: Tue, 10 Nov 2026 20:09:19 GMT  
		Size: 29.8 MB (29793297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2077fa53d514d62b08ebf5d20f0dfb9b1776d17c1ae8f82100d5816adc2a266`  
		Last Modified: Tue, 24 Nov 2026 21:15:10 GMT  
		Size: 238.7 MB (238729006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce8e387d6d9dd5cb499a36b039d16d58e67579f028fb6165a10e9f9909107930`  
		Last Modified: Tue, 24 Nov 2026 21:15:01 GMT  
		Size: 14.2 MB (14228372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eed1d153dae363ae965847ec90cb52303491677efefc71d35e644f9d12ca1809`  
		Last Modified: Tue, 24 Nov 2026 21:15:01 GMT  
		Size: 879.6 KB (879610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:922ba3d3d425b9dfbb6ed95b20e704085798ced59aef20e71aefa39bd747bf01`  
		Last Modified: Tue, 24 Nov 2026 21:15:17 GMT  
		Size: 524.1 MB (524148721 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b892c581f2fafb9452ed40d5677af49a0a78f2a4c90a54cd6f2b3567c01c5a33`  
		Last Modified: Tue, 24 Nov 2026 21:15:02 GMT  
		Size: 716.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:159aefd8b402602c23c2d3b9d234e9ac8bc2555ca5aaee4fe43c537e271c219d`  
		Last Modified: Tue, 24 Nov 2026 21:15:03 GMT  
		Size: 566.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b74508c9e530054fc9d737f670836d1c09ba10e7a1f36cecc684677377f8725`  
		Last Modified: Tue, 24 Nov 2026 21:15:04 GMT  
		Size: 609.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32263e068dcbb74c6373df79850bd75f5efd5ab82e7711809d2f8d0224bff8dc`  
		Last Modified: Tue, 24 Nov 2026 21:15:05 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:20.0-20261123` - unknown; unknown

```console
$ docker pull odoo@sha256:68cbec189319a4739ad24fb90b9dcebc6af9a5fe44a1a0b5ad480ff10187edc2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.6 MB (55616374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65f0cf639698947edc7a91bac12da5bf4573950d6759310b76b07445f71b48b3`

```dockerfile
```

-	Layers:
	-	`sha256:d6e1b8f87be6f7a82e950a846ce6771ba25ed5d09a8f3a3f4fb89acd1013dee4`  
		Last Modified: Tue, 24 Nov 2026 21:15:04 GMT  
		Size: 55.6 MB (55588883 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:61c1889340c33330a7cf413a94c5ee521f0db2d8f487dbe5131761b576da36ba`  
		Last Modified: Tue, 24 Nov 2026 21:15:00 GMT  
		Size: 27.5 KB (27491 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:20.0-20261123` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:223e61abd963ab1f048084e766cf592534fb2d442cd070793fe5ea2afe68c17d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **804.3 MB (804265662 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b8d17b4870ed61dbd777227045e8a4393a12149efc20f9cb81ec3e40524ecaa`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Tue, 10 Nov 2026 18:31:19 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:31:19 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:31:19 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:31:22 GMT
ADD file:2a6d7d3511af5b48de2ccdad66ef2aa7544bf264ce928935ad4469c76a66169b in / 
# Tue, 10 Nov 2026 18:31:22 GMT
CMD ["/bin/bash"]
# Tue, 24 Nov 2026 21:11:31 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 24 Nov 2026 21:11:31 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 24 Nov 2026 21:11:31 GMT
ENV LANG=en_US.UTF-8
# Tue, 24 Nov 2026 21:11:31 GMT
ARG TARGETARCH=arm64
# Tue, 24 Nov 2026 21:11:31 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 24 Nov 2026 21:11:37 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 21:12:38 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 21:12:38 GMT
ENV ODOO_VERSION=20.0
# Tue, 24 Nov 2026 21:12:38 GMT
ARG ODOO_RELEASE=20261123
# Tue, 24 Nov 2026 21:12:38 GMT
ARG ODOO_SHA=fed17e66e7206a178795979673610508e2e34cac
# Tue, 24 Nov 2026 21:13:54 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261123 ODOO_SHA=fed17e66e7206a178795979673610508e2e34cac
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 24 Nov 2026 21:13:55 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 24 Nov 2026 21:13:55 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 24 Nov 2026 21:13:55 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261123 ODOO_SHA=fed17e66e7206a178795979673610508e2e34cac
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 24 Nov 2026 21:13:55 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 24 Nov 2026 21:13:55 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 24 Nov 2026 21:13:55 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 24 Nov 2026 21:13:55 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 24 Nov 2026 21:13:55 GMT
USER odoo
# Tue, 24 Nov 2026 21:13:55 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 24 Nov 2026 21:13:55 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:6542099f24f28e8effaa18375a01b636d7898b6807da55b7c2d7a7a8d9eb103c`  
		Last Modified: Tue, 10 Nov 2026 20:09:25 GMT  
		Size: 29.0 MB (28965318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aaefe124e2ae473937db5f55d9f1415b9e22d145743b367f1ee4bea31a8605c7`  
		Last Modified: Tue, 24 Nov 2026 21:16:11 GMT  
		Size: 236.2 MB (236197553 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ea541ab537a909ee37bd941d47302b4464d3850f069a17d34f50fd870b49634`  
		Last Modified: Tue, 24 Nov 2026 21:15:51 GMT  
		Size: 14.2 MB (14206270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6023a1d34df08bbcea799f8fc1e45433f27d87235beb492bb9341894fb53f1eb`  
		Last Modified: Tue, 24 Nov 2026 21:15:50 GMT  
		Size: 879.9 KB (879864 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:467132dad35b3f6d6d10c572fbbedf57fe08f672c18d3124a4fe1b6a3a804f5d`  
		Last Modified: Tue, 24 Nov 2026 21:16:23 GMT  
		Size: 524.0 MB (524013885 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d8895b96776a8f58d6efcbceaa0bd2a9e8378a8224723bf9bf599e485cde077`  
		Last Modified: Tue, 24 Nov 2026 21:15:52 GMT  
		Size: 717.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac638ee994141271470b9c232080637604243d8493cd9a0f108f3f37d564bb84`  
		Last Modified: Tue, 24 Nov 2026 21:15:53 GMT  
		Size: 567.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d944ef6094dad1575145d419370c2e001d03a18e37447112c9861245b9c1f3d4`  
		Last Modified: Tue, 24 Nov 2026 21:15:53 GMT  
		Size: 607.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2572125a5a884ba65069ee1e9af3a2aad5752dc31f5efbbd159e38d2895640a8`  
		Last Modified: Tue, 24 Nov 2026 21:15:55 GMT  
		Size: 881.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:20.0-20261123` - unknown; unknown

```console
$ docker pull odoo@sha256:1abc1d85ad16c1033833a856f0d1a9797e3a3222a7ba3a49eeccab7aae3e59c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.6 MB (55623821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d38d26ac8bb465527a7af2c094bcdcb8d954cdb463bd00ffdf364a27976609b`

```dockerfile
```

-	Layers:
	-	`sha256:fa1f87e5e6412bf1c773e38d26ae6e52a8f2aec5b9473a712f54f5f920318b26`  
		Last Modified: Tue, 24 Nov 2026 21:15:54 GMT  
		Size: 55.6 MB (55596167 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3ba94438d444191b6d2ab4a5237af5743228415db53b106050dd5db19ca77de5`  
		Last Modified: Tue, 24 Nov 2026 21:15:50 GMT  
		Size: 27.7 KB (27654 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:20.0-20261123` - linux; ppc64le

```console
$ docker pull odoo@sha256:b85eb9a9d1831d6ec7ea32e10973e25738b42095991dfaeb8ce18bb2234268a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **824.3 MB (824304943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8d9742ac37f81a5e42e0af3a68052e1e1559632496bc5113e804584c46e0984`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Tue, 10 Nov 2026 18:32:30 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:32:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:32:30 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:32:33 GMT
ADD file:9fc87f5d4993c1f29848a41be6f1c74d6ab81fed009749aa0f9d0206b6b19eb0 in / 
# Tue, 10 Nov 2026 18:32:34 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:47:47 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Fri, 20 Nov 2026 03:47:47 GMT
SHELL [/bin/bash -xo pipefail -c]
# Fri, 20 Nov 2026 03:47:47 GMT
ENV LANG=en_US.UTF-8
# Fri, 20 Nov 2026 03:47:47 GMT
ARG TARGETARCH=ppc64le
# Fri, 20 Nov 2026 03:47:47 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Fri, 20 Nov 2026 03:48:01 GMT
# ARGS: TARGETARCH=ppc64le
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:52:38 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:52:38 GMT
ENV ODOO_VERSION=20.0
# Fri, 20 Nov 2026 03:52:38 GMT
ARG ODOO_RELEASE=20261123
# Fri, 20 Nov 2026 03:52:38 GMT
ARG ODOO_SHA=fed17e66e7206a178795979673610508e2e34cac
# Tue, 24 Nov 2026 23:34:07 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261123 ODOO_SHA=fed17e66e7206a178795979673610508e2e34cac
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 24 Nov 2026 23:34:08 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 24 Nov 2026 23:34:08 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 24 Nov 2026 23:34:09 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261123 ODOO_SHA=fed17e66e7206a178795979673610508e2e34cac
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 24 Nov 2026 23:34:09 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 24 Nov 2026 23:34:09 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 24 Nov 2026 23:34:09 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 24 Nov 2026 23:34:09 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 24 Nov 2026 23:34:09 GMT
USER odoo
# Tue, 24 Nov 2026 23:34:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 24 Nov 2026 23:34:09 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:6c769a4f95bc536aae313c2bf7fcbf46e8cc18ed65fefad2a8ccfc1b5b7a63b4`  
		Last Modified: Tue, 10 Nov 2026 20:09:39 GMT  
		Size: 34.4 MB (34406239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09d23117909b1e154619850f663e5569eee5dbcc94f9ac42ebce205ced4b3216`  
		Last Modified: Fri, 20 Nov 2026 04:00:23 GMT  
		Size: 249.4 MB (249408577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92bbbe0bfdd20d044abe9826b7a10c9c8fec1fa7c0af70499d9c16ebac621942`  
		Last Modified: Fri, 20 Nov 2026 04:00:13 GMT  
		Size: 14.8 MB (14765235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d487da9837144c93790f88f70ddb5e7d4b836443f900d194bf0cb96b0c6b34b7`  
		Last Modified: Fri, 20 Nov 2026 04:00:11 GMT  
		Size: 881.0 KB (881010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94390b9a61979070bf2c8ca4a67c29cd7872f92a8c1ee63bc80a2bf29ef997a4`  
		Last Modified: Tue, 24 Nov 2026 23:38:54 GMT  
		Size: 524.8 MB (524841114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44b86d29347286f8671fbab5027bfbb5d7ec051da2de4840d7edef7b436631fe`  
		Last Modified: Tue, 24 Nov 2026 23:38:43 GMT  
		Size: 717.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7eacde92c99ca8d13f04bb9d4157e76229281bd46a098466e230578b64935a12`  
		Last Modified: Tue, 24 Nov 2026 23:38:42 GMT  
		Size: 565.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92c18e069a598d940e0eff3cacd3b0d5d6410524f67eea8d7b3f7a38ba6f854a`  
		Last Modified: Tue, 24 Nov 2026 23:38:43 GMT  
		Size: 608.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea5a5761909060a416fd184daa39afa5e76b5ac3964a27870bbc8b775deb003c`  
		Last Modified: Tue, 24 Nov 2026 23:38:44 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:20.0-20261123` - unknown; unknown

```console
$ docker pull odoo@sha256:5ed2ddced1dd2f72c416612421ff7e5b1f809f47ee552b417cc1fbd50a5dbf1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.6 MB (55624802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4d3e0479615acbc1aeb9f717df4188bd478829cf49d2bb2dd22b494b02bb767`

```dockerfile
```

-	Layers:
	-	`sha256:ecc627eedde30585d9fa8dfa8ac60e257603396e74c69256a7aef7ecd144728d`  
		Last Modified: Tue, 24 Nov 2026 23:38:45 GMT  
		Size: 55.6 MB (55597249 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:564344be2da342362c3c406a67ed7a08141295acc1864edd151f828442ec36f2`  
		Last Modified: Tue, 24 Nov 2026 23:38:42 GMT  
		Size: 27.6 KB (27553 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:latest`

```console
$ docker pull odoo@sha256:6709a38456a588273462c83400a0b6dbe09038deefc05846a8d3d25231dbb82e
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
$ docker pull odoo@sha256:384fe7f9e2afc641d004d4de9e17b48b761a0d07cb2bf1ef802bfca6f356add3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **807.8 MB (807781775 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:def5d6befda4b942c4b14dde1fa1384d7b017c3e606cc7f3bf6192f097fe244a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Tue, 10 Nov 2026 18:35:15 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:35:15 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:35:15 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:35:17 GMT
ADD file:54dafd97985c3ec227e2c96be9290657cf2ab456885b5fc8a24c9278bca65e60 in / 
# Tue, 10 Nov 2026 18:35:18 GMT
CMD ["/bin/bash"]
# Tue, 24 Nov 2026 21:10:46 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 24 Nov 2026 21:10:46 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 24 Nov 2026 21:10:46 GMT
ENV LANG=en_US.UTF-8
# Tue, 24 Nov 2026 21:10:46 GMT
ARG TARGETARCH=amd64
# Tue, 24 Nov 2026 21:10:46 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 24 Nov 2026 21:10:51 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 21:12:01 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 21:12:01 GMT
ENV ODOO_VERSION=20.0
# Tue, 24 Nov 2026 21:12:01 GMT
ARG ODOO_RELEASE=20261123
# Tue, 24 Nov 2026 21:12:01 GMT
ARG ODOO_SHA=fed17e66e7206a178795979673610508e2e34cac
# Tue, 24 Nov 2026 21:13:11 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261123 ODOO_SHA=fed17e66e7206a178795979673610508e2e34cac
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 24 Nov 2026 21:13:11 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 24 Nov 2026 21:13:11 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 24 Nov 2026 21:13:12 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261123 ODOO_SHA=fed17e66e7206a178795979673610508e2e34cac
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 24 Nov 2026 21:13:12 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 24 Nov 2026 21:13:12 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 24 Nov 2026 21:13:12 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 24 Nov 2026 21:13:12 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 24 Nov 2026 21:13:12 GMT
USER odoo
# Tue, 24 Nov 2026 21:13:12 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 24 Nov 2026 21:13:12 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:8e8df94085bf9af8de500d2042195f1819a4c381b7f3be2a6b920cab65039050`  
		Last Modified: Tue, 10 Nov 2026 20:09:19 GMT  
		Size: 29.8 MB (29793297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2077fa53d514d62b08ebf5d20f0dfb9b1776d17c1ae8f82100d5816adc2a266`  
		Last Modified: Tue, 24 Nov 2026 21:15:10 GMT  
		Size: 238.7 MB (238729006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce8e387d6d9dd5cb499a36b039d16d58e67579f028fb6165a10e9f9909107930`  
		Last Modified: Tue, 24 Nov 2026 21:15:01 GMT  
		Size: 14.2 MB (14228372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eed1d153dae363ae965847ec90cb52303491677efefc71d35e644f9d12ca1809`  
		Last Modified: Tue, 24 Nov 2026 21:15:01 GMT  
		Size: 879.6 KB (879610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:922ba3d3d425b9dfbb6ed95b20e704085798ced59aef20e71aefa39bd747bf01`  
		Last Modified: Tue, 24 Nov 2026 21:15:17 GMT  
		Size: 524.1 MB (524148721 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b892c581f2fafb9452ed40d5677af49a0a78f2a4c90a54cd6f2b3567c01c5a33`  
		Last Modified: Tue, 24 Nov 2026 21:15:02 GMT  
		Size: 716.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:159aefd8b402602c23c2d3b9d234e9ac8bc2555ca5aaee4fe43c537e271c219d`  
		Last Modified: Tue, 24 Nov 2026 21:15:03 GMT  
		Size: 566.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b74508c9e530054fc9d737f670836d1c09ba10e7a1f36cecc684677377f8725`  
		Last Modified: Tue, 24 Nov 2026 21:15:04 GMT  
		Size: 609.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32263e068dcbb74c6373df79850bd75f5efd5ab82e7711809d2f8d0224bff8dc`  
		Last Modified: Tue, 24 Nov 2026 21:15:05 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:latest` - unknown; unknown

```console
$ docker pull odoo@sha256:68cbec189319a4739ad24fb90b9dcebc6af9a5fe44a1a0b5ad480ff10187edc2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.6 MB (55616374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65f0cf639698947edc7a91bac12da5bf4573950d6759310b76b07445f71b48b3`

```dockerfile
```

-	Layers:
	-	`sha256:d6e1b8f87be6f7a82e950a846ce6771ba25ed5d09a8f3a3f4fb89acd1013dee4`  
		Last Modified: Tue, 24 Nov 2026 21:15:04 GMT  
		Size: 55.6 MB (55588883 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:61c1889340c33330a7cf413a94c5ee521f0db2d8f487dbe5131761b576da36ba`  
		Last Modified: Tue, 24 Nov 2026 21:15:00 GMT  
		Size: 27.5 KB (27491 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:latest` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:223e61abd963ab1f048084e766cf592534fb2d442cd070793fe5ea2afe68c17d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **804.3 MB (804265662 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b8d17b4870ed61dbd777227045e8a4393a12149efc20f9cb81ec3e40524ecaa`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Tue, 10 Nov 2026 18:31:19 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:31:19 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:31:19 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:31:22 GMT
ADD file:2a6d7d3511af5b48de2ccdad66ef2aa7544bf264ce928935ad4469c76a66169b in / 
# Tue, 10 Nov 2026 18:31:22 GMT
CMD ["/bin/bash"]
# Tue, 24 Nov 2026 21:11:31 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 24 Nov 2026 21:11:31 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 24 Nov 2026 21:11:31 GMT
ENV LANG=en_US.UTF-8
# Tue, 24 Nov 2026 21:11:31 GMT
ARG TARGETARCH=arm64
# Tue, 24 Nov 2026 21:11:31 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 24 Nov 2026 21:11:37 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 21:12:38 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 21:12:38 GMT
ENV ODOO_VERSION=20.0
# Tue, 24 Nov 2026 21:12:38 GMT
ARG ODOO_RELEASE=20261123
# Tue, 24 Nov 2026 21:12:38 GMT
ARG ODOO_SHA=fed17e66e7206a178795979673610508e2e34cac
# Tue, 24 Nov 2026 21:13:54 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261123 ODOO_SHA=fed17e66e7206a178795979673610508e2e34cac
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 24 Nov 2026 21:13:55 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 24 Nov 2026 21:13:55 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 24 Nov 2026 21:13:55 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261123 ODOO_SHA=fed17e66e7206a178795979673610508e2e34cac
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 24 Nov 2026 21:13:55 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 24 Nov 2026 21:13:55 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 24 Nov 2026 21:13:55 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 24 Nov 2026 21:13:55 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 24 Nov 2026 21:13:55 GMT
USER odoo
# Tue, 24 Nov 2026 21:13:55 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 24 Nov 2026 21:13:55 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:6542099f24f28e8effaa18375a01b636d7898b6807da55b7c2d7a7a8d9eb103c`  
		Last Modified: Tue, 10 Nov 2026 20:09:25 GMT  
		Size: 29.0 MB (28965318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aaefe124e2ae473937db5f55d9f1415b9e22d145743b367f1ee4bea31a8605c7`  
		Last Modified: Tue, 24 Nov 2026 21:16:11 GMT  
		Size: 236.2 MB (236197553 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ea541ab537a909ee37bd941d47302b4464d3850f069a17d34f50fd870b49634`  
		Last Modified: Tue, 24 Nov 2026 21:15:51 GMT  
		Size: 14.2 MB (14206270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6023a1d34df08bbcea799f8fc1e45433f27d87235beb492bb9341894fb53f1eb`  
		Last Modified: Tue, 24 Nov 2026 21:15:50 GMT  
		Size: 879.9 KB (879864 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:467132dad35b3f6d6d10c572fbbedf57fe08f672c18d3124a4fe1b6a3a804f5d`  
		Last Modified: Tue, 24 Nov 2026 21:16:23 GMT  
		Size: 524.0 MB (524013885 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d8895b96776a8f58d6efcbceaa0bd2a9e8378a8224723bf9bf599e485cde077`  
		Last Modified: Tue, 24 Nov 2026 21:15:52 GMT  
		Size: 717.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac638ee994141271470b9c232080637604243d8493cd9a0f108f3f37d564bb84`  
		Last Modified: Tue, 24 Nov 2026 21:15:53 GMT  
		Size: 567.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d944ef6094dad1575145d419370c2e001d03a18e37447112c9861245b9c1f3d4`  
		Last Modified: Tue, 24 Nov 2026 21:15:53 GMT  
		Size: 607.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2572125a5a884ba65069ee1e9af3a2aad5752dc31f5efbbd159e38d2895640a8`  
		Last Modified: Tue, 24 Nov 2026 21:15:55 GMT  
		Size: 881.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:latest` - unknown; unknown

```console
$ docker pull odoo@sha256:1abc1d85ad16c1033833a856f0d1a9797e3a3222a7ba3a49eeccab7aae3e59c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.6 MB (55623821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d38d26ac8bb465527a7af2c094bcdcb8d954cdb463bd00ffdf364a27976609b`

```dockerfile
```

-	Layers:
	-	`sha256:fa1f87e5e6412bf1c773e38d26ae6e52a8f2aec5b9473a712f54f5f920318b26`  
		Last Modified: Tue, 24 Nov 2026 21:15:54 GMT  
		Size: 55.6 MB (55596167 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3ba94438d444191b6d2ab4a5237af5743228415db53b106050dd5db19ca77de5`  
		Last Modified: Tue, 24 Nov 2026 21:15:50 GMT  
		Size: 27.7 KB (27654 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:latest` - linux; ppc64le

```console
$ docker pull odoo@sha256:b85eb9a9d1831d6ec7ea32e10973e25738b42095991dfaeb8ce18bb2234268a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **824.3 MB (824304943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8d9742ac37f81a5e42e0af3a68052e1e1559632496bc5113e804584c46e0984`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Tue, 10 Nov 2026 18:32:30 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:32:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:32:30 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:32:33 GMT
ADD file:9fc87f5d4993c1f29848a41be6f1c74d6ab81fed009749aa0f9d0206b6b19eb0 in / 
# Tue, 10 Nov 2026 18:32:34 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:47:47 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Fri, 20 Nov 2026 03:47:47 GMT
SHELL [/bin/bash -xo pipefail -c]
# Fri, 20 Nov 2026 03:47:47 GMT
ENV LANG=en_US.UTF-8
# Fri, 20 Nov 2026 03:47:47 GMT
ARG TARGETARCH=ppc64le
# Fri, 20 Nov 2026 03:47:47 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Fri, 20 Nov 2026 03:48:01 GMT
# ARGS: TARGETARCH=ppc64le
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:52:38 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:52:38 GMT
ENV ODOO_VERSION=20.0
# Fri, 20 Nov 2026 03:52:38 GMT
ARG ODOO_RELEASE=20261123
# Fri, 20 Nov 2026 03:52:38 GMT
ARG ODOO_SHA=fed17e66e7206a178795979673610508e2e34cac
# Tue, 24 Nov 2026 23:34:07 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261123 ODOO_SHA=fed17e66e7206a178795979673610508e2e34cac
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 24 Nov 2026 23:34:08 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 24 Nov 2026 23:34:08 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 24 Nov 2026 23:34:09 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261123 ODOO_SHA=fed17e66e7206a178795979673610508e2e34cac
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 24 Nov 2026 23:34:09 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 24 Nov 2026 23:34:09 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 24 Nov 2026 23:34:09 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 24 Nov 2026 23:34:09 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 24 Nov 2026 23:34:09 GMT
USER odoo
# Tue, 24 Nov 2026 23:34:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 24 Nov 2026 23:34:09 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:6c769a4f95bc536aae313c2bf7fcbf46e8cc18ed65fefad2a8ccfc1b5b7a63b4`  
		Last Modified: Tue, 10 Nov 2026 20:09:39 GMT  
		Size: 34.4 MB (34406239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09d23117909b1e154619850f663e5569eee5dbcc94f9ac42ebce205ced4b3216`  
		Last Modified: Fri, 20 Nov 2026 04:00:23 GMT  
		Size: 249.4 MB (249408577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92bbbe0bfdd20d044abe9826b7a10c9c8fec1fa7c0af70499d9c16ebac621942`  
		Last Modified: Fri, 20 Nov 2026 04:00:13 GMT  
		Size: 14.8 MB (14765235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d487da9837144c93790f88f70ddb5e7d4b836443f900d194bf0cb96b0c6b34b7`  
		Last Modified: Fri, 20 Nov 2026 04:00:11 GMT  
		Size: 881.0 KB (881010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94390b9a61979070bf2c8ca4a67c29cd7872f92a8c1ee63bc80a2bf29ef997a4`  
		Last Modified: Tue, 24 Nov 2026 23:38:54 GMT  
		Size: 524.8 MB (524841114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44b86d29347286f8671fbab5027bfbb5d7ec051da2de4840d7edef7b436631fe`  
		Last Modified: Tue, 24 Nov 2026 23:38:43 GMT  
		Size: 717.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7eacde92c99ca8d13f04bb9d4157e76229281bd46a098466e230578b64935a12`  
		Last Modified: Tue, 24 Nov 2026 23:38:42 GMT  
		Size: 565.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92c18e069a598d940e0eff3cacd3b0d5d6410524f67eea8d7b3f7a38ba6f854a`  
		Last Modified: Tue, 24 Nov 2026 23:38:43 GMT  
		Size: 608.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea5a5761909060a416fd184daa39afa5e76b5ac3964a27870bbc8b775deb003c`  
		Last Modified: Tue, 24 Nov 2026 23:38:44 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:latest` - unknown; unknown

```console
$ docker pull odoo@sha256:5ed2ddced1dd2f72c416612421ff7e5b1f809f47ee552b417cc1fbd50a5dbf1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.6 MB (55624802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4d3e0479615acbc1aeb9f717df4188bd478829cf49d2bb2dd22b494b02bb767`

```dockerfile
```

-	Layers:
	-	`sha256:ecc627eedde30585d9fa8dfa8ac60e257603396e74c69256a7aef7ecd144728d`  
		Last Modified: Tue, 24 Nov 2026 23:38:45 GMT  
		Size: 55.6 MB (55597249 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:564344be2da342362c3c406a67ed7a08141295acc1864edd151f828442ec36f2`  
		Last Modified: Tue, 24 Nov 2026 23:38:42 GMT  
		Size: 27.6 KB (27553 bytes)  
		MIME: application/vnd.in-toto+json
