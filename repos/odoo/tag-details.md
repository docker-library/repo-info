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
$ docker pull odoo@sha256:a681c1ddcc6ebd2064f2f5d7f06a17d7a6873df63084636f5adb802b415d6ac2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `odoo:17` - linux; amd64

```console
$ docker pull odoo@sha256:c799eb9fde76c8fc5655f0054d474407408789e9206e4ccc1dfe1a4ecd1f21a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **609.8 MB (609846921 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:812698078005bc7ed75c99f037c1f8d7118853973d553087d2f9077f0bdc47b6`
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
# Tue, 04 Aug 2026 01:43:49 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 04 Aug 2026 01:43:49 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 04 Aug 2026 01:43:49 GMT
ENV LANG=en_US.UTF-8
# Tue, 04 Aug 2026 01:43:49 GMT
ARG TARGETARCH=amd64
# Tue, 04 Aug 2026 01:43:49 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     DEBIAN_FRONTEND=noninteractive     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 04 Aug 2026 01:43:56 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jammy-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:27 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:27 GMT
ENV ODOO_VERSION=17.0
# Tue, 04 Aug 2026 01:44:27 GMT
ARG ODOO_RELEASE=20260803
# Tue, 04 Aug 2026 01:44:27 GMT
ARG ODOO_SHA=b831f84ff1d0e79b2d55ee6d56c75b8fcb2bd3d9
# Tue, 04 Aug 2026 01:45:34 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260803 ODOO_SHA=b831f84ff1d0e79b2d55ee6d56c75b8fcb2bd3d9
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 04 Aug 2026 01:45:34 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:45:34 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 04 Aug 2026 01:45:34 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260803 ODOO_SHA=b831f84ff1d0e79b2d55ee6d56c75b8fcb2bd3d9
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 04 Aug 2026 01:45:34 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 04 Aug 2026 01:45:34 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 04 Aug 2026 01:45:34 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 04 Aug 2026 01:45:34 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 04 Aug 2026 01:45:34 GMT
USER odoo
# Tue, 04 Aug 2026 01:45:34 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 04 Aug 2026 01:45:34 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:39a945af8df2ad9343f141c82355d3f2c4b576d432eda34c460d630607462b60`  
		Last Modified: Fri, 31 Jul 2026 22:53:51 GMT  
		Size: 29.7 MB (29736517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9d2cca9a51f61dd9bca939b07de8af034fc3b157c25c5dd207502443c65602f`  
		Last Modified: Tue, 04 Aug 2026 01:46:59 GMT  
		Size: 230.5 MB (230522184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9c390f1e4d0774c1bbf67c9afb89d707100b735168550623296f4e7c3c8302d`  
		Last Modified: Tue, 04 Aug 2026 01:46:50 GMT  
		Size: 2.6 MB (2553825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e02bf0e88263722cdadb6fc523991fc8bd053f5d3a2202bd7beb6ce1ad46438e`  
		Last Modified: Tue, 04 Aug 2026 01:46:50 GMT  
		Size: 682.8 KB (682834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea02d394113d385cb58a183030a491fb6fa962510d62f0a8ba4dc03bd3f97590`  
		Last Modified: Tue, 04 Aug 2026 01:47:01 GMT  
		Size: 346.3 MB (346348764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d1a47d16507563c2c6f5c80d818253276e8864f43b0a71b93254256ec204f23`  
		Last Modified: Tue, 04 Aug 2026 01:46:51 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3761ed2efc1ba935912ecfe521fde06b7ba70486d4955d882674a5d413dc673`  
		Last Modified: Tue, 04 Aug 2026 01:46:51 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7053871a9a43379c20bc0bc7b6b66545bc4689ce50b421c6a802e13ac6a323e`  
		Last Modified: Tue, 04 Aug 2026 01:46:52 GMT  
		Size: 595.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c412903fd8314d30cff63cd0cfcda44b9b7730251b28140cb6ab1a0f2b455c2e`  
		Last Modified: Tue, 04 Aug 2026 01:46:52 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:17` - unknown; unknown

```console
$ docker pull odoo@sha256:afef83446bb0ab1fc8aa3ccc44a314f8db19a67bbff990d091873956adbd713f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.8 MB (40844962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36dc6ea40edaa2419f6551edea435114f3bc49b24837ceaffb149550a7ae6e55`

```dockerfile
```

-	Layers:
	-	`sha256:054ac2ba35725c6507921a504a25dbc88b4b1d1442b76e89cbb8cf53291080b9`  
		Last Modified: Tue, 04 Aug 2026 01:46:52 GMT  
		Size: 40.8 MB (40817645 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a8b5875c72a25a100063c6ad3a7e0dae68f5665920aadc118c5a179f44e4c6f2`  
		Last Modified: Tue, 04 Aug 2026 01:46:50 GMT  
		Size: 27.3 KB (27317 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:17` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:7edf8f8d0cd26228d77cc9194facaad30334b57c57196f10447bca0e40696304
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **604.8 MB (604776749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4df7ea85697792c513dea28a2df2ea65c19281b90bef7a21c17119bbdd15cc8e`
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
# Tue, 04 Aug 2026 01:43:46 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 04 Aug 2026 01:43:46 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 04 Aug 2026 01:43:46 GMT
ENV LANG=en_US.UTF-8
# Tue, 04 Aug 2026 01:43:46 GMT
ARG TARGETARCH=arm64
# Tue, 04 Aug 2026 01:43:46 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     DEBIAN_FRONTEND=noninteractive     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 04 Aug 2026 01:43:54 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jammy-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:26 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:26 GMT
ENV ODOO_VERSION=17.0
# Tue, 04 Aug 2026 01:44:26 GMT
ARG ODOO_RELEASE=20260803
# Tue, 04 Aug 2026 01:44:26 GMT
ARG ODOO_SHA=b831f84ff1d0e79b2d55ee6d56c75b8fcb2bd3d9
# Tue, 04 Aug 2026 01:45:32 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260803 ODOO_SHA=b831f84ff1d0e79b2d55ee6d56c75b8fcb2bd3d9
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 04 Aug 2026 01:45:33 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:45:33 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 04 Aug 2026 01:45:33 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260803 ODOO_SHA=b831f84ff1d0e79b2d55ee6d56c75b8fcb2bd3d9
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 04 Aug 2026 01:45:33 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 04 Aug 2026 01:45:33 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 04 Aug 2026 01:45:33 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 04 Aug 2026 01:45:33 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 04 Aug 2026 01:45:33 GMT
USER odoo
# Tue, 04 Aug 2026 01:45:33 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 04 Aug 2026 01:45:33 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:e737c5ed04040f2f0a2a5834e272c5fa0ab6a31a0641be05eb1669153c7c4cfc`  
		Last Modified: Fri, 31 Jul 2026 22:53:57 GMT  
		Size: 27.6 MB (27620032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:022600d0ced771c65453054fe0941c684f9307629260d8e187cf539860b9bc6a`  
		Last Modified: Tue, 04 Aug 2026 01:46:58 GMT  
		Size: 227.9 MB (227944893 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d89d03ab6847fcfcbb20915a7b472ce99cf6e2c9dbcc066d5b529e533f3e953`  
		Last Modified: Tue, 04 Aug 2026 01:46:51 GMT  
		Size: 2.5 MB (2549334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3cb8bac3874c4ac0dec3ea8804a2964afa58ee6c50efdc6affbe0a641598fe4`  
		Last Modified: Tue, 04 Aug 2026 01:46:50 GMT  
		Size: 682.8 KB (682847 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9768393c577de275bd8d18274995a21074689926a3ac73b0c4d3d9af07441860`  
		Last Modified: Tue, 04 Aug 2026 01:47:00 GMT  
		Size: 346.0 MB (345976849 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffeac5cc6cbeb4f27aac95c6db676833d2be005dcd1c6f387dd4c524405ec871`  
		Last Modified: Tue, 04 Aug 2026 01:46:52 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cef4fcddb002ff910e5929280c7b7ccc92577c2b015b96763a4850a239fafe5c`  
		Last Modified: Tue, 04 Aug 2026 01:46:52 GMT  
		Size: 554.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80dd187cd4aae0c898690b0d498a69a1f96ad54a71ec0527c3252dd047f7beff`  
		Last Modified: Tue, 04 Aug 2026 01:46:53 GMT  
		Size: 594.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b016afa13f7b000fe2d3335aa54410e49358c3026a16f46f420e997228559d6b`  
		Last Modified: Tue, 04 Aug 2026 01:46:53 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:17` - unknown; unknown

```console
$ docker pull odoo@sha256:5902c0f39f2893789ed2feeab292efb5d3c3ea6ab0d19ed313fbe09e9357d4d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.9 MB (40851618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61b9f3b81f235cc4f395329e79c74ea388fdbe26971a79d512c19d1c978719d7`

```dockerfile
```

-	Layers:
	-	`sha256:0f92cfe9fe986eb5116a85f5cf7444910da82eb8a0628b84bf9bbba5aab0a620`  
		Last Modified: Tue, 04 Aug 2026 01:46:53 GMT  
		Size: 40.8 MB (40824149 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0cc76df18a79d32a3a967c1d136bf73320b18bf13fd0ed3e9cb3dafb488d3a3d`  
		Last Modified: Tue, 04 Aug 2026 01:46:50 GMT  
		Size: 27.5 KB (27469 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:17.0`

```console
$ docker pull odoo@sha256:a681c1ddcc6ebd2064f2f5d7f06a17d7a6873df63084636f5adb802b415d6ac2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `odoo:17.0` - linux; amd64

```console
$ docker pull odoo@sha256:c799eb9fde76c8fc5655f0054d474407408789e9206e4ccc1dfe1a4ecd1f21a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **609.8 MB (609846921 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:812698078005bc7ed75c99f037c1f8d7118853973d553087d2f9077f0bdc47b6`
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
# Tue, 04 Aug 2026 01:43:49 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 04 Aug 2026 01:43:49 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 04 Aug 2026 01:43:49 GMT
ENV LANG=en_US.UTF-8
# Tue, 04 Aug 2026 01:43:49 GMT
ARG TARGETARCH=amd64
# Tue, 04 Aug 2026 01:43:49 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     DEBIAN_FRONTEND=noninteractive     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 04 Aug 2026 01:43:56 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jammy-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:27 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:27 GMT
ENV ODOO_VERSION=17.0
# Tue, 04 Aug 2026 01:44:27 GMT
ARG ODOO_RELEASE=20260803
# Tue, 04 Aug 2026 01:44:27 GMT
ARG ODOO_SHA=b831f84ff1d0e79b2d55ee6d56c75b8fcb2bd3d9
# Tue, 04 Aug 2026 01:45:34 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260803 ODOO_SHA=b831f84ff1d0e79b2d55ee6d56c75b8fcb2bd3d9
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 04 Aug 2026 01:45:34 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:45:34 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 04 Aug 2026 01:45:34 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260803 ODOO_SHA=b831f84ff1d0e79b2d55ee6d56c75b8fcb2bd3d9
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 04 Aug 2026 01:45:34 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 04 Aug 2026 01:45:34 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 04 Aug 2026 01:45:34 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 04 Aug 2026 01:45:34 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 04 Aug 2026 01:45:34 GMT
USER odoo
# Tue, 04 Aug 2026 01:45:34 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 04 Aug 2026 01:45:34 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:39a945af8df2ad9343f141c82355d3f2c4b576d432eda34c460d630607462b60`  
		Last Modified: Fri, 31 Jul 2026 22:53:51 GMT  
		Size: 29.7 MB (29736517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9d2cca9a51f61dd9bca939b07de8af034fc3b157c25c5dd207502443c65602f`  
		Last Modified: Tue, 04 Aug 2026 01:46:59 GMT  
		Size: 230.5 MB (230522184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9c390f1e4d0774c1bbf67c9afb89d707100b735168550623296f4e7c3c8302d`  
		Last Modified: Tue, 04 Aug 2026 01:46:50 GMT  
		Size: 2.6 MB (2553825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e02bf0e88263722cdadb6fc523991fc8bd053f5d3a2202bd7beb6ce1ad46438e`  
		Last Modified: Tue, 04 Aug 2026 01:46:50 GMT  
		Size: 682.8 KB (682834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea02d394113d385cb58a183030a491fb6fa962510d62f0a8ba4dc03bd3f97590`  
		Last Modified: Tue, 04 Aug 2026 01:47:01 GMT  
		Size: 346.3 MB (346348764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d1a47d16507563c2c6f5c80d818253276e8864f43b0a71b93254256ec204f23`  
		Last Modified: Tue, 04 Aug 2026 01:46:51 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3761ed2efc1ba935912ecfe521fde06b7ba70486d4955d882674a5d413dc673`  
		Last Modified: Tue, 04 Aug 2026 01:46:51 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7053871a9a43379c20bc0bc7b6b66545bc4689ce50b421c6a802e13ac6a323e`  
		Last Modified: Tue, 04 Aug 2026 01:46:52 GMT  
		Size: 595.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c412903fd8314d30cff63cd0cfcda44b9b7730251b28140cb6ab1a0f2b455c2e`  
		Last Modified: Tue, 04 Aug 2026 01:46:52 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:17.0` - unknown; unknown

```console
$ docker pull odoo@sha256:afef83446bb0ab1fc8aa3ccc44a314f8db19a67bbff990d091873956adbd713f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.8 MB (40844962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36dc6ea40edaa2419f6551edea435114f3bc49b24837ceaffb149550a7ae6e55`

```dockerfile
```

-	Layers:
	-	`sha256:054ac2ba35725c6507921a504a25dbc88b4b1d1442b76e89cbb8cf53291080b9`  
		Last Modified: Tue, 04 Aug 2026 01:46:52 GMT  
		Size: 40.8 MB (40817645 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a8b5875c72a25a100063c6ad3a7e0dae68f5665920aadc118c5a179f44e4c6f2`  
		Last Modified: Tue, 04 Aug 2026 01:46:50 GMT  
		Size: 27.3 KB (27317 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:17.0` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:7edf8f8d0cd26228d77cc9194facaad30334b57c57196f10447bca0e40696304
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **604.8 MB (604776749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4df7ea85697792c513dea28a2df2ea65c19281b90bef7a21c17119bbdd15cc8e`
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
# Tue, 04 Aug 2026 01:43:46 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 04 Aug 2026 01:43:46 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 04 Aug 2026 01:43:46 GMT
ENV LANG=en_US.UTF-8
# Tue, 04 Aug 2026 01:43:46 GMT
ARG TARGETARCH=arm64
# Tue, 04 Aug 2026 01:43:46 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     DEBIAN_FRONTEND=noninteractive     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 04 Aug 2026 01:43:54 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jammy-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:26 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:26 GMT
ENV ODOO_VERSION=17.0
# Tue, 04 Aug 2026 01:44:26 GMT
ARG ODOO_RELEASE=20260803
# Tue, 04 Aug 2026 01:44:26 GMT
ARG ODOO_SHA=b831f84ff1d0e79b2d55ee6d56c75b8fcb2bd3d9
# Tue, 04 Aug 2026 01:45:32 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260803 ODOO_SHA=b831f84ff1d0e79b2d55ee6d56c75b8fcb2bd3d9
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 04 Aug 2026 01:45:33 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:45:33 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 04 Aug 2026 01:45:33 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260803 ODOO_SHA=b831f84ff1d0e79b2d55ee6d56c75b8fcb2bd3d9
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 04 Aug 2026 01:45:33 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 04 Aug 2026 01:45:33 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 04 Aug 2026 01:45:33 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 04 Aug 2026 01:45:33 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 04 Aug 2026 01:45:33 GMT
USER odoo
# Tue, 04 Aug 2026 01:45:33 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 04 Aug 2026 01:45:33 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:e737c5ed04040f2f0a2a5834e272c5fa0ab6a31a0641be05eb1669153c7c4cfc`  
		Last Modified: Fri, 31 Jul 2026 22:53:57 GMT  
		Size: 27.6 MB (27620032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:022600d0ced771c65453054fe0941c684f9307629260d8e187cf539860b9bc6a`  
		Last Modified: Tue, 04 Aug 2026 01:46:58 GMT  
		Size: 227.9 MB (227944893 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d89d03ab6847fcfcbb20915a7b472ce99cf6e2c9dbcc066d5b529e533f3e953`  
		Last Modified: Tue, 04 Aug 2026 01:46:51 GMT  
		Size: 2.5 MB (2549334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3cb8bac3874c4ac0dec3ea8804a2964afa58ee6c50efdc6affbe0a641598fe4`  
		Last Modified: Tue, 04 Aug 2026 01:46:50 GMT  
		Size: 682.8 KB (682847 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9768393c577de275bd8d18274995a21074689926a3ac73b0c4d3d9af07441860`  
		Last Modified: Tue, 04 Aug 2026 01:47:00 GMT  
		Size: 346.0 MB (345976849 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffeac5cc6cbeb4f27aac95c6db676833d2be005dcd1c6f387dd4c524405ec871`  
		Last Modified: Tue, 04 Aug 2026 01:46:52 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cef4fcddb002ff910e5929280c7b7ccc92577c2b015b96763a4850a239fafe5c`  
		Last Modified: Tue, 04 Aug 2026 01:46:52 GMT  
		Size: 554.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80dd187cd4aae0c898690b0d498a69a1f96ad54a71ec0527c3252dd047f7beff`  
		Last Modified: Tue, 04 Aug 2026 01:46:53 GMT  
		Size: 594.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b016afa13f7b000fe2d3335aa54410e49358c3026a16f46f420e997228559d6b`  
		Last Modified: Tue, 04 Aug 2026 01:46:53 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:17.0` - unknown; unknown

```console
$ docker pull odoo@sha256:5902c0f39f2893789ed2feeab292efb5d3c3ea6ab0d19ed313fbe09e9357d4d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.9 MB (40851618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61b9f3b81f235cc4f395329e79c74ea388fdbe26971a79d512c19d1c978719d7`

```dockerfile
```

-	Layers:
	-	`sha256:0f92cfe9fe986eb5116a85f5cf7444910da82eb8a0628b84bf9bbba5aab0a620`  
		Last Modified: Tue, 04 Aug 2026 01:46:53 GMT  
		Size: 40.8 MB (40824149 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0cc76df18a79d32a3a967c1d136bf73320b18bf13fd0ed3e9cb3dafb488d3a3d`  
		Last Modified: Tue, 04 Aug 2026 01:46:50 GMT  
		Size: 27.5 KB (27469 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:17.0-20260803`

```console
$ docker pull odoo@sha256:a681c1ddcc6ebd2064f2f5d7f06a17d7a6873df63084636f5adb802b415d6ac2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `odoo:17.0-20260803` - linux; amd64

```console
$ docker pull odoo@sha256:c799eb9fde76c8fc5655f0054d474407408789e9206e4ccc1dfe1a4ecd1f21a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **609.8 MB (609846921 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:812698078005bc7ed75c99f037c1f8d7118853973d553087d2f9077f0bdc47b6`
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
# Tue, 04 Aug 2026 01:43:49 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 04 Aug 2026 01:43:49 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 04 Aug 2026 01:43:49 GMT
ENV LANG=en_US.UTF-8
# Tue, 04 Aug 2026 01:43:49 GMT
ARG TARGETARCH=amd64
# Tue, 04 Aug 2026 01:43:49 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     DEBIAN_FRONTEND=noninteractive     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 04 Aug 2026 01:43:56 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jammy-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:27 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:27 GMT
ENV ODOO_VERSION=17.0
# Tue, 04 Aug 2026 01:44:27 GMT
ARG ODOO_RELEASE=20260803
# Tue, 04 Aug 2026 01:44:27 GMT
ARG ODOO_SHA=b831f84ff1d0e79b2d55ee6d56c75b8fcb2bd3d9
# Tue, 04 Aug 2026 01:45:34 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260803 ODOO_SHA=b831f84ff1d0e79b2d55ee6d56c75b8fcb2bd3d9
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 04 Aug 2026 01:45:34 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:45:34 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 04 Aug 2026 01:45:34 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260803 ODOO_SHA=b831f84ff1d0e79b2d55ee6d56c75b8fcb2bd3d9
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 04 Aug 2026 01:45:34 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 04 Aug 2026 01:45:34 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 04 Aug 2026 01:45:34 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 04 Aug 2026 01:45:34 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 04 Aug 2026 01:45:34 GMT
USER odoo
# Tue, 04 Aug 2026 01:45:34 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 04 Aug 2026 01:45:34 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:39a945af8df2ad9343f141c82355d3f2c4b576d432eda34c460d630607462b60`  
		Last Modified: Fri, 31 Jul 2026 22:53:51 GMT  
		Size: 29.7 MB (29736517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9d2cca9a51f61dd9bca939b07de8af034fc3b157c25c5dd207502443c65602f`  
		Last Modified: Tue, 04 Aug 2026 01:46:59 GMT  
		Size: 230.5 MB (230522184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9c390f1e4d0774c1bbf67c9afb89d707100b735168550623296f4e7c3c8302d`  
		Last Modified: Tue, 04 Aug 2026 01:46:50 GMT  
		Size: 2.6 MB (2553825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e02bf0e88263722cdadb6fc523991fc8bd053f5d3a2202bd7beb6ce1ad46438e`  
		Last Modified: Tue, 04 Aug 2026 01:46:50 GMT  
		Size: 682.8 KB (682834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea02d394113d385cb58a183030a491fb6fa962510d62f0a8ba4dc03bd3f97590`  
		Last Modified: Tue, 04 Aug 2026 01:47:01 GMT  
		Size: 346.3 MB (346348764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d1a47d16507563c2c6f5c80d818253276e8864f43b0a71b93254256ec204f23`  
		Last Modified: Tue, 04 Aug 2026 01:46:51 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3761ed2efc1ba935912ecfe521fde06b7ba70486d4955d882674a5d413dc673`  
		Last Modified: Tue, 04 Aug 2026 01:46:51 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7053871a9a43379c20bc0bc7b6b66545bc4689ce50b421c6a802e13ac6a323e`  
		Last Modified: Tue, 04 Aug 2026 01:46:52 GMT  
		Size: 595.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c412903fd8314d30cff63cd0cfcda44b9b7730251b28140cb6ab1a0f2b455c2e`  
		Last Modified: Tue, 04 Aug 2026 01:46:52 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:17.0-20260803` - unknown; unknown

```console
$ docker pull odoo@sha256:afef83446bb0ab1fc8aa3ccc44a314f8db19a67bbff990d091873956adbd713f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.8 MB (40844962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36dc6ea40edaa2419f6551edea435114f3bc49b24837ceaffb149550a7ae6e55`

```dockerfile
```

-	Layers:
	-	`sha256:054ac2ba35725c6507921a504a25dbc88b4b1d1442b76e89cbb8cf53291080b9`  
		Last Modified: Tue, 04 Aug 2026 01:46:52 GMT  
		Size: 40.8 MB (40817645 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a8b5875c72a25a100063c6ad3a7e0dae68f5665920aadc118c5a179f44e4c6f2`  
		Last Modified: Tue, 04 Aug 2026 01:46:50 GMT  
		Size: 27.3 KB (27317 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:17.0-20260803` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:7edf8f8d0cd26228d77cc9194facaad30334b57c57196f10447bca0e40696304
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **604.8 MB (604776749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4df7ea85697792c513dea28a2df2ea65c19281b90bef7a21c17119bbdd15cc8e`
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
# Tue, 04 Aug 2026 01:43:46 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 04 Aug 2026 01:43:46 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 04 Aug 2026 01:43:46 GMT
ENV LANG=en_US.UTF-8
# Tue, 04 Aug 2026 01:43:46 GMT
ARG TARGETARCH=arm64
# Tue, 04 Aug 2026 01:43:46 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     DEBIAN_FRONTEND=noninteractive     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 04 Aug 2026 01:43:54 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jammy-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:26 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:44:26 GMT
ENV ODOO_VERSION=17.0
# Tue, 04 Aug 2026 01:44:26 GMT
ARG ODOO_RELEASE=20260803
# Tue, 04 Aug 2026 01:44:26 GMT
ARG ODOO_SHA=b831f84ff1d0e79b2d55ee6d56c75b8fcb2bd3d9
# Tue, 04 Aug 2026 01:45:32 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260803 ODOO_SHA=b831f84ff1d0e79b2d55ee6d56c75b8fcb2bd3d9
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 04 Aug 2026 01:45:33 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:45:33 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 04 Aug 2026 01:45:33 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260803 ODOO_SHA=b831f84ff1d0e79b2d55ee6d56c75b8fcb2bd3d9
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 04 Aug 2026 01:45:33 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 04 Aug 2026 01:45:33 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 04 Aug 2026 01:45:33 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 04 Aug 2026 01:45:33 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 04 Aug 2026 01:45:33 GMT
USER odoo
# Tue, 04 Aug 2026 01:45:33 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 04 Aug 2026 01:45:33 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:e737c5ed04040f2f0a2a5834e272c5fa0ab6a31a0641be05eb1669153c7c4cfc`  
		Last Modified: Fri, 31 Jul 2026 22:53:57 GMT  
		Size: 27.6 MB (27620032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:022600d0ced771c65453054fe0941c684f9307629260d8e187cf539860b9bc6a`  
		Last Modified: Tue, 04 Aug 2026 01:46:58 GMT  
		Size: 227.9 MB (227944893 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d89d03ab6847fcfcbb20915a7b472ce99cf6e2c9dbcc066d5b529e533f3e953`  
		Last Modified: Tue, 04 Aug 2026 01:46:51 GMT  
		Size: 2.5 MB (2549334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3cb8bac3874c4ac0dec3ea8804a2964afa58ee6c50efdc6affbe0a641598fe4`  
		Last Modified: Tue, 04 Aug 2026 01:46:50 GMT  
		Size: 682.8 KB (682847 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9768393c577de275bd8d18274995a21074689926a3ac73b0c4d3d9af07441860`  
		Last Modified: Tue, 04 Aug 2026 01:47:00 GMT  
		Size: 346.0 MB (345976849 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffeac5cc6cbeb4f27aac95c6db676833d2be005dcd1c6f387dd4c524405ec871`  
		Last Modified: Tue, 04 Aug 2026 01:46:52 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cef4fcddb002ff910e5929280c7b7ccc92577c2b015b96763a4850a239fafe5c`  
		Last Modified: Tue, 04 Aug 2026 01:46:52 GMT  
		Size: 554.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80dd187cd4aae0c898690b0d498a69a1f96ad54a71ec0527c3252dd047f7beff`  
		Last Modified: Tue, 04 Aug 2026 01:46:53 GMT  
		Size: 594.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b016afa13f7b000fe2d3335aa54410e49358c3026a16f46f420e997228559d6b`  
		Last Modified: Tue, 04 Aug 2026 01:46:53 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:17.0-20260803` - unknown; unknown

```console
$ docker pull odoo@sha256:5902c0f39f2893789ed2feeab292efb5d3c3ea6ab0d19ed313fbe09e9357d4d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.9 MB (40851618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61b9f3b81f235cc4f395329e79c74ea388fdbe26971a79d512c19d1c978719d7`

```dockerfile
```

-	Layers:
	-	`sha256:0f92cfe9fe986eb5116a85f5cf7444910da82eb8a0628b84bf9bbba5aab0a620`  
		Last Modified: Tue, 04 Aug 2026 01:46:53 GMT  
		Size: 40.8 MB (40824149 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0cc76df18a79d32a3a967c1d136bf73320b18bf13fd0ed3e9cb3dafb488d3a3d`  
		Last Modified: Tue, 04 Aug 2026 01:46:50 GMT  
		Size: 27.5 KB (27469 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:18`

```console
$ docker pull odoo@sha256:5e73e256c0d7dd11f4f2f96ec9d42397546b8d4c0f44071b6cdb99f54dc07fef
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
$ docker pull odoo@sha256:f5005cde7544ca269fcb734e75ae8ef2d11d33bae04ccd9e219c8b786032c105
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **675.3 MB (675275469 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:812ef0c095e8944d56ca6f3442d15ad03dd5c2bf2604001e6a41eb74617debb2`
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
# Tue, 04 Aug 2026 01:43:54 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 04 Aug 2026 01:43:54 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 04 Aug 2026 01:43:54 GMT
ENV LANG=en_US.UTF-8
# Tue, 04 Aug 2026 01:43:54 GMT
ARG TARGETARCH=amd64
# Tue, 04 Aug 2026 01:43:54 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 04 Aug 2026 01:44:02 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:10 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:10 GMT
ENV ODOO_VERSION=18.0
# Tue, 04 Aug 2026 01:45:10 GMT
ARG ODOO_RELEASE=20260803
# Tue, 04 Aug 2026 01:45:10 GMT
ARG ODOO_SHA=25ab944dc7af9959fc3cca6a27b7aeb9b769435b
# Tue, 04 Aug 2026 01:46:00 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260803 ODOO_SHA=25ab944dc7af9959fc3cca6a27b7aeb9b769435b
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 04 Aug 2026 01:46:01 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:46:01 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 04 Aug 2026 01:46:01 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260803 ODOO_SHA=25ab944dc7af9959fc3cca6a27b7aeb9b769435b
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 04 Aug 2026 01:46:01 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 04 Aug 2026 01:46:01 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 04 Aug 2026 01:46:01 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 04 Aug 2026 01:46:01 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 04 Aug 2026 01:46:01 GMT
USER odoo
# Tue, 04 Aug 2026 01:46:01 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 04 Aug 2026 01:46:01 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6123c6e8faef3dad282b634459b76c79012a0ae7d9298864c3378c085244a4b`  
		Last Modified: Tue, 04 Aug 2026 01:47:27 GMT  
		Size: 241.1 MB (241082382 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:500c55a645bb936351b3c2aebdd5424d1f7e4c23c532e2c86106274090fc905e`  
		Last Modified: Tue, 04 Aug 2026 01:47:18 GMT  
		Size: 14.2 MB (14202697 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:413380c82aaef6ef99ce2fcd2fa6629be106b052506d79150e077e8e30295979`  
		Last Modified: Tue, 04 Aug 2026 01:47:16 GMT  
		Size: 867.3 KB (867341 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75acc78ff6f406a06fa71ac33abb35aab7622a652a7eee37faf323382bee76cc`  
		Last Modified: Tue, 04 Aug 2026 01:47:29 GMT  
		Size: 389.4 MB (389369144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d1a47d16507563c2c6f5c80d818253276e8864f43b0a71b93254256ec204f23`  
		Last Modified: Tue, 04 Aug 2026 01:46:51 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe072b9650c5a63aa4adc431a6436b23131263aac2e065a44c6120d3c0553c16`  
		Last Modified: Tue, 04 Aug 2026 01:47:18 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dcc478e5d26137ecedfdc719e30e3e17c884c624d4a82a1b16b1826b819c82b`  
		Last Modified: Tue, 04 Aug 2026 01:47:19 GMT  
		Size: 595.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04c62fbf46f16af4025b86f9c848c6cd9c4abcd5a85c27682193f10b95da9ee3`  
		Last Modified: Tue, 04 Aug 2026 01:47:19 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18` - unknown; unknown

```console
$ docker pull odoo@sha256:4c8a07b0d55a4ff7febdec0a7514295f9b07afddbe839ec96bdc649395808515
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.9 MB (43854451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31e06ff2501494eef36f1080891436d44b9e9e39a35fee316204077aff88285d`

```dockerfile
```

-	Layers:
	-	`sha256:544dff772eab65c9f884f83214745f81927e00a574122329fda7bd0e9bfc82ff`  
		Last Modified: Tue, 04 Aug 2026 01:47:19 GMT  
		Size: 43.8 MB (43827254 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5699762f5e19d17ceda9e565229aa581ff78d0944b13c44ad876abf70286baa9`  
		Last Modified: Tue, 04 Aug 2026 01:47:16 GMT  
		Size: 27.2 KB (27197 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:18` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:ab3b8712f2ba860657f8b617611a6a1ce36bc9738d43a50948e11c40a6b918b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **669.2 MB (669247927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b0e3c6006fb786b2f233bc73dec3dca71ce511b8b87ee92653c5680d20b05cf`
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
# Tue, 04 Aug 2026 01:43:56 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 04 Aug 2026 01:43:56 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 04 Aug 2026 01:43:56 GMT
ENV LANG=en_US.UTF-8
# Tue, 04 Aug 2026 01:43:56 GMT
ARG TARGETARCH=arm64
# Tue, 04 Aug 2026 01:43:56 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 04 Aug 2026 01:44:08 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:13 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:13 GMT
ENV ODOO_VERSION=18.0
# Tue, 04 Aug 2026 01:45:13 GMT
ARG ODOO_RELEASE=20260803
# Tue, 04 Aug 2026 01:45:13 GMT
ARG ODOO_SHA=25ab944dc7af9959fc3cca6a27b7aeb9b769435b
# Tue, 04 Aug 2026 01:46:14 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260803 ODOO_SHA=25ab944dc7af9959fc3cca6a27b7aeb9b769435b
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 04 Aug 2026 01:46:14 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:46:14 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 04 Aug 2026 01:46:14 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260803 ODOO_SHA=25ab944dc7af9959fc3cca6a27b7aeb9b769435b
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 04 Aug 2026 01:46:14 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 04 Aug 2026 01:46:14 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 04 Aug 2026 01:46:14 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 04 Aug 2026 01:46:14 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 04 Aug 2026 01:46:14 GMT
USER odoo
# Tue, 04 Aug 2026 01:46:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 04 Aug 2026 01:46:14 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c026f3b2c66e61e1fd7f553389f5586773b7e42e5886aef4eca9eacba88fbb2`  
		Last Modified: Tue, 04 Aug 2026 01:47:52 GMT  
		Size: 236.1 MB (236102513 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eed6ceb34b488fbec0e58de6934ba0f62a40f2c11272eeb8cf65354ba218a2ae`  
		Last Modified: Tue, 04 Aug 2026 01:47:44 GMT  
		Size: 14.2 MB (14171262 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad179dd6dc666a775000344634c2630032c316da3b4362bc1b70e8d88eee2d7a`  
		Last Modified: Tue, 04 Aug 2026 01:47:43 GMT  
		Size: 867.3 KB (867282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c394538e3709b778a902a5c000612e844af2fd52f7fdb11aedc605e249721d38`  
		Last Modified: Tue, 04 Aug 2026 01:47:55 GMT  
		Size: 389.2 MB (389217258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29ad003d70e0bcf030301b117e1e1d8a9ab84432ea607e9e3a3a79ac9bfc7121`  
		Last Modified: Tue, 04 Aug 2026 01:47:44 GMT  
		Size: 768.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:766fa398fcff5f70d16f138b4ebb88054cc243b77e6416ba4d9116268fb3ba14`  
		Last Modified: Tue, 04 Aug 2026 01:47:46 GMT  
		Size: 554.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73b0b1a7b5fea6cb622071d5b68d40491ff50a529d15db40236e0e5ec82b6530`  
		Last Modified: Tue, 04 Aug 2026 01:47:46 GMT  
		Size: 594.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a37e5b9cfa5597811f60fcadd8b8c442109319ca7186a92ed870af99af1e0aad`  
		Last Modified: Tue, 04 Aug 2026 01:47:47 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18` - unknown; unknown

```console
$ docker pull odoo@sha256:8ea95b9bac1fdf811e48a4cee3aa215277fabee538782f99046f2ab8172ec1b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.9 MB (43861875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86a072c2a97f3262c2533f78cf180d99d95a8e363771b69dc60ff78c4771ee6d`

```dockerfile
```

-	Layers:
	-	`sha256:e3648f088c4ea3f9710dcc9b2e2253bbc0412bc4525dea8d5bfc86fc01dd4052`  
		Last Modified: Tue, 04 Aug 2026 01:47:46 GMT  
		Size: 43.8 MB (43834526 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ef4f3150368e000c6bee8998af7725488123ac5515a1ca481be0019c6a62edc9`  
		Last Modified: Tue, 04 Aug 2026 01:47:43 GMT  
		Size: 27.3 KB (27349 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:18` - linux; ppc64le

```console
$ docker pull odoo@sha256:8748f41b7002ba74315ab50a9f3857e50e119c031787b05ee8931cf4a3f31979
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **691.7 MB (691699249 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:259db5f705a0271f99a114d4bfcfcb646ce75bd4de92b6011b72203035f30fb6`
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
ARG ODOO_RELEASE=20260803
# Tue, 04 Aug 2026 02:18:29 GMT
ARG ODOO_SHA=25ab944dc7af9959fc3cca6a27b7aeb9b769435b
# Tue, 04 Aug 2026 02:20:56 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260803 ODOO_SHA=25ab944dc7af9959fc3cca6a27b7aeb9b769435b
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 04 Aug 2026 02:20:58 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 02:20:58 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 04 Aug 2026 02:20:59 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260803 ODOO_SHA=25ab944dc7af9959fc3cca6a27b7aeb9b769435b
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 04 Aug 2026 02:20:59 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 04 Aug 2026 02:20:59 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 04 Aug 2026 02:20:59 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 04 Aug 2026 02:20:59 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 04 Aug 2026 02:20:59 GMT
USER odoo
# Tue, 04 Aug 2026 02:20:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 04 Aug 2026 02:20:59 GMT
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
	-	`sha256:19a6b0d838a2848ad2b5dffefd0a507a2d247ce503bd34fe9507d5bb4cf8855e`  
		Last Modified: Tue, 04 Aug 2026 02:24:31 GMT  
		Size: 389.9 MB (389916776 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42425a42cba844e683f9610c2731f9723b927c13c77a65a31f6da12cb0ecc153`  
		Last Modified: Tue, 04 Aug 2026 02:24:18 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e06b0169ff3bff668607bdddf0f03f7099b85bd25d244880bc7557e9994e6299`  
		Last Modified: Tue, 04 Aug 2026 02:24:20 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c10eb9f68b4ac5bd3c0a3d3e8ed86d36e0d8fa3a2d827736c07e0c20af59b83`  
		Last Modified: Tue, 04 Aug 2026 02:24:20 GMT  
		Size: 598.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:236fcb40f332cfd90d0f9aee3e5e92526cb3e1bd0d0c03d7aad912ff5c8c545e`  
		Last Modified: Tue, 04 Aug 2026 02:24:21 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18` - unknown; unknown

```console
$ docker pull odoo@sha256:f800abf4e22e246a6fded8556bb7b5a4e4691b914d2ed4aa0fb867d160784f20
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.9 MB (43862871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9074f779606e611185c5a70c7f03dd9ecb025f29a4bb2c8a094fff9d61e9f1dc`

```dockerfile
```

-	Layers:
	-	`sha256:706d9752fe75b450c2bfbd871a31079cebdb7a1e3f3ddcdddc015cd78486dd2f`  
		Last Modified: Tue, 04 Aug 2026 02:24:20 GMT  
		Size: 43.8 MB (43835618 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fd9780eb35ae4cbe47eb8b54531e51ac5ac57df1795588f37d68b3aceb137528`  
		Last Modified: Tue, 04 Aug 2026 02:24:17 GMT  
		Size: 27.3 KB (27253 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:18.0`

```console
$ docker pull odoo@sha256:5e73e256c0d7dd11f4f2f96ec9d42397546b8d4c0f44071b6cdb99f54dc07fef
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
$ docker pull odoo@sha256:f5005cde7544ca269fcb734e75ae8ef2d11d33bae04ccd9e219c8b786032c105
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **675.3 MB (675275469 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:812ef0c095e8944d56ca6f3442d15ad03dd5c2bf2604001e6a41eb74617debb2`
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
# Tue, 04 Aug 2026 01:43:54 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 04 Aug 2026 01:43:54 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 04 Aug 2026 01:43:54 GMT
ENV LANG=en_US.UTF-8
# Tue, 04 Aug 2026 01:43:54 GMT
ARG TARGETARCH=amd64
# Tue, 04 Aug 2026 01:43:54 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 04 Aug 2026 01:44:02 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:10 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:10 GMT
ENV ODOO_VERSION=18.0
# Tue, 04 Aug 2026 01:45:10 GMT
ARG ODOO_RELEASE=20260803
# Tue, 04 Aug 2026 01:45:10 GMT
ARG ODOO_SHA=25ab944dc7af9959fc3cca6a27b7aeb9b769435b
# Tue, 04 Aug 2026 01:46:00 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260803 ODOO_SHA=25ab944dc7af9959fc3cca6a27b7aeb9b769435b
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 04 Aug 2026 01:46:01 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:46:01 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 04 Aug 2026 01:46:01 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260803 ODOO_SHA=25ab944dc7af9959fc3cca6a27b7aeb9b769435b
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 04 Aug 2026 01:46:01 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 04 Aug 2026 01:46:01 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 04 Aug 2026 01:46:01 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 04 Aug 2026 01:46:01 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 04 Aug 2026 01:46:01 GMT
USER odoo
# Tue, 04 Aug 2026 01:46:01 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 04 Aug 2026 01:46:01 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6123c6e8faef3dad282b634459b76c79012a0ae7d9298864c3378c085244a4b`  
		Last Modified: Tue, 04 Aug 2026 01:47:27 GMT  
		Size: 241.1 MB (241082382 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:500c55a645bb936351b3c2aebdd5424d1f7e4c23c532e2c86106274090fc905e`  
		Last Modified: Tue, 04 Aug 2026 01:47:18 GMT  
		Size: 14.2 MB (14202697 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:413380c82aaef6ef99ce2fcd2fa6629be106b052506d79150e077e8e30295979`  
		Last Modified: Tue, 04 Aug 2026 01:47:16 GMT  
		Size: 867.3 KB (867341 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75acc78ff6f406a06fa71ac33abb35aab7622a652a7eee37faf323382bee76cc`  
		Last Modified: Tue, 04 Aug 2026 01:47:29 GMT  
		Size: 389.4 MB (389369144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d1a47d16507563c2c6f5c80d818253276e8864f43b0a71b93254256ec204f23`  
		Last Modified: Tue, 04 Aug 2026 01:46:51 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe072b9650c5a63aa4adc431a6436b23131263aac2e065a44c6120d3c0553c16`  
		Last Modified: Tue, 04 Aug 2026 01:47:18 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dcc478e5d26137ecedfdc719e30e3e17c884c624d4a82a1b16b1826b819c82b`  
		Last Modified: Tue, 04 Aug 2026 01:47:19 GMT  
		Size: 595.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04c62fbf46f16af4025b86f9c848c6cd9c4abcd5a85c27682193f10b95da9ee3`  
		Last Modified: Tue, 04 Aug 2026 01:47:19 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18.0` - unknown; unknown

```console
$ docker pull odoo@sha256:4c8a07b0d55a4ff7febdec0a7514295f9b07afddbe839ec96bdc649395808515
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.9 MB (43854451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31e06ff2501494eef36f1080891436d44b9e9e39a35fee316204077aff88285d`

```dockerfile
```

-	Layers:
	-	`sha256:544dff772eab65c9f884f83214745f81927e00a574122329fda7bd0e9bfc82ff`  
		Last Modified: Tue, 04 Aug 2026 01:47:19 GMT  
		Size: 43.8 MB (43827254 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5699762f5e19d17ceda9e565229aa581ff78d0944b13c44ad876abf70286baa9`  
		Last Modified: Tue, 04 Aug 2026 01:47:16 GMT  
		Size: 27.2 KB (27197 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:18.0` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:ab3b8712f2ba860657f8b617611a6a1ce36bc9738d43a50948e11c40a6b918b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **669.2 MB (669247927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b0e3c6006fb786b2f233bc73dec3dca71ce511b8b87ee92653c5680d20b05cf`
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
# Tue, 04 Aug 2026 01:43:56 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 04 Aug 2026 01:43:56 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 04 Aug 2026 01:43:56 GMT
ENV LANG=en_US.UTF-8
# Tue, 04 Aug 2026 01:43:56 GMT
ARG TARGETARCH=arm64
# Tue, 04 Aug 2026 01:43:56 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 04 Aug 2026 01:44:08 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:13 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:13 GMT
ENV ODOO_VERSION=18.0
# Tue, 04 Aug 2026 01:45:13 GMT
ARG ODOO_RELEASE=20260803
# Tue, 04 Aug 2026 01:45:13 GMT
ARG ODOO_SHA=25ab944dc7af9959fc3cca6a27b7aeb9b769435b
# Tue, 04 Aug 2026 01:46:14 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260803 ODOO_SHA=25ab944dc7af9959fc3cca6a27b7aeb9b769435b
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 04 Aug 2026 01:46:14 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:46:14 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 04 Aug 2026 01:46:14 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260803 ODOO_SHA=25ab944dc7af9959fc3cca6a27b7aeb9b769435b
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 04 Aug 2026 01:46:14 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 04 Aug 2026 01:46:14 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 04 Aug 2026 01:46:14 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 04 Aug 2026 01:46:14 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 04 Aug 2026 01:46:14 GMT
USER odoo
# Tue, 04 Aug 2026 01:46:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 04 Aug 2026 01:46:14 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c026f3b2c66e61e1fd7f553389f5586773b7e42e5886aef4eca9eacba88fbb2`  
		Last Modified: Tue, 04 Aug 2026 01:47:52 GMT  
		Size: 236.1 MB (236102513 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eed6ceb34b488fbec0e58de6934ba0f62a40f2c11272eeb8cf65354ba218a2ae`  
		Last Modified: Tue, 04 Aug 2026 01:47:44 GMT  
		Size: 14.2 MB (14171262 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad179dd6dc666a775000344634c2630032c316da3b4362bc1b70e8d88eee2d7a`  
		Last Modified: Tue, 04 Aug 2026 01:47:43 GMT  
		Size: 867.3 KB (867282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c394538e3709b778a902a5c000612e844af2fd52f7fdb11aedc605e249721d38`  
		Last Modified: Tue, 04 Aug 2026 01:47:55 GMT  
		Size: 389.2 MB (389217258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29ad003d70e0bcf030301b117e1e1d8a9ab84432ea607e9e3a3a79ac9bfc7121`  
		Last Modified: Tue, 04 Aug 2026 01:47:44 GMT  
		Size: 768.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:766fa398fcff5f70d16f138b4ebb88054cc243b77e6416ba4d9116268fb3ba14`  
		Last Modified: Tue, 04 Aug 2026 01:47:46 GMT  
		Size: 554.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73b0b1a7b5fea6cb622071d5b68d40491ff50a529d15db40236e0e5ec82b6530`  
		Last Modified: Tue, 04 Aug 2026 01:47:46 GMT  
		Size: 594.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a37e5b9cfa5597811f60fcadd8b8c442109319ca7186a92ed870af99af1e0aad`  
		Last Modified: Tue, 04 Aug 2026 01:47:47 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18.0` - unknown; unknown

```console
$ docker pull odoo@sha256:8ea95b9bac1fdf811e48a4cee3aa215277fabee538782f99046f2ab8172ec1b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.9 MB (43861875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86a072c2a97f3262c2533f78cf180d99d95a8e363771b69dc60ff78c4771ee6d`

```dockerfile
```

-	Layers:
	-	`sha256:e3648f088c4ea3f9710dcc9b2e2253bbc0412bc4525dea8d5bfc86fc01dd4052`  
		Last Modified: Tue, 04 Aug 2026 01:47:46 GMT  
		Size: 43.8 MB (43834526 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ef4f3150368e000c6bee8998af7725488123ac5515a1ca481be0019c6a62edc9`  
		Last Modified: Tue, 04 Aug 2026 01:47:43 GMT  
		Size: 27.3 KB (27349 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:18.0` - linux; ppc64le

```console
$ docker pull odoo@sha256:8748f41b7002ba74315ab50a9f3857e50e119c031787b05ee8931cf4a3f31979
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **691.7 MB (691699249 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:259db5f705a0271f99a114d4bfcfcb646ce75bd4de92b6011b72203035f30fb6`
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
ARG ODOO_RELEASE=20260803
# Tue, 04 Aug 2026 02:18:29 GMT
ARG ODOO_SHA=25ab944dc7af9959fc3cca6a27b7aeb9b769435b
# Tue, 04 Aug 2026 02:20:56 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260803 ODOO_SHA=25ab944dc7af9959fc3cca6a27b7aeb9b769435b
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 04 Aug 2026 02:20:58 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 02:20:58 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 04 Aug 2026 02:20:59 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260803 ODOO_SHA=25ab944dc7af9959fc3cca6a27b7aeb9b769435b
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 04 Aug 2026 02:20:59 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 04 Aug 2026 02:20:59 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 04 Aug 2026 02:20:59 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 04 Aug 2026 02:20:59 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 04 Aug 2026 02:20:59 GMT
USER odoo
# Tue, 04 Aug 2026 02:20:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 04 Aug 2026 02:20:59 GMT
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
	-	`sha256:19a6b0d838a2848ad2b5dffefd0a507a2d247ce503bd34fe9507d5bb4cf8855e`  
		Last Modified: Tue, 04 Aug 2026 02:24:31 GMT  
		Size: 389.9 MB (389916776 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42425a42cba844e683f9610c2731f9723b927c13c77a65a31f6da12cb0ecc153`  
		Last Modified: Tue, 04 Aug 2026 02:24:18 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e06b0169ff3bff668607bdddf0f03f7099b85bd25d244880bc7557e9994e6299`  
		Last Modified: Tue, 04 Aug 2026 02:24:20 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c10eb9f68b4ac5bd3c0a3d3e8ed86d36e0d8fa3a2d827736c07e0c20af59b83`  
		Last Modified: Tue, 04 Aug 2026 02:24:20 GMT  
		Size: 598.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:236fcb40f332cfd90d0f9aee3e5e92526cb3e1bd0d0c03d7aad912ff5c8c545e`  
		Last Modified: Tue, 04 Aug 2026 02:24:21 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18.0` - unknown; unknown

```console
$ docker pull odoo@sha256:f800abf4e22e246a6fded8556bb7b5a4e4691b914d2ed4aa0fb867d160784f20
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.9 MB (43862871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9074f779606e611185c5a70c7f03dd9ecb025f29a4bb2c8a094fff9d61e9f1dc`

```dockerfile
```

-	Layers:
	-	`sha256:706d9752fe75b450c2bfbd871a31079cebdb7a1e3f3ddcdddc015cd78486dd2f`  
		Last Modified: Tue, 04 Aug 2026 02:24:20 GMT  
		Size: 43.8 MB (43835618 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fd9780eb35ae4cbe47eb8b54531e51ac5ac57df1795588f37d68b3aceb137528`  
		Last Modified: Tue, 04 Aug 2026 02:24:17 GMT  
		Size: 27.3 KB (27253 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:18.0-20260803`

```console
$ docker pull odoo@sha256:5e73e256c0d7dd11f4f2f96ec9d42397546b8d4c0f44071b6cdb99f54dc07fef
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `odoo:18.0-20260803` - linux; amd64

```console
$ docker pull odoo@sha256:f5005cde7544ca269fcb734e75ae8ef2d11d33bae04ccd9e219c8b786032c105
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **675.3 MB (675275469 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:812ef0c095e8944d56ca6f3442d15ad03dd5c2bf2604001e6a41eb74617debb2`
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
# Tue, 04 Aug 2026 01:43:54 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 04 Aug 2026 01:43:54 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 04 Aug 2026 01:43:54 GMT
ENV LANG=en_US.UTF-8
# Tue, 04 Aug 2026 01:43:54 GMT
ARG TARGETARCH=amd64
# Tue, 04 Aug 2026 01:43:54 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 04 Aug 2026 01:44:02 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:10 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:10 GMT
ENV ODOO_VERSION=18.0
# Tue, 04 Aug 2026 01:45:10 GMT
ARG ODOO_RELEASE=20260803
# Tue, 04 Aug 2026 01:45:10 GMT
ARG ODOO_SHA=25ab944dc7af9959fc3cca6a27b7aeb9b769435b
# Tue, 04 Aug 2026 01:46:00 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260803 ODOO_SHA=25ab944dc7af9959fc3cca6a27b7aeb9b769435b
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 04 Aug 2026 01:46:01 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:46:01 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 04 Aug 2026 01:46:01 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260803 ODOO_SHA=25ab944dc7af9959fc3cca6a27b7aeb9b769435b
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 04 Aug 2026 01:46:01 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 04 Aug 2026 01:46:01 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 04 Aug 2026 01:46:01 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 04 Aug 2026 01:46:01 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 04 Aug 2026 01:46:01 GMT
USER odoo
# Tue, 04 Aug 2026 01:46:01 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 04 Aug 2026 01:46:01 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6123c6e8faef3dad282b634459b76c79012a0ae7d9298864c3378c085244a4b`  
		Last Modified: Tue, 04 Aug 2026 01:47:27 GMT  
		Size: 241.1 MB (241082382 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:500c55a645bb936351b3c2aebdd5424d1f7e4c23c532e2c86106274090fc905e`  
		Last Modified: Tue, 04 Aug 2026 01:47:18 GMT  
		Size: 14.2 MB (14202697 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:413380c82aaef6ef99ce2fcd2fa6629be106b052506d79150e077e8e30295979`  
		Last Modified: Tue, 04 Aug 2026 01:47:16 GMT  
		Size: 867.3 KB (867341 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75acc78ff6f406a06fa71ac33abb35aab7622a652a7eee37faf323382bee76cc`  
		Last Modified: Tue, 04 Aug 2026 01:47:29 GMT  
		Size: 389.4 MB (389369144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d1a47d16507563c2c6f5c80d818253276e8864f43b0a71b93254256ec204f23`  
		Last Modified: Tue, 04 Aug 2026 01:46:51 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe072b9650c5a63aa4adc431a6436b23131263aac2e065a44c6120d3c0553c16`  
		Last Modified: Tue, 04 Aug 2026 01:47:18 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dcc478e5d26137ecedfdc719e30e3e17c884c624d4a82a1b16b1826b819c82b`  
		Last Modified: Tue, 04 Aug 2026 01:47:19 GMT  
		Size: 595.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04c62fbf46f16af4025b86f9c848c6cd9c4abcd5a85c27682193f10b95da9ee3`  
		Last Modified: Tue, 04 Aug 2026 01:47:19 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18.0-20260803` - unknown; unknown

```console
$ docker pull odoo@sha256:4c8a07b0d55a4ff7febdec0a7514295f9b07afddbe839ec96bdc649395808515
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.9 MB (43854451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31e06ff2501494eef36f1080891436d44b9e9e39a35fee316204077aff88285d`

```dockerfile
```

-	Layers:
	-	`sha256:544dff772eab65c9f884f83214745f81927e00a574122329fda7bd0e9bfc82ff`  
		Last Modified: Tue, 04 Aug 2026 01:47:19 GMT  
		Size: 43.8 MB (43827254 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5699762f5e19d17ceda9e565229aa581ff78d0944b13c44ad876abf70286baa9`  
		Last Modified: Tue, 04 Aug 2026 01:47:16 GMT  
		Size: 27.2 KB (27197 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:18.0-20260803` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:ab3b8712f2ba860657f8b617611a6a1ce36bc9738d43a50948e11c40a6b918b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **669.2 MB (669247927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b0e3c6006fb786b2f233bc73dec3dca71ce511b8b87ee92653c5680d20b05cf`
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
# Tue, 04 Aug 2026 01:43:56 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 04 Aug 2026 01:43:56 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 04 Aug 2026 01:43:56 GMT
ENV LANG=en_US.UTF-8
# Tue, 04 Aug 2026 01:43:56 GMT
ARG TARGETARCH=arm64
# Tue, 04 Aug 2026 01:43:56 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 04 Aug 2026 01:44:08 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:13 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:13 GMT
ENV ODOO_VERSION=18.0
# Tue, 04 Aug 2026 01:45:13 GMT
ARG ODOO_RELEASE=20260803
# Tue, 04 Aug 2026 01:45:13 GMT
ARG ODOO_SHA=25ab944dc7af9959fc3cca6a27b7aeb9b769435b
# Tue, 04 Aug 2026 01:46:14 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260803 ODOO_SHA=25ab944dc7af9959fc3cca6a27b7aeb9b769435b
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 04 Aug 2026 01:46:14 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:46:14 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 04 Aug 2026 01:46:14 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260803 ODOO_SHA=25ab944dc7af9959fc3cca6a27b7aeb9b769435b
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 04 Aug 2026 01:46:14 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 04 Aug 2026 01:46:14 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 04 Aug 2026 01:46:14 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 04 Aug 2026 01:46:14 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 04 Aug 2026 01:46:14 GMT
USER odoo
# Tue, 04 Aug 2026 01:46:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 04 Aug 2026 01:46:14 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c026f3b2c66e61e1fd7f553389f5586773b7e42e5886aef4eca9eacba88fbb2`  
		Last Modified: Tue, 04 Aug 2026 01:47:52 GMT  
		Size: 236.1 MB (236102513 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eed6ceb34b488fbec0e58de6934ba0f62a40f2c11272eeb8cf65354ba218a2ae`  
		Last Modified: Tue, 04 Aug 2026 01:47:44 GMT  
		Size: 14.2 MB (14171262 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad179dd6dc666a775000344634c2630032c316da3b4362bc1b70e8d88eee2d7a`  
		Last Modified: Tue, 04 Aug 2026 01:47:43 GMT  
		Size: 867.3 KB (867282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c394538e3709b778a902a5c000612e844af2fd52f7fdb11aedc605e249721d38`  
		Last Modified: Tue, 04 Aug 2026 01:47:55 GMT  
		Size: 389.2 MB (389217258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29ad003d70e0bcf030301b117e1e1d8a9ab84432ea607e9e3a3a79ac9bfc7121`  
		Last Modified: Tue, 04 Aug 2026 01:47:44 GMT  
		Size: 768.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:766fa398fcff5f70d16f138b4ebb88054cc243b77e6416ba4d9116268fb3ba14`  
		Last Modified: Tue, 04 Aug 2026 01:47:46 GMT  
		Size: 554.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73b0b1a7b5fea6cb622071d5b68d40491ff50a529d15db40236e0e5ec82b6530`  
		Last Modified: Tue, 04 Aug 2026 01:47:46 GMT  
		Size: 594.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a37e5b9cfa5597811f60fcadd8b8c442109319ca7186a92ed870af99af1e0aad`  
		Last Modified: Tue, 04 Aug 2026 01:47:47 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18.0-20260803` - unknown; unknown

```console
$ docker pull odoo@sha256:8ea95b9bac1fdf811e48a4cee3aa215277fabee538782f99046f2ab8172ec1b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.9 MB (43861875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86a072c2a97f3262c2533f78cf180d99d95a8e363771b69dc60ff78c4771ee6d`

```dockerfile
```

-	Layers:
	-	`sha256:e3648f088c4ea3f9710dcc9b2e2253bbc0412bc4525dea8d5bfc86fc01dd4052`  
		Last Modified: Tue, 04 Aug 2026 01:47:46 GMT  
		Size: 43.8 MB (43834526 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ef4f3150368e000c6bee8998af7725488123ac5515a1ca481be0019c6a62edc9`  
		Last Modified: Tue, 04 Aug 2026 01:47:43 GMT  
		Size: 27.3 KB (27349 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:18.0-20260803` - linux; ppc64le

```console
$ docker pull odoo@sha256:8748f41b7002ba74315ab50a9f3857e50e119c031787b05ee8931cf4a3f31979
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **691.7 MB (691699249 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:259db5f705a0271f99a114d4bfcfcb646ce75bd4de92b6011b72203035f30fb6`
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
ARG ODOO_RELEASE=20260803
# Tue, 04 Aug 2026 02:18:29 GMT
ARG ODOO_SHA=25ab944dc7af9959fc3cca6a27b7aeb9b769435b
# Tue, 04 Aug 2026 02:20:56 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260803 ODOO_SHA=25ab944dc7af9959fc3cca6a27b7aeb9b769435b
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 04 Aug 2026 02:20:58 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 02:20:58 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 04 Aug 2026 02:20:59 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260803 ODOO_SHA=25ab944dc7af9959fc3cca6a27b7aeb9b769435b
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 04 Aug 2026 02:20:59 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 04 Aug 2026 02:20:59 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 04 Aug 2026 02:20:59 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 04 Aug 2026 02:20:59 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 04 Aug 2026 02:20:59 GMT
USER odoo
# Tue, 04 Aug 2026 02:20:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 04 Aug 2026 02:20:59 GMT
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
	-	`sha256:19a6b0d838a2848ad2b5dffefd0a507a2d247ce503bd34fe9507d5bb4cf8855e`  
		Last Modified: Tue, 04 Aug 2026 02:24:31 GMT  
		Size: 389.9 MB (389916776 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42425a42cba844e683f9610c2731f9723b927c13c77a65a31f6da12cb0ecc153`  
		Last Modified: Tue, 04 Aug 2026 02:24:18 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e06b0169ff3bff668607bdddf0f03f7099b85bd25d244880bc7557e9994e6299`  
		Last Modified: Tue, 04 Aug 2026 02:24:20 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c10eb9f68b4ac5bd3c0a3d3e8ed86d36e0d8fa3a2d827736c07e0c20af59b83`  
		Last Modified: Tue, 04 Aug 2026 02:24:20 GMT  
		Size: 598.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:236fcb40f332cfd90d0f9aee3e5e92526cb3e1bd0d0c03d7aad912ff5c8c545e`  
		Last Modified: Tue, 04 Aug 2026 02:24:21 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18.0-20260803` - unknown; unknown

```console
$ docker pull odoo@sha256:f800abf4e22e246a6fded8556bb7b5a4e4691b914d2ed4aa0fb867d160784f20
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.9 MB (43862871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9074f779606e611185c5a70c7f03dd9ecb025f29a4bb2c8a094fff9d61e9f1dc`

```dockerfile
```

-	Layers:
	-	`sha256:706d9752fe75b450c2bfbd871a31079cebdb7a1e3f3ddcdddc015cd78486dd2f`  
		Last Modified: Tue, 04 Aug 2026 02:24:20 GMT  
		Size: 43.8 MB (43835618 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fd9780eb35ae4cbe47eb8b54531e51ac5ac57df1795588f37d68b3aceb137528`  
		Last Modified: Tue, 04 Aug 2026 02:24:17 GMT  
		Size: 27.3 KB (27253 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:19`

```console
$ docker pull odoo@sha256:4872f23288454b724fd2d26c176a418276c2b3552e9aa752f9396b59d864b3a0
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
$ docker pull odoo@sha256:0bfcfcdd2e1c80f499c25473b1b9ef2c1d31ad9e6d96534771b06b191ee4b89e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **697.8 MB (697823164 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d2972aeee2f1ff76b27e583366abf9aea7bca57e4f791349b8b7e62c101721b`
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
# Tue, 04 Aug 2026 01:43:49 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 04 Aug 2026 01:43:49 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 04 Aug 2026 01:43:49 GMT
ENV LANG=en_US.UTF-8
# Tue, 04 Aug 2026 01:43:49 GMT
ARG TARGETARCH=amd64
# Tue, 04 Aug 2026 01:43:49 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 04 Aug 2026 01:43:58 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:15 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:15 GMT
ENV ODOO_VERSION=19.0
# Tue, 04 Aug 2026 01:45:15 GMT
ARG ODOO_RELEASE=20260803
# Tue, 04 Aug 2026 01:45:15 GMT
ARG ODOO_SHA=e737003fe019e49079e2e83cea87040cf42e89b2
# Tue, 04 Aug 2026 01:46:19 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260803 ODOO_SHA=e737003fe019e49079e2e83cea87040cf42e89b2
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 04 Aug 2026 01:46:19 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:46:19 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 04 Aug 2026 01:46:19 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260803 ODOO_SHA=e737003fe019e49079e2e83cea87040cf42e89b2
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 04 Aug 2026 01:46:19 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 04 Aug 2026 01:46:19 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 04 Aug 2026 01:46:19 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 04 Aug 2026 01:46:19 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 04 Aug 2026 01:46:19 GMT
USER odoo
# Tue, 04 Aug 2026 01:46:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 04 Aug 2026 01:46:19 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7212f498974c5127d0dfd1327b0544d1acdaa70f4d3afe91534141adb5b1b9c5`  
		Last Modified: Tue, 04 Aug 2026 01:48:06 GMT  
		Size: 241.1 MB (241082681 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cecdbfb8ec504fd5e331d7f9e8e0352e183f514ec8905b1ebaeb7c092d85d69a`  
		Last Modified: Tue, 04 Aug 2026 01:47:58 GMT  
		Size: 14.2 MB (14202623 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c532b18bfaec716c1211d52a94724eb61eb3d99d1a55d664c05b8278b937cd37`  
		Last Modified: Tue, 04 Aug 2026 01:47:57 GMT  
		Size: 867.3 KB (867319 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b923cb0af516f1b60d3d702b4bc79adab5f2fdfa291a14ba1c12fb7dfb88f728`  
		Last Modified: Tue, 04 Aug 2026 01:48:09 GMT  
		Size: 411.9 MB (411916685 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b314390c4b6518617ef93761baf40854b070857572bf2870ba4606252972ece`  
		Last Modified: Tue, 04 Aug 2026 01:47:58 GMT  
		Size: 716.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6b2c34724c2990b73f0f2994a2a41c9ada29d1e238b22e09278fdfd18282bf9`  
		Last Modified: Tue, 04 Aug 2026 01:47:59 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99ba28cf5bafd4ee90ac9c97888d3e5056e7c3678211479f0fa35f343c8b53de`  
		Last Modified: Tue, 04 Aug 2026 01:47:59 GMT  
		Size: 596.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee4427a554d9cb3ff9caeaf15c69b5011168b8816d0715ef6fdb6a4752d39cde`  
		Last Modified: Tue, 04 Aug 2026 01:48:00 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19` - unknown; unknown

```console
$ docker pull odoo@sha256:18f4d980decbcda777147ba7d4c97dca49f47c0890ebf0b814ff650606be855e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.3 MB (52291348 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a8c586468caf8c7867e22f9700ba18db1a926a7d79776e89bb565a8dca377fb`

```dockerfile
```

-	Layers:
	-	`sha256:76837d6072f19e4a3a1aef7ae27dcd366834bcf518ba58cd98356f20c254e282`  
		Last Modified: Tue, 04 Aug 2026 01:48:00 GMT  
		Size: 52.3 MB (52263857 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cc07fab2805f35cc5172bc6f3a663fbf1456967d373924c9c3052d790e0dd3ad`  
		Last Modified: Tue, 04 Aug 2026 01:47:57 GMT  
		Size: 27.5 KB (27491 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:19` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:1cf8835788e0a30976d1d959dcfe40e335c2763f1ed52768a49ee08648d77ffe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **691.8 MB (691778469 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d231d6b0632f2e69787c18f6ea9bcc3a2122ab2242c45b8c7bdef8a5e6dd54a`
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
# Tue, 04 Aug 2026 01:43:47 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 04 Aug 2026 01:43:47 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 04 Aug 2026 01:43:47 GMT
ENV LANG=en_US.UTF-8
# Tue, 04 Aug 2026 01:43:47 GMT
ARG TARGETARCH=arm64
# Tue, 04 Aug 2026 01:43:47 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 04 Aug 2026 01:43:57 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:03 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:03 GMT
ENV ODOO_VERSION=19.0
# Tue, 04 Aug 2026 01:45:03 GMT
ARG ODOO_RELEASE=20260803
# Tue, 04 Aug 2026 01:45:03 GMT
ARG ODOO_SHA=e737003fe019e49079e2e83cea87040cf42e89b2
# Tue, 04 Aug 2026 01:46:14 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260803 ODOO_SHA=e737003fe019e49079e2e83cea87040cf42e89b2
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 04 Aug 2026 01:46:15 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:46:15 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 04 Aug 2026 01:46:15 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260803 ODOO_SHA=e737003fe019e49079e2e83cea87040cf42e89b2
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 04 Aug 2026 01:46:15 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 04 Aug 2026 01:46:15 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 04 Aug 2026 01:46:15 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 04 Aug 2026 01:46:15 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 04 Aug 2026 01:46:15 GMT
USER odoo
# Tue, 04 Aug 2026 01:46:15 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 04 Aug 2026 01:46:15 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ad657149e0d5300a6b7407c4ce4269ed8d496356ca90c2a3870c5c27117226d`  
		Last Modified: Tue, 04 Aug 2026 01:48:21 GMT  
		Size: 236.1 MB (236102447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a76ef01ff4442b59206588398bbba701180300d32fef099ccab48c324de86ee5`  
		Last Modified: Tue, 04 Aug 2026 01:48:13 GMT  
		Size: 14.2 MB (14171417 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95d719621a183d7d24d64928315b4c97f92174d42ce40ea14f6f06a5bc1c871b`  
		Last Modified: Tue, 04 Aug 2026 01:48:12 GMT  
		Size: 867.4 KB (867378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:583b98a65886cf4d88eede14858ab7d6a4a901cf3632eab75ca9533fe6e13f62`  
		Last Modified: Tue, 04 Aug 2026 01:48:24 GMT  
		Size: 411.7 MB (411747664 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1e5c1067d0a52a4f538abb766e69e2000b60644466397f2617826659ccaa680`  
		Last Modified: Tue, 04 Aug 2026 01:48:14 GMT  
		Size: 716.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3022eed6a56cf0dbf1210e7f714eddbc852d091218f566d4e7d90db5f510d1df`  
		Last Modified: Tue, 04 Aug 2026 01:48:15 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b1e001ec4128301e9664c5b6ec13eeb3d5b6af5c8661c0726c7a75b3a91d6ef`  
		Last Modified: Tue, 04 Aug 2026 01:48:15 GMT  
		Size: 595.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0218af39c4ce26f737a4aa66aad97bb70b900e409188bf8881a422dbb8c0d59a`  
		Last Modified: Tue, 04 Aug 2026 01:48:16 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19` - unknown; unknown

```console
$ docker pull odoo@sha256:a7c4ff1cbf9c5c514a3cde3fc0b4fa530e777bc98981e6fea9292a22da67d59f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.3 MB (52298795 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:860d7b8f735f917ea51ceded1a7a4376f294343ca34bc7bbeae492ac54745e56`

```dockerfile
```

-	Layers:
	-	`sha256:3713b92c0bcc939178c60c77d1a24ad5af92c0cbc62594e2df442c910e654fcc`  
		Last Modified: Tue, 04 Aug 2026 01:48:16 GMT  
		Size: 52.3 MB (52271141 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ca579b5d37b63ccf0f178998f5bb0f271d2682f9c54dfdc8d75e4a12e7804f2d`  
		Last Modified: Tue, 04 Aug 2026 01:48:12 GMT  
		Size: 27.7 KB (27654 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:19` - linux; ppc64le

```console
$ docker pull odoo@sha256:d09c93735dac2ab62140832b88a66ad6865bddddbefdbffb8c4642ff4e695bf1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **714.2 MB (714204444 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4997af323347211ca3302e94918897a4bf93086a11649b9db69172c9b05c6974`
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
ARG ODOO_RELEASE=20260803
# Tue, 04 Aug 2026 02:18:29 GMT
ARG ODOO_SHA=e737003fe019e49079e2e83cea87040cf42e89b2
# Tue, 04 Aug 2026 02:21:12 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260803 ODOO_SHA=e737003fe019e49079e2e83cea87040cf42e89b2
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 04 Aug 2026 02:21:14 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 02:21:14 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 04 Aug 2026 02:21:14 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260803 ODOO_SHA=e737003fe019e49079e2e83cea87040cf42e89b2
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 04 Aug 2026 02:21:14 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 04 Aug 2026 02:21:14 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 04 Aug 2026 02:21:14 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 04 Aug 2026 02:21:15 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 04 Aug 2026 02:21:15 GMT
USER odoo
# Tue, 04 Aug 2026 02:21:15 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 04 Aug 2026 02:21:15 GMT
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
	-	`sha256:20e971727c9f7f6908ce76f05d2f689ad967b6c5f3c5b797bd17c20ad27732d3`  
		Last Modified: Tue, 04 Aug 2026 02:25:22 GMT  
		Size: 412.4 MB (412422023 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6e6c34da1d3abb7dc8aae769dbe8018965e4d90d74c4396136edd66a09894aa`  
		Last Modified: Tue, 04 Aug 2026 02:25:12 GMT  
		Size: 716.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3b7ebc7244fd686923493ff98c5b465a60eb67520a2e715838c4f7e2ec0c4cf`  
		Last Modified: Tue, 04 Aug 2026 02:25:13 GMT  
		Size: 557.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18c42f59362e57d927fbe3a1ccccc7c412d25dea0c38a56c7723227d41874dd6`  
		Last Modified: Tue, 04 Aug 2026 02:25:12 GMT  
		Size: 596.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0eda71db1993706f519c3fb2a9df199922b09f3e0a0bc8e1514e5b39c951dee7`  
		Last Modified: Tue, 04 Aug 2026 02:25:14 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19` - unknown; unknown

```console
$ docker pull odoo@sha256:8db8b18228bb679a52e75ddc943dd6da8b553cccb09188ef2eac1d50b0369292
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.3 MB (52299780 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ed9054d1e470fa27036f45288073471a713298f2bcad622f49c407156fb6e4e`

```dockerfile
```

-	Layers:
	-	`sha256:dc5d07f73e9fe3710d6b4ff5ecb944ba0bc388928c888eee7ceddc3e4b5b03a9`  
		Last Modified: Tue, 04 Aug 2026 02:25:15 GMT  
		Size: 52.3 MB (52272227 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e408416a6a8b14be397616b499f2497a4f34d9997962614d42b44886fe62f824`  
		Last Modified: Tue, 04 Aug 2026 02:25:12 GMT  
		Size: 27.6 KB (27553 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:19.0`

```console
$ docker pull odoo@sha256:4872f23288454b724fd2d26c176a418276c2b3552e9aa752f9396b59d864b3a0
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
$ docker pull odoo@sha256:0bfcfcdd2e1c80f499c25473b1b9ef2c1d31ad9e6d96534771b06b191ee4b89e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **697.8 MB (697823164 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d2972aeee2f1ff76b27e583366abf9aea7bca57e4f791349b8b7e62c101721b`
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
# Tue, 04 Aug 2026 01:43:49 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 04 Aug 2026 01:43:49 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 04 Aug 2026 01:43:49 GMT
ENV LANG=en_US.UTF-8
# Tue, 04 Aug 2026 01:43:49 GMT
ARG TARGETARCH=amd64
# Tue, 04 Aug 2026 01:43:49 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 04 Aug 2026 01:43:58 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:15 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:15 GMT
ENV ODOO_VERSION=19.0
# Tue, 04 Aug 2026 01:45:15 GMT
ARG ODOO_RELEASE=20260803
# Tue, 04 Aug 2026 01:45:15 GMT
ARG ODOO_SHA=e737003fe019e49079e2e83cea87040cf42e89b2
# Tue, 04 Aug 2026 01:46:19 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260803 ODOO_SHA=e737003fe019e49079e2e83cea87040cf42e89b2
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 04 Aug 2026 01:46:19 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:46:19 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 04 Aug 2026 01:46:19 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260803 ODOO_SHA=e737003fe019e49079e2e83cea87040cf42e89b2
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 04 Aug 2026 01:46:19 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 04 Aug 2026 01:46:19 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 04 Aug 2026 01:46:19 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 04 Aug 2026 01:46:19 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 04 Aug 2026 01:46:19 GMT
USER odoo
# Tue, 04 Aug 2026 01:46:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 04 Aug 2026 01:46:19 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7212f498974c5127d0dfd1327b0544d1acdaa70f4d3afe91534141adb5b1b9c5`  
		Last Modified: Tue, 04 Aug 2026 01:48:06 GMT  
		Size: 241.1 MB (241082681 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cecdbfb8ec504fd5e331d7f9e8e0352e183f514ec8905b1ebaeb7c092d85d69a`  
		Last Modified: Tue, 04 Aug 2026 01:47:58 GMT  
		Size: 14.2 MB (14202623 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c532b18bfaec716c1211d52a94724eb61eb3d99d1a55d664c05b8278b937cd37`  
		Last Modified: Tue, 04 Aug 2026 01:47:57 GMT  
		Size: 867.3 KB (867319 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b923cb0af516f1b60d3d702b4bc79adab5f2fdfa291a14ba1c12fb7dfb88f728`  
		Last Modified: Tue, 04 Aug 2026 01:48:09 GMT  
		Size: 411.9 MB (411916685 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b314390c4b6518617ef93761baf40854b070857572bf2870ba4606252972ece`  
		Last Modified: Tue, 04 Aug 2026 01:47:58 GMT  
		Size: 716.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6b2c34724c2990b73f0f2994a2a41c9ada29d1e238b22e09278fdfd18282bf9`  
		Last Modified: Tue, 04 Aug 2026 01:47:59 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99ba28cf5bafd4ee90ac9c97888d3e5056e7c3678211479f0fa35f343c8b53de`  
		Last Modified: Tue, 04 Aug 2026 01:47:59 GMT  
		Size: 596.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee4427a554d9cb3ff9caeaf15c69b5011168b8816d0715ef6fdb6a4752d39cde`  
		Last Modified: Tue, 04 Aug 2026 01:48:00 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19.0` - unknown; unknown

```console
$ docker pull odoo@sha256:18f4d980decbcda777147ba7d4c97dca49f47c0890ebf0b814ff650606be855e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.3 MB (52291348 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a8c586468caf8c7867e22f9700ba18db1a926a7d79776e89bb565a8dca377fb`

```dockerfile
```

-	Layers:
	-	`sha256:76837d6072f19e4a3a1aef7ae27dcd366834bcf518ba58cd98356f20c254e282`  
		Last Modified: Tue, 04 Aug 2026 01:48:00 GMT  
		Size: 52.3 MB (52263857 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cc07fab2805f35cc5172bc6f3a663fbf1456967d373924c9c3052d790e0dd3ad`  
		Last Modified: Tue, 04 Aug 2026 01:47:57 GMT  
		Size: 27.5 KB (27491 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:19.0` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:1cf8835788e0a30976d1d959dcfe40e335c2763f1ed52768a49ee08648d77ffe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **691.8 MB (691778469 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d231d6b0632f2e69787c18f6ea9bcc3a2122ab2242c45b8c7bdef8a5e6dd54a`
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
# Tue, 04 Aug 2026 01:43:47 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 04 Aug 2026 01:43:47 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 04 Aug 2026 01:43:47 GMT
ENV LANG=en_US.UTF-8
# Tue, 04 Aug 2026 01:43:47 GMT
ARG TARGETARCH=arm64
# Tue, 04 Aug 2026 01:43:47 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 04 Aug 2026 01:43:57 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:03 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:03 GMT
ENV ODOO_VERSION=19.0
# Tue, 04 Aug 2026 01:45:03 GMT
ARG ODOO_RELEASE=20260803
# Tue, 04 Aug 2026 01:45:03 GMT
ARG ODOO_SHA=e737003fe019e49079e2e83cea87040cf42e89b2
# Tue, 04 Aug 2026 01:46:14 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260803 ODOO_SHA=e737003fe019e49079e2e83cea87040cf42e89b2
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 04 Aug 2026 01:46:15 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:46:15 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 04 Aug 2026 01:46:15 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260803 ODOO_SHA=e737003fe019e49079e2e83cea87040cf42e89b2
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 04 Aug 2026 01:46:15 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 04 Aug 2026 01:46:15 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 04 Aug 2026 01:46:15 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 04 Aug 2026 01:46:15 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 04 Aug 2026 01:46:15 GMT
USER odoo
# Tue, 04 Aug 2026 01:46:15 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 04 Aug 2026 01:46:15 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ad657149e0d5300a6b7407c4ce4269ed8d496356ca90c2a3870c5c27117226d`  
		Last Modified: Tue, 04 Aug 2026 01:48:21 GMT  
		Size: 236.1 MB (236102447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a76ef01ff4442b59206588398bbba701180300d32fef099ccab48c324de86ee5`  
		Last Modified: Tue, 04 Aug 2026 01:48:13 GMT  
		Size: 14.2 MB (14171417 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95d719621a183d7d24d64928315b4c97f92174d42ce40ea14f6f06a5bc1c871b`  
		Last Modified: Tue, 04 Aug 2026 01:48:12 GMT  
		Size: 867.4 KB (867378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:583b98a65886cf4d88eede14858ab7d6a4a901cf3632eab75ca9533fe6e13f62`  
		Last Modified: Tue, 04 Aug 2026 01:48:24 GMT  
		Size: 411.7 MB (411747664 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1e5c1067d0a52a4f538abb766e69e2000b60644466397f2617826659ccaa680`  
		Last Modified: Tue, 04 Aug 2026 01:48:14 GMT  
		Size: 716.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3022eed6a56cf0dbf1210e7f714eddbc852d091218f566d4e7d90db5f510d1df`  
		Last Modified: Tue, 04 Aug 2026 01:48:15 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b1e001ec4128301e9664c5b6ec13eeb3d5b6af5c8661c0726c7a75b3a91d6ef`  
		Last Modified: Tue, 04 Aug 2026 01:48:15 GMT  
		Size: 595.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0218af39c4ce26f737a4aa66aad97bb70b900e409188bf8881a422dbb8c0d59a`  
		Last Modified: Tue, 04 Aug 2026 01:48:16 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19.0` - unknown; unknown

```console
$ docker pull odoo@sha256:a7c4ff1cbf9c5c514a3cde3fc0b4fa530e777bc98981e6fea9292a22da67d59f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.3 MB (52298795 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:860d7b8f735f917ea51ceded1a7a4376f294343ca34bc7bbeae492ac54745e56`

```dockerfile
```

-	Layers:
	-	`sha256:3713b92c0bcc939178c60c77d1a24ad5af92c0cbc62594e2df442c910e654fcc`  
		Last Modified: Tue, 04 Aug 2026 01:48:16 GMT  
		Size: 52.3 MB (52271141 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ca579b5d37b63ccf0f178998f5bb0f271d2682f9c54dfdc8d75e4a12e7804f2d`  
		Last Modified: Tue, 04 Aug 2026 01:48:12 GMT  
		Size: 27.7 KB (27654 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:19.0` - linux; ppc64le

```console
$ docker pull odoo@sha256:d09c93735dac2ab62140832b88a66ad6865bddddbefdbffb8c4642ff4e695bf1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **714.2 MB (714204444 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4997af323347211ca3302e94918897a4bf93086a11649b9db69172c9b05c6974`
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
ARG ODOO_RELEASE=20260803
# Tue, 04 Aug 2026 02:18:29 GMT
ARG ODOO_SHA=e737003fe019e49079e2e83cea87040cf42e89b2
# Tue, 04 Aug 2026 02:21:12 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260803 ODOO_SHA=e737003fe019e49079e2e83cea87040cf42e89b2
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 04 Aug 2026 02:21:14 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 02:21:14 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 04 Aug 2026 02:21:14 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260803 ODOO_SHA=e737003fe019e49079e2e83cea87040cf42e89b2
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 04 Aug 2026 02:21:14 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 04 Aug 2026 02:21:14 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 04 Aug 2026 02:21:14 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 04 Aug 2026 02:21:15 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 04 Aug 2026 02:21:15 GMT
USER odoo
# Tue, 04 Aug 2026 02:21:15 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 04 Aug 2026 02:21:15 GMT
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
	-	`sha256:20e971727c9f7f6908ce76f05d2f689ad967b6c5f3c5b797bd17c20ad27732d3`  
		Last Modified: Tue, 04 Aug 2026 02:25:22 GMT  
		Size: 412.4 MB (412422023 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6e6c34da1d3abb7dc8aae769dbe8018965e4d90d74c4396136edd66a09894aa`  
		Last Modified: Tue, 04 Aug 2026 02:25:12 GMT  
		Size: 716.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3b7ebc7244fd686923493ff98c5b465a60eb67520a2e715838c4f7e2ec0c4cf`  
		Last Modified: Tue, 04 Aug 2026 02:25:13 GMT  
		Size: 557.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18c42f59362e57d927fbe3a1ccccc7c412d25dea0c38a56c7723227d41874dd6`  
		Last Modified: Tue, 04 Aug 2026 02:25:12 GMT  
		Size: 596.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0eda71db1993706f519c3fb2a9df199922b09f3e0a0bc8e1514e5b39c951dee7`  
		Last Modified: Tue, 04 Aug 2026 02:25:14 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19.0` - unknown; unknown

```console
$ docker pull odoo@sha256:8db8b18228bb679a52e75ddc943dd6da8b553cccb09188ef2eac1d50b0369292
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.3 MB (52299780 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ed9054d1e470fa27036f45288073471a713298f2bcad622f49c407156fb6e4e`

```dockerfile
```

-	Layers:
	-	`sha256:dc5d07f73e9fe3710d6b4ff5ecb944ba0bc388928c888eee7ceddc3e4b5b03a9`  
		Last Modified: Tue, 04 Aug 2026 02:25:15 GMT  
		Size: 52.3 MB (52272227 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e408416a6a8b14be397616b499f2497a4f34d9997962614d42b44886fe62f824`  
		Last Modified: Tue, 04 Aug 2026 02:25:12 GMT  
		Size: 27.6 KB (27553 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:19.0-20260803`

```console
$ docker pull odoo@sha256:4872f23288454b724fd2d26c176a418276c2b3552e9aa752f9396b59d864b3a0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `odoo:19.0-20260803` - linux; amd64

```console
$ docker pull odoo@sha256:0bfcfcdd2e1c80f499c25473b1b9ef2c1d31ad9e6d96534771b06b191ee4b89e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **697.8 MB (697823164 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d2972aeee2f1ff76b27e583366abf9aea7bca57e4f791349b8b7e62c101721b`
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
# Tue, 04 Aug 2026 01:43:49 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 04 Aug 2026 01:43:49 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 04 Aug 2026 01:43:49 GMT
ENV LANG=en_US.UTF-8
# Tue, 04 Aug 2026 01:43:49 GMT
ARG TARGETARCH=amd64
# Tue, 04 Aug 2026 01:43:49 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 04 Aug 2026 01:43:58 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:15 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:15 GMT
ENV ODOO_VERSION=19.0
# Tue, 04 Aug 2026 01:45:15 GMT
ARG ODOO_RELEASE=20260803
# Tue, 04 Aug 2026 01:45:15 GMT
ARG ODOO_SHA=e737003fe019e49079e2e83cea87040cf42e89b2
# Tue, 04 Aug 2026 01:46:19 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260803 ODOO_SHA=e737003fe019e49079e2e83cea87040cf42e89b2
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 04 Aug 2026 01:46:19 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:46:19 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 04 Aug 2026 01:46:19 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260803 ODOO_SHA=e737003fe019e49079e2e83cea87040cf42e89b2
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 04 Aug 2026 01:46:19 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 04 Aug 2026 01:46:19 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 04 Aug 2026 01:46:19 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 04 Aug 2026 01:46:19 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 04 Aug 2026 01:46:19 GMT
USER odoo
# Tue, 04 Aug 2026 01:46:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 04 Aug 2026 01:46:19 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7212f498974c5127d0dfd1327b0544d1acdaa70f4d3afe91534141adb5b1b9c5`  
		Last Modified: Tue, 04 Aug 2026 01:48:06 GMT  
		Size: 241.1 MB (241082681 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cecdbfb8ec504fd5e331d7f9e8e0352e183f514ec8905b1ebaeb7c092d85d69a`  
		Last Modified: Tue, 04 Aug 2026 01:47:58 GMT  
		Size: 14.2 MB (14202623 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c532b18bfaec716c1211d52a94724eb61eb3d99d1a55d664c05b8278b937cd37`  
		Last Modified: Tue, 04 Aug 2026 01:47:57 GMT  
		Size: 867.3 KB (867319 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b923cb0af516f1b60d3d702b4bc79adab5f2fdfa291a14ba1c12fb7dfb88f728`  
		Last Modified: Tue, 04 Aug 2026 01:48:09 GMT  
		Size: 411.9 MB (411916685 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b314390c4b6518617ef93761baf40854b070857572bf2870ba4606252972ece`  
		Last Modified: Tue, 04 Aug 2026 01:47:58 GMT  
		Size: 716.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6b2c34724c2990b73f0f2994a2a41c9ada29d1e238b22e09278fdfd18282bf9`  
		Last Modified: Tue, 04 Aug 2026 01:47:59 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99ba28cf5bafd4ee90ac9c97888d3e5056e7c3678211479f0fa35f343c8b53de`  
		Last Modified: Tue, 04 Aug 2026 01:47:59 GMT  
		Size: 596.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee4427a554d9cb3ff9caeaf15c69b5011168b8816d0715ef6fdb6a4752d39cde`  
		Last Modified: Tue, 04 Aug 2026 01:48:00 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19.0-20260803` - unknown; unknown

```console
$ docker pull odoo@sha256:18f4d980decbcda777147ba7d4c97dca49f47c0890ebf0b814ff650606be855e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.3 MB (52291348 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a8c586468caf8c7867e22f9700ba18db1a926a7d79776e89bb565a8dca377fb`

```dockerfile
```

-	Layers:
	-	`sha256:76837d6072f19e4a3a1aef7ae27dcd366834bcf518ba58cd98356f20c254e282`  
		Last Modified: Tue, 04 Aug 2026 01:48:00 GMT  
		Size: 52.3 MB (52263857 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cc07fab2805f35cc5172bc6f3a663fbf1456967d373924c9c3052d790e0dd3ad`  
		Last Modified: Tue, 04 Aug 2026 01:47:57 GMT  
		Size: 27.5 KB (27491 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:19.0-20260803` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:1cf8835788e0a30976d1d959dcfe40e335c2763f1ed52768a49ee08648d77ffe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **691.8 MB (691778469 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d231d6b0632f2e69787c18f6ea9bcc3a2122ab2242c45b8c7bdef8a5e6dd54a`
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
# Tue, 04 Aug 2026 01:43:47 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 04 Aug 2026 01:43:47 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 04 Aug 2026 01:43:47 GMT
ENV LANG=en_US.UTF-8
# Tue, 04 Aug 2026 01:43:47 GMT
ARG TARGETARCH=arm64
# Tue, 04 Aug 2026 01:43:47 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 04 Aug 2026 01:43:57 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:03 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:03 GMT
ENV ODOO_VERSION=19.0
# Tue, 04 Aug 2026 01:45:03 GMT
ARG ODOO_RELEASE=20260803
# Tue, 04 Aug 2026 01:45:03 GMT
ARG ODOO_SHA=e737003fe019e49079e2e83cea87040cf42e89b2
# Tue, 04 Aug 2026 01:46:14 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260803 ODOO_SHA=e737003fe019e49079e2e83cea87040cf42e89b2
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 04 Aug 2026 01:46:15 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:46:15 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 04 Aug 2026 01:46:15 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260803 ODOO_SHA=e737003fe019e49079e2e83cea87040cf42e89b2
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 04 Aug 2026 01:46:15 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 04 Aug 2026 01:46:15 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 04 Aug 2026 01:46:15 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 04 Aug 2026 01:46:15 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 04 Aug 2026 01:46:15 GMT
USER odoo
# Tue, 04 Aug 2026 01:46:15 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 04 Aug 2026 01:46:15 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ad657149e0d5300a6b7407c4ce4269ed8d496356ca90c2a3870c5c27117226d`  
		Last Modified: Tue, 04 Aug 2026 01:48:21 GMT  
		Size: 236.1 MB (236102447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a76ef01ff4442b59206588398bbba701180300d32fef099ccab48c324de86ee5`  
		Last Modified: Tue, 04 Aug 2026 01:48:13 GMT  
		Size: 14.2 MB (14171417 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95d719621a183d7d24d64928315b4c97f92174d42ce40ea14f6f06a5bc1c871b`  
		Last Modified: Tue, 04 Aug 2026 01:48:12 GMT  
		Size: 867.4 KB (867378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:583b98a65886cf4d88eede14858ab7d6a4a901cf3632eab75ca9533fe6e13f62`  
		Last Modified: Tue, 04 Aug 2026 01:48:24 GMT  
		Size: 411.7 MB (411747664 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1e5c1067d0a52a4f538abb766e69e2000b60644466397f2617826659ccaa680`  
		Last Modified: Tue, 04 Aug 2026 01:48:14 GMT  
		Size: 716.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3022eed6a56cf0dbf1210e7f714eddbc852d091218f566d4e7d90db5f510d1df`  
		Last Modified: Tue, 04 Aug 2026 01:48:15 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b1e001ec4128301e9664c5b6ec13eeb3d5b6af5c8661c0726c7a75b3a91d6ef`  
		Last Modified: Tue, 04 Aug 2026 01:48:15 GMT  
		Size: 595.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0218af39c4ce26f737a4aa66aad97bb70b900e409188bf8881a422dbb8c0d59a`  
		Last Modified: Tue, 04 Aug 2026 01:48:16 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19.0-20260803` - unknown; unknown

```console
$ docker pull odoo@sha256:a7c4ff1cbf9c5c514a3cde3fc0b4fa530e777bc98981e6fea9292a22da67d59f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.3 MB (52298795 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:860d7b8f735f917ea51ceded1a7a4376f294343ca34bc7bbeae492ac54745e56`

```dockerfile
```

-	Layers:
	-	`sha256:3713b92c0bcc939178c60c77d1a24ad5af92c0cbc62594e2df442c910e654fcc`  
		Last Modified: Tue, 04 Aug 2026 01:48:16 GMT  
		Size: 52.3 MB (52271141 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ca579b5d37b63ccf0f178998f5bb0f271d2682f9c54dfdc8d75e4a12e7804f2d`  
		Last Modified: Tue, 04 Aug 2026 01:48:12 GMT  
		Size: 27.7 KB (27654 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:19.0-20260803` - linux; ppc64le

```console
$ docker pull odoo@sha256:d09c93735dac2ab62140832b88a66ad6865bddddbefdbffb8c4642ff4e695bf1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **714.2 MB (714204444 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4997af323347211ca3302e94918897a4bf93086a11649b9db69172c9b05c6974`
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
ARG ODOO_RELEASE=20260803
# Tue, 04 Aug 2026 02:18:29 GMT
ARG ODOO_SHA=e737003fe019e49079e2e83cea87040cf42e89b2
# Tue, 04 Aug 2026 02:21:12 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260803 ODOO_SHA=e737003fe019e49079e2e83cea87040cf42e89b2
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 04 Aug 2026 02:21:14 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 02:21:14 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 04 Aug 2026 02:21:14 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260803 ODOO_SHA=e737003fe019e49079e2e83cea87040cf42e89b2
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 04 Aug 2026 02:21:14 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 04 Aug 2026 02:21:14 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 04 Aug 2026 02:21:14 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 04 Aug 2026 02:21:15 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 04 Aug 2026 02:21:15 GMT
USER odoo
# Tue, 04 Aug 2026 02:21:15 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 04 Aug 2026 02:21:15 GMT
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
	-	`sha256:20e971727c9f7f6908ce76f05d2f689ad967b6c5f3c5b797bd17c20ad27732d3`  
		Last Modified: Tue, 04 Aug 2026 02:25:22 GMT  
		Size: 412.4 MB (412422023 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6e6c34da1d3abb7dc8aae769dbe8018965e4d90d74c4396136edd66a09894aa`  
		Last Modified: Tue, 04 Aug 2026 02:25:12 GMT  
		Size: 716.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3b7ebc7244fd686923493ff98c5b465a60eb67520a2e715838c4f7e2ec0c4cf`  
		Last Modified: Tue, 04 Aug 2026 02:25:13 GMT  
		Size: 557.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18c42f59362e57d927fbe3a1ccccc7c412d25dea0c38a56c7723227d41874dd6`  
		Last Modified: Tue, 04 Aug 2026 02:25:12 GMT  
		Size: 596.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0eda71db1993706f519c3fb2a9df199922b09f3e0a0bc8e1514e5b39c951dee7`  
		Last Modified: Tue, 04 Aug 2026 02:25:14 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19.0-20260803` - unknown; unknown

```console
$ docker pull odoo@sha256:8db8b18228bb679a52e75ddc943dd6da8b553cccb09188ef2eac1d50b0369292
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.3 MB (52299780 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ed9054d1e470fa27036f45288073471a713298f2bcad622f49c407156fb6e4e`

```dockerfile
```

-	Layers:
	-	`sha256:dc5d07f73e9fe3710d6b4ff5ecb944ba0bc388928c888eee7ceddc3e4b5b03a9`  
		Last Modified: Tue, 04 Aug 2026 02:25:15 GMT  
		Size: 52.3 MB (52272227 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e408416a6a8b14be397616b499f2497a4f34d9997962614d42b44886fe62f824`  
		Last Modified: Tue, 04 Aug 2026 02:25:12 GMT  
		Size: 27.6 KB (27553 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:latest`

```console
$ docker pull odoo@sha256:4872f23288454b724fd2d26c176a418276c2b3552e9aa752f9396b59d864b3a0
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
$ docker pull odoo@sha256:0bfcfcdd2e1c80f499c25473b1b9ef2c1d31ad9e6d96534771b06b191ee4b89e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **697.8 MB (697823164 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d2972aeee2f1ff76b27e583366abf9aea7bca57e4f791349b8b7e62c101721b`
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
# Tue, 04 Aug 2026 01:43:49 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 04 Aug 2026 01:43:49 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 04 Aug 2026 01:43:49 GMT
ENV LANG=en_US.UTF-8
# Tue, 04 Aug 2026 01:43:49 GMT
ARG TARGETARCH=amd64
# Tue, 04 Aug 2026 01:43:49 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 04 Aug 2026 01:43:58 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:15 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:15 GMT
ENV ODOO_VERSION=19.0
# Tue, 04 Aug 2026 01:45:15 GMT
ARG ODOO_RELEASE=20260803
# Tue, 04 Aug 2026 01:45:15 GMT
ARG ODOO_SHA=e737003fe019e49079e2e83cea87040cf42e89b2
# Tue, 04 Aug 2026 01:46:19 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260803 ODOO_SHA=e737003fe019e49079e2e83cea87040cf42e89b2
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 04 Aug 2026 01:46:19 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:46:19 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 04 Aug 2026 01:46:19 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260803 ODOO_SHA=e737003fe019e49079e2e83cea87040cf42e89b2
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 04 Aug 2026 01:46:19 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 04 Aug 2026 01:46:19 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 04 Aug 2026 01:46:19 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 04 Aug 2026 01:46:19 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 04 Aug 2026 01:46:19 GMT
USER odoo
# Tue, 04 Aug 2026 01:46:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 04 Aug 2026 01:46:19 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7212f498974c5127d0dfd1327b0544d1acdaa70f4d3afe91534141adb5b1b9c5`  
		Last Modified: Tue, 04 Aug 2026 01:48:06 GMT  
		Size: 241.1 MB (241082681 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cecdbfb8ec504fd5e331d7f9e8e0352e183f514ec8905b1ebaeb7c092d85d69a`  
		Last Modified: Tue, 04 Aug 2026 01:47:58 GMT  
		Size: 14.2 MB (14202623 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c532b18bfaec716c1211d52a94724eb61eb3d99d1a55d664c05b8278b937cd37`  
		Last Modified: Tue, 04 Aug 2026 01:47:57 GMT  
		Size: 867.3 KB (867319 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b923cb0af516f1b60d3d702b4bc79adab5f2fdfa291a14ba1c12fb7dfb88f728`  
		Last Modified: Tue, 04 Aug 2026 01:48:09 GMT  
		Size: 411.9 MB (411916685 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b314390c4b6518617ef93761baf40854b070857572bf2870ba4606252972ece`  
		Last Modified: Tue, 04 Aug 2026 01:47:58 GMT  
		Size: 716.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6b2c34724c2990b73f0f2994a2a41c9ada29d1e238b22e09278fdfd18282bf9`  
		Last Modified: Tue, 04 Aug 2026 01:47:59 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99ba28cf5bafd4ee90ac9c97888d3e5056e7c3678211479f0fa35f343c8b53de`  
		Last Modified: Tue, 04 Aug 2026 01:47:59 GMT  
		Size: 596.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee4427a554d9cb3ff9caeaf15c69b5011168b8816d0715ef6fdb6a4752d39cde`  
		Last Modified: Tue, 04 Aug 2026 01:48:00 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:latest` - unknown; unknown

```console
$ docker pull odoo@sha256:18f4d980decbcda777147ba7d4c97dca49f47c0890ebf0b814ff650606be855e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.3 MB (52291348 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a8c586468caf8c7867e22f9700ba18db1a926a7d79776e89bb565a8dca377fb`

```dockerfile
```

-	Layers:
	-	`sha256:76837d6072f19e4a3a1aef7ae27dcd366834bcf518ba58cd98356f20c254e282`  
		Last Modified: Tue, 04 Aug 2026 01:48:00 GMT  
		Size: 52.3 MB (52263857 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cc07fab2805f35cc5172bc6f3a663fbf1456967d373924c9c3052d790e0dd3ad`  
		Last Modified: Tue, 04 Aug 2026 01:47:57 GMT  
		Size: 27.5 KB (27491 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:latest` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:1cf8835788e0a30976d1d959dcfe40e335c2763f1ed52768a49ee08648d77ffe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **691.8 MB (691778469 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d231d6b0632f2e69787c18f6ea9bcc3a2122ab2242c45b8c7bdef8a5e6dd54a`
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
# Tue, 04 Aug 2026 01:43:47 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 04 Aug 2026 01:43:47 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 04 Aug 2026 01:43:47 GMT
ENV LANG=en_US.UTF-8
# Tue, 04 Aug 2026 01:43:47 GMT
ARG TARGETARCH=arm64
# Tue, 04 Aug 2026 01:43:47 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 04 Aug 2026 01:43:57 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:03 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:45:03 GMT
ENV ODOO_VERSION=19.0
# Tue, 04 Aug 2026 01:45:03 GMT
ARG ODOO_RELEASE=20260803
# Tue, 04 Aug 2026 01:45:03 GMT
ARG ODOO_SHA=e737003fe019e49079e2e83cea87040cf42e89b2
# Tue, 04 Aug 2026 01:46:14 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260803 ODOO_SHA=e737003fe019e49079e2e83cea87040cf42e89b2
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 04 Aug 2026 01:46:15 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 01:46:15 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 04 Aug 2026 01:46:15 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260803 ODOO_SHA=e737003fe019e49079e2e83cea87040cf42e89b2
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 04 Aug 2026 01:46:15 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 04 Aug 2026 01:46:15 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 04 Aug 2026 01:46:15 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 04 Aug 2026 01:46:15 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 04 Aug 2026 01:46:15 GMT
USER odoo
# Tue, 04 Aug 2026 01:46:15 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 04 Aug 2026 01:46:15 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ad657149e0d5300a6b7407c4ce4269ed8d496356ca90c2a3870c5c27117226d`  
		Last Modified: Tue, 04 Aug 2026 01:48:21 GMT  
		Size: 236.1 MB (236102447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a76ef01ff4442b59206588398bbba701180300d32fef099ccab48c324de86ee5`  
		Last Modified: Tue, 04 Aug 2026 01:48:13 GMT  
		Size: 14.2 MB (14171417 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95d719621a183d7d24d64928315b4c97f92174d42ce40ea14f6f06a5bc1c871b`  
		Last Modified: Tue, 04 Aug 2026 01:48:12 GMT  
		Size: 867.4 KB (867378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:583b98a65886cf4d88eede14858ab7d6a4a901cf3632eab75ca9533fe6e13f62`  
		Last Modified: Tue, 04 Aug 2026 01:48:24 GMT  
		Size: 411.7 MB (411747664 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1e5c1067d0a52a4f538abb766e69e2000b60644466397f2617826659ccaa680`  
		Last Modified: Tue, 04 Aug 2026 01:48:14 GMT  
		Size: 716.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3022eed6a56cf0dbf1210e7f714eddbc852d091218f566d4e7d90db5f510d1df`  
		Last Modified: Tue, 04 Aug 2026 01:48:15 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b1e001ec4128301e9664c5b6ec13eeb3d5b6af5c8661c0726c7a75b3a91d6ef`  
		Last Modified: Tue, 04 Aug 2026 01:48:15 GMT  
		Size: 595.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0218af39c4ce26f737a4aa66aad97bb70b900e409188bf8881a422dbb8c0d59a`  
		Last Modified: Tue, 04 Aug 2026 01:48:16 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:latest` - unknown; unknown

```console
$ docker pull odoo@sha256:a7c4ff1cbf9c5c514a3cde3fc0b4fa530e777bc98981e6fea9292a22da67d59f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.3 MB (52298795 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:860d7b8f735f917ea51ceded1a7a4376f294343ca34bc7bbeae492ac54745e56`

```dockerfile
```

-	Layers:
	-	`sha256:3713b92c0bcc939178c60c77d1a24ad5af92c0cbc62594e2df442c910e654fcc`  
		Last Modified: Tue, 04 Aug 2026 01:48:16 GMT  
		Size: 52.3 MB (52271141 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ca579b5d37b63ccf0f178998f5bb0f271d2682f9c54dfdc8d75e4a12e7804f2d`  
		Last Modified: Tue, 04 Aug 2026 01:48:12 GMT  
		Size: 27.7 KB (27654 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:latest` - linux; ppc64le

```console
$ docker pull odoo@sha256:d09c93735dac2ab62140832b88a66ad6865bddddbefdbffb8c4642ff4e695bf1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **714.2 MB (714204444 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4997af323347211ca3302e94918897a4bf93086a11649b9db69172c9b05c6974`
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
ARG ODOO_RELEASE=20260803
# Tue, 04 Aug 2026 02:18:29 GMT
ARG ODOO_SHA=e737003fe019e49079e2e83cea87040cf42e89b2
# Tue, 04 Aug 2026 02:21:12 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260803 ODOO_SHA=e737003fe019e49079e2e83cea87040cf42e89b2
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 04 Aug 2026 02:21:14 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 04 Aug 2026 02:21:14 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 04 Aug 2026 02:21:14 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260803 ODOO_SHA=e737003fe019e49079e2e83cea87040cf42e89b2
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 04 Aug 2026 02:21:14 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 04 Aug 2026 02:21:14 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 04 Aug 2026 02:21:14 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 04 Aug 2026 02:21:15 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 04 Aug 2026 02:21:15 GMT
USER odoo
# Tue, 04 Aug 2026 02:21:15 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 04 Aug 2026 02:21:15 GMT
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
	-	`sha256:20e971727c9f7f6908ce76f05d2f689ad967b6c5f3c5b797bd17c20ad27732d3`  
		Last Modified: Tue, 04 Aug 2026 02:25:22 GMT  
		Size: 412.4 MB (412422023 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6e6c34da1d3abb7dc8aae769dbe8018965e4d90d74c4396136edd66a09894aa`  
		Last Modified: Tue, 04 Aug 2026 02:25:12 GMT  
		Size: 716.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3b7ebc7244fd686923493ff98c5b465a60eb67520a2e715838c4f7e2ec0c4cf`  
		Last Modified: Tue, 04 Aug 2026 02:25:13 GMT  
		Size: 557.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18c42f59362e57d927fbe3a1ccccc7c412d25dea0c38a56c7723227d41874dd6`  
		Last Modified: Tue, 04 Aug 2026 02:25:12 GMT  
		Size: 596.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0eda71db1993706f519c3fb2a9df199922b09f3e0a0bc8e1514e5b39c951dee7`  
		Last Modified: Tue, 04 Aug 2026 02:25:14 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:latest` - unknown; unknown

```console
$ docker pull odoo@sha256:8db8b18228bb679a52e75ddc943dd6da8b553cccb09188ef2eac1d50b0369292
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.3 MB (52299780 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ed9054d1e470fa27036f45288073471a713298f2bcad622f49c407156fb6e4e`

```dockerfile
```

-	Layers:
	-	`sha256:dc5d07f73e9fe3710d6b4ff5ecb944ba0bc388928c888eee7ceddc3e4b5b03a9`  
		Last Modified: Tue, 04 Aug 2026 02:25:15 GMT  
		Size: 52.3 MB (52272227 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e408416a6a8b14be397616b499f2497a4f34d9997962614d42b44886fe62f824`  
		Last Modified: Tue, 04 Aug 2026 02:25:12 GMT  
		Size: 27.6 KB (27553 bytes)  
		MIME: application/vnd.in-toto+json
