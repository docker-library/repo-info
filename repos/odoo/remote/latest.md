## `odoo:latest`

```console
$ docker pull odoo@sha256:84d09c623fc78050c2195161b98897995ba68c87aa4212d0ec0f4f3ce88c7610
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
