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
$ docker pull odoo@sha256:c01e5bc381f087a3be2800d65cff8ad51ab0709dc54c3b81cd9b0d6c9b3a4d77
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
$ docker pull odoo@sha256:2c9637b51f0ca5df93e18bc1859372845996dc789c4a791d40b9406ad72466e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **674.0 MB (673997993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:044d4b2fb096b293a5131788896252e9eae4ab985f445fd4a300fa117342673b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Mon, 07 Sep 2026 06:58:02 GMT
ARG RELEASE
# Mon, 07 Sep 2026 06:58:02 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 06:58:02 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 06:58:04 GMT
ADD file:de4937ce3dfc7c89f05f1503c52434f0a631ac84995f0df65eed0754e5c97d48 in / 
# Mon, 07 Sep 2026 06:58:04 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:35:18 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Wed, 09 Sep 2026 02:35:18 GMT
SHELL [/bin/bash -xo pipefail -c]
# Wed, 09 Sep 2026 02:35:18 GMT
ENV LANG=en_US.UTF-8
# Wed, 09 Sep 2026 02:35:18 GMT
ARG TARGETARCH=amd64
# Wed, 09 Sep 2026 02:35:18 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Wed, 09 Sep 2026 02:35:26 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:36:52 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:36:52 GMT
ENV ODOO_VERSION=18.0
# Wed, 09 Sep 2026 02:36:52 GMT
ARG ODOO_RELEASE=20260908
# Wed, 09 Sep 2026 02:36:52 GMT
ARG ODOO_SHA=4f5862fd0a33630abbfc855ce2b5f21caea6a4fb
# Wed, 09 Sep 2026 02:37:48 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260908 ODOO_SHA=4f5862fd0a33630abbfc855ce2b5f21caea6a4fb
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Wed, 09 Sep 2026 02:37:48 GMT
COPY ./entrypoint.sh / # buildkit
# Wed, 09 Sep 2026 02:37:48 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Wed, 09 Sep 2026 02:37:48 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260908 ODOO_SHA=4f5862fd0a33630abbfc855ce2b5f21caea6a4fb
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Wed, 09 Sep 2026 02:37:48 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 09 Sep 2026 02:37:48 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Wed, 09 Sep 2026 02:37:48 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Wed, 09 Sep 2026 02:37:48 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Wed, 09 Sep 2026 02:37:48 GMT
USER odoo
# Wed, 09 Sep 2026 02:37:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 09 Sep 2026 02:37:48 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:e51aee9c82ec5dd5ba2add49c45c6d85d460512757e2615b69bcdf9469c7cb58`  
		Last Modified: Mon, 07 Sep 2026 07:56:53 GMT  
		Size: 29.8 MB (29763253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e0d0fb5d6ac73b7f46e744c49cc4ad8b71d958b0a6c33a0bab487293d6af4ab`  
		Last Modified: Wed, 09 Sep 2026 02:39:23 GMT  
		Size: 238.7 MB (238691258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a485681844b01deb8518207258a5c926e96d4b9adaf58b58e7a8470b16070ed`  
		Last Modified: Wed, 09 Sep 2026 02:39:13 GMT  
		Size: 14.2 MB (14224002 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a18357ab0990c9bc01d38a5aff0e6ee2da880965286f4791181b852ebbda43f`  
		Last Modified: Wed, 09 Sep 2026 02:39:11 GMT  
		Size: 868.7 KB (868693 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b42de71f9c793b964d1abf9ce63686226ee2313b81685f0dcf6eaa86bf470aa3`  
		Last Modified: Wed, 09 Sep 2026 02:39:27 GMT  
		Size: 390.4 MB (390447991 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2c239c11398352a0f675a789835bf7df949ce88f7969e769a9a0543b376b5f2`  
		Last Modified: Wed, 09 Sep 2026 02:39:13 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a3676469b0a8b409bbc037755ffd334f7168e8d8fead33ea5b1084497d07779`  
		Last Modified: Wed, 09 Sep 2026 02:39:14 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55b64817571312c5e164a797379df129fd7bf57c6fdfedb20497497c126aabfb`  
		Last Modified: Wed, 09 Sep 2026 02:39:14 GMT  
		Size: 595.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b1fdb218e58e2f54cb3b21257e820dd712196c19c60f009593ebba78884c347`  
		Last Modified: Wed, 09 Sep 2026 02:39:15 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18` - unknown; unknown

```console
$ docker pull odoo@sha256:4813e08f46f74ef07a62ea9903d3a865f7e662971d79ae17ecb6627a618a9112
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.9 MB (43926492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c857249544ea227c964d1b67dd48d99efab01ea0c087a81acc64e055cdbf1726`

```dockerfile
```

-	Layers:
	-	`sha256:6725af4e73b4101b3c4b170b71855ce44236322381754fd4de5d6fb2aaea9140`  
		Last Modified: Wed, 09 Sep 2026 02:39:14 GMT  
		Size: 43.9 MB (43899295 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:14525ce8c5480644ede5ec4ed191ae50de37d7de20bd1f42e47ac769abec2d1f`  
		Last Modified: Wed, 09 Sep 2026 02:39:11 GMT  
		Size: 27.2 KB (27197 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:18` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:17da5dcc75aa9828c68540146b92133d8c70b9f013ca980e1ad445e2b1231225
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **670.4 MB (670447917 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46ba828d1099bb254589eba7614804c533991005e47a94c463cc701bfb998c8d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Mon, 07 Sep 2026 06:57:57 GMT
ARG RELEASE
# Mon, 07 Sep 2026 06:57:57 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 06:57:57 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 06:58:01 GMT
ADD file:06e064cbfe0750594affea730437107320bdf1e36232c304b900eaa55f88a633 in / 
# Mon, 07 Sep 2026 06:58:01 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:31:21 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Wed, 09 Sep 2026 02:31:21 GMT
SHELL [/bin/bash -xo pipefail -c]
# Wed, 09 Sep 2026 02:31:21 GMT
ENV LANG=en_US.UTF-8
# Wed, 09 Sep 2026 02:31:21 GMT
ARG TARGETARCH=arm64
# Wed, 09 Sep 2026 02:31:21 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Wed, 09 Sep 2026 02:31:32 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:32:33 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:32:33 GMT
ENV ODOO_VERSION=18.0
# Wed, 09 Sep 2026 02:32:33 GMT
ARG ODOO_RELEASE=20260908
# Wed, 09 Sep 2026 02:32:33 GMT
ARG ODOO_SHA=4f5862fd0a33630abbfc855ce2b5f21caea6a4fb
# Wed, 09 Sep 2026 02:33:27 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260908 ODOO_SHA=4f5862fd0a33630abbfc855ce2b5f21caea6a4fb
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Wed, 09 Sep 2026 02:33:28 GMT
COPY ./entrypoint.sh / # buildkit
# Wed, 09 Sep 2026 02:33:28 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Wed, 09 Sep 2026 02:33:28 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260908 ODOO_SHA=4f5862fd0a33630abbfc855ce2b5f21caea6a4fb
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Wed, 09 Sep 2026 02:33:28 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 09 Sep 2026 02:33:28 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Wed, 09 Sep 2026 02:33:28 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Wed, 09 Sep 2026 02:33:28 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Wed, 09 Sep 2026 02:33:28 GMT
USER odoo
# Wed, 09 Sep 2026 02:33:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 09 Sep 2026 02:33:28 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:9332cde1e07015fd0f14e769fc74ea901a957e3f62a76de66638f99854867dd2`  
		Last Modified: Mon, 07 Sep 2026 07:57:03 GMT  
		Size: 28.9 MB (28940015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a310961477569fea8de3da395f1495d97cc7032118502d882fe05e97b01bbec`  
		Last Modified: Wed, 09 Sep 2026 02:35:04 GMT  
		Size: 236.2 MB (236154174 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5068bada569aee0253d4482a5f6f74b491f6b60f02d014aa27bc8b1cb5e0c2ca`  
		Last Modified: Wed, 09 Sep 2026 02:34:56 GMT  
		Size: 14.2 MB (14197845 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ca57ad5dafc9d5746c220855048520ca93840f01191117c7a4aa56d7fd4b9af`  
		Last Modified: Wed, 09 Sep 2026 02:34:54 GMT  
		Size: 868.8 KB (868805 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12aa998a7a666b43b27984807292e6a65d3f3bbc20ec6949ee11db04a3ff5eff`  
		Last Modified: Wed, 09 Sep 2026 02:35:07 GMT  
		Size: 390.3 MB (390284283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a372d787369ff9437bc63ad9784328cbcd9b98724936add68688ee1c4396abe`  
		Last Modified: Wed, 09 Sep 2026 02:34:56 GMT  
		Size: 766.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58fb9a6a46d98d56e776681b36a94ebe4460b9892f20a61c032d4bcae910f973`  
		Last Modified: Wed, 09 Sep 2026 02:34:57 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c90c053aa0f12e02627a15b5e669d824782f4ecb67f8f44f009c425d3a4c8bbe`  
		Last Modified: Wed, 09 Sep 2026 02:34:57 GMT  
		Size: 595.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68a424acc83d6a04509a8bd9edead87cde080901854cbacb8f468831c4704c7d`  
		Last Modified: Wed, 09 Sep 2026 02:34:58 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18` - unknown; unknown

```console
$ docker pull odoo@sha256:42050e2ea8ce77c7695b2bf4612b5407d8bcc2f88879c13b7ca84ba0ee6556db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.9 MB (43933916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd06fde74976719bc0b40091d954d1bceb98c33bac2f95ad3d2fa36776c68d1a`

```dockerfile
```

-	Layers:
	-	`sha256:3de7a802f8b466a1931478e01cb411980b384da71af1474006e2d4587c8b3aa2`  
		Last Modified: Wed, 09 Sep 2026 02:34:58 GMT  
		Size: 43.9 MB (43906567 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:663d67e27c9cd73edd253b01801d36530f0244cb4419e36d5b640e93fb25c4e3`  
		Last Modified: Wed, 09 Sep 2026 02:34:54 GMT  
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
$ docker pull odoo@sha256:c01e5bc381f087a3be2800d65cff8ad51ab0709dc54c3b81cd9b0d6c9b3a4d77
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
$ docker pull odoo@sha256:2c9637b51f0ca5df93e18bc1859372845996dc789c4a791d40b9406ad72466e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **674.0 MB (673997993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:044d4b2fb096b293a5131788896252e9eae4ab985f445fd4a300fa117342673b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Mon, 07 Sep 2026 06:58:02 GMT
ARG RELEASE
# Mon, 07 Sep 2026 06:58:02 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 06:58:02 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 06:58:04 GMT
ADD file:de4937ce3dfc7c89f05f1503c52434f0a631ac84995f0df65eed0754e5c97d48 in / 
# Mon, 07 Sep 2026 06:58:04 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:35:18 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Wed, 09 Sep 2026 02:35:18 GMT
SHELL [/bin/bash -xo pipefail -c]
# Wed, 09 Sep 2026 02:35:18 GMT
ENV LANG=en_US.UTF-8
# Wed, 09 Sep 2026 02:35:18 GMT
ARG TARGETARCH=amd64
# Wed, 09 Sep 2026 02:35:18 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Wed, 09 Sep 2026 02:35:26 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:36:52 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:36:52 GMT
ENV ODOO_VERSION=18.0
# Wed, 09 Sep 2026 02:36:52 GMT
ARG ODOO_RELEASE=20260908
# Wed, 09 Sep 2026 02:36:52 GMT
ARG ODOO_SHA=4f5862fd0a33630abbfc855ce2b5f21caea6a4fb
# Wed, 09 Sep 2026 02:37:48 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260908 ODOO_SHA=4f5862fd0a33630abbfc855ce2b5f21caea6a4fb
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Wed, 09 Sep 2026 02:37:48 GMT
COPY ./entrypoint.sh / # buildkit
# Wed, 09 Sep 2026 02:37:48 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Wed, 09 Sep 2026 02:37:48 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260908 ODOO_SHA=4f5862fd0a33630abbfc855ce2b5f21caea6a4fb
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Wed, 09 Sep 2026 02:37:48 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 09 Sep 2026 02:37:48 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Wed, 09 Sep 2026 02:37:48 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Wed, 09 Sep 2026 02:37:48 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Wed, 09 Sep 2026 02:37:48 GMT
USER odoo
# Wed, 09 Sep 2026 02:37:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 09 Sep 2026 02:37:48 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:e51aee9c82ec5dd5ba2add49c45c6d85d460512757e2615b69bcdf9469c7cb58`  
		Last Modified: Mon, 07 Sep 2026 07:56:53 GMT  
		Size: 29.8 MB (29763253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e0d0fb5d6ac73b7f46e744c49cc4ad8b71d958b0a6c33a0bab487293d6af4ab`  
		Last Modified: Wed, 09 Sep 2026 02:39:23 GMT  
		Size: 238.7 MB (238691258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a485681844b01deb8518207258a5c926e96d4b9adaf58b58e7a8470b16070ed`  
		Last Modified: Wed, 09 Sep 2026 02:39:13 GMT  
		Size: 14.2 MB (14224002 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a18357ab0990c9bc01d38a5aff0e6ee2da880965286f4791181b852ebbda43f`  
		Last Modified: Wed, 09 Sep 2026 02:39:11 GMT  
		Size: 868.7 KB (868693 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b42de71f9c793b964d1abf9ce63686226ee2313b81685f0dcf6eaa86bf470aa3`  
		Last Modified: Wed, 09 Sep 2026 02:39:27 GMT  
		Size: 390.4 MB (390447991 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2c239c11398352a0f675a789835bf7df949ce88f7969e769a9a0543b376b5f2`  
		Last Modified: Wed, 09 Sep 2026 02:39:13 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a3676469b0a8b409bbc037755ffd334f7168e8d8fead33ea5b1084497d07779`  
		Last Modified: Wed, 09 Sep 2026 02:39:14 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55b64817571312c5e164a797379df129fd7bf57c6fdfedb20497497c126aabfb`  
		Last Modified: Wed, 09 Sep 2026 02:39:14 GMT  
		Size: 595.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b1fdb218e58e2f54cb3b21257e820dd712196c19c60f009593ebba78884c347`  
		Last Modified: Wed, 09 Sep 2026 02:39:15 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18.0` - unknown; unknown

```console
$ docker pull odoo@sha256:4813e08f46f74ef07a62ea9903d3a865f7e662971d79ae17ecb6627a618a9112
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.9 MB (43926492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c857249544ea227c964d1b67dd48d99efab01ea0c087a81acc64e055cdbf1726`

```dockerfile
```

-	Layers:
	-	`sha256:6725af4e73b4101b3c4b170b71855ce44236322381754fd4de5d6fb2aaea9140`  
		Last Modified: Wed, 09 Sep 2026 02:39:14 GMT  
		Size: 43.9 MB (43899295 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:14525ce8c5480644ede5ec4ed191ae50de37d7de20bd1f42e47ac769abec2d1f`  
		Last Modified: Wed, 09 Sep 2026 02:39:11 GMT  
		Size: 27.2 KB (27197 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:18.0` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:17da5dcc75aa9828c68540146b92133d8c70b9f013ca980e1ad445e2b1231225
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **670.4 MB (670447917 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46ba828d1099bb254589eba7614804c533991005e47a94c463cc701bfb998c8d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Mon, 07 Sep 2026 06:57:57 GMT
ARG RELEASE
# Mon, 07 Sep 2026 06:57:57 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 06:57:57 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 06:58:01 GMT
ADD file:06e064cbfe0750594affea730437107320bdf1e36232c304b900eaa55f88a633 in / 
# Mon, 07 Sep 2026 06:58:01 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:31:21 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Wed, 09 Sep 2026 02:31:21 GMT
SHELL [/bin/bash -xo pipefail -c]
# Wed, 09 Sep 2026 02:31:21 GMT
ENV LANG=en_US.UTF-8
# Wed, 09 Sep 2026 02:31:21 GMT
ARG TARGETARCH=arm64
# Wed, 09 Sep 2026 02:31:21 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Wed, 09 Sep 2026 02:31:32 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:32:33 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:32:33 GMT
ENV ODOO_VERSION=18.0
# Wed, 09 Sep 2026 02:32:33 GMT
ARG ODOO_RELEASE=20260908
# Wed, 09 Sep 2026 02:32:33 GMT
ARG ODOO_SHA=4f5862fd0a33630abbfc855ce2b5f21caea6a4fb
# Wed, 09 Sep 2026 02:33:27 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260908 ODOO_SHA=4f5862fd0a33630abbfc855ce2b5f21caea6a4fb
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Wed, 09 Sep 2026 02:33:28 GMT
COPY ./entrypoint.sh / # buildkit
# Wed, 09 Sep 2026 02:33:28 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Wed, 09 Sep 2026 02:33:28 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260908 ODOO_SHA=4f5862fd0a33630abbfc855ce2b5f21caea6a4fb
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Wed, 09 Sep 2026 02:33:28 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 09 Sep 2026 02:33:28 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Wed, 09 Sep 2026 02:33:28 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Wed, 09 Sep 2026 02:33:28 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Wed, 09 Sep 2026 02:33:28 GMT
USER odoo
# Wed, 09 Sep 2026 02:33:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 09 Sep 2026 02:33:28 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:9332cde1e07015fd0f14e769fc74ea901a957e3f62a76de66638f99854867dd2`  
		Last Modified: Mon, 07 Sep 2026 07:57:03 GMT  
		Size: 28.9 MB (28940015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a310961477569fea8de3da395f1495d97cc7032118502d882fe05e97b01bbec`  
		Last Modified: Wed, 09 Sep 2026 02:35:04 GMT  
		Size: 236.2 MB (236154174 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5068bada569aee0253d4482a5f6f74b491f6b60f02d014aa27bc8b1cb5e0c2ca`  
		Last Modified: Wed, 09 Sep 2026 02:34:56 GMT  
		Size: 14.2 MB (14197845 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ca57ad5dafc9d5746c220855048520ca93840f01191117c7a4aa56d7fd4b9af`  
		Last Modified: Wed, 09 Sep 2026 02:34:54 GMT  
		Size: 868.8 KB (868805 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12aa998a7a666b43b27984807292e6a65d3f3bbc20ec6949ee11db04a3ff5eff`  
		Last Modified: Wed, 09 Sep 2026 02:35:07 GMT  
		Size: 390.3 MB (390284283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a372d787369ff9437bc63ad9784328cbcd9b98724936add68688ee1c4396abe`  
		Last Modified: Wed, 09 Sep 2026 02:34:56 GMT  
		Size: 766.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58fb9a6a46d98d56e776681b36a94ebe4460b9892f20a61c032d4bcae910f973`  
		Last Modified: Wed, 09 Sep 2026 02:34:57 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c90c053aa0f12e02627a15b5e669d824782f4ecb67f8f44f009c425d3a4c8bbe`  
		Last Modified: Wed, 09 Sep 2026 02:34:57 GMT  
		Size: 595.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68a424acc83d6a04509a8bd9edead87cde080901854cbacb8f468831c4704c7d`  
		Last Modified: Wed, 09 Sep 2026 02:34:58 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18.0` - unknown; unknown

```console
$ docker pull odoo@sha256:42050e2ea8ce77c7695b2bf4612b5407d8bcc2f88879c13b7ca84ba0ee6556db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.9 MB (43933916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd06fde74976719bc0b40091d954d1bceb98c33bac2f95ad3d2fa36776c68d1a`

```dockerfile
```

-	Layers:
	-	`sha256:3de7a802f8b466a1931478e01cb411980b384da71af1474006e2d4587c8b3aa2`  
		Last Modified: Wed, 09 Sep 2026 02:34:58 GMT  
		Size: 43.9 MB (43906567 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:663d67e27c9cd73edd253b01801d36530f0244cb4419e36d5b640e93fb25c4e3`  
		Last Modified: Wed, 09 Sep 2026 02:34:54 GMT  
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
$ docker pull odoo@sha256:c01e5bc381f087a3be2800d65cff8ad51ab0709dc54c3b81cd9b0d6c9b3a4d77
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
$ docker pull odoo@sha256:2c9637b51f0ca5df93e18bc1859372845996dc789c4a791d40b9406ad72466e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **674.0 MB (673997993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:044d4b2fb096b293a5131788896252e9eae4ab985f445fd4a300fa117342673b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Mon, 07 Sep 2026 06:58:02 GMT
ARG RELEASE
# Mon, 07 Sep 2026 06:58:02 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 06:58:02 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 06:58:04 GMT
ADD file:de4937ce3dfc7c89f05f1503c52434f0a631ac84995f0df65eed0754e5c97d48 in / 
# Mon, 07 Sep 2026 06:58:04 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:35:18 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Wed, 09 Sep 2026 02:35:18 GMT
SHELL [/bin/bash -xo pipefail -c]
# Wed, 09 Sep 2026 02:35:18 GMT
ENV LANG=en_US.UTF-8
# Wed, 09 Sep 2026 02:35:18 GMT
ARG TARGETARCH=amd64
# Wed, 09 Sep 2026 02:35:18 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Wed, 09 Sep 2026 02:35:26 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:36:52 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:36:52 GMT
ENV ODOO_VERSION=18.0
# Wed, 09 Sep 2026 02:36:52 GMT
ARG ODOO_RELEASE=20260908
# Wed, 09 Sep 2026 02:36:52 GMT
ARG ODOO_SHA=4f5862fd0a33630abbfc855ce2b5f21caea6a4fb
# Wed, 09 Sep 2026 02:37:48 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260908 ODOO_SHA=4f5862fd0a33630abbfc855ce2b5f21caea6a4fb
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Wed, 09 Sep 2026 02:37:48 GMT
COPY ./entrypoint.sh / # buildkit
# Wed, 09 Sep 2026 02:37:48 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Wed, 09 Sep 2026 02:37:48 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260908 ODOO_SHA=4f5862fd0a33630abbfc855ce2b5f21caea6a4fb
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Wed, 09 Sep 2026 02:37:48 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 09 Sep 2026 02:37:48 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Wed, 09 Sep 2026 02:37:48 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Wed, 09 Sep 2026 02:37:48 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Wed, 09 Sep 2026 02:37:48 GMT
USER odoo
# Wed, 09 Sep 2026 02:37:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 09 Sep 2026 02:37:48 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:e51aee9c82ec5dd5ba2add49c45c6d85d460512757e2615b69bcdf9469c7cb58`  
		Last Modified: Mon, 07 Sep 2026 07:56:53 GMT  
		Size: 29.8 MB (29763253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e0d0fb5d6ac73b7f46e744c49cc4ad8b71d958b0a6c33a0bab487293d6af4ab`  
		Last Modified: Wed, 09 Sep 2026 02:39:23 GMT  
		Size: 238.7 MB (238691258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a485681844b01deb8518207258a5c926e96d4b9adaf58b58e7a8470b16070ed`  
		Last Modified: Wed, 09 Sep 2026 02:39:13 GMT  
		Size: 14.2 MB (14224002 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a18357ab0990c9bc01d38a5aff0e6ee2da880965286f4791181b852ebbda43f`  
		Last Modified: Wed, 09 Sep 2026 02:39:11 GMT  
		Size: 868.7 KB (868693 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b42de71f9c793b964d1abf9ce63686226ee2313b81685f0dcf6eaa86bf470aa3`  
		Last Modified: Wed, 09 Sep 2026 02:39:27 GMT  
		Size: 390.4 MB (390447991 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2c239c11398352a0f675a789835bf7df949ce88f7969e769a9a0543b376b5f2`  
		Last Modified: Wed, 09 Sep 2026 02:39:13 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a3676469b0a8b409bbc037755ffd334f7168e8d8fead33ea5b1084497d07779`  
		Last Modified: Wed, 09 Sep 2026 02:39:14 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55b64817571312c5e164a797379df129fd7bf57c6fdfedb20497497c126aabfb`  
		Last Modified: Wed, 09 Sep 2026 02:39:14 GMT  
		Size: 595.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b1fdb218e58e2f54cb3b21257e820dd712196c19c60f009593ebba78884c347`  
		Last Modified: Wed, 09 Sep 2026 02:39:15 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18.0-20260908` - unknown; unknown

```console
$ docker pull odoo@sha256:4813e08f46f74ef07a62ea9903d3a865f7e662971d79ae17ecb6627a618a9112
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.9 MB (43926492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c857249544ea227c964d1b67dd48d99efab01ea0c087a81acc64e055cdbf1726`

```dockerfile
```

-	Layers:
	-	`sha256:6725af4e73b4101b3c4b170b71855ce44236322381754fd4de5d6fb2aaea9140`  
		Last Modified: Wed, 09 Sep 2026 02:39:14 GMT  
		Size: 43.9 MB (43899295 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:14525ce8c5480644ede5ec4ed191ae50de37d7de20bd1f42e47ac769abec2d1f`  
		Last Modified: Wed, 09 Sep 2026 02:39:11 GMT  
		Size: 27.2 KB (27197 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:18.0-20260908` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:17da5dcc75aa9828c68540146b92133d8c70b9f013ca980e1ad445e2b1231225
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **670.4 MB (670447917 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46ba828d1099bb254589eba7614804c533991005e47a94c463cc701bfb998c8d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Mon, 07 Sep 2026 06:57:57 GMT
ARG RELEASE
# Mon, 07 Sep 2026 06:57:57 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 06:57:57 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 06:58:01 GMT
ADD file:06e064cbfe0750594affea730437107320bdf1e36232c304b900eaa55f88a633 in / 
# Mon, 07 Sep 2026 06:58:01 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:31:21 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Wed, 09 Sep 2026 02:31:21 GMT
SHELL [/bin/bash -xo pipefail -c]
# Wed, 09 Sep 2026 02:31:21 GMT
ENV LANG=en_US.UTF-8
# Wed, 09 Sep 2026 02:31:21 GMT
ARG TARGETARCH=arm64
# Wed, 09 Sep 2026 02:31:21 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Wed, 09 Sep 2026 02:31:32 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:32:33 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:32:33 GMT
ENV ODOO_VERSION=18.0
# Wed, 09 Sep 2026 02:32:33 GMT
ARG ODOO_RELEASE=20260908
# Wed, 09 Sep 2026 02:32:33 GMT
ARG ODOO_SHA=4f5862fd0a33630abbfc855ce2b5f21caea6a4fb
# Wed, 09 Sep 2026 02:33:27 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260908 ODOO_SHA=4f5862fd0a33630abbfc855ce2b5f21caea6a4fb
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Wed, 09 Sep 2026 02:33:28 GMT
COPY ./entrypoint.sh / # buildkit
# Wed, 09 Sep 2026 02:33:28 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Wed, 09 Sep 2026 02:33:28 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260908 ODOO_SHA=4f5862fd0a33630abbfc855ce2b5f21caea6a4fb
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Wed, 09 Sep 2026 02:33:28 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 09 Sep 2026 02:33:28 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Wed, 09 Sep 2026 02:33:28 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Wed, 09 Sep 2026 02:33:28 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Wed, 09 Sep 2026 02:33:28 GMT
USER odoo
# Wed, 09 Sep 2026 02:33:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 09 Sep 2026 02:33:28 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:9332cde1e07015fd0f14e769fc74ea901a957e3f62a76de66638f99854867dd2`  
		Last Modified: Mon, 07 Sep 2026 07:57:03 GMT  
		Size: 28.9 MB (28940015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a310961477569fea8de3da395f1495d97cc7032118502d882fe05e97b01bbec`  
		Last Modified: Wed, 09 Sep 2026 02:35:04 GMT  
		Size: 236.2 MB (236154174 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5068bada569aee0253d4482a5f6f74b491f6b60f02d014aa27bc8b1cb5e0c2ca`  
		Last Modified: Wed, 09 Sep 2026 02:34:56 GMT  
		Size: 14.2 MB (14197845 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ca57ad5dafc9d5746c220855048520ca93840f01191117c7a4aa56d7fd4b9af`  
		Last Modified: Wed, 09 Sep 2026 02:34:54 GMT  
		Size: 868.8 KB (868805 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12aa998a7a666b43b27984807292e6a65d3f3bbc20ec6949ee11db04a3ff5eff`  
		Last Modified: Wed, 09 Sep 2026 02:35:07 GMT  
		Size: 390.3 MB (390284283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a372d787369ff9437bc63ad9784328cbcd9b98724936add68688ee1c4396abe`  
		Last Modified: Wed, 09 Sep 2026 02:34:56 GMT  
		Size: 766.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58fb9a6a46d98d56e776681b36a94ebe4460b9892f20a61c032d4bcae910f973`  
		Last Modified: Wed, 09 Sep 2026 02:34:57 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c90c053aa0f12e02627a15b5e669d824782f4ecb67f8f44f009c425d3a4c8bbe`  
		Last Modified: Wed, 09 Sep 2026 02:34:57 GMT  
		Size: 595.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68a424acc83d6a04509a8bd9edead87cde080901854cbacb8f468831c4704c7d`  
		Last Modified: Wed, 09 Sep 2026 02:34:58 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18.0-20260908` - unknown; unknown

```console
$ docker pull odoo@sha256:42050e2ea8ce77c7695b2bf4612b5407d8bcc2f88879c13b7ca84ba0ee6556db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.9 MB (43933916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd06fde74976719bc0b40091d954d1bceb98c33bac2f95ad3d2fa36776c68d1a`

```dockerfile
```

-	Layers:
	-	`sha256:3de7a802f8b466a1931478e01cb411980b384da71af1474006e2d4587c8b3aa2`  
		Last Modified: Wed, 09 Sep 2026 02:34:58 GMT  
		Size: 43.9 MB (43906567 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:663d67e27c9cd73edd253b01801d36530f0244cb4419e36d5b640e93fb25c4e3`  
		Last Modified: Wed, 09 Sep 2026 02:34:54 GMT  
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
$ docker pull odoo@sha256:a627eda6b4154eead21c4fca55f84f1671d870ca111aa57f93ca305861bc4613
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
$ docker pull odoo@sha256:515f8d24be9fed0b00804211c2bed4e50b1c7405a2b7e18c12e81b2292a84c88
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **697.6 MB (697587986 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:138d2c15ffd0fe00d44ea2db52b585f1702fba67bfced174dba6e0857a680e98`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Mon, 07 Sep 2026 06:58:02 GMT
ARG RELEASE
# Mon, 07 Sep 2026 06:58:02 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 06:58:02 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 06:58:04 GMT
ADD file:de4937ce3dfc7c89f05f1503c52434f0a631ac84995f0df65eed0754e5c97d48 in / 
# Mon, 07 Sep 2026 06:58:04 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:35:21 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Wed, 09 Sep 2026 02:35:21 GMT
SHELL [/bin/bash -xo pipefail -c]
# Wed, 09 Sep 2026 02:35:21 GMT
ENV LANG=en_US.UTF-8
# Wed, 09 Sep 2026 02:35:21 GMT
ARG TARGETARCH=amd64
# Wed, 09 Sep 2026 02:35:21 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Wed, 09 Sep 2026 02:35:30 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:36:45 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:36:45 GMT
ENV ODOO_VERSION=19.0
# Wed, 09 Sep 2026 02:36:45 GMT
ARG ODOO_RELEASE=20260908
# Wed, 09 Sep 2026 02:36:45 GMT
ARG ODOO_SHA=df549a99c8a31a89f54b722e57f9c47224852093
# Wed, 09 Sep 2026 02:37:58 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260908 ODOO_SHA=df549a99c8a31a89f54b722e57f9c47224852093
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Wed, 09 Sep 2026 02:37:58 GMT
COPY ./entrypoint.sh / # buildkit
# Wed, 09 Sep 2026 02:37:58 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Wed, 09 Sep 2026 02:37:58 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260908 ODOO_SHA=df549a99c8a31a89f54b722e57f9c47224852093
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Wed, 09 Sep 2026 02:37:58 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 09 Sep 2026 02:37:58 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Wed, 09 Sep 2026 02:37:58 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Wed, 09 Sep 2026 02:37:58 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Wed, 09 Sep 2026 02:37:58 GMT
USER odoo
# Wed, 09 Sep 2026 02:37:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 09 Sep 2026 02:37:58 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:e51aee9c82ec5dd5ba2add49c45c6d85d460512757e2615b69bcdf9469c7cb58`  
		Last Modified: Mon, 07 Sep 2026 07:56:53 GMT  
		Size: 29.8 MB (29763253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3382a87ebf19310779c18424ff746c6ecd6b4f9d21736ce71a3c31c34febcf12`  
		Last Modified: Wed, 09 Sep 2026 02:39:45 GMT  
		Size: 238.7 MB (238691536 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:028c22df6d89bd8ba734bd94a3f2273f4ae40c912ad6c1e8cb9ad2880fd4283e`  
		Last Modified: Wed, 09 Sep 2026 02:39:37 GMT  
		Size: 14.2 MB (14224400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3dfb7c58a3b7f2783ece027d125258ac872a2556ff7c58769fd8ae01a0328ba`  
		Last Modified: Wed, 09 Sep 2026 02:39:35 GMT  
		Size: 868.7 KB (868730 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6289340d72e98f1d9649e140c571558093743727b509d55c68050e83fa4e6c9`  
		Last Modified: Wed, 09 Sep 2026 02:39:49 GMT  
		Size: 414.0 MB (414037318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07a6a69cd43e8412574960b2e0b331e1880756989a8784e3ad1d85dd5243c566`  
		Last Modified: Wed, 09 Sep 2026 02:39:37 GMT  
		Size: 718.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54dc88106491541e654c4d9d56aa1599e24d670de9f47a4c9a3d148579c1a807`  
		Last Modified: Wed, 09 Sep 2026 02:39:38 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48aac19c766f2f57e338555c9e9c328984732fc8bd25b71635f5465fd9752f6c`  
		Last Modified: Wed, 09 Sep 2026 02:39:38 GMT  
		Size: 596.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f60a63549366725f7660d4ad22c23353498c322a94583e1d550082567db532dd`  
		Last Modified: Wed, 09 Sep 2026 02:39:39 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19` - unknown; unknown

```console
$ docker pull odoo@sha256:a6d7d4660815378aec8afdebfa05ecaa661df264086d8cf62d2c8538e4379075
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.5 MB (52460536 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71cdba56d7c441316dfc52f7bf7215252d3d045d9ea4ff75e5524d8a1a7e45f7`

```dockerfile
```

-	Layers:
	-	`sha256:721ef9f27ff67878f283adec5490e7c4a3dcda6dcc79827cda85a31b8de1fd0e`  
		Last Modified: Wed, 09 Sep 2026 02:39:39 GMT  
		Size: 52.4 MB (52433045 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:971ac474ef65b0f754c887f21e0c73c725f496ec223a708c64c61be959015e95`  
		Last Modified: Wed, 09 Sep 2026 02:39:35 GMT  
		Size: 27.5 KB (27491 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:19` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:78da2811af8e18a453f341260406ae9c872c793081ac674681b09b7a7018d3a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **694.0 MB (694013446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad604bb1237a4826e1f0f95f15d90e8480c3d3e588d2d0a103312a346b99d14e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Mon, 07 Sep 2026 06:57:57 GMT
ARG RELEASE
# Mon, 07 Sep 2026 06:57:57 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 06:57:57 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 06:58:01 GMT
ADD file:06e064cbfe0750594affea730437107320bdf1e36232c304b900eaa55f88a633 in / 
# Mon, 07 Sep 2026 06:58:01 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:31:06 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Wed, 09 Sep 2026 02:31:06 GMT
SHELL [/bin/bash -xo pipefail -c]
# Wed, 09 Sep 2026 02:31:06 GMT
ENV LANG=en_US.UTF-8
# Wed, 09 Sep 2026 02:31:06 GMT
ARG TARGETARCH=arm64
# Wed, 09 Sep 2026 02:31:06 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Wed, 09 Sep 2026 02:31:18 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:32:22 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:32:22 GMT
ENV ODOO_VERSION=19.0
# Wed, 09 Sep 2026 02:32:22 GMT
ARG ODOO_RELEASE=20260908
# Wed, 09 Sep 2026 02:32:22 GMT
ARG ODOO_SHA=df549a99c8a31a89f54b722e57f9c47224852093
# Wed, 09 Sep 2026 02:33:35 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260908 ODOO_SHA=df549a99c8a31a89f54b722e57f9c47224852093
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Wed, 09 Sep 2026 02:33:35 GMT
COPY ./entrypoint.sh / # buildkit
# Wed, 09 Sep 2026 02:33:35 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Wed, 09 Sep 2026 02:33:35 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260908 ODOO_SHA=df549a99c8a31a89f54b722e57f9c47224852093
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Wed, 09 Sep 2026 02:33:35 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 09 Sep 2026 02:33:35 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Wed, 09 Sep 2026 02:33:35 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Wed, 09 Sep 2026 02:33:35 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Wed, 09 Sep 2026 02:33:35 GMT
USER odoo
# Wed, 09 Sep 2026 02:33:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 09 Sep 2026 02:33:35 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:9332cde1e07015fd0f14e769fc74ea901a957e3f62a76de66638f99854867dd2`  
		Last Modified: Mon, 07 Sep 2026 07:57:03 GMT  
		Size: 28.9 MB (28940015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa7ab9872fd0fdb4f8ed95599119306fdf1344c0bcb7b174af8ae506dfd77b86`  
		Last Modified: Wed, 09 Sep 2026 02:35:31 GMT  
		Size: 236.2 MB (236153540 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fba44eabf49a0e448aafe3b363799a6cf85dd47b020a820ce12218530272490`  
		Last Modified: Wed, 09 Sep 2026 02:35:23 GMT  
		Size: 14.2 MB (14197916 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05231701b51784ce14abcad6d0a1666b8243351d86b49fe1ba6bb3e9df9f004f`  
		Last Modified: Wed, 09 Sep 2026 02:35:22 GMT  
		Size: 868.8 KB (868795 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38ed9fa328426870ef7fbc4a9fe7c5a32751e8a9da4a8bcf6687836b81a971b4`  
		Last Modified: Wed, 09 Sep 2026 02:35:34 GMT  
		Size: 413.9 MB (413850433 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60cf3b513ad69529caa0bff56182bfa574fbcc0fca7719f99437eaf1e42bab90`  
		Last Modified: Wed, 09 Sep 2026 02:35:24 GMT  
		Size: 718.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc0b800701ca62cff1cb3b9e370eeeaee0ff66b189b0762818eb78956ddd0e43`  
		Last Modified: Wed, 09 Sep 2026 02:35:25 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ad13220db8b3bb887d2ebaadef837fcb2dd810967ad2b27a715f3a5d607a10c`  
		Last Modified: Wed, 09 Sep 2026 02:35:25 GMT  
		Size: 595.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9745e1f2866306434fbe5ad3c18788e0655d67b6e89a7a3d9c1570d95530f633`  
		Last Modified: Wed, 09 Sep 2026 02:35:26 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19` - unknown; unknown

```console
$ docker pull odoo@sha256:e81abae68786d7b5c71e7336a9be10794bdfa3340adfa05073ebc6a447e4b86c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.5 MB (52467984 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d65c99bd5f86f90240aa9499cffded9390325dd1f6c30c92bc962e4c0c0184ec`

```dockerfile
```

-	Layers:
	-	`sha256:adbfdffc8dd5f68a04be39f8512ba6ae225421410b697070bb04816b96c3cdcb`  
		Last Modified: Wed, 09 Sep 2026 02:35:25 GMT  
		Size: 52.4 MB (52440329 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:041fa0a983924306c0649de1815ed4940d110cf87ab945965b6c33be2cfa305c`  
		Last Modified: Wed, 09 Sep 2026 02:35:22 GMT  
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
$ docker pull odoo@sha256:a627eda6b4154eead21c4fca55f84f1671d870ca111aa57f93ca305861bc4613
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
$ docker pull odoo@sha256:515f8d24be9fed0b00804211c2bed4e50b1c7405a2b7e18c12e81b2292a84c88
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **697.6 MB (697587986 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:138d2c15ffd0fe00d44ea2db52b585f1702fba67bfced174dba6e0857a680e98`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Mon, 07 Sep 2026 06:58:02 GMT
ARG RELEASE
# Mon, 07 Sep 2026 06:58:02 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 06:58:02 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 06:58:04 GMT
ADD file:de4937ce3dfc7c89f05f1503c52434f0a631ac84995f0df65eed0754e5c97d48 in / 
# Mon, 07 Sep 2026 06:58:04 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:35:21 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Wed, 09 Sep 2026 02:35:21 GMT
SHELL [/bin/bash -xo pipefail -c]
# Wed, 09 Sep 2026 02:35:21 GMT
ENV LANG=en_US.UTF-8
# Wed, 09 Sep 2026 02:35:21 GMT
ARG TARGETARCH=amd64
# Wed, 09 Sep 2026 02:35:21 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Wed, 09 Sep 2026 02:35:30 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:36:45 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:36:45 GMT
ENV ODOO_VERSION=19.0
# Wed, 09 Sep 2026 02:36:45 GMT
ARG ODOO_RELEASE=20260908
# Wed, 09 Sep 2026 02:36:45 GMT
ARG ODOO_SHA=df549a99c8a31a89f54b722e57f9c47224852093
# Wed, 09 Sep 2026 02:37:58 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260908 ODOO_SHA=df549a99c8a31a89f54b722e57f9c47224852093
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Wed, 09 Sep 2026 02:37:58 GMT
COPY ./entrypoint.sh / # buildkit
# Wed, 09 Sep 2026 02:37:58 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Wed, 09 Sep 2026 02:37:58 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260908 ODOO_SHA=df549a99c8a31a89f54b722e57f9c47224852093
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Wed, 09 Sep 2026 02:37:58 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 09 Sep 2026 02:37:58 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Wed, 09 Sep 2026 02:37:58 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Wed, 09 Sep 2026 02:37:58 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Wed, 09 Sep 2026 02:37:58 GMT
USER odoo
# Wed, 09 Sep 2026 02:37:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 09 Sep 2026 02:37:58 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:e51aee9c82ec5dd5ba2add49c45c6d85d460512757e2615b69bcdf9469c7cb58`  
		Last Modified: Mon, 07 Sep 2026 07:56:53 GMT  
		Size: 29.8 MB (29763253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3382a87ebf19310779c18424ff746c6ecd6b4f9d21736ce71a3c31c34febcf12`  
		Last Modified: Wed, 09 Sep 2026 02:39:45 GMT  
		Size: 238.7 MB (238691536 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:028c22df6d89bd8ba734bd94a3f2273f4ae40c912ad6c1e8cb9ad2880fd4283e`  
		Last Modified: Wed, 09 Sep 2026 02:39:37 GMT  
		Size: 14.2 MB (14224400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3dfb7c58a3b7f2783ece027d125258ac872a2556ff7c58769fd8ae01a0328ba`  
		Last Modified: Wed, 09 Sep 2026 02:39:35 GMT  
		Size: 868.7 KB (868730 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6289340d72e98f1d9649e140c571558093743727b509d55c68050e83fa4e6c9`  
		Last Modified: Wed, 09 Sep 2026 02:39:49 GMT  
		Size: 414.0 MB (414037318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07a6a69cd43e8412574960b2e0b331e1880756989a8784e3ad1d85dd5243c566`  
		Last Modified: Wed, 09 Sep 2026 02:39:37 GMT  
		Size: 718.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54dc88106491541e654c4d9d56aa1599e24d670de9f47a4c9a3d148579c1a807`  
		Last Modified: Wed, 09 Sep 2026 02:39:38 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48aac19c766f2f57e338555c9e9c328984732fc8bd25b71635f5465fd9752f6c`  
		Last Modified: Wed, 09 Sep 2026 02:39:38 GMT  
		Size: 596.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f60a63549366725f7660d4ad22c23353498c322a94583e1d550082567db532dd`  
		Last Modified: Wed, 09 Sep 2026 02:39:39 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19.0` - unknown; unknown

```console
$ docker pull odoo@sha256:a6d7d4660815378aec8afdebfa05ecaa661df264086d8cf62d2c8538e4379075
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.5 MB (52460536 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71cdba56d7c441316dfc52f7bf7215252d3d045d9ea4ff75e5524d8a1a7e45f7`

```dockerfile
```

-	Layers:
	-	`sha256:721ef9f27ff67878f283adec5490e7c4a3dcda6dcc79827cda85a31b8de1fd0e`  
		Last Modified: Wed, 09 Sep 2026 02:39:39 GMT  
		Size: 52.4 MB (52433045 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:971ac474ef65b0f754c887f21e0c73c725f496ec223a708c64c61be959015e95`  
		Last Modified: Wed, 09 Sep 2026 02:39:35 GMT  
		Size: 27.5 KB (27491 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:19.0` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:78da2811af8e18a453f341260406ae9c872c793081ac674681b09b7a7018d3a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **694.0 MB (694013446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad604bb1237a4826e1f0f95f15d90e8480c3d3e588d2d0a103312a346b99d14e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Mon, 07 Sep 2026 06:57:57 GMT
ARG RELEASE
# Mon, 07 Sep 2026 06:57:57 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 06:57:57 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 06:58:01 GMT
ADD file:06e064cbfe0750594affea730437107320bdf1e36232c304b900eaa55f88a633 in / 
# Mon, 07 Sep 2026 06:58:01 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:31:06 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Wed, 09 Sep 2026 02:31:06 GMT
SHELL [/bin/bash -xo pipefail -c]
# Wed, 09 Sep 2026 02:31:06 GMT
ENV LANG=en_US.UTF-8
# Wed, 09 Sep 2026 02:31:06 GMT
ARG TARGETARCH=arm64
# Wed, 09 Sep 2026 02:31:06 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Wed, 09 Sep 2026 02:31:18 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:32:22 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:32:22 GMT
ENV ODOO_VERSION=19.0
# Wed, 09 Sep 2026 02:32:22 GMT
ARG ODOO_RELEASE=20260908
# Wed, 09 Sep 2026 02:32:22 GMT
ARG ODOO_SHA=df549a99c8a31a89f54b722e57f9c47224852093
# Wed, 09 Sep 2026 02:33:35 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260908 ODOO_SHA=df549a99c8a31a89f54b722e57f9c47224852093
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Wed, 09 Sep 2026 02:33:35 GMT
COPY ./entrypoint.sh / # buildkit
# Wed, 09 Sep 2026 02:33:35 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Wed, 09 Sep 2026 02:33:35 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260908 ODOO_SHA=df549a99c8a31a89f54b722e57f9c47224852093
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Wed, 09 Sep 2026 02:33:35 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 09 Sep 2026 02:33:35 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Wed, 09 Sep 2026 02:33:35 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Wed, 09 Sep 2026 02:33:35 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Wed, 09 Sep 2026 02:33:35 GMT
USER odoo
# Wed, 09 Sep 2026 02:33:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 09 Sep 2026 02:33:35 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:9332cde1e07015fd0f14e769fc74ea901a957e3f62a76de66638f99854867dd2`  
		Last Modified: Mon, 07 Sep 2026 07:57:03 GMT  
		Size: 28.9 MB (28940015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa7ab9872fd0fdb4f8ed95599119306fdf1344c0bcb7b174af8ae506dfd77b86`  
		Last Modified: Wed, 09 Sep 2026 02:35:31 GMT  
		Size: 236.2 MB (236153540 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fba44eabf49a0e448aafe3b363799a6cf85dd47b020a820ce12218530272490`  
		Last Modified: Wed, 09 Sep 2026 02:35:23 GMT  
		Size: 14.2 MB (14197916 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05231701b51784ce14abcad6d0a1666b8243351d86b49fe1ba6bb3e9df9f004f`  
		Last Modified: Wed, 09 Sep 2026 02:35:22 GMT  
		Size: 868.8 KB (868795 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38ed9fa328426870ef7fbc4a9fe7c5a32751e8a9da4a8bcf6687836b81a971b4`  
		Last Modified: Wed, 09 Sep 2026 02:35:34 GMT  
		Size: 413.9 MB (413850433 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60cf3b513ad69529caa0bff56182bfa574fbcc0fca7719f99437eaf1e42bab90`  
		Last Modified: Wed, 09 Sep 2026 02:35:24 GMT  
		Size: 718.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc0b800701ca62cff1cb3b9e370eeeaee0ff66b189b0762818eb78956ddd0e43`  
		Last Modified: Wed, 09 Sep 2026 02:35:25 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ad13220db8b3bb887d2ebaadef837fcb2dd810967ad2b27a715f3a5d607a10c`  
		Last Modified: Wed, 09 Sep 2026 02:35:25 GMT  
		Size: 595.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9745e1f2866306434fbe5ad3c18788e0655d67b6e89a7a3d9c1570d95530f633`  
		Last Modified: Wed, 09 Sep 2026 02:35:26 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19.0` - unknown; unknown

```console
$ docker pull odoo@sha256:e81abae68786d7b5c71e7336a9be10794bdfa3340adfa05073ebc6a447e4b86c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.5 MB (52467984 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d65c99bd5f86f90240aa9499cffded9390325dd1f6c30c92bc962e4c0c0184ec`

```dockerfile
```

-	Layers:
	-	`sha256:adbfdffc8dd5f68a04be39f8512ba6ae225421410b697070bb04816b96c3cdcb`  
		Last Modified: Wed, 09 Sep 2026 02:35:25 GMT  
		Size: 52.4 MB (52440329 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:041fa0a983924306c0649de1815ed4940d110cf87ab945965b6c33be2cfa305c`  
		Last Modified: Wed, 09 Sep 2026 02:35:22 GMT  
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
$ docker pull odoo@sha256:a627eda6b4154eead21c4fca55f84f1671d870ca111aa57f93ca305861bc4613
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
$ docker pull odoo@sha256:515f8d24be9fed0b00804211c2bed4e50b1c7405a2b7e18c12e81b2292a84c88
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **697.6 MB (697587986 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:138d2c15ffd0fe00d44ea2db52b585f1702fba67bfced174dba6e0857a680e98`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Mon, 07 Sep 2026 06:58:02 GMT
ARG RELEASE
# Mon, 07 Sep 2026 06:58:02 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 06:58:02 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 06:58:04 GMT
ADD file:de4937ce3dfc7c89f05f1503c52434f0a631ac84995f0df65eed0754e5c97d48 in / 
# Mon, 07 Sep 2026 06:58:04 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:35:21 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Wed, 09 Sep 2026 02:35:21 GMT
SHELL [/bin/bash -xo pipefail -c]
# Wed, 09 Sep 2026 02:35:21 GMT
ENV LANG=en_US.UTF-8
# Wed, 09 Sep 2026 02:35:21 GMT
ARG TARGETARCH=amd64
# Wed, 09 Sep 2026 02:35:21 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Wed, 09 Sep 2026 02:35:30 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:36:45 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:36:45 GMT
ENV ODOO_VERSION=19.0
# Wed, 09 Sep 2026 02:36:45 GMT
ARG ODOO_RELEASE=20260908
# Wed, 09 Sep 2026 02:36:45 GMT
ARG ODOO_SHA=df549a99c8a31a89f54b722e57f9c47224852093
# Wed, 09 Sep 2026 02:37:58 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260908 ODOO_SHA=df549a99c8a31a89f54b722e57f9c47224852093
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Wed, 09 Sep 2026 02:37:58 GMT
COPY ./entrypoint.sh / # buildkit
# Wed, 09 Sep 2026 02:37:58 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Wed, 09 Sep 2026 02:37:58 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260908 ODOO_SHA=df549a99c8a31a89f54b722e57f9c47224852093
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Wed, 09 Sep 2026 02:37:58 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 09 Sep 2026 02:37:58 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Wed, 09 Sep 2026 02:37:58 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Wed, 09 Sep 2026 02:37:58 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Wed, 09 Sep 2026 02:37:58 GMT
USER odoo
# Wed, 09 Sep 2026 02:37:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 09 Sep 2026 02:37:58 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:e51aee9c82ec5dd5ba2add49c45c6d85d460512757e2615b69bcdf9469c7cb58`  
		Last Modified: Mon, 07 Sep 2026 07:56:53 GMT  
		Size: 29.8 MB (29763253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3382a87ebf19310779c18424ff746c6ecd6b4f9d21736ce71a3c31c34febcf12`  
		Last Modified: Wed, 09 Sep 2026 02:39:45 GMT  
		Size: 238.7 MB (238691536 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:028c22df6d89bd8ba734bd94a3f2273f4ae40c912ad6c1e8cb9ad2880fd4283e`  
		Last Modified: Wed, 09 Sep 2026 02:39:37 GMT  
		Size: 14.2 MB (14224400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3dfb7c58a3b7f2783ece027d125258ac872a2556ff7c58769fd8ae01a0328ba`  
		Last Modified: Wed, 09 Sep 2026 02:39:35 GMT  
		Size: 868.7 KB (868730 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6289340d72e98f1d9649e140c571558093743727b509d55c68050e83fa4e6c9`  
		Last Modified: Wed, 09 Sep 2026 02:39:49 GMT  
		Size: 414.0 MB (414037318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07a6a69cd43e8412574960b2e0b331e1880756989a8784e3ad1d85dd5243c566`  
		Last Modified: Wed, 09 Sep 2026 02:39:37 GMT  
		Size: 718.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54dc88106491541e654c4d9d56aa1599e24d670de9f47a4c9a3d148579c1a807`  
		Last Modified: Wed, 09 Sep 2026 02:39:38 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48aac19c766f2f57e338555c9e9c328984732fc8bd25b71635f5465fd9752f6c`  
		Last Modified: Wed, 09 Sep 2026 02:39:38 GMT  
		Size: 596.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f60a63549366725f7660d4ad22c23353498c322a94583e1d550082567db532dd`  
		Last Modified: Wed, 09 Sep 2026 02:39:39 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19.0-20260908` - unknown; unknown

```console
$ docker pull odoo@sha256:a6d7d4660815378aec8afdebfa05ecaa661df264086d8cf62d2c8538e4379075
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.5 MB (52460536 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71cdba56d7c441316dfc52f7bf7215252d3d045d9ea4ff75e5524d8a1a7e45f7`

```dockerfile
```

-	Layers:
	-	`sha256:721ef9f27ff67878f283adec5490e7c4a3dcda6dcc79827cda85a31b8de1fd0e`  
		Last Modified: Wed, 09 Sep 2026 02:39:39 GMT  
		Size: 52.4 MB (52433045 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:971ac474ef65b0f754c887f21e0c73c725f496ec223a708c64c61be959015e95`  
		Last Modified: Wed, 09 Sep 2026 02:39:35 GMT  
		Size: 27.5 KB (27491 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:19.0-20260908` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:78da2811af8e18a453f341260406ae9c872c793081ac674681b09b7a7018d3a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **694.0 MB (694013446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad604bb1237a4826e1f0f95f15d90e8480c3d3e588d2d0a103312a346b99d14e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Mon, 07 Sep 2026 06:57:57 GMT
ARG RELEASE
# Mon, 07 Sep 2026 06:57:57 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 06:57:57 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 06:58:01 GMT
ADD file:06e064cbfe0750594affea730437107320bdf1e36232c304b900eaa55f88a633 in / 
# Mon, 07 Sep 2026 06:58:01 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:31:06 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Wed, 09 Sep 2026 02:31:06 GMT
SHELL [/bin/bash -xo pipefail -c]
# Wed, 09 Sep 2026 02:31:06 GMT
ENV LANG=en_US.UTF-8
# Wed, 09 Sep 2026 02:31:06 GMT
ARG TARGETARCH=arm64
# Wed, 09 Sep 2026 02:31:06 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Wed, 09 Sep 2026 02:31:18 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:32:22 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:32:22 GMT
ENV ODOO_VERSION=19.0
# Wed, 09 Sep 2026 02:32:22 GMT
ARG ODOO_RELEASE=20260908
# Wed, 09 Sep 2026 02:32:22 GMT
ARG ODOO_SHA=df549a99c8a31a89f54b722e57f9c47224852093
# Wed, 09 Sep 2026 02:33:35 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260908 ODOO_SHA=df549a99c8a31a89f54b722e57f9c47224852093
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Wed, 09 Sep 2026 02:33:35 GMT
COPY ./entrypoint.sh / # buildkit
# Wed, 09 Sep 2026 02:33:35 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Wed, 09 Sep 2026 02:33:35 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260908 ODOO_SHA=df549a99c8a31a89f54b722e57f9c47224852093
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Wed, 09 Sep 2026 02:33:35 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 09 Sep 2026 02:33:35 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Wed, 09 Sep 2026 02:33:35 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Wed, 09 Sep 2026 02:33:35 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Wed, 09 Sep 2026 02:33:35 GMT
USER odoo
# Wed, 09 Sep 2026 02:33:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 09 Sep 2026 02:33:35 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:9332cde1e07015fd0f14e769fc74ea901a957e3f62a76de66638f99854867dd2`  
		Last Modified: Mon, 07 Sep 2026 07:57:03 GMT  
		Size: 28.9 MB (28940015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa7ab9872fd0fdb4f8ed95599119306fdf1344c0bcb7b174af8ae506dfd77b86`  
		Last Modified: Wed, 09 Sep 2026 02:35:31 GMT  
		Size: 236.2 MB (236153540 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fba44eabf49a0e448aafe3b363799a6cf85dd47b020a820ce12218530272490`  
		Last Modified: Wed, 09 Sep 2026 02:35:23 GMT  
		Size: 14.2 MB (14197916 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05231701b51784ce14abcad6d0a1666b8243351d86b49fe1ba6bb3e9df9f004f`  
		Last Modified: Wed, 09 Sep 2026 02:35:22 GMT  
		Size: 868.8 KB (868795 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38ed9fa328426870ef7fbc4a9fe7c5a32751e8a9da4a8bcf6687836b81a971b4`  
		Last Modified: Wed, 09 Sep 2026 02:35:34 GMT  
		Size: 413.9 MB (413850433 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60cf3b513ad69529caa0bff56182bfa574fbcc0fca7719f99437eaf1e42bab90`  
		Last Modified: Wed, 09 Sep 2026 02:35:24 GMT  
		Size: 718.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc0b800701ca62cff1cb3b9e370eeeaee0ff66b189b0762818eb78956ddd0e43`  
		Last Modified: Wed, 09 Sep 2026 02:35:25 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ad13220db8b3bb887d2ebaadef837fcb2dd810967ad2b27a715f3a5d607a10c`  
		Last Modified: Wed, 09 Sep 2026 02:35:25 GMT  
		Size: 595.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9745e1f2866306434fbe5ad3c18788e0655d67b6e89a7a3d9c1570d95530f633`  
		Last Modified: Wed, 09 Sep 2026 02:35:26 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19.0-20260908` - unknown; unknown

```console
$ docker pull odoo@sha256:e81abae68786d7b5c71e7336a9be10794bdfa3340adfa05073ebc6a447e4b86c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.5 MB (52467984 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d65c99bd5f86f90240aa9499cffded9390325dd1f6c30c92bc962e4c0c0184ec`

```dockerfile
```

-	Layers:
	-	`sha256:adbfdffc8dd5f68a04be39f8512ba6ae225421410b697070bb04816b96c3cdcb`  
		Last Modified: Wed, 09 Sep 2026 02:35:25 GMT  
		Size: 52.4 MB (52440329 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:041fa0a983924306c0649de1815ed4940d110cf87ab945965b6c33be2cfa305c`  
		Last Modified: Wed, 09 Sep 2026 02:35:22 GMT  
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
$ docker pull odoo@sha256:a627eda6b4154eead21c4fca55f84f1671d870ca111aa57f93ca305861bc4613
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
$ docker pull odoo@sha256:515f8d24be9fed0b00804211c2bed4e50b1c7405a2b7e18c12e81b2292a84c88
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **697.6 MB (697587986 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:138d2c15ffd0fe00d44ea2db52b585f1702fba67bfced174dba6e0857a680e98`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Mon, 07 Sep 2026 06:58:02 GMT
ARG RELEASE
# Mon, 07 Sep 2026 06:58:02 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 06:58:02 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 06:58:04 GMT
ADD file:de4937ce3dfc7c89f05f1503c52434f0a631ac84995f0df65eed0754e5c97d48 in / 
# Mon, 07 Sep 2026 06:58:04 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:35:21 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Wed, 09 Sep 2026 02:35:21 GMT
SHELL [/bin/bash -xo pipefail -c]
# Wed, 09 Sep 2026 02:35:21 GMT
ENV LANG=en_US.UTF-8
# Wed, 09 Sep 2026 02:35:21 GMT
ARG TARGETARCH=amd64
# Wed, 09 Sep 2026 02:35:21 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Wed, 09 Sep 2026 02:35:30 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:36:45 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:36:45 GMT
ENV ODOO_VERSION=19.0
# Wed, 09 Sep 2026 02:36:45 GMT
ARG ODOO_RELEASE=20260908
# Wed, 09 Sep 2026 02:36:45 GMT
ARG ODOO_SHA=df549a99c8a31a89f54b722e57f9c47224852093
# Wed, 09 Sep 2026 02:37:58 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260908 ODOO_SHA=df549a99c8a31a89f54b722e57f9c47224852093
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Wed, 09 Sep 2026 02:37:58 GMT
COPY ./entrypoint.sh / # buildkit
# Wed, 09 Sep 2026 02:37:58 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Wed, 09 Sep 2026 02:37:58 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260908 ODOO_SHA=df549a99c8a31a89f54b722e57f9c47224852093
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Wed, 09 Sep 2026 02:37:58 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 09 Sep 2026 02:37:58 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Wed, 09 Sep 2026 02:37:58 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Wed, 09 Sep 2026 02:37:58 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Wed, 09 Sep 2026 02:37:58 GMT
USER odoo
# Wed, 09 Sep 2026 02:37:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 09 Sep 2026 02:37:58 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:e51aee9c82ec5dd5ba2add49c45c6d85d460512757e2615b69bcdf9469c7cb58`  
		Last Modified: Mon, 07 Sep 2026 07:56:53 GMT  
		Size: 29.8 MB (29763253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3382a87ebf19310779c18424ff746c6ecd6b4f9d21736ce71a3c31c34febcf12`  
		Last Modified: Wed, 09 Sep 2026 02:39:45 GMT  
		Size: 238.7 MB (238691536 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:028c22df6d89bd8ba734bd94a3f2273f4ae40c912ad6c1e8cb9ad2880fd4283e`  
		Last Modified: Wed, 09 Sep 2026 02:39:37 GMT  
		Size: 14.2 MB (14224400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3dfb7c58a3b7f2783ece027d125258ac872a2556ff7c58769fd8ae01a0328ba`  
		Last Modified: Wed, 09 Sep 2026 02:39:35 GMT  
		Size: 868.7 KB (868730 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6289340d72e98f1d9649e140c571558093743727b509d55c68050e83fa4e6c9`  
		Last Modified: Wed, 09 Sep 2026 02:39:49 GMT  
		Size: 414.0 MB (414037318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07a6a69cd43e8412574960b2e0b331e1880756989a8784e3ad1d85dd5243c566`  
		Last Modified: Wed, 09 Sep 2026 02:39:37 GMT  
		Size: 718.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54dc88106491541e654c4d9d56aa1599e24d670de9f47a4c9a3d148579c1a807`  
		Last Modified: Wed, 09 Sep 2026 02:39:38 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48aac19c766f2f57e338555c9e9c328984732fc8bd25b71635f5465fd9752f6c`  
		Last Modified: Wed, 09 Sep 2026 02:39:38 GMT  
		Size: 596.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f60a63549366725f7660d4ad22c23353498c322a94583e1d550082567db532dd`  
		Last Modified: Wed, 09 Sep 2026 02:39:39 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:latest` - unknown; unknown

```console
$ docker pull odoo@sha256:a6d7d4660815378aec8afdebfa05ecaa661df264086d8cf62d2c8538e4379075
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.5 MB (52460536 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71cdba56d7c441316dfc52f7bf7215252d3d045d9ea4ff75e5524d8a1a7e45f7`

```dockerfile
```

-	Layers:
	-	`sha256:721ef9f27ff67878f283adec5490e7c4a3dcda6dcc79827cda85a31b8de1fd0e`  
		Last Modified: Wed, 09 Sep 2026 02:39:39 GMT  
		Size: 52.4 MB (52433045 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:971ac474ef65b0f754c887f21e0c73c725f496ec223a708c64c61be959015e95`  
		Last Modified: Wed, 09 Sep 2026 02:39:35 GMT  
		Size: 27.5 KB (27491 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:latest` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:78da2811af8e18a453f341260406ae9c872c793081ac674681b09b7a7018d3a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **694.0 MB (694013446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad604bb1237a4826e1f0f95f15d90e8480c3d3e588d2d0a103312a346b99d14e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Mon, 07 Sep 2026 06:57:57 GMT
ARG RELEASE
# Mon, 07 Sep 2026 06:57:57 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 06:57:57 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 06:58:01 GMT
ADD file:06e064cbfe0750594affea730437107320bdf1e36232c304b900eaa55f88a633 in / 
# Mon, 07 Sep 2026 06:58:01 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:31:06 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Wed, 09 Sep 2026 02:31:06 GMT
SHELL [/bin/bash -xo pipefail -c]
# Wed, 09 Sep 2026 02:31:06 GMT
ENV LANG=en_US.UTF-8
# Wed, 09 Sep 2026 02:31:06 GMT
ARG TARGETARCH=arm64
# Wed, 09 Sep 2026 02:31:06 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Wed, 09 Sep 2026 02:31:18 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:32:22 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:32:22 GMT
ENV ODOO_VERSION=19.0
# Wed, 09 Sep 2026 02:32:22 GMT
ARG ODOO_RELEASE=20260908
# Wed, 09 Sep 2026 02:32:22 GMT
ARG ODOO_SHA=df549a99c8a31a89f54b722e57f9c47224852093
# Wed, 09 Sep 2026 02:33:35 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260908 ODOO_SHA=df549a99c8a31a89f54b722e57f9c47224852093
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Wed, 09 Sep 2026 02:33:35 GMT
COPY ./entrypoint.sh / # buildkit
# Wed, 09 Sep 2026 02:33:35 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Wed, 09 Sep 2026 02:33:35 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260908 ODOO_SHA=df549a99c8a31a89f54b722e57f9c47224852093
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Wed, 09 Sep 2026 02:33:35 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 09 Sep 2026 02:33:35 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Wed, 09 Sep 2026 02:33:35 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Wed, 09 Sep 2026 02:33:35 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Wed, 09 Sep 2026 02:33:35 GMT
USER odoo
# Wed, 09 Sep 2026 02:33:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 09 Sep 2026 02:33:35 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:9332cde1e07015fd0f14e769fc74ea901a957e3f62a76de66638f99854867dd2`  
		Last Modified: Mon, 07 Sep 2026 07:57:03 GMT  
		Size: 28.9 MB (28940015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa7ab9872fd0fdb4f8ed95599119306fdf1344c0bcb7b174af8ae506dfd77b86`  
		Last Modified: Wed, 09 Sep 2026 02:35:31 GMT  
		Size: 236.2 MB (236153540 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fba44eabf49a0e448aafe3b363799a6cf85dd47b020a820ce12218530272490`  
		Last Modified: Wed, 09 Sep 2026 02:35:23 GMT  
		Size: 14.2 MB (14197916 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05231701b51784ce14abcad6d0a1666b8243351d86b49fe1ba6bb3e9df9f004f`  
		Last Modified: Wed, 09 Sep 2026 02:35:22 GMT  
		Size: 868.8 KB (868795 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38ed9fa328426870ef7fbc4a9fe7c5a32751e8a9da4a8bcf6687836b81a971b4`  
		Last Modified: Wed, 09 Sep 2026 02:35:34 GMT  
		Size: 413.9 MB (413850433 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60cf3b513ad69529caa0bff56182bfa574fbcc0fca7719f99437eaf1e42bab90`  
		Last Modified: Wed, 09 Sep 2026 02:35:24 GMT  
		Size: 718.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc0b800701ca62cff1cb3b9e370eeeaee0ff66b189b0762818eb78956ddd0e43`  
		Last Modified: Wed, 09 Sep 2026 02:35:25 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ad13220db8b3bb887d2ebaadef837fcb2dd810967ad2b27a715f3a5d607a10c`  
		Last Modified: Wed, 09 Sep 2026 02:35:25 GMT  
		Size: 595.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9745e1f2866306434fbe5ad3c18788e0655d67b6e89a7a3d9c1570d95530f633`  
		Last Modified: Wed, 09 Sep 2026 02:35:26 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:latest` - unknown; unknown

```console
$ docker pull odoo@sha256:e81abae68786d7b5c71e7336a9be10794bdfa3340adfa05073ebc6a447e4b86c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.5 MB (52467984 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d65c99bd5f86f90240aa9499cffded9390325dd1f6c30c92bc962e4c0c0184ec`

```dockerfile
```

-	Layers:
	-	`sha256:adbfdffc8dd5f68a04be39f8512ba6ae225421410b697070bb04816b96c3cdcb`  
		Last Modified: Wed, 09 Sep 2026 02:35:25 GMT  
		Size: 52.4 MB (52440329 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:041fa0a983924306c0649de1815ed4940d110cf87ab945965b6c33be2cfa305c`  
		Last Modified: Wed, 09 Sep 2026 02:35:22 GMT  
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
