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
$ docker pull odoo@sha256:9668abacd894276ed009e8db7db1d1ffb8068af6982f76a3400ed0d68e40432d
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
$ docker pull odoo@sha256:5cd180474d3861295b4b727f4d63ab172ff870c2ae9c937abdafbeae939ee3cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **675.1 MB (675136245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d23249b8dc43d67eee7ffe710dd50a2dd8e41b2c9935bfceea85dab10b396d3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Sun, 25 Oct 2026 14:17:45 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:17:45 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:17:45 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:17:47 GMT
ADD file:eed88e94d6aa7c9da62836e137f889e03988c1a6b237b0cedb6ca666dfaa98ea in / 
# Sun, 25 Oct 2026 14:17:47 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:27:01 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Mon, 26 Oct 2026 23:27:01 GMT
SHELL [/bin/bash -xo pipefail -c]
# Mon, 26 Oct 2026 23:27:01 GMT
ENV LANG=en_US.UTF-8
# Mon, 26 Oct 2026 23:27:01 GMT
ARG TARGETARCH=amd64
# Mon, 26 Oct 2026 23:27:01 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Mon, 26 Oct 2026 23:27:11 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:28:41 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:28:41 GMT
ENV ODOO_VERSION=18.0
# Mon, 26 Oct 2026 23:28:41 GMT
ARG ODOO_RELEASE=20261015
# Mon, 26 Oct 2026 23:28:41 GMT
ARG ODOO_SHA=21f8d7d61d37a8bb1a6a0e151bc976c91d8b8229
# Mon, 26 Oct 2026 23:30:07 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261015 ODOO_SHA=21f8d7d61d37a8bb1a6a0e151bc976c91d8b8229
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Mon, 26 Oct 2026 23:30:07 GMT
COPY ./entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:30:08 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Mon, 26 Oct 2026 23:30:08 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261015 ODOO_SHA=21f8d7d61d37a8bb1a6a0e151bc976c91d8b8229
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Mon, 26 Oct 2026 23:30:08 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Mon, 26 Oct 2026 23:30:08 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Mon, 26 Oct 2026 23:30:08 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Mon, 26 Oct 2026 23:30:08 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Mon, 26 Oct 2026 23:30:08 GMT
USER odoo
# Mon, 26 Oct 2026 23:30:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 26 Oct 2026 23:30:08 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ea165aa7d8ccfc69f56f3794927a77e758e2a206509060513ecf171513d6e30`  
		Last Modified: Mon, 26 Oct 2026 23:31:34 GMT  
		Size: 238.7 MB (238714447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3ad5a905308d7626f9c302b1962e3d9b2a55aac9adfc649c64cfaa115ea4a62`  
		Last Modified: Mon, 26 Oct 2026 23:31:26 GMT  
		Size: 14.2 MB (14225792 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52b073240c3301cfa95216b687f9408bfd87ea1b9a00027e89b0f8bb668bb950`  
		Last Modified: Mon, 26 Oct 2026 23:31:24 GMT  
		Size: 874.0 KB (874021 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef9410a657dc3eee23b42d340ea63b422c57e8f723546e437b55d19296166e8c`  
		Last Modified: Mon, 26 Oct 2026 23:31:37 GMT  
		Size: 391.6 MB (391551580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:966873e839dddaf909f34495ce3c7832ba5b3fed3be9441595718a5ea94826fe`  
		Last Modified: Mon, 26 Oct 2026 23:31:26 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:391b3132b22b9f19c9f884a8ea45ada635db73515bec8bc8ff4fba2844012472`  
		Last Modified: Mon, 26 Oct 2026 23:31:27 GMT  
		Size: 555.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:347ac57757f60ec40987d7683ed33c25bf72a3e7c1b91235104f02a887b082dc`  
		Last Modified: Mon, 26 Oct 2026 23:31:27 GMT  
		Size: 595.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:667f871fad4b35a5bb1b1ff3d6650362178f7e52a0c150cab22bd9019e195fd3`  
		Last Modified: Mon, 26 Oct 2026 23:31:28 GMT  
		Size: 876.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18` - unknown; unknown

```console
$ docker pull odoo@sha256:0dfaaa994f749f7e057139798baaa4bbe4a62141f0e1262d1421edf1df125dba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.0 MB (43961487 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1066222a7db15d934f0dd9ce4e985dee774033d5a65388c6fb08e5ce8b9d5c4`

```dockerfile
```

-	Layers:
	-	`sha256:ebb6feafed3cadd78d901de657bfeea3e2c23161c0c3b9828f6dc960b2962dc8`  
		Last Modified: Mon, 26 Oct 2026 23:31:27 GMT  
		Size: 43.9 MB (43934290 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:94f9ed5f29556abf6cb01620f75702b85c59ff009bd97fee1c33cdcb4c06ae09`  
		Last Modified: Mon, 26 Oct 2026 23:31:24 GMT  
		Size: 27.2 KB (27197 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:18` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:61a7b45897a7ee30101a90ab84336f294fb963468287c3739cc70abed737bc9d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **671.6 MB (671598581 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b51bb4572c410117334c9de4e300f4aea77fc6aa57c29f9d9d59016586bfd8d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Sun, 25 Oct 2026 14:18:00 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:18:00 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:18:00 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:18:03 GMT
ADD file:2c901e275b6c59fa9cf0fb689a9665247088dba23d45178d9aa52ec3263de265 in / 
# Sun, 25 Oct 2026 14:18:03 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:31:35 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Mon, 26 Oct 2026 23:31:35 GMT
SHELL [/bin/bash -xo pipefail -c]
# Mon, 26 Oct 2026 23:31:35 GMT
ENV LANG=en_US.UTF-8
# Mon, 26 Oct 2026 23:31:35 GMT
ARG TARGETARCH=arm64
# Mon, 26 Oct 2026 23:31:35 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Mon, 26 Oct 2026 23:31:44 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:32:47 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:32:47 GMT
ENV ODOO_VERSION=18.0
# Mon, 26 Oct 2026 23:32:47 GMT
ARG ODOO_RELEASE=20261015
# Mon, 26 Oct 2026 23:32:47 GMT
ARG ODOO_SHA=21f8d7d61d37a8bb1a6a0e151bc976c91d8b8229
# Mon, 26 Oct 2026 23:34:16 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261015 ODOO_SHA=21f8d7d61d37a8bb1a6a0e151bc976c91d8b8229
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Mon, 26 Oct 2026 23:34:16 GMT
COPY ./entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:34:16 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Mon, 26 Oct 2026 23:34:16 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261015 ODOO_SHA=21f8d7d61d37a8bb1a6a0e151bc976c91d8b8229
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Mon, 26 Oct 2026 23:34:16 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Mon, 26 Oct 2026 23:34:16 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Mon, 26 Oct 2026 23:34:16 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Mon, 26 Oct 2026 23:34:17 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Mon, 26 Oct 2026 23:34:17 GMT
USER odoo
# Mon, 26 Oct 2026 23:34:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 26 Oct 2026 23:34:17 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:e2d2bb84d02254f4be480ca3c62f94fc12ac959c11b3ce5bd7da3f411b2b9607`  
		Last Modified: Sun, 25 Oct 2026 14:50:12 GMT  
		Size: 28.9 MB (28940126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9a1a93614f725d94d327d56fae7e20f6a8c79cb8f9066b2c5d72f60404f6ca2`  
		Last Modified: Mon, 26 Oct 2026 23:35:53 GMT  
		Size: 236.2 MB (236180996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bf59127a016012e9b20601a5ed7f894df3b305bf89b083283207214d904d0c3`  
		Last Modified: Mon, 26 Oct 2026 23:35:45 GMT  
		Size: 14.2 MB (14197399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fdfde03bb03a5503f36ae6abf00ee91a1a216c39795260728f559c61fe43bc5`  
		Last Modified: Mon, 26 Oct 2026 23:35:45 GMT  
		Size: 873.9 KB (873887 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:680fc1df335731a4f5a6c8c1adc1b7d907566a52805705ba108a08705b9bfd43`  
		Last Modified: Mon, 26 Oct 2026 23:35:55 GMT  
		Size: 391.4 MB (391403378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c09db030d6f0c683f08c5556de1b6d95e51475d6e3d367e39e855fbf620c2bdc`  
		Last Modified: Mon, 26 Oct 2026 23:35:46 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73179da0a328fb986060b2ef1a961dfcf4c0135ac3f4f801526a0e70fafcc167`  
		Last Modified: Mon, 26 Oct 2026 23:35:47 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34a989dc9a675aebe860410fa515d72dc1687fbb7694ab24b32edb726ab10bda`  
		Last Modified: Mon, 26 Oct 2026 23:35:47 GMT  
		Size: 596.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18a39ebbdfbe23e912a6cf1ec03003735d705744dbeed9ae3313f3e14a19d5f7`  
		Last Modified: Mon, 26 Oct 2026 23:35:48 GMT  
		Size: 876.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18` - unknown; unknown

```console
$ docker pull odoo@sha256:ed34a3487f16917072663feade6bb031527e339f16b92a3bb0a866974dff2ac3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.0 MB (43968910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98a3db2c1a5254991b38cde6ecf61b2dac245e48cca912efd9b3cf3c3bff0f03`

```dockerfile
```

-	Layers:
	-	`sha256:8a72c63074d2c254c44653299f637dff3ebea1a46140f2bbe65d9e425e41f7d1`  
		Last Modified: Mon, 26 Oct 2026 23:35:47 GMT  
		Size: 43.9 MB (43941562 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8b7650c020deabe0c1157dc5e3e1fcafce97b594d2b90533d289b2e60245922c`  
		Last Modified: Mon, 26 Oct 2026 23:35:45 GMT  
		Size: 27.3 KB (27348 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:18` - linux; ppc64le

```console
$ docker pull odoo@sha256:55c365cf4af8e80ead02cd34aab31147d3f4b8e49da46a3e5065bc09e21c4c1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **691.6 MB (691598584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd65fc387e70dd12bb6c6dc2dbfa8ccde3566656f11fed01d545832bc54d0f82`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Sun, 25 Oct 2026 14:18:35 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:18:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:18:35 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:18:39 GMT
ADD file:ef742f6d40def62a9b4c0b916161e4ab04e1a6b83bc4e20803daa0d5ab2ea12b in / 
# Sun, 25 Oct 2026 14:18:39 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 05:55:56 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 27 Oct 2026 05:55:56 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 27 Oct 2026 05:55:56 GMT
ENV LANG=en_US.UTF-8
# Tue, 27 Oct 2026 05:55:56 GMT
ARG TARGETARCH=ppc64le
# Tue, 27 Oct 2026 05:55:56 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 27 Oct 2026 05:56:09 GMT
# ARGS: TARGETARCH=ppc64le
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 06:01:10 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 06:01:10 GMT
ENV ODOO_VERSION=18.0
# Tue, 27 Oct 2026 06:01:10 GMT
ARG ODOO_RELEASE=20261015
# Tue, 27 Oct 2026 06:01:10 GMT
ARG ODOO_SHA=21f8d7d61d37a8bb1a6a0e151bc976c91d8b8229
# Tue, 27 Oct 2026 06:13:11 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261015 ODOO_SHA=21f8d7d61d37a8bb1a6a0e151bc976c91d8b8229
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 27 Oct 2026 06:13:12 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 27 Oct 2026 06:13:13 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 27 Oct 2026 06:13:13 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261015 ODOO_SHA=21f8d7d61d37a8bb1a6a0e151bc976c91d8b8229
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 27 Oct 2026 06:13:13 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 27 Oct 2026 06:13:13 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 27 Oct 2026 06:13:13 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 27 Oct 2026 06:13:14 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 27 Oct 2026 06:13:14 GMT
USER odoo
# Tue, 27 Oct 2026 06:13:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 27 Oct 2026 06:13:14 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:400d78a2b842f2bd938ae79326cc66475d11b949ac6b2acbfbc7709090964eb8`  
		Last Modified: Sun, 25 Oct 2026 14:50:25 GMT  
		Size: 34.4 MB (34378308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cb07ca625a772db26458b2100e990de7970ae698245407a6d13e7003c48bc59`  
		Last Modified: Tue, 27 Oct 2026 06:09:55 GMT  
		Size: 249.4 MB (249382979 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aabd25bbab2932cb4204323218d9bccfbe7ec58eb6eba38040d1202650d97529`  
		Last Modified: Tue, 27 Oct 2026 06:09:46 GMT  
		Size: 14.7 MB (14743656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94ccaa742254b2d26d544baf452833ebc5067eab0c78e3b4c76d5515b703a424`  
		Last Modified: Tue, 27 Oct 2026 06:09:45 GMT  
		Size: 875.1 KB (875064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9bb2c6aa6a2ad58c6491bbfb51183ab464989433415db29b1409279a07789fc`  
		Last Modified: Tue, 27 Oct 2026 06:16:34 GMT  
		Size: 392.2 MB (392215783 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e61378ce11f33cd0cba2586d618ecfe5d645818cb3c3bdfba058a9752b48cd3a`  
		Last Modified: Tue, 27 Oct 2026 06:16:25 GMT  
		Size: 766.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90bd2bd029db39891fe91a8b1a0ca883a13ce4dacd96504c57ca07cdd8d04d6b`  
		Last Modified: Tue, 27 Oct 2026 06:16:25 GMT  
		Size: 555.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ff5c2e8054fe9b209c1c34093b4b8b93a2ea037075adc9032115b03b91f16d3`  
		Last Modified: Tue, 27 Oct 2026 06:16:25 GMT  
		Size: 595.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:264323c7c8fca74827acc56d7d7188ed97472a73192ee2be495f7d5dbf6db514`  
		Last Modified: Tue, 27 Oct 2026 06:16:26 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18` - unknown; unknown

```console
$ docker pull odoo@sha256:999c320d11a6a506a75662b48185f1431ff752dfe51d4396583ce64541fa03ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.0 MB (43969907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83c69e1066118e243850d6b988990eaffb7ca0f49c17dc4a453087bbd30e46cb`

```dockerfile
```

-	Layers:
	-	`sha256:1ef855e676fe951ea83f2812ca781065618bab3ddb58cbc88c08c0a193bf3a05`  
		Last Modified: Tue, 27 Oct 2026 06:16:27 GMT  
		Size: 43.9 MB (43942654 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d05e6bab757472cef452a75ffb1cdec784c8dc3ce90a8eba0ef5f28388d16c4d`  
		Last Modified: Tue, 27 Oct 2026 06:16:24 GMT  
		Size: 27.3 KB (27253 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:18.0`

```console
$ docker pull odoo@sha256:9668abacd894276ed009e8db7db1d1ffb8068af6982f76a3400ed0d68e40432d
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
$ docker pull odoo@sha256:5cd180474d3861295b4b727f4d63ab172ff870c2ae9c937abdafbeae939ee3cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **675.1 MB (675136245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d23249b8dc43d67eee7ffe710dd50a2dd8e41b2c9935bfceea85dab10b396d3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Sun, 25 Oct 2026 14:17:45 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:17:45 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:17:45 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:17:47 GMT
ADD file:eed88e94d6aa7c9da62836e137f889e03988c1a6b237b0cedb6ca666dfaa98ea in / 
# Sun, 25 Oct 2026 14:17:47 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:27:01 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Mon, 26 Oct 2026 23:27:01 GMT
SHELL [/bin/bash -xo pipefail -c]
# Mon, 26 Oct 2026 23:27:01 GMT
ENV LANG=en_US.UTF-8
# Mon, 26 Oct 2026 23:27:01 GMT
ARG TARGETARCH=amd64
# Mon, 26 Oct 2026 23:27:01 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Mon, 26 Oct 2026 23:27:11 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:28:41 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:28:41 GMT
ENV ODOO_VERSION=18.0
# Mon, 26 Oct 2026 23:28:41 GMT
ARG ODOO_RELEASE=20261015
# Mon, 26 Oct 2026 23:28:41 GMT
ARG ODOO_SHA=21f8d7d61d37a8bb1a6a0e151bc976c91d8b8229
# Mon, 26 Oct 2026 23:30:07 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261015 ODOO_SHA=21f8d7d61d37a8bb1a6a0e151bc976c91d8b8229
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Mon, 26 Oct 2026 23:30:07 GMT
COPY ./entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:30:08 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Mon, 26 Oct 2026 23:30:08 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261015 ODOO_SHA=21f8d7d61d37a8bb1a6a0e151bc976c91d8b8229
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Mon, 26 Oct 2026 23:30:08 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Mon, 26 Oct 2026 23:30:08 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Mon, 26 Oct 2026 23:30:08 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Mon, 26 Oct 2026 23:30:08 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Mon, 26 Oct 2026 23:30:08 GMT
USER odoo
# Mon, 26 Oct 2026 23:30:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 26 Oct 2026 23:30:08 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ea165aa7d8ccfc69f56f3794927a77e758e2a206509060513ecf171513d6e30`  
		Last Modified: Mon, 26 Oct 2026 23:31:34 GMT  
		Size: 238.7 MB (238714447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3ad5a905308d7626f9c302b1962e3d9b2a55aac9adfc649c64cfaa115ea4a62`  
		Last Modified: Mon, 26 Oct 2026 23:31:26 GMT  
		Size: 14.2 MB (14225792 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52b073240c3301cfa95216b687f9408bfd87ea1b9a00027e89b0f8bb668bb950`  
		Last Modified: Mon, 26 Oct 2026 23:31:24 GMT  
		Size: 874.0 KB (874021 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef9410a657dc3eee23b42d340ea63b422c57e8f723546e437b55d19296166e8c`  
		Last Modified: Mon, 26 Oct 2026 23:31:37 GMT  
		Size: 391.6 MB (391551580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:966873e839dddaf909f34495ce3c7832ba5b3fed3be9441595718a5ea94826fe`  
		Last Modified: Mon, 26 Oct 2026 23:31:26 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:391b3132b22b9f19c9f884a8ea45ada635db73515bec8bc8ff4fba2844012472`  
		Last Modified: Mon, 26 Oct 2026 23:31:27 GMT  
		Size: 555.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:347ac57757f60ec40987d7683ed33c25bf72a3e7c1b91235104f02a887b082dc`  
		Last Modified: Mon, 26 Oct 2026 23:31:27 GMT  
		Size: 595.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:667f871fad4b35a5bb1b1ff3d6650362178f7e52a0c150cab22bd9019e195fd3`  
		Last Modified: Mon, 26 Oct 2026 23:31:28 GMT  
		Size: 876.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18.0` - unknown; unknown

```console
$ docker pull odoo@sha256:0dfaaa994f749f7e057139798baaa4bbe4a62141f0e1262d1421edf1df125dba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.0 MB (43961487 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1066222a7db15d934f0dd9ce4e985dee774033d5a65388c6fb08e5ce8b9d5c4`

```dockerfile
```

-	Layers:
	-	`sha256:ebb6feafed3cadd78d901de657bfeea3e2c23161c0c3b9828f6dc960b2962dc8`  
		Last Modified: Mon, 26 Oct 2026 23:31:27 GMT  
		Size: 43.9 MB (43934290 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:94f9ed5f29556abf6cb01620f75702b85c59ff009bd97fee1c33cdcb4c06ae09`  
		Last Modified: Mon, 26 Oct 2026 23:31:24 GMT  
		Size: 27.2 KB (27197 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:18.0` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:61a7b45897a7ee30101a90ab84336f294fb963468287c3739cc70abed737bc9d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **671.6 MB (671598581 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b51bb4572c410117334c9de4e300f4aea77fc6aa57c29f9d9d59016586bfd8d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Sun, 25 Oct 2026 14:18:00 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:18:00 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:18:00 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:18:03 GMT
ADD file:2c901e275b6c59fa9cf0fb689a9665247088dba23d45178d9aa52ec3263de265 in / 
# Sun, 25 Oct 2026 14:18:03 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:31:35 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Mon, 26 Oct 2026 23:31:35 GMT
SHELL [/bin/bash -xo pipefail -c]
# Mon, 26 Oct 2026 23:31:35 GMT
ENV LANG=en_US.UTF-8
# Mon, 26 Oct 2026 23:31:35 GMT
ARG TARGETARCH=arm64
# Mon, 26 Oct 2026 23:31:35 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Mon, 26 Oct 2026 23:31:44 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:32:47 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:32:47 GMT
ENV ODOO_VERSION=18.0
# Mon, 26 Oct 2026 23:32:47 GMT
ARG ODOO_RELEASE=20261015
# Mon, 26 Oct 2026 23:32:47 GMT
ARG ODOO_SHA=21f8d7d61d37a8bb1a6a0e151bc976c91d8b8229
# Mon, 26 Oct 2026 23:34:16 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261015 ODOO_SHA=21f8d7d61d37a8bb1a6a0e151bc976c91d8b8229
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Mon, 26 Oct 2026 23:34:16 GMT
COPY ./entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:34:16 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Mon, 26 Oct 2026 23:34:16 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261015 ODOO_SHA=21f8d7d61d37a8bb1a6a0e151bc976c91d8b8229
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Mon, 26 Oct 2026 23:34:16 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Mon, 26 Oct 2026 23:34:16 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Mon, 26 Oct 2026 23:34:16 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Mon, 26 Oct 2026 23:34:17 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Mon, 26 Oct 2026 23:34:17 GMT
USER odoo
# Mon, 26 Oct 2026 23:34:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 26 Oct 2026 23:34:17 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:e2d2bb84d02254f4be480ca3c62f94fc12ac959c11b3ce5bd7da3f411b2b9607`  
		Last Modified: Sun, 25 Oct 2026 14:50:12 GMT  
		Size: 28.9 MB (28940126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9a1a93614f725d94d327d56fae7e20f6a8c79cb8f9066b2c5d72f60404f6ca2`  
		Last Modified: Mon, 26 Oct 2026 23:35:53 GMT  
		Size: 236.2 MB (236180996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bf59127a016012e9b20601a5ed7f894df3b305bf89b083283207214d904d0c3`  
		Last Modified: Mon, 26 Oct 2026 23:35:45 GMT  
		Size: 14.2 MB (14197399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fdfde03bb03a5503f36ae6abf00ee91a1a216c39795260728f559c61fe43bc5`  
		Last Modified: Mon, 26 Oct 2026 23:35:45 GMT  
		Size: 873.9 KB (873887 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:680fc1df335731a4f5a6c8c1adc1b7d907566a52805705ba108a08705b9bfd43`  
		Last Modified: Mon, 26 Oct 2026 23:35:55 GMT  
		Size: 391.4 MB (391403378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c09db030d6f0c683f08c5556de1b6d95e51475d6e3d367e39e855fbf620c2bdc`  
		Last Modified: Mon, 26 Oct 2026 23:35:46 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73179da0a328fb986060b2ef1a961dfcf4c0135ac3f4f801526a0e70fafcc167`  
		Last Modified: Mon, 26 Oct 2026 23:35:47 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34a989dc9a675aebe860410fa515d72dc1687fbb7694ab24b32edb726ab10bda`  
		Last Modified: Mon, 26 Oct 2026 23:35:47 GMT  
		Size: 596.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18a39ebbdfbe23e912a6cf1ec03003735d705744dbeed9ae3313f3e14a19d5f7`  
		Last Modified: Mon, 26 Oct 2026 23:35:48 GMT  
		Size: 876.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18.0` - unknown; unknown

```console
$ docker pull odoo@sha256:ed34a3487f16917072663feade6bb031527e339f16b92a3bb0a866974dff2ac3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.0 MB (43968910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98a3db2c1a5254991b38cde6ecf61b2dac245e48cca912efd9b3cf3c3bff0f03`

```dockerfile
```

-	Layers:
	-	`sha256:8a72c63074d2c254c44653299f637dff3ebea1a46140f2bbe65d9e425e41f7d1`  
		Last Modified: Mon, 26 Oct 2026 23:35:47 GMT  
		Size: 43.9 MB (43941562 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8b7650c020deabe0c1157dc5e3e1fcafce97b594d2b90533d289b2e60245922c`  
		Last Modified: Mon, 26 Oct 2026 23:35:45 GMT  
		Size: 27.3 KB (27348 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:18.0` - linux; ppc64le

```console
$ docker pull odoo@sha256:55c365cf4af8e80ead02cd34aab31147d3f4b8e49da46a3e5065bc09e21c4c1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **691.6 MB (691598584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd65fc387e70dd12bb6c6dc2dbfa8ccde3566656f11fed01d545832bc54d0f82`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Sun, 25 Oct 2026 14:18:35 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:18:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:18:35 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:18:39 GMT
ADD file:ef742f6d40def62a9b4c0b916161e4ab04e1a6b83bc4e20803daa0d5ab2ea12b in / 
# Sun, 25 Oct 2026 14:18:39 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 05:55:56 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 27 Oct 2026 05:55:56 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 27 Oct 2026 05:55:56 GMT
ENV LANG=en_US.UTF-8
# Tue, 27 Oct 2026 05:55:56 GMT
ARG TARGETARCH=ppc64le
# Tue, 27 Oct 2026 05:55:56 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 27 Oct 2026 05:56:09 GMT
# ARGS: TARGETARCH=ppc64le
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 06:01:10 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 06:01:10 GMT
ENV ODOO_VERSION=18.0
# Tue, 27 Oct 2026 06:01:10 GMT
ARG ODOO_RELEASE=20261015
# Tue, 27 Oct 2026 06:01:10 GMT
ARG ODOO_SHA=21f8d7d61d37a8bb1a6a0e151bc976c91d8b8229
# Tue, 27 Oct 2026 06:13:11 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261015 ODOO_SHA=21f8d7d61d37a8bb1a6a0e151bc976c91d8b8229
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 27 Oct 2026 06:13:12 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 27 Oct 2026 06:13:13 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 27 Oct 2026 06:13:13 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261015 ODOO_SHA=21f8d7d61d37a8bb1a6a0e151bc976c91d8b8229
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 27 Oct 2026 06:13:13 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 27 Oct 2026 06:13:13 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 27 Oct 2026 06:13:13 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 27 Oct 2026 06:13:14 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 27 Oct 2026 06:13:14 GMT
USER odoo
# Tue, 27 Oct 2026 06:13:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 27 Oct 2026 06:13:14 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:400d78a2b842f2bd938ae79326cc66475d11b949ac6b2acbfbc7709090964eb8`  
		Last Modified: Sun, 25 Oct 2026 14:50:25 GMT  
		Size: 34.4 MB (34378308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cb07ca625a772db26458b2100e990de7970ae698245407a6d13e7003c48bc59`  
		Last Modified: Tue, 27 Oct 2026 06:09:55 GMT  
		Size: 249.4 MB (249382979 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aabd25bbab2932cb4204323218d9bccfbe7ec58eb6eba38040d1202650d97529`  
		Last Modified: Tue, 27 Oct 2026 06:09:46 GMT  
		Size: 14.7 MB (14743656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94ccaa742254b2d26d544baf452833ebc5067eab0c78e3b4c76d5515b703a424`  
		Last Modified: Tue, 27 Oct 2026 06:09:45 GMT  
		Size: 875.1 KB (875064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9bb2c6aa6a2ad58c6491bbfb51183ab464989433415db29b1409279a07789fc`  
		Last Modified: Tue, 27 Oct 2026 06:16:34 GMT  
		Size: 392.2 MB (392215783 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e61378ce11f33cd0cba2586d618ecfe5d645818cb3c3bdfba058a9752b48cd3a`  
		Last Modified: Tue, 27 Oct 2026 06:16:25 GMT  
		Size: 766.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90bd2bd029db39891fe91a8b1a0ca883a13ce4dacd96504c57ca07cdd8d04d6b`  
		Last Modified: Tue, 27 Oct 2026 06:16:25 GMT  
		Size: 555.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ff5c2e8054fe9b209c1c34093b4b8b93a2ea037075adc9032115b03b91f16d3`  
		Last Modified: Tue, 27 Oct 2026 06:16:25 GMT  
		Size: 595.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:264323c7c8fca74827acc56d7d7188ed97472a73192ee2be495f7d5dbf6db514`  
		Last Modified: Tue, 27 Oct 2026 06:16:26 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18.0` - unknown; unknown

```console
$ docker pull odoo@sha256:999c320d11a6a506a75662b48185f1431ff752dfe51d4396583ce64541fa03ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.0 MB (43969907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83c69e1066118e243850d6b988990eaffb7ca0f49c17dc4a453087bbd30e46cb`

```dockerfile
```

-	Layers:
	-	`sha256:1ef855e676fe951ea83f2812ca781065618bab3ddb58cbc88c08c0a193bf3a05`  
		Last Modified: Tue, 27 Oct 2026 06:16:27 GMT  
		Size: 43.9 MB (43942654 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d05e6bab757472cef452a75ffb1cdec784c8dc3ce90a8eba0ef5f28388d16c4d`  
		Last Modified: Tue, 27 Oct 2026 06:16:24 GMT  
		Size: 27.3 KB (27253 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:18.0-20261015`

```console
$ docker pull odoo@sha256:9668abacd894276ed009e8db7db1d1ffb8068af6982f76a3400ed0d68e40432d
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
$ docker pull odoo@sha256:5cd180474d3861295b4b727f4d63ab172ff870c2ae9c937abdafbeae939ee3cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **675.1 MB (675136245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d23249b8dc43d67eee7ffe710dd50a2dd8e41b2c9935bfceea85dab10b396d3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Sun, 25 Oct 2026 14:17:45 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:17:45 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:17:45 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:17:47 GMT
ADD file:eed88e94d6aa7c9da62836e137f889e03988c1a6b237b0cedb6ca666dfaa98ea in / 
# Sun, 25 Oct 2026 14:17:47 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:27:01 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Mon, 26 Oct 2026 23:27:01 GMT
SHELL [/bin/bash -xo pipefail -c]
# Mon, 26 Oct 2026 23:27:01 GMT
ENV LANG=en_US.UTF-8
# Mon, 26 Oct 2026 23:27:01 GMT
ARG TARGETARCH=amd64
# Mon, 26 Oct 2026 23:27:01 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Mon, 26 Oct 2026 23:27:11 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:28:41 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:28:41 GMT
ENV ODOO_VERSION=18.0
# Mon, 26 Oct 2026 23:28:41 GMT
ARG ODOO_RELEASE=20261015
# Mon, 26 Oct 2026 23:28:41 GMT
ARG ODOO_SHA=21f8d7d61d37a8bb1a6a0e151bc976c91d8b8229
# Mon, 26 Oct 2026 23:30:07 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261015 ODOO_SHA=21f8d7d61d37a8bb1a6a0e151bc976c91d8b8229
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Mon, 26 Oct 2026 23:30:07 GMT
COPY ./entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:30:08 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Mon, 26 Oct 2026 23:30:08 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261015 ODOO_SHA=21f8d7d61d37a8bb1a6a0e151bc976c91d8b8229
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Mon, 26 Oct 2026 23:30:08 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Mon, 26 Oct 2026 23:30:08 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Mon, 26 Oct 2026 23:30:08 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Mon, 26 Oct 2026 23:30:08 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Mon, 26 Oct 2026 23:30:08 GMT
USER odoo
# Mon, 26 Oct 2026 23:30:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 26 Oct 2026 23:30:08 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ea165aa7d8ccfc69f56f3794927a77e758e2a206509060513ecf171513d6e30`  
		Last Modified: Mon, 26 Oct 2026 23:31:34 GMT  
		Size: 238.7 MB (238714447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3ad5a905308d7626f9c302b1962e3d9b2a55aac9adfc649c64cfaa115ea4a62`  
		Last Modified: Mon, 26 Oct 2026 23:31:26 GMT  
		Size: 14.2 MB (14225792 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52b073240c3301cfa95216b687f9408bfd87ea1b9a00027e89b0f8bb668bb950`  
		Last Modified: Mon, 26 Oct 2026 23:31:24 GMT  
		Size: 874.0 KB (874021 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef9410a657dc3eee23b42d340ea63b422c57e8f723546e437b55d19296166e8c`  
		Last Modified: Mon, 26 Oct 2026 23:31:37 GMT  
		Size: 391.6 MB (391551580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:966873e839dddaf909f34495ce3c7832ba5b3fed3be9441595718a5ea94826fe`  
		Last Modified: Mon, 26 Oct 2026 23:31:26 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:391b3132b22b9f19c9f884a8ea45ada635db73515bec8bc8ff4fba2844012472`  
		Last Modified: Mon, 26 Oct 2026 23:31:27 GMT  
		Size: 555.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:347ac57757f60ec40987d7683ed33c25bf72a3e7c1b91235104f02a887b082dc`  
		Last Modified: Mon, 26 Oct 2026 23:31:27 GMT  
		Size: 595.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:667f871fad4b35a5bb1b1ff3d6650362178f7e52a0c150cab22bd9019e195fd3`  
		Last Modified: Mon, 26 Oct 2026 23:31:28 GMT  
		Size: 876.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18.0-20261015` - unknown; unknown

```console
$ docker pull odoo@sha256:0dfaaa994f749f7e057139798baaa4bbe4a62141f0e1262d1421edf1df125dba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.0 MB (43961487 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1066222a7db15d934f0dd9ce4e985dee774033d5a65388c6fb08e5ce8b9d5c4`

```dockerfile
```

-	Layers:
	-	`sha256:ebb6feafed3cadd78d901de657bfeea3e2c23161c0c3b9828f6dc960b2962dc8`  
		Last Modified: Mon, 26 Oct 2026 23:31:27 GMT  
		Size: 43.9 MB (43934290 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:94f9ed5f29556abf6cb01620f75702b85c59ff009bd97fee1c33cdcb4c06ae09`  
		Last Modified: Mon, 26 Oct 2026 23:31:24 GMT  
		Size: 27.2 KB (27197 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:18.0-20261015` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:61a7b45897a7ee30101a90ab84336f294fb963468287c3739cc70abed737bc9d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **671.6 MB (671598581 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b51bb4572c410117334c9de4e300f4aea77fc6aa57c29f9d9d59016586bfd8d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Sun, 25 Oct 2026 14:18:00 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:18:00 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:18:00 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:18:03 GMT
ADD file:2c901e275b6c59fa9cf0fb689a9665247088dba23d45178d9aa52ec3263de265 in / 
# Sun, 25 Oct 2026 14:18:03 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:31:35 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Mon, 26 Oct 2026 23:31:35 GMT
SHELL [/bin/bash -xo pipefail -c]
# Mon, 26 Oct 2026 23:31:35 GMT
ENV LANG=en_US.UTF-8
# Mon, 26 Oct 2026 23:31:35 GMT
ARG TARGETARCH=arm64
# Mon, 26 Oct 2026 23:31:35 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Mon, 26 Oct 2026 23:31:44 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:32:47 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:32:47 GMT
ENV ODOO_VERSION=18.0
# Mon, 26 Oct 2026 23:32:47 GMT
ARG ODOO_RELEASE=20261015
# Mon, 26 Oct 2026 23:32:47 GMT
ARG ODOO_SHA=21f8d7d61d37a8bb1a6a0e151bc976c91d8b8229
# Mon, 26 Oct 2026 23:34:16 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261015 ODOO_SHA=21f8d7d61d37a8bb1a6a0e151bc976c91d8b8229
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Mon, 26 Oct 2026 23:34:16 GMT
COPY ./entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:34:16 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Mon, 26 Oct 2026 23:34:16 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261015 ODOO_SHA=21f8d7d61d37a8bb1a6a0e151bc976c91d8b8229
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Mon, 26 Oct 2026 23:34:16 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Mon, 26 Oct 2026 23:34:16 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Mon, 26 Oct 2026 23:34:16 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Mon, 26 Oct 2026 23:34:17 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Mon, 26 Oct 2026 23:34:17 GMT
USER odoo
# Mon, 26 Oct 2026 23:34:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 26 Oct 2026 23:34:17 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:e2d2bb84d02254f4be480ca3c62f94fc12ac959c11b3ce5bd7da3f411b2b9607`  
		Last Modified: Sun, 25 Oct 2026 14:50:12 GMT  
		Size: 28.9 MB (28940126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9a1a93614f725d94d327d56fae7e20f6a8c79cb8f9066b2c5d72f60404f6ca2`  
		Last Modified: Mon, 26 Oct 2026 23:35:53 GMT  
		Size: 236.2 MB (236180996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bf59127a016012e9b20601a5ed7f894df3b305bf89b083283207214d904d0c3`  
		Last Modified: Mon, 26 Oct 2026 23:35:45 GMT  
		Size: 14.2 MB (14197399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fdfde03bb03a5503f36ae6abf00ee91a1a216c39795260728f559c61fe43bc5`  
		Last Modified: Mon, 26 Oct 2026 23:35:45 GMT  
		Size: 873.9 KB (873887 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:680fc1df335731a4f5a6c8c1adc1b7d907566a52805705ba108a08705b9bfd43`  
		Last Modified: Mon, 26 Oct 2026 23:35:55 GMT  
		Size: 391.4 MB (391403378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c09db030d6f0c683f08c5556de1b6d95e51475d6e3d367e39e855fbf620c2bdc`  
		Last Modified: Mon, 26 Oct 2026 23:35:46 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73179da0a328fb986060b2ef1a961dfcf4c0135ac3f4f801526a0e70fafcc167`  
		Last Modified: Mon, 26 Oct 2026 23:35:47 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34a989dc9a675aebe860410fa515d72dc1687fbb7694ab24b32edb726ab10bda`  
		Last Modified: Mon, 26 Oct 2026 23:35:47 GMT  
		Size: 596.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18a39ebbdfbe23e912a6cf1ec03003735d705744dbeed9ae3313f3e14a19d5f7`  
		Last Modified: Mon, 26 Oct 2026 23:35:48 GMT  
		Size: 876.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18.0-20261015` - unknown; unknown

```console
$ docker pull odoo@sha256:ed34a3487f16917072663feade6bb031527e339f16b92a3bb0a866974dff2ac3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.0 MB (43968910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98a3db2c1a5254991b38cde6ecf61b2dac245e48cca912efd9b3cf3c3bff0f03`

```dockerfile
```

-	Layers:
	-	`sha256:8a72c63074d2c254c44653299f637dff3ebea1a46140f2bbe65d9e425e41f7d1`  
		Last Modified: Mon, 26 Oct 2026 23:35:47 GMT  
		Size: 43.9 MB (43941562 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8b7650c020deabe0c1157dc5e3e1fcafce97b594d2b90533d289b2e60245922c`  
		Last Modified: Mon, 26 Oct 2026 23:35:45 GMT  
		Size: 27.3 KB (27348 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:18.0-20261015` - linux; ppc64le

```console
$ docker pull odoo@sha256:55c365cf4af8e80ead02cd34aab31147d3f4b8e49da46a3e5065bc09e21c4c1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **691.6 MB (691598584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd65fc387e70dd12bb6c6dc2dbfa8ccde3566656f11fed01d545832bc54d0f82`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Sun, 25 Oct 2026 14:18:35 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:18:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:18:35 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:18:39 GMT
ADD file:ef742f6d40def62a9b4c0b916161e4ab04e1a6b83bc4e20803daa0d5ab2ea12b in / 
# Sun, 25 Oct 2026 14:18:39 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 05:55:56 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 27 Oct 2026 05:55:56 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 27 Oct 2026 05:55:56 GMT
ENV LANG=en_US.UTF-8
# Tue, 27 Oct 2026 05:55:56 GMT
ARG TARGETARCH=ppc64le
# Tue, 27 Oct 2026 05:55:56 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 27 Oct 2026 05:56:09 GMT
# ARGS: TARGETARCH=ppc64le
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 06:01:10 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 06:01:10 GMT
ENV ODOO_VERSION=18.0
# Tue, 27 Oct 2026 06:01:10 GMT
ARG ODOO_RELEASE=20261015
# Tue, 27 Oct 2026 06:01:10 GMT
ARG ODOO_SHA=21f8d7d61d37a8bb1a6a0e151bc976c91d8b8229
# Tue, 27 Oct 2026 06:13:11 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261015 ODOO_SHA=21f8d7d61d37a8bb1a6a0e151bc976c91d8b8229
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 27 Oct 2026 06:13:12 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 27 Oct 2026 06:13:13 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 27 Oct 2026 06:13:13 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261015 ODOO_SHA=21f8d7d61d37a8bb1a6a0e151bc976c91d8b8229
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 27 Oct 2026 06:13:13 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 27 Oct 2026 06:13:13 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 27 Oct 2026 06:13:13 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 27 Oct 2026 06:13:14 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 27 Oct 2026 06:13:14 GMT
USER odoo
# Tue, 27 Oct 2026 06:13:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 27 Oct 2026 06:13:14 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:400d78a2b842f2bd938ae79326cc66475d11b949ac6b2acbfbc7709090964eb8`  
		Last Modified: Sun, 25 Oct 2026 14:50:25 GMT  
		Size: 34.4 MB (34378308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cb07ca625a772db26458b2100e990de7970ae698245407a6d13e7003c48bc59`  
		Last Modified: Tue, 27 Oct 2026 06:09:55 GMT  
		Size: 249.4 MB (249382979 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aabd25bbab2932cb4204323218d9bccfbe7ec58eb6eba38040d1202650d97529`  
		Last Modified: Tue, 27 Oct 2026 06:09:46 GMT  
		Size: 14.7 MB (14743656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94ccaa742254b2d26d544baf452833ebc5067eab0c78e3b4c76d5515b703a424`  
		Last Modified: Tue, 27 Oct 2026 06:09:45 GMT  
		Size: 875.1 KB (875064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9bb2c6aa6a2ad58c6491bbfb51183ab464989433415db29b1409279a07789fc`  
		Last Modified: Tue, 27 Oct 2026 06:16:34 GMT  
		Size: 392.2 MB (392215783 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e61378ce11f33cd0cba2586d618ecfe5d645818cb3c3bdfba058a9752b48cd3a`  
		Last Modified: Tue, 27 Oct 2026 06:16:25 GMT  
		Size: 766.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90bd2bd029db39891fe91a8b1a0ca883a13ce4dacd96504c57ca07cdd8d04d6b`  
		Last Modified: Tue, 27 Oct 2026 06:16:25 GMT  
		Size: 555.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ff5c2e8054fe9b209c1c34093b4b8b93a2ea037075adc9032115b03b91f16d3`  
		Last Modified: Tue, 27 Oct 2026 06:16:25 GMT  
		Size: 595.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:264323c7c8fca74827acc56d7d7188ed97472a73192ee2be495f7d5dbf6db514`  
		Last Modified: Tue, 27 Oct 2026 06:16:26 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18.0-20261015` - unknown; unknown

```console
$ docker pull odoo@sha256:999c320d11a6a506a75662b48185f1431ff752dfe51d4396583ce64541fa03ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.0 MB (43969907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83c69e1066118e243850d6b988990eaffb7ca0f49c17dc4a453087bbd30e46cb`

```dockerfile
```

-	Layers:
	-	`sha256:1ef855e676fe951ea83f2812ca781065618bab3ddb58cbc88c08c0a193bf3a05`  
		Last Modified: Tue, 27 Oct 2026 06:16:27 GMT  
		Size: 43.9 MB (43942654 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d05e6bab757472cef452a75ffb1cdec784c8dc3ce90a8eba0ef5f28388d16c4d`  
		Last Modified: Tue, 27 Oct 2026 06:16:24 GMT  
		Size: 27.3 KB (27253 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:19`

```console
$ docker pull odoo@sha256:27f920e002c43a1af7022a68f3cc17db71a2f9f3348800cb050721ce54893e49
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
$ docker pull odoo@sha256:0cdc95f06c99fa32c69a1163268781342f2f290ac6bd2a073401f30d7f4fe35f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **698.8 MB (698802343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8dc3271115f551b8c396a851bd1d60f901d6b79c472ff2ed0db3f8c6f1a6dd80`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Sun, 25 Oct 2026 14:17:45 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:17:45 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:17:45 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:17:47 GMT
ADD file:eed88e94d6aa7c9da62836e137f889e03988c1a6b237b0cedb6ca666dfaa98ea in / 
# Sun, 25 Oct 2026 14:17:47 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:26:50 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Mon, 26 Oct 2026 23:26:50 GMT
SHELL [/bin/bash -xo pipefail -c]
# Mon, 26 Oct 2026 23:26:50 GMT
ENV LANG=en_US.UTF-8
# Mon, 26 Oct 2026 23:26:50 GMT
ARG TARGETARCH=amd64
# Mon, 26 Oct 2026 23:26:50 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Mon, 26 Oct 2026 23:27:00 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:28:11 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:28:11 GMT
ENV ODOO_VERSION=19.0
# Mon, 26 Oct 2026 23:28:11 GMT
ARG ODOO_RELEASE=20261015
# Mon, 26 Oct 2026 23:28:11 GMT
ARG ODOO_SHA=3a2e406fa0399944a7c339baa5f53ca2e783e71b
# Mon, 26 Oct 2026 23:29:42 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261015 ODOO_SHA=3a2e406fa0399944a7c339baa5f53ca2e783e71b
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Mon, 26 Oct 2026 23:29:42 GMT
COPY ./entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:29:43 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Mon, 26 Oct 2026 23:29:43 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261015 ODOO_SHA=3a2e406fa0399944a7c339baa5f53ca2e783e71b
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Mon, 26 Oct 2026 23:29:43 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Mon, 26 Oct 2026 23:29:43 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Mon, 26 Oct 2026 23:29:43 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Mon, 26 Oct 2026 23:29:43 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Mon, 26 Oct 2026 23:29:43 GMT
USER odoo
# Mon, 26 Oct 2026 23:29:43 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 26 Oct 2026 23:29:43 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bae2cbb9ea1cb20f3c5e33d4c5e20ba0929c8cdce23b30b5b7fd79f267d17db4`  
		Last Modified: Mon, 26 Oct 2026 23:31:32 GMT  
		Size: 238.7 MB (238715221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:020125531cc581f127c3d2b559b312571b4c5f5dfa5e89d16c7fa20b10296278`  
		Last Modified: Mon, 26 Oct 2026 23:31:24 GMT  
		Size: 14.2 MB (14226207 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea9875eff40f9e1bfe949ce25923972aaa3dca20c5c3d324951732d7cf720406`  
		Last Modified: Mon, 26 Oct 2026 23:31:23 GMT  
		Size: 873.9 KB (873925 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dddf0f6ad0a7f0a4f1cb41edb756d68ed45a409e703a33d26dbcbf09b1f8a813`  
		Last Modified: Mon, 26 Oct 2026 23:31:35 GMT  
		Size: 415.2 MB (415216630 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cce6611cda640708fc7c11cc55a15e445f426adc12ad3db0f23c35572c92ee1`  
		Last Modified: Mon, 26 Oct 2026 23:31:25 GMT  
		Size: 718.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b011ea58b4d7e6316384078170c90ee522755826137c03fa6c0f00c2749f737`  
		Last Modified: Mon, 26 Oct 2026 23:31:25 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecf44207d8d98bae4574e9cce20f2a049dbe92bb5082db1e2115af1bcb9a5d58`  
		Last Modified: Mon, 26 Oct 2026 23:31:26 GMT  
		Size: 596.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c74c1c843bb07f9fac8225e8c8c65c390d7780d381e2caa97c631cd165db8831`  
		Last Modified: Mon, 26 Oct 2026 23:31:27 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19` - unknown; unknown

```console
$ docker pull odoo@sha256:f289f647fffe95f86745e08e4051532df01943f1be6e4477f22a81439eaf2ab8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.5 MB (52518451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b4076d3cfb222080f73384091a3879c9312076555bf3fc219f2b4761b5d39df`

```dockerfile
```

-	Layers:
	-	`sha256:1ce69842e959c9a5719168291a615cc302b926b1714307ed85cac2758877edc8`  
		Last Modified: Mon, 26 Oct 2026 23:31:26 GMT  
		Size: 52.5 MB (52491254 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0d7f436b9a51ff7392255ebb5605bdcff22de745917901e6b8deaa73f530e7c6`  
		Last Modified: Mon, 26 Oct 2026 23:31:23 GMT  
		Size: 27.2 KB (27197 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:19` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:c64bd70f31929120d0fa5d6451e60069c61dfcf27207d0ee9b12ed665b24710d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **695.3 MB (695262397 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:375c484af94d6b762e543308a7acea1fb07c6c6e8f9c144b09423802c4d897e2`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Sun, 25 Oct 2026 14:18:00 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:18:00 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:18:00 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:18:03 GMT
ADD file:2c901e275b6c59fa9cf0fb689a9665247088dba23d45178d9aa52ec3263de265 in / 
# Sun, 25 Oct 2026 14:18:03 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:31:40 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Mon, 26 Oct 2026 23:31:40 GMT
SHELL [/bin/bash -xo pipefail -c]
# Mon, 26 Oct 2026 23:31:40 GMT
ENV LANG=en_US.UTF-8
# Mon, 26 Oct 2026 23:31:40 GMT
ARG TARGETARCH=arm64
# Mon, 26 Oct 2026 23:31:40 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Mon, 26 Oct 2026 23:31:50 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:32:52 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:32:52 GMT
ENV ODOO_VERSION=19.0
# Mon, 26 Oct 2026 23:32:52 GMT
ARG ODOO_RELEASE=20261015
# Mon, 26 Oct 2026 23:32:52 GMT
ARG ODOO_SHA=3a2e406fa0399944a7c339baa5f53ca2e783e71b
# Mon, 26 Oct 2026 23:34:32 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261015 ODOO_SHA=3a2e406fa0399944a7c339baa5f53ca2e783e71b
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Mon, 26 Oct 2026 23:34:33 GMT
COPY ./entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:34:33 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Mon, 26 Oct 2026 23:34:33 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261015 ODOO_SHA=3a2e406fa0399944a7c339baa5f53ca2e783e71b
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Mon, 26 Oct 2026 23:34:33 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Mon, 26 Oct 2026 23:34:33 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Mon, 26 Oct 2026 23:34:33 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Mon, 26 Oct 2026 23:34:33 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Mon, 26 Oct 2026 23:34:33 GMT
USER odoo
# Mon, 26 Oct 2026 23:34:33 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 26 Oct 2026 23:34:33 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:e2d2bb84d02254f4be480ca3c62f94fc12ac959c11b3ce5bd7da3f411b2b9607`  
		Last Modified: Sun, 25 Oct 2026 14:50:12 GMT  
		Size: 28.9 MB (28940126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f16c0567c48872674219beba2e5be31d7bb6fa4c57c1d0c51cc4d16b90c42e1b`  
		Last Modified: Mon, 26 Oct 2026 23:36:36 GMT  
		Size: 236.2 MB (236181455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1398f7d974f037ba022105855bd2106e7f410f1fe9c70f023b5c398b257e9896`  
		Last Modified: Mon, 26 Oct 2026 23:36:28 GMT  
		Size: 14.2 MB (14197460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbd00f6fb25f005e93b3a6f6ccc865f325d99d405b9c03534c22fff18ab758ed`  
		Last Modified: Mon, 26 Oct 2026 23:36:28 GMT  
		Size: 873.9 KB (873920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc4537c6538667cd3b74145c65daf5c71ae1886cf0c51a7209ef70b6ee7bb0df`  
		Last Modified: Mon, 26 Oct 2026 23:36:38 GMT  
		Size: 415.1 MB (415066687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de871229f42cc8657c1ba7f6f11e71ff858745f50d9059d07fdaa4e71c544983`  
		Last Modified: Mon, 26 Oct 2026 23:36:29 GMT  
		Size: 719.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee0a1766e31330b193a40107f52b4fab5661ad94c02507bd86212dcced0810ea`  
		Last Modified: Mon, 26 Oct 2026 23:36:30 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c2ce8d0b7f81c3f92b14792ed57363998784d45acc0ba11244964e5a851fe4f`  
		Last Modified: Mon, 26 Oct 2026 23:36:30 GMT  
		Size: 597.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df797e9ada5a02da7c80432665b97608c59b5389356d6b3cad1e059932e27ec1`  
		Last Modified: Mon, 26 Oct 2026 23:36:31 GMT  
		Size: 877.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19` - unknown; unknown

```console
$ docker pull odoo@sha256:ca009c54f5569d31ef7bad191b9f4f1feafc3c5231a814c88da691993f077b47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.5 MB (52525875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3ffb8be89c274ae1040e4287f35b3061496826df8c903a56e63957a11ea96e7`

```dockerfile
```

-	Layers:
	-	`sha256:09452a1ae91e2fdae623737864ba46a229767b7aef26b086d9f0e3eeafb2e7e4`  
		Last Modified: Mon, 26 Oct 2026 23:36:31 GMT  
		Size: 52.5 MB (52498526 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8409dd31c72fbc058718323f0d7bb75821c810a1833dc2b9a8800dd141f78b52`  
		Last Modified: Mon, 26 Oct 2026 23:36:28 GMT  
		Size: 27.3 KB (27349 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:19` - linux; ppc64le

```console
$ docker pull odoo@sha256:c80d1093faaf83ea31ceb890e6e36bf2503011ffd269bc11231fd0316a608337
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **715.3 MB (715313673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c88eee2529294e9c5abb5b6e1bb37444a39b8ead26db55b03b972f51c7d706f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Sun, 25 Oct 2026 14:18:35 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:18:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:18:35 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:18:39 GMT
ADD file:ef742f6d40def62a9b4c0b916161e4ab04e1a6b83bc4e20803daa0d5ab2ea12b in / 
# Sun, 25 Oct 2026 14:18:39 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 05:55:56 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 27 Oct 2026 05:55:56 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 27 Oct 2026 05:55:56 GMT
ENV LANG=en_US.UTF-8
# Tue, 27 Oct 2026 05:55:56 GMT
ARG TARGETARCH=ppc64le
# Tue, 27 Oct 2026 05:55:56 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 27 Oct 2026 05:56:09 GMT
# ARGS: TARGETARCH=ppc64le
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 06:01:10 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 06:01:10 GMT
ENV ODOO_VERSION=19.0
# Tue, 27 Oct 2026 06:01:10 GMT
ARG ODOO_RELEASE=20261015
# Tue, 27 Oct 2026 06:01:10 GMT
ARG ODOO_SHA=3a2e406fa0399944a7c339baa5f53ca2e783e71b
# Tue, 27 Oct 2026 06:05:04 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261015 ODOO_SHA=3a2e406fa0399944a7c339baa5f53ca2e783e71b
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 27 Oct 2026 06:05:09 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 27 Oct 2026 06:05:11 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 27 Oct 2026 06:05:12 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261015 ODOO_SHA=3a2e406fa0399944a7c339baa5f53ca2e783e71b
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 27 Oct 2026 06:05:12 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 27 Oct 2026 06:05:12 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 27 Oct 2026 06:05:12 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 27 Oct 2026 06:05:13 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 27 Oct 2026 06:05:13 GMT
USER odoo
# Tue, 27 Oct 2026 06:05:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 27 Oct 2026 06:05:13 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:400d78a2b842f2bd938ae79326cc66475d11b949ac6b2acbfbc7709090964eb8`  
		Last Modified: Sun, 25 Oct 2026 14:50:25 GMT  
		Size: 34.4 MB (34378308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cb07ca625a772db26458b2100e990de7970ae698245407a6d13e7003c48bc59`  
		Last Modified: Tue, 27 Oct 2026 06:09:55 GMT  
		Size: 249.4 MB (249382979 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aabd25bbab2932cb4204323218d9bccfbe7ec58eb6eba38040d1202650d97529`  
		Last Modified: Tue, 27 Oct 2026 06:09:46 GMT  
		Size: 14.7 MB (14743656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94ccaa742254b2d26d544baf452833ebc5067eab0c78e3b4c76d5515b703a424`  
		Last Modified: Tue, 27 Oct 2026 06:09:45 GMT  
		Size: 875.1 KB (875064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e87c5c69febd02d2b7371dfdb1a32524aa2265f36eee3b8c8f96ea502d23038`  
		Last Modified: Tue, 27 Oct 2026 06:09:58 GMT  
		Size: 415.9 MB (415930915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb58d6440d3bd90769807becf6498311bbe060733424ecf7fb63134d4b011c9c`  
		Last Modified: Tue, 27 Oct 2026 06:09:46 GMT  
		Size: 716.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f1d7c555365c2cdaafd343264fc91fef6e0cd15950fb06851b850bcd90f9108`  
		Last Modified: Tue, 27 Oct 2026 06:09:47 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d2b61348542be259abfa724d9f0d17d42eac520bbe938fae2c9786ff2ecc3c2`  
		Last Modified: Tue, 27 Oct 2026 06:09:48 GMT  
		Size: 600.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67bf3357116a66ae7426de9000ac0eb7a2d72d82bc1a36138dc2be9fae3ca0d7`  
		Last Modified: Tue, 27 Oct 2026 06:09:49 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19` - unknown; unknown

```console
$ docker pull odoo@sha256:a1fa0878febc2a9695b11f796b392eba2cd870364b865d47354e311ffc4f9873
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.5 MB (52526871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56279fc99c9467beeebc1110e9842ce71d5b426635d65d976998b32182ea8b88`

```dockerfile
```

-	Layers:
	-	`sha256:678078671610dcbb88c1dfe0ba9336619f3f33a8c657b571e4c7552e5e9c6177`  
		Last Modified: Tue, 27 Oct 2026 06:09:49 GMT  
		Size: 52.5 MB (52499618 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:33d071ac67703e5e128baa3c17d9f26921347f30d7ff8a089543a2a7319c8e1f`  
		Last Modified: Tue, 27 Oct 2026 06:09:45 GMT  
		Size: 27.3 KB (27253 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:19.0`

```console
$ docker pull odoo@sha256:27f920e002c43a1af7022a68f3cc17db71a2f9f3348800cb050721ce54893e49
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
$ docker pull odoo@sha256:0cdc95f06c99fa32c69a1163268781342f2f290ac6bd2a073401f30d7f4fe35f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **698.8 MB (698802343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8dc3271115f551b8c396a851bd1d60f901d6b79c472ff2ed0db3f8c6f1a6dd80`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Sun, 25 Oct 2026 14:17:45 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:17:45 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:17:45 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:17:47 GMT
ADD file:eed88e94d6aa7c9da62836e137f889e03988c1a6b237b0cedb6ca666dfaa98ea in / 
# Sun, 25 Oct 2026 14:17:47 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:26:50 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Mon, 26 Oct 2026 23:26:50 GMT
SHELL [/bin/bash -xo pipefail -c]
# Mon, 26 Oct 2026 23:26:50 GMT
ENV LANG=en_US.UTF-8
# Mon, 26 Oct 2026 23:26:50 GMT
ARG TARGETARCH=amd64
# Mon, 26 Oct 2026 23:26:50 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Mon, 26 Oct 2026 23:27:00 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:28:11 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:28:11 GMT
ENV ODOO_VERSION=19.0
# Mon, 26 Oct 2026 23:28:11 GMT
ARG ODOO_RELEASE=20261015
# Mon, 26 Oct 2026 23:28:11 GMT
ARG ODOO_SHA=3a2e406fa0399944a7c339baa5f53ca2e783e71b
# Mon, 26 Oct 2026 23:29:42 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261015 ODOO_SHA=3a2e406fa0399944a7c339baa5f53ca2e783e71b
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Mon, 26 Oct 2026 23:29:42 GMT
COPY ./entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:29:43 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Mon, 26 Oct 2026 23:29:43 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261015 ODOO_SHA=3a2e406fa0399944a7c339baa5f53ca2e783e71b
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Mon, 26 Oct 2026 23:29:43 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Mon, 26 Oct 2026 23:29:43 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Mon, 26 Oct 2026 23:29:43 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Mon, 26 Oct 2026 23:29:43 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Mon, 26 Oct 2026 23:29:43 GMT
USER odoo
# Mon, 26 Oct 2026 23:29:43 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 26 Oct 2026 23:29:43 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bae2cbb9ea1cb20f3c5e33d4c5e20ba0929c8cdce23b30b5b7fd79f267d17db4`  
		Last Modified: Mon, 26 Oct 2026 23:31:32 GMT  
		Size: 238.7 MB (238715221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:020125531cc581f127c3d2b559b312571b4c5f5dfa5e89d16c7fa20b10296278`  
		Last Modified: Mon, 26 Oct 2026 23:31:24 GMT  
		Size: 14.2 MB (14226207 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea9875eff40f9e1bfe949ce25923972aaa3dca20c5c3d324951732d7cf720406`  
		Last Modified: Mon, 26 Oct 2026 23:31:23 GMT  
		Size: 873.9 KB (873925 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dddf0f6ad0a7f0a4f1cb41edb756d68ed45a409e703a33d26dbcbf09b1f8a813`  
		Last Modified: Mon, 26 Oct 2026 23:31:35 GMT  
		Size: 415.2 MB (415216630 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cce6611cda640708fc7c11cc55a15e445f426adc12ad3db0f23c35572c92ee1`  
		Last Modified: Mon, 26 Oct 2026 23:31:25 GMT  
		Size: 718.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b011ea58b4d7e6316384078170c90ee522755826137c03fa6c0f00c2749f737`  
		Last Modified: Mon, 26 Oct 2026 23:31:25 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecf44207d8d98bae4574e9cce20f2a049dbe92bb5082db1e2115af1bcb9a5d58`  
		Last Modified: Mon, 26 Oct 2026 23:31:26 GMT  
		Size: 596.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c74c1c843bb07f9fac8225e8c8c65c390d7780d381e2caa97c631cd165db8831`  
		Last Modified: Mon, 26 Oct 2026 23:31:27 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19.0` - unknown; unknown

```console
$ docker pull odoo@sha256:f289f647fffe95f86745e08e4051532df01943f1be6e4477f22a81439eaf2ab8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.5 MB (52518451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b4076d3cfb222080f73384091a3879c9312076555bf3fc219f2b4761b5d39df`

```dockerfile
```

-	Layers:
	-	`sha256:1ce69842e959c9a5719168291a615cc302b926b1714307ed85cac2758877edc8`  
		Last Modified: Mon, 26 Oct 2026 23:31:26 GMT  
		Size: 52.5 MB (52491254 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0d7f436b9a51ff7392255ebb5605bdcff22de745917901e6b8deaa73f530e7c6`  
		Last Modified: Mon, 26 Oct 2026 23:31:23 GMT  
		Size: 27.2 KB (27197 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:19.0` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:c64bd70f31929120d0fa5d6451e60069c61dfcf27207d0ee9b12ed665b24710d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **695.3 MB (695262397 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:375c484af94d6b762e543308a7acea1fb07c6c6e8f9c144b09423802c4d897e2`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Sun, 25 Oct 2026 14:18:00 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:18:00 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:18:00 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:18:03 GMT
ADD file:2c901e275b6c59fa9cf0fb689a9665247088dba23d45178d9aa52ec3263de265 in / 
# Sun, 25 Oct 2026 14:18:03 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:31:40 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Mon, 26 Oct 2026 23:31:40 GMT
SHELL [/bin/bash -xo pipefail -c]
# Mon, 26 Oct 2026 23:31:40 GMT
ENV LANG=en_US.UTF-8
# Mon, 26 Oct 2026 23:31:40 GMT
ARG TARGETARCH=arm64
# Mon, 26 Oct 2026 23:31:40 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Mon, 26 Oct 2026 23:31:50 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:32:52 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:32:52 GMT
ENV ODOO_VERSION=19.0
# Mon, 26 Oct 2026 23:32:52 GMT
ARG ODOO_RELEASE=20261015
# Mon, 26 Oct 2026 23:32:52 GMT
ARG ODOO_SHA=3a2e406fa0399944a7c339baa5f53ca2e783e71b
# Mon, 26 Oct 2026 23:34:32 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261015 ODOO_SHA=3a2e406fa0399944a7c339baa5f53ca2e783e71b
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Mon, 26 Oct 2026 23:34:33 GMT
COPY ./entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:34:33 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Mon, 26 Oct 2026 23:34:33 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261015 ODOO_SHA=3a2e406fa0399944a7c339baa5f53ca2e783e71b
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Mon, 26 Oct 2026 23:34:33 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Mon, 26 Oct 2026 23:34:33 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Mon, 26 Oct 2026 23:34:33 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Mon, 26 Oct 2026 23:34:33 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Mon, 26 Oct 2026 23:34:33 GMT
USER odoo
# Mon, 26 Oct 2026 23:34:33 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 26 Oct 2026 23:34:33 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:e2d2bb84d02254f4be480ca3c62f94fc12ac959c11b3ce5bd7da3f411b2b9607`  
		Last Modified: Sun, 25 Oct 2026 14:50:12 GMT  
		Size: 28.9 MB (28940126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f16c0567c48872674219beba2e5be31d7bb6fa4c57c1d0c51cc4d16b90c42e1b`  
		Last Modified: Mon, 26 Oct 2026 23:36:36 GMT  
		Size: 236.2 MB (236181455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1398f7d974f037ba022105855bd2106e7f410f1fe9c70f023b5c398b257e9896`  
		Last Modified: Mon, 26 Oct 2026 23:36:28 GMT  
		Size: 14.2 MB (14197460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbd00f6fb25f005e93b3a6f6ccc865f325d99d405b9c03534c22fff18ab758ed`  
		Last Modified: Mon, 26 Oct 2026 23:36:28 GMT  
		Size: 873.9 KB (873920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc4537c6538667cd3b74145c65daf5c71ae1886cf0c51a7209ef70b6ee7bb0df`  
		Last Modified: Mon, 26 Oct 2026 23:36:38 GMT  
		Size: 415.1 MB (415066687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de871229f42cc8657c1ba7f6f11e71ff858745f50d9059d07fdaa4e71c544983`  
		Last Modified: Mon, 26 Oct 2026 23:36:29 GMT  
		Size: 719.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee0a1766e31330b193a40107f52b4fab5661ad94c02507bd86212dcced0810ea`  
		Last Modified: Mon, 26 Oct 2026 23:36:30 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c2ce8d0b7f81c3f92b14792ed57363998784d45acc0ba11244964e5a851fe4f`  
		Last Modified: Mon, 26 Oct 2026 23:36:30 GMT  
		Size: 597.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df797e9ada5a02da7c80432665b97608c59b5389356d6b3cad1e059932e27ec1`  
		Last Modified: Mon, 26 Oct 2026 23:36:31 GMT  
		Size: 877.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19.0` - unknown; unknown

```console
$ docker pull odoo@sha256:ca009c54f5569d31ef7bad191b9f4f1feafc3c5231a814c88da691993f077b47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.5 MB (52525875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3ffb8be89c274ae1040e4287f35b3061496826df8c903a56e63957a11ea96e7`

```dockerfile
```

-	Layers:
	-	`sha256:09452a1ae91e2fdae623737864ba46a229767b7aef26b086d9f0e3eeafb2e7e4`  
		Last Modified: Mon, 26 Oct 2026 23:36:31 GMT  
		Size: 52.5 MB (52498526 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8409dd31c72fbc058718323f0d7bb75821c810a1833dc2b9a8800dd141f78b52`  
		Last Modified: Mon, 26 Oct 2026 23:36:28 GMT  
		Size: 27.3 KB (27349 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:19.0` - linux; ppc64le

```console
$ docker pull odoo@sha256:c80d1093faaf83ea31ceb890e6e36bf2503011ffd269bc11231fd0316a608337
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **715.3 MB (715313673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c88eee2529294e9c5abb5b6e1bb37444a39b8ead26db55b03b972f51c7d706f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Sun, 25 Oct 2026 14:18:35 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:18:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:18:35 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:18:39 GMT
ADD file:ef742f6d40def62a9b4c0b916161e4ab04e1a6b83bc4e20803daa0d5ab2ea12b in / 
# Sun, 25 Oct 2026 14:18:39 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 05:55:56 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 27 Oct 2026 05:55:56 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 27 Oct 2026 05:55:56 GMT
ENV LANG=en_US.UTF-8
# Tue, 27 Oct 2026 05:55:56 GMT
ARG TARGETARCH=ppc64le
# Tue, 27 Oct 2026 05:55:56 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 27 Oct 2026 05:56:09 GMT
# ARGS: TARGETARCH=ppc64le
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 06:01:10 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 06:01:10 GMT
ENV ODOO_VERSION=19.0
# Tue, 27 Oct 2026 06:01:10 GMT
ARG ODOO_RELEASE=20261015
# Tue, 27 Oct 2026 06:01:10 GMT
ARG ODOO_SHA=3a2e406fa0399944a7c339baa5f53ca2e783e71b
# Tue, 27 Oct 2026 06:05:04 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261015 ODOO_SHA=3a2e406fa0399944a7c339baa5f53ca2e783e71b
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 27 Oct 2026 06:05:09 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 27 Oct 2026 06:05:11 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 27 Oct 2026 06:05:12 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261015 ODOO_SHA=3a2e406fa0399944a7c339baa5f53ca2e783e71b
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 27 Oct 2026 06:05:12 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 27 Oct 2026 06:05:12 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 27 Oct 2026 06:05:12 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 27 Oct 2026 06:05:13 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 27 Oct 2026 06:05:13 GMT
USER odoo
# Tue, 27 Oct 2026 06:05:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 27 Oct 2026 06:05:13 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:400d78a2b842f2bd938ae79326cc66475d11b949ac6b2acbfbc7709090964eb8`  
		Last Modified: Sun, 25 Oct 2026 14:50:25 GMT  
		Size: 34.4 MB (34378308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cb07ca625a772db26458b2100e990de7970ae698245407a6d13e7003c48bc59`  
		Last Modified: Tue, 27 Oct 2026 06:09:55 GMT  
		Size: 249.4 MB (249382979 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aabd25bbab2932cb4204323218d9bccfbe7ec58eb6eba38040d1202650d97529`  
		Last Modified: Tue, 27 Oct 2026 06:09:46 GMT  
		Size: 14.7 MB (14743656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94ccaa742254b2d26d544baf452833ebc5067eab0c78e3b4c76d5515b703a424`  
		Last Modified: Tue, 27 Oct 2026 06:09:45 GMT  
		Size: 875.1 KB (875064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e87c5c69febd02d2b7371dfdb1a32524aa2265f36eee3b8c8f96ea502d23038`  
		Last Modified: Tue, 27 Oct 2026 06:09:58 GMT  
		Size: 415.9 MB (415930915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb58d6440d3bd90769807becf6498311bbe060733424ecf7fb63134d4b011c9c`  
		Last Modified: Tue, 27 Oct 2026 06:09:46 GMT  
		Size: 716.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f1d7c555365c2cdaafd343264fc91fef6e0cd15950fb06851b850bcd90f9108`  
		Last Modified: Tue, 27 Oct 2026 06:09:47 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d2b61348542be259abfa724d9f0d17d42eac520bbe938fae2c9786ff2ecc3c2`  
		Last Modified: Tue, 27 Oct 2026 06:09:48 GMT  
		Size: 600.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67bf3357116a66ae7426de9000ac0eb7a2d72d82bc1a36138dc2be9fae3ca0d7`  
		Last Modified: Tue, 27 Oct 2026 06:09:49 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19.0` - unknown; unknown

```console
$ docker pull odoo@sha256:a1fa0878febc2a9695b11f796b392eba2cd870364b865d47354e311ffc4f9873
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.5 MB (52526871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56279fc99c9467beeebc1110e9842ce71d5b426635d65d976998b32182ea8b88`

```dockerfile
```

-	Layers:
	-	`sha256:678078671610dcbb88c1dfe0ba9336619f3f33a8c657b571e4c7552e5e9c6177`  
		Last Modified: Tue, 27 Oct 2026 06:09:49 GMT  
		Size: 52.5 MB (52499618 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:33d071ac67703e5e128baa3c17d9f26921347f30d7ff8a089543a2a7319c8e1f`  
		Last Modified: Tue, 27 Oct 2026 06:09:45 GMT  
		Size: 27.3 KB (27253 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:19.0-20261015`

```console
$ docker pull odoo@sha256:27f920e002c43a1af7022a68f3cc17db71a2f9f3348800cb050721ce54893e49
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
$ docker pull odoo@sha256:0cdc95f06c99fa32c69a1163268781342f2f290ac6bd2a073401f30d7f4fe35f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **698.8 MB (698802343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8dc3271115f551b8c396a851bd1d60f901d6b79c472ff2ed0db3f8c6f1a6dd80`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Sun, 25 Oct 2026 14:17:45 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:17:45 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:17:45 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:17:47 GMT
ADD file:eed88e94d6aa7c9da62836e137f889e03988c1a6b237b0cedb6ca666dfaa98ea in / 
# Sun, 25 Oct 2026 14:17:47 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:26:50 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Mon, 26 Oct 2026 23:26:50 GMT
SHELL [/bin/bash -xo pipefail -c]
# Mon, 26 Oct 2026 23:26:50 GMT
ENV LANG=en_US.UTF-8
# Mon, 26 Oct 2026 23:26:50 GMT
ARG TARGETARCH=amd64
# Mon, 26 Oct 2026 23:26:50 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Mon, 26 Oct 2026 23:27:00 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:28:11 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:28:11 GMT
ENV ODOO_VERSION=19.0
# Mon, 26 Oct 2026 23:28:11 GMT
ARG ODOO_RELEASE=20261015
# Mon, 26 Oct 2026 23:28:11 GMT
ARG ODOO_SHA=3a2e406fa0399944a7c339baa5f53ca2e783e71b
# Mon, 26 Oct 2026 23:29:42 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261015 ODOO_SHA=3a2e406fa0399944a7c339baa5f53ca2e783e71b
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Mon, 26 Oct 2026 23:29:42 GMT
COPY ./entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:29:43 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Mon, 26 Oct 2026 23:29:43 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261015 ODOO_SHA=3a2e406fa0399944a7c339baa5f53ca2e783e71b
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Mon, 26 Oct 2026 23:29:43 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Mon, 26 Oct 2026 23:29:43 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Mon, 26 Oct 2026 23:29:43 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Mon, 26 Oct 2026 23:29:43 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Mon, 26 Oct 2026 23:29:43 GMT
USER odoo
# Mon, 26 Oct 2026 23:29:43 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 26 Oct 2026 23:29:43 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bae2cbb9ea1cb20f3c5e33d4c5e20ba0929c8cdce23b30b5b7fd79f267d17db4`  
		Last Modified: Mon, 26 Oct 2026 23:31:32 GMT  
		Size: 238.7 MB (238715221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:020125531cc581f127c3d2b559b312571b4c5f5dfa5e89d16c7fa20b10296278`  
		Last Modified: Mon, 26 Oct 2026 23:31:24 GMT  
		Size: 14.2 MB (14226207 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea9875eff40f9e1bfe949ce25923972aaa3dca20c5c3d324951732d7cf720406`  
		Last Modified: Mon, 26 Oct 2026 23:31:23 GMT  
		Size: 873.9 KB (873925 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dddf0f6ad0a7f0a4f1cb41edb756d68ed45a409e703a33d26dbcbf09b1f8a813`  
		Last Modified: Mon, 26 Oct 2026 23:31:35 GMT  
		Size: 415.2 MB (415216630 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cce6611cda640708fc7c11cc55a15e445f426adc12ad3db0f23c35572c92ee1`  
		Last Modified: Mon, 26 Oct 2026 23:31:25 GMT  
		Size: 718.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b011ea58b4d7e6316384078170c90ee522755826137c03fa6c0f00c2749f737`  
		Last Modified: Mon, 26 Oct 2026 23:31:25 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecf44207d8d98bae4574e9cce20f2a049dbe92bb5082db1e2115af1bcb9a5d58`  
		Last Modified: Mon, 26 Oct 2026 23:31:26 GMT  
		Size: 596.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c74c1c843bb07f9fac8225e8c8c65c390d7780d381e2caa97c631cd165db8831`  
		Last Modified: Mon, 26 Oct 2026 23:31:27 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19.0-20261015` - unknown; unknown

```console
$ docker pull odoo@sha256:f289f647fffe95f86745e08e4051532df01943f1be6e4477f22a81439eaf2ab8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.5 MB (52518451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b4076d3cfb222080f73384091a3879c9312076555bf3fc219f2b4761b5d39df`

```dockerfile
```

-	Layers:
	-	`sha256:1ce69842e959c9a5719168291a615cc302b926b1714307ed85cac2758877edc8`  
		Last Modified: Mon, 26 Oct 2026 23:31:26 GMT  
		Size: 52.5 MB (52491254 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0d7f436b9a51ff7392255ebb5605bdcff22de745917901e6b8deaa73f530e7c6`  
		Last Modified: Mon, 26 Oct 2026 23:31:23 GMT  
		Size: 27.2 KB (27197 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:19.0-20261015` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:c64bd70f31929120d0fa5d6451e60069c61dfcf27207d0ee9b12ed665b24710d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **695.3 MB (695262397 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:375c484af94d6b762e543308a7acea1fb07c6c6e8f9c144b09423802c4d897e2`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Sun, 25 Oct 2026 14:18:00 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:18:00 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:18:00 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:18:03 GMT
ADD file:2c901e275b6c59fa9cf0fb689a9665247088dba23d45178d9aa52ec3263de265 in / 
# Sun, 25 Oct 2026 14:18:03 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:31:40 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Mon, 26 Oct 2026 23:31:40 GMT
SHELL [/bin/bash -xo pipefail -c]
# Mon, 26 Oct 2026 23:31:40 GMT
ENV LANG=en_US.UTF-8
# Mon, 26 Oct 2026 23:31:40 GMT
ARG TARGETARCH=arm64
# Mon, 26 Oct 2026 23:31:40 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Mon, 26 Oct 2026 23:31:50 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:32:52 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:32:52 GMT
ENV ODOO_VERSION=19.0
# Mon, 26 Oct 2026 23:32:52 GMT
ARG ODOO_RELEASE=20261015
# Mon, 26 Oct 2026 23:32:52 GMT
ARG ODOO_SHA=3a2e406fa0399944a7c339baa5f53ca2e783e71b
# Mon, 26 Oct 2026 23:34:32 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261015 ODOO_SHA=3a2e406fa0399944a7c339baa5f53ca2e783e71b
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Mon, 26 Oct 2026 23:34:33 GMT
COPY ./entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:34:33 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Mon, 26 Oct 2026 23:34:33 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261015 ODOO_SHA=3a2e406fa0399944a7c339baa5f53ca2e783e71b
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Mon, 26 Oct 2026 23:34:33 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Mon, 26 Oct 2026 23:34:33 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Mon, 26 Oct 2026 23:34:33 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Mon, 26 Oct 2026 23:34:33 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Mon, 26 Oct 2026 23:34:33 GMT
USER odoo
# Mon, 26 Oct 2026 23:34:33 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 26 Oct 2026 23:34:33 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:e2d2bb84d02254f4be480ca3c62f94fc12ac959c11b3ce5bd7da3f411b2b9607`  
		Last Modified: Sun, 25 Oct 2026 14:50:12 GMT  
		Size: 28.9 MB (28940126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f16c0567c48872674219beba2e5be31d7bb6fa4c57c1d0c51cc4d16b90c42e1b`  
		Last Modified: Mon, 26 Oct 2026 23:36:36 GMT  
		Size: 236.2 MB (236181455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1398f7d974f037ba022105855bd2106e7f410f1fe9c70f023b5c398b257e9896`  
		Last Modified: Mon, 26 Oct 2026 23:36:28 GMT  
		Size: 14.2 MB (14197460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbd00f6fb25f005e93b3a6f6ccc865f325d99d405b9c03534c22fff18ab758ed`  
		Last Modified: Mon, 26 Oct 2026 23:36:28 GMT  
		Size: 873.9 KB (873920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc4537c6538667cd3b74145c65daf5c71ae1886cf0c51a7209ef70b6ee7bb0df`  
		Last Modified: Mon, 26 Oct 2026 23:36:38 GMT  
		Size: 415.1 MB (415066687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de871229f42cc8657c1ba7f6f11e71ff858745f50d9059d07fdaa4e71c544983`  
		Last Modified: Mon, 26 Oct 2026 23:36:29 GMT  
		Size: 719.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee0a1766e31330b193a40107f52b4fab5661ad94c02507bd86212dcced0810ea`  
		Last Modified: Mon, 26 Oct 2026 23:36:30 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c2ce8d0b7f81c3f92b14792ed57363998784d45acc0ba11244964e5a851fe4f`  
		Last Modified: Mon, 26 Oct 2026 23:36:30 GMT  
		Size: 597.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df797e9ada5a02da7c80432665b97608c59b5389356d6b3cad1e059932e27ec1`  
		Last Modified: Mon, 26 Oct 2026 23:36:31 GMT  
		Size: 877.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19.0-20261015` - unknown; unknown

```console
$ docker pull odoo@sha256:ca009c54f5569d31ef7bad191b9f4f1feafc3c5231a814c88da691993f077b47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.5 MB (52525875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3ffb8be89c274ae1040e4287f35b3061496826df8c903a56e63957a11ea96e7`

```dockerfile
```

-	Layers:
	-	`sha256:09452a1ae91e2fdae623737864ba46a229767b7aef26b086d9f0e3eeafb2e7e4`  
		Last Modified: Mon, 26 Oct 2026 23:36:31 GMT  
		Size: 52.5 MB (52498526 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8409dd31c72fbc058718323f0d7bb75821c810a1833dc2b9a8800dd141f78b52`  
		Last Modified: Mon, 26 Oct 2026 23:36:28 GMT  
		Size: 27.3 KB (27349 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:19.0-20261015` - linux; ppc64le

```console
$ docker pull odoo@sha256:c80d1093faaf83ea31ceb890e6e36bf2503011ffd269bc11231fd0316a608337
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **715.3 MB (715313673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c88eee2529294e9c5abb5b6e1bb37444a39b8ead26db55b03b972f51c7d706f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Sun, 25 Oct 2026 14:18:35 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:18:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:18:35 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:18:39 GMT
ADD file:ef742f6d40def62a9b4c0b916161e4ab04e1a6b83bc4e20803daa0d5ab2ea12b in / 
# Sun, 25 Oct 2026 14:18:39 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 05:55:56 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 27 Oct 2026 05:55:56 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 27 Oct 2026 05:55:56 GMT
ENV LANG=en_US.UTF-8
# Tue, 27 Oct 2026 05:55:56 GMT
ARG TARGETARCH=ppc64le
# Tue, 27 Oct 2026 05:55:56 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 27 Oct 2026 05:56:09 GMT
# ARGS: TARGETARCH=ppc64le
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 06:01:10 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 06:01:10 GMT
ENV ODOO_VERSION=19.0
# Tue, 27 Oct 2026 06:01:10 GMT
ARG ODOO_RELEASE=20261015
# Tue, 27 Oct 2026 06:01:10 GMT
ARG ODOO_SHA=3a2e406fa0399944a7c339baa5f53ca2e783e71b
# Tue, 27 Oct 2026 06:05:04 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261015 ODOO_SHA=3a2e406fa0399944a7c339baa5f53ca2e783e71b
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 27 Oct 2026 06:05:09 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 27 Oct 2026 06:05:11 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 27 Oct 2026 06:05:12 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261015 ODOO_SHA=3a2e406fa0399944a7c339baa5f53ca2e783e71b
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 27 Oct 2026 06:05:12 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 27 Oct 2026 06:05:12 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 27 Oct 2026 06:05:12 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 27 Oct 2026 06:05:13 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 27 Oct 2026 06:05:13 GMT
USER odoo
# Tue, 27 Oct 2026 06:05:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 27 Oct 2026 06:05:13 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:400d78a2b842f2bd938ae79326cc66475d11b949ac6b2acbfbc7709090964eb8`  
		Last Modified: Sun, 25 Oct 2026 14:50:25 GMT  
		Size: 34.4 MB (34378308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cb07ca625a772db26458b2100e990de7970ae698245407a6d13e7003c48bc59`  
		Last Modified: Tue, 27 Oct 2026 06:09:55 GMT  
		Size: 249.4 MB (249382979 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aabd25bbab2932cb4204323218d9bccfbe7ec58eb6eba38040d1202650d97529`  
		Last Modified: Tue, 27 Oct 2026 06:09:46 GMT  
		Size: 14.7 MB (14743656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94ccaa742254b2d26d544baf452833ebc5067eab0c78e3b4c76d5515b703a424`  
		Last Modified: Tue, 27 Oct 2026 06:09:45 GMT  
		Size: 875.1 KB (875064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e87c5c69febd02d2b7371dfdb1a32524aa2265f36eee3b8c8f96ea502d23038`  
		Last Modified: Tue, 27 Oct 2026 06:09:58 GMT  
		Size: 415.9 MB (415930915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb58d6440d3bd90769807becf6498311bbe060733424ecf7fb63134d4b011c9c`  
		Last Modified: Tue, 27 Oct 2026 06:09:46 GMT  
		Size: 716.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f1d7c555365c2cdaafd343264fc91fef6e0cd15950fb06851b850bcd90f9108`  
		Last Modified: Tue, 27 Oct 2026 06:09:47 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d2b61348542be259abfa724d9f0d17d42eac520bbe938fae2c9786ff2ecc3c2`  
		Last Modified: Tue, 27 Oct 2026 06:09:48 GMT  
		Size: 600.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67bf3357116a66ae7426de9000ac0eb7a2d72d82bc1a36138dc2be9fae3ca0d7`  
		Last Modified: Tue, 27 Oct 2026 06:09:49 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19.0-20261015` - unknown; unknown

```console
$ docker pull odoo@sha256:a1fa0878febc2a9695b11f796b392eba2cd870364b865d47354e311ffc4f9873
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.5 MB (52526871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56279fc99c9467beeebc1110e9842ce71d5b426635d65d976998b32182ea8b88`

```dockerfile
```

-	Layers:
	-	`sha256:678078671610dcbb88c1dfe0ba9336619f3f33a8c657b571e4c7552e5e9c6177`  
		Last Modified: Tue, 27 Oct 2026 06:09:49 GMT  
		Size: 52.5 MB (52499618 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:33d071ac67703e5e128baa3c17d9f26921347f30d7ff8a089543a2a7319c8e1f`  
		Last Modified: Tue, 27 Oct 2026 06:09:45 GMT  
		Size: 27.3 KB (27253 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:20`

```console
$ docker pull odoo@sha256:d5e3a26baa044867c826dddc09058f10e2582706bf83c146ea04fea889720c76
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
$ docker pull odoo@sha256:fc098344195314fde62c8922a19365b3112d638f37a4fbbcb3be457b845238fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **800.1 MB (800118257 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d9623991d2072de3db27f686a96d50a354882ec0aae584e566ece1c05296c43`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Sun, 25 Oct 2026 14:17:45 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:17:45 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:17:45 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:17:47 GMT
ADD file:eed88e94d6aa7c9da62836e137f889e03988c1a6b237b0cedb6ca666dfaa98ea in / 
# Sun, 25 Oct 2026 14:17:47 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:26:56 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Mon, 26 Oct 2026 23:26:56 GMT
SHELL [/bin/bash -xo pipefail -c]
# Mon, 26 Oct 2026 23:26:56 GMT
ENV LANG=en_US.UTF-8
# Mon, 26 Oct 2026 23:26:56 GMT
ARG TARGETARCH=amd64
# Mon, 26 Oct 2026 23:26:56 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Mon, 26 Oct 2026 23:27:04 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:28:15 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:28:15 GMT
ENV ODOO_VERSION=20.0
# Mon, 26 Oct 2026 23:28:15 GMT
ARG ODOO_RELEASE=20261015
# Mon, 26 Oct 2026 23:28:15 GMT
ARG ODOO_SHA=ae908bc0fa5e01d076a74a1008f07ad8869f819d
# Mon, 26 Oct 2026 23:30:07 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261015 ODOO_SHA=ae908bc0fa5e01d076a74a1008f07ad8869f819d
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Mon, 26 Oct 2026 23:30:07 GMT
COPY ./entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:30:07 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Mon, 26 Oct 2026 23:30:08 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261015 ODOO_SHA=ae908bc0fa5e01d076a74a1008f07ad8869f819d
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Mon, 26 Oct 2026 23:30:08 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Mon, 26 Oct 2026 23:30:08 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Mon, 26 Oct 2026 23:30:08 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Mon, 26 Oct 2026 23:30:08 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Mon, 26 Oct 2026 23:30:08 GMT
USER odoo
# Mon, 26 Oct 2026 23:30:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 26 Oct 2026 23:30:08 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8bb3a559d1624b8f65b64ab7f3bc2af18e5a9d1f1737458f1eaf739b23068cc`  
		Last Modified: Mon, 26 Oct 2026 23:31:57 GMT  
		Size: 238.7 MB (238714041 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9e0f9f7510657f089ebcffc5661a388b2235ba7d0ff79f60701c37b875fd910`  
		Last Modified: Mon, 26 Oct 2026 23:31:48 GMT  
		Size: 14.2 MB (14226201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41767d3301037aa51acdbc12daa6d30478f9038e08ca1bef309b315009664977`  
		Last Modified: Mon, 26 Oct 2026 23:31:47 GMT  
		Size: 873.9 KB (873909 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81616b36f7e2f22831edfaa7f723de0ccfe95352c9b0d81812faf92827b8378a`  
		Last Modified: Mon, 26 Oct 2026 23:32:03 GMT  
		Size: 516.5 MB (516533722 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c648105f377625928c695e143eb67221b5357adb450071954e04c65a247371b`  
		Last Modified: Mon, 26 Oct 2026 23:31:48 GMT  
		Size: 718.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d9a2c9c8c254d813a7981fe9322e6381cad173ab024c10d6709a51be0bc5649`  
		Last Modified: Mon, 26 Oct 2026 23:31:49 GMT  
		Size: 567.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b555ca5126c57db447ef0a3678bb07320d2f5f515bb6b8245bfa4975cc93e3e6`  
		Last Modified: Mon, 26 Oct 2026 23:31:50 GMT  
		Size: 610.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2ccc853fbc26651371039c74422e09266e1343e06b23b2a9c5322e28bf8f518`  
		Last Modified: Mon, 26 Oct 2026 23:31:51 GMT  
		Size: 877.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:20` - unknown; unknown

```console
$ docker pull odoo@sha256:85f7c956cc9c0ee427e521c92b034a6781422a62b28c42b1a8344634e7055639
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.1 MB (55095031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb2cff32e6db490187308373bdf35b67fbf1744b6c46b111115d0473cc5ab855`

```dockerfile
```

-	Layers:
	-	`sha256:07df2887836c375e09c32c429d6d9782df67e6092bf307f39606635ea08f8bc2`  
		Last Modified: Mon, 26 Oct 2026 23:31:50 GMT  
		Size: 55.1 MB (55067540 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:80e28ac8355c5e63d0ecea8d573b3587bba9359d086930bf86032d2ff07c0330`  
		Last Modified: Mon, 26 Oct 2026 23:31:47 GMT  
		Size: 27.5 KB (27491 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:20` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:653fac5525b49677f5e0899a6bbc049e6ae41f0824855a197e71e082753eae5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **796.6 MB (796568531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:badbb2ec44848789dde27f6c743144a562a8b65f9b222a67e8a3222d8ea3dcc3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Sun, 25 Oct 2026 14:18:00 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:18:00 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:18:00 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:18:03 GMT
ADD file:2c901e275b6c59fa9cf0fb689a9665247088dba23d45178d9aa52ec3263de265 in / 
# Sun, 25 Oct 2026 14:18:03 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:31:35 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Mon, 26 Oct 2026 23:31:35 GMT
SHELL [/bin/bash -xo pipefail -c]
# Mon, 26 Oct 2026 23:31:35 GMT
ENV LANG=en_US.UTF-8
# Mon, 26 Oct 2026 23:31:35 GMT
ARG TARGETARCH=arm64
# Mon, 26 Oct 2026 23:31:35 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Mon, 26 Oct 2026 23:31:43 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:32:46 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:32:46 GMT
ENV ODOO_VERSION=20.0
# Mon, 26 Oct 2026 23:32:46 GMT
ARG ODOO_RELEASE=20261015
# Mon, 26 Oct 2026 23:32:46 GMT
ARG ODOO_SHA=ae908bc0fa5e01d076a74a1008f07ad8869f819d
# Mon, 26 Oct 2026 23:34:44 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261015 ODOO_SHA=ae908bc0fa5e01d076a74a1008f07ad8869f819d
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Mon, 26 Oct 2026 23:34:45 GMT
COPY ./entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:34:45 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Mon, 26 Oct 2026 23:34:45 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261015 ODOO_SHA=ae908bc0fa5e01d076a74a1008f07ad8869f819d
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Mon, 26 Oct 2026 23:34:45 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Mon, 26 Oct 2026 23:34:45 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Mon, 26 Oct 2026 23:34:45 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Mon, 26 Oct 2026 23:34:45 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Mon, 26 Oct 2026 23:34:45 GMT
USER odoo
# Mon, 26 Oct 2026 23:34:45 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 26 Oct 2026 23:34:45 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:e2d2bb84d02254f4be480ca3c62f94fc12ac959c11b3ce5bd7da3f411b2b9607`  
		Last Modified: Sun, 25 Oct 2026 14:50:12 GMT  
		Size: 28.9 MB (28940126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac04db38643e824d99d61c96b43fc15d894c45f58cbc23eacaca92673fea2a44`  
		Last Modified: Mon, 26 Oct 2026 23:36:42 GMT  
		Size: 236.2 MB (236180884 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1bdaecdabd0a93ec139b966cd7ecef5c686a1a37f561b792422902d1454fa23`  
		Last Modified: Mon, 26 Oct 2026 23:36:34 GMT  
		Size: 14.2 MB (14197167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe5347ac08e927b023c00cb7d65ad537cb0148b45ed8f4eb785a51e61281083a`  
		Last Modified: Mon, 26 Oct 2026 23:36:33 GMT  
		Size: 873.9 KB (873903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbbef25b84bd1d585fbfaf3938f6904bd96d0fa9a5225a688c48d24b1289e5fe`  
		Last Modified: Mon, 26 Oct 2026 23:36:47 GMT  
		Size: 516.4 MB (516373682 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a55971661e52a233d0dde7adacbb1e7f963381e0f6f7e2fc73dcfbd9946b35dd`  
		Last Modified: Mon, 26 Oct 2026 23:36:34 GMT  
		Size: 719.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c9669607c9727bd7a297cfa70e42bb0362595bc2faf6cf9eb226f4cedaf4b03`  
		Last Modified: Mon, 26 Oct 2026 23:36:35 GMT  
		Size: 566.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8df487c2c846d093e32ab818920c07972bee2caea944a489b8c90fc8da07e34b`  
		Last Modified: Mon, 26 Oct 2026 23:36:36 GMT  
		Size: 607.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec9b2a1c7d9f96e3199915e89d2be31a885259bbdd1f51cc3a368061d99a059e`  
		Last Modified: Mon, 26 Oct 2026 23:36:37 GMT  
		Size: 877.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:20` - unknown; unknown

```console
$ docker pull odoo@sha256:41571f2c44ef8e75b66d6e2cee9310c2219f7fd50d6cc434fc63293cec3fa549
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.1 MB (55102479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:300670be10c9d6b442379f4652d990cd86e0e25bfbd7838cf875b008a4721604`

```dockerfile
```

-	Layers:
	-	`sha256:40c5beb7f45375a8ada589a7f5917c578152087d87d114e7d6c3be7bcfac4f7b`  
		Last Modified: Mon, 26 Oct 2026 23:36:36 GMT  
		Size: 55.1 MB (55074824 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:df79fccb830af4de4bf855f49e0d7e269f642f9bd2b2562f7fddb2caa1985dde`  
		Last Modified: Mon, 26 Oct 2026 23:36:33 GMT  
		Size: 27.7 KB (27655 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:20` - linux; ppc64le

```console
$ docker pull odoo@sha256:e532745788e385ad7c858ec7e146f56f30de9d061d308e021a57f98565466206
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **816.6 MB (816578826 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f14238435ef53e62a1c0a088d9437cc9cccdb6239910ecd02e4c3f579142aaa`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Sun, 25 Oct 2026 14:18:35 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:18:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:18:35 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:18:39 GMT
ADD file:ef742f6d40def62a9b4c0b916161e4ab04e1a6b83bc4e20803daa0d5ab2ea12b in / 
# Sun, 25 Oct 2026 14:18:39 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 05:55:56 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 27 Oct 2026 05:55:56 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 27 Oct 2026 05:55:56 GMT
ENV LANG=en_US.UTF-8
# Tue, 27 Oct 2026 05:55:56 GMT
ARG TARGETARCH=ppc64le
# Tue, 27 Oct 2026 05:55:56 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 27 Oct 2026 05:56:09 GMT
# ARGS: TARGETARCH=ppc64le
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 06:01:10 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 06:01:10 GMT
ENV ODOO_VERSION=20.0
# Tue, 27 Oct 2026 06:01:10 GMT
ARG ODOO_RELEASE=20261015
# Tue, 27 Oct 2026 06:01:10 GMT
ARG ODOO_SHA=ae908bc0fa5e01d076a74a1008f07ad8869f819d
# Tue, 27 Oct 2026 06:05:05 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261015 ODOO_SHA=ae908bc0fa5e01d076a74a1008f07ad8869f819d
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 27 Oct 2026 06:05:09 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 27 Oct 2026 06:05:11 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 27 Oct 2026 06:05:12 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261015 ODOO_SHA=ae908bc0fa5e01d076a74a1008f07ad8869f819d
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 27 Oct 2026 06:05:12 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 27 Oct 2026 06:05:12 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 27 Oct 2026 06:05:12 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 27 Oct 2026 06:05:13 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 27 Oct 2026 06:05:13 GMT
USER odoo
# Tue, 27 Oct 2026 06:05:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 27 Oct 2026 06:05:13 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:400d78a2b842f2bd938ae79326cc66475d11b949ac6b2acbfbc7709090964eb8`  
		Last Modified: Sun, 25 Oct 2026 14:50:25 GMT  
		Size: 34.4 MB (34378308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cb07ca625a772db26458b2100e990de7970ae698245407a6d13e7003c48bc59`  
		Last Modified: Tue, 27 Oct 2026 06:09:55 GMT  
		Size: 249.4 MB (249382979 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aabd25bbab2932cb4204323218d9bccfbe7ec58eb6eba38040d1202650d97529`  
		Last Modified: Tue, 27 Oct 2026 06:09:46 GMT  
		Size: 14.7 MB (14743656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94ccaa742254b2d26d544baf452833ebc5067eab0c78e3b4c76d5515b703a424`  
		Last Modified: Tue, 27 Oct 2026 06:09:45 GMT  
		Size: 875.1 KB (875064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ebdb98489900ef833a35dd944685f3ab3369cde6eb65e325ef255e406999adc`  
		Last Modified: Tue, 27 Oct 2026 06:10:50 GMT  
		Size: 517.2 MB (517196047 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb58d6440d3bd90769807becf6498311bbe060733424ecf7fb63134d4b011c9c`  
		Last Modified: Tue, 27 Oct 2026 06:09:46 GMT  
		Size: 716.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7da34e097f3a917d772497778164bd4a75f6083af28f84b8e5c8df8c669e99cb`  
		Last Modified: Tue, 27 Oct 2026 06:10:39 GMT  
		Size: 567.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee984e6ee848460eff47c7966330dc162590a558c5d52d0d577ec43dc593f23e`  
		Last Modified: Tue, 27 Oct 2026 06:10:39 GMT  
		Size: 610.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67bf3357116a66ae7426de9000ac0eb7a2d72d82bc1a36138dc2be9fae3ca0d7`  
		Last Modified: Tue, 27 Oct 2026 06:09:49 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:20` - unknown; unknown

```console
$ docker pull odoo@sha256:6ca173bce602c3725f67e3298faba520289d7078bcf37f576342c0cfff88d4f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.1 MB (55103463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5602732272a9e38233c1d82c7a93a29cd431c933ef6b7825ff3aa82162e7e3c`

```dockerfile
```

-	Layers:
	-	`sha256:a3046dd3a119e28b521df6f05a18540e37c08b3eeaa66a6d64fa30a9d4178d8e`  
		Last Modified: Tue, 27 Oct 2026 06:10:42 GMT  
		Size: 55.1 MB (55075910 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:50bc21d5ddb6b2973b425ddb0d9ba090848c144e31c58bc36d78b73db5aa31ea`  
		Last Modified: Tue, 27 Oct 2026 06:10:39 GMT  
		Size: 27.6 KB (27553 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:20.0`

```console
$ docker pull odoo@sha256:d5e3a26baa044867c826dddc09058f10e2582706bf83c146ea04fea889720c76
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
$ docker pull odoo@sha256:fc098344195314fde62c8922a19365b3112d638f37a4fbbcb3be457b845238fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **800.1 MB (800118257 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d9623991d2072de3db27f686a96d50a354882ec0aae584e566ece1c05296c43`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Sun, 25 Oct 2026 14:17:45 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:17:45 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:17:45 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:17:47 GMT
ADD file:eed88e94d6aa7c9da62836e137f889e03988c1a6b237b0cedb6ca666dfaa98ea in / 
# Sun, 25 Oct 2026 14:17:47 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:26:56 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Mon, 26 Oct 2026 23:26:56 GMT
SHELL [/bin/bash -xo pipefail -c]
# Mon, 26 Oct 2026 23:26:56 GMT
ENV LANG=en_US.UTF-8
# Mon, 26 Oct 2026 23:26:56 GMT
ARG TARGETARCH=amd64
# Mon, 26 Oct 2026 23:26:56 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Mon, 26 Oct 2026 23:27:04 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:28:15 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:28:15 GMT
ENV ODOO_VERSION=20.0
# Mon, 26 Oct 2026 23:28:15 GMT
ARG ODOO_RELEASE=20261015
# Mon, 26 Oct 2026 23:28:15 GMT
ARG ODOO_SHA=ae908bc0fa5e01d076a74a1008f07ad8869f819d
# Mon, 26 Oct 2026 23:30:07 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261015 ODOO_SHA=ae908bc0fa5e01d076a74a1008f07ad8869f819d
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Mon, 26 Oct 2026 23:30:07 GMT
COPY ./entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:30:07 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Mon, 26 Oct 2026 23:30:08 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261015 ODOO_SHA=ae908bc0fa5e01d076a74a1008f07ad8869f819d
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Mon, 26 Oct 2026 23:30:08 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Mon, 26 Oct 2026 23:30:08 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Mon, 26 Oct 2026 23:30:08 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Mon, 26 Oct 2026 23:30:08 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Mon, 26 Oct 2026 23:30:08 GMT
USER odoo
# Mon, 26 Oct 2026 23:30:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 26 Oct 2026 23:30:08 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8bb3a559d1624b8f65b64ab7f3bc2af18e5a9d1f1737458f1eaf739b23068cc`  
		Last Modified: Mon, 26 Oct 2026 23:31:57 GMT  
		Size: 238.7 MB (238714041 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9e0f9f7510657f089ebcffc5661a388b2235ba7d0ff79f60701c37b875fd910`  
		Last Modified: Mon, 26 Oct 2026 23:31:48 GMT  
		Size: 14.2 MB (14226201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41767d3301037aa51acdbc12daa6d30478f9038e08ca1bef309b315009664977`  
		Last Modified: Mon, 26 Oct 2026 23:31:47 GMT  
		Size: 873.9 KB (873909 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81616b36f7e2f22831edfaa7f723de0ccfe95352c9b0d81812faf92827b8378a`  
		Last Modified: Mon, 26 Oct 2026 23:32:03 GMT  
		Size: 516.5 MB (516533722 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c648105f377625928c695e143eb67221b5357adb450071954e04c65a247371b`  
		Last Modified: Mon, 26 Oct 2026 23:31:48 GMT  
		Size: 718.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d9a2c9c8c254d813a7981fe9322e6381cad173ab024c10d6709a51be0bc5649`  
		Last Modified: Mon, 26 Oct 2026 23:31:49 GMT  
		Size: 567.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b555ca5126c57db447ef0a3678bb07320d2f5f515bb6b8245bfa4975cc93e3e6`  
		Last Modified: Mon, 26 Oct 2026 23:31:50 GMT  
		Size: 610.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2ccc853fbc26651371039c74422e09266e1343e06b23b2a9c5322e28bf8f518`  
		Last Modified: Mon, 26 Oct 2026 23:31:51 GMT  
		Size: 877.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:20.0` - unknown; unknown

```console
$ docker pull odoo@sha256:85f7c956cc9c0ee427e521c92b034a6781422a62b28c42b1a8344634e7055639
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.1 MB (55095031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb2cff32e6db490187308373bdf35b67fbf1744b6c46b111115d0473cc5ab855`

```dockerfile
```

-	Layers:
	-	`sha256:07df2887836c375e09c32c429d6d9782df67e6092bf307f39606635ea08f8bc2`  
		Last Modified: Mon, 26 Oct 2026 23:31:50 GMT  
		Size: 55.1 MB (55067540 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:80e28ac8355c5e63d0ecea8d573b3587bba9359d086930bf86032d2ff07c0330`  
		Last Modified: Mon, 26 Oct 2026 23:31:47 GMT  
		Size: 27.5 KB (27491 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:20.0` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:653fac5525b49677f5e0899a6bbc049e6ae41f0824855a197e71e082753eae5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **796.6 MB (796568531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:badbb2ec44848789dde27f6c743144a562a8b65f9b222a67e8a3222d8ea3dcc3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Sun, 25 Oct 2026 14:18:00 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:18:00 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:18:00 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:18:03 GMT
ADD file:2c901e275b6c59fa9cf0fb689a9665247088dba23d45178d9aa52ec3263de265 in / 
# Sun, 25 Oct 2026 14:18:03 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:31:35 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Mon, 26 Oct 2026 23:31:35 GMT
SHELL [/bin/bash -xo pipefail -c]
# Mon, 26 Oct 2026 23:31:35 GMT
ENV LANG=en_US.UTF-8
# Mon, 26 Oct 2026 23:31:35 GMT
ARG TARGETARCH=arm64
# Mon, 26 Oct 2026 23:31:35 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Mon, 26 Oct 2026 23:31:43 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:32:46 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:32:46 GMT
ENV ODOO_VERSION=20.0
# Mon, 26 Oct 2026 23:32:46 GMT
ARG ODOO_RELEASE=20261015
# Mon, 26 Oct 2026 23:32:46 GMT
ARG ODOO_SHA=ae908bc0fa5e01d076a74a1008f07ad8869f819d
# Mon, 26 Oct 2026 23:34:44 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261015 ODOO_SHA=ae908bc0fa5e01d076a74a1008f07ad8869f819d
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Mon, 26 Oct 2026 23:34:45 GMT
COPY ./entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:34:45 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Mon, 26 Oct 2026 23:34:45 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261015 ODOO_SHA=ae908bc0fa5e01d076a74a1008f07ad8869f819d
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Mon, 26 Oct 2026 23:34:45 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Mon, 26 Oct 2026 23:34:45 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Mon, 26 Oct 2026 23:34:45 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Mon, 26 Oct 2026 23:34:45 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Mon, 26 Oct 2026 23:34:45 GMT
USER odoo
# Mon, 26 Oct 2026 23:34:45 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 26 Oct 2026 23:34:45 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:e2d2bb84d02254f4be480ca3c62f94fc12ac959c11b3ce5bd7da3f411b2b9607`  
		Last Modified: Sun, 25 Oct 2026 14:50:12 GMT  
		Size: 28.9 MB (28940126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac04db38643e824d99d61c96b43fc15d894c45f58cbc23eacaca92673fea2a44`  
		Last Modified: Mon, 26 Oct 2026 23:36:42 GMT  
		Size: 236.2 MB (236180884 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1bdaecdabd0a93ec139b966cd7ecef5c686a1a37f561b792422902d1454fa23`  
		Last Modified: Mon, 26 Oct 2026 23:36:34 GMT  
		Size: 14.2 MB (14197167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe5347ac08e927b023c00cb7d65ad537cb0148b45ed8f4eb785a51e61281083a`  
		Last Modified: Mon, 26 Oct 2026 23:36:33 GMT  
		Size: 873.9 KB (873903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbbef25b84bd1d585fbfaf3938f6904bd96d0fa9a5225a688c48d24b1289e5fe`  
		Last Modified: Mon, 26 Oct 2026 23:36:47 GMT  
		Size: 516.4 MB (516373682 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a55971661e52a233d0dde7adacbb1e7f963381e0f6f7e2fc73dcfbd9946b35dd`  
		Last Modified: Mon, 26 Oct 2026 23:36:34 GMT  
		Size: 719.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c9669607c9727bd7a297cfa70e42bb0362595bc2faf6cf9eb226f4cedaf4b03`  
		Last Modified: Mon, 26 Oct 2026 23:36:35 GMT  
		Size: 566.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8df487c2c846d093e32ab818920c07972bee2caea944a489b8c90fc8da07e34b`  
		Last Modified: Mon, 26 Oct 2026 23:36:36 GMT  
		Size: 607.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec9b2a1c7d9f96e3199915e89d2be31a885259bbdd1f51cc3a368061d99a059e`  
		Last Modified: Mon, 26 Oct 2026 23:36:37 GMT  
		Size: 877.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:20.0` - unknown; unknown

```console
$ docker pull odoo@sha256:41571f2c44ef8e75b66d6e2cee9310c2219f7fd50d6cc434fc63293cec3fa549
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.1 MB (55102479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:300670be10c9d6b442379f4652d990cd86e0e25bfbd7838cf875b008a4721604`

```dockerfile
```

-	Layers:
	-	`sha256:40c5beb7f45375a8ada589a7f5917c578152087d87d114e7d6c3be7bcfac4f7b`  
		Last Modified: Mon, 26 Oct 2026 23:36:36 GMT  
		Size: 55.1 MB (55074824 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:df79fccb830af4de4bf855f49e0d7e269f642f9bd2b2562f7fddb2caa1985dde`  
		Last Modified: Mon, 26 Oct 2026 23:36:33 GMT  
		Size: 27.7 KB (27655 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:20.0` - linux; ppc64le

```console
$ docker pull odoo@sha256:e532745788e385ad7c858ec7e146f56f30de9d061d308e021a57f98565466206
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **816.6 MB (816578826 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f14238435ef53e62a1c0a088d9437cc9cccdb6239910ecd02e4c3f579142aaa`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Sun, 25 Oct 2026 14:18:35 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:18:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:18:35 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:18:39 GMT
ADD file:ef742f6d40def62a9b4c0b916161e4ab04e1a6b83bc4e20803daa0d5ab2ea12b in / 
# Sun, 25 Oct 2026 14:18:39 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 05:55:56 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 27 Oct 2026 05:55:56 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 27 Oct 2026 05:55:56 GMT
ENV LANG=en_US.UTF-8
# Tue, 27 Oct 2026 05:55:56 GMT
ARG TARGETARCH=ppc64le
# Tue, 27 Oct 2026 05:55:56 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 27 Oct 2026 05:56:09 GMT
# ARGS: TARGETARCH=ppc64le
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 06:01:10 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 06:01:10 GMT
ENV ODOO_VERSION=20.0
# Tue, 27 Oct 2026 06:01:10 GMT
ARG ODOO_RELEASE=20261015
# Tue, 27 Oct 2026 06:01:10 GMT
ARG ODOO_SHA=ae908bc0fa5e01d076a74a1008f07ad8869f819d
# Tue, 27 Oct 2026 06:05:05 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261015 ODOO_SHA=ae908bc0fa5e01d076a74a1008f07ad8869f819d
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 27 Oct 2026 06:05:09 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 27 Oct 2026 06:05:11 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 27 Oct 2026 06:05:12 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261015 ODOO_SHA=ae908bc0fa5e01d076a74a1008f07ad8869f819d
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 27 Oct 2026 06:05:12 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 27 Oct 2026 06:05:12 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 27 Oct 2026 06:05:12 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 27 Oct 2026 06:05:13 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 27 Oct 2026 06:05:13 GMT
USER odoo
# Tue, 27 Oct 2026 06:05:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 27 Oct 2026 06:05:13 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:400d78a2b842f2bd938ae79326cc66475d11b949ac6b2acbfbc7709090964eb8`  
		Last Modified: Sun, 25 Oct 2026 14:50:25 GMT  
		Size: 34.4 MB (34378308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cb07ca625a772db26458b2100e990de7970ae698245407a6d13e7003c48bc59`  
		Last Modified: Tue, 27 Oct 2026 06:09:55 GMT  
		Size: 249.4 MB (249382979 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aabd25bbab2932cb4204323218d9bccfbe7ec58eb6eba38040d1202650d97529`  
		Last Modified: Tue, 27 Oct 2026 06:09:46 GMT  
		Size: 14.7 MB (14743656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94ccaa742254b2d26d544baf452833ebc5067eab0c78e3b4c76d5515b703a424`  
		Last Modified: Tue, 27 Oct 2026 06:09:45 GMT  
		Size: 875.1 KB (875064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ebdb98489900ef833a35dd944685f3ab3369cde6eb65e325ef255e406999adc`  
		Last Modified: Tue, 27 Oct 2026 06:10:50 GMT  
		Size: 517.2 MB (517196047 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb58d6440d3bd90769807becf6498311bbe060733424ecf7fb63134d4b011c9c`  
		Last Modified: Tue, 27 Oct 2026 06:09:46 GMT  
		Size: 716.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7da34e097f3a917d772497778164bd4a75f6083af28f84b8e5c8df8c669e99cb`  
		Last Modified: Tue, 27 Oct 2026 06:10:39 GMT  
		Size: 567.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee984e6ee848460eff47c7966330dc162590a558c5d52d0d577ec43dc593f23e`  
		Last Modified: Tue, 27 Oct 2026 06:10:39 GMT  
		Size: 610.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67bf3357116a66ae7426de9000ac0eb7a2d72d82bc1a36138dc2be9fae3ca0d7`  
		Last Modified: Tue, 27 Oct 2026 06:09:49 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:20.0` - unknown; unknown

```console
$ docker pull odoo@sha256:6ca173bce602c3725f67e3298faba520289d7078bcf37f576342c0cfff88d4f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.1 MB (55103463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5602732272a9e38233c1d82c7a93a29cd431c933ef6b7825ff3aa82162e7e3c`

```dockerfile
```

-	Layers:
	-	`sha256:a3046dd3a119e28b521df6f05a18540e37c08b3eeaa66a6d64fa30a9d4178d8e`  
		Last Modified: Tue, 27 Oct 2026 06:10:42 GMT  
		Size: 55.1 MB (55075910 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:50bc21d5ddb6b2973b425ddb0d9ba090848c144e31c58bc36d78b73db5aa31ea`  
		Last Modified: Tue, 27 Oct 2026 06:10:39 GMT  
		Size: 27.6 KB (27553 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:20.0-20261015`

```console
$ docker pull odoo@sha256:d5e3a26baa044867c826dddc09058f10e2582706bf83c146ea04fea889720c76
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
$ docker pull odoo@sha256:fc098344195314fde62c8922a19365b3112d638f37a4fbbcb3be457b845238fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **800.1 MB (800118257 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d9623991d2072de3db27f686a96d50a354882ec0aae584e566ece1c05296c43`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Sun, 25 Oct 2026 14:17:45 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:17:45 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:17:45 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:17:47 GMT
ADD file:eed88e94d6aa7c9da62836e137f889e03988c1a6b237b0cedb6ca666dfaa98ea in / 
# Sun, 25 Oct 2026 14:17:47 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:26:56 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Mon, 26 Oct 2026 23:26:56 GMT
SHELL [/bin/bash -xo pipefail -c]
# Mon, 26 Oct 2026 23:26:56 GMT
ENV LANG=en_US.UTF-8
# Mon, 26 Oct 2026 23:26:56 GMT
ARG TARGETARCH=amd64
# Mon, 26 Oct 2026 23:26:56 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Mon, 26 Oct 2026 23:27:04 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:28:15 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:28:15 GMT
ENV ODOO_VERSION=20.0
# Mon, 26 Oct 2026 23:28:15 GMT
ARG ODOO_RELEASE=20261015
# Mon, 26 Oct 2026 23:28:15 GMT
ARG ODOO_SHA=ae908bc0fa5e01d076a74a1008f07ad8869f819d
# Mon, 26 Oct 2026 23:30:07 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261015 ODOO_SHA=ae908bc0fa5e01d076a74a1008f07ad8869f819d
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Mon, 26 Oct 2026 23:30:07 GMT
COPY ./entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:30:07 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Mon, 26 Oct 2026 23:30:08 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261015 ODOO_SHA=ae908bc0fa5e01d076a74a1008f07ad8869f819d
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Mon, 26 Oct 2026 23:30:08 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Mon, 26 Oct 2026 23:30:08 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Mon, 26 Oct 2026 23:30:08 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Mon, 26 Oct 2026 23:30:08 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Mon, 26 Oct 2026 23:30:08 GMT
USER odoo
# Mon, 26 Oct 2026 23:30:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 26 Oct 2026 23:30:08 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8bb3a559d1624b8f65b64ab7f3bc2af18e5a9d1f1737458f1eaf739b23068cc`  
		Last Modified: Mon, 26 Oct 2026 23:31:57 GMT  
		Size: 238.7 MB (238714041 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9e0f9f7510657f089ebcffc5661a388b2235ba7d0ff79f60701c37b875fd910`  
		Last Modified: Mon, 26 Oct 2026 23:31:48 GMT  
		Size: 14.2 MB (14226201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41767d3301037aa51acdbc12daa6d30478f9038e08ca1bef309b315009664977`  
		Last Modified: Mon, 26 Oct 2026 23:31:47 GMT  
		Size: 873.9 KB (873909 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81616b36f7e2f22831edfaa7f723de0ccfe95352c9b0d81812faf92827b8378a`  
		Last Modified: Mon, 26 Oct 2026 23:32:03 GMT  
		Size: 516.5 MB (516533722 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c648105f377625928c695e143eb67221b5357adb450071954e04c65a247371b`  
		Last Modified: Mon, 26 Oct 2026 23:31:48 GMT  
		Size: 718.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d9a2c9c8c254d813a7981fe9322e6381cad173ab024c10d6709a51be0bc5649`  
		Last Modified: Mon, 26 Oct 2026 23:31:49 GMT  
		Size: 567.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b555ca5126c57db447ef0a3678bb07320d2f5f515bb6b8245bfa4975cc93e3e6`  
		Last Modified: Mon, 26 Oct 2026 23:31:50 GMT  
		Size: 610.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2ccc853fbc26651371039c74422e09266e1343e06b23b2a9c5322e28bf8f518`  
		Last Modified: Mon, 26 Oct 2026 23:31:51 GMT  
		Size: 877.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:20.0-20261015` - unknown; unknown

```console
$ docker pull odoo@sha256:85f7c956cc9c0ee427e521c92b034a6781422a62b28c42b1a8344634e7055639
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.1 MB (55095031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb2cff32e6db490187308373bdf35b67fbf1744b6c46b111115d0473cc5ab855`

```dockerfile
```

-	Layers:
	-	`sha256:07df2887836c375e09c32c429d6d9782df67e6092bf307f39606635ea08f8bc2`  
		Last Modified: Mon, 26 Oct 2026 23:31:50 GMT  
		Size: 55.1 MB (55067540 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:80e28ac8355c5e63d0ecea8d573b3587bba9359d086930bf86032d2ff07c0330`  
		Last Modified: Mon, 26 Oct 2026 23:31:47 GMT  
		Size: 27.5 KB (27491 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:20.0-20261015` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:653fac5525b49677f5e0899a6bbc049e6ae41f0824855a197e71e082753eae5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **796.6 MB (796568531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:badbb2ec44848789dde27f6c743144a562a8b65f9b222a67e8a3222d8ea3dcc3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Sun, 25 Oct 2026 14:18:00 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:18:00 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:18:00 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:18:03 GMT
ADD file:2c901e275b6c59fa9cf0fb689a9665247088dba23d45178d9aa52ec3263de265 in / 
# Sun, 25 Oct 2026 14:18:03 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:31:35 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Mon, 26 Oct 2026 23:31:35 GMT
SHELL [/bin/bash -xo pipefail -c]
# Mon, 26 Oct 2026 23:31:35 GMT
ENV LANG=en_US.UTF-8
# Mon, 26 Oct 2026 23:31:35 GMT
ARG TARGETARCH=arm64
# Mon, 26 Oct 2026 23:31:35 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Mon, 26 Oct 2026 23:31:43 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:32:46 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:32:46 GMT
ENV ODOO_VERSION=20.0
# Mon, 26 Oct 2026 23:32:46 GMT
ARG ODOO_RELEASE=20261015
# Mon, 26 Oct 2026 23:32:46 GMT
ARG ODOO_SHA=ae908bc0fa5e01d076a74a1008f07ad8869f819d
# Mon, 26 Oct 2026 23:34:44 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261015 ODOO_SHA=ae908bc0fa5e01d076a74a1008f07ad8869f819d
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Mon, 26 Oct 2026 23:34:45 GMT
COPY ./entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:34:45 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Mon, 26 Oct 2026 23:34:45 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261015 ODOO_SHA=ae908bc0fa5e01d076a74a1008f07ad8869f819d
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Mon, 26 Oct 2026 23:34:45 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Mon, 26 Oct 2026 23:34:45 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Mon, 26 Oct 2026 23:34:45 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Mon, 26 Oct 2026 23:34:45 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Mon, 26 Oct 2026 23:34:45 GMT
USER odoo
# Mon, 26 Oct 2026 23:34:45 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 26 Oct 2026 23:34:45 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:e2d2bb84d02254f4be480ca3c62f94fc12ac959c11b3ce5bd7da3f411b2b9607`  
		Last Modified: Sun, 25 Oct 2026 14:50:12 GMT  
		Size: 28.9 MB (28940126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac04db38643e824d99d61c96b43fc15d894c45f58cbc23eacaca92673fea2a44`  
		Last Modified: Mon, 26 Oct 2026 23:36:42 GMT  
		Size: 236.2 MB (236180884 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1bdaecdabd0a93ec139b966cd7ecef5c686a1a37f561b792422902d1454fa23`  
		Last Modified: Mon, 26 Oct 2026 23:36:34 GMT  
		Size: 14.2 MB (14197167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe5347ac08e927b023c00cb7d65ad537cb0148b45ed8f4eb785a51e61281083a`  
		Last Modified: Mon, 26 Oct 2026 23:36:33 GMT  
		Size: 873.9 KB (873903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbbef25b84bd1d585fbfaf3938f6904bd96d0fa9a5225a688c48d24b1289e5fe`  
		Last Modified: Mon, 26 Oct 2026 23:36:47 GMT  
		Size: 516.4 MB (516373682 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a55971661e52a233d0dde7adacbb1e7f963381e0f6f7e2fc73dcfbd9946b35dd`  
		Last Modified: Mon, 26 Oct 2026 23:36:34 GMT  
		Size: 719.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c9669607c9727bd7a297cfa70e42bb0362595bc2faf6cf9eb226f4cedaf4b03`  
		Last Modified: Mon, 26 Oct 2026 23:36:35 GMT  
		Size: 566.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8df487c2c846d093e32ab818920c07972bee2caea944a489b8c90fc8da07e34b`  
		Last Modified: Mon, 26 Oct 2026 23:36:36 GMT  
		Size: 607.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec9b2a1c7d9f96e3199915e89d2be31a885259bbdd1f51cc3a368061d99a059e`  
		Last Modified: Mon, 26 Oct 2026 23:36:37 GMT  
		Size: 877.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:20.0-20261015` - unknown; unknown

```console
$ docker pull odoo@sha256:41571f2c44ef8e75b66d6e2cee9310c2219f7fd50d6cc434fc63293cec3fa549
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.1 MB (55102479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:300670be10c9d6b442379f4652d990cd86e0e25bfbd7838cf875b008a4721604`

```dockerfile
```

-	Layers:
	-	`sha256:40c5beb7f45375a8ada589a7f5917c578152087d87d114e7d6c3be7bcfac4f7b`  
		Last Modified: Mon, 26 Oct 2026 23:36:36 GMT  
		Size: 55.1 MB (55074824 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:df79fccb830af4de4bf855f49e0d7e269f642f9bd2b2562f7fddb2caa1985dde`  
		Last Modified: Mon, 26 Oct 2026 23:36:33 GMT  
		Size: 27.7 KB (27655 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:20.0-20261015` - linux; ppc64le

```console
$ docker pull odoo@sha256:e532745788e385ad7c858ec7e146f56f30de9d061d308e021a57f98565466206
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **816.6 MB (816578826 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f14238435ef53e62a1c0a088d9437cc9cccdb6239910ecd02e4c3f579142aaa`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Sun, 25 Oct 2026 14:18:35 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:18:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:18:35 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:18:39 GMT
ADD file:ef742f6d40def62a9b4c0b916161e4ab04e1a6b83bc4e20803daa0d5ab2ea12b in / 
# Sun, 25 Oct 2026 14:18:39 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 05:55:56 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 27 Oct 2026 05:55:56 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 27 Oct 2026 05:55:56 GMT
ENV LANG=en_US.UTF-8
# Tue, 27 Oct 2026 05:55:56 GMT
ARG TARGETARCH=ppc64le
# Tue, 27 Oct 2026 05:55:56 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 27 Oct 2026 05:56:09 GMT
# ARGS: TARGETARCH=ppc64le
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 06:01:10 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 06:01:10 GMT
ENV ODOO_VERSION=20.0
# Tue, 27 Oct 2026 06:01:10 GMT
ARG ODOO_RELEASE=20261015
# Tue, 27 Oct 2026 06:01:10 GMT
ARG ODOO_SHA=ae908bc0fa5e01d076a74a1008f07ad8869f819d
# Tue, 27 Oct 2026 06:05:05 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261015 ODOO_SHA=ae908bc0fa5e01d076a74a1008f07ad8869f819d
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 27 Oct 2026 06:05:09 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 27 Oct 2026 06:05:11 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 27 Oct 2026 06:05:12 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261015 ODOO_SHA=ae908bc0fa5e01d076a74a1008f07ad8869f819d
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 27 Oct 2026 06:05:12 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 27 Oct 2026 06:05:12 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 27 Oct 2026 06:05:12 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 27 Oct 2026 06:05:13 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 27 Oct 2026 06:05:13 GMT
USER odoo
# Tue, 27 Oct 2026 06:05:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 27 Oct 2026 06:05:13 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:400d78a2b842f2bd938ae79326cc66475d11b949ac6b2acbfbc7709090964eb8`  
		Last Modified: Sun, 25 Oct 2026 14:50:25 GMT  
		Size: 34.4 MB (34378308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cb07ca625a772db26458b2100e990de7970ae698245407a6d13e7003c48bc59`  
		Last Modified: Tue, 27 Oct 2026 06:09:55 GMT  
		Size: 249.4 MB (249382979 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aabd25bbab2932cb4204323218d9bccfbe7ec58eb6eba38040d1202650d97529`  
		Last Modified: Tue, 27 Oct 2026 06:09:46 GMT  
		Size: 14.7 MB (14743656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94ccaa742254b2d26d544baf452833ebc5067eab0c78e3b4c76d5515b703a424`  
		Last Modified: Tue, 27 Oct 2026 06:09:45 GMT  
		Size: 875.1 KB (875064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ebdb98489900ef833a35dd944685f3ab3369cde6eb65e325ef255e406999adc`  
		Last Modified: Tue, 27 Oct 2026 06:10:50 GMT  
		Size: 517.2 MB (517196047 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb58d6440d3bd90769807becf6498311bbe060733424ecf7fb63134d4b011c9c`  
		Last Modified: Tue, 27 Oct 2026 06:09:46 GMT  
		Size: 716.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7da34e097f3a917d772497778164bd4a75f6083af28f84b8e5c8df8c669e99cb`  
		Last Modified: Tue, 27 Oct 2026 06:10:39 GMT  
		Size: 567.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee984e6ee848460eff47c7966330dc162590a558c5d52d0d577ec43dc593f23e`  
		Last Modified: Tue, 27 Oct 2026 06:10:39 GMT  
		Size: 610.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67bf3357116a66ae7426de9000ac0eb7a2d72d82bc1a36138dc2be9fae3ca0d7`  
		Last Modified: Tue, 27 Oct 2026 06:09:49 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:20.0-20261015` - unknown; unknown

```console
$ docker pull odoo@sha256:6ca173bce602c3725f67e3298faba520289d7078bcf37f576342c0cfff88d4f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.1 MB (55103463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5602732272a9e38233c1d82c7a93a29cd431c933ef6b7825ff3aa82162e7e3c`

```dockerfile
```

-	Layers:
	-	`sha256:a3046dd3a119e28b521df6f05a18540e37c08b3eeaa66a6d64fa30a9d4178d8e`  
		Last Modified: Tue, 27 Oct 2026 06:10:42 GMT  
		Size: 55.1 MB (55075910 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:50bc21d5ddb6b2973b425ddb0d9ba090848c144e31c58bc36d78b73db5aa31ea`  
		Last Modified: Tue, 27 Oct 2026 06:10:39 GMT  
		Size: 27.6 KB (27553 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:latest`

```console
$ docker pull odoo@sha256:d5e3a26baa044867c826dddc09058f10e2582706bf83c146ea04fea889720c76
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
$ docker pull odoo@sha256:fc098344195314fde62c8922a19365b3112d638f37a4fbbcb3be457b845238fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **800.1 MB (800118257 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d9623991d2072de3db27f686a96d50a354882ec0aae584e566ece1c05296c43`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Sun, 25 Oct 2026 14:17:45 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:17:45 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:17:45 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:17:47 GMT
ADD file:eed88e94d6aa7c9da62836e137f889e03988c1a6b237b0cedb6ca666dfaa98ea in / 
# Sun, 25 Oct 2026 14:17:47 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:26:56 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Mon, 26 Oct 2026 23:26:56 GMT
SHELL [/bin/bash -xo pipefail -c]
# Mon, 26 Oct 2026 23:26:56 GMT
ENV LANG=en_US.UTF-8
# Mon, 26 Oct 2026 23:26:56 GMT
ARG TARGETARCH=amd64
# Mon, 26 Oct 2026 23:26:56 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Mon, 26 Oct 2026 23:27:04 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:28:15 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:28:15 GMT
ENV ODOO_VERSION=20.0
# Mon, 26 Oct 2026 23:28:15 GMT
ARG ODOO_RELEASE=20261015
# Mon, 26 Oct 2026 23:28:15 GMT
ARG ODOO_SHA=ae908bc0fa5e01d076a74a1008f07ad8869f819d
# Mon, 26 Oct 2026 23:30:07 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261015 ODOO_SHA=ae908bc0fa5e01d076a74a1008f07ad8869f819d
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Mon, 26 Oct 2026 23:30:07 GMT
COPY ./entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:30:07 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Mon, 26 Oct 2026 23:30:08 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261015 ODOO_SHA=ae908bc0fa5e01d076a74a1008f07ad8869f819d
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Mon, 26 Oct 2026 23:30:08 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Mon, 26 Oct 2026 23:30:08 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Mon, 26 Oct 2026 23:30:08 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Mon, 26 Oct 2026 23:30:08 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Mon, 26 Oct 2026 23:30:08 GMT
USER odoo
# Mon, 26 Oct 2026 23:30:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 26 Oct 2026 23:30:08 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8bb3a559d1624b8f65b64ab7f3bc2af18e5a9d1f1737458f1eaf739b23068cc`  
		Last Modified: Mon, 26 Oct 2026 23:31:57 GMT  
		Size: 238.7 MB (238714041 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9e0f9f7510657f089ebcffc5661a388b2235ba7d0ff79f60701c37b875fd910`  
		Last Modified: Mon, 26 Oct 2026 23:31:48 GMT  
		Size: 14.2 MB (14226201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41767d3301037aa51acdbc12daa6d30478f9038e08ca1bef309b315009664977`  
		Last Modified: Mon, 26 Oct 2026 23:31:47 GMT  
		Size: 873.9 KB (873909 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81616b36f7e2f22831edfaa7f723de0ccfe95352c9b0d81812faf92827b8378a`  
		Last Modified: Mon, 26 Oct 2026 23:32:03 GMT  
		Size: 516.5 MB (516533722 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c648105f377625928c695e143eb67221b5357adb450071954e04c65a247371b`  
		Last Modified: Mon, 26 Oct 2026 23:31:48 GMT  
		Size: 718.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d9a2c9c8c254d813a7981fe9322e6381cad173ab024c10d6709a51be0bc5649`  
		Last Modified: Mon, 26 Oct 2026 23:31:49 GMT  
		Size: 567.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b555ca5126c57db447ef0a3678bb07320d2f5f515bb6b8245bfa4975cc93e3e6`  
		Last Modified: Mon, 26 Oct 2026 23:31:50 GMT  
		Size: 610.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2ccc853fbc26651371039c74422e09266e1343e06b23b2a9c5322e28bf8f518`  
		Last Modified: Mon, 26 Oct 2026 23:31:51 GMT  
		Size: 877.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:latest` - unknown; unknown

```console
$ docker pull odoo@sha256:85f7c956cc9c0ee427e521c92b034a6781422a62b28c42b1a8344634e7055639
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.1 MB (55095031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb2cff32e6db490187308373bdf35b67fbf1744b6c46b111115d0473cc5ab855`

```dockerfile
```

-	Layers:
	-	`sha256:07df2887836c375e09c32c429d6d9782df67e6092bf307f39606635ea08f8bc2`  
		Last Modified: Mon, 26 Oct 2026 23:31:50 GMT  
		Size: 55.1 MB (55067540 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:80e28ac8355c5e63d0ecea8d573b3587bba9359d086930bf86032d2ff07c0330`  
		Last Modified: Mon, 26 Oct 2026 23:31:47 GMT  
		Size: 27.5 KB (27491 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:latest` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:653fac5525b49677f5e0899a6bbc049e6ae41f0824855a197e71e082753eae5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **796.6 MB (796568531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:badbb2ec44848789dde27f6c743144a562a8b65f9b222a67e8a3222d8ea3dcc3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Sun, 25 Oct 2026 14:18:00 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:18:00 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:18:00 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:18:03 GMT
ADD file:2c901e275b6c59fa9cf0fb689a9665247088dba23d45178d9aa52ec3263de265 in / 
# Sun, 25 Oct 2026 14:18:03 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:31:35 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Mon, 26 Oct 2026 23:31:35 GMT
SHELL [/bin/bash -xo pipefail -c]
# Mon, 26 Oct 2026 23:31:35 GMT
ENV LANG=en_US.UTF-8
# Mon, 26 Oct 2026 23:31:35 GMT
ARG TARGETARCH=arm64
# Mon, 26 Oct 2026 23:31:35 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Mon, 26 Oct 2026 23:31:43 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:32:46 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:32:46 GMT
ENV ODOO_VERSION=20.0
# Mon, 26 Oct 2026 23:32:46 GMT
ARG ODOO_RELEASE=20261015
# Mon, 26 Oct 2026 23:32:46 GMT
ARG ODOO_SHA=ae908bc0fa5e01d076a74a1008f07ad8869f819d
# Mon, 26 Oct 2026 23:34:44 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261015 ODOO_SHA=ae908bc0fa5e01d076a74a1008f07ad8869f819d
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Mon, 26 Oct 2026 23:34:45 GMT
COPY ./entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:34:45 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Mon, 26 Oct 2026 23:34:45 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261015 ODOO_SHA=ae908bc0fa5e01d076a74a1008f07ad8869f819d
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Mon, 26 Oct 2026 23:34:45 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Mon, 26 Oct 2026 23:34:45 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Mon, 26 Oct 2026 23:34:45 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Mon, 26 Oct 2026 23:34:45 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Mon, 26 Oct 2026 23:34:45 GMT
USER odoo
# Mon, 26 Oct 2026 23:34:45 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 26 Oct 2026 23:34:45 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:e2d2bb84d02254f4be480ca3c62f94fc12ac959c11b3ce5bd7da3f411b2b9607`  
		Last Modified: Sun, 25 Oct 2026 14:50:12 GMT  
		Size: 28.9 MB (28940126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac04db38643e824d99d61c96b43fc15d894c45f58cbc23eacaca92673fea2a44`  
		Last Modified: Mon, 26 Oct 2026 23:36:42 GMT  
		Size: 236.2 MB (236180884 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1bdaecdabd0a93ec139b966cd7ecef5c686a1a37f561b792422902d1454fa23`  
		Last Modified: Mon, 26 Oct 2026 23:36:34 GMT  
		Size: 14.2 MB (14197167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe5347ac08e927b023c00cb7d65ad537cb0148b45ed8f4eb785a51e61281083a`  
		Last Modified: Mon, 26 Oct 2026 23:36:33 GMT  
		Size: 873.9 KB (873903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbbef25b84bd1d585fbfaf3938f6904bd96d0fa9a5225a688c48d24b1289e5fe`  
		Last Modified: Mon, 26 Oct 2026 23:36:47 GMT  
		Size: 516.4 MB (516373682 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a55971661e52a233d0dde7adacbb1e7f963381e0f6f7e2fc73dcfbd9946b35dd`  
		Last Modified: Mon, 26 Oct 2026 23:36:34 GMT  
		Size: 719.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c9669607c9727bd7a297cfa70e42bb0362595bc2faf6cf9eb226f4cedaf4b03`  
		Last Modified: Mon, 26 Oct 2026 23:36:35 GMT  
		Size: 566.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8df487c2c846d093e32ab818920c07972bee2caea944a489b8c90fc8da07e34b`  
		Last Modified: Mon, 26 Oct 2026 23:36:36 GMT  
		Size: 607.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec9b2a1c7d9f96e3199915e89d2be31a885259bbdd1f51cc3a368061d99a059e`  
		Last Modified: Mon, 26 Oct 2026 23:36:37 GMT  
		Size: 877.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:latest` - unknown; unknown

```console
$ docker pull odoo@sha256:41571f2c44ef8e75b66d6e2cee9310c2219f7fd50d6cc434fc63293cec3fa549
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.1 MB (55102479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:300670be10c9d6b442379f4652d990cd86e0e25bfbd7838cf875b008a4721604`

```dockerfile
```

-	Layers:
	-	`sha256:40c5beb7f45375a8ada589a7f5917c578152087d87d114e7d6c3be7bcfac4f7b`  
		Last Modified: Mon, 26 Oct 2026 23:36:36 GMT  
		Size: 55.1 MB (55074824 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:df79fccb830af4de4bf855f49e0d7e269f642f9bd2b2562f7fddb2caa1985dde`  
		Last Modified: Mon, 26 Oct 2026 23:36:33 GMT  
		Size: 27.7 KB (27655 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:latest` - linux; ppc64le

```console
$ docker pull odoo@sha256:e532745788e385ad7c858ec7e146f56f30de9d061d308e021a57f98565466206
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **816.6 MB (816578826 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f14238435ef53e62a1c0a088d9437cc9cccdb6239910ecd02e4c3f579142aaa`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Sun, 25 Oct 2026 14:18:35 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:18:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:18:35 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:18:39 GMT
ADD file:ef742f6d40def62a9b4c0b916161e4ab04e1a6b83bc4e20803daa0d5ab2ea12b in / 
# Sun, 25 Oct 2026 14:18:39 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 05:55:56 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 27 Oct 2026 05:55:56 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 27 Oct 2026 05:55:56 GMT
ENV LANG=en_US.UTF-8
# Tue, 27 Oct 2026 05:55:56 GMT
ARG TARGETARCH=ppc64le
# Tue, 27 Oct 2026 05:55:56 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 27 Oct 2026 05:56:09 GMT
# ARGS: TARGETARCH=ppc64le
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 06:01:10 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 06:01:10 GMT
ENV ODOO_VERSION=20.0
# Tue, 27 Oct 2026 06:01:10 GMT
ARG ODOO_RELEASE=20261015
# Tue, 27 Oct 2026 06:01:10 GMT
ARG ODOO_SHA=ae908bc0fa5e01d076a74a1008f07ad8869f819d
# Tue, 27 Oct 2026 06:05:05 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261015 ODOO_SHA=ae908bc0fa5e01d076a74a1008f07ad8869f819d
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 27 Oct 2026 06:05:09 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 27 Oct 2026 06:05:11 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 27 Oct 2026 06:05:12 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261015 ODOO_SHA=ae908bc0fa5e01d076a74a1008f07ad8869f819d
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 27 Oct 2026 06:05:12 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 27 Oct 2026 06:05:12 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 27 Oct 2026 06:05:12 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 27 Oct 2026 06:05:13 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 27 Oct 2026 06:05:13 GMT
USER odoo
# Tue, 27 Oct 2026 06:05:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 27 Oct 2026 06:05:13 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:400d78a2b842f2bd938ae79326cc66475d11b949ac6b2acbfbc7709090964eb8`  
		Last Modified: Sun, 25 Oct 2026 14:50:25 GMT  
		Size: 34.4 MB (34378308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cb07ca625a772db26458b2100e990de7970ae698245407a6d13e7003c48bc59`  
		Last Modified: Tue, 27 Oct 2026 06:09:55 GMT  
		Size: 249.4 MB (249382979 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aabd25bbab2932cb4204323218d9bccfbe7ec58eb6eba38040d1202650d97529`  
		Last Modified: Tue, 27 Oct 2026 06:09:46 GMT  
		Size: 14.7 MB (14743656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94ccaa742254b2d26d544baf452833ebc5067eab0c78e3b4c76d5515b703a424`  
		Last Modified: Tue, 27 Oct 2026 06:09:45 GMT  
		Size: 875.1 KB (875064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ebdb98489900ef833a35dd944685f3ab3369cde6eb65e325ef255e406999adc`  
		Last Modified: Tue, 27 Oct 2026 06:10:50 GMT  
		Size: 517.2 MB (517196047 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb58d6440d3bd90769807becf6498311bbe060733424ecf7fb63134d4b011c9c`  
		Last Modified: Tue, 27 Oct 2026 06:09:46 GMT  
		Size: 716.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7da34e097f3a917d772497778164bd4a75f6083af28f84b8e5c8df8c669e99cb`  
		Last Modified: Tue, 27 Oct 2026 06:10:39 GMT  
		Size: 567.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee984e6ee848460eff47c7966330dc162590a558c5d52d0d577ec43dc593f23e`  
		Last Modified: Tue, 27 Oct 2026 06:10:39 GMT  
		Size: 610.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67bf3357116a66ae7426de9000ac0eb7a2d72d82bc1a36138dc2be9fae3ca0d7`  
		Last Modified: Tue, 27 Oct 2026 06:09:49 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:latest` - unknown; unknown

```console
$ docker pull odoo@sha256:6ca173bce602c3725f67e3298faba520289d7078bcf37f576342c0cfff88d4f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.1 MB (55103463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5602732272a9e38233c1d82c7a93a29cd431c933ef6b7825ff3aa82162e7e3c`

```dockerfile
```

-	Layers:
	-	`sha256:a3046dd3a119e28b521df6f05a18540e37c08b3eeaa66a6d64fa30a9d4178d8e`  
		Last Modified: Tue, 27 Oct 2026 06:10:42 GMT  
		Size: 55.1 MB (55075910 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:50bc21d5ddb6b2973b425ddb0d9ba090848c144e31c58bc36d78b73db5aa31ea`  
		Last Modified: Tue, 27 Oct 2026 06:10:39 GMT  
		Size: 27.6 KB (27553 bytes)  
		MIME: application/vnd.in-toto+json
