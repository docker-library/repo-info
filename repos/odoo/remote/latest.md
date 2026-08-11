## `odoo:latest`

```console
$ docker pull odoo@sha256:94a4f480b8039dc9ca2bca9e77e59f97d3311f66e2aad663cf2670be9c66d4ea
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
$ docker pull odoo@sha256:7fcd40c8638205f4844240397712ebbaa07918eb54f734f09e2c61274c3ae83f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **698.6 MB (698561583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09e7bc64740590e083400ad0f96745ca7290e4fda6bfa1dd1dedc3cccd88e51b`
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
# Mon, 10 Aug 2026 23:14:18 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Mon, 10 Aug 2026 23:14:18 GMT
SHELL [/bin/bash -xo pipefail -c]
# Mon, 10 Aug 2026 23:14:18 GMT
ENV LANG=en_US.UTF-8
# Mon, 10 Aug 2026 23:14:18 GMT
ARG TARGETARCH=amd64
# Mon, 10 Aug 2026 23:14:18 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Mon, 10 Aug 2026 23:14:30 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 10 Aug 2026 23:15:45 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 10 Aug 2026 23:15:45 GMT
ENV ODOO_VERSION=19.0
# Mon, 10 Aug 2026 23:15:45 GMT
ARG ODOO_RELEASE=20260810
# Mon, 10 Aug 2026 23:15:45 GMT
ARG ODOO_SHA=bacbca01d50578864c2628cb26eef0368abc01cd
# Mon, 10 Aug 2026 23:16:45 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260810 ODOO_SHA=bacbca01d50578864c2628cb26eef0368abc01cd
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Mon, 10 Aug 2026 23:16:46 GMT
COPY ./entrypoint.sh / # buildkit
# Mon, 10 Aug 2026 23:16:46 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Mon, 10 Aug 2026 23:16:46 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260810 ODOO_SHA=bacbca01d50578864c2628cb26eef0368abc01cd
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Mon, 10 Aug 2026 23:16:46 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Mon, 10 Aug 2026 23:16:46 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Mon, 10 Aug 2026 23:16:46 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Mon, 10 Aug 2026 23:16:46 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Mon, 10 Aug 2026 23:16:46 GMT
USER odoo
# Mon, 10 Aug 2026 23:16:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 10 Aug 2026 23:16:46 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22721a676ac2b03761eb493d8dab8306d10e7f05f1f9f828fa36c0d5960f7cfd`  
		Last Modified: Mon, 10 Aug 2026 23:18:31 GMT  
		Size: 241.1 MB (241082579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e688ec4ba05500ad5192d8d9cf02b5da48f01bb496c44a1131f7b1073710f382`  
		Last Modified: Mon, 10 Aug 2026 23:18:24 GMT  
		Size: 14.2 MB (14202700 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8473d20727b40904770e327bba308675f7dd896c6808c946b3799390de3900d5`  
		Last Modified: Mon, 10 Aug 2026 23:18:22 GMT  
		Size: 869.3 KB (869292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70d8f74617e381e5405d3ef4e0f86f35490cfa163b5a3ade1a7a245453f6dc05`  
		Last Modified: Mon, 10 Aug 2026 23:18:34 GMT  
		Size: 412.7 MB (412653156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:974bd2291e056ab1636e9f12e8d3ab6585fbcdf75f8b084b6973630f9ff83d6f`  
		Last Modified: Mon, 10 Aug 2026 23:18:24 GMT  
		Size: 718.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32c131f5f8f7b50e2d6d515910f037273ff3f997ffc5d7e37983319715b6cc4a`  
		Last Modified: Mon, 10 Aug 2026 23:18:25 GMT  
		Size: 555.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:835de79a363a0dd6d9b336218d734c994518be6d38634ff7ac066f6e322353ef`  
		Last Modified: Mon, 10 Aug 2026 23:18:25 GMT  
		Size: 596.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0363899787188e97043d6eeec291f880bf2dbdb4a5ca699d8e4c98397712c6c`  
		Last Modified: Mon, 10 Aug 2026 23:18:26 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:latest` - unknown; unknown

```console
$ docker pull odoo@sha256:9a449973022bbda0c50a914ce83d583fae6b27094c36e35ecebd112f62d1fdcc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.3 MB (52306755 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56c7ac8e1eda37f1acf380467d00fcaf70c4096ce6abe2a4ae2473df29e32351`

```dockerfile
```

-	Layers:
	-	`sha256:0086ec3fa525595d32beb00f925a07be077513821e8e1681984e275314ff0e0f`  
		Last Modified: Mon, 10 Aug 2026 23:18:26 GMT  
		Size: 52.3 MB (52279264 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:354b0258c81734f1adbab5d0e4be2870ec01d35fd5563e22b0b039cf8f1fb8ca`  
		Last Modified: Mon, 10 Aug 2026 23:18:22 GMT  
		Size: 27.5 KB (27491 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:latest` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:026109b7ba78d00d018e59693a3355386304067d8b8caf6f17990031b9c269f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **692.6 MB (692564632 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf01da24e093ee75fed80192c6a5e7895453fa9642934ef75f6928d89c64cab4`
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
# Mon, 10 Aug 2026 23:15:26 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Mon, 10 Aug 2026 23:15:26 GMT
SHELL [/bin/bash -xo pipefail -c]
# Mon, 10 Aug 2026 23:15:26 GMT
ENV LANG=en_US.UTF-8
# Mon, 10 Aug 2026 23:15:26 GMT
ARG TARGETARCH=arm64
# Mon, 10 Aug 2026 23:15:26 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Mon, 10 Aug 2026 23:15:35 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 10 Aug 2026 23:16:36 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 10 Aug 2026 23:16:36 GMT
ENV ODOO_VERSION=19.0
# Mon, 10 Aug 2026 23:16:36 GMT
ARG ODOO_RELEASE=20260810
# Mon, 10 Aug 2026 23:16:36 GMT
ARG ODOO_SHA=bacbca01d50578864c2628cb26eef0368abc01cd
# Mon, 10 Aug 2026 23:17:42 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260810 ODOO_SHA=bacbca01d50578864c2628cb26eef0368abc01cd
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Mon, 10 Aug 2026 23:17:43 GMT
COPY ./entrypoint.sh / # buildkit
# Mon, 10 Aug 2026 23:17:43 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Mon, 10 Aug 2026 23:17:43 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260810 ODOO_SHA=bacbca01d50578864c2628cb26eef0368abc01cd
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Mon, 10 Aug 2026 23:17:43 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Mon, 10 Aug 2026 23:17:43 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Mon, 10 Aug 2026 23:17:43 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Mon, 10 Aug 2026 23:17:43 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Mon, 10 Aug 2026 23:17:43 GMT
USER odoo
# Mon, 10 Aug 2026 23:17:43 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 10 Aug 2026 23:17:43 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec668771dda4e14ddd665eeb77c3a0dd0d35f6de6a7c6a785fb5abeca53355a1`  
		Last Modified: Mon, 10 Aug 2026 23:19:39 GMT  
		Size: 236.1 MB (236101879 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff73463460a89b59a665bdf547eb3fb95c928b030f9a291f0910b5164aec1475`  
		Last Modified: Mon, 10 Aug 2026 23:19:31 GMT  
		Size: 14.2 MB (14171320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cd625d078de5fdc8de66bd2c5c15147f9cc8f7a244ac38c74b4b349588eb59c`  
		Last Modified: Mon, 10 Aug 2026 23:19:29 GMT  
		Size: 869.2 KB (869176 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4004ed7c8cf77142a40c33a2de0a93968ffacbb2f5eec882763df1e026048b45`  
		Last Modified: Mon, 10 Aug 2026 23:19:42 GMT  
		Size: 412.5 MB (412532689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58dd3541bf41d961bad90dcb54b12d86dcad8bcafdfab0382ac006ab37c195f8`  
		Last Modified: Mon, 10 Aug 2026 23:19:31 GMT  
		Size: 719.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73c27908214a5cc9dc7a73f42d2a5a7b83c8ee498099a87ba0d470dea381c99c`  
		Last Modified: Mon, 10 Aug 2026 23:19:32 GMT  
		Size: 557.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df81a2bb478837ac2a51b7d2166616a82a0c5147a15dc73871a264807236facc`  
		Last Modified: Mon, 10 Aug 2026 23:19:32 GMT  
		Size: 596.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fe6b4b55507cc73b3f507506d5413624694afda91988869fab43794aabf805d`  
		Last Modified: Mon, 10 Aug 2026 23:19:33 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:latest` - unknown; unknown

```console
$ docker pull odoo@sha256:ca30d1c388fefa962786f80b2c7db34f83f6acb19f75d449ccf5f7b0ad16e4e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.3 MB (52314203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18410a1b336efdb37dfbfce285566b2c1896356db12d6e5531ab7e0390b7cca4`

```dockerfile
```

-	Layers:
	-	`sha256:66cd02957b5476783c60ac1637136213eb3db0cdc57c3f6cff0d4b1f18a748a1`  
		Last Modified: Mon, 10 Aug 2026 23:19:33 GMT  
		Size: 52.3 MB (52286548 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1c54e64f05a11019f25732c4cfa58b0fb63d48ae3ce1bdd7b8d239b10aee2f8f`  
		Last Modified: Mon, 10 Aug 2026 23:19:29 GMT  
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
