<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `odoo`

-	[`odoo:17`](#odoo17)
-	[`odoo:17.0`](#odoo170)
-	[`odoo:17.0-20260723`](#odoo170-20260723)
-	[`odoo:18`](#odoo18)
-	[`odoo:18.0`](#odoo180)
-	[`odoo:18.0-20260723`](#odoo180-20260723)
-	[`odoo:19`](#odoo19)
-	[`odoo:19.0`](#odoo190)
-	[`odoo:19.0-20260723`](#odoo190-20260723)
-	[`odoo:latest`](#odoolatest)

## `odoo:17`

```console
$ docker pull odoo@sha256:f88f646a0f5fc0b225995ee28953d9ce7367cc731b1756765114691fb97d18e5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `odoo:17` - linux; amd64

```console
$ docker pull odoo@sha256:db2b220352238cf64a56ac54b311e538d1154e68a63c57bebccf1af0bd9aa547
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **612.3 MB (612295355 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5717d4c1bb40bab6e6d9fc2f87fa697654ea0ce4e4f9ec6b3ea27c2f58bf30b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Mon, 29 Jun 2026 11:07:30 GMT
ARG RELEASE
# Mon, 29 Jun 2026 11:07:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 11:07:30 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 11:07:32 GMT
ADD file:c5143b228eb55f19ed4d3b653ad68ec7afe54ded0247e090ce3afb9e5484adfb in / 
# Mon, 29 Jun 2026 11:07:32 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:32:19 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Thu, 02 Jul 2026 02:32:19 GMT
SHELL [/bin/bash -xo pipefail -c]
# Thu, 02 Jul 2026 02:32:19 GMT
ENV LANG=en_US.UTF-8
# Thu, 02 Jul 2026 02:32:19 GMT
ARG TARGETARCH=amd64
# Thu, 02 Jul 2026 02:32:19 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     DEBIAN_FRONTEND=noninteractive     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         npm         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Thu, 02 Jul 2026 02:32:25 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jammy-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:32:26 GMT
# ARGS: TARGETARCH=amd64
RUN npm install -g rtlcss # buildkit
# Thu, 02 Jul 2026 02:32:26 GMT
ENV ODOO_VERSION=17.0
# Thu, 02 Jul 2026 02:32:26 GMT
ARG ODOO_RELEASE=20260630
# Thu, 02 Jul 2026 02:32:26 GMT
ARG ODOO_SHA=51a6dfb4165c0b9b90c0033192074e3efa585a2f
# Thu, 02 Jul 2026 02:33:25 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260630 ODOO_SHA=51a6dfb4165c0b9b90c0033192074e3efa585a2f
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Thu, 02 Jul 2026 02:33:26 GMT
COPY ./entrypoint.sh / # buildkit
# Thu, 02 Jul 2026 02:33:26 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Thu, 02 Jul 2026 02:33:26 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260630 ODOO_SHA=51a6dfb4165c0b9b90c0033192074e3efa585a2f
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Thu, 02 Jul 2026 02:33:26 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Thu, 02 Jul 2026 02:33:26 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Thu, 02 Jul 2026 02:33:26 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Thu, 02 Jul 2026 02:33:26 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Thu, 02 Jul 2026 02:33:26 GMT
USER odoo
# Thu, 02 Jul 2026 02:33:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 02 Jul 2026 02:33:26 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a074bdfd6fcea12d6a953c1179ba9b35445c16e2bf868cfe35e10dc4bf4f4a6`  
		Last Modified: Thu, 02 Jul 2026 02:34:53 GMT  
		Size: 233.8 MB (233767812 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44610681e36eff3a6d22b31853224b67aea45bc722386e8c88120fe83051a44c`  
		Last Modified: Thu, 02 Jul 2026 02:34:44 GMT  
		Size: 2.6 MB (2611695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87531edd867d3ed4c2be14ee3bab8bb10e9cba787e48a8a0d48eef617c2edff7`  
		Last Modified: Thu, 02 Jul 2026 02:34:44 GMT  
		Size: 482.9 KB (482938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7f205f34568cbb2c5702b714d1b1af3620240786c7e20a532d4a67e681f8efd`  
		Last Modified: Thu, 02 Jul 2026 02:34:55 GMT  
		Size: 345.7 MB (345691234 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb380859a297eac2829855ba01c19798799d414d384f5d490f5251ccd83f4bad`  
		Last Modified: Thu, 02 Jul 2026 02:34:45 GMT  
		Size: 768.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9725b6d00a2cc6e055b57c3e812e36ece3bc51ebcb01a0649d2aa7cc3798348`  
		Last Modified: Thu, 02 Jul 2026 02:34:46 GMT  
		Size: 555.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc88fc92ee5f1733aeb855ea8765b5612bca9ee32c1407082de5a7e63ac9cb82`  
		Last Modified: Thu, 02 Jul 2026 02:34:47 GMT  
		Size: 594.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0c44bd713a44f822bd85b2bba59464b4924005543295fafb0ce60d476eeb555`  
		Last Modified: Thu, 02 Jul 2026 02:34:47 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:17` - unknown; unknown

```console
$ docker pull odoo@sha256:1a9dcefbd0db2aedf5959210831543b96d08de91834241e11bb19af66ce62954
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.1 MB (43084434 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8073714b81f17cae4f7fd5dd4054670e41b1fcaa2fe6743865f339c9bc4131f7`

```dockerfile
```

-	Layers:
	-	`sha256:b049c182aadacf1182fff2cd436862849c55b64bf3ee22ccea69d7197101ac57`  
		Last Modified: Thu, 02 Jul 2026 02:34:47 GMT  
		Size: 43.1 MB (43057630 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:94ec5dc93dfe115321a897566d6940d8f42c0cefbf08ec257e90b84b9429a0d3`  
		Last Modified: Thu, 02 Jul 2026 02:34:44 GMT  
		Size: 26.8 KB (26804 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:17` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:68aaccdef26e8a2e8c64ca902a980816a20197d0d8b0aa4e20454f615ca3f9f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **607.2 MB (607207962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f201f71ccf16c9c899cb98f8628314f1191096a9cafaba4fe59c92207545145e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Mon, 29 Jun 2026 10:38:39 GMT
ARG RELEASE
# Mon, 29 Jun 2026 10:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 10:38:39 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 10:38:42 GMT
ADD file:a517741c956f6a7e4b7cb0efd9bc418ce3cc54eb49b5314080ff606a7430ac2a in / 
# Mon, 29 Jun 2026 10:38:42 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:31:23 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Thu, 02 Jul 2026 02:31:23 GMT
SHELL [/bin/bash -xo pipefail -c]
# Thu, 02 Jul 2026 02:31:23 GMT
ENV LANG=en_US.UTF-8
# Thu, 02 Jul 2026 02:31:23 GMT
ARG TARGETARCH=arm64
# Thu, 02 Jul 2026 02:31:23 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     DEBIAN_FRONTEND=noninteractive     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         npm         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Thu, 02 Jul 2026 02:31:30 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jammy-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:31:31 GMT
# ARGS: TARGETARCH=arm64
RUN npm install -g rtlcss # buildkit
# Thu, 02 Jul 2026 02:31:31 GMT
ENV ODOO_VERSION=17.0
# Thu, 02 Jul 2026 02:31:31 GMT
ARG ODOO_RELEASE=20260630
# Thu, 02 Jul 2026 02:31:31 GMT
ARG ODOO_SHA=51a6dfb4165c0b9b90c0033192074e3efa585a2f
# Thu, 02 Jul 2026 02:32:35 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260630 ODOO_SHA=51a6dfb4165c0b9b90c0033192074e3efa585a2f
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Thu, 02 Jul 2026 02:32:36 GMT
COPY ./entrypoint.sh / # buildkit
# Thu, 02 Jul 2026 02:32:36 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Thu, 02 Jul 2026 02:32:36 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260630 ODOO_SHA=51a6dfb4165c0b9b90c0033192074e3efa585a2f
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Thu, 02 Jul 2026 02:32:36 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Thu, 02 Jul 2026 02:32:36 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Thu, 02 Jul 2026 02:32:36 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Thu, 02 Jul 2026 02:32:36 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Thu, 02 Jul 2026 02:32:36 GMT
USER odoo
# Thu, 02 Jul 2026 02:32:36 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 02 Jul 2026 02:32:36 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4eaccb6eb7c164b4200fc939af46df9419909d6c2c3ebe32529369bdd054428b`  
		Last Modified: Thu, 02 Jul 2026 02:34:09 GMT  
		Size: 231.2 MB (231180370 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2cd72ae1c2c4468de7b8b669ad761667117754650db406293ecedb677d5bacf`  
		Last Modified: Thu, 02 Jul 2026 02:34:00 GMT  
		Size: 2.6 MB (2606932 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22e60875184d85bf60524b73123e2b4254554d27aa6bb214f3f8ef969a62891c`  
		Last Modified: Thu, 02 Jul 2026 02:34:00 GMT  
		Size: 483.0 KB (483041 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d021db5d7c2eb05725ec1929185d876c7005a67ab25d046d2671f924f2fe1c25`  
		Last Modified: Thu, 02 Jul 2026 02:34:12 GMT  
		Size: 345.3 MB (345321641 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df48660271b23eb55d67063a884e7e8d9545d38d247dbce31967bec2fe8403ea`  
		Last Modified: Thu, 02 Jul 2026 02:34:01 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:691ab44e47dd80b45ed9f99703502ba6dd750141f433806f13471dd840d86601`  
		Last Modified: Thu, 02 Jul 2026 02:34:02 GMT  
		Size: 555.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e4a8444baacffe8f8423c969a065ec76ab6b3a3f53a59f0f84d786bce2d3640`  
		Last Modified: Thu, 02 Jul 2026 02:34:03 GMT  
		Size: 594.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bffe15e7a098471779824c814131e194145a275a05457cdff2a179b07ac2cbf0`  
		Last Modified: Thu, 02 Jul 2026 02:34:03 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:17` - unknown; unknown

```console
$ docker pull odoo@sha256:41d6090147629a0d4dd72907802b256afdc96c400b8eef9452c89135c9f43678
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.1 MB (43091093 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b2f2778b7a478cbd5e4fee59dd9d39fb376f8f3dcbaab3af16eaa4868f8989b`

```dockerfile
```

-	Layers:
	-	`sha256:cf88b0cd28a02c13d95e077f46f7b766619f2c9c0664e7b462dfc8c60faeaf08`  
		Last Modified: Thu, 02 Jul 2026 02:34:03 GMT  
		Size: 43.1 MB (43064137 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9a2f63638c323713586c6b4429d734cd04dd73202b17fbf728e412658ade16b0`  
		Last Modified: Thu, 02 Jul 2026 02:34:00 GMT  
		Size: 27.0 KB (26956 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:17.0`

```console
$ docker pull odoo@sha256:f88f646a0f5fc0b225995ee28953d9ce7367cc731b1756765114691fb97d18e5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `odoo:17.0` - linux; amd64

```console
$ docker pull odoo@sha256:db2b220352238cf64a56ac54b311e538d1154e68a63c57bebccf1af0bd9aa547
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **612.3 MB (612295355 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5717d4c1bb40bab6e6d9fc2f87fa697654ea0ce4e4f9ec6b3ea27c2f58bf30b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Mon, 29 Jun 2026 11:07:30 GMT
ARG RELEASE
# Mon, 29 Jun 2026 11:07:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 11:07:30 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 11:07:32 GMT
ADD file:c5143b228eb55f19ed4d3b653ad68ec7afe54ded0247e090ce3afb9e5484adfb in / 
# Mon, 29 Jun 2026 11:07:32 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:32:19 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Thu, 02 Jul 2026 02:32:19 GMT
SHELL [/bin/bash -xo pipefail -c]
# Thu, 02 Jul 2026 02:32:19 GMT
ENV LANG=en_US.UTF-8
# Thu, 02 Jul 2026 02:32:19 GMT
ARG TARGETARCH=amd64
# Thu, 02 Jul 2026 02:32:19 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     DEBIAN_FRONTEND=noninteractive     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         npm         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Thu, 02 Jul 2026 02:32:25 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jammy-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:32:26 GMT
# ARGS: TARGETARCH=amd64
RUN npm install -g rtlcss # buildkit
# Thu, 02 Jul 2026 02:32:26 GMT
ENV ODOO_VERSION=17.0
# Thu, 02 Jul 2026 02:32:26 GMT
ARG ODOO_RELEASE=20260630
# Thu, 02 Jul 2026 02:32:26 GMT
ARG ODOO_SHA=51a6dfb4165c0b9b90c0033192074e3efa585a2f
# Thu, 02 Jul 2026 02:33:25 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260630 ODOO_SHA=51a6dfb4165c0b9b90c0033192074e3efa585a2f
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Thu, 02 Jul 2026 02:33:26 GMT
COPY ./entrypoint.sh / # buildkit
# Thu, 02 Jul 2026 02:33:26 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Thu, 02 Jul 2026 02:33:26 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260630 ODOO_SHA=51a6dfb4165c0b9b90c0033192074e3efa585a2f
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Thu, 02 Jul 2026 02:33:26 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Thu, 02 Jul 2026 02:33:26 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Thu, 02 Jul 2026 02:33:26 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Thu, 02 Jul 2026 02:33:26 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Thu, 02 Jul 2026 02:33:26 GMT
USER odoo
# Thu, 02 Jul 2026 02:33:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 02 Jul 2026 02:33:26 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a074bdfd6fcea12d6a953c1179ba9b35445c16e2bf868cfe35e10dc4bf4f4a6`  
		Last Modified: Thu, 02 Jul 2026 02:34:53 GMT  
		Size: 233.8 MB (233767812 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44610681e36eff3a6d22b31853224b67aea45bc722386e8c88120fe83051a44c`  
		Last Modified: Thu, 02 Jul 2026 02:34:44 GMT  
		Size: 2.6 MB (2611695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87531edd867d3ed4c2be14ee3bab8bb10e9cba787e48a8a0d48eef617c2edff7`  
		Last Modified: Thu, 02 Jul 2026 02:34:44 GMT  
		Size: 482.9 KB (482938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7f205f34568cbb2c5702b714d1b1af3620240786c7e20a532d4a67e681f8efd`  
		Last Modified: Thu, 02 Jul 2026 02:34:55 GMT  
		Size: 345.7 MB (345691234 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb380859a297eac2829855ba01c19798799d414d384f5d490f5251ccd83f4bad`  
		Last Modified: Thu, 02 Jul 2026 02:34:45 GMT  
		Size: 768.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9725b6d00a2cc6e055b57c3e812e36ece3bc51ebcb01a0649d2aa7cc3798348`  
		Last Modified: Thu, 02 Jul 2026 02:34:46 GMT  
		Size: 555.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc88fc92ee5f1733aeb855ea8765b5612bca9ee32c1407082de5a7e63ac9cb82`  
		Last Modified: Thu, 02 Jul 2026 02:34:47 GMT  
		Size: 594.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0c44bd713a44f822bd85b2bba59464b4924005543295fafb0ce60d476eeb555`  
		Last Modified: Thu, 02 Jul 2026 02:34:47 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:17.0` - unknown; unknown

```console
$ docker pull odoo@sha256:1a9dcefbd0db2aedf5959210831543b96d08de91834241e11bb19af66ce62954
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.1 MB (43084434 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8073714b81f17cae4f7fd5dd4054670e41b1fcaa2fe6743865f339c9bc4131f7`

```dockerfile
```

-	Layers:
	-	`sha256:b049c182aadacf1182fff2cd436862849c55b64bf3ee22ccea69d7197101ac57`  
		Last Modified: Thu, 02 Jul 2026 02:34:47 GMT  
		Size: 43.1 MB (43057630 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:94ec5dc93dfe115321a897566d6940d8f42c0cefbf08ec257e90b84b9429a0d3`  
		Last Modified: Thu, 02 Jul 2026 02:34:44 GMT  
		Size: 26.8 KB (26804 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:17.0` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:68aaccdef26e8a2e8c64ca902a980816a20197d0d8b0aa4e20454f615ca3f9f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **607.2 MB (607207962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f201f71ccf16c9c899cb98f8628314f1191096a9cafaba4fe59c92207545145e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Mon, 29 Jun 2026 10:38:39 GMT
ARG RELEASE
# Mon, 29 Jun 2026 10:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 10:38:39 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 10:38:42 GMT
ADD file:a517741c956f6a7e4b7cb0efd9bc418ce3cc54eb49b5314080ff606a7430ac2a in / 
# Mon, 29 Jun 2026 10:38:42 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:31:23 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Thu, 02 Jul 2026 02:31:23 GMT
SHELL [/bin/bash -xo pipefail -c]
# Thu, 02 Jul 2026 02:31:23 GMT
ENV LANG=en_US.UTF-8
# Thu, 02 Jul 2026 02:31:23 GMT
ARG TARGETARCH=arm64
# Thu, 02 Jul 2026 02:31:23 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     DEBIAN_FRONTEND=noninteractive     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         npm         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Thu, 02 Jul 2026 02:31:30 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jammy-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:31:31 GMT
# ARGS: TARGETARCH=arm64
RUN npm install -g rtlcss # buildkit
# Thu, 02 Jul 2026 02:31:31 GMT
ENV ODOO_VERSION=17.0
# Thu, 02 Jul 2026 02:31:31 GMT
ARG ODOO_RELEASE=20260630
# Thu, 02 Jul 2026 02:31:31 GMT
ARG ODOO_SHA=51a6dfb4165c0b9b90c0033192074e3efa585a2f
# Thu, 02 Jul 2026 02:32:35 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260630 ODOO_SHA=51a6dfb4165c0b9b90c0033192074e3efa585a2f
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Thu, 02 Jul 2026 02:32:36 GMT
COPY ./entrypoint.sh / # buildkit
# Thu, 02 Jul 2026 02:32:36 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Thu, 02 Jul 2026 02:32:36 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260630 ODOO_SHA=51a6dfb4165c0b9b90c0033192074e3efa585a2f
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Thu, 02 Jul 2026 02:32:36 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Thu, 02 Jul 2026 02:32:36 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Thu, 02 Jul 2026 02:32:36 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Thu, 02 Jul 2026 02:32:36 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Thu, 02 Jul 2026 02:32:36 GMT
USER odoo
# Thu, 02 Jul 2026 02:32:36 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 02 Jul 2026 02:32:36 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4eaccb6eb7c164b4200fc939af46df9419909d6c2c3ebe32529369bdd054428b`  
		Last Modified: Thu, 02 Jul 2026 02:34:09 GMT  
		Size: 231.2 MB (231180370 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2cd72ae1c2c4468de7b8b669ad761667117754650db406293ecedb677d5bacf`  
		Last Modified: Thu, 02 Jul 2026 02:34:00 GMT  
		Size: 2.6 MB (2606932 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22e60875184d85bf60524b73123e2b4254554d27aa6bb214f3f8ef969a62891c`  
		Last Modified: Thu, 02 Jul 2026 02:34:00 GMT  
		Size: 483.0 KB (483041 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d021db5d7c2eb05725ec1929185d876c7005a67ab25d046d2671f924f2fe1c25`  
		Last Modified: Thu, 02 Jul 2026 02:34:12 GMT  
		Size: 345.3 MB (345321641 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df48660271b23eb55d67063a884e7e8d9545d38d247dbce31967bec2fe8403ea`  
		Last Modified: Thu, 02 Jul 2026 02:34:01 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:691ab44e47dd80b45ed9f99703502ba6dd750141f433806f13471dd840d86601`  
		Last Modified: Thu, 02 Jul 2026 02:34:02 GMT  
		Size: 555.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e4a8444baacffe8f8423c969a065ec76ab6b3a3f53a59f0f84d786bce2d3640`  
		Last Modified: Thu, 02 Jul 2026 02:34:03 GMT  
		Size: 594.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bffe15e7a098471779824c814131e194145a275a05457cdff2a179b07ac2cbf0`  
		Last Modified: Thu, 02 Jul 2026 02:34:03 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:17.0` - unknown; unknown

```console
$ docker pull odoo@sha256:41d6090147629a0d4dd72907802b256afdc96c400b8eef9452c89135c9f43678
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.1 MB (43091093 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b2f2778b7a478cbd5e4fee59dd9d39fb376f8f3dcbaab3af16eaa4868f8989b`

```dockerfile
```

-	Layers:
	-	`sha256:cf88b0cd28a02c13d95e077f46f7b766619f2c9c0664e7b462dfc8c60faeaf08`  
		Last Modified: Thu, 02 Jul 2026 02:34:03 GMT  
		Size: 43.1 MB (43064137 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9a2f63638c323713586c6b4429d734cd04dd73202b17fbf728e412658ade16b0`  
		Last Modified: Thu, 02 Jul 2026 02:34:00 GMT  
		Size: 27.0 KB (26956 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:17.0-20260723`

**does not exist** (yet?)

## `odoo:18`

```console
$ docker pull odoo@sha256:9c82d5e40b10228467b6794eea3265e84d66c5a65b57456af54f8e74ef9fac89
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
$ docker pull odoo@sha256:567b1d0bd3f7476bbc88f1bf31b4842fe79a34f5f94949a8acb6426486ea7e17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **690.4 MB (690355989 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd55a0c922289633b38c831b93f3cb13361ca17b3c8b97a4f8912a97ac1e8700`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Mon, 22 Jun 2026 21:24:17 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:24:18 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:24:18 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:24:20 GMT
ADD file:8c609c85109d07bf47cf268a175b3be8bbe34fc0c41d15d99b090d099f4dc837 in / 
# Mon, 22 Jun 2026 21:24:21 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:32:41 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Thu, 02 Jul 2026 02:32:41 GMT
SHELL [/bin/bash -xo pipefail -c]
# Thu, 02 Jul 2026 02:32:41 GMT
ENV LANG=en_US.UTF-8
# Thu, 02 Jul 2026 02:32:41 GMT
ARG TARGETARCH=amd64
# Thu, 02 Jul 2026 02:32:41 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     DEBIAN_FRONTEND=noninteractive     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         npm         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Thu, 02 Jul 2026 02:32:50 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:32:51 GMT
# ARGS: TARGETARCH=amd64
RUN npm install -g rtlcss # buildkit
# Thu, 02 Jul 2026 02:32:51 GMT
ENV ODOO_VERSION=18.0
# Thu, 02 Jul 2026 02:32:51 GMT
ARG ODOO_RELEASE=20260630
# Thu, 02 Jul 2026 02:32:51 GMT
ARG ODOO_SHA=a6a0989209a2d98fd6c9a8fdc9b3b37c43ac73ae
# Thu, 02 Jul 2026 02:33:46 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260630 ODOO_SHA=a6a0989209a2d98fd6c9a8fdc9b3b37c43ac73ae
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Thu, 02 Jul 2026 02:33:47 GMT
COPY ./entrypoint.sh / # buildkit
# Thu, 02 Jul 2026 02:33:47 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Thu, 02 Jul 2026 02:33:47 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260630 ODOO_SHA=a6a0989209a2d98fd6c9a8fdc9b3b37c43ac73ae
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Thu, 02 Jul 2026 02:33:47 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Thu, 02 Jul 2026 02:33:47 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Thu, 02 Jul 2026 02:33:47 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Thu, 02 Jul 2026 02:33:47 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Thu, 02 Jul 2026 02:33:47 GMT
USER odoo
# Thu, 02 Jul 2026 02:33:47 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 02 Jul 2026 02:33:47 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:ca2678b20700c15185707964d9211b1a6406196114bf675f568b6025d37b3888`  
		Last Modified: Tue, 23 Jun 2026 01:34:01 GMT  
		Size: 29.7 MB (29735601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bb06e3fdd7e468604befd637ac8b235e3f34c5a312a305b0ee2950eb07e1498`  
		Last Modified: Thu, 02 Jul 2026 02:35:53 GMT  
		Size: 254.6 MB (254554087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e18bcd273ca7a37fb72b0024f324d5307897b194f4faa4928f8fb094712bbd47`  
		Last Modified: Thu, 02 Jul 2026 02:35:42 GMT  
		Size: 16.8 MB (16779665 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8c441868130a719c1bd8d062258cdc0225ec5329da290b9d30c663c7bc9347b`  
		Last Modified: Thu, 02 Jul 2026 02:35:41 GMT  
		Size: 482.6 KB (482620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1eed3b8584fc334a20ea7a23e3223d109f72ffaf808dc8f579deb29766c48e7f`  
		Last Modified: Thu, 02 Jul 2026 02:35:54 GMT  
		Size: 388.8 MB (388801226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b8c221453f988553dc5c0c47a5429acf81d323dc4fe2201911bd6c32ed322e4`  
		Last Modified: Thu, 02 Jul 2026 02:35:42 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a036e9e787c4ad778db27b3afe07e9e209e4d4592963c40f02cc483d0764889b`  
		Last Modified: Thu, 02 Jul 2026 02:35:44 GMT  
		Size: 553.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8228859615dca3359f8a25c7b877e277a5fcef1f801dda7297ddbf312508c9a`  
		Last Modified: Thu, 02 Jul 2026 02:35:44 GMT  
		Size: 592.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2276cea010043643f2a6734dad220c2b00284498fadae76504a2365e41f3036`  
		Last Modified: Thu, 02 Jul 2026 02:35:45 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18` - unknown; unknown

```console
$ docker pull odoo@sha256:587d5d93a2a95c9fc2645b7fd2983c0c6fe8f11a8137ad761e591f0a2c47b92f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.6 MB (62587045 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21c816f0100b4eb9680b4a73eecd05d3bf173b5dcb3c6db79f934e98869cd9ad`

```dockerfile
```

-	Layers:
	-	`sha256:3c12a10796a04ca7f4b38c5d618354a6246476a0cea0b67825f60f14ad22920e`  
		Last Modified: Thu, 02 Jul 2026 02:35:45 GMT  
		Size: 62.6 MB (62560234 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:08ba79b072412deaf53d5bd92a6e86443f665a2c300f70b860b485f56ee1e95e`  
		Last Modified: Thu, 02 Jul 2026 02:35:41 GMT  
		Size: 26.8 KB (26811 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:18` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:6860a44db8d0ba353a41afacd6f4109f2704949efa21bf39791b91fb1463d968
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **686.7 MB (686695498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e0f935689bdcb1d4df972372bfe864bc9959f1997a26ad79dd25393769dc12a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Mon, 22 Jun 2026 21:25:05 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:25:05 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:25:05 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:25:07 GMT
ADD file:cdc9a547b921f36a32310f732815bbee6c6e4f5bd768ab5d49cdc0aa1b9f4785 in / 
# Mon, 22 Jun 2026 21:25:07 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:31:38 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Thu, 02 Jul 2026 02:31:38 GMT
SHELL [/bin/bash -xo pipefail -c]
# Thu, 02 Jul 2026 02:31:38 GMT
ENV LANG=en_US.UTF-8
# Thu, 02 Jul 2026 02:31:38 GMT
ARG TARGETARCH=arm64
# Thu, 02 Jul 2026 02:31:38 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     DEBIAN_FRONTEND=noninteractive     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         npm         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Thu, 02 Jul 2026 02:31:48 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:31:49 GMT
# ARGS: TARGETARCH=arm64
RUN npm install -g rtlcss # buildkit
# Thu, 02 Jul 2026 02:31:49 GMT
ENV ODOO_VERSION=18.0
# Thu, 02 Jul 2026 02:31:49 GMT
ARG ODOO_RELEASE=20260630
# Thu, 02 Jul 2026 02:31:49 GMT
ARG ODOO_SHA=a6a0989209a2d98fd6c9a8fdc9b3b37c43ac73ae
# Thu, 02 Jul 2026 02:32:46 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260630 ODOO_SHA=a6a0989209a2d98fd6c9a8fdc9b3b37c43ac73ae
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Thu, 02 Jul 2026 02:32:47 GMT
COPY ./entrypoint.sh / # buildkit
# Thu, 02 Jul 2026 02:32:47 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Thu, 02 Jul 2026 02:32:47 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260630 ODOO_SHA=a6a0989209a2d98fd6c9a8fdc9b3b37c43ac73ae
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Thu, 02 Jul 2026 02:32:47 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Thu, 02 Jul 2026 02:32:47 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Thu, 02 Jul 2026 02:32:47 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Thu, 02 Jul 2026 02:32:47 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Thu, 02 Jul 2026 02:32:47 GMT
USER odoo
# Thu, 02 Jul 2026 02:32:47 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 02 Jul 2026 02:32:47 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:4b987da45db4d6278590ab89840c7167ea397df222f3ee4cdb77c3e15694b1a9`  
		Last Modified: Tue, 23 Jun 2026 01:34:08 GMT  
		Size: 28.9 MB (28884180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61895397c48523fe10aed6732332bfd3571dc85cc092367dec881d30738ab65f`  
		Last Modified: Thu, 02 Jul 2026 02:35:04 GMT  
		Size: 252.0 MB (251958069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:158588cc8648a2042735471b104a2d5dd25c458d6c364cedbe4c333b5824bf45`  
		Last Modified: Thu, 02 Jul 2026 02:34:55 GMT  
		Size: 16.7 MB (16719068 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e2feb07e3624bff82eeb5df6c67d5191ada9b296c3ff5e222917140117b9c93`  
		Last Modified: Thu, 02 Jul 2026 02:34:53 GMT  
		Size: 482.7 KB (482743 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69def0fb4763586e24e6809db5c5c4325dfe7568149b37c3fe2b2f0419c2bec3`  
		Last Modified: Thu, 02 Jul 2026 02:35:07 GMT  
		Size: 388.6 MB (388648644 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5a7b79b9bc726eb07bd66a996381cf7cccc3449940e30157c57696a7f1b6adc`  
		Last Modified: Thu, 02 Jul 2026 02:34:55 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26ba2e34c4b6469dce31b64043d434d786677d8d073e3faeb0f6f950535fce86`  
		Last Modified: Thu, 02 Jul 2026 02:34:56 GMT  
		Size: 555.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:917c875fc7fa21562e34a0bb5bc5a52eecc07cabb73b856d86848b46a0cc0eaa`  
		Last Modified: Thu, 02 Jul 2026 02:34:57 GMT  
		Size: 595.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dba7cb8c48a1af1b6012840e5db7c7071545a2ac7ad37021f10aa46333215dcc`  
		Last Modified: Thu, 02 Jul 2026 02:34:58 GMT  
		Size: 877.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18` - unknown; unknown

```console
$ docker pull odoo@sha256:1af7058c4c8251764b0f2c82409b49e0b3fb189ea483b4690abe23691dd156dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.6 MB (62594472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef32ef352190d12a74459792f6257e7d517330bd8a0d0185c2b8a64e019e9e69`

```dockerfile
```

-	Layers:
	-	`sha256:a9333d1976c4c119eab51b240a909ce98c638412c4c4920da0b6e0a941e98d3a`  
		Last Modified: Thu, 02 Jul 2026 02:34:57 GMT  
		Size: 62.6 MB (62567509 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ea9a8d47471b2e715ea28426eb0ef06b43277165ffe7accf9203b2da1b82e4b0`  
		Last Modified: Thu, 02 Jul 2026 02:34:53 GMT  
		Size: 27.0 KB (26963 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:18` - linux; ppc64le

```console
$ docker pull odoo@sha256:2a78b44fd77a0437ca525be6f5822e02303afc76a7e1e2f2dc447f14ef92f230
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **706.7 MB (706749236 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb831f9778712edbffdd31cc7486819bb59cec03fd5c47d1f659ce03ad4a5642`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Mon, 22 Jun 2026 21:24:57 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:24:57 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:24:57 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:25:00 GMT
ADD file:80a608ac5245946ff88c571e9d9b1259a58a3a309e569fbe7ed52f07c2ed3b39 in / 
# Mon, 22 Jun 2026 21:25:01 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 03:00:19 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Thu, 02 Jul 2026 03:00:19 GMT
SHELL [/bin/bash -xo pipefail -c]
# Thu, 02 Jul 2026 03:00:19 GMT
ENV LANG=en_US.UTF-8
# Thu, 02 Jul 2026 03:00:19 GMT
ARG TARGETARCH=ppc64le
# Thu, 02 Jul 2026 03:00:19 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     DEBIAN_FRONTEND=noninteractive     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         npm         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Thu, 02 Jul 2026 03:00:40 GMT
# ARGS: TARGETARCH=ppc64le
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 03:00:43 GMT
# ARGS: TARGETARCH=ppc64le
RUN npm install -g rtlcss # buildkit
# Thu, 02 Jul 2026 03:00:43 GMT
ENV ODOO_VERSION=18.0
# Thu, 02 Jul 2026 03:00:43 GMT
ARG ODOO_RELEASE=20260630
# Thu, 02 Jul 2026 03:00:43 GMT
ARG ODOO_SHA=a6a0989209a2d98fd6c9a8fdc9b3b37c43ac73ae
# Thu, 02 Jul 2026 03:02:48 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260630 ODOO_SHA=a6a0989209a2d98fd6c9a8fdc9b3b37c43ac73ae
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Thu, 02 Jul 2026 03:02:49 GMT
COPY ./entrypoint.sh / # buildkit
# Thu, 02 Jul 2026 03:02:52 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Thu, 02 Jul 2026 03:02:53 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260630 ODOO_SHA=a6a0989209a2d98fd6c9a8fdc9b3b37c43ac73ae
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Thu, 02 Jul 2026 03:02:53 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Thu, 02 Jul 2026 03:02:53 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Thu, 02 Jul 2026 03:02:53 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Thu, 02 Jul 2026 03:02:53 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Thu, 02 Jul 2026 03:02:53 GMT
USER odoo
# Thu, 02 Jul 2026 03:02:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 02 Jul 2026 03:02:53 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:54973426d6a3ff47babf11aed16ea13dd9377608c1d09a81758f109a18049199`  
		Last Modified: Tue, 23 Jun 2026 01:34:28 GMT  
		Size: 34.3 MB (34313476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31c284a57ed88cd0de397dddc32723b392791c411a141f1a11aceeea0526aabc`  
		Last Modified: Thu, 02 Jul 2026 03:07:48 GMT  
		Size: 265.2 MB (265154689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5db37fb0e6fd0a0c2a16003fc0e0a4a9918f8e54034c41ea4306eb2e27b89034`  
		Last Modified: Thu, 02 Jul 2026 03:07:35 GMT  
		Size: 17.5 MB (17456445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64afea98eabeebc32ec9bc3b59341d32874de1e34dc1fc68dcb67eacb58a1b1b`  
		Last Modified: Thu, 02 Jul 2026 03:07:33 GMT  
		Size: 482.7 KB (482654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:543b2c1fe2880698529c73d5b48f34947585fbae468eb4a83d8c732750d25ef2`  
		Last Modified: Thu, 02 Jul 2026 03:07:51 GMT  
		Size: 389.3 MB (389339175 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5dac9f07b06e39c168914bb3d1dc030e53017b7970550a6891e8a6537a26fad`  
		Last Modified: Thu, 02 Jul 2026 03:07:34 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08a5058d3fade5ecc09fb02731e0b24011a05ebadf5dce3a96215d2293ad9e08`  
		Last Modified: Thu, 02 Jul 2026 03:07:36 GMT  
		Size: 555.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:faad943de74cea9a68f85e095722955208184ffd0ae8b1bcdb59a958633e8c6e`  
		Last Modified: Thu, 02 Jul 2026 03:07:36 GMT  
		Size: 598.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:372ab4d0f14892eb6b5cfc1697b79b0766b3eaf308932cc4498d1d90695be957`  
		Last Modified: Thu, 02 Jul 2026 03:07:37 GMT  
		Size: 877.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18` - unknown; unknown

```console
$ docker pull odoo@sha256:5504c69ff4ff0a506d02a812cca41158cc804ba08152532e7d8ea4f1e52ffbcc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.6 MB (62595484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a12ee8018fcabb0ed0bbbb68c37510dd10a28be4832c843afd00352cd8927319`

```dockerfile
```

-	Layers:
	-	`sha256:2ff810c54b0ffe40cf65a79b119b3bf7bab4b9b48607d6f21f8ecf116475b0fb`  
		Last Modified: Thu, 02 Jul 2026 03:07:38 GMT  
		Size: 62.6 MB (62568617 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:641e3ef03bd912c131523f0bb4c7fe46b37ed270bb44ce29c26ef878eca1e9ed`  
		Last Modified: Thu, 02 Jul 2026 03:07:32 GMT  
		Size: 26.9 KB (26867 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:18.0`

```console
$ docker pull odoo@sha256:9c82d5e40b10228467b6794eea3265e84d66c5a65b57456af54f8e74ef9fac89
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
$ docker pull odoo@sha256:567b1d0bd3f7476bbc88f1bf31b4842fe79a34f5f94949a8acb6426486ea7e17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **690.4 MB (690355989 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd55a0c922289633b38c831b93f3cb13361ca17b3c8b97a4f8912a97ac1e8700`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Mon, 22 Jun 2026 21:24:17 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:24:18 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:24:18 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:24:20 GMT
ADD file:8c609c85109d07bf47cf268a175b3be8bbe34fc0c41d15d99b090d099f4dc837 in / 
# Mon, 22 Jun 2026 21:24:21 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:32:41 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Thu, 02 Jul 2026 02:32:41 GMT
SHELL [/bin/bash -xo pipefail -c]
# Thu, 02 Jul 2026 02:32:41 GMT
ENV LANG=en_US.UTF-8
# Thu, 02 Jul 2026 02:32:41 GMT
ARG TARGETARCH=amd64
# Thu, 02 Jul 2026 02:32:41 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     DEBIAN_FRONTEND=noninteractive     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         npm         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Thu, 02 Jul 2026 02:32:50 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:32:51 GMT
# ARGS: TARGETARCH=amd64
RUN npm install -g rtlcss # buildkit
# Thu, 02 Jul 2026 02:32:51 GMT
ENV ODOO_VERSION=18.0
# Thu, 02 Jul 2026 02:32:51 GMT
ARG ODOO_RELEASE=20260630
# Thu, 02 Jul 2026 02:32:51 GMT
ARG ODOO_SHA=a6a0989209a2d98fd6c9a8fdc9b3b37c43ac73ae
# Thu, 02 Jul 2026 02:33:46 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260630 ODOO_SHA=a6a0989209a2d98fd6c9a8fdc9b3b37c43ac73ae
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Thu, 02 Jul 2026 02:33:47 GMT
COPY ./entrypoint.sh / # buildkit
# Thu, 02 Jul 2026 02:33:47 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Thu, 02 Jul 2026 02:33:47 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260630 ODOO_SHA=a6a0989209a2d98fd6c9a8fdc9b3b37c43ac73ae
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Thu, 02 Jul 2026 02:33:47 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Thu, 02 Jul 2026 02:33:47 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Thu, 02 Jul 2026 02:33:47 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Thu, 02 Jul 2026 02:33:47 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Thu, 02 Jul 2026 02:33:47 GMT
USER odoo
# Thu, 02 Jul 2026 02:33:47 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 02 Jul 2026 02:33:47 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:ca2678b20700c15185707964d9211b1a6406196114bf675f568b6025d37b3888`  
		Last Modified: Tue, 23 Jun 2026 01:34:01 GMT  
		Size: 29.7 MB (29735601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bb06e3fdd7e468604befd637ac8b235e3f34c5a312a305b0ee2950eb07e1498`  
		Last Modified: Thu, 02 Jul 2026 02:35:53 GMT  
		Size: 254.6 MB (254554087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e18bcd273ca7a37fb72b0024f324d5307897b194f4faa4928f8fb094712bbd47`  
		Last Modified: Thu, 02 Jul 2026 02:35:42 GMT  
		Size: 16.8 MB (16779665 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8c441868130a719c1bd8d062258cdc0225ec5329da290b9d30c663c7bc9347b`  
		Last Modified: Thu, 02 Jul 2026 02:35:41 GMT  
		Size: 482.6 KB (482620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1eed3b8584fc334a20ea7a23e3223d109f72ffaf808dc8f579deb29766c48e7f`  
		Last Modified: Thu, 02 Jul 2026 02:35:54 GMT  
		Size: 388.8 MB (388801226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b8c221453f988553dc5c0c47a5429acf81d323dc4fe2201911bd6c32ed322e4`  
		Last Modified: Thu, 02 Jul 2026 02:35:42 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a036e9e787c4ad778db27b3afe07e9e209e4d4592963c40f02cc483d0764889b`  
		Last Modified: Thu, 02 Jul 2026 02:35:44 GMT  
		Size: 553.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8228859615dca3359f8a25c7b877e277a5fcef1f801dda7297ddbf312508c9a`  
		Last Modified: Thu, 02 Jul 2026 02:35:44 GMT  
		Size: 592.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2276cea010043643f2a6734dad220c2b00284498fadae76504a2365e41f3036`  
		Last Modified: Thu, 02 Jul 2026 02:35:45 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18.0` - unknown; unknown

```console
$ docker pull odoo@sha256:587d5d93a2a95c9fc2645b7fd2983c0c6fe8f11a8137ad761e591f0a2c47b92f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.6 MB (62587045 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21c816f0100b4eb9680b4a73eecd05d3bf173b5dcb3c6db79f934e98869cd9ad`

```dockerfile
```

-	Layers:
	-	`sha256:3c12a10796a04ca7f4b38c5d618354a6246476a0cea0b67825f60f14ad22920e`  
		Last Modified: Thu, 02 Jul 2026 02:35:45 GMT  
		Size: 62.6 MB (62560234 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:08ba79b072412deaf53d5bd92a6e86443f665a2c300f70b860b485f56ee1e95e`  
		Last Modified: Thu, 02 Jul 2026 02:35:41 GMT  
		Size: 26.8 KB (26811 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:18.0` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:6860a44db8d0ba353a41afacd6f4109f2704949efa21bf39791b91fb1463d968
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **686.7 MB (686695498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e0f935689bdcb1d4df972372bfe864bc9959f1997a26ad79dd25393769dc12a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Mon, 22 Jun 2026 21:25:05 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:25:05 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:25:05 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:25:07 GMT
ADD file:cdc9a547b921f36a32310f732815bbee6c6e4f5bd768ab5d49cdc0aa1b9f4785 in / 
# Mon, 22 Jun 2026 21:25:07 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:31:38 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Thu, 02 Jul 2026 02:31:38 GMT
SHELL [/bin/bash -xo pipefail -c]
# Thu, 02 Jul 2026 02:31:38 GMT
ENV LANG=en_US.UTF-8
# Thu, 02 Jul 2026 02:31:38 GMT
ARG TARGETARCH=arm64
# Thu, 02 Jul 2026 02:31:38 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     DEBIAN_FRONTEND=noninteractive     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         npm         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Thu, 02 Jul 2026 02:31:48 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:31:49 GMT
# ARGS: TARGETARCH=arm64
RUN npm install -g rtlcss # buildkit
# Thu, 02 Jul 2026 02:31:49 GMT
ENV ODOO_VERSION=18.0
# Thu, 02 Jul 2026 02:31:49 GMT
ARG ODOO_RELEASE=20260630
# Thu, 02 Jul 2026 02:31:49 GMT
ARG ODOO_SHA=a6a0989209a2d98fd6c9a8fdc9b3b37c43ac73ae
# Thu, 02 Jul 2026 02:32:46 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260630 ODOO_SHA=a6a0989209a2d98fd6c9a8fdc9b3b37c43ac73ae
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Thu, 02 Jul 2026 02:32:47 GMT
COPY ./entrypoint.sh / # buildkit
# Thu, 02 Jul 2026 02:32:47 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Thu, 02 Jul 2026 02:32:47 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260630 ODOO_SHA=a6a0989209a2d98fd6c9a8fdc9b3b37c43ac73ae
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Thu, 02 Jul 2026 02:32:47 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Thu, 02 Jul 2026 02:32:47 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Thu, 02 Jul 2026 02:32:47 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Thu, 02 Jul 2026 02:32:47 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Thu, 02 Jul 2026 02:32:47 GMT
USER odoo
# Thu, 02 Jul 2026 02:32:47 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 02 Jul 2026 02:32:47 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:4b987da45db4d6278590ab89840c7167ea397df222f3ee4cdb77c3e15694b1a9`  
		Last Modified: Tue, 23 Jun 2026 01:34:08 GMT  
		Size: 28.9 MB (28884180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61895397c48523fe10aed6732332bfd3571dc85cc092367dec881d30738ab65f`  
		Last Modified: Thu, 02 Jul 2026 02:35:04 GMT  
		Size: 252.0 MB (251958069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:158588cc8648a2042735471b104a2d5dd25c458d6c364cedbe4c333b5824bf45`  
		Last Modified: Thu, 02 Jul 2026 02:34:55 GMT  
		Size: 16.7 MB (16719068 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e2feb07e3624bff82eeb5df6c67d5191ada9b296c3ff5e222917140117b9c93`  
		Last Modified: Thu, 02 Jul 2026 02:34:53 GMT  
		Size: 482.7 KB (482743 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69def0fb4763586e24e6809db5c5c4325dfe7568149b37c3fe2b2f0419c2bec3`  
		Last Modified: Thu, 02 Jul 2026 02:35:07 GMT  
		Size: 388.6 MB (388648644 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5a7b79b9bc726eb07bd66a996381cf7cccc3449940e30157c57696a7f1b6adc`  
		Last Modified: Thu, 02 Jul 2026 02:34:55 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26ba2e34c4b6469dce31b64043d434d786677d8d073e3faeb0f6f950535fce86`  
		Last Modified: Thu, 02 Jul 2026 02:34:56 GMT  
		Size: 555.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:917c875fc7fa21562e34a0bb5bc5a52eecc07cabb73b856d86848b46a0cc0eaa`  
		Last Modified: Thu, 02 Jul 2026 02:34:57 GMT  
		Size: 595.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dba7cb8c48a1af1b6012840e5db7c7071545a2ac7ad37021f10aa46333215dcc`  
		Last Modified: Thu, 02 Jul 2026 02:34:58 GMT  
		Size: 877.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18.0` - unknown; unknown

```console
$ docker pull odoo@sha256:1af7058c4c8251764b0f2c82409b49e0b3fb189ea483b4690abe23691dd156dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.6 MB (62594472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef32ef352190d12a74459792f6257e7d517330bd8a0d0185c2b8a64e019e9e69`

```dockerfile
```

-	Layers:
	-	`sha256:a9333d1976c4c119eab51b240a909ce98c638412c4c4920da0b6e0a941e98d3a`  
		Last Modified: Thu, 02 Jul 2026 02:34:57 GMT  
		Size: 62.6 MB (62567509 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ea9a8d47471b2e715ea28426eb0ef06b43277165ffe7accf9203b2da1b82e4b0`  
		Last Modified: Thu, 02 Jul 2026 02:34:53 GMT  
		Size: 27.0 KB (26963 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:18.0` - linux; ppc64le

```console
$ docker pull odoo@sha256:2a78b44fd77a0437ca525be6f5822e02303afc76a7e1e2f2dc447f14ef92f230
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **706.7 MB (706749236 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb831f9778712edbffdd31cc7486819bb59cec03fd5c47d1f659ce03ad4a5642`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Mon, 22 Jun 2026 21:24:57 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:24:57 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:24:57 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:25:00 GMT
ADD file:80a608ac5245946ff88c571e9d9b1259a58a3a309e569fbe7ed52f07c2ed3b39 in / 
# Mon, 22 Jun 2026 21:25:01 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 03:00:19 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Thu, 02 Jul 2026 03:00:19 GMT
SHELL [/bin/bash -xo pipefail -c]
# Thu, 02 Jul 2026 03:00:19 GMT
ENV LANG=en_US.UTF-8
# Thu, 02 Jul 2026 03:00:19 GMT
ARG TARGETARCH=ppc64le
# Thu, 02 Jul 2026 03:00:19 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     DEBIAN_FRONTEND=noninteractive     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         npm         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Thu, 02 Jul 2026 03:00:40 GMT
# ARGS: TARGETARCH=ppc64le
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 03:00:43 GMT
# ARGS: TARGETARCH=ppc64le
RUN npm install -g rtlcss # buildkit
# Thu, 02 Jul 2026 03:00:43 GMT
ENV ODOO_VERSION=18.0
# Thu, 02 Jul 2026 03:00:43 GMT
ARG ODOO_RELEASE=20260630
# Thu, 02 Jul 2026 03:00:43 GMT
ARG ODOO_SHA=a6a0989209a2d98fd6c9a8fdc9b3b37c43ac73ae
# Thu, 02 Jul 2026 03:02:48 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260630 ODOO_SHA=a6a0989209a2d98fd6c9a8fdc9b3b37c43ac73ae
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Thu, 02 Jul 2026 03:02:49 GMT
COPY ./entrypoint.sh / # buildkit
# Thu, 02 Jul 2026 03:02:52 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Thu, 02 Jul 2026 03:02:53 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260630 ODOO_SHA=a6a0989209a2d98fd6c9a8fdc9b3b37c43ac73ae
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Thu, 02 Jul 2026 03:02:53 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Thu, 02 Jul 2026 03:02:53 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Thu, 02 Jul 2026 03:02:53 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Thu, 02 Jul 2026 03:02:53 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Thu, 02 Jul 2026 03:02:53 GMT
USER odoo
# Thu, 02 Jul 2026 03:02:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 02 Jul 2026 03:02:53 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:54973426d6a3ff47babf11aed16ea13dd9377608c1d09a81758f109a18049199`  
		Last Modified: Tue, 23 Jun 2026 01:34:28 GMT  
		Size: 34.3 MB (34313476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31c284a57ed88cd0de397dddc32723b392791c411a141f1a11aceeea0526aabc`  
		Last Modified: Thu, 02 Jul 2026 03:07:48 GMT  
		Size: 265.2 MB (265154689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5db37fb0e6fd0a0c2a16003fc0e0a4a9918f8e54034c41ea4306eb2e27b89034`  
		Last Modified: Thu, 02 Jul 2026 03:07:35 GMT  
		Size: 17.5 MB (17456445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64afea98eabeebc32ec9bc3b59341d32874de1e34dc1fc68dcb67eacb58a1b1b`  
		Last Modified: Thu, 02 Jul 2026 03:07:33 GMT  
		Size: 482.7 KB (482654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:543b2c1fe2880698529c73d5b48f34947585fbae468eb4a83d8c732750d25ef2`  
		Last Modified: Thu, 02 Jul 2026 03:07:51 GMT  
		Size: 389.3 MB (389339175 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5dac9f07b06e39c168914bb3d1dc030e53017b7970550a6891e8a6537a26fad`  
		Last Modified: Thu, 02 Jul 2026 03:07:34 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08a5058d3fade5ecc09fb02731e0b24011a05ebadf5dce3a96215d2293ad9e08`  
		Last Modified: Thu, 02 Jul 2026 03:07:36 GMT  
		Size: 555.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:faad943de74cea9a68f85e095722955208184ffd0ae8b1bcdb59a958633e8c6e`  
		Last Modified: Thu, 02 Jul 2026 03:07:36 GMT  
		Size: 598.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:372ab4d0f14892eb6b5cfc1697b79b0766b3eaf308932cc4498d1d90695be957`  
		Last Modified: Thu, 02 Jul 2026 03:07:37 GMT  
		Size: 877.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18.0` - unknown; unknown

```console
$ docker pull odoo@sha256:5504c69ff4ff0a506d02a812cca41158cc804ba08152532e7d8ea4f1e52ffbcc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.6 MB (62595484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a12ee8018fcabb0ed0bbbb68c37510dd10a28be4832c843afd00352cd8927319`

```dockerfile
```

-	Layers:
	-	`sha256:2ff810c54b0ffe40cf65a79b119b3bf7bab4b9b48607d6f21f8ecf116475b0fb`  
		Last Modified: Thu, 02 Jul 2026 03:07:38 GMT  
		Size: 62.6 MB (62568617 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:641e3ef03bd912c131523f0bb4c7fe46b37ed270bb44ce29c26ef878eca1e9ed`  
		Last Modified: Thu, 02 Jul 2026 03:07:32 GMT  
		Size: 26.9 KB (26867 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:18.0-20260723`

**does not exist** (yet?)

## `odoo:19`

```console
$ docker pull odoo@sha256:f54272f31d5f77e4146b887efb3761c98480317daf687e4b4b5e76ed8bcc08c5
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
$ docker pull odoo@sha256:3786e47dfbdb341fc98277dbf3aae5a181adcac287d4450dc42d5bdd2f186e0c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **711.2 MB (711167599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db840c3d737f61e3bb295dee2ef317f9b5439d51ecb1215f781fd00f5cd48118`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Mon, 22 Jun 2026 21:24:17 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:24:18 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:24:18 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:24:20 GMT
ADD file:8c609c85109d07bf47cf268a175b3be8bbe34fc0c41d15d99b090d099f4dc837 in / 
# Mon, 22 Jun 2026 21:24:21 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:32:30 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Thu, 02 Jul 2026 02:32:30 GMT
SHELL [/bin/bash -xo pipefail -c]
# Thu, 02 Jul 2026 02:32:30 GMT
ENV LANG=en_US.UTF-8
# Thu, 02 Jul 2026 02:32:30 GMT
ARG TARGETARCH=amd64
# Thu, 02 Jul 2026 02:32:30 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     DEBIAN_FRONTEND=noninteractive     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         npm         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Thu, 02 Jul 2026 02:32:39 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:32:40 GMT
# ARGS: TARGETARCH=amd64
RUN npm install -g rtlcss # buildkit
# Thu, 02 Jul 2026 02:32:40 GMT
ENV ODOO_VERSION=19.0
# Thu, 02 Jul 2026 02:32:40 GMT
ARG ODOO_RELEASE=20260630
# Thu, 02 Jul 2026 02:32:40 GMT
ARG ODOO_SHA=061db8d7bf1a8e42d6a684b1484cb6d6435dcbac
# Thu, 02 Jul 2026 02:33:38 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260630 ODOO_SHA=061db8d7bf1a8e42d6a684b1484cb6d6435dcbac
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Thu, 02 Jul 2026 02:33:38 GMT
COPY ./entrypoint.sh / # buildkit
# Thu, 02 Jul 2026 02:33:38 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Thu, 02 Jul 2026 02:33:38 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260630 ODOO_SHA=061db8d7bf1a8e42d6a684b1484cb6d6435dcbac
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Thu, 02 Jul 2026 02:33:38 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Thu, 02 Jul 2026 02:33:38 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Thu, 02 Jul 2026 02:33:38 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Thu, 02 Jul 2026 02:33:38 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Thu, 02 Jul 2026 02:33:38 GMT
USER odoo
# Thu, 02 Jul 2026 02:33:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 02 Jul 2026 02:33:38 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:ca2678b20700c15185707964d9211b1a6406196114bf675f568b6025d37b3888`  
		Last Modified: Tue, 23 Jun 2026 01:34:01 GMT  
		Size: 29.7 MB (29735601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78f2d745209984b7c5f62a0546250779fddc99366fd21c546fc788b97975e706`  
		Last Modified: Thu, 02 Jul 2026 02:35:50 GMT  
		Size: 254.6 MB (254553393 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5c469863ea636e11430d9f030a5ff93682581d340bf02234899a5538562efe2`  
		Last Modified: Thu, 02 Jul 2026 02:35:40 GMT  
		Size: 16.8 MB (16779607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:caea36ae9a4d779d594bbbf6a65ae4e0e258357ca0c28e547af96767947a5ab6`  
		Last Modified: Thu, 02 Jul 2026 02:35:39 GMT  
		Size: 482.7 KB (482684 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a9cf32221e3ea57f1813926eb313fecb85a4e5474e1ad98189bef6243226291`  
		Last Modified: Thu, 02 Jul 2026 02:35:53 GMT  
		Size: 409.6 MB (409613566 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccd0a34d6d47ccbd8989c7eeb0a149ddcb54cfa4dd9a7e5c46fd4b62be5e1560`  
		Last Modified: Thu, 02 Jul 2026 02:35:41 GMT  
		Size: 719.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20c51bc8bf7f82f1107f53be9817d7cd8740233a86484b7afacca897bff16b4d`  
		Last Modified: Thu, 02 Jul 2026 02:35:42 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b64ab9ed5819d9955b4d21b1ccf04faba96ada57bbaaa3f066996d247df56f3`  
		Last Modified: Thu, 02 Jul 2026 02:35:42 GMT  
		Size: 596.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1558ce7ffffa657e45ff4237c0253d02f14ccdf40a2f52ebea4f0d747558e8f`  
		Last Modified: Thu, 02 Jul 2026 02:35:44 GMT  
		Size: 877.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19` - unknown; unknown

```console
$ docker pull odoo@sha256:a9698fa59df688348dc52f5168e74eb295637ca8d414221da6b4fe9c19572ab1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.9 MB (70858094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d4f222a1016caecb66e2743babdd67d579a5bedd057e97e55b3f474c7a417dc`

```dockerfile
```

-	Layers:
	-	`sha256:9f7094338d2cf9fef5a8d5f5cd7326388b89af756dd77109bc541940fb2442b6`  
		Last Modified: Thu, 02 Jul 2026 02:35:44 GMT  
		Size: 70.8 MB (70830991 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2d8fa7b63e8f8f549a26e433cfa21c4cd549c8ff4a1e154f745c95533d4d5776`  
		Last Modified: Thu, 02 Jul 2026 02:35:39 GMT  
		Size: 27.1 KB (27103 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:19` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:ad638d0e6f3186c814e1362bf2d84c13143fe81065294ea0fd78fb8874f9e35b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **707.5 MB (707508453 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad36ec4a9d3995a290136cfb9ee41857151bd309c530faf36540fb75b677d293`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Mon, 22 Jun 2026 21:25:05 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:25:05 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:25:05 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:25:07 GMT
ADD file:cdc9a547b921f36a32310f732815bbee6c6e4f5bd768ab5d49cdc0aa1b9f4785 in / 
# Mon, 22 Jun 2026 21:25:07 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:31:35 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Thu, 02 Jul 2026 02:31:35 GMT
SHELL [/bin/bash -xo pipefail -c]
# Thu, 02 Jul 2026 02:31:35 GMT
ENV LANG=en_US.UTF-8
# Thu, 02 Jul 2026 02:31:35 GMT
ARG TARGETARCH=arm64
# Thu, 02 Jul 2026 02:31:35 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     DEBIAN_FRONTEND=noninteractive     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         npm         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Thu, 02 Jul 2026 02:31:44 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:31:45 GMT
# ARGS: TARGETARCH=arm64
RUN npm install -g rtlcss # buildkit
# Thu, 02 Jul 2026 02:31:45 GMT
ENV ODOO_VERSION=19.0
# Thu, 02 Jul 2026 02:31:45 GMT
ARG ODOO_RELEASE=20260630
# Thu, 02 Jul 2026 02:31:45 GMT
ARG ODOO_SHA=061db8d7bf1a8e42d6a684b1484cb6d6435dcbac
# Thu, 02 Jul 2026 02:32:47 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260630 ODOO_SHA=061db8d7bf1a8e42d6a684b1484cb6d6435dcbac
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Thu, 02 Jul 2026 02:32:48 GMT
COPY ./entrypoint.sh / # buildkit
# Thu, 02 Jul 2026 02:32:48 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Thu, 02 Jul 2026 02:32:48 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260630 ODOO_SHA=061db8d7bf1a8e42d6a684b1484cb6d6435dcbac
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Thu, 02 Jul 2026 02:32:48 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Thu, 02 Jul 2026 02:32:48 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Thu, 02 Jul 2026 02:32:48 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Thu, 02 Jul 2026 02:32:48 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Thu, 02 Jul 2026 02:32:48 GMT
USER odoo
# Thu, 02 Jul 2026 02:32:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 02 Jul 2026 02:32:48 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:4b987da45db4d6278590ab89840c7167ea397df222f3ee4cdb77c3e15694b1a9`  
		Last Modified: Tue, 23 Jun 2026 01:34:08 GMT  
		Size: 28.9 MB (28884180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a21596ae4b0358755f0a9acc2cb8f6f0a34e95f25bed0dec3d6861ffb6b4a479`  
		Last Modified: Thu, 02 Jul 2026 02:35:49 GMT  
		Size: 252.0 MB (251958187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:405a907c4677f01eda1787a2fb07185d3b3f4e9b6e0409bccd7427c4e6037383`  
		Last Modified: Thu, 02 Jul 2026 02:35:39 GMT  
		Size: 16.7 MB (16718147 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bdf514089bcd33f525aff7c5f8a598f815b09d7578eb79c0c280501533762e6`  
		Last Modified: Thu, 02 Jul 2026 02:35:39 GMT  
		Size: 482.6 KB (482644 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcb64f95b07964cc13b26312c0e6eff26b5552c07594c37a44afbb4fdf0645c7`  
		Last Modified: Thu, 02 Jul 2026 02:35:53 GMT  
		Size: 409.5 MB (409462551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a7a7fefe658756e1e9a1cc75b9b80b9445b8d6a518428b1ceeb4ffb7779be1e`  
		Last Modified: Thu, 02 Jul 2026 02:35:40 GMT  
		Size: 716.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40529ca0cd30e082e49ac380a51de78d53151ea4f11c83500c17dc65e1f12a20`  
		Last Modified: Thu, 02 Jul 2026 02:35:41 GMT  
		Size: 555.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:156206c2cbfaa00b0d6c2f1b899b75257c1d3cf4703a3aa3f5aad82dce747f88`  
		Last Modified: Thu, 02 Jul 2026 02:35:42 GMT  
		Size: 595.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0abecbb3d6797edee9b07045c691066da4a4b0f2689f5a87eece0ccecdb287f`  
		Last Modified: Thu, 02 Jul 2026 02:35:43 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19` - unknown; unknown

```console
$ docker pull odoo@sha256:66dd5d5796b6d49325a24a055531c4773efd11b6328a1b3371e901818d0329bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.9 MB (70865547 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ed226e77bc0ecb308d062951fae17ca0daa0e2c55221bf889b76f71fafbda09`

```dockerfile
```

-	Layers:
	-	`sha256:7239f7c0b863c3cbf772efd7a85157ef8cfabcc901acb0b727ed2136a173016c`  
		Last Modified: Thu, 02 Jul 2026 02:35:43 GMT  
		Size: 70.8 MB (70838278 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7947d9e0c3aa864c98af70cc988a7e37862795899b04fd500c222bbc3d6fdc90`  
		Last Modified: Thu, 02 Jul 2026 02:35:38 GMT  
		Size: 27.3 KB (27269 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:19` - linux; ppc64le

```console
$ docker pull odoo@sha256:76639cd518e112c47dc488774fb2f7ef68a15467f4cafb79b7fcd5ad40c3a9e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **727.6 MB (727572403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fdc390cc8bbb9a23959b121b3acd1bbffe255a9f5b2ff05017173f974a8d3aa3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Mon, 22 Jun 2026 21:24:57 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:24:57 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:24:57 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:25:00 GMT
ADD file:80a608ac5245946ff88c571e9d9b1259a58a3a309e569fbe7ed52f07c2ed3b39 in / 
# Mon, 22 Jun 2026 21:25:01 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 03:00:19 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Thu, 02 Jul 2026 03:00:19 GMT
SHELL [/bin/bash -xo pipefail -c]
# Thu, 02 Jul 2026 03:00:19 GMT
ENV LANG=en_US.UTF-8
# Thu, 02 Jul 2026 03:00:19 GMT
ARG TARGETARCH=ppc64le
# Thu, 02 Jul 2026 03:00:19 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     DEBIAN_FRONTEND=noninteractive     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         npm         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Thu, 02 Jul 2026 03:00:40 GMT
# ARGS: TARGETARCH=ppc64le
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 03:00:43 GMT
# ARGS: TARGETARCH=ppc64le
RUN npm install -g rtlcss # buildkit
# Thu, 02 Jul 2026 03:00:43 GMT
ENV ODOO_VERSION=19.0
# Thu, 02 Jul 2026 03:00:43 GMT
ARG ODOO_RELEASE=20260630
# Thu, 02 Jul 2026 03:00:43 GMT
ARG ODOO_SHA=061db8d7bf1a8e42d6a684b1484cb6d6435dcbac
# Thu, 02 Jul 2026 03:02:58 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260630 ODOO_SHA=061db8d7bf1a8e42d6a684b1484cb6d6435dcbac
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Thu, 02 Jul 2026 03:02:59 GMT
COPY ./entrypoint.sh / # buildkit
# Thu, 02 Jul 2026 03:03:00 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Thu, 02 Jul 2026 03:03:00 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260630 ODOO_SHA=061db8d7bf1a8e42d6a684b1484cb6d6435dcbac
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Thu, 02 Jul 2026 03:03:00 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Thu, 02 Jul 2026 03:03:00 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Thu, 02 Jul 2026 03:03:00 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Thu, 02 Jul 2026 03:03:00 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Thu, 02 Jul 2026 03:03:00 GMT
USER odoo
# Thu, 02 Jul 2026 03:03:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 02 Jul 2026 03:03:00 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:54973426d6a3ff47babf11aed16ea13dd9377608c1d09a81758f109a18049199`  
		Last Modified: Tue, 23 Jun 2026 01:34:28 GMT  
		Size: 34.3 MB (34313476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31c284a57ed88cd0de397dddc32723b392791c411a141f1a11aceeea0526aabc`  
		Last Modified: Thu, 02 Jul 2026 03:07:48 GMT  
		Size: 265.2 MB (265154689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5db37fb0e6fd0a0c2a16003fc0e0a4a9918f8e54034c41ea4306eb2e27b89034`  
		Last Modified: Thu, 02 Jul 2026 03:07:35 GMT  
		Size: 17.5 MB (17456445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64afea98eabeebc32ec9bc3b59341d32874de1e34dc1fc68dcb67eacb58a1b1b`  
		Last Modified: Thu, 02 Jul 2026 03:07:33 GMT  
		Size: 482.7 KB (482654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce078bcd6c42bed4899e5dd8abece010083cd9d5c9ed2978534d2f89ba83666c`  
		Last Modified: Thu, 02 Jul 2026 03:08:54 GMT  
		Size: 410.2 MB (410162390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56beb94548012c951724bd3d7118c3d28a54e6446ded1a8b45a169599b0f6d91`  
		Last Modified: Thu, 02 Jul 2026 03:08:42 GMT  
		Size: 718.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52217668e21ed3ac25b87e7d481b7cfb349bbaf5b900ae1052120d72339c40db`  
		Last Modified: Thu, 02 Jul 2026 03:08:42 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d3251c109bfbc7b8cffdc954533b412f7953a7b72978a1959d4098f3133c146`  
		Last Modified: Thu, 02 Jul 2026 03:08:42 GMT  
		Size: 597.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24b2cf80de142c2bf28d5dbfea656de686aca39fdd312c1d6747ffb3d8c70b1c`  
		Last Modified: Thu, 02 Jul 2026 03:08:44 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19` - unknown; unknown

```console
$ docker pull odoo@sha256:0fc5b572344034d1fc0762ceef6ef9747ffb7c646746ab5fb4161d4e674291bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.9 MB (70866546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9be7008e244d68f0f4e8535539f33e726ac005e4f4706f9e6185073a4b6ef9ac`

```dockerfile
```

-	Layers:
	-	`sha256:816f8fe4d17b7ddff8439293a82de22cd3935eff1f43bf4a9752d24500192f71`  
		Last Modified: Thu, 02 Jul 2026 03:08:46 GMT  
		Size: 70.8 MB (70839380 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ca0ca22d6a32c7fdc2f80bc62c551d217b7715276615a109d3518840babf4d8e`  
		Last Modified: Thu, 02 Jul 2026 03:08:42 GMT  
		Size: 27.2 KB (27166 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:19.0`

```console
$ docker pull odoo@sha256:f54272f31d5f77e4146b887efb3761c98480317daf687e4b4b5e76ed8bcc08c5
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
$ docker pull odoo@sha256:3786e47dfbdb341fc98277dbf3aae5a181adcac287d4450dc42d5bdd2f186e0c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **711.2 MB (711167599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db840c3d737f61e3bb295dee2ef317f9b5439d51ecb1215f781fd00f5cd48118`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Mon, 22 Jun 2026 21:24:17 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:24:18 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:24:18 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:24:20 GMT
ADD file:8c609c85109d07bf47cf268a175b3be8bbe34fc0c41d15d99b090d099f4dc837 in / 
# Mon, 22 Jun 2026 21:24:21 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:32:30 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Thu, 02 Jul 2026 02:32:30 GMT
SHELL [/bin/bash -xo pipefail -c]
# Thu, 02 Jul 2026 02:32:30 GMT
ENV LANG=en_US.UTF-8
# Thu, 02 Jul 2026 02:32:30 GMT
ARG TARGETARCH=amd64
# Thu, 02 Jul 2026 02:32:30 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     DEBIAN_FRONTEND=noninteractive     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         npm         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Thu, 02 Jul 2026 02:32:39 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:32:40 GMT
# ARGS: TARGETARCH=amd64
RUN npm install -g rtlcss # buildkit
# Thu, 02 Jul 2026 02:32:40 GMT
ENV ODOO_VERSION=19.0
# Thu, 02 Jul 2026 02:32:40 GMT
ARG ODOO_RELEASE=20260630
# Thu, 02 Jul 2026 02:32:40 GMT
ARG ODOO_SHA=061db8d7bf1a8e42d6a684b1484cb6d6435dcbac
# Thu, 02 Jul 2026 02:33:38 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260630 ODOO_SHA=061db8d7bf1a8e42d6a684b1484cb6d6435dcbac
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Thu, 02 Jul 2026 02:33:38 GMT
COPY ./entrypoint.sh / # buildkit
# Thu, 02 Jul 2026 02:33:38 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Thu, 02 Jul 2026 02:33:38 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260630 ODOO_SHA=061db8d7bf1a8e42d6a684b1484cb6d6435dcbac
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Thu, 02 Jul 2026 02:33:38 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Thu, 02 Jul 2026 02:33:38 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Thu, 02 Jul 2026 02:33:38 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Thu, 02 Jul 2026 02:33:38 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Thu, 02 Jul 2026 02:33:38 GMT
USER odoo
# Thu, 02 Jul 2026 02:33:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 02 Jul 2026 02:33:38 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:ca2678b20700c15185707964d9211b1a6406196114bf675f568b6025d37b3888`  
		Last Modified: Tue, 23 Jun 2026 01:34:01 GMT  
		Size: 29.7 MB (29735601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78f2d745209984b7c5f62a0546250779fddc99366fd21c546fc788b97975e706`  
		Last Modified: Thu, 02 Jul 2026 02:35:50 GMT  
		Size: 254.6 MB (254553393 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5c469863ea636e11430d9f030a5ff93682581d340bf02234899a5538562efe2`  
		Last Modified: Thu, 02 Jul 2026 02:35:40 GMT  
		Size: 16.8 MB (16779607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:caea36ae9a4d779d594bbbf6a65ae4e0e258357ca0c28e547af96767947a5ab6`  
		Last Modified: Thu, 02 Jul 2026 02:35:39 GMT  
		Size: 482.7 KB (482684 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a9cf32221e3ea57f1813926eb313fecb85a4e5474e1ad98189bef6243226291`  
		Last Modified: Thu, 02 Jul 2026 02:35:53 GMT  
		Size: 409.6 MB (409613566 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccd0a34d6d47ccbd8989c7eeb0a149ddcb54cfa4dd9a7e5c46fd4b62be5e1560`  
		Last Modified: Thu, 02 Jul 2026 02:35:41 GMT  
		Size: 719.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20c51bc8bf7f82f1107f53be9817d7cd8740233a86484b7afacca897bff16b4d`  
		Last Modified: Thu, 02 Jul 2026 02:35:42 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b64ab9ed5819d9955b4d21b1ccf04faba96ada57bbaaa3f066996d247df56f3`  
		Last Modified: Thu, 02 Jul 2026 02:35:42 GMT  
		Size: 596.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1558ce7ffffa657e45ff4237c0253d02f14ccdf40a2f52ebea4f0d747558e8f`  
		Last Modified: Thu, 02 Jul 2026 02:35:44 GMT  
		Size: 877.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19.0` - unknown; unknown

```console
$ docker pull odoo@sha256:a9698fa59df688348dc52f5168e74eb295637ca8d414221da6b4fe9c19572ab1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.9 MB (70858094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d4f222a1016caecb66e2743babdd67d579a5bedd057e97e55b3f474c7a417dc`

```dockerfile
```

-	Layers:
	-	`sha256:9f7094338d2cf9fef5a8d5f5cd7326388b89af756dd77109bc541940fb2442b6`  
		Last Modified: Thu, 02 Jul 2026 02:35:44 GMT  
		Size: 70.8 MB (70830991 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2d8fa7b63e8f8f549a26e433cfa21c4cd549c8ff4a1e154f745c95533d4d5776`  
		Last Modified: Thu, 02 Jul 2026 02:35:39 GMT  
		Size: 27.1 KB (27103 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:19.0` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:ad638d0e6f3186c814e1362bf2d84c13143fe81065294ea0fd78fb8874f9e35b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **707.5 MB (707508453 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad36ec4a9d3995a290136cfb9ee41857151bd309c530faf36540fb75b677d293`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Mon, 22 Jun 2026 21:25:05 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:25:05 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:25:05 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:25:07 GMT
ADD file:cdc9a547b921f36a32310f732815bbee6c6e4f5bd768ab5d49cdc0aa1b9f4785 in / 
# Mon, 22 Jun 2026 21:25:07 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:31:35 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Thu, 02 Jul 2026 02:31:35 GMT
SHELL [/bin/bash -xo pipefail -c]
# Thu, 02 Jul 2026 02:31:35 GMT
ENV LANG=en_US.UTF-8
# Thu, 02 Jul 2026 02:31:35 GMT
ARG TARGETARCH=arm64
# Thu, 02 Jul 2026 02:31:35 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     DEBIAN_FRONTEND=noninteractive     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         npm         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Thu, 02 Jul 2026 02:31:44 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:31:45 GMT
# ARGS: TARGETARCH=arm64
RUN npm install -g rtlcss # buildkit
# Thu, 02 Jul 2026 02:31:45 GMT
ENV ODOO_VERSION=19.0
# Thu, 02 Jul 2026 02:31:45 GMT
ARG ODOO_RELEASE=20260630
# Thu, 02 Jul 2026 02:31:45 GMT
ARG ODOO_SHA=061db8d7bf1a8e42d6a684b1484cb6d6435dcbac
# Thu, 02 Jul 2026 02:32:47 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260630 ODOO_SHA=061db8d7bf1a8e42d6a684b1484cb6d6435dcbac
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Thu, 02 Jul 2026 02:32:48 GMT
COPY ./entrypoint.sh / # buildkit
# Thu, 02 Jul 2026 02:32:48 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Thu, 02 Jul 2026 02:32:48 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260630 ODOO_SHA=061db8d7bf1a8e42d6a684b1484cb6d6435dcbac
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Thu, 02 Jul 2026 02:32:48 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Thu, 02 Jul 2026 02:32:48 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Thu, 02 Jul 2026 02:32:48 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Thu, 02 Jul 2026 02:32:48 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Thu, 02 Jul 2026 02:32:48 GMT
USER odoo
# Thu, 02 Jul 2026 02:32:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 02 Jul 2026 02:32:48 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:4b987da45db4d6278590ab89840c7167ea397df222f3ee4cdb77c3e15694b1a9`  
		Last Modified: Tue, 23 Jun 2026 01:34:08 GMT  
		Size: 28.9 MB (28884180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a21596ae4b0358755f0a9acc2cb8f6f0a34e95f25bed0dec3d6861ffb6b4a479`  
		Last Modified: Thu, 02 Jul 2026 02:35:49 GMT  
		Size: 252.0 MB (251958187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:405a907c4677f01eda1787a2fb07185d3b3f4e9b6e0409bccd7427c4e6037383`  
		Last Modified: Thu, 02 Jul 2026 02:35:39 GMT  
		Size: 16.7 MB (16718147 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bdf514089bcd33f525aff7c5f8a598f815b09d7578eb79c0c280501533762e6`  
		Last Modified: Thu, 02 Jul 2026 02:35:39 GMT  
		Size: 482.6 KB (482644 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcb64f95b07964cc13b26312c0e6eff26b5552c07594c37a44afbb4fdf0645c7`  
		Last Modified: Thu, 02 Jul 2026 02:35:53 GMT  
		Size: 409.5 MB (409462551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a7a7fefe658756e1e9a1cc75b9b80b9445b8d6a518428b1ceeb4ffb7779be1e`  
		Last Modified: Thu, 02 Jul 2026 02:35:40 GMT  
		Size: 716.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40529ca0cd30e082e49ac380a51de78d53151ea4f11c83500c17dc65e1f12a20`  
		Last Modified: Thu, 02 Jul 2026 02:35:41 GMT  
		Size: 555.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:156206c2cbfaa00b0d6c2f1b899b75257c1d3cf4703a3aa3f5aad82dce747f88`  
		Last Modified: Thu, 02 Jul 2026 02:35:42 GMT  
		Size: 595.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0abecbb3d6797edee9b07045c691066da4a4b0f2689f5a87eece0ccecdb287f`  
		Last Modified: Thu, 02 Jul 2026 02:35:43 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19.0` - unknown; unknown

```console
$ docker pull odoo@sha256:66dd5d5796b6d49325a24a055531c4773efd11b6328a1b3371e901818d0329bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.9 MB (70865547 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ed226e77bc0ecb308d062951fae17ca0daa0e2c55221bf889b76f71fafbda09`

```dockerfile
```

-	Layers:
	-	`sha256:7239f7c0b863c3cbf772efd7a85157ef8cfabcc901acb0b727ed2136a173016c`  
		Last Modified: Thu, 02 Jul 2026 02:35:43 GMT  
		Size: 70.8 MB (70838278 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7947d9e0c3aa864c98af70cc988a7e37862795899b04fd500c222bbc3d6fdc90`  
		Last Modified: Thu, 02 Jul 2026 02:35:38 GMT  
		Size: 27.3 KB (27269 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:19.0` - linux; ppc64le

```console
$ docker pull odoo@sha256:76639cd518e112c47dc488774fb2f7ef68a15467f4cafb79b7fcd5ad40c3a9e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **727.6 MB (727572403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fdc390cc8bbb9a23959b121b3acd1bbffe255a9f5b2ff05017173f974a8d3aa3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Mon, 22 Jun 2026 21:24:57 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:24:57 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:24:57 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:25:00 GMT
ADD file:80a608ac5245946ff88c571e9d9b1259a58a3a309e569fbe7ed52f07c2ed3b39 in / 
# Mon, 22 Jun 2026 21:25:01 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 03:00:19 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Thu, 02 Jul 2026 03:00:19 GMT
SHELL [/bin/bash -xo pipefail -c]
# Thu, 02 Jul 2026 03:00:19 GMT
ENV LANG=en_US.UTF-8
# Thu, 02 Jul 2026 03:00:19 GMT
ARG TARGETARCH=ppc64le
# Thu, 02 Jul 2026 03:00:19 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     DEBIAN_FRONTEND=noninteractive     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         npm         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Thu, 02 Jul 2026 03:00:40 GMT
# ARGS: TARGETARCH=ppc64le
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 03:00:43 GMT
# ARGS: TARGETARCH=ppc64le
RUN npm install -g rtlcss # buildkit
# Thu, 02 Jul 2026 03:00:43 GMT
ENV ODOO_VERSION=19.0
# Thu, 02 Jul 2026 03:00:43 GMT
ARG ODOO_RELEASE=20260630
# Thu, 02 Jul 2026 03:00:43 GMT
ARG ODOO_SHA=061db8d7bf1a8e42d6a684b1484cb6d6435dcbac
# Thu, 02 Jul 2026 03:02:58 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260630 ODOO_SHA=061db8d7bf1a8e42d6a684b1484cb6d6435dcbac
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Thu, 02 Jul 2026 03:02:59 GMT
COPY ./entrypoint.sh / # buildkit
# Thu, 02 Jul 2026 03:03:00 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Thu, 02 Jul 2026 03:03:00 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260630 ODOO_SHA=061db8d7bf1a8e42d6a684b1484cb6d6435dcbac
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Thu, 02 Jul 2026 03:03:00 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Thu, 02 Jul 2026 03:03:00 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Thu, 02 Jul 2026 03:03:00 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Thu, 02 Jul 2026 03:03:00 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Thu, 02 Jul 2026 03:03:00 GMT
USER odoo
# Thu, 02 Jul 2026 03:03:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 02 Jul 2026 03:03:00 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:54973426d6a3ff47babf11aed16ea13dd9377608c1d09a81758f109a18049199`  
		Last Modified: Tue, 23 Jun 2026 01:34:28 GMT  
		Size: 34.3 MB (34313476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31c284a57ed88cd0de397dddc32723b392791c411a141f1a11aceeea0526aabc`  
		Last Modified: Thu, 02 Jul 2026 03:07:48 GMT  
		Size: 265.2 MB (265154689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5db37fb0e6fd0a0c2a16003fc0e0a4a9918f8e54034c41ea4306eb2e27b89034`  
		Last Modified: Thu, 02 Jul 2026 03:07:35 GMT  
		Size: 17.5 MB (17456445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64afea98eabeebc32ec9bc3b59341d32874de1e34dc1fc68dcb67eacb58a1b1b`  
		Last Modified: Thu, 02 Jul 2026 03:07:33 GMT  
		Size: 482.7 KB (482654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce078bcd6c42bed4899e5dd8abece010083cd9d5c9ed2978534d2f89ba83666c`  
		Last Modified: Thu, 02 Jul 2026 03:08:54 GMT  
		Size: 410.2 MB (410162390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56beb94548012c951724bd3d7118c3d28a54e6446ded1a8b45a169599b0f6d91`  
		Last Modified: Thu, 02 Jul 2026 03:08:42 GMT  
		Size: 718.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52217668e21ed3ac25b87e7d481b7cfb349bbaf5b900ae1052120d72339c40db`  
		Last Modified: Thu, 02 Jul 2026 03:08:42 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d3251c109bfbc7b8cffdc954533b412f7953a7b72978a1959d4098f3133c146`  
		Last Modified: Thu, 02 Jul 2026 03:08:42 GMT  
		Size: 597.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24b2cf80de142c2bf28d5dbfea656de686aca39fdd312c1d6747ffb3d8c70b1c`  
		Last Modified: Thu, 02 Jul 2026 03:08:44 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19.0` - unknown; unknown

```console
$ docker pull odoo@sha256:0fc5b572344034d1fc0762ceef6ef9747ffb7c646746ab5fb4161d4e674291bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.9 MB (70866546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9be7008e244d68f0f4e8535539f33e726ac005e4f4706f9e6185073a4b6ef9ac`

```dockerfile
```

-	Layers:
	-	`sha256:816f8fe4d17b7ddff8439293a82de22cd3935eff1f43bf4a9752d24500192f71`  
		Last Modified: Thu, 02 Jul 2026 03:08:46 GMT  
		Size: 70.8 MB (70839380 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ca0ca22d6a32c7fdc2f80bc62c551d217b7715276615a109d3518840babf4d8e`  
		Last Modified: Thu, 02 Jul 2026 03:08:42 GMT  
		Size: 27.2 KB (27166 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:19.0-20260723`

**does not exist** (yet?)

## `odoo:latest`

```console
$ docker pull odoo@sha256:f54272f31d5f77e4146b887efb3761c98480317daf687e4b4b5e76ed8bcc08c5
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
$ docker pull odoo@sha256:3786e47dfbdb341fc98277dbf3aae5a181adcac287d4450dc42d5bdd2f186e0c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **711.2 MB (711167599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db840c3d737f61e3bb295dee2ef317f9b5439d51ecb1215f781fd00f5cd48118`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Mon, 22 Jun 2026 21:24:17 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:24:18 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:24:18 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:24:20 GMT
ADD file:8c609c85109d07bf47cf268a175b3be8bbe34fc0c41d15d99b090d099f4dc837 in / 
# Mon, 22 Jun 2026 21:24:21 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:32:30 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Thu, 02 Jul 2026 02:32:30 GMT
SHELL [/bin/bash -xo pipefail -c]
# Thu, 02 Jul 2026 02:32:30 GMT
ENV LANG=en_US.UTF-8
# Thu, 02 Jul 2026 02:32:30 GMT
ARG TARGETARCH=amd64
# Thu, 02 Jul 2026 02:32:30 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     DEBIAN_FRONTEND=noninteractive     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         npm         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Thu, 02 Jul 2026 02:32:39 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:32:40 GMT
# ARGS: TARGETARCH=amd64
RUN npm install -g rtlcss # buildkit
# Thu, 02 Jul 2026 02:32:40 GMT
ENV ODOO_VERSION=19.0
# Thu, 02 Jul 2026 02:32:40 GMT
ARG ODOO_RELEASE=20260630
# Thu, 02 Jul 2026 02:32:40 GMT
ARG ODOO_SHA=061db8d7bf1a8e42d6a684b1484cb6d6435dcbac
# Thu, 02 Jul 2026 02:33:38 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260630 ODOO_SHA=061db8d7bf1a8e42d6a684b1484cb6d6435dcbac
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Thu, 02 Jul 2026 02:33:38 GMT
COPY ./entrypoint.sh / # buildkit
# Thu, 02 Jul 2026 02:33:38 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Thu, 02 Jul 2026 02:33:38 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260630 ODOO_SHA=061db8d7bf1a8e42d6a684b1484cb6d6435dcbac
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Thu, 02 Jul 2026 02:33:38 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Thu, 02 Jul 2026 02:33:38 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Thu, 02 Jul 2026 02:33:38 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Thu, 02 Jul 2026 02:33:38 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Thu, 02 Jul 2026 02:33:38 GMT
USER odoo
# Thu, 02 Jul 2026 02:33:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 02 Jul 2026 02:33:38 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:ca2678b20700c15185707964d9211b1a6406196114bf675f568b6025d37b3888`  
		Last Modified: Tue, 23 Jun 2026 01:34:01 GMT  
		Size: 29.7 MB (29735601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78f2d745209984b7c5f62a0546250779fddc99366fd21c546fc788b97975e706`  
		Last Modified: Thu, 02 Jul 2026 02:35:50 GMT  
		Size: 254.6 MB (254553393 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5c469863ea636e11430d9f030a5ff93682581d340bf02234899a5538562efe2`  
		Last Modified: Thu, 02 Jul 2026 02:35:40 GMT  
		Size: 16.8 MB (16779607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:caea36ae9a4d779d594bbbf6a65ae4e0e258357ca0c28e547af96767947a5ab6`  
		Last Modified: Thu, 02 Jul 2026 02:35:39 GMT  
		Size: 482.7 KB (482684 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a9cf32221e3ea57f1813926eb313fecb85a4e5474e1ad98189bef6243226291`  
		Last Modified: Thu, 02 Jul 2026 02:35:53 GMT  
		Size: 409.6 MB (409613566 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccd0a34d6d47ccbd8989c7eeb0a149ddcb54cfa4dd9a7e5c46fd4b62be5e1560`  
		Last Modified: Thu, 02 Jul 2026 02:35:41 GMT  
		Size: 719.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20c51bc8bf7f82f1107f53be9817d7cd8740233a86484b7afacca897bff16b4d`  
		Last Modified: Thu, 02 Jul 2026 02:35:42 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b64ab9ed5819d9955b4d21b1ccf04faba96ada57bbaaa3f066996d247df56f3`  
		Last Modified: Thu, 02 Jul 2026 02:35:42 GMT  
		Size: 596.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1558ce7ffffa657e45ff4237c0253d02f14ccdf40a2f52ebea4f0d747558e8f`  
		Last Modified: Thu, 02 Jul 2026 02:35:44 GMT  
		Size: 877.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:latest` - unknown; unknown

```console
$ docker pull odoo@sha256:a9698fa59df688348dc52f5168e74eb295637ca8d414221da6b4fe9c19572ab1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.9 MB (70858094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d4f222a1016caecb66e2743babdd67d579a5bedd057e97e55b3f474c7a417dc`

```dockerfile
```

-	Layers:
	-	`sha256:9f7094338d2cf9fef5a8d5f5cd7326388b89af756dd77109bc541940fb2442b6`  
		Last Modified: Thu, 02 Jul 2026 02:35:44 GMT  
		Size: 70.8 MB (70830991 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2d8fa7b63e8f8f549a26e433cfa21c4cd549c8ff4a1e154f745c95533d4d5776`  
		Last Modified: Thu, 02 Jul 2026 02:35:39 GMT  
		Size: 27.1 KB (27103 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:latest` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:ad638d0e6f3186c814e1362bf2d84c13143fe81065294ea0fd78fb8874f9e35b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **707.5 MB (707508453 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad36ec4a9d3995a290136cfb9ee41857151bd309c530faf36540fb75b677d293`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Mon, 22 Jun 2026 21:25:05 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:25:05 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:25:05 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:25:07 GMT
ADD file:cdc9a547b921f36a32310f732815bbee6c6e4f5bd768ab5d49cdc0aa1b9f4785 in / 
# Mon, 22 Jun 2026 21:25:07 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:31:35 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Thu, 02 Jul 2026 02:31:35 GMT
SHELL [/bin/bash -xo pipefail -c]
# Thu, 02 Jul 2026 02:31:35 GMT
ENV LANG=en_US.UTF-8
# Thu, 02 Jul 2026 02:31:35 GMT
ARG TARGETARCH=arm64
# Thu, 02 Jul 2026 02:31:35 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     DEBIAN_FRONTEND=noninteractive     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         npm         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Thu, 02 Jul 2026 02:31:44 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:31:45 GMT
# ARGS: TARGETARCH=arm64
RUN npm install -g rtlcss # buildkit
# Thu, 02 Jul 2026 02:31:45 GMT
ENV ODOO_VERSION=19.0
# Thu, 02 Jul 2026 02:31:45 GMT
ARG ODOO_RELEASE=20260630
# Thu, 02 Jul 2026 02:31:45 GMT
ARG ODOO_SHA=061db8d7bf1a8e42d6a684b1484cb6d6435dcbac
# Thu, 02 Jul 2026 02:32:47 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260630 ODOO_SHA=061db8d7bf1a8e42d6a684b1484cb6d6435dcbac
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Thu, 02 Jul 2026 02:32:48 GMT
COPY ./entrypoint.sh / # buildkit
# Thu, 02 Jul 2026 02:32:48 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Thu, 02 Jul 2026 02:32:48 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260630 ODOO_SHA=061db8d7bf1a8e42d6a684b1484cb6d6435dcbac
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Thu, 02 Jul 2026 02:32:48 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Thu, 02 Jul 2026 02:32:48 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Thu, 02 Jul 2026 02:32:48 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Thu, 02 Jul 2026 02:32:48 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Thu, 02 Jul 2026 02:32:48 GMT
USER odoo
# Thu, 02 Jul 2026 02:32:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 02 Jul 2026 02:32:48 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:4b987da45db4d6278590ab89840c7167ea397df222f3ee4cdb77c3e15694b1a9`  
		Last Modified: Tue, 23 Jun 2026 01:34:08 GMT  
		Size: 28.9 MB (28884180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a21596ae4b0358755f0a9acc2cb8f6f0a34e95f25bed0dec3d6861ffb6b4a479`  
		Last Modified: Thu, 02 Jul 2026 02:35:49 GMT  
		Size: 252.0 MB (251958187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:405a907c4677f01eda1787a2fb07185d3b3f4e9b6e0409bccd7427c4e6037383`  
		Last Modified: Thu, 02 Jul 2026 02:35:39 GMT  
		Size: 16.7 MB (16718147 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bdf514089bcd33f525aff7c5f8a598f815b09d7578eb79c0c280501533762e6`  
		Last Modified: Thu, 02 Jul 2026 02:35:39 GMT  
		Size: 482.6 KB (482644 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcb64f95b07964cc13b26312c0e6eff26b5552c07594c37a44afbb4fdf0645c7`  
		Last Modified: Thu, 02 Jul 2026 02:35:53 GMT  
		Size: 409.5 MB (409462551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a7a7fefe658756e1e9a1cc75b9b80b9445b8d6a518428b1ceeb4ffb7779be1e`  
		Last Modified: Thu, 02 Jul 2026 02:35:40 GMT  
		Size: 716.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40529ca0cd30e082e49ac380a51de78d53151ea4f11c83500c17dc65e1f12a20`  
		Last Modified: Thu, 02 Jul 2026 02:35:41 GMT  
		Size: 555.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:156206c2cbfaa00b0d6c2f1b899b75257c1d3cf4703a3aa3f5aad82dce747f88`  
		Last Modified: Thu, 02 Jul 2026 02:35:42 GMT  
		Size: 595.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0abecbb3d6797edee9b07045c691066da4a4b0f2689f5a87eece0ccecdb287f`  
		Last Modified: Thu, 02 Jul 2026 02:35:43 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:latest` - unknown; unknown

```console
$ docker pull odoo@sha256:66dd5d5796b6d49325a24a055531c4773efd11b6328a1b3371e901818d0329bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.9 MB (70865547 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ed226e77bc0ecb308d062951fae17ca0daa0e2c55221bf889b76f71fafbda09`

```dockerfile
```

-	Layers:
	-	`sha256:7239f7c0b863c3cbf772efd7a85157ef8cfabcc901acb0b727ed2136a173016c`  
		Last Modified: Thu, 02 Jul 2026 02:35:43 GMT  
		Size: 70.8 MB (70838278 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7947d9e0c3aa864c98af70cc988a7e37862795899b04fd500c222bbc3d6fdc90`  
		Last Modified: Thu, 02 Jul 2026 02:35:38 GMT  
		Size: 27.3 KB (27269 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:latest` - linux; ppc64le

```console
$ docker pull odoo@sha256:76639cd518e112c47dc488774fb2f7ef68a15467f4cafb79b7fcd5ad40c3a9e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **727.6 MB (727572403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fdc390cc8bbb9a23959b121b3acd1bbffe255a9f5b2ff05017173f974a8d3aa3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Mon, 22 Jun 2026 21:24:57 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:24:57 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:24:57 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:25:00 GMT
ADD file:80a608ac5245946ff88c571e9d9b1259a58a3a309e569fbe7ed52f07c2ed3b39 in / 
# Mon, 22 Jun 2026 21:25:01 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 03:00:19 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Thu, 02 Jul 2026 03:00:19 GMT
SHELL [/bin/bash -xo pipefail -c]
# Thu, 02 Jul 2026 03:00:19 GMT
ENV LANG=en_US.UTF-8
# Thu, 02 Jul 2026 03:00:19 GMT
ARG TARGETARCH=ppc64le
# Thu, 02 Jul 2026 03:00:19 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     DEBIAN_FRONTEND=noninteractive     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         npm         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Thu, 02 Jul 2026 03:00:40 GMT
# ARGS: TARGETARCH=ppc64le
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 03:00:43 GMT
# ARGS: TARGETARCH=ppc64le
RUN npm install -g rtlcss # buildkit
# Thu, 02 Jul 2026 03:00:43 GMT
ENV ODOO_VERSION=19.0
# Thu, 02 Jul 2026 03:00:43 GMT
ARG ODOO_RELEASE=20260630
# Thu, 02 Jul 2026 03:00:43 GMT
ARG ODOO_SHA=061db8d7bf1a8e42d6a684b1484cb6d6435dcbac
# Thu, 02 Jul 2026 03:02:58 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260630 ODOO_SHA=061db8d7bf1a8e42d6a684b1484cb6d6435dcbac
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Thu, 02 Jul 2026 03:02:59 GMT
COPY ./entrypoint.sh / # buildkit
# Thu, 02 Jul 2026 03:03:00 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Thu, 02 Jul 2026 03:03:00 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260630 ODOO_SHA=061db8d7bf1a8e42d6a684b1484cb6d6435dcbac
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Thu, 02 Jul 2026 03:03:00 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Thu, 02 Jul 2026 03:03:00 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Thu, 02 Jul 2026 03:03:00 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Thu, 02 Jul 2026 03:03:00 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Thu, 02 Jul 2026 03:03:00 GMT
USER odoo
# Thu, 02 Jul 2026 03:03:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 02 Jul 2026 03:03:00 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:54973426d6a3ff47babf11aed16ea13dd9377608c1d09a81758f109a18049199`  
		Last Modified: Tue, 23 Jun 2026 01:34:28 GMT  
		Size: 34.3 MB (34313476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31c284a57ed88cd0de397dddc32723b392791c411a141f1a11aceeea0526aabc`  
		Last Modified: Thu, 02 Jul 2026 03:07:48 GMT  
		Size: 265.2 MB (265154689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5db37fb0e6fd0a0c2a16003fc0e0a4a9918f8e54034c41ea4306eb2e27b89034`  
		Last Modified: Thu, 02 Jul 2026 03:07:35 GMT  
		Size: 17.5 MB (17456445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64afea98eabeebc32ec9bc3b59341d32874de1e34dc1fc68dcb67eacb58a1b1b`  
		Last Modified: Thu, 02 Jul 2026 03:07:33 GMT  
		Size: 482.7 KB (482654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce078bcd6c42bed4899e5dd8abece010083cd9d5c9ed2978534d2f89ba83666c`  
		Last Modified: Thu, 02 Jul 2026 03:08:54 GMT  
		Size: 410.2 MB (410162390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56beb94548012c951724bd3d7118c3d28a54e6446ded1a8b45a169599b0f6d91`  
		Last Modified: Thu, 02 Jul 2026 03:08:42 GMT  
		Size: 718.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52217668e21ed3ac25b87e7d481b7cfb349bbaf5b900ae1052120d72339c40db`  
		Last Modified: Thu, 02 Jul 2026 03:08:42 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d3251c109bfbc7b8cffdc954533b412f7953a7b72978a1959d4098f3133c146`  
		Last Modified: Thu, 02 Jul 2026 03:08:42 GMT  
		Size: 597.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24b2cf80de142c2bf28d5dbfea656de686aca39fdd312c1d6747ffb3d8c70b1c`  
		Last Modified: Thu, 02 Jul 2026 03:08:44 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:latest` - unknown; unknown

```console
$ docker pull odoo@sha256:0fc5b572344034d1fc0762ceef6ef9747ffb7c646746ab5fb4161d4e674291bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.9 MB (70866546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9be7008e244d68f0f4e8535539f33e726ac005e4f4706f9e6185073a4b6ef9ac`

```dockerfile
```

-	Layers:
	-	`sha256:816f8fe4d17b7ddff8439293a82de22cd3935eff1f43bf4a9752d24500192f71`  
		Last Modified: Thu, 02 Jul 2026 03:08:46 GMT  
		Size: 70.8 MB (70839380 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ca0ca22d6a32c7fdc2f80bc62c551d217b7715276615a109d3518840babf4d8e`  
		Last Modified: Thu, 02 Jul 2026 03:08:42 GMT  
		Size: 27.2 KB (27166 bytes)  
		MIME: application/vnd.in-toto+json
