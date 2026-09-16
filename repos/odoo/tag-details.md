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
$ docker pull odoo@sha256:8779f8157ddcc37b84014c94646073f46fd4ad776b7a5d95fc3b0dc73a24a8fa
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `odoo:17` - linux; amd64

```console
$ docker pull odoo@sha256:94afce4bda54095b67f1040e3e12847776d22ad8591d977f480dabb7dc9a4a04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **613.1 MB (613084274 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c936d910d54cb8d2af09db31d9b387b2ec83569d58a7b8ef65254d521a3fc69`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:51 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:51 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:51 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:53 GMT
ADD file:81c01921c5f642ac2fcbfae682e489e8e64b347467d9fa1587707e310e64d790 in / 
# Thu, 03 Sep 2026 12:14:54 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:35:29 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Wed, 09 Sep 2026 02:35:29 GMT
SHELL [/bin/bash -xo pipefail -c]
# Wed, 09 Sep 2026 02:35:29 GMT
ENV LANG=en_US.UTF-8
# Wed, 09 Sep 2026 02:35:29 GMT
ARG TARGETARCH=amd64
# Wed, 09 Sep 2026 02:35:29 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     DEBIAN_FRONTEND=noninteractive     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Wed, 09 Sep 2026 02:37:09 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jammy-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:37:40 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:37:40 GMT
ENV ODOO_VERSION=17.0
# Wed, 09 Sep 2026 02:37:40 GMT
ARG ODOO_RELEASE=20260908
# Wed, 09 Sep 2026 02:37:40 GMT
ARG ODOO_SHA=57a8df50c37363cce2d3f2e626d1b4e67b53fc11
# Wed, 09 Sep 2026 02:38:38 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260908 ODOO_SHA=57a8df50c37363cce2d3f2e626d1b4e67b53fc11
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Wed, 09 Sep 2026 02:38:38 GMT
COPY ./entrypoint.sh / # buildkit
# Wed, 09 Sep 2026 02:38:38 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Wed, 09 Sep 2026 02:38:38 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260908 ODOO_SHA=57a8df50c37363cce2d3f2e626d1b4e67b53fc11
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Wed, 09 Sep 2026 02:38:38 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 09 Sep 2026 02:38:38 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Wed, 09 Sep 2026 02:38:38 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Wed, 09 Sep 2026 02:38:38 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Wed, 09 Sep 2026 02:38:38 GMT
USER odoo
# Wed, 09 Sep 2026 02:38:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 09 Sep 2026 02:38:38 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:431705808e9fdbdbcb0f2aa8030cabf8137d5a4b9ce63c96c385eb5bb1d9c17c`  
		Last Modified: Wed, 09 Sep 2026 02:39:57 GMT  
		Size: 232.9 MB (232872100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17d6b960afb996fce6a4492880374756d0ba795ad82f315b8107053a0977e9ad`  
		Last Modified: Wed, 09 Sep 2026 02:39:44 GMT  
		Size: 2.6 MB (2566607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:276ebddbac0eec91e3c353acc26b5e996f07358f0fbb5ae8f6497d50bf032e02`  
		Last Modified: Wed, 09 Sep 2026 02:39:44 GMT  
		Size: 683.7 KB (683695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cec0a88383b66a7494d6a5c0f584ad52ce12c47f6fad2f1b85564444a670d9cb`  
		Last Modified: Wed, 09 Sep 2026 02:40:00 GMT  
		Size: 347.2 MB (347208825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:791bf148b1f6a45503084de1e5a4091e760d260d26aadcff5fdfcdf054dab971`  
		Last Modified: Wed, 09 Sep 2026 02:39:45 GMT  
		Size: 766.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d0b3f922e4554282d5b9d1e052f7cc9bfdbdc1d7bd1f29a19fa36245522127f`  
		Last Modified: Wed, 09 Sep 2026 02:39:46 GMT  
		Size: 555.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba0a1e53b09be060a8b342119bcb44c86cbff543b8f01b4f66b3af63a26c2cad`  
		Last Modified: Wed, 09 Sep 2026 02:39:47 GMT  
		Size: 595.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d9571c15edc03f6099954fdcd7cf6cc3dd77532b7805392bfd0b8772c2050dd`  
		Last Modified: Wed, 09 Sep 2026 02:39:47 GMT  
		Size: 880.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:17` - unknown; unknown

```console
$ docker pull odoo@sha256:46bd77657e6eced6692bc9bca09bcfbbc0ddd4bf6fb0a730ef8f5b571a3a5f82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.8 MB (40845761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74c85989cb6bd7e6b551e9dd48833076f8475871eb0dc0d40cde1995d8a4f90f`

```dockerfile
```

-	Layers:
	-	`sha256:52df2a8c7fffc7211abdf5903834c3b4da8489734144e210d8f444982d32b750`  
		Last Modified: Wed, 09 Sep 2026 02:39:47 GMT  
		Size: 40.8 MB (40818444 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dc074dc002b8238f67781f5cf1804a65f1a3896335055839a3fd7cdd782db4c3`  
		Last Modified: Wed, 09 Sep 2026 02:39:44 GMT  
		Size: 27.3 KB (27317 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:17` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:e3904e37fab99c11fded5c59fd05ee0eb82f0f6003a27cd036088b6ae5a8d253
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **608.1 MB (608056189 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0795509299dd65ab4911f5ecf4707d5e9fd397c8a887bff346ed51b706181fa9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:40 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:40 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:40 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:43 GMT
ADD file:b920ec328a9d4f41fbaa4e839ab5a48ad3f138f98a847b3ee8c48142817ee32d in / 
# Thu, 03 Sep 2026 12:14:43 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 01:40:37 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Wed, 09 Sep 2026 01:40:37 GMT
SHELL [/bin/bash -xo pipefail -c]
# Wed, 09 Sep 2026 01:40:37 GMT
ENV LANG=en_US.UTF-8
# Wed, 09 Sep 2026 01:40:37 GMT
ARG TARGETARCH=arm64
# Wed, 09 Sep 2026 01:40:37 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     DEBIAN_FRONTEND=noninteractive     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Wed, 09 Sep 2026 01:40:48 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jammy-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 01:41:16 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 01:41:16 GMT
ENV ODOO_VERSION=17.0
# Wed, 09 Sep 2026 01:41:16 GMT
ARG ODOO_RELEASE=20260908
# Wed, 09 Sep 2026 01:41:16 GMT
ARG ODOO_SHA=57a8df50c37363cce2d3f2e626d1b4e67b53fc11
# Wed, 09 Sep 2026 01:42:20 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260908 ODOO_SHA=57a8df50c37363cce2d3f2e626d1b4e67b53fc11
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Wed, 09 Sep 2026 01:42:20 GMT
COPY ./entrypoint.sh / # buildkit
# Wed, 09 Sep 2026 01:42:20 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Wed, 09 Sep 2026 01:42:20 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260908 ODOO_SHA=57a8df50c37363cce2d3f2e626d1b4e67b53fc11
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Wed, 09 Sep 2026 01:42:20 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 09 Sep 2026 01:42:20 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Wed, 09 Sep 2026 01:42:20 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Wed, 09 Sep 2026 01:42:20 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Wed, 09 Sep 2026 01:42:20 GMT
USER odoo
# Wed, 09 Sep 2026 01:42:20 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 09 Sep 2026 01:42:20 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ac60298e9298c98b43d2609a43c7c3af4807045caae4c4daca08dbe2ec31e06`  
		Last Modified: Wed, 09 Sep 2026 01:43:46 GMT  
		Size: 230.3 MB (230282676 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e962d73990a76eb0c1b52868ef4bac096d0fea905f01b3b2349bb1051845dedd`  
		Last Modified: Wed, 09 Sep 2026 01:43:36 GMT  
		Size: 2.6 MB (2562745 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:973815efefa43eaee86c6dcd64d6f91a962f0f6ba7a51d769bfc9d24b3692294`  
		Last Modified: Wed, 09 Sep 2026 01:43:35 GMT  
		Size: 683.6 KB (683643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa94e333f8e2c6b10eb11c2bbd8ad8dc7f175217c5d10487c2be41433ceaa8dd`  
		Last Modified: Wed, 09 Sep 2026 01:43:49 GMT  
		Size: 346.8 MB (346841583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:938bebdfc5aa4fd2b90824cb1d575232b5931a9d363851227fbd7ca2ec2da1d0`  
		Last Modified: Wed, 09 Sep 2026 01:43:37 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae793a0a5f54d5b9cf96b908be192a094d79c2149a2587bf98278ba32bd2f288`  
		Last Modified: Wed, 09 Sep 2026 01:43:37 GMT  
		Size: 555.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8d2194d6dfed12da100a7f82e59aff67bf8c999e05fca7e7ab118c26dc56e1c`  
		Last Modified: Wed, 09 Sep 2026 01:43:38 GMT  
		Size: 595.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cf2023228499411c56a38ba4a004902d74aea16e34b079f718b6cda2abf992f`  
		Last Modified: Wed, 09 Sep 2026 01:43:38 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:17` - unknown; unknown

```console
$ docker pull odoo@sha256:c296149158b12e082152555c157ce7b715d2f7881b203d4b973de862be868576
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.9 MB (40852417 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5acb635b1e8fe00f77730499c282825e754815b6931f79e0881e5f7fc062c1c5`

```dockerfile
```

-	Layers:
	-	`sha256:35a5edcea5f540b2e6cb5275d93060203b9b16a117d81e48c6c40e39660dcd1c`  
		Last Modified: Wed, 09 Sep 2026 01:43:38 GMT  
		Size: 40.8 MB (40824948 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:737ed424607da65ea8246aeb9c24dbb8b9286ff3c42e66b9385ae574742f2c41`  
		Last Modified: Wed, 09 Sep 2026 01:43:35 GMT  
		Size: 27.5 KB (27469 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:17.0`

```console
$ docker pull odoo@sha256:8779f8157ddcc37b84014c94646073f46fd4ad776b7a5d95fc3b0dc73a24a8fa
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `odoo:17.0` - linux; amd64

```console
$ docker pull odoo@sha256:94afce4bda54095b67f1040e3e12847776d22ad8591d977f480dabb7dc9a4a04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **613.1 MB (613084274 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c936d910d54cb8d2af09db31d9b387b2ec83569d58a7b8ef65254d521a3fc69`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:51 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:51 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:51 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:53 GMT
ADD file:81c01921c5f642ac2fcbfae682e489e8e64b347467d9fa1587707e310e64d790 in / 
# Thu, 03 Sep 2026 12:14:54 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:35:29 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Wed, 09 Sep 2026 02:35:29 GMT
SHELL [/bin/bash -xo pipefail -c]
# Wed, 09 Sep 2026 02:35:29 GMT
ENV LANG=en_US.UTF-8
# Wed, 09 Sep 2026 02:35:29 GMT
ARG TARGETARCH=amd64
# Wed, 09 Sep 2026 02:35:29 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     DEBIAN_FRONTEND=noninteractive     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Wed, 09 Sep 2026 02:37:09 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jammy-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:37:40 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:37:40 GMT
ENV ODOO_VERSION=17.0
# Wed, 09 Sep 2026 02:37:40 GMT
ARG ODOO_RELEASE=20260908
# Wed, 09 Sep 2026 02:37:40 GMT
ARG ODOO_SHA=57a8df50c37363cce2d3f2e626d1b4e67b53fc11
# Wed, 09 Sep 2026 02:38:38 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260908 ODOO_SHA=57a8df50c37363cce2d3f2e626d1b4e67b53fc11
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Wed, 09 Sep 2026 02:38:38 GMT
COPY ./entrypoint.sh / # buildkit
# Wed, 09 Sep 2026 02:38:38 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Wed, 09 Sep 2026 02:38:38 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260908 ODOO_SHA=57a8df50c37363cce2d3f2e626d1b4e67b53fc11
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Wed, 09 Sep 2026 02:38:38 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 09 Sep 2026 02:38:38 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Wed, 09 Sep 2026 02:38:38 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Wed, 09 Sep 2026 02:38:38 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Wed, 09 Sep 2026 02:38:38 GMT
USER odoo
# Wed, 09 Sep 2026 02:38:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 09 Sep 2026 02:38:38 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:431705808e9fdbdbcb0f2aa8030cabf8137d5a4b9ce63c96c385eb5bb1d9c17c`  
		Last Modified: Wed, 09 Sep 2026 02:39:57 GMT  
		Size: 232.9 MB (232872100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17d6b960afb996fce6a4492880374756d0ba795ad82f315b8107053a0977e9ad`  
		Last Modified: Wed, 09 Sep 2026 02:39:44 GMT  
		Size: 2.6 MB (2566607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:276ebddbac0eec91e3c353acc26b5e996f07358f0fbb5ae8f6497d50bf032e02`  
		Last Modified: Wed, 09 Sep 2026 02:39:44 GMT  
		Size: 683.7 KB (683695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cec0a88383b66a7494d6a5c0f584ad52ce12c47f6fad2f1b85564444a670d9cb`  
		Last Modified: Wed, 09 Sep 2026 02:40:00 GMT  
		Size: 347.2 MB (347208825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:791bf148b1f6a45503084de1e5a4091e760d260d26aadcff5fdfcdf054dab971`  
		Last Modified: Wed, 09 Sep 2026 02:39:45 GMT  
		Size: 766.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d0b3f922e4554282d5b9d1e052f7cc9bfdbdc1d7bd1f29a19fa36245522127f`  
		Last Modified: Wed, 09 Sep 2026 02:39:46 GMT  
		Size: 555.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba0a1e53b09be060a8b342119bcb44c86cbff543b8f01b4f66b3af63a26c2cad`  
		Last Modified: Wed, 09 Sep 2026 02:39:47 GMT  
		Size: 595.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d9571c15edc03f6099954fdcd7cf6cc3dd77532b7805392bfd0b8772c2050dd`  
		Last Modified: Wed, 09 Sep 2026 02:39:47 GMT  
		Size: 880.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:17.0` - unknown; unknown

```console
$ docker pull odoo@sha256:46bd77657e6eced6692bc9bca09bcfbbc0ddd4bf6fb0a730ef8f5b571a3a5f82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.8 MB (40845761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74c85989cb6bd7e6b551e9dd48833076f8475871eb0dc0d40cde1995d8a4f90f`

```dockerfile
```

-	Layers:
	-	`sha256:52df2a8c7fffc7211abdf5903834c3b4da8489734144e210d8f444982d32b750`  
		Last Modified: Wed, 09 Sep 2026 02:39:47 GMT  
		Size: 40.8 MB (40818444 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dc074dc002b8238f67781f5cf1804a65f1a3896335055839a3fd7cdd782db4c3`  
		Last Modified: Wed, 09 Sep 2026 02:39:44 GMT  
		Size: 27.3 KB (27317 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:17.0` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:e3904e37fab99c11fded5c59fd05ee0eb82f0f6003a27cd036088b6ae5a8d253
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **608.1 MB (608056189 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0795509299dd65ab4911f5ecf4707d5e9fd397c8a887bff346ed51b706181fa9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:40 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:40 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:40 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:43 GMT
ADD file:b920ec328a9d4f41fbaa4e839ab5a48ad3f138f98a847b3ee8c48142817ee32d in / 
# Thu, 03 Sep 2026 12:14:43 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 01:40:37 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Wed, 09 Sep 2026 01:40:37 GMT
SHELL [/bin/bash -xo pipefail -c]
# Wed, 09 Sep 2026 01:40:37 GMT
ENV LANG=en_US.UTF-8
# Wed, 09 Sep 2026 01:40:37 GMT
ARG TARGETARCH=arm64
# Wed, 09 Sep 2026 01:40:37 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     DEBIAN_FRONTEND=noninteractive     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Wed, 09 Sep 2026 01:40:48 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jammy-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 01:41:16 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 01:41:16 GMT
ENV ODOO_VERSION=17.0
# Wed, 09 Sep 2026 01:41:16 GMT
ARG ODOO_RELEASE=20260908
# Wed, 09 Sep 2026 01:41:16 GMT
ARG ODOO_SHA=57a8df50c37363cce2d3f2e626d1b4e67b53fc11
# Wed, 09 Sep 2026 01:42:20 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260908 ODOO_SHA=57a8df50c37363cce2d3f2e626d1b4e67b53fc11
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Wed, 09 Sep 2026 01:42:20 GMT
COPY ./entrypoint.sh / # buildkit
# Wed, 09 Sep 2026 01:42:20 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Wed, 09 Sep 2026 01:42:20 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260908 ODOO_SHA=57a8df50c37363cce2d3f2e626d1b4e67b53fc11
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Wed, 09 Sep 2026 01:42:20 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 09 Sep 2026 01:42:20 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Wed, 09 Sep 2026 01:42:20 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Wed, 09 Sep 2026 01:42:20 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Wed, 09 Sep 2026 01:42:20 GMT
USER odoo
# Wed, 09 Sep 2026 01:42:20 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 09 Sep 2026 01:42:20 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ac60298e9298c98b43d2609a43c7c3af4807045caae4c4daca08dbe2ec31e06`  
		Last Modified: Wed, 09 Sep 2026 01:43:46 GMT  
		Size: 230.3 MB (230282676 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e962d73990a76eb0c1b52868ef4bac096d0fea905f01b3b2349bb1051845dedd`  
		Last Modified: Wed, 09 Sep 2026 01:43:36 GMT  
		Size: 2.6 MB (2562745 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:973815efefa43eaee86c6dcd64d6f91a962f0f6ba7a51d769bfc9d24b3692294`  
		Last Modified: Wed, 09 Sep 2026 01:43:35 GMT  
		Size: 683.6 KB (683643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa94e333f8e2c6b10eb11c2bbd8ad8dc7f175217c5d10487c2be41433ceaa8dd`  
		Last Modified: Wed, 09 Sep 2026 01:43:49 GMT  
		Size: 346.8 MB (346841583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:938bebdfc5aa4fd2b90824cb1d575232b5931a9d363851227fbd7ca2ec2da1d0`  
		Last Modified: Wed, 09 Sep 2026 01:43:37 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae793a0a5f54d5b9cf96b908be192a094d79c2149a2587bf98278ba32bd2f288`  
		Last Modified: Wed, 09 Sep 2026 01:43:37 GMT  
		Size: 555.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8d2194d6dfed12da100a7f82e59aff67bf8c999e05fca7e7ab118c26dc56e1c`  
		Last Modified: Wed, 09 Sep 2026 01:43:38 GMT  
		Size: 595.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cf2023228499411c56a38ba4a004902d74aea16e34b079f718b6cda2abf992f`  
		Last Modified: Wed, 09 Sep 2026 01:43:38 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:17.0` - unknown; unknown

```console
$ docker pull odoo@sha256:c296149158b12e082152555c157ce7b715d2f7881b203d4b973de862be868576
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.9 MB (40852417 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5acb635b1e8fe00f77730499c282825e754815b6931f79e0881e5f7fc062c1c5`

```dockerfile
```

-	Layers:
	-	`sha256:35a5edcea5f540b2e6cb5275d93060203b9b16a117d81e48c6c40e39660dcd1c`  
		Last Modified: Wed, 09 Sep 2026 01:43:38 GMT  
		Size: 40.8 MB (40824948 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:737ed424607da65ea8246aeb9c24dbb8b9286ff3c42e66b9385ae574742f2c41`  
		Last Modified: Wed, 09 Sep 2026 01:43:35 GMT  
		Size: 27.5 KB (27469 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:17.0-20260908`

```console
$ docker pull odoo@sha256:8779f8157ddcc37b84014c94646073f46fd4ad776b7a5d95fc3b0dc73a24a8fa
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `odoo:17.0-20260908` - linux; amd64

```console
$ docker pull odoo@sha256:94afce4bda54095b67f1040e3e12847776d22ad8591d977f480dabb7dc9a4a04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **613.1 MB (613084274 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c936d910d54cb8d2af09db31d9b387b2ec83569d58a7b8ef65254d521a3fc69`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:51 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:51 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:51 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:53 GMT
ADD file:81c01921c5f642ac2fcbfae682e489e8e64b347467d9fa1587707e310e64d790 in / 
# Thu, 03 Sep 2026 12:14:54 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:35:29 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Wed, 09 Sep 2026 02:35:29 GMT
SHELL [/bin/bash -xo pipefail -c]
# Wed, 09 Sep 2026 02:35:29 GMT
ENV LANG=en_US.UTF-8
# Wed, 09 Sep 2026 02:35:29 GMT
ARG TARGETARCH=amd64
# Wed, 09 Sep 2026 02:35:29 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     DEBIAN_FRONTEND=noninteractive     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Wed, 09 Sep 2026 02:37:09 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jammy-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:37:40 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:37:40 GMT
ENV ODOO_VERSION=17.0
# Wed, 09 Sep 2026 02:37:40 GMT
ARG ODOO_RELEASE=20260908
# Wed, 09 Sep 2026 02:37:40 GMT
ARG ODOO_SHA=57a8df50c37363cce2d3f2e626d1b4e67b53fc11
# Wed, 09 Sep 2026 02:38:38 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260908 ODOO_SHA=57a8df50c37363cce2d3f2e626d1b4e67b53fc11
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Wed, 09 Sep 2026 02:38:38 GMT
COPY ./entrypoint.sh / # buildkit
# Wed, 09 Sep 2026 02:38:38 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Wed, 09 Sep 2026 02:38:38 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260908 ODOO_SHA=57a8df50c37363cce2d3f2e626d1b4e67b53fc11
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Wed, 09 Sep 2026 02:38:38 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 09 Sep 2026 02:38:38 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Wed, 09 Sep 2026 02:38:38 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Wed, 09 Sep 2026 02:38:38 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Wed, 09 Sep 2026 02:38:38 GMT
USER odoo
# Wed, 09 Sep 2026 02:38:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 09 Sep 2026 02:38:38 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:431705808e9fdbdbcb0f2aa8030cabf8137d5a4b9ce63c96c385eb5bb1d9c17c`  
		Last Modified: Wed, 09 Sep 2026 02:39:57 GMT  
		Size: 232.9 MB (232872100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17d6b960afb996fce6a4492880374756d0ba795ad82f315b8107053a0977e9ad`  
		Last Modified: Wed, 09 Sep 2026 02:39:44 GMT  
		Size: 2.6 MB (2566607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:276ebddbac0eec91e3c353acc26b5e996f07358f0fbb5ae8f6497d50bf032e02`  
		Last Modified: Wed, 09 Sep 2026 02:39:44 GMT  
		Size: 683.7 KB (683695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cec0a88383b66a7494d6a5c0f584ad52ce12c47f6fad2f1b85564444a670d9cb`  
		Last Modified: Wed, 09 Sep 2026 02:40:00 GMT  
		Size: 347.2 MB (347208825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:791bf148b1f6a45503084de1e5a4091e760d260d26aadcff5fdfcdf054dab971`  
		Last Modified: Wed, 09 Sep 2026 02:39:45 GMT  
		Size: 766.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d0b3f922e4554282d5b9d1e052f7cc9bfdbdc1d7bd1f29a19fa36245522127f`  
		Last Modified: Wed, 09 Sep 2026 02:39:46 GMT  
		Size: 555.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba0a1e53b09be060a8b342119bcb44c86cbff543b8f01b4f66b3af63a26c2cad`  
		Last Modified: Wed, 09 Sep 2026 02:39:47 GMT  
		Size: 595.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d9571c15edc03f6099954fdcd7cf6cc3dd77532b7805392bfd0b8772c2050dd`  
		Last Modified: Wed, 09 Sep 2026 02:39:47 GMT  
		Size: 880.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:17.0-20260908` - unknown; unknown

```console
$ docker pull odoo@sha256:46bd77657e6eced6692bc9bca09bcfbbc0ddd4bf6fb0a730ef8f5b571a3a5f82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.8 MB (40845761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74c85989cb6bd7e6b551e9dd48833076f8475871eb0dc0d40cde1995d8a4f90f`

```dockerfile
```

-	Layers:
	-	`sha256:52df2a8c7fffc7211abdf5903834c3b4da8489734144e210d8f444982d32b750`  
		Last Modified: Wed, 09 Sep 2026 02:39:47 GMT  
		Size: 40.8 MB (40818444 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dc074dc002b8238f67781f5cf1804a65f1a3896335055839a3fd7cdd782db4c3`  
		Last Modified: Wed, 09 Sep 2026 02:39:44 GMT  
		Size: 27.3 KB (27317 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:17.0-20260908` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:e3904e37fab99c11fded5c59fd05ee0eb82f0f6003a27cd036088b6ae5a8d253
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **608.1 MB (608056189 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0795509299dd65ab4911f5ecf4707d5e9fd397c8a887bff346ed51b706181fa9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:40 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:40 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:40 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:43 GMT
ADD file:b920ec328a9d4f41fbaa4e839ab5a48ad3f138f98a847b3ee8c48142817ee32d in / 
# Thu, 03 Sep 2026 12:14:43 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 01:40:37 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Wed, 09 Sep 2026 01:40:37 GMT
SHELL [/bin/bash -xo pipefail -c]
# Wed, 09 Sep 2026 01:40:37 GMT
ENV LANG=en_US.UTF-8
# Wed, 09 Sep 2026 01:40:37 GMT
ARG TARGETARCH=arm64
# Wed, 09 Sep 2026 01:40:37 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     DEBIAN_FRONTEND=noninteractive     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Wed, 09 Sep 2026 01:40:48 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jammy-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 01:41:16 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 01:41:16 GMT
ENV ODOO_VERSION=17.0
# Wed, 09 Sep 2026 01:41:16 GMT
ARG ODOO_RELEASE=20260908
# Wed, 09 Sep 2026 01:41:16 GMT
ARG ODOO_SHA=57a8df50c37363cce2d3f2e626d1b4e67b53fc11
# Wed, 09 Sep 2026 01:42:20 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260908 ODOO_SHA=57a8df50c37363cce2d3f2e626d1b4e67b53fc11
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Wed, 09 Sep 2026 01:42:20 GMT
COPY ./entrypoint.sh / # buildkit
# Wed, 09 Sep 2026 01:42:20 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Wed, 09 Sep 2026 01:42:20 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260908 ODOO_SHA=57a8df50c37363cce2d3f2e626d1b4e67b53fc11
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Wed, 09 Sep 2026 01:42:20 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 09 Sep 2026 01:42:20 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Wed, 09 Sep 2026 01:42:20 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Wed, 09 Sep 2026 01:42:20 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Wed, 09 Sep 2026 01:42:20 GMT
USER odoo
# Wed, 09 Sep 2026 01:42:20 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 09 Sep 2026 01:42:20 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ac60298e9298c98b43d2609a43c7c3af4807045caae4c4daca08dbe2ec31e06`  
		Last Modified: Wed, 09 Sep 2026 01:43:46 GMT  
		Size: 230.3 MB (230282676 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e962d73990a76eb0c1b52868ef4bac096d0fea905f01b3b2349bb1051845dedd`  
		Last Modified: Wed, 09 Sep 2026 01:43:36 GMT  
		Size: 2.6 MB (2562745 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:973815efefa43eaee86c6dcd64d6f91a962f0f6ba7a51d769bfc9d24b3692294`  
		Last Modified: Wed, 09 Sep 2026 01:43:35 GMT  
		Size: 683.6 KB (683643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa94e333f8e2c6b10eb11c2bbd8ad8dc7f175217c5d10487c2be41433ceaa8dd`  
		Last Modified: Wed, 09 Sep 2026 01:43:49 GMT  
		Size: 346.8 MB (346841583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:938bebdfc5aa4fd2b90824cb1d575232b5931a9d363851227fbd7ca2ec2da1d0`  
		Last Modified: Wed, 09 Sep 2026 01:43:37 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae793a0a5f54d5b9cf96b908be192a094d79c2149a2587bf98278ba32bd2f288`  
		Last Modified: Wed, 09 Sep 2026 01:43:37 GMT  
		Size: 555.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8d2194d6dfed12da100a7f82e59aff67bf8c999e05fca7e7ab118c26dc56e1c`  
		Last Modified: Wed, 09 Sep 2026 01:43:38 GMT  
		Size: 595.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cf2023228499411c56a38ba4a004902d74aea16e34b079f718b6cda2abf992f`  
		Last Modified: Wed, 09 Sep 2026 01:43:38 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:17.0-20260908` - unknown; unknown

```console
$ docker pull odoo@sha256:c296149158b12e082152555c157ce7b715d2f7881b203d4b973de862be868576
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.9 MB (40852417 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5acb635b1e8fe00f77730499c282825e754815b6931f79e0881e5f7fc062c1c5`

```dockerfile
```

-	Layers:
	-	`sha256:35a5edcea5f540b2e6cb5275d93060203b9b16a117d81e48c6c40e39660dcd1c`  
		Last Modified: Wed, 09 Sep 2026 01:43:38 GMT  
		Size: 40.8 MB (40824948 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:737ed424607da65ea8246aeb9c24dbb8b9286ff3c42e66b9385ae574742f2c41`  
		Last Modified: Wed, 09 Sep 2026 01:43:35 GMT  
		Size: 27.5 KB (27469 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:18`

```console
$ docker pull odoo@sha256:67d7d017cef9af0085a383ec46ec82bd9d7422db475803065873a36dde7ceea9
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
$ docker pull odoo@sha256:3188ca0878006ca5192a0f89f8e34020a28167d098b8d3995d710e712d480065
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **674.0 MB (673992433 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:994ceaeb9b54b590233088b24e3c911b4a3656aab52a894d0a4e2000a1d1394b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Fri, 11 Sep 2026 11:44:03 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:44:03 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:44:03 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:44:06 GMT
ADD file:43d479b270bbaf47965cfc86b37f4c517bda83ddefda6f708f98c3b2b7d15396 in / 
# Fri, 11 Sep 2026 11:44:06 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:27:35 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Wed, 16 Sep 2026 03:27:35 GMT
SHELL [/bin/bash -xo pipefail -c]
# Wed, 16 Sep 2026 03:27:35 GMT
ENV LANG=en_US.UTF-8
# Wed, 16 Sep 2026 03:27:35 GMT
ARG TARGETARCH=amd64
# Wed, 16 Sep 2026 03:27:35 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Wed, 16 Sep 2026 03:27:43 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:57 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:57 GMT
ENV ODOO_VERSION=18.0
# Wed, 16 Sep 2026 03:28:57 GMT
ARG ODOO_RELEASE=20260908
# Wed, 16 Sep 2026 03:28:57 GMT
ARG ODOO_SHA=4f5862fd0a33630abbfc855ce2b5f21caea6a4fb
# Wed, 16 Sep 2026 03:29:48 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260908 ODOO_SHA=4f5862fd0a33630abbfc855ce2b5f21caea6a4fb
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Wed, 16 Sep 2026 03:29:48 GMT
COPY ./entrypoint.sh / # buildkit
# Wed, 16 Sep 2026 03:29:48 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Wed, 16 Sep 2026 03:29:48 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260908 ODOO_SHA=4f5862fd0a33630abbfc855ce2b5f21caea6a4fb
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Wed, 16 Sep 2026 03:29:48 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 16 Sep 2026 03:29:48 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Wed, 16 Sep 2026 03:29:48 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Wed, 16 Sep 2026 03:29:49 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Wed, 16 Sep 2026 03:29:49 GMT
USER odoo
# Wed, 16 Sep 2026 03:29:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 16 Sep 2026 03:29:49 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:edd1ed89f0d443580bd42e5a10cd8736aba5a3438b2a0645c2ebb50119bb0eba`  
		Last Modified: Fri, 11 Sep 2026 13:38:39 GMT  
		Size: 29.8 MB (29764116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a86d1af3ff3c3bdc322a0174252f1db1478431f471da17be3703c8280cd5152`  
		Last Modified: Wed, 16 Sep 2026 03:31:18 GMT  
		Size: 238.7 MB (238694078 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f65494f0ba8f83d4892568614647486352d8f49eb7d5b73c5c4524243120642`  
		Last Modified: Wed, 16 Sep 2026 03:31:08 GMT  
		Size: 14.2 MB (14224531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5513813c0be0ae12dc97455447f3d5e0cff122e6061c8cdfee93928f35275958`  
		Last Modified: Wed, 16 Sep 2026 03:31:07 GMT  
		Size: 868.8 KB (868774 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d440fcc9f26e43416e2050b5c438592b8239d038bdb4adec15de369ef84971cd`  
		Last Modified: Wed, 16 Sep 2026 03:31:21 GMT  
		Size: 390.4 MB (390438141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1a2bf7672142e19f6b5008e5160b05e0bd7632b2f4d6255241f7e156ce0fed2`  
		Last Modified: Wed, 16 Sep 2026 03:31:09 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e22a99de44a80a6ff71a8c9bf4b29ebab11502d444a268779a188d20bebaba7f`  
		Last Modified: Wed, 16 Sep 2026 03:31:10 GMT  
		Size: 554.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a20bb9ff402429244358249df90350a7943bf1771cda772f3bd416d1bddd4362`  
		Last Modified: Wed, 16 Sep 2026 03:31:10 GMT  
		Size: 596.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:853bd03a776ef82a0d68474e34fbf4ca0e58d3b3fa74e4290a185df6d98f8df4`  
		Last Modified: Wed, 16 Sep 2026 03:31:11 GMT  
		Size: 876.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18` - unknown; unknown

```console
$ docker pull odoo@sha256:9039d130726daab263bd8a94d3da4eaac619eaf1552b87f209d8a532405b3027
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.9 MB (43926502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3e329ce5df38c0c4eb55e3d788474c9e7d3ecf8b6deb3aaf280b0b0562e6c08`

```dockerfile
```

-	Layers:
	-	`sha256:5daf3e2441fc9951cbbf23841ddd6776099bb65f81d76c59775b1496884bb21d`  
		Last Modified: Wed, 16 Sep 2026 03:31:10 GMT  
		Size: 43.9 MB (43899305 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:924640c484d3b1bf8033a3cf5142453ed4e1bd5f29140cdeb5f43ebdc349c98c`  
		Last Modified: Wed, 16 Sep 2026 03:31:07 GMT  
		Size: 27.2 KB (27197 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:18` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:03e2cddadf9d88767984635eb6dc2e5ef93aae383300db33299d252fffe39342
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **670.5 MB (670451624 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa9e313cdf92f754fdcf33305d3146b5c76277a75f607eba14eda6d462c5c0ab`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Fri, 11 Sep 2026 11:53:33 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:53:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:53:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:53:37 GMT
ADD file:ff1ce8d2ee022926eb353ff9248358531fbe1661ef12d8784e68fbc52738ed34 in / 
# Fri, 11 Sep 2026 11:53:37 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:27:05 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Wed, 16 Sep 2026 03:27:05 GMT
SHELL [/bin/bash -xo pipefail -c]
# Wed, 16 Sep 2026 03:27:05 GMT
ENV LANG=en_US.UTF-8
# Wed, 16 Sep 2026 03:27:05 GMT
ARG TARGETARCH=arm64
# Wed, 16 Sep 2026 03:27:05 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Wed, 16 Sep 2026 03:27:17 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:29 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:29 GMT
ENV ODOO_VERSION=18.0
# Wed, 16 Sep 2026 03:28:29 GMT
ARG ODOO_RELEASE=20260908
# Wed, 16 Sep 2026 03:28:29 GMT
ARG ODOO_SHA=4f5862fd0a33630abbfc855ce2b5f21caea6a4fb
# Wed, 16 Sep 2026 03:29:26 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260908 ODOO_SHA=4f5862fd0a33630abbfc855ce2b5f21caea6a4fb
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Wed, 16 Sep 2026 03:29:26 GMT
COPY ./entrypoint.sh / # buildkit
# Wed, 16 Sep 2026 03:29:26 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Wed, 16 Sep 2026 03:29:27 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260908 ODOO_SHA=4f5862fd0a33630abbfc855ce2b5f21caea6a4fb
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Wed, 16 Sep 2026 03:29:27 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 16 Sep 2026 03:29:27 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Wed, 16 Sep 2026 03:29:27 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Wed, 16 Sep 2026 03:29:27 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Wed, 16 Sep 2026 03:29:27 GMT
USER odoo
# Wed, 16 Sep 2026 03:29:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 16 Sep 2026 03:29:27 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:8a38824eedc553ba80cf1eb7df278a003340f7409fd4b9002bce07db8840a9a2`  
		Last Modified: Fri, 11 Sep 2026 13:38:46 GMT  
		Size: 28.9 MB (28941580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:944c8c408c74c9a897c7a96da116b7c3235353a13f721d4c71e28e3cecf647c1`  
		Last Modified: Wed, 16 Sep 2026 03:31:03 GMT  
		Size: 236.2 MB (236155677 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ba260bb5078db6d571c7a6dfd7324c91919cb53e3480cc9489ca9e51500bdbe`  
		Last Modified: Wed, 16 Sep 2026 03:30:55 GMT  
		Size: 14.2 MB (14197940 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ea2fbb067341db4128b2d8666f72ead022ccd767f2be8ee752638bbce62d305`  
		Last Modified: Wed, 16 Sep 2026 03:30:54 GMT  
		Size: 868.8 KB (868782 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a929e4a9f225bddeca1065440d970298c324faba015f9d26bc48ced73eb337b8`  
		Last Modified: Wed, 16 Sep 2026 03:31:07 GMT  
		Size: 390.3 MB (390284849 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:673914db7d47c2b3acaab287856aaa1748f1124969a7c2fb920af4149bf8c483`  
		Last Modified: Wed, 16 Sep 2026 03:30:55 GMT  
		Size: 766.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e20267904812219f61e092babf7a60e83ac1bef866af13747533efa68537e5a0`  
		Last Modified: Wed, 16 Sep 2026 03:30:56 GMT  
		Size: 555.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0897a9ad26325925ad56e1daffefad64d12a295b3446a6b123893b03f933440a`  
		Last Modified: Wed, 16 Sep 2026 03:30:57 GMT  
		Size: 598.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a0fc1a2a67275773c2978af0042b6f7b7322c266e8351f80594944c015ce27c`  
		Last Modified: Wed, 16 Sep 2026 03:30:58 GMT  
		Size: 877.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18` - unknown; unknown

```console
$ docker pull odoo@sha256:31ee9b1f9163610a468a1d61226d7456b78c7ddb5a6ea0afd615ffbaa5597a72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.9 MB (43933926 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51b29c151349b00e2e2538d205e0b234b3396f410d51600db9a33d5fe9ad3064`

```dockerfile
```

-	Layers:
	-	`sha256:d26c4065d365554f90f302ef6cae68ee4d4453b3a2a5fe93b14569296badf956`  
		Last Modified: Wed, 16 Sep 2026 03:30:57 GMT  
		Size: 43.9 MB (43906577 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0d1e13a4071de0d1f31103625eee2edd5bf13b6443033a01c84a7291e9b6aeb3`  
		Last Modified: Wed, 16 Sep 2026 03:30:54 GMT  
		Size: 27.3 KB (27349 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:18` - linux; ppc64le

```console
$ docker pull odoo@sha256:7667d8c5893eea38533cabad0dabf52cb90689d3b8536491224fac1b79a3a76c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **690.4 MB (690374937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3cb020db84068d4a354dc01406203f0a649f42b4917455edbe73fe376e3d114`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Mon, 07 Sep 2026 07:38:39 GMT
ARG RELEASE
# Mon, 07 Sep 2026 07:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 07:38:39 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 07:38:43 GMT
ADD file:b613d8cbbfcdd39316d0cc2ab20f713e42c2ffc939072314f82208cec1f794df in / 
# Mon, 07 Sep 2026 07:38:44 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:55:35 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Wed, 09 Sep 2026 02:55:35 GMT
SHELL [/bin/bash -xo pipefail -c]
# Wed, 09 Sep 2026 02:55:35 GMT
ENV LANG=en_US.UTF-8
# Wed, 09 Sep 2026 02:55:35 GMT
ARG TARGETARCH=ppc64le
# Wed, 09 Sep 2026 02:55:35 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Wed, 09 Sep 2026 02:55:58 GMT
# ARGS: TARGETARCH=ppc64le
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 03:04:21 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 03:04:21 GMT
ENV ODOO_VERSION=18.0
# Wed, 09 Sep 2026 03:04:21 GMT
ARG ODOO_RELEASE=20260908
# Wed, 09 Sep 2026 03:04:21 GMT
ARG ODOO_SHA=4f5862fd0a33630abbfc855ce2b5f21caea6a4fb
# Wed, 09 Sep 2026 03:09:50 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260908 ODOO_SHA=4f5862fd0a33630abbfc855ce2b5f21caea6a4fb
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Wed, 09 Sep 2026 03:10:01 GMT
COPY ./entrypoint.sh / # buildkit
# Wed, 09 Sep 2026 03:10:02 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Wed, 09 Sep 2026 03:10:02 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260908 ODOO_SHA=4f5862fd0a33630abbfc855ce2b5f21caea6a4fb
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Wed, 09 Sep 2026 03:10:02 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 09 Sep 2026 03:10:02 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Wed, 09 Sep 2026 03:10:02 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Wed, 09 Sep 2026 03:10:03 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Wed, 09 Sep 2026 03:10:03 GMT
USER odoo
# Wed, 09 Sep 2026 03:10:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 09 Sep 2026 03:10:03 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:4b9f3660b529a1e81f04825056359c345d486cfb05010302b88737a58d21db86`  
		Last Modified: Mon, 07 Sep 2026 07:57:18 GMT  
		Size: 34.4 MB (34376879 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cac9fb3fff8160571c170becc34818255e5183a9684339a003abd5cbce1954fe`  
		Last Modified: Wed, 09 Sep 2026 03:13:58 GMT  
		Size: 249.4 MB (249392356 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5486cf5cc2fde95b51bcb38d31fde55940cea1bf004c853366661cf030b3fc77`  
		Last Modified: Wed, 09 Sep 2026 03:13:48 GMT  
		Size: 14.7 MB (14744144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad925209a32c7ec305d6467507f1f2773f2106e9774d4b4701b2ad12ccd8832c`  
		Last Modified: Wed, 09 Sep 2026 03:13:47 GMT  
		Size: 870.8 KB (870766 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c78b73dd57afc9aecc5d67f59e6f1136a7e8b84a4b87f06c9ec36dccf50832f6`  
		Last Modified: Wed, 09 Sep 2026 03:14:01 GMT  
		Size: 391.0 MB (390987996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26382563d9fed80b40c63799b48304b840bf18f97ea82d86d98054b34f94fe35`  
		Last Modified: Wed, 09 Sep 2026 03:13:48 GMT  
		Size: 766.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:286258d0f3aa28a2847b375290aed03f19004f02f6ca48e82088e7816bc8416c`  
		Last Modified: Wed, 09 Sep 2026 03:13:49 GMT  
		Size: 557.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88cd020a7b72ff7bff09cc839a38f953e643cb65c15f2aa3289a0f0680932a22`  
		Last Modified: Wed, 09 Sep 2026 03:13:50 GMT  
		Size: 596.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64d4feb8c884d22e810cbe8c897b3949e0f976a932f9b5bec369fe0d0abe42da`  
		Last Modified: Wed, 09 Sep 2026 03:13:51 GMT  
		Size: 877.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18` - unknown; unknown

```console
$ docker pull odoo@sha256:ff55770dcf026366d57b8c10a4771aedbcb2010cbf53c82db73ecdfc16fa0acd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.9 MB (43934912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d72d9b5a910c728c69ce1b0e74146cd164536ca73a242473bdadf7bf5cad9de0`

```dockerfile
```

-	Layers:
	-	`sha256:aacc92dc58363746bbf5457c6aabe218b47e618005af0b75b27d070fbbf5a63d`  
		Last Modified: Wed, 09 Sep 2026 03:13:50 GMT  
		Size: 43.9 MB (43907659 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:20db10ff7bf090838985c327402c40d8c0073af8ef201ba6d9d70a52084354c3`  
		Last Modified: Wed, 09 Sep 2026 03:13:47 GMT  
		Size: 27.3 KB (27253 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:18.0`

```console
$ docker pull odoo@sha256:67d7d017cef9af0085a383ec46ec82bd9d7422db475803065873a36dde7ceea9
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
$ docker pull odoo@sha256:3188ca0878006ca5192a0f89f8e34020a28167d098b8d3995d710e712d480065
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **674.0 MB (673992433 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:994ceaeb9b54b590233088b24e3c911b4a3656aab52a894d0a4e2000a1d1394b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Fri, 11 Sep 2026 11:44:03 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:44:03 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:44:03 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:44:06 GMT
ADD file:43d479b270bbaf47965cfc86b37f4c517bda83ddefda6f708f98c3b2b7d15396 in / 
# Fri, 11 Sep 2026 11:44:06 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:27:35 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Wed, 16 Sep 2026 03:27:35 GMT
SHELL [/bin/bash -xo pipefail -c]
# Wed, 16 Sep 2026 03:27:35 GMT
ENV LANG=en_US.UTF-8
# Wed, 16 Sep 2026 03:27:35 GMT
ARG TARGETARCH=amd64
# Wed, 16 Sep 2026 03:27:35 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Wed, 16 Sep 2026 03:27:43 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:57 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:57 GMT
ENV ODOO_VERSION=18.0
# Wed, 16 Sep 2026 03:28:57 GMT
ARG ODOO_RELEASE=20260908
# Wed, 16 Sep 2026 03:28:57 GMT
ARG ODOO_SHA=4f5862fd0a33630abbfc855ce2b5f21caea6a4fb
# Wed, 16 Sep 2026 03:29:48 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260908 ODOO_SHA=4f5862fd0a33630abbfc855ce2b5f21caea6a4fb
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Wed, 16 Sep 2026 03:29:48 GMT
COPY ./entrypoint.sh / # buildkit
# Wed, 16 Sep 2026 03:29:48 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Wed, 16 Sep 2026 03:29:48 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260908 ODOO_SHA=4f5862fd0a33630abbfc855ce2b5f21caea6a4fb
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Wed, 16 Sep 2026 03:29:48 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 16 Sep 2026 03:29:48 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Wed, 16 Sep 2026 03:29:48 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Wed, 16 Sep 2026 03:29:49 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Wed, 16 Sep 2026 03:29:49 GMT
USER odoo
# Wed, 16 Sep 2026 03:29:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 16 Sep 2026 03:29:49 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:edd1ed89f0d443580bd42e5a10cd8736aba5a3438b2a0645c2ebb50119bb0eba`  
		Last Modified: Fri, 11 Sep 2026 13:38:39 GMT  
		Size: 29.8 MB (29764116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a86d1af3ff3c3bdc322a0174252f1db1478431f471da17be3703c8280cd5152`  
		Last Modified: Wed, 16 Sep 2026 03:31:18 GMT  
		Size: 238.7 MB (238694078 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f65494f0ba8f83d4892568614647486352d8f49eb7d5b73c5c4524243120642`  
		Last Modified: Wed, 16 Sep 2026 03:31:08 GMT  
		Size: 14.2 MB (14224531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5513813c0be0ae12dc97455447f3d5e0cff122e6061c8cdfee93928f35275958`  
		Last Modified: Wed, 16 Sep 2026 03:31:07 GMT  
		Size: 868.8 KB (868774 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d440fcc9f26e43416e2050b5c438592b8239d038bdb4adec15de369ef84971cd`  
		Last Modified: Wed, 16 Sep 2026 03:31:21 GMT  
		Size: 390.4 MB (390438141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1a2bf7672142e19f6b5008e5160b05e0bd7632b2f4d6255241f7e156ce0fed2`  
		Last Modified: Wed, 16 Sep 2026 03:31:09 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e22a99de44a80a6ff71a8c9bf4b29ebab11502d444a268779a188d20bebaba7f`  
		Last Modified: Wed, 16 Sep 2026 03:31:10 GMT  
		Size: 554.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a20bb9ff402429244358249df90350a7943bf1771cda772f3bd416d1bddd4362`  
		Last Modified: Wed, 16 Sep 2026 03:31:10 GMT  
		Size: 596.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:853bd03a776ef82a0d68474e34fbf4ca0e58d3b3fa74e4290a185df6d98f8df4`  
		Last Modified: Wed, 16 Sep 2026 03:31:11 GMT  
		Size: 876.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18.0` - unknown; unknown

```console
$ docker pull odoo@sha256:9039d130726daab263bd8a94d3da4eaac619eaf1552b87f209d8a532405b3027
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.9 MB (43926502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3e329ce5df38c0c4eb55e3d788474c9e7d3ecf8b6deb3aaf280b0b0562e6c08`

```dockerfile
```

-	Layers:
	-	`sha256:5daf3e2441fc9951cbbf23841ddd6776099bb65f81d76c59775b1496884bb21d`  
		Last Modified: Wed, 16 Sep 2026 03:31:10 GMT  
		Size: 43.9 MB (43899305 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:924640c484d3b1bf8033a3cf5142453ed4e1bd5f29140cdeb5f43ebdc349c98c`  
		Last Modified: Wed, 16 Sep 2026 03:31:07 GMT  
		Size: 27.2 KB (27197 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:18.0` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:03e2cddadf9d88767984635eb6dc2e5ef93aae383300db33299d252fffe39342
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **670.5 MB (670451624 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa9e313cdf92f754fdcf33305d3146b5c76277a75f607eba14eda6d462c5c0ab`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Fri, 11 Sep 2026 11:53:33 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:53:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:53:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:53:37 GMT
ADD file:ff1ce8d2ee022926eb353ff9248358531fbe1661ef12d8784e68fbc52738ed34 in / 
# Fri, 11 Sep 2026 11:53:37 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:27:05 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Wed, 16 Sep 2026 03:27:05 GMT
SHELL [/bin/bash -xo pipefail -c]
# Wed, 16 Sep 2026 03:27:05 GMT
ENV LANG=en_US.UTF-8
# Wed, 16 Sep 2026 03:27:05 GMT
ARG TARGETARCH=arm64
# Wed, 16 Sep 2026 03:27:05 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Wed, 16 Sep 2026 03:27:17 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:29 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:29 GMT
ENV ODOO_VERSION=18.0
# Wed, 16 Sep 2026 03:28:29 GMT
ARG ODOO_RELEASE=20260908
# Wed, 16 Sep 2026 03:28:29 GMT
ARG ODOO_SHA=4f5862fd0a33630abbfc855ce2b5f21caea6a4fb
# Wed, 16 Sep 2026 03:29:26 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260908 ODOO_SHA=4f5862fd0a33630abbfc855ce2b5f21caea6a4fb
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Wed, 16 Sep 2026 03:29:26 GMT
COPY ./entrypoint.sh / # buildkit
# Wed, 16 Sep 2026 03:29:26 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Wed, 16 Sep 2026 03:29:27 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260908 ODOO_SHA=4f5862fd0a33630abbfc855ce2b5f21caea6a4fb
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Wed, 16 Sep 2026 03:29:27 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 16 Sep 2026 03:29:27 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Wed, 16 Sep 2026 03:29:27 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Wed, 16 Sep 2026 03:29:27 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Wed, 16 Sep 2026 03:29:27 GMT
USER odoo
# Wed, 16 Sep 2026 03:29:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 16 Sep 2026 03:29:27 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:8a38824eedc553ba80cf1eb7df278a003340f7409fd4b9002bce07db8840a9a2`  
		Last Modified: Fri, 11 Sep 2026 13:38:46 GMT  
		Size: 28.9 MB (28941580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:944c8c408c74c9a897c7a96da116b7c3235353a13f721d4c71e28e3cecf647c1`  
		Last Modified: Wed, 16 Sep 2026 03:31:03 GMT  
		Size: 236.2 MB (236155677 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ba260bb5078db6d571c7a6dfd7324c91919cb53e3480cc9489ca9e51500bdbe`  
		Last Modified: Wed, 16 Sep 2026 03:30:55 GMT  
		Size: 14.2 MB (14197940 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ea2fbb067341db4128b2d8666f72ead022ccd767f2be8ee752638bbce62d305`  
		Last Modified: Wed, 16 Sep 2026 03:30:54 GMT  
		Size: 868.8 KB (868782 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a929e4a9f225bddeca1065440d970298c324faba015f9d26bc48ced73eb337b8`  
		Last Modified: Wed, 16 Sep 2026 03:31:07 GMT  
		Size: 390.3 MB (390284849 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:673914db7d47c2b3acaab287856aaa1748f1124969a7c2fb920af4149bf8c483`  
		Last Modified: Wed, 16 Sep 2026 03:30:55 GMT  
		Size: 766.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e20267904812219f61e092babf7a60e83ac1bef866af13747533efa68537e5a0`  
		Last Modified: Wed, 16 Sep 2026 03:30:56 GMT  
		Size: 555.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0897a9ad26325925ad56e1daffefad64d12a295b3446a6b123893b03f933440a`  
		Last Modified: Wed, 16 Sep 2026 03:30:57 GMT  
		Size: 598.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a0fc1a2a67275773c2978af0042b6f7b7322c266e8351f80594944c015ce27c`  
		Last Modified: Wed, 16 Sep 2026 03:30:58 GMT  
		Size: 877.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18.0` - unknown; unknown

```console
$ docker pull odoo@sha256:31ee9b1f9163610a468a1d61226d7456b78c7ddb5a6ea0afd615ffbaa5597a72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.9 MB (43933926 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51b29c151349b00e2e2538d205e0b234b3396f410d51600db9a33d5fe9ad3064`

```dockerfile
```

-	Layers:
	-	`sha256:d26c4065d365554f90f302ef6cae68ee4d4453b3a2a5fe93b14569296badf956`  
		Last Modified: Wed, 16 Sep 2026 03:30:57 GMT  
		Size: 43.9 MB (43906577 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0d1e13a4071de0d1f31103625eee2edd5bf13b6443033a01c84a7291e9b6aeb3`  
		Last Modified: Wed, 16 Sep 2026 03:30:54 GMT  
		Size: 27.3 KB (27349 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:18.0` - linux; ppc64le

```console
$ docker pull odoo@sha256:7667d8c5893eea38533cabad0dabf52cb90689d3b8536491224fac1b79a3a76c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **690.4 MB (690374937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3cb020db84068d4a354dc01406203f0a649f42b4917455edbe73fe376e3d114`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Mon, 07 Sep 2026 07:38:39 GMT
ARG RELEASE
# Mon, 07 Sep 2026 07:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 07:38:39 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 07:38:43 GMT
ADD file:b613d8cbbfcdd39316d0cc2ab20f713e42c2ffc939072314f82208cec1f794df in / 
# Mon, 07 Sep 2026 07:38:44 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:55:35 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Wed, 09 Sep 2026 02:55:35 GMT
SHELL [/bin/bash -xo pipefail -c]
# Wed, 09 Sep 2026 02:55:35 GMT
ENV LANG=en_US.UTF-8
# Wed, 09 Sep 2026 02:55:35 GMT
ARG TARGETARCH=ppc64le
# Wed, 09 Sep 2026 02:55:35 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Wed, 09 Sep 2026 02:55:58 GMT
# ARGS: TARGETARCH=ppc64le
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 03:04:21 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 03:04:21 GMT
ENV ODOO_VERSION=18.0
# Wed, 09 Sep 2026 03:04:21 GMT
ARG ODOO_RELEASE=20260908
# Wed, 09 Sep 2026 03:04:21 GMT
ARG ODOO_SHA=4f5862fd0a33630abbfc855ce2b5f21caea6a4fb
# Wed, 09 Sep 2026 03:09:50 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260908 ODOO_SHA=4f5862fd0a33630abbfc855ce2b5f21caea6a4fb
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Wed, 09 Sep 2026 03:10:01 GMT
COPY ./entrypoint.sh / # buildkit
# Wed, 09 Sep 2026 03:10:02 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Wed, 09 Sep 2026 03:10:02 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260908 ODOO_SHA=4f5862fd0a33630abbfc855ce2b5f21caea6a4fb
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Wed, 09 Sep 2026 03:10:02 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 09 Sep 2026 03:10:02 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Wed, 09 Sep 2026 03:10:02 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Wed, 09 Sep 2026 03:10:03 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Wed, 09 Sep 2026 03:10:03 GMT
USER odoo
# Wed, 09 Sep 2026 03:10:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 09 Sep 2026 03:10:03 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:4b9f3660b529a1e81f04825056359c345d486cfb05010302b88737a58d21db86`  
		Last Modified: Mon, 07 Sep 2026 07:57:18 GMT  
		Size: 34.4 MB (34376879 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cac9fb3fff8160571c170becc34818255e5183a9684339a003abd5cbce1954fe`  
		Last Modified: Wed, 09 Sep 2026 03:13:58 GMT  
		Size: 249.4 MB (249392356 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5486cf5cc2fde95b51bcb38d31fde55940cea1bf004c853366661cf030b3fc77`  
		Last Modified: Wed, 09 Sep 2026 03:13:48 GMT  
		Size: 14.7 MB (14744144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad925209a32c7ec305d6467507f1f2773f2106e9774d4b4701b2ad12ccd8832c`  
		Last Modified: Wed, 09 Sep 2026 03:13:47 GMT  
		Size: 870.8 KB (870766 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c78b73dd57afc9aecc5d67f59e6f1136a7e8b84a4b87f06c9ec36dccf50832f6`  
		Last Modified: Wed, 09 Sep 2026 03:14:01 GMT  
		Size: 391.0 MB (390987996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26382563d9fed80b40c63799b48304b840bf18f97ea82d86d98054b34f94fe35`  
		Last Modified: Wed, 09 Sep 2026 03:13:48 GMT  
		Size: 766.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:286258d0f3aa28a2847b375290aed03f19004f02f6ca48e82088e7816bc8416c`  
		Last Modified: Wed, 09 Sep 2026 03:13:49 GMT  
		Size: 557.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88cd020a7b72ff7bff09cc839a38f953e643cb65c15f2aa3289a0f0680932a22`  
		Last Modified: Wed, 09 Sep 2026 03:13:50 GMT  
		Size: 596.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64d4feb8c884d22e810cbe8c897b3949e0f976a932f9b5bec369fe0d0abe42da`  
		Last Modified: Wed, 09 Sep 2026 03:13:51 GMT  
		Size: 877.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18.0` - unknown; unknown

```console
$ docker pull odoo@sha256:ff55770dcf026366d57b8c10a4771aedbcb2010cbf53c82db73ecdfc16fa0acd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.9 MB (43934912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d72d9b5a910c728c69ce1b0e74146cd164536ca73a242473bdadf7bf5cad9de0`

```dockerfile
```

-	Layers:
	-	`sha256:aacc92dc58363746bbf5457c6aabe218b47e618005af0b75b27d070fbbf5a63d`  
		Last Modified: Wed, 09 Sep 2026 03:13:50 GMT  
		Size: 43.9 MB (43907659 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:20db10ff7bf090838985c327402c40d8c0073af8ef201ba6d9d70a52084354c3`  
		Last Modified: Wed, 09 Sep 2026 03:13:47 GMT  
		Size: 27.3 KB (27253 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:18.0-20260908`

```console
$ docker pull odoo@sha256:67d7d017cef9af0085a383ec46ec82bd9d7422db475803065873a36dde7ceea9
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
$ docker pull odoo@sha256:3188ca0878006ca5192a0f89f8e34020a28167d098b8d3995d710e712d480065
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **674.0 MB (673992433 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:994ceaeb9b54b590233088b24e3c911b4a3656aab52a894d0a4e2000a1d1394b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Fri, 11 Sep 2026 11:44:03 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:44:03 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:44:03 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:44:06 GMT
ADD file:43d479b270bbaf47965cfc86b37f4c517bda83ddefda6f708f98c3b2b7d15396 in / 
# Fri, 11 Sep 2026 11:44:06 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:27:35 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Wed, 16 Sep 2026 03:27:35 GMT
SHELL [/bin/bash -xo pipefail -c]
# Wed, 16 Sep 2026 03:27:35 GMT
ENV LANG=en_US.UTF-8
# Wed, 16 Sep 2026 03:27:35 GMT
ARG TARGETARCH=amd64
# Wed, 16 Sep 2026 03:27:35 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Wed, 16 Sep 2026 03:27:43 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:57 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:57 GMT
ENV ODOO_VERSION=18.0
# Wed, 16 Sep 2026 03:28:57 GMT
ARG ODOO_RELEASE=20260908
# Wed, 16 Sep 2026 03:28:57 GMT
ARG ODOO_SHA=4f5862fd0a33630abbfc855ce2b5f21caea6a4fb
# Wed, 16 Sep 2026 03:29:48 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260908 ODOO_SHA=4f5862fd0a33630abbfc855ce2b5f21caea6a4fb
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Wed, 16 Sep 2026 03:29:48 GMT
COPY ./entrypoint.sh / # buildkit
# Wed, 16 Sep 2026 03:29:48 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Wed, 16 Sep 2026 03:29:48 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260908 ODOO_SHA=4f5862fd0a33630abbfc855ce2b5f21caea6a4fb
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Wed, 16 Sep 2026 03:29:48 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 16 Sep 2026 03:29:48 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Wed, 16 Sep 2026 03:29:48 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Wed, 16 Sep 2026 03:29:49 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Wed, 16 Sep 2026 03:29:49 GMT
USER odoo
# Wed, 16 Sep 2026 03:29:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 16 Sep 2026 03:29:49 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:edd1ed89f0d443580bd42e5a10cd8736aba5a3438b2a0645c2ebb50119bb0eba`  
		Last Modified: Fri, 11 Sep 2026 13:38:39 GMT  
		Size: 29.8 MB (29764116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a86d1af3ff3c3bdc322a0174252f1db1478431f471da17be3703c8280cd5152`  
		Last Modified: Wed, 16 Sep 2026 03:31:18 GMT  
		Size: 238.7 MB (238694078 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f65494f0ba8f83d4892568614647486352d8f49eb7d5b73c5c4524243120642`  
		Last Modified: Wed, 16 Sep 2026 03:31:08 GMT  
		Size: 14.2 MB (14224531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5513813c0be0ae12dc97455447f3d5e0cff122e6061c8cdfee93928f35275958`  
		Last Modified: Wed, 16 Sep 2026 03:31:07 GMT  
		Size: 868.8 KB (868774 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d440fcc9f26e43416e2050b5c438592b8239d038bdb4adec15de369ef84971cd`  
		Last Modified: Wed, 16 Sep 2026 03:31:21 GMT  
		Size: 390.4 MB (390438141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1a2bf7672142e19f6b5008e5160b05e0bd7632b2f4d6255241f7e156ce0fed2`  
		Last Modified: Wed, 16 Sep 2026 03:31:09 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e22a99de44a80a6ff71a8c9bf4b29ebab11502d444a268779a188d20bebaba7f`  
		Last Modified: Wed, 16 Sep 2026 03:31:10 GMT  
		Size: 554.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a20bb9ff402429244358249df90350a7943bf1771cda772f3bd416d1bddd4362`  
		Last Modified: Wed, 16 Sep 2026 03:31:10 GMT  
		Size: 596.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:853bd03a776ef82a0d68474e34fbf4ca0e58d3b3fa74e4290a185df6d98f8df4`  
		Last Modified: Wed, 16 Sep 2026 03:31:11 GMT  
		Size: 876.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18.0-20260908` - unknown; unknown

```console
$ docker pull odoo@sha256:9039d130726daab263bd8a94d3da4eaac619eaf1552b87f209d8a532405b3027
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.9 MB (43926502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3e329ce5df38c0c4eb55e3d788474c9e7d3ecf8b6deb3aaf280b0b0562e6c08`

```dockerfile
```

-	Layers:
	-	`sha256:5daf3e2441fc9951cbbf23841ddd6776099bb65f81d76c59775b1496884bb21d`  
		Last Modified: Wed, 16 Sep 2026 03:31:10 GMT  
		Size: 43.9 MB (43899305 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:924640c484d3b1bf8033a3cf5142453ed4e1bd5f29140cdeb5f43ebdc349c98c`  
		Last Modified: Wed, 16 Sep 2026 03:31:07 GMT  
		Size: 27.2 KB (27197 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:18.0-20260908` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:03e2cddadf9d88767984635eb6dc2e5ef93aae383300db33299d252fffe39342
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **670.5 MB (670451624 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa9e313cdf92f754fdcf33305d3146b5c76277a75f607eba14eda6d462c5c0ab`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Fri, 11 Sep 2026 11:53:33 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:53:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:53:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:53:37 GMT
ADD file:ff1ce8d2ee022926eb353ff9248358531fbe1661ef12d8784e68fbc52738ed34 in / 
# Fri, 11 Sep 2026 11:53:37 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:27:05 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Wed, 16 Sep 2026 03:27:05 GMT
SHELL [/bin/bash -xo pipefail -c]
# Wed, 16 Sep 2026 03:27:05 GMT
ENV LANG=en_US.UTF-8
# Wed, 16 Sep 2026 03:27:05 GMT
ARG TARGETARCH=arm64
# Wed, 16 Sep 2026 03:27:05 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Wed, 16 Sep 2026 03:27:17 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:29 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:29 GMT
ENV ODOO_VERSION=18.0
# Wed, 16 Sep 2026 03:28:29 GMT
ARG ODOO_RELEASE=20260908
# Wed, 16 Sep 2026 03:28:29 GMT
ARG ODOO_SHA=4f5862fd0a33630abbfc855ce2b5f21caea6a4fb
# Wed, 16 Sep 2026 03:29:26 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260908 ODOO_SHA=4f5862fd0a33630abbfc855ce2b5f21caea6a4fb
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Wed, 16 Sep 2026 03:29:26 GMT
COPY ./entrypoint.sh / # buildkit
# Wed, 16 Sep 2026 03:29:26 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Wed, 16 Sep 2026 03:29:27 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260908 ODOO_SHA=4f5862fd0a33630abbfc855ce2b5f21caea6a4fb
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Wed, 16 Sep 2026 03:29:27 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 16 Sep 2026 03:29:27 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Wed, 16 Sep 2026 03:29:27 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Wed, 16 Sep 2026 03:29:27 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Wed, 16 Sep 2026 03:29:27 GMT
USER odoo
# Wed, 16 Sep 2026 03:29:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 16 Sep 2026 03:29:27 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:8a38824eedc553ba80cf1eb7df278a003340f7409fd4b9002bce07db8840a9a2`  
		Last Modified: Fri, 11 Sep 2026 13:38:46 GMT  
		Size: 28.9 MB (28941580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:944c8c408c74c9a897c7a96da116b7c3235353a13f721d4c71e28e3cecf647c1`  
		Last Modified: Wed, 16 Sep 2026 03:31:03 GMT  
		Size: 236.2 MB (236155677 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ba260bb5078db6d571c7a6dfd7324c91919cb53e3480cc9489ca9e51500bdbe`  
		Last Modified: Wed, 16 Sep 2026 03:30:55 GMT  
		Size: 14.2 MB (14197940 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ea2fbb067341db4128b2d8666f72ead022ccd767f2be8ee752638bbce62d305`  
		Last Modified: Wed, 16 Sep 2026 03:30:54 GMT  
		Size: 868.8 KB (868782 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a929e4a9f225bddeca1065440d970298c324faba015f9d26bc48ced73eb337b8`  
		Last Modified: Wed, 16 Sep 2026 03:31:07 GMT  
		Size: 390.3 MB (390284849 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:673914db7d47c2b3acaab287856aaa1748f1124969a7c2fb920af4149bf8c483`  
		Last Modified: Wed, 16 Sep 2026 03:30:55 GMT  
		Size: 766.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e20267904812219f61e092babf7a60e83ac1bef866af13747533efa68537e5a0`  
		Last Modified: Wed, 16 Sep 2026 03:30:56 GMT  
		Size: 555.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0897a9ad26325925ad56e1daffefad64d12a295b3446a6b123893b03f933440a`  
		Last Modified: Wed, 16 Sep 2026 03:30:57 GMT  
		Size: 598.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a0fc1a2a67275773c2978af0042b6f7b7322c266e8351f80594944c015ce27c`  
		Last Modified: Wed, 16 Sep 2026 03:30:58 GMT  
		Size: 877.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18.0-20260908` - unknown; unknown

```console
$ docker pull odoo@sha256:31ee9b1f9163610a468a1d61226d7456b78c7ddb5a6ea0afd615ffbaa5597a72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.9 MB (43933926 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51b29c151349b00e2e2538d205e0b234b3396f410d51600db9a33d5fe9ad3064`

```dockerfile
```

-	Layers:
	-	`sha256:d26c4065d365554f90f302ef6cae68ee4d4453b3a2a5fe93b14569296badf956`  
		Last Modified: Wed, 16 Sep 2026 03:30:57 GMT  
		Size: 43.9 MB (43906577 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0d1e13a4071de0d1f31103625eee2edd5bf13b6443033a01c84a7291e9b6aeb3`  
		Last Modified: Wed, 16 Sep 2026 03:30:54 GMT  
		Size: 27.3 KB (27349 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:18.0-20260908` - linux; ppc64le

```console
$ docker pull odoo@sha256:7667d8c5893eea38533cabad0dabf52cb90689d3b8536491224fac1b79a3a76c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **690.4 MB (690374937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3cb020db84068d4a354dc01406203f0a649f42b4917455edbe73fe376e3d114`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Mon, 07 Sep 2026 07:38:39 GMT
ARG RELEASE
# Mon, 07 Sep 2026 07:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 07:38:39 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 07:38:43 GMT
ADD file:b613d8cbbfcdd39316d0cc2ab20f713e42c2ffc939072314f82208cec1f794df in / 
# Mon, 07 Sep 2026 07:38:44 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:55:35 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Wed, 09 Sep 2026 02:55:35 GMT
SHELL [/bin/bash -xo pipefail -c]
# Wed, 09 Sep 2026 02:55:35 GMT
ENV LANG=en_US.UTF-8
# Wed, 09 Sep 2026 02:55:35 GMT
ARG TARGETARCH=ppc64le
# Wed, 09 Sep 2026 02:55:35 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Wed, 09 Sep 2026 02:55:58 GMT
# ARGS: TARGETARCH=ppc64le
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 03:04:21 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 03:04:21 GMT
ENV ODOO_VERSION=18.0
# Wed, 09 Sep 2026 03:04:21 GMT
ARG ODOO_RELEASE=20260908
# Wed, 09 Sep 2026 03:04:21 GMT
ARG ODOO_SHA=4f5862fd0a33630abbfc855ce2b5f21caea6a4fb
# Wed, 09 Sep 2026 03:09:50 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260908 ODOO_SHA=4f5862fd0a33630abbfc855ce2b5f21caea6a4fb
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Wed, 09 Sep 2026 03:10:01 GMT
COPY ./entrypoint.sh / # buildkit
# Wed, 09 Sep 2026 03:10:02 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Wed, 09 Sep 2026 03:10:02 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260908 ODOO_SHA=4f5862fd0a33630abbfc855ce2b5f21caea6a4fb
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Wed, 09 Sep 2026 03:10:02 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 09 Sep 2026 03:10:02 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Wed, 09 Sep 2026 03:10:02 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Wed, 09 Sep 2026 03:10:03 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Wed, 09 Sep 2026 03:10:03 GMT
USER odoo
# Wed, 09 Sep 2026 03:10:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 09 Sep 2026 03:10:03 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:4b9f3660b529a1e81f04825056359c345d486cfb05010302b88737a58d21db86`  
		Last Modified: Mon, 07 Sep 2026 07:57:18 GMT  
		Size: 34.4 MB (34376879 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cac9fb3fff8160571c170becc34818255e5183a9684339a003abd5cbce1954fe`  
		Last Modified: Wed, 09 Sep 2026 03:13:58 GMT  
		Size: 249.4 MB (249392356 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5486cf5cc2fde95b51bcb38d31fde55940cea1bf004c853366661cf030b3fc77`  
		Last Modified: Wed, 09 Sep 2026 03:13:48 GMT  
		Size: 14.7 MB (14744144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad925209a32c7ec305d6467507f1f2773f2106e9774d4b4701b2ad12ccd8832c`  
		Last Modified: Wed, 09 Sep 2026 03:13:47 GMT  
		Size: 870.8 KB (870766 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c78b73dd57afc9aecc5d67f59e6f1136a7e8b84a4b87f06c9ec36dccf50832f6`  
		Last Modified: Wed, 09 Sep 2026 03:14:01 GMT  
		Size: 391.0 MB (390987996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26382563d9fed80b40c63799b48304b840bf18f97ea82d86d98054b34f94fe35`  
		Last Modified: Wed, 09 Sep 2026 03:13:48 GMT  
		Size: 766.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:286258d0f3aa28a2847b375290aed03f19004f02f6ca48e82088e7816bc8416c`  
		Last Modified: Wed, 09 Sep 2026 03:13:49 GMT  
		Size: 557.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88cd020a7b72ff7bff09cc839a38f953e643cb65c15f2aa3289a0f0680932a22`  
		Last Modified: Wed, 09 Sep 2026 03:13:50 GMT  
		Size: 596.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64d4feb8c884d22e810cbe8c897b3949e0f976a932f9b5bec369fe0d0abe42da`  
		Last Modified: Wed, 09 Sep 2026 03:13:51 GMT  
		Size: 877.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18.0-20260908` - unknown; unknown

```console
$ docker pull odoo@sha256:ff55770dcf026366d57b8c10a4771aedbcb2010cbf53c82db73ecdfc16fa0acd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.9 MB (43934912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d72d9b5a910c728c69ce1b0e74146cd164536ca73a242473bdadf7bf5cad9de0`

```dockerfile
```

-	Layers:
	-	`sha256:aacc92dc58363746bbf5457c6aabe218b47e618005af0b75b27d070fbbf5a63d`  
		Last Modified: Wed, 09 Sep 2026 03:13:50 GMT  
		Size: 43.9 MB (43907659 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:20db10ff7bf090838985c327402c40d8c0073af8ef201ba6d9d70a52084354c3`  
		Last Modified: Wed, 09 Sep 2026 03:13:47 GMT  
		Size: 27.3 KB (27253 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:19`

```console
$ docker pull odoo@sha256:78d6d9be11000c6bbe6a34648cc4bdfb445c941f1218e149a8d646cf2c9f70be
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
$ docker pull odoo@sha256:08af340902122af116a92c917359cd8bb411ca6960c0b4877dc636423a8d5b26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **697.6 MB (697563402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:400a621198ea355394df4a328b0f65043ffd1f4e79a5025ba16edf03cb26893d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Fri, 11 Sep 2026 11:44:03 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:44:03 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:44:03 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:44:06 GMT
ADD file:43d479b270bbaf47965cfc86b37f4c517bda83ddefda6f708f98c3b2b7d15396 in / 
# Fri, 11 Sep 2026 11:44:06 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:27:08 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Wed, 16 Sep 2026 03:27:08 GMT
SHELL [/bin/bash -xo pipefail -c]
# Wed, 16 Sep 2026 03:27:08 GMT
ENV LANG=en_US.UTF-8
# Wed, 16 Sep 2026 03:27:08 GMT
ARG TARGETARCH=amd64
# Wed, 16 Sep 2026 03:27:08 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Wed, 16 Sep 2026 03:27:16 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:23 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:23 GMT
ENV ODOO_VERSION=19.0
# Wed, 16 Sep 2026 03:28:23 GMT
ARG ODOO_RELEASE=20260908
# Wed, 16 Sep 2026 03:28:23 GMT
ARG ODOO_SHA=df549a99c8a31a89f54b722e57f9c47224852093
# Wed, 16 Sep 2026 03:29:25 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260908 ODOO_SHA=df549a99c8a31a89f54b722e57f9c47224852093
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Wed, 16 Sep 2026 03:29:25 GMT
COPY ./entrypoint.sh / # buildkit
# Wed, 16 Sep 2026 03:29:25 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Wed, 16 Sep 2026 03:29:26 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260908 ODOO_SHA=df549a99c8a31a89f54b722e57f9c47224852093
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Wed, 16 Sep 2026 03:29:26 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 16 Sep 2026 03:29:26 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Wed, 16 Sep 2026 03:29:26 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Wed, 16 Sep 2026 03:29:26 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Wed, 16 Sep 2026 03:29:26 GMT
USER odoo
# Wed, 16 Sep 2026 03:29:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 16 Sep 2026 03:29:26 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:edd1ed89f0d443580bd42e5a10cd8736aba5a3438b2a0645c2ebb50119bb0eba`  
		Last Modified: Fri, 11 Sep 2026 13:38:39 GMT  
		Size: 29.8 MB (29764116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ea6cab7ef39948744b016296165b4911c332074318e02c82f9b503df66a8118`  
		Last Modified: Wed, 16 Sep 2026 03:31:12 GMT  
		Size: 238.7 MB (238694616 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4abfabe6407432668d7235f2f811f45da5feca43e46c6c33c974fb8aa578c8fe`  
		Last Modified: Wed, 16 Sep 2026 03:31:04 GMT  
		Size: 14.2 MB (14224526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc4c2c5354470621321fc3b8f828bfa8173749a4aa0f850cb90e2a57d369911c`  
		Last Modified: Wed, 16 Sep 2026 03:31:03 GMT  
		Size: 868.8 KB (868844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7c76f4f350d2301d3da92ba0e3d4d261bf80577e10644c5c80ff8071e711762`  
		Last Modified: Wed, 16 Sep 2026 03:31:15 GMT  
		Size: 414.0 MB (414008552 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63378520da57ed0e416928801bf2eb7015af1f41715ac57fbd2e17bc040f16e7`  
		Last Modified: Wed, 16 Sep 2026 03:31:05 GMT  
		Size: 718.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75a35bc48bfafbebcddd60f3beb81a5c3cf730509d350e96471c6505f935c437`  
		Last Modified: Wed, 16 Sep 2026 03:31:05 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:672d8003ede54ab3968b25d5c80c19a196c3f389b4cb9b4a0ba53dac0178e4d5`  
		Last Modified: Wed, 16 Sep 2026 03:31:06 GMT  
		Size: 598.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22b1fb30dcbb5dba377dd6df4eec879a7c38d0031b733dd5be7b0f64bb9309bb`  
		Last Modified: Wed, 16 Sep 2026 03:31:07 GMT  
		Size: 876.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19` - unknown; unknown

```console
$ docker pull odoo@sha256:629c36f9fd80521f9e4c91cba796fef9b8ccc4e7e779df5a624f751119e953d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.5 MB (52460546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d05340e1793a8f59195bffac9107eef65d737193b499138d2192462aeb70334e`

```dockerfile
```

-	Layers:
	-	`sha256:9e4e4d1f57238db7564a1c72644e12826fbd4ca515416f8abb2ffab0e62bf8df`  
		Last Modified: Wed, 16 Sep 2026 03:31:06 GMT  
		Size: 52.4 MB (52433055 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:70c4dfe83ef3c648e4d56d3c5c9279eda4ab22bccdf0b250ccf26c7162bc6cc2`  
		Last Modified: Wed, 16 Sep 2026 03:31:03 GMT  
		Size: 27.5 KB (27491 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:19` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:a25c420ff7c39fc0bf7ca3e5e4426539fc52190da63059884bb8592c4be880fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **694.0 MB (694028808 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55fabe4041a6bd8f3f669a7a67b6ee062cd32b18bb62a43a30087117fc9ee79b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Fri, 11 Sep 2026 11:53:33 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:53:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:53:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:53:37 GMT
ADD file:ff1ce8d2ee022926eb353ff9248358531fbe1661ef12d8784e68fbc52738ed34 in / 
# Fri, 11 Sep 2026 11:53:37 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:27:03 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Wed, 16 Sep 2026 03:27:03 GMT
SHELL [/bin/bash -xo pipefail -c]
# Wed, 16 Sep 2026 03:27:03 GMT
ENV LANG=en_US.UTF-8
# Wed, 16 Sep 2026 03:27:03 GMT
ARG TARGETARCH=arm64
# Wed, 16 Sep 2026 03:27:03 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Wed, 16 Sep 2026 03:27:13 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:17 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:17 GMT
ENV ODOO_VERSION=19.0
# Wed, 16 Sep 2026 03:28:17 GMT
ARG ODOO_RELEASE=20260908
# Wed, 16 Sep 2026 03:28:17 GMT
ARG ODOO_SHA=df549a99c8a31a89f54b722e57f9c47224852093
# Wed, 16 Sep 2026 03:29:28 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260908 ODOO_SHA=df549a99c8a31a89f54b722e57f9c47224852093
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Wed, 16 Sep 2026 03:29:29 GMT
COPY ./entrypoint.sh / # buildkit
# Wed, 16 Sep 2026 03:29:29 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Wed, 16 Sep 2026 03:29:29 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260908 ODOO_SHA=df549a99c8a31a89f54b722e57f9c47224852093
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Wed, 16 Sep 2026 03:29:29 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 16 Sep 2026 03:29:29 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Wed, 16 Sep 2026 03:29:29 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Wed, 16 Sep 2026 03:29:29 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Wed, 16 Sep 2026 03:29:29 GMT
USER odoo
# Wed, 16 Sep 2026 03:29:29 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 16 Sep 2026 03:29:29 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:8a38824eedc553ba80cf1eb7df278a003340f7409fd4b9002bce07db8840a9a2`  
		Last Modified: Fri, 11 Sep 2026 13:38:46 GMT  
		Size: 28.9 MB (28941580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0443f43f89dffe15641449ef145d563290bd9e434ca7ada082712323a997908`  
		Last Modified: Wed, 16 Sep 2026 03:31:35 GMT  
		Size: 236.2 MB (236156201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47e80898467b644af1c76258c1b51d5ef7eb399aedd576b4379be81961deb9b7`  
		Last Modified: Wed, 16 Sep 2026 03:31:27 GMT  
		Size: 14.2 MB (14197880 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fbde4679844e07b2afdce6764ee1a00d42673a2f1ace145a1c03e2da7ecad45`  
		Last Modified: Wed, 16 Sep 2026 03:31:26 GMT  
		Size: 868.8 KB (868756 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d780f5fcaec2b446922301ce3490e1ca60595e1a78d29a960a0e9f7f8e47b971`  
		Last Modified: Wed, 16 Sep 2026 03:31:38 GMT  
		Size: 413.9 MB (413861648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a844a01e217ae9e12681f5154d91ebef32de51f17d84b992bdc423b3a2fe9f0d`  
		Last Modified: Wed, 16 Sep 2026 03:31:27 GMT  
		Size: 717.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7a9fb5ad4013de85d8c9374c0e4f0e85e08467866288aae7d66f0e7a9f4ea09`  
		Last Modified: Wed, 16 Sep 2026 03:31:28 GMT  
		Size: 555.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8af535add5bbf0066aadde11821117621249e8c859e5b38f8457377a9c7f58de`  
		Last Modified: Wed, 16 Sep 2026 03:31:28 GMT  
		Size: 595.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70f1e9bfd15d7cb516df5d8575503d0485e4002eda82a28902987b3aa439dcb5`  
		Last Modified: Wed, 16 Sep 2026 03:31:30 GMT  
		Size: 876.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19` - unknown; unknown

```console
$ docker pull odoo@sha256:5bae321b553dacf17c0df5acb82bff4d509ace91051d08ca0b9f7d34b6e31904
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.5 MB (52467994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ae994215d3021362b1603b95c422960a7db649c22fe601b1e403e1bb30c5e64`

```dockerfile
```

-	Layers:
	-	`sha256:489de92d5954ccdedc66f6d8c1ee616b2d5742b454a477b7ddf95c2f61dd2c9e`  
		Last Modified: Wed, 16 Sep 2026 03:31:29 GMT  
		Size: 52.4 MB (52440339 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5413bfa0439263f3be071520992e3494024c5a4ce2a82fcb1bb5d5f13f612937`  
		Last Modified: Wed, 16 Sep 2026 03:31:26 GMT  
		Size: 27.7 KB (27655 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:19` - linux; ppc64le

```console
$ docker pull odoo@sha256:221b12bc589033dd1c565754cff3a16a04e2291387c9a5aad378818f67b116ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **713.9 MB (713923390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b04256af144c7c8d1983752db9d9a0d5ee017753303b8fcb19c618e643edcb6e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Mon, 07 Sep 2026 07:38:39 GMT
ARG RELEASE
# Mon, 07 Sep 2026 07:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 07:38:39 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 07:38:43 GMT
ADD file:b613d8cbbfcdd39316d0cc2ab20f713e42c2ffc939072314f82208cec1f794df in / 
# Mon, 07 Sep 2026 07:38:44 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:55:35 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Wed, 09 Sep 2026 02:55:35 GMT
SHELL [/bin/bash -xo pipefail -c]
# Wed, 09 Sep 2026 02:55:35 GMT
ENV LANG=en_US.UTF-8
# Wed, 09 Sep 2026 02:55:35 GMT
ARG TARGETARCH=ppc64le
# Wed, 09 Sep 2026 02:55:35 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Wed, 09 Sep 2026 02:55:58 GMT
# ARGS: TARGETARCH=ppc64le
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 03:04:21 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 03:04:21 GMT
ENV ODOO_VERSION=19.0
# Wed, 09 Sep 2026 03:04:21 GMT
ARG ODOO_RELEASE=20260908
# Wed, 09 Sep 2026 03:04:21 GMT
ARG ODOO_SHA=df549a99c8a31a89f54b722e57f9c47224852093
# Wed, 09 Sep 2026 03:10:00 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260908 ODOO_SHA=df549a99c8a31a89f54b722e57f9c47224852093
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Wed, 09 Sep 2026 03:10:02 GMT
COPY ./entrypoint.sh / # buildkit
# Wed, 09 Sep 2026 03:10:02 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Wed, 09 Sep 2026 03:10:03 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260908 ODOO_SHA=df549a99c8a31a89f54b722e57f9c47224852093
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Wed, 09 Sep 2026 03:10:03 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 09 Sep 2026 03:10:03 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Wed, 09 Sep 2026 03:10:03 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Wed, 09 Sep 2026 03:10:03 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Wed, 09 Sep 2026 03:10:03 GMT
USER odoo
# Wed, 09 Sep 2026 03:10:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 09 Sep 2026 03:10:03 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:4b9f3660b529a1e81f04825056359c345d486cfb05010302b88737a58d21db86`  
		Last Modified: Mon, 07 Sep 2026 07:57:18 GMT  
		Size: 34.4 MB (34376879 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cac9fb3fff8160571c170becc34818255e5183a9684339a003abd5cbce1954fe`  
		Last Modified: Wed, 09 Sep 2026 03:13:58 GMT  
		Size: 249.4 MB (249392356 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5486cf5cc2fde95b51bcb38d31fde55940cea1bf004c853366661cf030b3fc77`  
		Last Modified: Wed, 09 Sep 2026 03:13:48 GMT  
		Size: 14.7 MB (14744144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad925209a32c7ec305d6467507f1f2773f2106e9774d4b4701b2ad12ccd8832c`  
		Last Modified: Wed, 09 Sep 2026 03:13:47 GMT  
		Size: 870.8 KB (870766 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5964b28d77da676c43309be5452baef7f1f0f5ef84bcc4eed48c237db960cee3`  
		Last Modified: Wed, 09 Sep 2026 03:14:57 GMT  
		Size: 414.5 MB (414536495 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bfa739818875240b54b06bdd7f1e6e1b80a60c8edd503f9f3a8ad0b6aa35763`  
		Last Modified: Wed, 09 Sep 2026 03:14:48 GMT  
		Size: 717.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4cc8be415924c1d236501d3775dd93f05225c83af7baf4bfa7dbdc195e1e00f`  
		Last Modified: Wed, 09 Sep 2026 03:14:48 GMT  
		Size: 557.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df50c1f0539416495bd6d1a03a0d3f1a261f251d6d0b032893ddba50fd09fef7`  
		Last Modified: Wed, 09 Sep 2026 03:14:48 GMT  
		Size: 600.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d36cfa115eedb210c1785004ac891d335f52f7098b24b807f288e40dbf993b09`  
		Last Modified: Wed, 09 Sep 2026 03:14:49 GMT  
		Size: 876.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19` - unknown; unknown

```console
$ docker pull odoo@sha256:71e0656a41f87eb101105789bf725cbbc83bd4cfd12bcca8ff9fb0183d87ecf3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.5 MB (52468968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82b8c3a83844688b770aa42a54d15a3a7f403d94b554672941a6175a88b560ae`

```dockerfile
```

-	Layers:
	-	`sha256:ae35b83004654635322055a228a015bc2627c88b180adf401c0728e47e6e8c4a`  
		Last Modified: Wed, 09 Sep 2026 03:14:50 GMT  
		Size: 52.4 MB (52441415 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9b2297b1fdd5355cee2b274fd8cdefbaa119800ecc2c08b40b3a4c5767ff598d`  
		Last Modified: Wed, 09 Sep 2026 03:14:48 GMT  
		Size: 27.6 KB (27553 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:19.0`

```console
$ docker pull odoo@sha256:78d6d9be11000c6bbe6a34648cc4bdfb445c941f1218e149a8d646cf2c9f70be
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
$ docker pull odoo@sha256:08af340902122af116a92c917359cd8bb411ca6960c0b4877dc636423a8d5b26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **697.6 MB (697563402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:400a621198ea355394df4a328b0f65043ffd1f4e79a5025ba16edf03cb26893d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Fri, 11 Sep 2026 11:44:03 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:44:03 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:44:03 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:44:06 GMT
ADD file:43d479b270bbaf47965cfc86b37f4c517bda83ddefda6f708f98c3b2b7d15396 in / 
# Fri, 11 Sep 2026 11:44:06 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:27:08 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Wed, 16 Sep 2026 03:27:08 GMT
SHELL [/bin/bash -xo pipefail -c]
# Wed, 16 Sep 2026 03:27:08 GMT
ENV LANG=en_US.UTF-8
# Wed, 16 Sep 2026 03:27:08 GMT
ARG TARGETARCH=amd64
# Wed, 16 Sep 2026 03:27:08 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Wed, 16 Sep 2026 03:27:16 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:23 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:23 GMT
ENV ODOO_VERSION=19.0
# Wed, 16 Sep 2026 03:28:23 GMT
ARG ODOO_RELEASE=20260908
# Wed, 16 Sep 2026 03:28:23 GMT
ARG ODOO_SHA=df549a99c8a31a89f54b722e57f9c47224852093
# Wed, 16 Sep 2026 03:29:25 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260908 ODOO_SHA=df549a99c8a31a89f54b722e57f9c47224852093
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Wed, 16 Sep 2026 03:29:25 GMT
COPY ./entrypoint.sh / # buildkit
# Wed, 16 Sep 2026 03:29:25 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Wed, 16 Sep 2026 03:29:26 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260908 ODOO_SHA=df549a99c8a31a89f54b722e57f9c47224852093
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Wed, 16 Sep 2026 03:29:26 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 16 Sep 2026 03:29:26 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Wed, 16 Sep 2026 03:29:26 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Wed, 16 Sep 2026 03:29:26 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Wed, 16 Sep 2026 03:29:26 GMT
USER odoo
# Wed, 16 Sep 2026 03:29:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 16 Sep 2026 03:29:26 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:edd1ed89f0d443580bd42e5a10cd8736aba5a3438b2a0645c2ebb50119bb0eba`  
		Last Modified: Fri, 11 Sep 2026 13:38:39 GMT  
		Size: 29.8 MB (29764116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ea6cab7ef39948744b016296165b4911c332074318e02c82f9b503df66a8118`  
		Last Modified: Wed, 16 Sep 2026 03:31:12 GMT  
		Size: 238.7 MB (238694616 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4abfabe6407432668d7235f2f811f45da5feca43e46c6c33c974fb8aa578c8fe`  
		Last Modified: Wed, 16 Sep 2026 03:31:04 GMT  
		Size: 14.2 MB (14224526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc4c2c5354470621321fc3b8f828bfa8173749a4aa0f850cb90e2a57d369911c`  
		Last Modified: Wed, 16 Sep 2026 03:31:03 GMT  
		Size: 868.8 KB (868844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7c76f4f350d2301d3da92ba0e3d4d261bf80577e10644c5c80ff8071e711762`  
		Last Modified: Wed, 16 Sep 2026 03:31:15 GMT  
		Size: 414.0 MB (414008552 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63378520da57ed0e416928801bf2eb7015af1f41715ac57fbd2e17bc040f16e7`  
		Last Modified: Wed, 16 Sep 2026 03:31:05 GMT  
		Size: 718.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75a35bc48bfafbebcddd60f3beb81a5c3cf730509d350e96471c6505f935c437`  
		Last Modified: Wed, 16 Sep 2026 03:31:05 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:672d8003ede54ab3968b25d5c80c19a196c3f389b4cb9b4a0ba53dac0178e4d5`  
		Last Modified: Wed, 16 Sep 2026 03:31:06 GMT  
		Size: 598.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22b1fb30dcbb5dba377dd6df4eec879a7c38d0031b733dd5be7b0f64bb9309bb`  
		Last Modified: Wed, 16 Sep 2026 03:31:07 GMT  
		Size: 876.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19.0` - unknown; unknown

```console
$ docker pull odoo@sha256:629c36f9fd80521f9e4c91cba796fef9b8ccc4e7e779df5a624f751119e953d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.5 MB (52460546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d05340e1793a8f59195bffac9107eef65d737193b499138d2192462aeb70334e`

```dockerfile
```

-	Layers:
	-	`sha256:9e4e4d1f57238db7564a1c72644e12826fbd4ca515416f8abb2ffab0e62bf8df`  
		Last Modified: Wed, 16 Sep 2026 03:31:06 GMT  
		Size: 52.4 MB (52433055 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:70c4dfe83ef3c648e4d56d3c5c9279eda4ab22bccdf0b250ccf26c7162bc6cc2`  
		Last Modified: Wed, 16 Sep 2026 03:31:03 GMT  
		Size: 27.5 KB (27491 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:19.0` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:a25c420ff7c39fc0bf7ca3e5e4426539fc52190da63059884bb8592c4be880fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **694.0 MB (694028808 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55fabe4041a6bd8f3f669a7a67b6ee062cd32b18bb62a43a30087117fc9ee79b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Fri, 11 Sep 2026 11:53:33 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:53:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:53:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:53:37 GMT
ADD file:ff1ce8d2ee022926eb353ff9248358531fbe1661ef12d8784e68fbc52738ed34 in / 
# Fri, 11 Sep 2026 11:53:37 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:27:03 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Wed, 16 Sep 2026 03:27:03 GMT
SHELL [/bin/bash -xo pipefail -c]
# Wed, 16 Sep 2026 03:27:03 GMT
ENV LANG=en_US.UTF-8
# Wed, 16 Sep 2026 03:27:03 GMT
ARG TARGETARCH=arm64
# Wed, 16 Sep 2026 03:27:03 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Wed, 16 Sep 2026 03:27:13 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:17 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:17 GMT
ENV ODOO_VERSION=19.0
# Wed, 16 Sep 2026 03:28:17 GMT
ARG ODOO_RELEASE=20260908
# Wed, 16 Sep 2026 03:28:17 GMT
ARG ODOO_SHA=df549a99c8a31a89f54b722e57f9c47224852093
# Wed, 16 Sep 2026 03:29:28 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260908 ODOO_SHA=df549a99c8a31a89f54b722e57f9c47224852093
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Wed, 16 Sep 2026 03:29:29 GMT
COPY ./entrypoint.sh / # buildkit
# Wed, 16 Sep 2026 03:29:29 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Wed, 16 Sep 2026 03:29:29 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260908 ODOO_SHA=df549a99c8a31a89f54b722e57f9c47224852093
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Wed, 16 Sep 2026 03:29:29 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 16 Sep 2026 03:29:29 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Wed, 16 Sep 2026 03:29:29 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Wed, 16 Sep 2026 03:29:29 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Wed, 16 Sep 2026 03:29:29 GMT
USER odoo
# Wed, 16 Sep 2026 03:29:29 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 16 Sep 2026 03:29:29 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:8a38824eedc553ba80cf1eb7df278a003340f7409fd4b9002bce07db8840a9a2`  
		Last Modified: Fri, 11 Sep 2026 13:38:46 GMT  
		Size: 28.9 MB (28941580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0443f43f89dffe15641449ef145d563290bd9e434ca7ada082712323a997908`  
		Last Modified: Wed, 16 Sep 2026 03:31:35 GMT  
		Size: 236.2 MB (236156201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47e80898467b644af1c76258c1b51d5ef7eb399aedd576b4379be81961deb9b7`  
		Last Modified: Wed, 16 Sep 2026 03:31:27 GMT  
		Size: 14.2 MB (14197880 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fbde4679844e07b2afdce6764ee1a00d42673a2f1ace145a1c03e2da7ecad45`  
		Last Modified: Wed, 16 Sep 2026 03:31:26 GMT  
		Size: 868.8 KB (868756 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d780f5fcaec2b446922301ce3490e1ca60595e1a78d29a960a0e9f7f8e47b971`  
		Last Modified: Wed, 16 Sep 2026 03:31:38 GMT  
		Size: 413.9 MB (413861648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a844a01e217ae9e12681f5154d91ebef32de51f17d84b992bdc423b3a2fe9f0d`  
		Last Modified: Wed, 16 Sep 2026 03:31:27 GMT  
		Size: 717.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7a9fb5ad4013de85d8c9374c0e4f0e85e08467866288aae7d66f0e7a9f4ea09`  
		Last Modified: Wed, 16 Sep 2026 03:31:28 GMT  
		Size: 555.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8af535add5bbf0066aadde11821117621249e8c859e5b38f8457377a9c7f58de`  
		Last Modified: Wed, 16 Sep 2026 03:31:28 GMT  
		Size: 595.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70f1e9bfd15d7cb516df5d8575503d0485e4002eda82a28902987b3aa439dcb5`  
		Last Modified: Wed, 16 Sep 2026 03:31:30 GMT  
		Size: 876.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19.0` - unknown; unknown

```console
$ docker pull odoo@sha256:5bae321b553dacf17c0df5acb82bff4d509ace91051d08ca0b9f7d34b6e31904
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.5 MB (52467994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ae994215d3021362b1603b95c422960a7db649c22fe601b1e403e1bb30c5e64`

```dockerfile
```

-	Layers:
	-	`sha256:489de92d5954ccdedc66f6d8c1ee616b2d5742b454a477b7ddf95c2f61dd2c9e`  
		Last Modified: Wed, 16 Sep 2026 03:31:29 GMT  
		Size: 52.4 MB (52440339 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5413bfa0439263f3be071520992e3494024c5a4ce2a82fcb1bb5d5f13f612937`  
		Last Modified: Wed, 16 Sep 2026 03:31:26 GMT  
		Size: 27.7 KB (27655 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:19.0` - linux; ppc64le

```console
$ docker pull odoo@sha256:221b12bc589033dd1c565754cff3a16a04e2291387c9a5aad378818f67b116ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **713.9 MB (713923390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b04256af144c7c8d1983752db9d9a0d5ee017753303b8fcb19c618e643edcb6e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Mon, 07 Sep 2026 07:38:39 GMT
ARG RELEASE
# Mon, 07 Sep 2026 07:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 07:38:39 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 07:38:43 GMT
ADD file:b613d8cbbfcdd39316d0cc2ab20f713e42c2ffc939072314f82208cec1f794df in / 
# Mon, 07 Sep 2026 07:38:44 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:55:35 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Wed, 09 Sep 2026 02:55:35 GMT
SHELL [/bin/bash -xo pipefail -c]
# Wed, 09 Sep 2026 02:55:35 GMT
ENV LANG=en_US.UTF-8
# Wed, 09 Sep 2026 02:55:35 GMT
ARG TARGETARCH=ppc64le
# Wed, 09 Sep 2026 02:55:35 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Wed, 09 Sep 2026 02:55:58 GMT
# ARGS: TARGETARCH=ppc64le
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 03:04:21 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 03:04:21 GMT
ENV ODOO_VERSION=19.0
# Wed, 09 Sep 2026 03:04:21 GMT
ARG ODOO_RELEASE=20260908
# Wed, 09 Sep 2026 03:04:21 GMT
ARG ODOO_SHA=df549a99c8a31a89f54b722e57f9c47224852093
# Wed, 09 Sep 2026 03:10:00 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260908 ODOO_SHA=df549a99c8a31a89f54b722e57f9c47224852093
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Wed, 09 Sep 2026 03:10:02 GMT
COPY ./entrypoint.sh / # buildkit
# Wed, 09 Sep 2026 03:10:02 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Wed, 09 Sep 2026 03:10:03 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260908 ODOO_SHA=df549a99c8a31a89f54b722e57f9c47224852093
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Wed, 09 Sep 2026 03:10:03 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 09 Sep 2026 03:10:03 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Wed, 09 Sep 2026 03:10:03 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Wed, 09 Sep 2026 03:10:03 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Wed, 09 Sep 2026 03:10:03 GMT
USER odoo
# Wed, 09 Sep 2026 03:10:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 09 Sep 2026 03:10:03 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:4b9f3660b529a1e81f04825056359c345d486cfb05010302b88737a58d21db86`  
		Last Modified: Mon, 07 Sep 2026 07:57:18 GMT  
		Size: 34.4 MB (34376879 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cac9fb3fff8160571c170becc34818255e5183a9684339a003abd5cbce1954fe`  
		Last Modified: Wed, 09 Sep 2026 03:13:58 GMT  
		Size: 249.4 MB (249392356 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5486cf5cc2fde95b51bcb38d31fde55940cea1bf004c853366661cf030b3fc77`  
		Last Modified: Wed, 09 Sep 2026 03:13:48 GMT  
		Size: 14.7 MB (14744144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad925209a32c7ec305d6467507f1f2773f2106e9774d4b4701b2ad12ccd8832c`  
		Last Modified: Wed, 09 Sep 2026 03:13:47 GMT  
		Size: 870.8 KB (870766 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5964b28d77da676c43309be5452baef7f1f0f5ef84bcc4eed48c237db960cee3`  
		Last Modified: Wed, 09 Sep 2026 03:14:57 GMT  
		Size: 414.5 MB (414536495 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bfa739818875240b54b06bdd7f1e6e1b80a60c8edd503f9f3a8ad0b6aa35763`  
		Last Modified: Wed, 09 Sep 2026 03:14:48 GMT  
		Size: 717.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4cc8be415924c1d236501d3775dd93f05225c83af7baf4bfa7dbdc195e1e00f`  
		Last Modified: Wed, 09 Sep 2026 03:14:48 GMT  
		Size: 557.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df50c1f0539416495bd6d1a03a0d3f1a261f251d6d0b032893ddba50fd09fef7`  
		Last Modified: Wed, 09 Sep 2026 03:14:48 GMT  
		Size: 600.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d36cfa115eedb210c1785004ac891d335f52f7098b24b807f288e40dbf993b09`  
		Last Modified: Wed, 09 Sep 2026 03:14:49 GMT  
		Size: 876.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19.0` - unknown; unknown

```console
$ docker pull odoo@sha256:71e0656a41f87eb101105789bf725cbbc83bd4cfd12bcca8ff9fb0183d87ecf3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.5 MB (52468968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82b8c3a83844688b770aa42a54d15a3a7f403d94b554672941a6175a88b560ae`

```dockerfile
```

-	Layers:
	-	`sha256:ae35b83004654635322055a228a015bc2627c88b180adf401c0728e47e6e8c4a`  
		Last Modified: Wed, 09 Sep 2026 03:14:50 GMT  
		Size: 52.4 MB (52441415 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9b2297b1fdd5355cee2b274fd8cdefbaa119800ecc2c08b40b3a4c5767ff598d`  
		Last Modified: Wed, 09 Sep 2026 03:14:48 GMT  
		Size: 27.6 KB (27553 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:19.0-20260908`

```console
$ docker pull odoo@sha256:78d6d9be11000c6bbe6a34648cc4bdfb445c941f1218e149a8d646cf2c9f70be
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
$ docker pull odoo@sha256:08af340902122af116a92c917359cd8bb411ca6960c0b4877dc636423a8d5b26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **697.6 MB (697563402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:400a621198ea355394df4a328b0f65043ffd1f4e79a5025ba16edf03cb26893d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Fri, 11 Sep 2026 11:44:03 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:44:03 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:44:03 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:44:06 GMT
ADD file:43d479b270bbaf47965cfc86b37f4c517bda83ddefda6f708f98c3b2b7d15396 in / 
# Fri, 11 Sep 2026 11:44:06 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:27:08 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Wed, 16 Sep 2026 03:27:08 GMT
SHELL [/bin/bash -xo pipefail -c]
# Wed, 16 Sep 2026 03:27:08 GMT
ENV LANG=en_US.UTF-8
# Wed, 16 Sep 2026 03:27:08 GMT
ARG TARGETARCH=amd64
# Wed, 16 Sep 2026 03:27:08 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Wed, 16 Sep 2026 03:27:16 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:23 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:23 GMT
ENV ODOO_VERSION=19.0
# Wed, 16 Sep 2026 03:28:23 GMT
ARG ODOO_RELEASE=20260908
# Wed, 16 Sep 2026 03:28:23 GMT
ARG ODOO_SHA=df549a99c8a31a89f54b722e57f9c47224852093
# Wed, 16 Sep 2026 03:29:25 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260908 ODOO_SHA=df549a99c8a31a89f54b722e57f9c47224852093
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Wed, 16 Sep 2026 03:29:25 GMT
COPY ./entrypoint.sh / # buildkit
# Wed, 16 Sep 2026 03:29:25 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Wed, 16 Sep 2026 03:29:26 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260908 ODOO_SHA=df549a99c8a31a89f54b722e57f9c47224852093
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Wed, 16 Sep 2026 03:29:26 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 16 Sep 2026 03:29:26 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Wed, 16 Sep 2026 03:29:26 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Wed, 16 Sep 2026 03:29:26 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Wed, 16 Sep 2026 03:29:26 GMT
USER odoo
# Wed, 16 Sep 2026 03:29:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 16 Sep 2026 03:29:26 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:edd1ed89f0d443580bd42e5a10cd8736aba5a3438b2a0645c2ebb50119bb0eba`  
		Last Modified: Fri, 11 Sep 2026 13:38:39 GMT  
		Size: 29.8 MB (29764116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ea6cab7ef39948744b016296165b4911c332074318e02c82f9b503df66a8118`  
		Last Modified: Wed, 16 Sep 2026 03:31:12 GMT  
		Size: 238.7 MB (238694616 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4abfabe6407432668d7235f2f811f45da5feca43e46c6c33c974fb8aa578c8fe`  
		Last Modified: Wed, 16 Sep 2026 03:31:04 GMT  
		Size: 14.2 MB (14224526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc4c2c5354470621321fc3b8f828bfa8173749a4aa0f850cb90e2a57d369911c`  
		Last Modified: Wed, 16 Sep 2026 03:31:03 GMT  
		Size: 868.8 KB (868844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7c76f4f350d2301d3da92ba0e3d4d261bf80577e10644c5c80ff8071e711762`  
		Last Modified: Wed, 16 Sep 2026 03:31:15 GMT  
		Size: 414.0 MB (414008552 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63378520da57ed0e416928801bf2eb7015af1f41715ac57fbd2e17bc040f16e7`  
		Last Modified: Wed, 16 Sep 2026 03:31:05 GMT  
		Size: 718.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75a35bc48bfafbebcddd60f3beb81a5c3cf730509d350e96471c6505f935c437`  
		Last Modified: Wed, 16 Sep 2026 03:31:05 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:672d8003ede54ab3968b25d5c80c19a196c3f389b4cb9b4a0ba53dac0178e4d5`  
		Last Modified: Wed, 16 Sep 2026 03:31:06 GMT  
		Size: 598.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22b1fb30dcbb5dba377dd6df4eec879a7c38d0031b733dd5be7b0f64bb9309bb`  
		Last Modified: Wed, 16 Sep 2026 03:31:07 GMT  
		Size: 876.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19.0-20260908` - unknown; unknown

```console
$ docker pull odoo@sha256:629c36f9fd80521f9e4c91cba796fef9b8ccc4e7e779df5a624f751119e953d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.5 MB (52460546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d05340e1793a8f59195bffac9107eef65d737193b499138d2192462aeb70334e`

```dockerfile
```

-	Layers:
	-	`sha256:9e4e4d1f57238db7564a1c72644e12826fbd4ca515416f8abb2ffab0e62bf8df`  
		Last Modified: Wed, 16 Sep 2026 03:31:06 GMT  
		Size: 52.4 MB (52433055 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:70c4dfe83ef3c648e4d56d3c5c9279eda4ab22bccdf0b250ccf26c7162bc6cc2`  
		Last Modified: Wed, 16 Sep 2026 03:31:03 GMT  
		Size: 27.5 KB (27491 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:19.0-20260908` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:a25c420ff7c39fc0bf7ca3e5e4426539fc52190da63059884bb8592c4be880fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **694.0 MB (694028808 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55fabe4041a6bd8f3f669a7a67b6ee062cd32b18bb62a43a30087117fc9ee79b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Fri, 11 Sep 2026 11:53:33 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:53:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:53:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:53:37 GMT
ADD file:ff1ce8d2ee022926eb353ff9248358531fbe1661ef12d8784e68fbc52738ed34 in / 
# Fri, 11 Sep 2026 11:53:37 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:27:03 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Wed, 16 Sep 2026 03:27:03 GMT
SHELL [/bin/bash -xo pipefail -c]
# Wed, 16 Sep 2026 03:27:03 GMT
ENV LANG=en_US.UTF-8
# Wed, 16 Sep 2026 03:27:03 GMT
ARG TARGETARCH=arm64
# Wed, 16 Sep 2026 03:27:03 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Wed, 16 Sep 2026 03:27:13 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:17 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:17 GMT
ENV ODOO_VERSION=19.0
# Wed, 16 Sep 2026 03:28:17 GMT
ARG ODOO_RELEASE=20260908
# Wed, 16 Sep 2026 03:28:17 GMT
ARG ODOO_SHA=df549a99c8a31a89f54b722e57f9c47224852093
# Wed, 16 Sep 2026 03:29:28 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260908 ODOO_SHA=df549a99c8a31a89f54b722e57f9c47224852093
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Wed, 16 Sep 2026 03:29:29 GMT
COPY ./entrypoint.sh / # buildkit
# Wed, 16 Sep 2026 03:29:29 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Wed, 16 Sep 2026 03:29:29 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260908 ODOO_SHA=df549a99c8a31a89f54b722e57f9c47224852093
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Wed, 16 Sep 2026 03:29:29 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 16 Sep 2026 03:29:29 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Wed, 16 Sep 2026 03:29:29 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Wed, 16 Sep 2026 03:29:29 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Wed, 16 Sep 2026 03:29:29 GMT
USER odoo
# Wed, 16 Sep 2026 03:29:29 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 16 Sep 2026 03:29:29 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:8a38824eedc553ba80cf1eb7df278a003340f7409fd4b9002bce07db8840a9a2`  
		Last Modified: Fri, 11 Sep 2026 13:38:46 GMT  
		Size: 28.9 MB (28941580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0443f43f89dffe15641449ef145d563290bd9e434ca7ada082712323a997908`  
		Last Modified: Wed, 16 Sep 2026 03:31:35 GMT  
		Size: 236.2 MB (236156201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47e80898467b644af1c76258c1b51d5ef7eb399aedd576b4379be81961deb9b7`  
		Last Modified: Wed, 16 Sep 2026 03:31:27 GMT  
		Size: 14.2 MB (14197880 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fbde4679844e07b2afdce6764ee1a00d42673a2f1ace145a1c03e2da7ecad45`  
		Last Modified: Wed, 16 Sep 2026 03:31:26 GMT  
		Size: 868.8 KB (868756 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d780f5fcaec2b446922301ce3490e1ca60595e1a78d29a960a0e9f7f8e47b971`  
		Last Modified: Wed, 16 Sep 2026 03:31:38 GMT  
		Size: 413.9 MB (413861648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a844a01e217ae9e12681f5154d91ebef32de51f17d84b992bdc423b3a2fe9f0d`  
		Last Modified: Wed, 16 Sep 2026 03:31:27 GMT  
		Size: 717.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7a9fb5ad4013de85d8c9374c0e4f0e85e08467866288aae7d66f0e7a9f4ea09`  
		Last Modified: Wed, 16 Sep 2026 03:31:28 GMT  
		Size: 555.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8af535add5bbf0066aadde11821117621249e8c859e5b38f8457377a9c7f58de`  
		Last Modified: Wed, 16 Sep 2026 03:31:28 GMT  
		Size: 595.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70f1e9bfd15d7cb516df5d8575503d0485e4002eda82a28902987b3aa439dcb5`  
		Last Modified: Wed, 16 Sep 2026 03:31:30 GMT  
		Size: 876.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19.0-20260908` - unknown; unknown

```console
$ docker pull odoo@sha256:5bae321b553dacf17c0df5acb82bff4d509ace91051d08ca0b9f7d34b6e31904
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.5 MB (52467994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ae994215d3021362b1603b95c422960a7db649c22fe601b1e403e1bb30c5e64`

```dockerfile
```

-	Layers:
	-	`sha256:489de92d5954ccdedc66f6d8c1ee616b2d5742b454a477b7ddf95c2f61dd2c9e`  
		Last Modified: Wed, 16 Sep 2026 03:31:29 GMT  
		Size: 52.4 MB (52440339 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5413bfa0439263f3be071520992e3494024c5a4ce2a82fcb1bb5d5f13f612937`  
		Last Modified: Wed, 16 Sep 2026 03:31:26 GMT  
		Size: 27.7 KB (27655 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:19.0-20260908` - linux; ppc64le

```console
$ docker pull odoo@sha256:221b12bc589033dd1c565754cff3a16a04e2291387c9a5aad378818f67b116ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **713.9 MB (713923390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b04256af144c7c8d1983752db9d9a0d5ee017753303b8fcb19c618e643edcb6e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Mon, 07 Sep 2026 07:38:39 GMT
ARG RELEASE
# Mon, 07 Sep 2026 07:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 07:38:39 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 07:38:43 GMT
ADD file:b613d8cbbfcdd39316d0cc2ab20f713e42c2ffc939072314f82208cec1f794df in / 
# Mon, 07 Sep 2026 07:38:44 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:55:35 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Wed, 09 Sep 2026 02:55:35 GMT
SHELL [/bin/bash -xo pipefail -c]
# Wed, 09 Sep 2026 02:55:35 GMT
ENV LANG=en_US.UTF-8
# Wed, 09 Sep 2026 02:55:35 GMT
ARG TARGETARCH=ppc64le
# Wed, 09 Sep 2026 02:55:35 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Wed, 09 Sep 2026 02:55:58 GMT
# ARGS: TARGETARCH=ppc64le
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 03:04:21 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 03:04:21 GMT
ENV ODOO_VERSION=19.0
# Wed, 09 Sep 2026 03:04:21 GMT
ARG ODOO_RELEASE=20260908
# Wed, 09 Sep 2026 03:04:21 GMT
ARG ODOO_SHA=df549a99c8a31a89f54b722e57f9c47224852093
# Wed, 09 Sep 2026 03:10:00 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260908 ODOO_SHA=df549a99c8a31a89f54b722e57f9c47224852093
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Wed, 09 Sep 2026 03:10:02 GMT
COPY ./entrypoint.sh / # buildkit
# Wed, 09 Sep 2026 03:10:02 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Wed, 09 Sep 2026 03:10:03 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260908 ODOO_SHA=df549a99c8a31a89f54b722e57f9c47224852093
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Wed, 09 Sep 2026 03:10:03 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 09 Sep 2026 03:10:03 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Wed, 09 Sep 2026 03:10:03 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Wed, 09 Sep 2026 03:10:03 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Wed, 09 Sep 2026 03:10:03 GMT
USER odoo
# Wed, 09 Sep 2026 03:10:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 09 Sep 2026 03:10:03 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:4b9f3660b529a1e81f04825056359c345d486cfb05010302b88737a58d21db86`  
		Last Modified: Mon, 07 Sep 2026 07:57:18 GMT  
		Size: 34.4 MB (34376879 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cac9fb3fff8160571c170becc34818255e5183a9684339a003abd5cbce1954fe`  
		Last Modified: Wed, 09 Sep 2026 03:13:58 GMT  
		Size: 249.4 MB (249392356 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5486cf5cc2fde95b51bcb38d31fde55940cea1bf004c853366661cf030b3fc77`  
		Last Modified: Wed, 09 Sep 2026 03:13:48 GMT  
		Size: 14.7 MB (14744144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad925209a32c7ec305d6467507f1f2773f2106e9774d4b4701b2ad12ccd8832c`  
		Last Modified: Wed, 09 Sep 2026 03:13:47 GMT  
		Size: 870.8 KB (870766 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5964b28d77da676c43309be5452baef7f1f0f5ef84bcc4eed48c237db960cee3`  
		Last Modified: Wed, 09 Sep 2026 03:14:57 GMT  
		Size: 414.5 MB (414536495 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bfa739818875240b54b06bdd7f1e6e1b80a60c8edd503f9f3a8ad0b6aa35763`  
		Last Modified: Wed, 09 Sep 2026 03:14:48 GMT  
		Size: 717.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4cc8be415924c1d236501d3775dd93f05225c83af7baf4bfa7dbdc195e1e00f`  
		Last Modified: Wed, 09 Sep 2026 03:14:48 GMT  
		Size: 557.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df50c1f0539416495bd6d1a03a0d3f1a261f251d6d0b032893ddba50fd09fef7`  
		Last Modified: Wed, 09 Sep 2026 03:14:48 GMT  
		Size: 600.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d36cfa115eedb210c1785004ac891d335f52f7098b24b807f288e40dbf993b09`  
		Last Modified: Wed, 09 Sep 2026 03:14:49 GMT  
		Size: 876.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19.0-20260908` - unknown; unknown

```console
$ docker pull odoo@sha256:71e0656a41f87eb101105789bf725cbbc83bd4cfd12bcca8ff9fb0183d87ecf3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.5 MB (52468968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82b8c3a83844688b770aa42a54d15a3a7f403d94b554672941a6175a88b560ae`

```dockerfile
```

-	Layers:
	-	`sha256:ae35b83004654635322055a228a015bc2627c88b180adf401c0728e47e6e8c4a`  
		Last Modified: Wed, 09 Sep 2026 03:14:50 GMT  
		Size: 52.4 MB (52441415 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9b2297b1fdd5355cee2b274fd8cdefbaa119800ecc2c08b40b3a4c5767ff598d`  
		Last Modified: Wed, 09 Sep 2026 03:14:48 GMT  
		Size: 27.6 KB (27553 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:latest`

```console
$ docker pull odoo@sha256:78d6d9be11000c6bbe6a34648cc4bdfb445c941f1218e149a8d646cf2c9f70be
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
$ docker pull odoo@sha256:08af340902122af116a92c917359cd8bb411ca6960c0b4877dc636423a8d5b26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **697.6 MB (697563402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:400a621198ea355394df4a328b0f65043ffd1f4e79a5025ba16edf03cb26893d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Fri, 11 Sep 2026 11:44:03 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:44:03 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:44:03 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:44:06 GMT
ADD file:43d479b270bbaf47965cfc86b37f4c517bda83ddefda6f708f98c3b2b7d15396 in / 
# Fri, 11 Sep 2026 11:44:06 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:27:08 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Wed, 16 Sep 2026 03:27:08 GMT
SHELL [/bin/bash -xo pipefail -c]
# Wed, 16 Sep 2026 03:27:08 GMT
ENV LANG=en_US.UTF-8
# Wed, 16 Sep 2026 03:27:08 GMT
ARG TARGETARCH=amd64
# Wed, 16 Sep 2026 03:27:08 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Wed, 16 Sep 2026 03:27:16 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:23 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:23 GMT
ENV ODOO_VERSION=19.0
# Wed, 16 Sep 2026 03:28:23 GMT
ARG ODOO_RELEASE=20260908
# Wed, 16 Sep 2026 03:28:23 GMT
ARG ODOO_SHA=df549a99c8a31a89f54b722e57f9c47224852093
# Wed, 16 Sep 2026 03:29:25 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260908 ODOO_SHA=df549a99c8a31a89f54b722e57f9c47224852093
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Wed, 16 Sep 2026 03:29:25 GMT
COPY ./entrypoint.sh / # buildkit
# Wed, 16 Sep 2026 03:29:25 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Wed, 16 Sep 2026 03:29:26 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260908 ODOO_SHA=df549a99c8a31a89f54b722e57f9c47224852093
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Wed, 16 Sep 2026 03:29:26 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 16 Sep 2026 03:29:26 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Wed, 16 Sep 2026 03:29:26 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Wed, 16 Sep 2026 03:29:26 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Wed, 16 Sep 2026 03:29:26 GMT
USER odoo
# Wed, 16 Sep 2026 03:29:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 16 Sep 2026 03:29:26 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:edd1ed89f0d443580bd42e5a10cd8736aba5a3438b2a0645c2ebb50119bb0eba`  
		Last Modified: Fri, 11 Sep 2026 13:38:39 GMT  
		Size: 29.8 MB (29764116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ea6cab7ef39948744b016296165b4911c332074318e02c82f9b503df66a8118`  
		Last Modified: Wed, 16 Sep 2026 03:31:12 GMT  
		Size: 238.7 MB (238694616 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4abfabe6407432668d7235f2f811f45da5feca43e46c6c33c974fb8aa578c8fe`  
		Last Modified: Wed, 16 Sep 2026 03:31:04 GMT  
		Size: 14.2 MB (14224526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc4c2c5354470621321fc3b8f828bfa8173749a4aa0f850cb90e2a57d369911c`  
		Last Modified: Wed, 16 Sep 2026 03:31:03 GMT  
		Size: 868.8 KB (868844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7c76f4f350d2301d3da92ba0e3d4d261bf80577e10644c5c80ff8071e711762`  
		Last Modified: Wed, 16 Sep 2026 03:31:15 GMT  
		Size: 414.0 MB (414008552 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63378520da57ed0e416928801bf2eb7015af1f41715ac57fbd2e17bc040f16e7`  
		Last Modified: Wed, 16 Sep 2026 03:31:05 GMT  
		Size: 718.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75a35bc48bfafbebcddd60f3beb81a5c3cf730509d350e96471c6505f935c437`  
		Last Modified: Wed, 16 Sep 2026 03:31:05 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:672d8003ede54ab3968b25d5c80c19a196c3f389b4cb9b4a0ba53dac0178e4d5`  
		Last Modified: Wed, 16 Sep 2026 03:31:06 GMT  
		Size: 598.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22b1fb30dcbb5dba377dd6df4eec879a7c38d0031b733dd5be7b0f64bb9309bb`  
		Last Modified: Wed, 16 Sep 2026 03:31:07 GMT  
		Size: 876.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:latest` - unknown; unknown

```console
$ docker pull odoo@sha256:629c36f9fd80521f9e4c91cba796fef9b8ccc4e7e779df5a624f751119e953d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.5 MB (52460546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d05340e1793a8f59195bffac9107eef65d737193b499138d2192462aeb70334e`

```dockerfile
```

-	Layers:
	-	`sha256:9e4e4d1f57238db7564a1c72644e12826fbd4ca515416f8abb2ffab0e62bf8df`  
		Last Modified: Wed, 16 Sep 2026 03:31:06 GMT  
		Size: 52.4 MB (52433055 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:70c4dfe83ef3c648e4d56d3c5c9279eda4ab22bccdf0b250ccf26c7162bc6cc2`  
		Last Modified: Wed, 16 Sep 2026 03:31:03 GMT  
		Size: 27.5 KB (27491 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:latest` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:a25c420ff7c39fc0bf7ca3e5e4426539fc52190da63059884bb8592c4be880fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **694.0 MB (694028808 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55fabe4041a6bd8f3f669a7a67b6ee062cd32b18bb62a43a30087117fc9ee79b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Fri, 11 Sep 2026 11:53:33 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:53:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:53:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:53:37 GMT
ADD file:ff1ce8d2ee022926eb353ff9248358531fbe1661ef12d8784e68fbc52738ed34 in / 
# Fri, 11 Sep 2026 11:53:37 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:27:03 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Wed, 16 Sep 2026 03:27:03 GMT
SHELL [/bin/bash -xo pipefail -c]
# Wed, 16 Sep 2026 03:27:03 GMT
ENV LANG=en_US.UTF-8
# Wed, 16 Sep 2026 03:27:03 GMT
ARG TARGETARCH=arm64
# Wed, 16 Sep 2026 03:27:03 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Wed, 16 Sep 2026 03:27:13 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:17 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:28:17 GMT
ENV ODOO_VERSION=19.0
# Wed, 16 Sep 2026 03:28:17 GMT
ARG ODOO_RELEASE=20260908
# Wed, 16 Sep 2026 03:28:17 GMT
ARG ODOO_SHA=df549a99c8a31a89f54b722e57f9c47224852093
# Wed, 16 Sep 2026 03:29:28 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260908 ODOO_SHA=df549a99c8a31a89f54b722e57f9c47224852093
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Wed, 16 Sep 2026 03:29:29 GMT
COPY ./entrypoint.sh / # buildkit
# Wed, 16 Sep 2026 03:29:29 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Wed, 16 Sep 2026 03:29:29 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260908 ODOO_SHA=df549a99c8a31a89f54b722e57f9c47224852093
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Wed, 16 Sep 2026 03:29:29 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 16 Sep 2026 03:29:29 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Wed, 16 Sep 2026 03:29:29 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Wed, 16 Sep 2026 03:29:29 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Wed, 16 Sep 2026 03:29:29 GMT
USER odoo
# Wed, 16 Sep 2026 03:29:29 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 16 Sep 2026 03:29:29 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:8a38824eedc553ba80cf1eb7df278a003340f7409fd4b9002bce07db8840a9a2`  
		Last Modified: Fri, 11 Sep 2026 13:38:46 GMT  
		Size: 28.9 MB (28941580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0443f43f89dffe15641449ef145d563290bd9e434ca7ada082712323a997908`  
		Last Modified: Wed, 16 Sep 2026 03:31:35 GMT  
		Size: 236.2 MB (236156201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47e80898467b644af1c76258c1b51d5ef7eb399aedd576b4379be81961deb9b7`  
		Last Modified: Wed, 16 Sep 2026 03:31:27 GMT  
		Size: 14.2 MB (14197880 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fbde4679844e07b2afdce6764ee1a00d42673a2f1ace145a1c03e2da7ecad45`  
		Last Modified: Wed, 16 Sep 2026 03:31:26 GMT  
		Size: 868.8 KB (868756 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d780f5fcaec2b446922301ce3490e1ca60595e1a78d29a960a0e9f7f8e47b971`  
		Last Modified: Wed, 16 Sep 2026 03:31:38 GMT  
		Size: 413.9 MB (413861648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a844a01e217ae9e12681f5154d91ebef32de51f17d84b992bdc423b3a2fe9f0d`  
		Last Modified: Wed, 16 Sep 2026 03:31:27 GMT  
		Size: 717.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7a9fb5ad4013de85d8c9374c0e4f0e85e08467866288aae7d66f0e7a9f4ea09`  
		Last Modified: Wed, 16 Sep 2026 03:31:28 GMT  
		Size: 555.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8af535add5bbf0066aadde11821117621249e8c859e5b38f8457377a9c7f58de`  
		Last Modified: Wed, 16 Sep 2026 03:31:28 GMT  
		Size: 595.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70f1e9bfd15d7cb516df5d8575503d0485e4002eda82a28902987b3aa439dcb5`  
		Last Modified: Wed, 16 Sep 2026 03:31:30 GMT  
		Size: 876.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:latest` - unknown; unknown

```console
$ docker pull odoo@sha256:5bae321b553dacf17c0df5acb82bff4d509ace91051d08ca0b9f7d34b6e31904
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.5 MB (52467994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ae994215d3021362b1603b95c422960a7db649c22fe601b1e403e1bb30c5e64`

```dockerfile
```

-	Layers:
	-	`sha256:489de92d5954ccdedc66f6d8c1ee616b2d5742b454a477b7ddf95c2f61dd2c9e`  
		Last Modified: Wed, 16 Sep 2026 03:31:29 GMT  
		Size: 52.4 MB (52440339 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5413bfa0439263f3be071520992e3494024c5a4ce2a82fcb1bb5d5f13f612937`  
		Last Modified: Wed, 16 Sep 2026 03:31:26 GMT  
		Size: 27.7 KB (27655 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:latest` - linux; ppc64le

```console
$ docker pull odoo@sha256:221b12bc589033dd1c565754cff3a16a04e2291387c9a5aad378818f67b116ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **713.9 MB (713923390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b04256af144c7c8d1983752db9d9a0d5ee017753303b8fcb19c618e643edcb6e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Mon, 07 Sep 2026 07:38:39 GMT
ARG RELEASE
# Mon, 07 Sep 2026 07:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 07:38:39 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 07:38:43 GMT
ADD file:b613d8cbbfcdd39316d0cc2ab20f713e42c2ffc939072314f82208cec1f794df in / 
# Mon, 07 Sep 2026 07:38:44 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:55:35 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Wed, 09 Sep 2026 02:55:35 GMT
SHELL [/bin/bash -xo pipefail -c]
# Wed, 09 Sep 2026 02:55:35 GMT
ENV LANG=en_US.UTF-8
# Wed, 09 Sep 2026 02:55:35 GMT
ARG TARGETARCH=ppc64le
# Wed, 09 Sep 2026 02:55:35 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Wed, 09 Sep 2026 02:55:58 GMT
# ARGS: TARGETARCH=ppc64le
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 03:04:21 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 03:04:21 GMT
ENV ODOO_VERSION=19.0
# Wed, 09 Sep 2026 03:04:21 GMT
ARG ODOO_RELEASE=20260908
# Wed, 09 Sep 2026 03:04:21 GMT
ARG ODOO_SHA=df549a99c8a31a89f54b722e57f9c47224852093
# Wed, 09 Sep 2026 03:10:00 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260908 ODOO_SHA=df549a99c8a31a89f54b722e57f9c47224852093
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Wed, 09 Sep 2026 03:10:02 GMT
COPY ./entrypoint.sh / # buildkit
# Wed, 09 Sep 2026 03:10:02 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Wed, 09 Sep 2026 03:10:03 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260908 ODOO_SHA=df549a99c8a31a89f54b722e57f9c47224852093
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Wed, 09 Sep 2026 03:10:03 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 09 Sep 2026 03:10:03 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Wed, 09 Sep 2026 03:10:03 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Wed, 09 Sep 2026 03:10:03 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Wed, 09 Sep 2026 03:10:03 GMT
USER odoo
# Wed, 09 Sep 2026 03:10:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 09 Sep 2026 03:10:03 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:4b9f3660b529a1e81f04825056359c345d486cfb05010302b88737a58d21db86`  
		Last Modified: Mon, 07 Sep 2026 07:57:18 GMT  
		Size: 34.4 MB (34376879 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cac9fb3fff8160571c170becc34818255e5183a9684339a003abd5cbce1954fe`  
		Last Modified: Wed, 09 Sep 2026 03:13:58 GMT  
		Size: 249.4 MB (249392356 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5486cf5cc2fde95b51bcb38d31fde55940cea1bf004c853366661cf030b3fc77`  
		Last Modified: Wed, 09 Sep 2026 03:13:48 GMT  
		Size: 14.7 MB (14744144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad925209a32c7ec305d6467507f1f2773f2106e9774d4b4701b2ad12ccd8832c`  
		Last Modified: Wed, 09 Sep 2026 03:13:47 GMT  
		Size: 870.8 KB (870766 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5964b28d77da676c43309be5452baef7f1f0f5ef84bcc4eed48c237db960cee3`  
		Last Modified: Wed, 09 Sep 2026 03:14:57 GMT  
		Size: 414.5 MB (414536495 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bfa739818875240b54b06bdd7f1e6e1b80a60c8edd503f9f3a8ad0b6aa35763`  
		Last Modified: Wed, 09 Sep 2026 03:14:48 GMT  
		Size: 717.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4cc8be415924c1d236501d3775dd93f05225c83af7baf4bfa7dbdc195e1e00f`  
		Last Modified: Wed, 09 Sep 2026 03:14:48 GMT  
		Size: 557.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df50c1f0539416495bd6d1a03a0d3f1a261f251d6d0b032893ddba50fd09fef7`  
		Last Modified: Wed, 09 Sep 2026 03:14:48 GMT  
		Size: 600.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d36cfa115eedb210c1785004ac891d335f52f7098b24b807f288e40dbf993b09`  
		Last Modified: Wed, 09 Sep 2026 03:14:49 GMT  
		Size: 876.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:latest` - unknown; unknown

```console
$ docker pull odoo@sha256:71e0656a41f87eb101105789bf725cbbc83bd4cfd12bcca8ff9fb0183d87ecf3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.5 MB (52468968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82b8c3a83844688b770aa42a54d15a3a7f403d94b554672941a6175a88b560ae`

```dockerfile
```

-	Layers:
	-	`sha256:ae35b83004654635322055a228a015bc2627c88b180adf401c0728e47e6e8c4a`  
		Last Modified: Wed, 09 Sep 2026 03:14:50 GMT  
		Size: 52.4 MB (52441415 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9b2297b1fdd5355cee2b274fd8cdefbaa119800ecc2c08b40b3a4c5767ff598d`  
		Last Modified: Wed, 09 Sep 2026 03:14:48 GMT  
		Size: 27.6 KB (27553 bytes)  
		MIME: application/vnd.in-toto+json
