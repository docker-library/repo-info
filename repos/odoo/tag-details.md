<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `odoo`

-	[`odoo:17`](#odoo17)
-	[`odoo:17.0`](#odoo170)
-	[`odoo:17.0-20260908`](#odoo170-20260908)
-	[`odoo:18`](#odoo18)
-	[`odoo:18.0`](#odoo180)
-	[`odoo:18.0-20260908`](#odoo180-20260908)
-	[`odoo:19`](#odoo19)
-	[`odoo:19.0`](#odoo190)
-	[`odoo:19.0-20260908`](#odoo190-20260908)
-	[`odoo:latest`](#odoolatest)

## `odoo:17`

```console
$ docker pull odoo@sha256:c4049c9719f6a80a08e2b20de35ae42d0b66fc76a7e3c1cbaae08947236ab6e9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `odoo:17` - linux; amd64

```console
$ docker pull odoo@sha256:d1b5a33dcfc8a45b0322d569aafde7ba106e126ab8e2b8c0d5d761d9777e4d48
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **615.4 MB (615358530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5456f7228d08a358b2e9fb0d364301c123e2281266c6a53b3a639f14da779dc`
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
# Tue, 08 Sep 2026 20:59:32 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 08 Sep 2026 20:59:32 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 08 Sep 2026 20:59:32 GMT
ENV LANG=en_US.UTF-8
# Tue, 08 Sep 2026 20:59:32 GMT
ARG TARGETARCH=amd64
# Tue, 08 Sep 2026 20:59:32 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     DEBIAN_FRONTEND=noninteractive     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 08 Sep 2026 20:59:40 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jammy-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 08 Sep 2026 21:00:12 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 08 Sep 2026 21:00:12 GMT
ENV ODOO_VERSION=17.0
# Tue, 08 Sep 2026 21:00:12 GMT
ARG ODOO_RELEASE=20260908
# Tue, 08 Sep 2026 21:00:12 GMT
ARG ODOO_SHA=57a8df50c37363cce2d3f2e626d1b4e67b53fc11
# Tue, 08 Sep 2026 21:01:13 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260908 ODOO_SHA=57a8df50c37363cce2d3f2e626d1b4e67b53fc11
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 08 Sep 2026 21:01:13 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 08 Sep 2026 21:01:13 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 08 Sep 2026 21:01:13 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260908 ODOO_SHA=57a8df50c37363cce2d3f2e626d1b4e67b53fc11
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 08 Sep 2026 21:01:13 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 08 Sep 2026 21:01:13 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 08 Sep 2026 21:01:13 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 08 Sep 2026 21:01:13 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 08 Sep 2026 21:01:13 GMT
USER odoo
# Tue, 08 Sep 2026 21:01:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 08 Sep 2026 21:01:13 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8dd5fa392a8b7dd6911c3c5ea16e1cb6e026545fb65311fa7621a98ff077d31`  
		Last Modified: Tue, 08 Sep 2026 21:02:33 GMT  
		Size: 235.1 MB (235146591 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aee8dca07df39c863144279df55ade547db6420919d70e010a0c775d0685eaf3`  
		Last Modified: Tue, 08 Sep 2026 21:02:25 GMT  
		Size: 2.6 MB (2566391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2069b94be210f7804a99e9e4e016fe8de47427d7de1312aaba1db20aca9d650`  
		Last Modified: Tue, 08 Sep 2026 21:02:25 GMT  
		Size: 683.5 KB (683468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:354ab2d6fef5db1d26ef98698f8087c8ef6c1eb53e7b8b7dd83923a658112350`  
		Last Modified: Tue, 08 Sep 2026 21:02:36 GMT  
		Size: 347.2 MB (347222343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a94180ec48f1f63727f2e33794c525da5e9244e54870054c83dfbdc448dd6ff`  
		Last Modified: Tue, 08 Sep 2026 21:02:26 GMT  
		Size: 766.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3edd4f2270624c8b8e018e95c87d9749a3c0a63d4744d48699eac633ae65a0d4`  
		Last Modified: Tue, 08 Sep 2026 21:02:26 GMT  
		Size: 555.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2ab37c124043e8e1330631f00bf64a36e82034b218dab8d49af253ceaa3dfa7`  
		Last Modified: Tue, 08 Sep 2026 21:02:27 GMT  
		Size: 595.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:040fa417b92558a1ead7f8a38b990d5b91669f4c82a92beca25da7b9a967d20c`  
		Last Modified: Tue, 08 Sep 2026 21:02:28 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:17` - unknown; unknown

```console
$ docker pull odoo@sha256:c83ee703493f801e47448b456387ca1d931febdfe4beb35c37c3e1204b9b138a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.8 MB (40845720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e39277f1c972523cdb7e8b14666f152a7e0c17e50dbed8416afe926818b0739`

```dockerfile
```

-	Layers:
	-	`sha256:f718bc74d1be0e9e43c37295f74f57cd17931ae7d10d155375251f357ea2afdc`  
		Last Modified: Tue, 08 Sep 2026 21:02:27 GMT  
		Size: 40.8 MB (40818404 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:15c1528532f287b3f9a6bc8239cdf5fe7a4a4890433b0ae0d22837b820170ba3`  
		Last Modified: Tue, 08 Sep 2026 21:02:24 GMT  
		Size: 27.3 KB (27316 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:17` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:ae1b117091c495b9217ce14b1d2b7fd17be0a70ca6c0466134e7734225cda2f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **610.2 MB (610175957 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2f81d3cd7fadbba2beaa0234ba4be294faac023b3299fbdd5406920bb4ce64b`
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
# Tue, 08 Sep 2026 20:58:24 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 08 Sep 2026 20:58:24 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 08 Sep 2026 20:58:24 GMT
ENV LANG=en_US.UTF-8
# Tue, 08 Sep 2026 20:58:24 GMT
ARG TARGETARCH=arm64
# Tue, 08 Sep 2026 20:58:24 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     DEBIAN_FRONTEND=noninteractive     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 08 Sep 2026 20:58:33 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jammy-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 08 Sep 2026 20:59:01 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 08 Sep 2026 20:59:01 GMT
ENV ODOO_VERSION=17.0
# Tue, 08 Sep 2026 20:59:01 GMT
ARG ODOO_RELEASE=20260908
# Tue, 08 Sep 2026 20:59:01 GMT
ARG ODOO_SHA=57a8df50c37363cce2d3f2e626d1b4e67b53fc11
# Tue, 08 Sep 2026 21:00:05 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260908 ODOO_SHA=57a8df50c37363cce2d3f2e626d1b4e67b53fc11
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 08 Sep 2026 21:00:05 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 08 Sep 2026 21:00:05 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 08 Sep 2026 21:00:05 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260908 ODOO_SHA=57a8df50c37363cce2d3f2e626d1b4e67b53fc11
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 08 Sep 2026 21:00:05 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 08 Sep 2026 21:00:05 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 08 Sep 2026 21:00:05 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 08 Sep 2026 21:00:05 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 08 Sep 2026 21:00:05 GMT
USER odoo
# Tue, 08 Sep 2026 21:00:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 08 Sep 2026 21:00:05 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c229d6d927af663a8b463321cdca041d1387054f290ef91f5d63c59f86a42c97`  
		Last Modified: Tue, 08 Sep 2026 21:01:32 GMT  
		Size: 232.5 MB (232463397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0aa27c7bd296ac28f87d899eb78da844e37cdce301c342a552fa990271373633`  
		Last Modified: Tue, 08 Sep 2026 21:01:23 GMT  
		Size: 2.6 MB (2562483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd0219c24d95da66cfb13bfb648b84f71cfa364b004898e3f3179bbf6a3dca48`  
		Last Modified: Tue, 08 Sep 2026 21:01:22 GMT  
		Size: 683.5 KB (683530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0f646025d0b74eb859d6ba492fed494555ab9b42b36cafc6f367caeffb52be7`  
		Last Modified: Tue, 08 Sep 2026 21:01:34 GMT  
		Size: 346.8 MB (346843302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05f486f6331035e7a1256110e16892c0dca186f498c96a5e77228f43cda33ca0`  
		Last Modified: Tue, 08 Sep 2026 21:01:24 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ea8e7a247ea2fd42383b4161a8bd55f76e4193063c9b98ef7a837ea63e95d18`  
		Last Modified: Tue, 08 Sep 2026 21:01:24 GMT  
		Size: 554.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:188eac2a601506dc933175057af3deb801beae5894176948f9c66f6102b84245`  
		Last Modified: Tue, 08 Sep 2026 21:01:25 GMT  
		Size: 594.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2cae1e10b1924c1fa4cae1a2c149756bb88107eaa2d347dc33f5c029a695ff2`  
		Last Modified: Tue, 08 Sep 2026 21:01:25 GMT  
		Size: 877.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:17` - unknown; unknown

```console
$ docker pull odoo@sha256:0c1a76d61315cf8d12d3d295df956213fa5be50549a374930c71527b6d5b01d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.9 MB (40852377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0dbc8493f1a3acdd36b1ce38727793b4940d795cb51c231525c02adb64a1efd6`

```dockerfile
```

-	Layers:
	-	`sha256:923ff79a361efb18bb4bbb7ded85f1b18bea9222a438b52f60715440164ef54a`  
		Last Modified: Tue, 08 Sep 2026 21:01:25 GMT  
		Size: 40.8 MB (40824908 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5fec65ee91c233b8f6b62930052aa2766dd5e9674b28fa12284b67c91240f59a`  
		Last Modified: Tue, 08 Sep 2026 21:01:22 GMT  
		Size: 27.5 KB (27469 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:17.0`

```console
$ docker pull odoo@sha256:c4049c9719f6a80a08e2b20de35ae42d0b66fc76a7e3c1cbaae08947236ab6e9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `odoo:17.0` - linux; amd64

```console
$ docker pull odoo@sha256:d1b5a33dcfc8a45b0322d569aafde7ba106e126ab8e2b8c0d5d761d9777e4d48
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **615.4 MB (615358530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5456f7228d08a358b2e9fb0d364301c123e2281266c6a53b3a639f14da779dc`
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
# Tue, 08 Sep 2026 20:59:32 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 08 Sep 2026 20:59:32 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 08 Sep 2026 20:59:32 GMT
ENV LANG=en_US.UTF-8
# Tue, 08 Sep 2026 20:59:32 GMT
ARG TARGETARCH=amd64
# Tue, 08 Sep 2026 20:59:32 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     DEBIAN_FRONTEND=noninteractive     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 08 Sep 2026 20:59:40 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jammy-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 08 Sep 2026 21:00:12 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 08 Sep 2026 21:00:12 GMT
ENV ODOO_VERSION=17.0
# Tue, 08 Sep 2026 21:00:12 GMT
ARG ODOO_RELEASE=20260908
# Tue, 08 Sep 2026 21:00:12 GMT
ARG ODOO_SHA=57a8df50c37363cce2d3f2e626d1b4e67b53fc11
# Tue, 08 Sep 2026 21:01:13 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260908 ODOO_SHA=57a8df50c37363cce2d3f2e626d1b4e67b53fc11
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 08 Sep 2026 21:01:13 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 08 Sep 2026 21:01:13 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 08 Sep 2026 21:01:13 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260908 ODOO_SHA=57a8df50c37363cce2d3f2e626d1b4e67b53fc11
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 08 Sep 2026 21:01:13 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 08 Sep 2026 21:01:13 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 08 Sep 2026 21:01:13 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 08 Sep 2026 21:01:13 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 08 Sep 2026 21:01:13 GMT
USER odoo
# Tue, 08 Sep 2026 21:01:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 08 Sep 2026 21:01:13 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8dd5fa392a8b7dd6911c3c5ea16e1cb6e026545fb65311fa7621a98ff077d31`  
		Last Modified: Tue, 08 Sep 2026 21:02:33 GMT  
		Size: 235.1 MB (235146591 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aee8dca07df39c863144279df55ade547db6420919d70e010a0c775d0685eaf3`  
		Last Modified: Tue, 08 Sep 2026 21:02:25 GMT  
		Size: 2.6 MB (2566391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2069b94be210f7804a99e9e4e016fe8de47427d7de1312aaba1db20aca9d650`  
		Last Modified: Tue, 08 Sep 2026 21:02:25 GMT  
		Size: 683.5 KB (683468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:354ab2d6fef5db1d26ef98698f8087c8ef6c1eb53e7b8b7dd83923a658112350`  
		Last Modified: Tue, 08 Sep 2026 21:02:36 GMT  
		Size: 347.2 MB (347222343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a94180ec48f1f63727f2e33794c525da5e9244e54870054c83dfbdc448dd6ff`  
		Last Modified: Tue, 08 Sep 2026 21:02:26 GMT  
		Size: 766.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3edd4f2270624c8b8e018e95c87d9749a3c0a63d4744d48699eac633ae65a0d4`  
		Last Modified: Tue, 08 Sep 2026 21:02:26 GMT  
		Size: 555.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2ab37c124043e8e1330631f00bf64a36e82034b218dab8d49af253ceaa3dfa7`  
		Last Modified: Tue, 08 Sep 2026 21:02:27 GMT  
		Size: 595.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:040fa417b92558a1ead7f8a38b990d5b91669f4c82a92beca25da7b9a967d20c`  
		Last Modified: Tue, 08 Sep 2026 21:02:28 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:17.0` - unknown; unknown

```console
$ docker pull odoo@sha256:c83ee703493f801e47448b456387ca1d931febdfe4beb35c37c3e1204b9b138a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.8 MB (40845720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e39277f1c972523cdb7e8b14666f152a7e0c17e50dbed8416afe926818b0739`

```dockerfile
```

-	Layers:
	-	`sha256:f718bc74d1be0e9e43c37295f74f57cd17931ae7d10d155375251f357ea2afdc`  
		Last Modified: Tue, 08 Sep 2026 21:02:27 GMT  
		Size: 40.8 MB (40818404 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:15c1528532f287b3f9a6bc8239cdf5fe7a4a4890433b0ae0d22837b820170ba3`  
		Last Modified: Tue, 08 Sep 2026 21:02:24 GMT  
		Size: 27.3 KB (27316 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:17.0` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:ae1b117091c495b9217ce14b1d2b7fd17be0a70ca6c0466134e7734225cda2f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **610.2 MB (610175957 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2f81d3cd7fadbba2beaa0234ba4be294faac023b3299fbdd5406920bb4ce64b`
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
# Tue, 08 Sep 2026 20:58:24 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 08 Sep 2026 20:58:24 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 08 Sep 2026 20:58:24 GMT
ENV LANG=en_US.UTF-8
# Tue, 08 Sep 2026 20:58:24 GMT
ARG TARGETARCH=arm64
# Tue, 08 Sep 2026 20:58:24 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     DEBIAN_FRONTEND=noninteractive     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 08 Sep 2026 20:58:33 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jammy-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 08 Sep 2026 20:59:01 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 08 Sep 2026 20:59:01 GMT
ENV ODOO_VERSION=17.0
# Tue, 08 Sep 2026 20:59:01 GMT
ARG ODOO_RELEASE=20260908
# Tue, 08 Sep 2026 20:59:01 GMT
ARG ODOO_SHA=57a8df50c37363cce2d3f2e626d1b4e67b53fc11
# Tue, 08 Sep 2026 21:00:05 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260908 ODOO_SHA=57a8df50c37363cce2d3f2e626d1b4e67b53fc11
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 08 Sep 2026 21:00:05 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 08 Sep 2026 21:00:05 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 08 Sep 2026 21:00:05 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260908 ODOO_SHA=57a8df50c37363cce2d3f2e626d1b4e67b53fc11
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 08 Sep 2026 21:00:05 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 08 Sep 2026 21:00:05 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 08 Sep 2026 21:00:05 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 08 Sep 2026 21:00:05 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 08 Sep 2026 21:00:05 GMT
USER odoo
# Tue, 08 Sep 2026 21:00:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 08 Sep 2026 21:00:05 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c229d6d927af663a8b463321cdca041d1387054f290ef91f5d63c59f86a42c97`  
		Last Modified: Tue, 08 Sep 2026 21:01:32 GMT  
		Size: 232.5 MB (232463397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0aa27c7bd296ac28f87d899eb78da844e37cdce301c342a552fa990271373633`  
		Last Modified: Tue, 08 Sep 2026 21:01:23 GMT  
		Size: 2.6 MB (2562483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd0219c24d95da66cfb13bfb648b84f71cfa364b004898e3f3179bbf6a3dca48`  
		Last Modified: Tue, 08 Sep 2026 21:01:22 GMT  
		Size: 683.5 KB (683530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0f646025d0b74eb859d6ba492fed494555ab9b42b36cafc6f367caeffb52be7`  
		Last Modified: Tue, 08 Sep 2026 21:01:34 GMT  
		Size: 346.8 MB (346843302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05f486f6331035e7a1256110e16892c0dca186f498c96a5e77228f43cda33ca0`  
		Last Modified: Tue, 08 Sep 2026 21:01:24 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ea8e7a247ea2fd42383b4161a8bd55f76e4193063c9b98ef7a837ea63e95d18`  
		Last Modified: Tue, 08 Sep 2026 21:01:24 GMT  
		Size: 554.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:188eac2a601506dc933175057af3deb801beae5894176948f9c66f6102b84245`  
		Last Modified: Tue, 08 Sep 2026 21:01:25 GMT  
		Size: 594.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2cae1e10b1924c1fa4cae1a2c149756bb88107eaa2d347dc33f5c029a695ff2`  
		Last Modified: Tue, 08 Sep 2026 21:01:25 GMT  
		Size: 877.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:17.0` - unknown; unknown

```console
$ docker pull odoo@sha256:0c1a76d61315cf8d12d3d295df956213fa5be50549a374930c71527b6d5b01d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.9 MB (40852377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0dbc8493f1a3acdd36b1ce38727793b4940d795cb51c231525c02adb64a1efd6`

```dockerfile
```

-	Layers:
	-	`sha256:923ff79a361efb18bb4bbb7ded85f1b18bea9222a438b52f60715440164ef54a`  
		Last Modified: Tue, 08 Sep 2026 21:01:25 GMT  
		Size: 40.8 MB (40824908 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5fec65ee91c233b8f6b62930052aa2766dd5e9674b28fa12284b67c91240f59a`  
		Last Modified: Tue, 08 Sep 2026 21:01:22 GMT  
		Size: 27.5 KB (27469 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:17.0-20260908`

```console
$ docker pull odoo@sha256:c4049c9719f6a80a08e2b20de35ae42d0b66fc76a7e3c1cbaae08947236ab6e9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `odoo:17.0-20260908` - linux; amd64

```console
$ docker pull odoo@sha256:d1b5a33dcfc8a45b0322d569aafde7ba106e126ab8e2b8c0d5d761d9777e4d48
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **615.4 MB (615358530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5456f7228d08a358b2e9fb0d364301c123e2281266c6a53b3a639f14da779dc`
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
# Tue, 08 Sep 2026 20:59:32 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 08 Sep 2026 20:59:32 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 08 Sep 2026 20:59:32 GMT
ENV LANG=en_US.UTF-8
# Tue, 08 Sep 2026 20:59:32 GMT
ARG TARGETARCH=amd64
# Tue, 08 Sep 2026 20:59:32 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     DEBIAN_FRONTEND=noninteractive     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 08 Sep 2026 20:59:40 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jammy-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 08 Sep 2026 21:00:12 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 08 Sep 2026 21:00:12 GMT
ENV ODOO_VERSION=17.0
# Tue, 08 Sep 2026 21:00:12 GMT
ARG ODOO_RELEASE=20260908
# Tue, 08 Sep 2026 21:00:12 GMT
ARG ODOO_SHA=57a8df50c37363cce2d3f2e626d1b4e67b53fc11
# Tue, 08 Sep 2026 21:01:13 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260908 ODOO_SHA=57a8df50c37363cce2d3f2e626d1b4e67b53fc11
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 08 Sep 2026 21:01:13 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 08 Sep 2026 21:01:13 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 08 Sep 2026 21:01:13 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260908 ODOO_SHA=57a8df50c37363cce2d3f2e626d1b4e67b53fc11
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 08 Sep 2026 21:01:13 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 08 Sep 2026 21:01:13 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 08 Sep 2026 21:01:13 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 08 Sep 2026 21:01:13 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 08 Sep 2026 21:01:13 GMT
USER odoo
# Tue, 08 Sep 2026 21:01:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 08 Sep 2026 21:01:13 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8dd5fa392a8b7dd6911c3c5ea16e1cb6e026545fb65311fa7621a98ff077d31`  
		Last Modified: Tue, 08 Sep 2026 21:02:33 GMT  
		Size: 235.1 MB (235146591 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aee8dca07df39c863144279df55ade547db6420919d70e010a0c775d0685eaf3`  
		Last Modified: Tue, 08 Sep 2026 21:02:25 GMT  
		Size: 2.6 MB (2566391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2069b94be210f7804a99e9e4e016fe8de47427d7de1312aaba1db20aca9d650`  
		Last Modified: Tue, 08 Sep 2026 21:02:25 GMT  
		Size: 683.5 KB (683468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:354ab2d6fef5db1d26ef98698f8087c8ef6c1eb53e7b8b7dd83923a658112350`  
		Last Modified: Tue, 08 Sep 2026 21:02:36 GMT  
		Size: 347.2 MB (347222343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a94180ec48f1f63727f2e33794c525da5e9244e54870054c83dfbdc448dd6ff`  
		Last Modified: Tue, 08 Sep 2026 21:02:26 GMT  
		Size: 766.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3edd4f2270624c8b8e018e95c87d9749a3c0a63d4744d48699eac633ae65a0d4`  
		Last Modified: Tue, 08 Sep 2026 21:02:26 GMT  
		Size: 555.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2ab37c124043e8e1330631f00bf64a36e82034b218dab8d49af253ceaa3dfa7`  
		Last Modified: Tue, 08 Sep 2026 21:02:27 GMT  
		Size: 595.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:040fa417b92558a1ead7f8a38b990d5b91669f4c82a92beca25da7b9a967d20c`  
		Last Modified: Tue, 08 Sep 2026 21:02:28 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:17.0-20260908` - unknown; unknown

```console
$ docker pull odoo@sha256:c83ee703493f801e47448b456387ca1d931febdfe4beb35c37c3e1204b9b138a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.8 MB (40845720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e39277f1c972523cdb7e8b14666f152a7e0c17e50dbed8416afe926818b0739`

```dockerfile
```

-	Layers:
	-	`sha256:f718bc74d1be0e9e43c37295f74f57cd17931ae7d10d155375251f357ea2afdc`  
		Last Modified: Tue, 08 Sep 2026 21:02:27 GMT  
		Size: 40.8 MB (40818404 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:15c1528532f287b3f9a6bc8239cdf5fe7a4a4890433b0ae0d22837b820170ba3`  
		Last Modified: Tue, 08 Sep 2026 21:02:24 GMT  
		Size: 27.3 KB (27316 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:17.0-20260908` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:ae1b117091c495b9217ce14b1d2b7fd17be0a70ca6c0466134e7734225cda2f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **610.2 MB (610175957 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2f81d3cd7fadbba2beaa0234ba4be294faac023b3299fbdd5406920bb4ce64b`
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
# Tue, 08 Sep 2026 20:58:24 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 08 Sep 2026 20:58:24 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 08 Sep 2026 20:58:24 GMT
ENV LANG=en_US.UTF-8
# Tue, 08 Sep 2026 20:58:24 GMT
ARG TARGETARCH=arm64
# Tue, 08 Sep 2026 20:58:24 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     DEBIAN_FRONTEND=noninteractive     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 08 Sep 2026 20:58:33 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jammy-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 08 Sep 2026 20:59:01 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 08 Sep 2026 20:59:01 GMT
ENV ODOO_VERSION=17.0
# Tue, 08 Sep 2026 20:59:01 GMT
ARG ODOO_RELEASE=20260908
# Tue, 08 Sep 2026 20:59:01 GMT
ARG ODOO_SHA=57a8df50c37363cce2d3f2e626d1b4e67b53fc11
# Tue, 08 Sep 2026 21:00:05 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260908 ODOO_SHA=57a8df50c37363cce2d3f2e626d1b4e67b53fc11
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 08 Sep 2026 21:00:05 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 08 Sep 2026 21:00:05 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 08 Sep 2026 21:00:05 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260908 ODOO_SHA=57a8df50c37363cce2d3f2e626d1b4e67b53fc11
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 08 Sep 2026 21:00:05 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 08 Sep 2026 21:00:05 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 08 Sep 2026 21:00:05 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 08 Sep 2026 21:00:05 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 08 Sep 2026 21:00:05 GMT
USER odoo
# Tue, 08 Sep 2026 21:00:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 08 Sep 2026 21:00:05 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c229d6d927af663a8b463321cdca041d1387054f290ef91f5d63c59f86a42c97`  
		Last Modified: Tue, 08 Sep 2026 21:01:32 GMT  
		Size: 232.5 MB (232463397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0aa27c7bd296ac28f87d899eb78da844e37cdce301c342a552fa990271373633`  
		Last Modified: Tue, 08 Sep 2026 21:01:23 GMT  
		Size: 2.6 MB (2562483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd0219c24d95da66cfb13bfb648b84f71cfa364b004898e3f3179bbf6a3dca48`  
		Last Modified: Tue, 08 Sep 2026 21:01:22 GMT  
		Size: 683.5 KB (683530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0f646025d0b74eb859d6ba492fed494555ab9b42b36cafc6f367caeffb52be7`  
		Last Modified: Tue, 08 Sep 2026 21:01:34 GMT  
		Size: 346.8 MB (346843302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05f486f6331035e7a1256110e16892c0dca186f498c96a5e77228f43cda33ca0`  
		Last Modified: Tue, 08 Sep 2026 21:01:24 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ea8e7a247ea2fd42383b4161a8bd55f76e4193063c9b98ef7a837ea63e95d18`  
		Last Modified: Tue, 08 Sep 2026 21:01:24 GMT  
		Size: 554.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:188eac2a601506dc933175057af3deb801beae5894176948f9c66f6102b84245`  
		Last Modified: Tue, 08 Sep 2026 21:01:25 GMT  
		Size: 594.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2cae1e10b1924c1fa4cae1a2c149756bb88107eaa2d347dc33f5c029a695ff2`  
		Last Modified: Tue, 08 Sep 2026 21:01:25 GMT  
		Size: 877.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:17.0-20260908` - unknown; unknown

```console
$ docker pull odoo@sha256:0c1a76d61315cf8d12d3d295df956213fa5be50549a374930c71527b6d5b01d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.9 MB (40852377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0dbc8493f1a3acdd36b1ce38727793b4940d795cb51c231525c02adb64a1efd6`

```dockerfile
```

-	Layers:
	-	`sha256:923ff79a361efb18bb4bbb7ded85f1b18bea9222a438b52f60715440164ef54a`  
		Last Modified: Tue, 08 Sep 2026 21:01:25 GMT  
		Size: 40.8 MB (40824908 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5fec65ee91c233b8f6b62930052aa2766dd5e9674b28fa12284b67c91240f59a`  
		Last Modified: Tue, 08 Sep 2026 21:01:22 GMT  
		Size: 27.5 KB (27469 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:18`

```console
$ docker pull odoo@sha256:e1e531bec2ad934a3cef40cccbaa9e58392edb1cce5090f1c47e6e9bb11cdda3
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
$ docker pull odoo@sha256:8a409db592282e76c3abd2d29a2073f877c57e91672977257cd3672ae01b2485
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **679.0 MB (678978135 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f12a4e0f3f45da762a1f70b3dbff35383a442fad2c59e8f34c3b92ee3dc2fa9`
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
# Tue, 08 Sep 2026 20:56:23 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 08 Sep 2026 20:56:23 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 08 Sep 2026 20:56:23 GMT
ENV LANG=en_US.UTF-8
# Tue, 08 Sep 2026 20:56:23 GMT
ARG TARGETARCH=amd64
# Tue, 08 Sep 2026 20:56:23 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 08 Sep 2026 20:56:35 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 08 Sep 2026 20:57:47 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 08 Sep 2026 20:57:47 GMT
ENV ODOO_VERSION=18.0
# Tue, 08 Sep 2026 20:57:47 GMT
ARG ODOO_RELEASE=20260908
# Tue, 08 Sep 2026 20:57:47 GMT
ARG ODOO_SHA=4f5862fd0a33630abbfc855ce2b5f21caea6a4fb
# Tue, 08 Sep 2026 20:58:36 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260908 ODOO_SHA=4f5862fd0a33630abbfc855ce2b5f21caea6a4fb
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 08 Sep 2026 20:58:37 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 08 Sep 2026 20:58:37 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 08 Sep 2026 20:58:37 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260908 ODOO_SHA=4f5862fd0a33630abbfc855ce2b5f21caea6a4fb
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 08 Sep 2026 20:58:37 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 08 Sep 2026 20:58:37 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 08 Sep 2026 20:58:37 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 08 Sep 2026 20:58:37 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 08 Sep 2026 20:58:37 GMT
USER odoo
# Tue, 08 Sep 2026 20:58:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 08 Sep 2026 20:58:37 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78b916a662bb00867f0d0c15411f226f6897076d43005455ddb9c3b8530949b8`  
		Last Modified: Tue, 08 Sep 2026 20:59:59 GMT  
		Size: 241.3 MB (241271370 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33b58dc813d26aea7f792b1129905210ff3e4b9c8ad0c0d5e3ab2c67fb0c5dde`  
		Last Modified: Tue, 08 Sep 2026 20:59:51 GMT  
		Size: 16.6 MB (16632250 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a530901b54e7880b19f97585b26f1a00b67448b7804115cf6a0865a65353f80`  
		Last Modified: Tue, 08 Sep 2026 20:59:50 GMT  
		Size: 869.0 KB (869020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0485d0fc7529362215625f65f3b4f191560e88ca059a6937f713537627585b0`  
		Last Modified: Tue, 08 Sep 2026 21:00:02 GMT  
		Size: 390.4 MB (390449895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bd96bab2ea67d03a7a93d1337ab327599f5d1e9ad92d9088c7c210383c29847`  
		Last Modified: Tue, 08 Sep 2026 20:59:51 GMT  
		Size: 766.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfd33ea5c01d358629b388636cc779c92412ac66133efa49ea6a1e8578eef0f2`  
		Last Modified: Tue, 08 Sep 2026 20:59:53 GMT  
		Size: 555.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2929d16a8fdf08304d7fc45fcedfc50352685c25df6f1a92508adc553b890d8`  
		Last Modified: Tue, 08 Sep 2026 20:59:53 GMT  
		Size: 596.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f254b172a37ad8154129bab0fd99e95a7c17521c5ed61ec72446530ef147bbae`  
		Last Modified: Tue, 08 Sep 2026 20:59:54 GMT  
		Size: 876.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18` - unknown; unknown

```console
$ docker pull odoo@sha256:09a9a16c98e801c238ea0c1f629657a9f6c97179109ced1b82606454fa50e350
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.9 MB (43926477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60f49bce021e16b619807943758efc7560d3c9ee4e6232cc5f7087446d1a1a6d`

```dockerfile
```

-	Layers:
	-	`sha256:d70aa5725aea52b2d73662d506c7f46f9404d8f3a3fbbece67db98e8636f0dc7`  
		Last Modified: Tue, 08 Sep 2026 20:59:53 GMT  
		Size: 43.9 MB (43899281 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fb3da58ab7a54352b0998231dcf76be810403ca2ce83397d3c8f83c5ae4932aa`  
		Last Modified: Tue, 08 Sep 2026 20:59:50 GMT  
		Size: 27.2 KB (27196 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:18` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:8d8206e6403ca1e5a71bb6c1a9419207a8ed32127844281a02949b69d3f8abc5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **675.2 MB (675203818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49854f1ea223d01d97f3d990164258f507027939d36645e35180c8ff61451305`
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
# Tue, 08 Sep 2026 20:55:49 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 08 Sep 2026 20:55:49 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 08 Sep 2026 20:55:49 GMT
ENV LANG=en_US.UTF-8
# Tue, 08 Sep 2026 20:55:49 GMT
ARG TARGETARCH=arm64
# Tue, 08 Sep 2026 20:55:49 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 08 Sep 2026 20:55:59 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 08 Sep 2026 20:57:02 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 08 Sep 2026 20:57:02 GMT
ENV ODOO_VERSION=18.0
# Tue, 08 Sep 2026 20:57:02 GMT
ARG ODOO_RELEASE=20260908
# Tue, 08 Sep 2026 20:57:02 GMT
ARG ODOO_SHA=4f5862fd0a33630abbfc855ce2b5f21caea6a4fb
# Tue, 08 Sep 2026 20:58:01 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260908 ODOO_SHA=4f5862fd0a33630abbfc855ce2b5f21caea6a4fb
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 08 Sep 2026 20:58:01 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 08 Sep 2026 20:58:01 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 08 Sep 2026 20:58:01 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260908 ODOO_SHA=4f5862fd0a33630abbfc855ce2b5f21caea6a4fb
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 08 Sep 2026 20:58:01 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 08 Sep 2026 20:58:01 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 08 Sep 2026 20:58:01 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 08 Sep 2026 20:58:02 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 08 Sep 2026 20:58:02 GMT
USER odoo
# Tue, 08 Sep 2026 20:58:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 08 Sep 2026 20:58:02 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a964d6685687b4e3840ea96c4242759b649949431bea87440109bb9c60b46e7d`  
		Last Modified: Tue, 08 Sep 2026 20:59:40 GMT  
		Size: 238.6 MB (238583627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b73022035fc31a7cb52cadb9b898064f60f1d48bf2c266b40d74c036949ad98`  
		Last Modified: Tue, 08 Sep 2026 20:59:33 GMT  
		Size: 16.6 MB (16576700 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ca696fa890fc6bd7e6667ebf02f5618eb544aae5cd737c8cbdb4a52359c8d41`  
		Last Modified: Tue, 08 Sep 2026 20:59:32 GMT  
		Size: 868.9 KB (868900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bad23148c492b44fea93b474b95c4cccbfd5d4f4320ef3b044c9105cbcd00d8`  
		Last Modified: Tue, 08 Sep 2026 20:59:42 GMT  
		Size: 390.3 MB (390284561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85028fd81bf4337a8b50c30a600910ffa61bc47df963e54d0257493dc586573e`  
		Last Modified: Tue, 08 Sep 2026 20:59:33 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e09b6366dd7770b5b2722e99a58c0b2d668e45a08e9025b3a98559dbd058d8af`  
		Last Modified: Tue, 08 Sep 2026 20:59:34 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d28a2aec749694b3c5d58d12592bf8c35701ebd1ae0ff585bbdd5950ff73ca74`  
		Last Modified: Tue, 08 Sep 2026 20:59:34 GMT  
		Size: 596.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c239a6ba66e445541a4e8605dcf36930dc3fade29f78fdec93cd2d7a422b9ab7`  
		Last Modified: Tue, 08 Sep 2026 20:59:35 GMT  
		Size: 876.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18` - unknown; unknown

```console
$ docker pull odoo@sha256:17508a6f55c94ff009edbd817701fb4817fc7435e1476d3e8762bf7b6f709e3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.9 MB (43933902 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad3bc85fb3a7568c58d80678402aff3ee9e72a661ad050477d6b315df72a707a`

```dockerfile
```

-	Layers:
	-	`sha256:9bb5ffef5f323c366924b6dfc4a7470d6faee1f69eabae8b06cca96ab04b8190`  
		Last Modified: Tue, 08 Sep 2026 20:59:34 GMT  
		Size: 43.9 MB (43906553 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5e499a947676ff79fcfcc0c6740a69cb37ea2de819da52a7e3b8862ec56280c7`  
		Last Modified: Tue, 08 Sep 2026 20:59:31 GMT  
		Size: 27.3 KB (27349 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:18` - linux; ppc64le

```console
$ docker pull odoo@sha256:957bc4715f5d31cc6f8ae8482ed35e35df6503dbd8b4fca2d5f341f100bd0f4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **695.8 MB (695766001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f882afbdf60d6ef354a343d5c0ea7162766acedfdec3eda5c1627049a9fc186`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Mon, 17 Aug 2026 13:37:16 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:37:16 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:37:16 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:37:19 GMT
ADD file:2c1f3ca3b8968d5c5bcce4fb1290d9ca7224bbde9578f0051bf2d5493b3b6481 in / 
# Mon, 17 Aug 2026 13:37:20 GMT
CMD ["/bin/bash"]
# Tue, 08 Sep 2026 21:00:21 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 08 Sep 2026 21:00:21 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 08 Sep 2026 21:00:21 GMT
ENV LANG=en_US.UTF-8
# Tue, 08 Sep 2026 21:00:21 GMT
ARG TARGETARCH=ppc64le
# Tue, 08 Sep 2026 21:00:21 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 08 Sep 2026 21:01:21 GMT
# ARGS: TARGETARCH=ppc64le
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 08 Sep 2026 21:14:24 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 08 Sep 2026 21:14:24 GMT
ENV ODOO_VERSION=18.0
# Tue, 08 Sep 2026 21:14:24 GMT
ARG ODOO_RELEASE=20260908
# Tue, 08 Sep 2026 21:14:24 GMT
ARG ODOO_SHA=4f5862fd0a33630abbfc855ce2b5f21caea6a4fb
# Tue, 08 Sep 2026 21:20:56 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260908 ODOO_SHA=4f5862fd0a33630abbfc855ce2b5f21caea6a4fb
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 08 Sep 2026 21:21:15 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 08 Sep 2026 21:21:19 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 08 Sep 2026 21:21:22 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260908 ODOO_SHA=4f5862fd0a33630abbfc855ce2b5f21caea6a4fb
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 08 Sep 2026 21:21:22 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 08 Sep 2026 21:21:22 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 08 Sep 2026 21:21:22 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 08 Sep 2026 21:21:41 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 08 Sep 2026 21:21:41 GMT
USER odoo
# Tue, 08 Sep 2026 21:21:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 08 Sep 2026 21:21:41 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:9ce277f493517cc144a5fc2f41269e529e99b662f089df362b22f62d1fbb7436`  
		Last Modified: Mon, 17 Aug 2026 14:27:41 GMT  
		Size: 34.3 MB (34311195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79610868de8f1ea82a3fbf6fc88927b32bdd9eda06674e51544ee44d960de740`  
		Last Modified: Tue, 08 Sep 2026 21:27:47 GMT  
		Size: 252.3 MB (252285839 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38d6d742d1bc443ba3f3befafe79c6af16c3783f3514dfe790aca0514c737751`  
		Last Modified: Tue, 08 Sep 2026 21:27:37 GMT  
		Size: 17.3 MB (17304050 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b4576b3d48d42ec627d375a8e379b83c11372c708f8b8917692b16c035e3206`  
		Last Modified: Tue, 08 Sep 2026 21:27:36 GMT  
		Size: 871.2 KB (871196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c66b7ef9d27d018bc8cdf77a47917bcf6c21913b5a4ba9fa8fdd9b2a13933b72`  
		Last Modified: Tue, 08 Sep 2026 21:27:50 GMT  
		Size: 391.0 MB (390990921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56ab11d9fe640284b25abb9e02ab0aff385eca874e99abfb7473751174e08ba6`  
		Last Modified: Tue, 08 Sep 2026 21:27:37 GMT  
		Size: 766.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e864780db784bab6b5160195d9c139f0b088595ba219b2862672bf8ff1f9fca`  
		Last Modified: Tue, 08 Sep 2026 21:27:40 GMT  
		Size: 557.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a25f1b871b97c245aa14139db16f66749c27c4f21e17eaae3a5ab65205b7c91`  
		Last Modified: Tue, 08 Sep 2026 21:27:40 GMT  
		Size: 600.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24415d56a7164d138e24d6ed8f7b4f95637b6f5f56bc62bbb90092f3fb106ab3`  
		Last Modified: Tue, 08 Sep 2026 21:27:41 GMT  
		Size: 877.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18` - unknown; unknown

```console
$ docker pull odoo@sha256:b019e757cc2a9916e1df6a9833c9373f9eee0a7d9dded7c9c3e92beb24c9caf9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.9 MB (43934898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:993109f374274bc5e7ccf9641cce692c3a0b1d7ce9ff1224f213f9e7cdacd58b`

```dockerfile
```

-	Layers:
	-	`sha256:fbd9e286d8a825e8109e2c5cfc8f351ef88c929a8c05709aa9e9ae2603a93ba7`  
		Last Modified: Tue, 08 Sep 2026 21:27:39 GMT  
		Size: 43.9 MB (43907645 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:873a0843eb03ba3f35ea9265818aedde275a95efa573e1add86c8fa2593cb400`  
		Last Modified: Tue, 08 Sep 2026 21:27:36 GMT  
		Size: 27.3 KB (27253 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:18.0`

```console
$ docker pull odoo@sha256:e1e531bec2ad934a3cef40cccbaa9e58392edb1cce5090f1c47e6e9bb11cdda3
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
$ docker pull odoo@sha256:8a409db592282e76c3abd2d29a2073f877c57e91672977257cd3672ae01b2485
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **679.0 MB (678978135 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f12a4e0f3f45da762a1f70b3dbff35383a442fad2c59e8f34c3b92ee3dc2fa9`
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
# Tue, 08 Sep 2026 20:56:23 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 08 Sep 2026 20:56:23 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 08 Sep 2026 20:56:23 GMT
ENV LANG=en_US.UTF-8
# Tue, 08 Sep 2026 20:56:23 GMT
ARG TARGETARCH=amd64
# Tue, 08 Sep 2026 20:56:23 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 08 Sep 2026 20:56:35 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 08 Sep 2026 20:57:47 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 08 Sep 2026 20:57:47 GMT
ENV ODOO_VERSION=18.0
# Tue, 08 Sep 2026 20:57:47 GMT
ARG ODOO_RELEASE=20260908
# Tue, 08 Sep 2026 20:57:47 GMT
ARG ODOO_SHA=4f5862fd0a33630abbfc855ce2b5f21caea6a4fb
# Tue, 08 Sep 2026 20:58:36 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260908 ODOO_SHA=4f5862fd0a33630abbfc855ce2b5f21caea6a4fb
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 08 Sep 2026 20:58:37 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 08 Sep 2026 20:58:37 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 08 Sep 2026 20:58:37 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260908 ODOO_SHA=4f5862fd0a33630abbfc855ce2b5f21caea6a4fb
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 08 Sep 2026 20:58:37 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 08 Sep 2026 20:58:37 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 08 Sep 2026 20:58:37 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 08 Sep 2026 20:58:37 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 08 Sep 2026 20:58:37 GMT
USER odoo
# Tue, 08 Sep 2026 20:58:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 08 Sep 2026 20:58:37 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78b916a662bb00867f0d0c15411f226f6897076d43005455ddb9c3b8530949b8`  
		Last Modified: Tue, 08 Sep 2026 20:59:59 GMT  
		Size: 241.3 MB (241271370 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33b58dc813d26aea7f792b1129905210ff3e4b9c8ad0c0d5e3ab2c67fb0c5dde`  
		Last Modified: Tue, 08 Sep 2026 20:59:51 GMT  
		Size: 16.6 MB (16632250 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a530901b54e7880b19f97585b26f1a00b67448b7804115cf6a0865a65353f80`  
		Last Modified: Tue, 08 Sep 2026 20:59:50 GMT  
		Size: 869.0 KB (869020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0485d0fc7529362215625f65f3b4f191560e88ca059a6937f713537627585b0`  
		Last Modified: Tue, 08 Sep 2026 21:00:02 GMT  
		Size: 390.4 MB (390449895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bd96bab2ea67d03a7a93d1337ab327599f5d1e9ad92d9088c7c210383c29847`  
		Last Modified: Tue, 08 Sep 2026 20:59:51 GMT  
		Size: 766.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfd33ea5c01d358629b388636cc779c92412ac66133efa49ea6a1e8578eef0f2`  
		Last Modified: Tue, 08 Sep 2026 20:59:53 GMT  
		Size: 555.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2929d16a8fdf08304d7fc45fcedfc50352685c25df6f1a92508adc553b890d8`  
		Last Modified: Tue, 08 Sep 2026 20:59:53 GMT  
		Size: 596.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f254b172a37ad8154129bab0fd99e95a7c17521c5ed61ec72446530ef147bbae`  
		Last Modified: Tue, 08 Sep 2026 20:59:54 GMT  
		Size: 876.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18.0` - unknown; unknown

```console
$ docker pull odoo@sha256:09a9a16c98e801c238ea0c1f629657a9f6c97179109ced1b82606454fa50e350
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.9 MB (43926477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60f49bce021e16b619807943758efc7560d3c9ee4e6232cc5f7087446d1a1a6d`

```dockerfile
```

-	Layers:
	-	`sha256:d70aa5725aea52b2d73662d506c7f46f9404d8f3a3fbbece67db98e8636f0dc7`  
		Last Modified: Tue, 08 Sep 2026 20:59:53 GMT  
		Size: 43.9 MB (43899281 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fb3da58ab7a54352b0998231dcf76be810403ca2ce83397d3c8f83c5ae4932aa`  
		Last Modified: Tue, 08 Sep 2026 20:59:50 GMT  
		Size: 27.2 KB (27196 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:18.0` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:8d8206e6403ca1e5a71bb6c1a9419207a8ed32127844281a02949b69d3f8abc5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **675.2 MB (675203818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49854f1ea223d01d97f3d990164258f507027939d36645e35180c8ff61451305`
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
# Tue, 08 Sep 2026 20:55:49 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 08 Sep 2026 20:55:49 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 08 Sep 2026 20:55:49 GMT
ENV LANG=en_US.UTF-8
# Tue, 08 Sep 2026 20:55:49 GMT
ARG TARGETARCH=arm64
# Tue, 08 Sep 2026 20:55:49 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 08 Sep 2026 20:55:59 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 08 Sep 2026 20:57:02 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 08 Sep 2026 20:57:02 GMT
ENV ODOO_VERSION=18.0
# Tue, 08 Sep 2026 20:57:02 GMT
ARG ODOO_RELEASE=20260908
# Tue, 08 Sep 2026 20:57:02 GMT
ARG ODOO_SHA=4f5862fd0a33630abbfc855ce2b5f21caea6a4fb
# Tue, 08 Sep 2026 20:58:01 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260908 ODOO_SHA=4f5862fd0a33630abbfc855ce2b5f21caea6a4fb
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 08 Sep 2026 20:58:01 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 08 Sep 2026 20:58:01 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 08 Sep 2026 20:58:01 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260908 ODOO_SHA=4f5862fd0a33630abbfc855ce2b5f21caea6a4fb
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 08 Sep 2026 20:58:01 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 08 Sep 2026 20:58:01 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 08 Sep 2026 20:58:01 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 08 Sep 2026 20:58:02 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 08 Sep 2026 20:58:02 GMT
USER odoo
# Tue, 08 Sep 2026 20:58:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 08 Sep 2026 20:58:02 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a964d6685687b4e3840ea96c4242759b649949431bea87440109bb9c60b46e7d`  
		Last Modified: Tue, 08 Sep 2026 20:59:40 GMT  
		Size: 238.6 MB (238583627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b73022035fc31a7cb52cadb9b898064f60f1d48bf2c266b40d74c036949ad98`  
		Last Modified: Tue, 08 Sep 2026 20:59:33 GMT  
		Size: 16.6 MB (16576700 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ca696fa890fc6bd7e6667ebf02f5618eb544aae5cd737c8cbdb4a52359c8d41`  
		Last Modified: Tue, 08 Sep 2026 20:59:32 GMT  
		Size: 868.9 KB (868900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bad23148c492b44fea93b474b95c4cccbfd5d4f4320ef3b044c9105cbcd00d8`  
		Last Modified: Tue, 08 Sep 2026 20:59:42 GMT  
		Size: 390.3 MB (390284561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85028fd81bf4337a8b50c30a600910ffa61bc47df963e54d0257493dc586573e`  
		Last Modified: Tue, 08 Sep 2026 20:59:33 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e09b6366dd7770b5b2722e99a58c0b2d668e45a08e9025b3a98559dbd058d8af`  
		Last Modified: Tue, 08 Sep 2026 20:59:34 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d28a2aec749694b3c5d58d12592bf8c35701ebd1ae0ff585bbdd5950ff73ca74`  
		Last Modified: Tue, 08 Sep 2026 20:59:34 GMT  
		Size: 596.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c239a6ba66e445541a4e8605dcf36930dc3fade29f78fdec93cd2d7a422b9ab7`  
		Last Modified: Tue, 08 Sep 2026 20:59:35 GMT  
		Size: 876.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18.0` - unknown; unknown

```console
$ docker pull odoo@sha256:17508a6f55c94ff009edbd817701fb4817fc7435e1476d3e8762bf7b6f709e3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.9 MB (43933902 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad3bc85fb3a7568c58d80678402aff3ee9e72a661ad050477d6b315df72a707a`

```dockerfile
```

-	Layers:
	-	`sha256:9bb5ffef5f323c366924b6dfc4a7470d6faee1f69eabae8b06cca96ab04b8190`  
		Last Modified: Tue, 08 Sep 2026 20:59:34 GMT  
		Size: 43.9 MB (43906553 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5e499a947676ff79fcfcc0c6740a69cb37ea2de819da52a7e3b8862ec56280c7`  
		Last Modified: Tue, 08 Sep 2026 20:59:31 GMT  
		Size: 27.3 KB (27349 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:18.0` - linux; ppc64le

```console
$ docker pull odoo@sha256:957bc4715f5d31cc6f8ae8482ed35e35df6503dbd8b4fca2d5f341f100bd0f4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **695.8 MB (695766001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f882afbdf60d6ef354a343d5c0ea7162766acedfdec3eda5c1627049a9fc186`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Mon, 17 Aug 2026 13:37:16 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:37:16 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:37:16 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:37:19 GMT
ADD file:2c1f3ca3b8968d5c5bcce4fb1290d9ca7224bbde9578f0051bf2d5493b3b6481 in / 
# Mon, 17 Aug 2026 13:37:20 GMT
CMD ["/bin/bash"]
# Tue, 08 Sep 2026 21:00:21 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 08 Sep 2026 21:00:21 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 08 Sep 2026 21:00:21 GMT
ENV LANG=en_US.UTF-8
# Tue, 08 Sep 2026 21:00:21 GMT
ARG TARGETARCH=ppc64le
# Tue, 08 Sep 2026 21:00:21 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 08 Sep 2026 21:01:21 GMT
# ARGS: TARGETARCH=ppc64le
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 08 Sep 2026 21:14:24 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 08 Sep 2026 21:14:24 GMT
ENV ODOO_VERSION=18.0
# Tue, 08 Sep 2026 21:14:24 GMT
ARG ODOO_RELEASE=20260908
# Tue, 08 Sep 2026 21:14:24 GMT
ARG ODOO_SHA=4f5862fd0a33630abbfc855ce2b5f21caea6a4fb
# Tue, 08 Sep 2026 21:20:56 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260908 ODOO_SHA=4f5862fd0a33630abbfc855ce2b5f21caea6a4fb
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 08 Sep 2026 21:21:15 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 08 Sep 2026 21:21:19 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 08 Sep 2026 21:21:22 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260908 ODOO_SHA=4f5862fd0a33630abbfc855ce2b5f21caea6a4fb
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 08 Sep 2026 21:21:22 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 08 Sep 2026 21:21:22 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 08 Sep 2026 21:21:22 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 08 Sep 2026 21:21:41 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 08 Sep 2026 21:21:41 GMT
USER odoo
# Tue, 08 Sep 2026 21:21:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 08 Sep 2026 21:21:41 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:9ce277f493517cc144a5fc2f41269e529e99b662f089df362b22f62d1fbb7436`  
		Last Modified: Mon, 17 Aug 2026 14:27:41 GMT  
		Size: 34.3 MB (34311195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79610868de8f1ea82a3fbf6fc88927b32bdd9eda06674e51544ee44d960de740`  
		Last Modified: Tue, 08 Sep 2026 21:27:47 GMT  
		Size: 252.3 MB (252285839 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38d6d742d1bc443ba3f3befafe79c6af16c3783f3514dfe790aca0514c737751`  
		Last Modified: Tue, 08 Sep 2026 21:27:37 GMT  
		Size: 17.3 MB (17304050 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b4576b3d48d42ec627d375a8e379b83c11372c708f8b8917692b16c035e3206`  
		Last Modified: Tue, 08 Sep 2026 21:27:36 GMT  
		Size: 871.2 KB (871196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c66b7ef9d27d018bc8cdf77a47917bcf6c21913b5a4ba9fa8fdd9b2a13933b72`  
		Last Modified: Tue, 08 Sep 2026 21:27:50 GMT  
		Size: 391.0 MB (390990921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56ab11d9fe640284b25abb9e02ab0aff385eca874e99abfb7473751174e08ba6`  
		Last Modified: Tue, 08 Sep 2026 21:27:37 GMT  
		Size: 766.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e864780db784bab6b5160195d9c139f0b088595ba219b2862672bf8ff1f9fca`  
		Last Modified: Tue, 08 Sep 2026 21:27:40 GMT  
		Size: 557.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a25f1b871b97c245aa14139db16f66749c27c4f21e17eaae3a5ab65205b7c91`  
		Last Modified: Tue, 08 Sep 2026 21:27:40 GMT  
		Size: 600.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24415d56a7164d138e24d6ed8f7b4f95637b6f5f56bc62bbb90092f3fb106ab3`  
		Last Modified: Tue, 08 Sep 2026 21:27:41 GMT  
		Size: 877.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18.0` - unknown; unknown

```console
$ docker pull odoo@sha256:b019e757cc2a9916e1df6a9833c9373f9eee0a7d9dded7c9c3e92beb24c9caf9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.9 MB (43934898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:993109f374274bc5e7ccf9641cce692c3a0b1d7ce9ff1224f213f9e7cdacd58b`

```dockerfile
```

-	Layers:
	-	`sha256:fbd9e286d8a825e8109e2c5cfc8f351ef88c929a8c05709aa9e9ae2603a93ba7`  
		Last Modified: Tue, 08 Sep 2026 21:27:39 GMT  
		Size: 43.9 MB (43907645 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:873a0843eb03ba3f35ea9265818aedde275a95efa573e1add86c8fa2593cb400`  
		Last Modified: Tue, 08 Sep 2026 21:27:36 GMT  
		Size: 27.3 KB (27253 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:18.0-20260908`

```console
$ docker pull odoo@sha256:e1e531bec2ad934a3cef40cccbaa9e58392edb1cce5090f1c47e6e9bb11cdda3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `odoo:18.0-20260908` - linux; amd64

```console
$ docker pull odoo@sha256:8a409db592282e76c3abd2d29a2073f877c57e91672977257cd3672ae01b2485
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **679.0 MB (678978135 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f12a4e0f3f45da762a1f70b3dbff35383a442fad2c59e8f34c3b92ee3dc2fa9`
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
# Tue, 08 Sep 2026 20:56:23 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 08 Sep 2026 20:56:23 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 08 Sep 2026 20:56:23 GMT
ENV LANG=en_US.UTF-8
# Tue, 08 Sep 2026 20:56:23 GMT
ARG TARGETARCH=amd64
# Tue, 08 Sep 2026 20:56:23 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 08 Sep 2026 20:56:35 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 08 Sep 2026 20:57:47 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 08 Sep 2026 20:57:47 GMT
ENV ODOO_VERSION=18.0
# Tue, 08 Sep 2026 20:57:47 GMT
ARG ODOO_RELEASE=20260908
# Tue, 08 Sep 2026 20:57:47 GMT
ARG ODOO_SHA=4f5862fd0a33630abbfc855ce2b5f21caea6a4fb
# Tue, 08 Sep 2026 20:58:36 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260908 ODOO_SHA=4f5862fd0a33630abbfc855ce2b5f21caea6a4fb
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 08 Sep 2026 20:58:37 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 08 Sep 2026 20:58:37 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 08 Sep 2026 20:58:37 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260908 ODOO_SHA=4f5862fd0a33630abbfc855ce2b5f21caea6a4fb
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 08 Sep 2026 20:58:37 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 08 Sep 2026 20:58:37 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 08 Sep 2026 20:58:37 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 08 Sep 2026 20:58:37 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 08 Sep 2026 20:58:37 GMT
USER odoo
# Tue, 08 Sep 2026 20:58:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 08 Sep 2026 20:58:37 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78b916a662bb00867f0d0c15411f226f6897076d43005455ddb9c3b8530949b8`  
		Last Modified: Tue, 08 Sep 2026 20:59:59 GMT  
		Size: 241.3 MB (241271370 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33b58dc813d26aea7f792b1129905210ff3e4b9c8ad0c0d5e3ab2c67fb0c5dde`  
		Last Modified: Tue, 08 Sep 2026 20:59:51 GMT  
		Size: 16.6 MB (16632250 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a530901b54e7880b19f97585b26f1a00b67448b7804115cf6a0865a65353f80`  
		Last Modified: Tue, 08 Sep 2026 20:59:50 GMT  
		Size: 869.0 KB (869020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0485d0fc7529362215625f65f3b4f191560e88ca059a6937f713537627585b0`  
		Last Modified: Tue, 08 Sep 2026 21:00:02 GMT  
		Size: 390.4 MB (390449895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bd96bab2ea67d03a7a93d1337ab327599f5d1e9ad92d9088c7c210383c29847`  
		Last Modified: Tue, 08 Sep 2026 20:59:51 GMT  
		Size: 766.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfd33ea5c01d358629b388636cc779c92412ac66133efa49ea6a1e8578eef0f2`  
		Last Modified: Tue, 08 Sep 2026 20:59:53 GMT  
		Size: 555.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2929d16a8fdf08304d7fc45fcedfc50352685c25df6f1a92508adc553b890d8`  
		Last Modified: Tue, 08 Sep 2026 20:59:53 GMT  
		Size: 596.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f254b172a37ad8154129bab0fd99e95a7c17521c5ed61ec72446530ef147bbae`  
		Last Modified: Tue, 08 Sep 2026 20:59:54 GMT  
		Size: 876.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18.0-20260908` - unknown; unknown

```console
$ docker pull odoo@sha256:09a9a16c98e801c238ea0c1f629657a9f6c97179109ced1b82606454fa50e350
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.9 MB (43926477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60f49bce021e16b619807943758efc7560d3c9ee4e6232cc5f7087446d1a1a6d`

```dockerfile
```

-	Layers:
	-	`sha256:d70aa5725aea52b2d73662d506c7f46f9404d8f3a3fbbece67db98e8636f0dc7`  
		Last Modified: Tue, 08 Sep 2026 20:59:53 GMT  
		Size: 43.9 MB (43899281 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fb3da58ab7a54352b0998231dcf76be810403ca2ce83397d3c8f83c5ae4932aa`  
		Last Modified: Tue, 08 Sep 2026 20:59:50 GMT  
		Size: 27.2 KB (27196 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:18.0-20260908` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:8d8206e6403ca1e5a71bb6c1a9419207a8ed32127844281a02949b69d3f8abc5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **675.2 MB (675203818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49854f1ea223d01d97f3d990164258f507027939d36645e35180c8ff61451305`
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
# Tue, 08 Sep 2026 20:55:49 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 08 Sep 2026 20:55:49 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 08 Sep 2026 20:55:49 GMT
ENV LANG=en_US.UTF-8
# Tue, 08 Sep 2026 20:55:49 GMT
ARG TARGETARCH=arm64
# Tue, 08 Sep 2026 20:55:49 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 08 Sep 2026 20:55:59 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 08 Sep 2026 20:57:02 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 08 Sep 2026 20:57:02 GMT
ENV ODOO_VERSION=18.0
# Tue, 08 Sep 2026 20:57:02 GMT
ARG ODOO_RELEASE=20260908
# Tue, 08 Sep 2026 20:57:02 GMT
ARG ODOO_SHA=4f5862fd0a33630abbfc855ce2b5f21caea6a4fb
# Tue, 08 Sep 2026 20:58:01 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260908 ODOO_SHA=4f5862fd0a33630abbfc855ce2b5f21caea6a4fb
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 08 Sep 2026 20:58:01 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 08 Sep 2026 20:58:01 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 08 Sep 2026 20:58:01 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260908 ODOO_SHA=4f5862fd0a33630abbfc855ce2b5f21caea6a4fb
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 08 Sep 2026 20:58:01 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 08 Sep 2026 20:58:01 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 08 Sep 2026 20:58:01 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 08 Sep 2026 20:58:02 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 08 Sep 2026 20:58:02 GMT
USER odoo
# Tue, 08 Sep 2026 20:58:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 08 Sep 2026 20:58:02 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a964d6685687b4e3840ea96c4242759b649949431bea87440109bb9c60b46e7d`  
		Last Modified: Tue, 08 Sep 2026 20:59:40 GMT  
		Size: 238.6 MB (238583627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b73022035fc31a7cb52cadb9b898064f60f1d48bf2c266b40d74c036949ad98`  
		Last Modified: Tue, 08 Sep 2026 20:59:33 GMT  
		Size: 16.6 MB (16576700 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ca696fa890fc6bd7e6667ebf02f5618eb544aae5cd737c8cbdb4a52359c8d41`  
		Last Modified: Tue, 08 Sep 2026 20:59:32 GMT  
		Size: 868.9 KB (868900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bad23148c492b44fea93b474b95c4cccbfd5d4f4320ef3b044c9105cbcd00d8`  
		Last Modified: Tue, 08 Sep 2026 20:59:42 GMT  
		Size: 390.3 MB (390284561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85028fd81bf4337a8b50c30a600910ffa61bc47df963e54d0257493dc586573e`  
		Last Modified: Tue, 08 Sep 2026 20:59:33 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e09b6366dd7770b5b2722e99a58c0b2d668e45a08e9025b3a98559dbd058d8af`  
		Last Modified: Tue, 08 Sep 2026 20:59:34 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d28a2aec749694b3c5d58d12592bf8c35701ebd1ae0ff585bbdd5950ff73ca74`  
		Last Modified: Tue, 08 Sep 2026 20:59:34 GMT  
		Size: 596.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c239a6ba66e445541a4e8605dcf36930dc3fade29f78fdec93cd2d7a422b9ab7`  
		Last Modified: Tue, 08 Sep 2026 20:59:35 GMT  
		Size: 876.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18.0-20260908` - unknown; unknown

```console
$ docker pull odoo@sha256:17508a6f55c94ff009edbd817701fb4817fc7435e1476d3e8762bf7b6f709e3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.9 MB (43933902 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad3bc85fb3a7568c58d80678402aff3ee9e72a661ad050477d6b315df72a707a`

```dockerfile
```

-	Layers:
	-	`sha256:9bb5ffef5f323c366924b6dfc4a7470d6faee1f69eabae8b06cca96ab04b8190`  
		Last Modified: Tue, 08 Sep 2026 20:59:34 GMT  
		Size: 43.9 MB (43906553 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5e499a947676ff79fcfcc0c6740a69cb37ea2de819da52a7e3b8862ec56280c7`  
		Last Modified: Tue, 08 Sep 2026 20:59:31 GMT  
		Size: 27.3 KB (27349 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:18.0-20260908` - linux; ppc64le

```console
$ docker pull odoo@sha256:957bc4715f5d31cc6f8ae8482ed35e35df6503dbd8b4fca2d5f341f100bd0f4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **695.8 MB (695766001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f882afbdf60d6ef354a343d5c0ea7162766acedfdec3eda5c1627049a9fc186`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Mon, 17 Aug 2026 13:37:16 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:37:16 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:37:16 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:37:19 GMT
ADD file:2c1f3ca3b8968d5c5bcce4fb1290d9ca7224bbde9578f0051bf2d5493b3b6481 in / 
# Mon, 17 Aug 2026 13:37:20 GMT
CMD ["/bin/bash"]
# Tue, 08 Sep 2026 21:00:21 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 08 Sep 2026 21:00:21 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 08 Sep 2026 21:00:21 GMT
ENV LANG=en_US.UTF-8
# Tue, 08 Sep 2026 21:00:21 GMT
ARG TARGETARCH=ppc64le
# Tue, 08 Sep 2026 21:00:21 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 08 Sep 2026 21:01:21 GMT
# ARGS: TARGETARCH=ppc64le
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 08 Sep 2026 21:14:24 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 08 Sep 2026 21:14:24 GMT
ENV ODOO_VERSION=18.0
# Tue, 08 Sep 2026 21:14:24 GMT
ARG ODOO_RELEASE=20260908
# Tue, 08 Sep 2026 21:14:24 GMT
ARG ODOO_SHA=4f5862fd0a33630abbfc855ce2b5f21caea6a4fb
# Tue, 08 Sep 2026 21:20:56 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260908 ODOO_SHA=4f5862fd0a33630abbfc855ce2b5f21caea6a4fb
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 08 Sep 2026 21:21:15 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 08 Sep 2026 21:21:19 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 08 Sep 2026 21:21:22 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260908 ODOO_SHA=4f5862fd0a33630abbfc855ce2b5f21caea6a4fb
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 08 Sep 2026 21:21:22 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 08 Sep 2026 21:21:22 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 08 Sep 2026 21:21:22 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 08 Sep 2026 21:21:41 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 08 Sep 2026 21:21:41 GMT
USER odoo
# Tue, 08 Sep 2026 21:21:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 08 Sep 2026 21:21:41 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:9ce277f493517cc144a5fc2f41269e529e99b662f089df362b22f62d1fbb7436`  
		Last Modified: Mon, 17 Aug 2026 14:27:41 GMT  
		Size: 34.3 MB (34311195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79610868de8f1ea82a3fbf6fc88927b32bdd9eda06674e51544ee44d960de740`  
		Last Modified: Tue, 08 Sep 2026 21:27:47 GMT  
		Size: 252.3 MB (252285839 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38d6d742d1bc443ba3f3befafe79c6af16c3783f3514dfe790aca0514c737751`  
		Last Modified: Tue, 08 Sep 2026 21:27:37 GMT  
		Size: 17.3 MB (17304050 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b4576b3d48d42ec627d375a8e379b83c11372c708f8b8917692b16c035e3206`  
		Last Modified: Tue, 08 Sep 2026 21:27:36 GMT  
		Size: 871.2 KB (871196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c66b7ef9d27d018bc8cdf77a47917bcf6c21913b5a4ba9fa8fdd9b2a13933b72`  
		Last Modified: Tue, 08 Sep 2026 21:27:50 GMT  
		Size: 391.0 MB (390990921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56ab11d9fe640284b25abb9e02ab0aff385eca874e99abfb7473751174e08ba6`  
		Last Modified: Tue, 08 Sep 2026 21:27:37 GMT  
		Size: 766.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e864780db784bab6b5160195d9c139f0b088595ba219b2862672bf8ff1f9fca`  
		Last Modified: Tue, 08 Sep 2026 21:27:40 GMT  
		Size: 557.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a25f1b871b97c245aa14139db16f66749c27c4f21e17eaae3a5ab65205b7c91`  
		Last Modified: Tue, 08 Sep 2026 21:27:40 GMT  
		Size: 600.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24415d56a7164d138e24d6ed8f7b4f95637b6f5f56bc62bbb90092f3fb106ab3`  
		Last Modified: Tue, 08 Sep 2026 21:27:41 GMT  
		Size: 877.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18.0-20260908` - unknown; unknown

```console
$ docker pull odoo@sha256:b019e757cc2a9916e1df6a9833c9373f9eee0a7d9dded7c9c3e92beb24c9caf9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.9 MB (43934898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:993109f374274bc5e7ccf9641cce692c3a0b1d7ce9ff1224f213f9e7cdacd58b`

```dockerfile
```

-	Layers:
	-	`sha256:fbd9e286d8a825e8109e2c5cfc8f351ef88c929a8c05709aa9e9ae2603a93ba7`  
		Last Modified: Tue, 08 Sep 2026 21:27:39 GMT  
		Size: 43.9 MB (43907645 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:873a0843eb03ba3f35ea9265818aedde275a95efa573e1add86c8fa2593cb400`  
		Last Modified: Tue, 08 Sep 2026 21:27:36 GMT  
		Size: 27.3 KB (27253 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:19`

```console
$ docker pull odoo@sha256:d5a78a8c11bb4f04b0adfcfab8619ed0d59ffaccba647d81554b8cbf5c47e6b9
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
$ docker pull odoo@sha256:891a68d4d9aac45b05419cc85b7a5f6b18697c99b3bf8d80e0baf933eb3f1d67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **702.6 MB (702559852 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2bca42c02aef70c1a07a4d8c6a68b1a8cdf754b975bc432f1c8eca773d72767`
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
# Tue, 08 Sep 2026 20:55:00 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 08 Sep 2026 20:55:00 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 08 Sep 2026 20:55:00 GMT
ENV LANG=en_US.UTF-8
# Tue, 08 Sep 2026 20:55:00 GMT
ARG TARGETARCH=amd64
# Tue, 08 Sep 2026 20:55:00 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 08 Sep 2026 20:55:10 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 08 Sep 2026 20:56:33 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 08 Sep 2026 20:56:33 GMT
ENV ODOO_VERSION=19.0
# Tue, 08 Sep 2026 20:56:33 GMT
ARG ODOO_RELEASE=20260908
# Tue, 08 Sep 2026 20:56:33 GMT
ARG ODOO_SHA=df549a99c8a31a89f54b722e57f9c47224852093
# Tue, 08 Sep 2026 20:57:36 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260908 ODOO_SHA=df549a99c8a31a89f54b722e57f9c47224852093
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 08 Sep 2026 20:57:37 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 08 Sep 2026 20:57:37 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 08 Sep 2026 20:57:37 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260908 ODOO_SHA=df549a99c8a31a89f54b722e57f9c47224852093
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 08 Sep 2026 20:57:37 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 08 Sep 2026 20:57:37 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 08 Sep 2026 20:57:37 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 08 Sep 2026 20:57:37 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 08 Sep 2026 20:57:37 GMT
USER odoo
# Tue, 08 Sep 2026 20:57:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 08 Sep 2026 20:57:37 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee5d5b2a1746dfc78b12f27813736e89b7be37eacf00af9ff5a72e3abb00e7cd`  
		Last Modified: Tue, 08 Sep 2026 20:59:30 GMT  
		Size: 241.3 MB (241270852 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:689b7a47e8f2c9e611dc3768697cd2d58c0c655dfa46fdcd2d841159afef7f01`  
		Last Modified: Tue, 08 Sep 2026 20:59:21 GMT  
		Size: 16.6 MB (16631885 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1cbe2f410e8102e6a27541b85a280d8de55e0e02de73ca2e26b7d74dfc27560`  
		Last Modified: Tue, 08 Sep 2026 20:59:20 GMT  
		Size: 869.1 KB (869093 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a586a51708bb816e6dc80fb72fe7d80c0a75b167e9e36743dd53f5d58d21e98d`  
		Last Modified: Tue, 08 Sep 2026 20:59:32 GMT  
		Size: 414.0 MB (414032467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dc687dceffa6c8a7479f67bd888f9afdeb2f13d55b1d027b072165c28ed5930`  
		Last Modified: Tue, 08 Sep 2026 20:59:22 GMT  
		Size: 718.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52e694738e682311fa8c2e905c17e3e3c3cb0f0375585de0f46d80bd6b4d5d68`  
		Last Modified: Tue, 08 Sep 2026 20:59:23 GMT  
		Size: 557.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b972db8661f820c82686f3e95470db9abfd0bc6944636351d1d188e8682fd33`  
		Last Modified: Tue, 08 Sep 2026 20:59:23 GMT  
		Size: 597.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:871e4020b20e9f8496387c44727c84d8ebcbe7c072abbb3cba0dc8faa72d73bc`  
		Last Modified: Tue, 08 Sep 2026 20:59:24 GMT  
		Size: 876.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19` - unknown; unknown

```console
$ docker pull odoo@sha256:ec1869b9ac8b0ea92efe926629d826536732715d1a2069ea6c24a4f8908be44a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.5 MB (52460520 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d791d2048e3e80cd93b76bfe4a5f0398c74df0a65210b5f971723d54ec07073a`

```dockerfile
```

-	Layers:
	-	`sha256:8542d8fa354c4c00157d374036be9d7d24b5182845688016b3cb4ebe42588b1d`  
		Last Modified: Tue, 08 Sep 2026 20:59:23 GMT  
		Size: 52.4 MB (52433031 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:08a45fb5fc7c182b6cba6c1417beaa0bd5db334ffdf7ec91c72ee5693d7b5c3d`  
		Last Modified: Tue, 08 Sep 2026 20:59:20 GMT  
		Size: 27.5 KB (27489 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:19` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:5a3ec099c084d2c44e0def9b89ecacd17dec246e388beaede00945c2b9886ec9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **698.8 MB (698775591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61544f449f7ff6b3ec671df90a3e85c7f1d48932459f5c232715267dc991a671`
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
# Tue, 08 Sep 2026 20:54:46 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 08 Sep 2026 20:54:46 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 08 Sep 2026 20:54:46 GMT
ENV LANG=en_US.UTF-8
# Tue, 08 Sep 2026 20:54:46 GMT
ARG TARGETARCH=arm64
# Tue, 08 Sep 2026 20:54:46 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 08 Sep 2026 20:55:00 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 08 Sep 2026 20:56:02 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 08 Sep 2026 20:56:02 GMT
ENV ODOO_VERSION=19.0
# Tue, 08 Sep 2026 20:56:02 GMT
ARG ODOO_RELEASE=20260908
# Tue, 08 Sep 2026 20:56:02 GMT
ARG ODOO_SHA=df549a99c8a31a89f54b722e57f9c47224852093
# Tue, 08 Sep 2026 20:57:10 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260908 ODOO_SHA=df549a99c8a31a89f54b722e57f9c47224852093
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 08 Sep 2026 20:57:10 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 08 Sep 2026 20:57:10 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 08 Sep 2026 20:57:10 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260908 ODOO_SHA=df549a99c8a31a89f54b722e57f9c47224852093
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 08 Sep 2026 20:57:10 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 08 Sep 2026 20:57:10 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 08 Sep 2026 20:57:10 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 08 Sep 2026 20:57:10 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 08 Sep 2026 20:57:10 GMT
USER odoo
# Tue, 08 Sep 2026 20:57:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 08 Sep 2026 20:57:10 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95e3fa337ae42f1cbb990fa882efb91eba82e96427e6aba6dd85b0e46d5f71cd`  
		Last Modified: Tue, 08 Sep 2026 20:59:10 GMT  
		Size: 238.6 MB (238582875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2352e02bfddeb4f424703ba0a4c59505560b4df3950f0f6d9ef3ce4d145259d`  
		Last Modified: Tue, 08 Sep 2026 20:59:03 GMT  
		Size: 16.6 MB (16576665 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8332cbab160f84c81bf7852f7c643ee65d61fdd4a18afa434a23975fcda13b62`  
		Last Modified: Tue, 08 Sep 2026 20:59:01 GMT  
		Size: 869.0 KB (868966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2065a4d0c42918d151f43f2116f988f06d7860644466fab25be327abb64d314`  
		Last Modified: Tue, 08 Sep 2026 20:59:13 GMT  
		Size: 413.9 MB (413857100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cdbb2cc9f18f4a86767184c42553645a045d5f5f1d7946e77dbfaf941153f09`  
		Last Modified: Tue, 08 Sep 2026 20:59:03 GMT  
		Size: 717.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba010d12a59add4cd45a56c0b7ea02f1aeae841d913de768a6b4840d78b26146`  
		Last Modified: Tue, 08 Sep 2026 20:59:04 GMT  
		Size: 557.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c650cfa4faeebb984b7ed30cb6505c0614bfcd6d893b1518f6825580e94da952`  
		Last Modified: Tue, 08 Sep 2026 20:59:04 GMT  
		Size: 596.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcbd2709e7383a35e2b63463dfaa9fcc1bb79ee458356429d18d4d9d7d77d2f6`  
		Last Modified: Tue, 08 Sep 2026 20:59:05 GMT  
		Size: 880.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19` - unknown; unknown

```console
$ docker pull odoo@sha256:1e9892fee01f05d00a674081e357ad5f6533ca4159c062e714608e474d62a7b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.5 MB (52467968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69510178745838685de55fc636a90897577626c9bc8d0d533bce68e7d39d63d9`

```dockerfile
```

-	Layers:
	-	`sha256:0ea76225ece99fe384c32a22a548c41a945d1ca49cad9a74bc952dfbdef8ec2c`  
		Last Modified: Tue, 08 Sep 2026 20:59:05 GMT  
		Size: 52.4 MB (52440315 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fd28ffe2354c43b7ffeb86b3bfabe25cb8291bad72a7f9cb330ba9f7f25298dd`  
		Last Modified: Tue, 08 Sep 2026 20:59:01 GMT  
		Size: 27.7 KB (27653 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:19` - linux; ppc64le

```console
$ docker pull odoo@sha256:4b3f7fed534576afb2f156153107c3ab97d04b51c444f14794adbb41d30f3f10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **719.3 MB (719343213 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b5565a398176b0b956669c981a80851fb9a3472afdc39a9ca5b1d5aa6ecb490`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Mon, 17 Aug 2026 13:37:16 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:37:16 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:37:16 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:37:19 GMT
ADD file:2c1f3ca3b8968d5c5bcce4fb1290d9ca7224bbde9578f0051bf2d5493b3b6481 in / 
# Mon, 17 Aug 2026 13:37:20 GMT
CMD ["/bin/bash"]
# Tue, 08 Sep 2026 21:00:21 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 08 Sep 2026 21:00:21 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 08 Sep 2026 21:00:21 GMT
ENV LANG=en_US.UTF-8
# Tue, 08 Sep 2026 21:00:21 GMT
ARG TARGETARCH=ppc64le
# Tue, 08 Sep 2026 21:00:21 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 08 Sep 2026 21:01:21 GMT
# ARGS: TARGETARCH=ppc64le
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 08 Sep 2026 21:14:24 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 08 Sep 2026 21:14:24 GMT
ENV ODOO_VERSION=19.0
# Tue, 08 Sep 2026 21:14:24 GMT
ARG ODOO_RELEASE=20260908
# Tue, 08 Sep 2026 21:14:24 GMT
ARG ODOO_SHA=df549a99c8a31a89f54b722e57f9c47224852093
# Tue, 08 Sep 2026 21:21:19 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260908 ODOO_SHA=df549a99c8a31a89f54b722e57f9c47224852093
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 08 Sep 2026 21:21:22 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 08 Sep 2026 21:21:41 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 08 Sep 2026 21:21:45 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260908 ODOO_SHA=df549a99c8a31a89f54b722e57f9c47224852093
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 08 Sep 2026 21:21:45 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 08 Sep 2026 21:21:45 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 08 Sep 2026 21:21:45 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 08 Sep 2026 21:21:51 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 08 Sep 2026 21:21:51 GMT
USER odoo
# Tue, 08 Sep 2026 21:21:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 08 Sep 2026 21:21:51 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:9ce277f493517cc144a5fc2f41269e529e99b662f089df362b22f62d1fbb7436`  
		Last Modified: Mon, 17 Aug 2026 14:27:41 GMT  
		Size: 34.3 MB (34311195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79610868de8f1ea82a3fbf6fc88927b32bdd9eda06674e51544ee44d960de740`  
		Last Modified: Tue, 08 Sep 2026 21:27:47 GMT  
		Size: 252.3 MB (252285839 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38d6d742d1bc443ba3f3befafe79c6af16c3783f3514dfe790aca0514c737751`  
		Last Modified: Tue, 08 Sep 2026 21:27:37 GMT  
		Size: 17.3 MB (17304050 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b4576b3d48d42ec627d375a8e379b83c11372c708f8b8917692b16c035e3206`  
		Last Modified: Tue, 08 Sep 2026 21:27:36 GMT  
		Size: 871.2 KB (871196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b12c969c4905bc632706a16ba39b27f55c7d65b79d273d767e9634984e145cc`  
		Last Modified: Tue, 08 Sep 2026 21:29:58 GMT  
		Size: 414.6 MB (414568186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ecec9f12ce56df4ae3dc5990a3f1a9341e0083189a88519169e88941111311a`  
		Last Modified: Tue, 08 Sep 2026 21:29:48 GMT  
		Size: 717.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45239301cedce1c7d029bfeefb3a82ca7449460b66d9cc14d87a6ecc41b9c149`  
		Last Modified: Tue, 08 Sep 2026 21:29:48 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:215f1c8c5f4fb7993d5e4a8d7609b212b272e58466601c6621f49adc209c36d2`  
		Last Modified: Tue, 08 Sep 2026 21:29:48 GMT  
		Size: 599.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92a5de56e9fd447d3d4d4394c6bfec252390fbcca11646b250d57889b241d077`  
		Last Modified: Tue, 08 Sep 2026 21:29:52 GMT  
		Size: 875.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19` - unknown; unknown

```console
$ docker pull odoo@sha256:d975da8fd4d4ef7deb466a5eb1614d3037c5593d03adc6fa7e9159332068c9b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.5 MB (52468954 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6adf416dca67f7c0236a9fc4c2b2736e363cf539b38088e432eb66d9c51ad6a1`

```dockerfile
```

-	Layers:
	-	`sha256:00b7949f5f626915df8d941a65089da66383aed68a83c35653617ed8c0541449`  
		Last Modified: Tue, 08 Sep 2026 21:29:51 GMT  
		Size: 52.4 MB (52441401 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:35e9e4814ff896acf9bc17fd2bda6681b248fc4a18ba3113e0fb8a6abc06d217`  
		Last Modified: Tue, 08 Sep 2026 21:29:48 GMT  
		Size: 27.6 KB (27553 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:19.0`

```console
$ docker pull odoo@sha256:d5a78a8c11bb4f04b0adfcfab8619ed0d59ffaccba647d81554b8cbf5c47e6b9
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
$ docker pull odoo@sha256:891a68d4d9aac45b05419cc85b7a5f6b18697c99b3bf8d80e0baf933eb3f1d67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **702.6 MB (702559852 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2bca42c02aef70c1a07a4d8c6a68b1a8cdf754b975bc432f1c8eca773d72767`
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
# Tue, 08 Sep 2026 20:55:00 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 08 Sep 2026 20:55:00 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 08 Sep 2026 20:55:00 GMT
ENV LANG=en_US.UTF-8
# Tue, 08 Sep 2026 20:55:00 GMT
ARG TARGETARCH=amd64
# Tue, 08 Sep 2026 20:55:00 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 08 Sep 2026 20:55:10 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 08 Sep 2026 20:56:33 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 08 Sep 2026 20:56:33 GMT
ENV ODOO_VERSION=19.0
# Tue, 08 Sep 2026 20:56:33 GMT
ARG ODOO_RELEASE=20260908
# Tue, 08 Sep 2026 20:56:33 GMT
ARG ODOO_SHA=df549a99c8a31a89f54b722e57f9c47224852093
# Tue, 08 Sep 2026 20:57:36 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260908 ODOO_SHA=df549a99c8a31a89f54b722e57f9c47224852093
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 08 Sep 2026 20:57:37 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 08 Sep 2026 20:57:37 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 08 Sep 2026 20:57:37 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260908 ODOO_SHA=df549a99c8a31a89f54b722e57f9c47224852093
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 08 Sep 2026 20:57:37 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 08 Sep 2026 20:57:37 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 08 Sep 2026 20:57:37 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 08 Sep 2026 20:57:37 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 08 Sep 2026 20:57:37 GMT
USER odoo
# Tue, 08 Sep 2026 20:57:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 08 Sep 2026 20:57:37 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee5d5b2a1746dfc78b12f27813736e89b7be37eacf00af9ff5a72e3abb00e7cd`  
		Last Modified: Tue, 08 Sep 2026 20:59:30 GMT  
		Size: 241.3 MB (241270852 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:689b7a47e8f2c9e611dc3768697cd2d58c0c655dfa46fdcd2d841159afef7f01`  
		Last Modified: Tue, 08 Sep 2026 20:59:21 GMT  
		Size: 16.6 MB (16631885 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1cbe2f410e8102e6a27541b85a280d8de55e0e02de73ca2e26b7d74dfc27560`  
		Last Modified: Tue, 08 Sep 2026 20:59:20 GMT  
		Size: 869.1 KB (869093 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a586a51708bb816e6dc80fb72fe7d80c0a75b167e9e36743dd53f5d58d21e98d`  
		Last Modified: Tue, 08 Sep 2026 20:59:32 GMT  
		Size: 414.0 MB (414032467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dc687dceffa6c8a7479f67bd888f9afdeb2f13d55b1d027b072165c28ed5930`  
		Last Modified: Tue, 08 Sep 2026 20:59:22 GMT  
		Size: 718.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52e694738e682311fa8c2e905c17e3e3c3cb0f0375585de0f46d80bd6b4d5d68`  
		Last Modified: Tue, 08 Sep 2026 20:59:23 GMT  
		Size: 557.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b972db8661f820c82686f3e95470db9abfd0bc6944636351d1d188e8682fd33`  
		Last Modified: Tue, 08 Sep 2026 20:59:23 GMT  
		Size: 597.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:871e4020b20e9f8496387c44727c84d8ebcbe7c072abbb3cba0dc8faa72d73bc`  
		Last Modified: Tue, 08 Sep 2026 20:59:24 GMT  
		Size: 876.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19.0` - unknown; unknown

```console
$ docker pull odoo@sha256:ec1869b9ac8b0ea92efe926629d826536732715d1a2069ea6c24a4f8908be44a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.5 MB (52460520 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d791d2048e3e80cd93b76bfe4a5f0398c74df0a65210b5f971723d54ec07073a`

```dockerfile
```

-	Layers:
	-	`sha256:8542d8fa354c4c00157d374036be9d7d24b5182845688016b3cb4ebe42588b1d`  
		Last Modified: Tue, 08 Sep 2026 20:59:23 GMT  
		Size: 52.4 MB (52433031 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:08a45fb5fc7c182b6cba6c1417beaa0bd5db334ffdf7ec91c72ee5693d7b5c3d`  
		Last Modified: Tue, 08 Sep 2026 20:59:20 GMT  
		Size: 27.5 KB (27489 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:19.0` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:5a3ec099c084d2c44e0def9b89ecacd17dec246e388beaede00945c2b9886ec9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **698.8 MB (698775591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61544f449f7ff6b3ec671df90a3e85c7f1d48932459f5c232715267dc991a671`
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
# Tue, 08 Sep 2026 20:54:46 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 08 Sep 2026 20:54:46 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 08 Sep 2026 20:54:46 GMT
ENV LANG=en_US.UTF-8
# Tue, 08 Sep 2026 20:54:46 GMT
ARG TARGETARCH=arm64
# Tue, 08 Sep 2026 20:54:46 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 08 Sep 2026 20:55:00 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 08 Sep 2026 20:56:02 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 08 Sep 2026 20:56:02 GMT
ENV ODOO_VERSION=19.0
# Tue, 08 Sep 2026 20:56:02 GMT
ARG ODOO_RELEASE=20260908
# Tue, 08 Sep 2026 20:56:02 GMT
ARG ODOO_SHA=df549a99c8a31a89f54b722e57f9c47224852093
# Tue, 08 Sep 2026 20:57:10 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260908 ODOO_SHA=df549a99c8a31a89f54b722e57f9c47224852093
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 08 Sep 2026 20:57:10 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 08 Sep 2026 20:57:10 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 08 Sep 2026 20:57:10 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260908 ODOO_SHA=df549a99c8a31a89f54b722e57f9c47224852093
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 08 Sep 2026 20:57:10 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 08 Sep 2026 20:57:10 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 08 Sep 2026 20:57:10 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 08 Sep 2026 20:57:10 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 08 Sep 2026 20:57:10 GMT
USER odoo
# Tue, 08 Sep 2026 20:57:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 08 Sep 2026 20:57:10 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95e3fa337ae42f1cbb990fa882efb91eba82e96427e6aba6dd85b0e46d5f71cd`  
		Last Modified: Tue, 08 Sep 2026 20:59:10 GMT  
		Size: 238.6 MB (238582875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2352e02bfddeb4f424703ba0a4c59505560b4df3950f0f6d9ef3ce4d145259d`  
		Last Modified: Tue, 08 Sep 2026 20:59:03 GMT  
		Size: 16.6 MB (16576665 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8332cbab160f84c81bf7852f7c643ee65d61fdd4a18afa434a23975fcda13b62`  
		Last Modified: Tue, 08 Sep 2026 20:59:01 GMT  
		Size: 869.0 KB (868966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2065a4d0c42918d151f43f2116f988f06d7860644466fab25be327abb64d314`  
		Last Modified: Tue, 08 Sep 2026 20:59:13 GMT  
		Size: 413.9 MB (413857100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cdbb2cc9f18f4a86767184c42553645a045d5f5f1d7946e77dbfaf941153f09`  
		Last Modified: Tue, 08 Sep 2026 20:59:03 GMT  
		Size: 717.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba010d12a59add4cd45a56c0b7ea02f1aeae841d913de768a6b4840d78b26146`  
		Last Modified: Tue, 08 Sep 2026 20:59:04 GMT  
		Size: 557.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c650cfa4faeebb984b7ed30cb6505c0614bfcd6d893b1518f6825580e94da952`  
		Last Modified: Tue, 08 Sep 2026 20:59:04 GMT  
		Size: 596.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcbd2709e7383a35e2b63463dfaa9fcc1bb79ee458356429d18d4d9d7d77d2f6`  
		Last Modified: Tue, 08 Sep 2026 20:59:05 GMT  
		Size: 880.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19.0` - unknown; unknown

```console
$ docker pull odoo@sha256:1e9892fee01f05d00a674081e357ad5f6533ca4159c062e714608e474d62a7b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.5 MB (52467968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69510178745838685de55fc636a90897577626c9bc8d0d533bce68e7d39d63d9`

```dockerfile
```

-	Layers:
	-	`sha256:0ea76225ece99fe384c32a22a548c41a945d1ca49cad9a74bc952dfbdef8ec2c`  
		Last Modified: Tue, 08 Sep 2026 20:59:05 GMT  
		Size: 52.4 MB (52440315 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fd28ffe2354c43b7ffeb86b3bfabe25cb8291bad72a7f9cb330ba9f7f25298dd`  
		Last Modified: Tue, 08 Sep 2026 20:59:01 GMT  
		Size: 27.7 KB (27653 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:19.0` - linux; ppc64le

```console
$ docker pull odoo@sha256:4b3f7fed534576afb2f156153107c3ab97d04b51c444f14794adbb41d30f3f10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **719.3 MB (719343213 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b5565a398176b0b956669c981a80851fb9a3472afdc39a9ca5b1d5aa6ecb490`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Mon, 17 Aug 2026 13:37:16 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:37:16 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:37:16 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:37:19 GMT
ADD file:2c1f3ca3b8968d5c5bcce4fb1290d9ca7224bbde9578f0051bf2d5493b3b6481 in / 
# Mon, 17 Aug 2026 13:37:20 GMT
CMD ["/bin/bash"]
# Tue, 08 Sep 2026 21:00:21 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 08 Sep 2026 21:00:21 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 08 Sep 2026 21:00:21 GMT
ENV LANG=en_US.UTF-8
# Tue, 08 Sep 2026 21:00:21 GMT
ARG TARGETARCH=ppc64le
# Tue, 08 Sep 2026 21:00:21 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 08 Sep 2026 21:01:21 GMT
# ARGS: TARGETARCH=ppc64le
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 08 Sep 2026 21:14:24 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 08 Sep 2026 21:14:24 GMT
ENV ODOO_VERSION=19.0
# Tue, 08 Sep 2026 21:14:24 GMT
ARG ODOO_RELEASE=20260908
# Tue, 08 Sep 2026 21:14:24 GMT
ARG ODOO_SHA=df549a99c8a31a89f54b722e57f9c47224852093
# Tue, 08 Sep 2026 21:21:19 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260908 ODOO_SHA=df549a99c8a31a89f54b722e57f9c47224852093
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 08 Sep 2026 21:21:22 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 08 Sep 2026 21:21:41 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 08 Sep 2026 21:21:45 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260908 ODOO_SHA=df549a99c8a31a89f54b722e57f9c47224852093
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 08 Sep 2026 21:21:45 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 08 Sep 2026 21:21:45 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 08 Sep 2026 21:21:45 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 08 Sep 2026 21:21:51 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 08 Sep 2026 21:21:51 GMT
USER odoo
# Tue, 08 Sep 2026 21:21:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 08 Sep 2026 21:21:51 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:9ce277f493517cc144a5fc2f41269e529e99b662f089df362b22f62d1fbb7436`  
		Last Modified: Mon, 17 Aug 2026 14:27:41 GMT  
		Size: 34.3 MB (34311195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79610868de8f1ea82a3fbf6fc88927b32bdd9eda06674e51544ee44d960de740`  
		Last Modified: Tue, 08 Sep 2026 21:27:47 GMT  
		Size: 252.3 MB (252285839 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38d6d742d1bc443ba3f3befafe79c6af16c3783f3514dfe790aca0514c737751`  
		Last Modified: Tue, 08 Sep 2026 21:27:37 GMT  
		Size: 17.3 MB (17304050 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b4576b3d48d42ec627d375a8e379b83c11372c708f8b8917692b16c035e3206`  
		Last Modified: Tue, 08 Sep 2026 21:27:36 GMT  
		Size: 871.2 KB (871196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b12c969c4905bc632706a16ba39b27f55c7d65b79d273d767e9634984e145cc`  
		Last Modified: Tue, 08 Sep 2026 21:29:58 GMT  
		Size: 414.6 MB (414568186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ecec9f12ce56df4ae3dc5990a3f1a9341e0083189a88519169e88941111311a`  
		Last Modified: Tue, 08 Sep 2026 21:29:48 GMT  
		Size: 717.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45239301cedce1c7d029bfeefb3a82ca7449460b66d9cc14d87a6ecc41b9c149`  
		Last Modified: Tue, 08 Sep 2026 21:29:48 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:215f1c8c5f4fb7993d5e4a8d7609b212b272e58466601c6621f49adc209c36d2`  
		Last Modified: Tue, 08 Sep 2026 21:29:48 GMT  
		Size: 599.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92a5de56e9fd447d3d4d4394c6bfec252390fbcca11646b250d57889b241d077`  
		Last Modified: Tue, 08 Sep 2026 21:29:52 GMT  
		Size: 875.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19.0` - unknown; unknown

```console
$ docker pull odoo@sha256:d975da8fd4d4ef7deb466a5eb1614d3037c5593d03adc6fa7e9159332068c9b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.5 MB (52468954 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6adf416dca67f7c0236a9fc4c2b2736e363cf539b38088e432eb66d9c51ad6a1`

```dockerfile
```

-	Layers:
	-	`sha256:00b7949f5f626915df8d941a65089da66383aed68a83c35653617ed8c0541449`  
		Last Modified: Tue, 08 Sep 2026 21:29:51 GMT  
		Size: 52.4 MB (52441401 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:35e9e4814ff896acf9bc17fd2bda6681b248fc4a18ba3113e0fb8a6abc06d217`  
		Last Modified: Tue, 08 Sep 2026 21:29:48 GMT  
		Size: 27.6 KB (27553 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:19.0-20260908`

```console
$ docker pull odoo@sha256:d5a78a8c11bb4f04b0adfcfab8619ed0d59ffaccba647d81554b8cbf5c47e6b9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `odoo:19.0-20260908` - linux; amd64

```console
$ docker pull odoo@sha256:891a68d4d9aac45b05419cc85b7a5f6b18697c99b3bf8d80e0baf933eb3f1d67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **702.6 MB (702559852 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2bca42c02aef70c1a07a4d8c6a68b1a8cdf754b975bc432f1c8eca773d72767`
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
# Tue, 08 Sep 2026 20:55:00 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 08 Sep 2026 20:55:00 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 08 Sep 2026 20:55:00 GMT
ENV LANG=en_US.UTF-8
# Tue, 08 Sep 2026 20:55:00 GMT
ARG TARGETARCH=amd64
# Tue, 08 Sep 2026 20:55:00 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 08 Sep 2026 20:55:10 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 08 Sep 2026 20:56:33 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 08 Sep 2026 20:56:33 GMT
ENV ODOO_VERSION=19.0
# Tue, 08 Sep 2026 20:56:33 GMT
ARG ODOO_RELEASE=20260908
# Tue, 08 Sep 2026 20:56:33 GMT
ARG ODOO_SHA=df549a99c8a31a89f54b722e57f9c47224852093
# Tue, 08 Sep 2026 20:57:36 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260908 ODOO_SHA=df549a99c8a31a89f54b722e57f9c47224852093
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 08 Sep 2026 20:57:37 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 08 Sep 2026 20:57:37 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 08 Sep 2026 20:57:37 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260908 ODOO_SHA=df549a99c8a31a89f54b722e57f9c47224852093
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 08 Sep 2026 20:57:37 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 08 Sep 2026 20:57:37 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 08 Sep 2026 20:57:37 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 08 Sep 2026 20:57:37 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 08 Sep 2026 20:57:37 GMT
USER odoo
# Tue, 08 Sep 2026 20:57:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 08 Sep 2026 20:57:37 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee5d5b2a1746dfc78b12f27813736e89b7be37eacf00af9ff5a72e3abb00e7cd`  
		Last Modified: Tue, 08 Sep 2026 20:59:30 GMT  
		Size: 241.3 MB (241270852 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:689b7a47e8f2c9e611dc3768697cd2d58c0c655dfa46fdcd2d841159afef7f01`  
		Last Modified: Tue, 08 Sep 2026 20:59:21 GMT  
		Size: 16.6 MB (16631885 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1cbe2f410e8102e6a27541b85a280d8de55e0e02de73ca2e26b7d74dfc27560`  
		Last Modified: Tue, 08 Sep 2026 20:59:20 GMT  
		Size: 869.1 KB (869093 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a586a51708bb816e6dc80fb72fe7d80c0a75b167e9e36743dd53f5d58d21e98d`  
		Last Modified: Tue, 08 Sep 2026 20:59:32 GMT  
		Size: 414.0 MB (414032467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dc687dceffa6c8a7479f67bd888f9afdeb2f13d55b1d027b072165c28ed5930`  
		Last Modified: Tue, 08 Sep 2026 20:59:22 GMT  
		Size: 718.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52e694738e682311fa8c2e905c17e3e3c3cb0f0375585de0f46d80bd6b4d5d68`  
		Last Modified: Tue, 08 Sep 2026 20:59:23 GMT  
		Size: 557.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b972db8661f820c82686f3e95470db9abfd0bc6944636351d1d188e8682fd33`  
		Last Modified: Tue, 08 Sep 2026 20:59:23 GMT  
		Size: 597.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:871e4020b20e9f8496387c44727c84d8ebcbe7c072abbb3cba0dc8faa72d73bc`  
		Last Modified: Tue, 08 Sep 2026 20:59:24 GMT  
		Size: 876.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19.0-20260908` - unknown; unknown

```console
$ docker pull odoo@sha256:ec1869b9ac8b0ea92efe926629d826536732715d1a2069ea6c24a4f8908be44a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.5 MB (52460520 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d791d2048e3e80cd93b76bfe4a5f0398c74df0a65210b5f971723d54ec07073a`

```dockerfile
```

-	Layers:
	-	`sha256:8542d8fa354c4c00157d374036be9d7d24b5182845688016b3cb4ebe42588b1d`  
		Last Modified: Tue, 08 Sep 2026 20:59:23 GMT  
		Size: 52.4 MB (52433031 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:08a45fb5fc7c182b6cba6c1417beaa0bd5db334ffdf7ec91c72ee5693d7b5c3d`  
		Last Modified: Tue, 08 Sep 2026 20:59:20 GMT  
		Size: 27.5 KB (27489 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:19.0-20260908` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:5a3ec099c084d2c44e0def9b89ecacd17dec246e388beaede00945c2b9886ec9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **698.8 MB (698775591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61544f449f7ff6b3ec671df90a3e85c7f1d48932459f5c232715267dc991a671`
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
# Tue, 08 Sep 2026 20:54:46 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 08 Sep 2026 20:54:46 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 08 Sep 2026 20:54:46 GMT
ENV LANG=en_US.UTF-8
# Tue, 08 Sep 2026 20:54:46 GMT
ARG TARGETARCH=arm64
# Tue, 08 Sep 2026 20:54:46 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 08 Sep 2026 20:55:00 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 08 Sep 2026 20:56:02 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 08 Sep 2026 20:56:02 GMT
ENV ODOO_VERSION=19.0
# Tue, 08 Sep 2026 20:56:02 GMT
ARG ODOO_RELEASE=20260908
# Tue, 08 Sep 2026 20:56:02 GMT
ARG ODOO_SHA=df549a99c8a31a89f54b722e57f9c47224852093
# Tue, 08 Sep 2026 20:57:10 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260908 ODOO_SHA=df549a99c8a31a89f54b722e57f9c47224852093
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 08 Sep 2026 20:57:10 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 08 Sep 2026 20:57:10 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 08 Sep 2026 20:57:10 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260908 ODOO_SHA=df549a99c8a31a89f54b722e57f9c47224852093
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 08 Sep 2026 20:57:10 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 08 Sep 2026 20:57:10 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 08 Sep 2026 20:57:10 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 08 Sep 2026 20:57:10 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 08 Sep 2026 20:57:10 GMT
USER odoo
# Tue, 08 Sep 2026 20:57:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 08 Sep 2026 20:57:10 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95e3fa337ae42f1cbb990fa882efb91eba82e96427e6aba6dd85b0e46d5f71cd`  
		Last Modified: Tue, 08 Sep 2026 20:59:10 GMT  
		Size: 238.6 MB (238582875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2352e02bfddeb4f424703ba0a4c59505560b4df3950f0f6d9ef3ce4d145259d`  
		Last Modified: Tue, 08 Sep 2026 20:59:03 GMT  
		Size: 16.6 MB (16576665 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8332cbab160f84c81bf7852f7c643ee65d61fdd4a18afa434a23975fcda13b62`  
		Last Modified: Tue, 08 Sep 2026 20:59:01 GMT  
		Size: 869.0 KB (868966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2065a4d0c42918d151f43f2116f988f06d7860644466fab25be327abb64d314`  
		Last Modified: Tue, 08 Sep 2026 20:59:13 GMT  
		Size: 413.9 MB (413857100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cdbb2cc9f18f4a86767184c42553645a045d5f5f1d7946e77dbfaf941153f09`  
		Last Modified: Tue, 08 Sep 2026 20:59:03 GMT  
		Size: 717.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba010d12a59add4cd45a56c0b7ea02f1aeae841d913de768a6b4840d78b26146`  
		Last Modified: Tue, 08 Sep 2026 20:59:04 GMT  
		Size: 557.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c650cfa4faeebb984b7ed30cb6505c0614bfcd6d893b1518f6825580e94da952`  
		Last Modified: Tue, 08 Sep 2026 20:59:04 GMT  
		Size: 596.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcbd2709e7383a35e2b63463dfaa9fcc1bb79ee458356429d18d4d9d7d77d2f6`  
		Last Modified: Tue, 08 Sep 2026 20:59:05 GMT  
		Size: 880.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19.0-20260908` - unknown; unknown

```console
$ docker pull odoo@sha256:1e9892fee01f05d00a674081e357ad5f6533ca4159c062e714608e474d62a7b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.5 MB (52467968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69510178745838685de55fc636a90897577626c9bc8d0d533bce68e7d39d63d9`

```dockerfile
```

-	Layers:
	-	`sha256:0ea76225ece99fe384c32a22a548c41a945d1ca49cad9a74bc952dfbdef8ec2c`  
		Last Modified: Tue, 08 Sep 2026 20:59:05 GMT  
		Size: 52.4 MB (52440315 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fd28ffe2354c43b7ffeb86b3bfabe25cb8291bad72a7f9cb330ba9f7f25298dd`  
		Last Modified: Tue, 08 Sep 2026 20:59:01 GMT  
		Size: 27.7 KB (27653 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:19.0-20260908` - linux; ppc64le

```console
$ docker pull odoo@sha256:4b3f7fed534576afb2f156153107c3ab97d04b51c444f14794adbb41d30f3f10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **719.3 MB (719343213 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b5565a398176b0b956669c981a80851fb9a3472afdc39a9ca5b1d5aa6ecb490`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Mon, 17 Aug 2026 13:37:16 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:37:16 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:37:16 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:37:19 GMT
ADD file:2c1f3ca3b8968d5c5bcce4fb1290d9ca7224bbde9578f0051bf2d5493b3b6481 in / 
# Mon, 17 Aug 2026 13:37:20 GMT
CMD ["/bin/bash"]
# Tue, 08 Sep 2026 21:00:21 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 08 Sep 2026 21:00:21 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 08 Sep 2026 21:00:21 GMT
ENV LANG=en_US.UTF-8
# Tue, 08 Sep 2026 21:00:21 GMT
ARG TARGETARCH=ppc64le
# Tue, 08 Sep 2026 21:00:21 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 08 Sep 2026 21:01:21 GMT
# ARGS: TARGETARCH=ppc64le
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 08 Sep 2026 21:14:24 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 08 Sep 2026 21:14:24 GMT
ENV ODOO_VERSION=19.0
# Tue, 08 Sep 2026 21:14:24 GMT
ARG ODOO_RELEASE=20260908
# Tue, 08 Sep 2026 21:14:24 GMT
ARG ODOO_SHA=df549a99c8a31a89f54b722e57f9c47224852093
# Tue, 08 Sep 2026 21:21:19 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260908 ODOO_SHA=df549a99c8a31a89f54b722e57f9c47224852093
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 08 Sep 2026 21:21:22 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 08 Sep 2026 21:21:41 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 08 Sep 2026 21:21:45 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260908 ODOO_SHA=df549a99c8a31a89f54b722e57f9c47224852093
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 08 Sep 2026 21:21:45 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 08 Sep 2026 21:21:45 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 08 Sep 2026 21:21:45 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 08 Sep 2026 21:21:51 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 08 Sep 2026 21:21:51 GMT
USER odoo
# Tue, 08 Sep 2026 21:21:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 08 Sep 2026 21:21:51 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:9ce277f493517cc144a5fc2f41269e529e99b662f089df362b22f62d1fbb7436`  
		Last Modified: Mon, 17 Aug 2026 14:27:41 GMT  
		Size: 34.3 MB (34311195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79610868de8f1ea82a3fbf6fc88927b32bdd9eda06674e51544ee44d960de740`  
		Last Modified: Tue, 08 Sep 2026 21:27:47 GMT  
		Size: 252.3 MB (252285839 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38d6d742d1bc443ba3f3befafe79c6af16c3783f3514dfe790aca0514c737751`  
		Last Modified: Tue, 08 Sep 2026 21:27:37 GMT  
		Size: 17.3 MB (17304050 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b4576b3d48d42ec627d375a8e379b83c11372c708f8b8917692b16c035e3206`  
		Last Modified: Tue, 08 Sep 2026 21:27:36 GMT  
		Size: 871.2 KB (871196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b12c969c4905bc632706a16ba39b27f55c7d65b79d273d767e9634984e145cc`  
		Last Modified: Tue, 08 Sep 2026 21:29:58 GMT  
		Size: 414.6 MB (414568186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ecec9f12ce56df4ae3dc5990a3f1a9341e0083189a88519169e88941111311a`  
		Last Modified: Tue, 08 Sep 2026 21:29:48 GMT  
		Size: 717.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45239301cedce1c7d029bfeefb3a82ca7449460b66d9cc14d87a6ecc41b9c149`  
		Last Modified: Tue, 08 Sep 2026 21:29:48 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:215f1c8c5f4fb7993d5e4a8d7609b212b272e58466601c6621f49adc209c36d2`  
		Last Modified: Tue, 08 Sep 2026 21:29:48 GMT  
		Size: 599.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92a5de56e9fd447d3d4d4394c6bfec252390fbcca11646b250d57889b241d077`  
		Last Modified: Tue, 08 Sep 2026 21:29:52 GMT  
		Size: 875.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19.0-20260908` - unknown; unknown

```console
$ docker pull odoo@sha256:d975da8fd4d4ef7deb466a5eb1614d3037c5593d03adc6fa7e9159332068c9b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.5 MB (52468954 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6adf416dca67f7c0236a9fc4c2b2736e363cf539b38088e432eb66d9c51ad6a1`

```dockerfile
```

-	Layers:
	-	`sha256:00b7949f5f626915df8d941a65089da66383aed68a83c35653617ed8c0541449`  
		Last Modified: Tue, 08 Sep 2026 21:29:51 GMT  
		Size: 52.4 MB (52441401 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:35e9e4814ff896acf9bc17fd2bda6681b248fc4a18ba3113e0fb8a6abc06d217`  
		Last Modified: Tue, 08 Sep 2026 21:29:48 GMT  
		Size: 27.6 KB (27553 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:latest`

```console
$ docker pull odoo@sha256:d5a78a8c11bb4f04b0adfcfab8619ed0d59ffaccba647d81554b8cbf5c47e6b9
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
$ docker pull odoo@sha256:891a68d4d9aac45b05419cc85b7a5f6b18697c99b3bf8d80e0baf933eb3f1d67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **702.6 MB (702559852 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2bca42c02aef70c1a07a4d8c6a68b1a8cdf754b975bc432f1c8eca773d72767`
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
# Tue, 08 Sep 2026 20:55:00 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 08 Sep 2026 20:55:00 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 08 Sep 2026 20:55:00 GMT
ENV LANG=en_US.UTF-8
# Tue, 08 Sep 2026 20:55:00 GMT
ARG TARGETARCH=amd64
# Tue, 08 Sep 2026 20:55:00 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 08 Sep 2026 20:55:10 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 08 Sep 2026 20:56:33 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 08 Sep 2026 20:56:33 GMT
ENV ODOO_VERSION=19.0
# Tue, 08 Sep 2026 20:56:33 GMT
ARG ODOO_RELEASE=20260908
# Tue, 08 Sep 2026 20:56:33 GMT
ARG ODOO_SHA=df549a99c8a31a89f54b722e57f9c47224852093
# Tue, 08 Sep 2026 20:57:36 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260908 ODOO_SHA=df549a99c8a31a89f54b722e57f9c47224852093
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 08 Sep 2026 20:57:37 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 08 Sep 2026 20:57:37 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 08 Sep 2026 20:57:37 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260908 ODOO_SHA=df549a99c8a31a89f54b722e57f9c47224852093
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 08 Sep 2026 20:57:37 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 08 Sep 2026 20:57:37 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 08 Sep 2026 20:57:37 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 08 Sep 2026 20:57:37 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 08 Sep 2026 20:57:37 GMT
USER odoo
# Tue, 08 Sep 2026 20:57:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 08 Sep 2026 20:57:37 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee5d5b2a1746dfc78b12f27813736e89b7be37eacf00af9ff5a72e3abb00e7cd`  
		Last Modified: Tue, 08 Sep 2026 20:59:30 GMT  
		Size: 241.3 MB (241270852 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:689b7a47e8f2c9e611dc3768697cd2d58c0c655dfa46fdcd2d841159afef7f01`  
		Last Modified: Tue, 08 Sep 2026 20:59:21 GMT  
		Size: 16.6 MB (16631885 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1cbe2f410e8102e6a27541b85a280d8de55e0e02de73ca2e26b7d74dfc27560`  
		Last Modified: Tue, 08 Sep 2026 20:59:20 GMT  
		Size: 869.1 KB (869093 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a586a51708bb816e6dc80fb72fe7d80c0a75b167e9e36743dd53f5d58d21e98d`  
		Last Modified: Tue, 08 Sep 2026 20:59:32 GMT  
		Size: 414.0 MB (414032467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dc687dceffa6c8a7479f67bd888f9afdeb2f13d55b1d027b072165c28ed5930`  
		Last Modified: Tue, 08 Sep 2026 20:59:22 GMT  
		Size: 718.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52e694738e682311fa8c2e905c17e3e3c3cb0f0375585de0f46d80bd6b4d5d68`  
		Last Modified: Tue, 08 Sep 2026 20:59:23 GMT  
		Size: 557.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b972db8661f820c82686f3e95470db9abfd0bc6944636351d1d188e8682fd33`  
		Last Modified: Tue, 08 Sep 2026 20:59:23 GMT  
		Size: 597.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:871e4020b20e9f8496387c44727c84d8ebcbe7c072abbb3cba0dc8faa72d73bc`  
		Last Modified: Tue, 08 Sep 2026 20:59:24 GMT  
		Size: 876.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:latest` - unknown; unknown

```console
$ docker pull odoo@sha256:ec1869b9ac8b0ea92efe926629d826536732715d1a2069ea6c24a4f8908be44a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.5 MB (52460520 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d791d2048e3e80cd93b76bfe4a5f0398c74df0a65210b5f971723d54ec07073a`

```dockerfile
```

-	Layers:
	-	`sha256:8542d8fa354c4c00157d374036be9d7d24b5182845688016b3cb4ebe42588b1d`  
		Last Modified: Tue, 08 Sep 2026 20:59:23 GMT  
		Size: 52.4 MB (52433031 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:08a45fb5fc7c182b6cba6c1417beaa0bd5db334ffdf7ec91c72ee5693d7b5c3d`  
		Last Modified: Tue, 08 Sep 2026 20:59:20 GMT  
		Size: 27.5 KB (27489 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:latest` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:5a3ec099c084d2c44e0def9b89ecacd17dec246e388beaede00945c2b9886ec9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **698.8 MB (698775591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61544f449f7ff6b3ec671df90a3e85c7f1d48932459f5c232715267dc991a671`
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
# Tue, 08 Sep 2026 20:54:46 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 08 Sep 2026 20:54:46 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 08 Sep 2026 20:54:46 GMT
ENV LANG=en_US.UTF-8
# Tue, 08 Sep 2026 20:54:46 GMT
ARG TARGETARCH=arm64
# Tue, 08 Sep 2026 20:54:46 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 08 Sep 2026 20:55:00 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 08 Sep 2026 20:56:02 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 08 Sep 2026 20:56:02 GMT
ENV ODOO_VERSION=19.0
# Tue, 08 Sep 2026 20:56:02 GMT
ARG ODOO_RELEASE=20260908
# Tue, 08 Sep 2026 20:56:02 GMT
ARG ODOO_SHA=df549a99c8a31a89f54b722e57f9c47224852093
# Tue, 08 Sep 2026 20:57:10 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260908 ODOO_SHA=df549a99c8a31a89f54b722e57f9c47224852093
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 08 Sep 2026 20:57:10 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 08 Sep 2026 20:57:10 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 08 Sep 2026 20:57:10 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260908 ODOO_SHA=df549a99c8a31a89f54b722e57f9c47224852093
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 08 Sep 2026 20:57:10 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 08 Sep 2026 20:57:10 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 08 Sep 2026 20:57:10 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 08 Sep 2026 20:57:10 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 08 Sep 2026 20:57:10 GMT
USER odoo
# Tue, 08 Sep 2026 20:57:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 08 Sep 2026 20:57:10 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95e3fa337ae42f1cbb990fa882efb91eba82e96427e6aba6dd85b0e46d5f71cd`  
		Last Modified: Tue, 08 Sep 2026 20:59:10 GMT  
		Size: 238.6 MB (238582875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2352e02bfddeb4f424703ba0a4c59505560b4df3950f0f6d9ef3ce4d145259d`  
		Last Modified: Tue, 08 Sep 2026 20:59:03 GMT  
		Size: 16.6 MB (16576665 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8332cbab160f84c81bf7852f7c643ee65d61fdd4a18afa434a23975fcda13b62`  
		Last Modified: Tue, 08 Sep 2026 20:59:01 GMT  
		Size: 869.0 KB (868966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2065a4d0c42918d151f43f2116f988f06d7860644466fab25be327abb64d314`  
		Last Modified: Tue, 08 Sep 2026 20:59:13 GMT  
		Size: 413.9 MB (413857100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cdbb2cc9f18f4a86767184c42553645a045d5f5f1d7946e77dbfaf941153f09`  
		Last Modified: Tue, 08 Sep 2026 20:59:03 GMT  
		Size: 717.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba010d12a59add4cd45a56c0b7ea02f1aeae841d913de768a6b4840d78b26146`  
		Last Modified: Tue, 08 Sep 2026 20:59:04 GMT  
		Size: 557.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c650cfa4faeebb984b7ed30cb6505c0614bfcd6d893b1518f6825580e94da952`  
		Last Modified: Tue, 08 Sep 2026 20:59:04 GMT  
		Size: 596.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcbd2709e7383a35e2b63463dfaa9fcc1bb79ee458356429d18d4d9d7d77d2f6`  
		Last Modified: Tue, 08 Sep 2026 20:59:05 GMT  
		Size: 880.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:latest` - unknown; unknown

```console
$ docker pull odoo@sha256:1e9892fee01f05d00a674081e357ad5f6533ca4159c062e714608e474d62a7b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.5 MB (52467968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69510178745838685de55fc636a90897577626c9bc8d0d533bce68e7d39d63d9`

```dockerfile
```

-	Layers:
	-	`sha256:0ea76225ece99fe384c32a22a548c41a945d1ca49cad9a74bc952dfbdef8ec2c`  
		Last Modified: Tue, 08 Sep 2026 20:59:05 GMT  
		Size: 52.4 MB (52440315 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fd28ffe2354c43b7ffeb86b3bfabe25cb8291bad72a7f9cb330ba9f7f25298dd`  
		Last Modified: Tue, 08 Sep 2026 20:59:01 GMT  
		Size: 27.7 KB (27653 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:latest` - linux; ppc64le

```console
$ docker pull odoo@sha256:4b3f7fed534576afb2f156153107c3ab97d04b51c444f14794adbb41d30f3f10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **719.3 MB (719343213 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b5565a398176b0b956669c981a80851fb9a3472afdc39a9ca5b1d5aa6ecb490`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Mon, 17 Aug 2026 13:37:16 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:37:16 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:37:16 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:37:19 GMT
ADD file:2c1f3ca3b8968d5c5bcce4fb1290d9ca7224bbde9578f0051bf2d5493b3b6481 in / 
# Mon, 17 Aug 2026 13:37:20 GMT
CMD ["/bin/bash"]
# Tue, 08 Sep 2026 21:00:21 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 08 Sep 2026 21:00:21 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 08 Sep 2026 21:00:21 GMT
ENV LANG=en_US.UTF-8
# Tue, 08 Sep 2026 21:00:21 GMT
ARG TARGETARCH=ppc64le
# Tue, 08 Sep 2026 21:00:21 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 08 Sep 2026 21:01:21 GMT
# ARGS: TARGETARCH=ppc64le
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 08 Sep 2026 21:14:24 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 08 Sep 2026 21:14:24 GMT
ENV ODOO_VERSION=19.0
# Tue, 08 Sep 2026 21:14:24 GMT
ARG ODOO_RELEASE=20260908
# Tue, 08 Sep 2026 21:14:24 GMT
ARG ODOO_SHA=df549a99c8a31a89f54b722e57f9c47224852093
# Tue, 08 Sep 2026 21:21:19 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260908 ODOO_SHA=df549a99c8a31a89f54b722e57f9c47224852093
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 08 Sep 2026 21:21:22 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 08 Sep 2026 21:21:41 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 08 Sep 2026 21:21:45 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260908 ODOO_SHA=df549a99c8a31a89f54b722e57f9c47224852093
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 08 Sep 2026 21:21:45 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 08 Sep 2026 21:21:45 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 08 Sep 2026 21:21:45 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 08 Sep 2026 21:21:51 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 08 Sep 2026 21:21:51 GMT
USER odoo
# Tue, 08 Sep 2026 21:21:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 08 Sep 2026 21:21:51 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:9ce277f493517cc144a5fc2f41269e529e99b662f089df362b22f62d1fbb7436`  
		Last Modified: Mon, 17 Aug 2026 14:27:41 GMT  
		Size: 34.3 MB (34311195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79610868de8f1ea82a3fbf6fc88927b32bdd9eda06674e51544ee44d960de740`  
		Last Modified: Tue, 08 Sep 2026 21:27:47 GMT  
		Size: 252.3 MB (252285839 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38d6d742d1bc443ba3f3befafe79c6af16c3783f3514dfe790aca0514c737751`  
		Last Modified: Tue, 08 Sep 2026 21:27:37 GMT  
		Size: 17.3 MB (17304050 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b4576b3d48d42ec627d375a8e379b83c11372c708f8b8917692b16c035e3206`  
		Last Modified: Tue, 08 Sep 2026 21:27:36 GMT  
		Size: 871.2 KB (871196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b12c969c4905bc632706a16ba39b27f55c7d65b79d273d767e9634984e145cc`  
		Last Modified: Tue, 08 Sep 2026 21:29:58 GMT  
		Size: 414.6 MB (414568186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ecec9f12ce56df4ae3dc5990a3f1a9341e0083189a88519169e88941111311a`  
		Last Modified: Tue, 08 Sep 2026 21:29:48 GMT  
		Size: 717.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45239301cedce1c7d029bfeefb3a82ca7449460b66d9cc14d87a6ecc41b9c149`  
		Last Modified: Tue, 08 Sep 2026 21:29:48 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:215f1c8c5f4fb7993d5e4a8d7609b212b272e58466601c6621f49adc209c36d2`  
		Last Modified: Tue, 08 Sep 2026 21:29:48 GMT  
		Size: 599.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92a5de56e9fd447d3d4d4394c6bfec252390fbcca11646b250d57889b241d077`  
		Last Modified: Tue, 08 Sep 2026 21:29:52 GMT  
		Size: 875.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:latest` - unknown; unknown

```console
$ docker pull odoo@sha256:d975da8fd4d4ef7deb466a5eb1614d3037c5593d03adc6fa7e9159332068c9b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.5 MB (52468954 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6adf416dca67f7c0236a9fc4c2b2736e363cf539b38088e432eb66d9c51ad6a1`

```dockerfile
```

-	Layers:
	-	`sha256:00b7949f5f626915df8d941a65089da66383aed68a83c35653617ed8c0541449`  
		Last Modified: Tue, 08 Sep 2026 21:29:51 GMT  
		Size: 52.4 MB (52441401 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:35e9e4814ff896acf9bc17fd2bda6681b248fc4a18ba3113e0fb8a6abc06d217`  
		Last Modified: Tue, 08 Sep 2026 21:29:48 GMT  
		Size: 27.6 KB (27553 bytes)  
		MIME: application/vnd.in-toto+json
