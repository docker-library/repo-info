<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `odoo`

-	[`odoo:18`](#odoo18)
-	[`odoo:18.0`](#odoo180)
-	[`odoo:18.0-20260926`](#odoo180-20260926)
-	[`odoo:19`](#odoo19)
-	[`odoo:19.0`](#odoo190)
-	[`odoo:19.0-20260926`](#odoo190-20260926)
-	[`odoo:20`](#odoo20)
-	[`odoo:20.0`](#odoo200)
-	[`odoo:20.0-20260926`](#odoo200-20260926)
-	[`odoo:latest`](#odoolatest)

## `odoo:18`

```console
$ docker pull odoo@sha256:35e57d54c489861082b647d091744d63510365f07400ede55b45bb6ada02a1cf
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
$ docker pull odoo@sha256:99a96c875759245a075c6ca9fe71a17d0927b301e616075257d8d3cf1ccab91f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **677.0 MB (676951737 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1616522ef3185fc8bd7522224877cd8542ad99090a7507a824e7c203f54bb26d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Fri, 18 Sep 2026 21:20:35 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:20:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:20:35 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:20:37 GMT
ADD file:6c214fc3c3c22122c7eb68f7fb32783df308e60b1eaeb9baf7e4d0cc961d448d in / 
# Fri, 18 Sep 2026 21:20:38 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:33:04 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Fri, 02 Oct 2026 01:33:04 GMT
SHELL [/bin/bash -xo pipefail -c]
# Fri, 02 Oct 2026 01:33:04 GMT
ENV LANG=en_US.UTF-8
# Fri, 02 Oct 2026 01:33:04 GMT
ARG TARGETARCH=amd64
# Fri, 02 Oct 2026 01:33:04 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Fri, 02 Oct 2026 01:33:12 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:34:25 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:34:25 GMT
ENV ODOO_VERSION=18.0
# Fri, 02 Oct 2026 01:34:25 GMT
ARG ODOO_RELEASE=20260926
# Fri, 02 Oct 2026 01:34:25 GMT
ARG ODOO_SHA=b6a268db3fca5ce831a35070dd3c4bfc6a575b85
# Fri, 02 Oct 2026 01:35:15 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260926 ODOO_SHA=b6a268db3fca5ce831a35070dd3c4bfc6a575b85
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Fri, 02 Oct 2026 01:35:15 GMT
COPY ./entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:35:15 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Fri, 02 Oct 2026 01:35:15 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260926 ODOO_SHA=b6a268db3fca5ce831a35070dd3c4bfc6a575b85
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Fri, 02 Oct 2026 01:35:15 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Fri, 02 Oct 2026 01:35:15 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Fri, 02 Oct 2026 01:35:15 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Fri, 02 Oct 2026 01:35:16 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Fri, 02 Oct 2026 01:35:16 GMT
USER odoo
# Fri, 02 Oct 2026 01:35:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 02 Oct 2026 01:35:16 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:a60ef8ec184edb5ed91f5983f00261359fb2fe20f603e8d488b9477d32fcad70`  
		Last Modified: Fri, 18 Sep 2026 22:29:51 GMT  
		Size: 29.8 MB (29764422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b0b6fa9ae8afc2fb68506410c9ea5c7569103a96cc73cfea127fbad08b1909a`  
		Last Modified: Fri, 02 Oct 2026 01:36:43 GMT  
		Size: 241.1 MB (241119589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddf3ad9dbdde9ce099f2263f4afadb142c8235c2797fdeac8944579b2e2b8732`  
		Last Modified: Fri, 02 Oct 2026 01:36:32 GMT  
		Size: 14.2 MB (14226470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:265217cd3579d252d885bde4f3bcde94b95aa02dcfbf029b925056d5481993cc`  
		Last Modified: Fri, 02 Oct 2026 01:36:31 GMT  
		Size: 871.0 KB (870975 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:257256ac0e2dcbf92a973ce923b2a9286613fe8ac13a0800135b95221c5a8206`  
		Last Modified: Fri, 02 Oct 2026 01:36:47 GMT  
		Size: 391.0 MB (390967483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:719f2238279735a6c60a81b6c5a72456e6f617517524f03ec683b2e5ea9f4d8c`  
		Last Modified: Fri, 02 Oct 2026 01:36:32 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dee70ab7e2610169990cc15625230bf33b0ff75e7cd03dba55cb89b3c8282ced`  
		Last Modified: Fri, 02 Oct 2026 01:36:34 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:108318c4b72609d1499a50e0b609bff06f292a99787b5e35c5ec62e08b946db2`  
		Last Modified: Fri, 02 Oct 2026 01:36:34 GMT  
		Size: 596.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8554ae3d7d3184acb3b46f372f94e67783defc9d3d84e872f088da40cccac86b`  
		Last Modified: Fri, 02 Oct 2026 01:36:35 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18` - unknown; unknown

```console
$ docker pull odoo@sha256:e700297ec498fabcd8089f3feeeb754709bbd71727c9795ce0d9dba0fd13cddf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.9 MB (43941153 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e8879a47d3c14b46f3e661870b52ff11282a478b27c7e60a839431656fbb373`

```dockerfile
```

-	Layers:
	-	`sha256:25579dd7a00704f2b504903d4c451695abbb4044d3ad2e13eca59cf4a33b0ac3`  
		Last Modified: Fri, 02 Oct 2026 01:36:34 GMT  
		Size: 43.9 MB (43913957 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f566b55c58f1fe7b9e58b051d9bf68d229c8e5d3218e61b59ea1528d1b20679a`  
		Last Modified: Fri, 02 Oct 2026 01:36:31 GMT  
		Size: 27.2 KB (27196 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:18` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:7cda9ea19a04437b77ca48b47352aabe29cc8736c7bb971208d133e8995ea131
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **673.3 MB (673282660 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de7a4dfe1f7eb7d30f1593c79c4a791549affb47260e2748d52135184894d15c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Fri, 18 Sep 2026 21:23:09 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:23:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:23:10 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:23:13 GMT
ADD file:1cd6cb2db79bbe57d4c67f2fc8379cad96159285fa5a44e68dad06261eee82b4 in / 
# Fri, 18 Sep 2026 21:23:13 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:32:54 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Fri, 02 Oct 2026 01:32:54 GMT
SHELL [/bin/bash -xo pipefail -c]
# Fri, 02 Oct 2026 01:32:54 GMT
ENV LANG=en_US.UTF-8
# Fri, 02 Oct 2026 01:32:54 GMT
ARG TARGETARCH=arm64
# Fri, 02 Oct 2026 01:32:54 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Fri, 02 Oct 2026 01:33:02 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:34:04 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:34:04 GMT
ENV ODOO_VERSION=18.0
# Fri, 02 Oct 2026 01:34:04 GMT
ARG ODOO_RELEASE=20260926
# Fri, 02 Oct 2026 01:34:04 GMT
ARG ODOO_SHA=b6a268db3fca5ce831a35070dd3c4bfc6a575b85
# Fri, 02 Oct 2026 01:35:05 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260926 ODOO_SHA=b6a268db3fca5ce831a35070dd3c4bfc6a575b85
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Fri, 02 Oct 2026 01:35:05 GMT
COPY ./entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:35:05 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Fri, 02 Oct 2026 01:35:05 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260926 ODOO_SHA=b6a268db3fca5ce831a35070dd3c4bfc6a575b85
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Fri, 02 Oct 2026 01:35:05 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Fri, 02 Oct 2026 01:35:05 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Fri, 02 Oct 2026 01:35:05 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Fri, 02 Oct 2026 01:35:05 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Fri, 02 Oct 2026 01:35:05 GMT
USER odoo
# Fri, 02 Oct 2026 01:35:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 02 Oct 2026 01:35:05 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:90812e242c93750dbd37ce847c7d3db62c2c53035367d1d89c61184f168f5d37`  
		Last Modified: Fri, 18 Sep 2026 22:29:58 GMT  
		Size: 28.9 MB (28940087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f527d1dd374d2feef787b69cba6da1e1d0b73e1f990668b319d56fb4c68db191`  
		Last Modified: Fri, 02 Oct 2026 01:36:41 GMT  
		Size: 238.5 MB (238455147 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bac02ea145931bfb4b28e08d6cac390772e5106b56969922a952b5dcc20e7668`  
		Last Modified: Fri, 02 Oct 2026 01:36:33 GMT  
		Size: 14.2 MB (14197449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bcad417377e98e1a36bc073cbd9188bda2c9cc22f274987a2a01b3daef4444a`  
		Last Modified: Fri, 02 Oct 2026 01:36:32 GMT  
		Size: 870.9 KB (870863 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:343da5d256e42fc2d3b0ee30b3483198c9bb3088918fd38e0cc566aa11ac70b4`  
		Last Modified: Fri, 02 Oct 2026 01:36:43 GMT  
		Size: 390.8 MB (390816314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05debafe2b1894ae21fcdcf8635c7ad148186031209aaee80ba5930776003653`  
		Last Modified: Fri, 02 Oct 2026 01:36:33 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:317ee3b4c3c45c48045e80b4ec90799d7998e84967e6c00c4cf6ea4431bf2824`  
		Last Modified: Fri, 02 Oct 2026 01:36:35 GMT  
		Size: 557.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ec59635d33719b1cba79a3506b3fefdb9737916505710cfdcd1fd0b5f33d7ca`  
		Last Modified: Fri, 02 Oct 2026 01:36:35 GMT  
		Size: 597.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddf2e1d090f77ac818e031a02af332009b8d7ec16bfa09425f0cf74ea26f37c5`  
		Last Modified: Fri, 02 Oct 2026 01:36:36 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18` - unknown; unknown

```console
$ docker pull odoo@sha256:b3e8a046afdb447f4c539c73e95e7aff7505a8d5e2de961ff4187458602ca23a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.9 MB (43948578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a59b2df0f01d8d58cc94d54e828b787325a3ebaf11e2b361568a81596628568f`

```dockerfile
```

-	Layers:
	-	`sha256:ba192ccb9248239a12e8a695be5577580b1553b2f0439f4e20f36458b1c70569`  
		Last Modified: Fri, 02 Oct 2026 01:36:35 GMT  
		Size: 43.9 MB (43921229 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:62aba4f78510a85c990bf0e5f15a785369a10e39e4656f5391641d9ed471c19e`  
		Last Modified: Fri, 02 Oct 2026 01:36:32 GMT  
		Size: 27.3 KB (27349 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:18` - linux; ppc64le

```console
$ docker pull odoo@sha256:699c703b1f1490f4115f14f733157c2a0d2c2a6edfaedd82b416a7307b27112b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **693.5 MB (693470484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15bee23e46d1f8d6fca4e840a93b205bcfda78443995ac0f86bf9fa7f99a87b4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Fri, 11 Sep 2026 11:54:01 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:54:01 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:54:01 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:54:04 GMT
ADD file:23a54200dc45d2e165b80cd813d76a8863b2e15710bb20b738f813328f74d05b in / 
# Fri, 11 Sep 2026 11:54:05 GMT
CMD ["/bin/bash"]
# Mon, 28 Sep 2026 18:56:30 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Mon, 28 Sep 2026 18:56:30 GMT
SHELL [/bin/bash -xo pipefail -c]
# Mon, 28 Sep 2026 18:56:30 GMT
ENV LANG=en_US.UTF-8
# Mon, 28 Sep 2026 18:56:30 GMT
ARG TARGETARCH=ppc64le
# Mon, 28 Sep 2026 18:56:30 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Mon, 28 Sep 2026 18:56:52 GMT
# ARGS: TARGETARCH=ppc64le
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 28 Sep 2026 19:01:02 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 28 Sep 2026 19:01:02 GMT
ENV ODOO_VERSION=18.0
# Mon, 28 Sep 2026 19:01:02 GMT
ARG ODOO_RELEASE=20260926
# Mon, 28 Sep 2026 19:01:02 GMT
ARG ODOO_SHA=b6a268db3fca5ce831a35070dd3c4bfc6a575b85
# Mon, 28 Sep 2026 19:11:54 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260926 ODOO_SHA=b6a268db3fca5ce831a35070dd3c4bfc6a575b85
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Mon, 28 Sep 2026 19:11:55 GMT
COPY ./entrypoint.sh / # buildkit
# Mon, 28 Sep 2026 19:11:56 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Mon, 28 Sep 2026 19:11:56 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260926 ODOO_SHA=b6a268db3fca5ce831a35070dd3c4bfc6a575b85
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Mon, 28 Sep 2026 19:11:56 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Mon, 28 Sep 2026 19:11:56 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Mon, 28 Sep 2026 19:11:56 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Mon, 28 Sep 2026 19:11:56 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Mon, 28 Sep 2026 19:11:56 GMT
USER odoo
# Mon, 28 Sep 2026 19:11:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 28 Sep 2026 19:11:56 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:a7067f7ee788cc3e90f83fa0ac84d48a200fde4469a2a5e638f059842a8f11d1`  
		Last Modified: Fri, 11 Sep 2026 13:39:01 GMT  
		Size: 34.4 MB (34376958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7056e5335eeda1a995ed8e76b1a85d28b76a6c5a14082a11caf0eb7e8a3360e5`  
		Last Modified: Mon, 28 Sep 2026 19:09:44 GMT  
		Size: 249.4 MB (249411724 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ef9b20d478d7bc13e8b5c5584b5a55ee99191a50a62d92801d4496c3078a2eb`  
		Last Modified: Mon, 28 Sep 2026 19:09:35 GMT  
		Size: 17.3 MB (17306945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74facc9a28a86e8d9f454c26a78b0ad456c1dcffcab77f8f363e061cc0ded848`  
		Last Modified: Mon, 28 Sep 2026 19:09:34 GMT  
		Size: 870.0 KB (869959 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7fdae333ddb2ba70f98cde185d6156f7be171425c4c2b0c05c3d7ff0b6ba0fa`  
		Last Modified: Mon, 28 Sep 2026 19:16:35 GMT  
		Size: 391.5 MB (391502099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce7dca079dd1ad2c115c66b4645611c9122a93401087763f24c24d7450209e11`  
		Last Modified: Mon, 28 Sep 2026 19:16:25 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62d537c2483176795a82c0ea979575370ed8dc8aa12955176e58df4440912af3`  
		Last Modified: Mon, 28 Sep 2026 19:16:25 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb71b3731ffb3477c77bb67aa067c12af40d851a739518fcb9378bb4cc4023a1`  
		Last Modified: Mon, 28 Sep 2026 19:16:25 GMT  
		Size: 598.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c234cdfd4ab13a2f30e7622775be373d1eccfca147777cc25d7ab907a1d22126`  
		Last Modified: Mon, 28 Sep 2026 19:16:27 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18` - unknown; unknown

```console
$ docker pull odoo@sha256:417c04b74386af4c45d663c8d19f8a2c578f73dfd9087b7b7156f1407ffe2f60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.9 MB (43949574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fa88779743faf36751c011eb358b24982a0fed0bc14da4a88515fb55cd9a5dc`

```dockerfile
```

-	Layers:
	-	`sha256:cd3ee16aee4b551fbbb7fe55c27bbaafb8dd6d8af1cab4323d0c412e4fcc3a15`  
		Last Modified: Mon, 28 Sep 2026 19:16:28 GMT  
		Size: 43.9 MB (43922321 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:39be6e77fdd57557566968b000482e5988f1cae8b0f930619d812461331ba064`  
		Last Modified: Mon, 28 Sep 2026 19:16:25 GMT  
		Size: 27.3 KB (27253 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:18.0`

```console
$ docker pull odoo@sha256:35e57d54c489861082b647d091744d63510365f07400ede55b45bb6ada02a1cf
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
$ docker pull odoo@sha256:99a96c875759245a075c6ca9fe71a17d0927b301e616075257d8d3cf1ccab91f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **677.0 MB (676951737 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1616522ef3185fc8bd7522224877cd8542ad99090a7507a824e7c203f54bb26d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Fri, 18 Sep 2026 21:20:35 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:20:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:20:35 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:20:37 GMT
ADD file:6c214fc3c3c22122c7eb68f7fb32783df308e60b1eaeb9baf7e4d0cc961d448d in / 
# Fri, 18 Sep 2026 21:20:38 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:33:04 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Fri, 02 Oct 2026 01:33:04 GMT
SHELL [/bin/bash -xo pipefail -c]
# Fri, 02 Oct 2026 01:33:04 GMT
ENV LANG=en_US.UTF-8
# Fri, 02 Oct 2026 01:33:04 GMT
ARG TARGETARCH=amd64
# Fri, 02 Oct 2026 01:33:04 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Fri, 02 Oct 2026 01:33:12 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:34:25 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:34:25 GMT
ENV ODOO_VERSION=18.0
# Fri, 02 Oct 2026 01:34:25 GMT
ARG ODOO_RELEASE=20260926
# Fri, 02 Oct 2026 01:34:25 GMT
ARG ODOO_SHA=b6a268db3fca5ce831a35070dd3c4bfc6a575b85
# Fri, 02 Oct 2026 01:35:15 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260926 ODOO_SHA=b6a268db3fca5ce831a35070dd3c4bfc6a575b85
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Fri, 02 Oct 2026 01:35:15 GMT
COPY ./entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:35:15 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Fri, 02 Oct 2026 01:35:15 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260926 ODOO_SHA=b6a268db3fca5ce831a35070dd3c4bfc6a575b85
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Fri, 02 Oct 2026 01:35:15 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Fri, 02 Oct 2026 01:35:15 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Fri, 02 Oct 2026 01:35:15 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Fri, 02 Oct 2026 01:35:16 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Fri, 02 Oct 2026 01:35:16 GMT
USER odoo
# Fri, 02 Oct 2026 01:35:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 02 Oct 2026 01:35:16 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:a60ef8ec184edb5ed91f5983f00261359fb2fe20f603e8d488b9477d32fcad70`  
		Last Modified: Fri, 18 Sep 2026 22:29:51 GMT  
		Size: 29.8 MB (29764422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b0b6fa9ae8afc2fb68506410c9ea5c7569103a96cc73cfea127fbad08b1909a`  
		Last Modified: Fri, 02 Oct 2026 01:36:43 GMT  
		Size: 241.1 MB (241119589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddf3ad9dbdde9ce099f2263f4afadb142c8235c2797fdeac8944579b2e2b8732`  
		Last Modified: Fri, 02 Oct 2026 01:36:32 GMT  
		Size: 14.2 MB (14226470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:265217cd3579d252d885bde4f3bcde94b95aa02dcfbf029b925056d5481993cc`  
		Last Modified: Fri, 02 Oct 2026 01:36:31 GMT  
		Size: 871.0 KB (870975 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:257256ac0e2dcbf92a973ce923b2a9286613fe8ac13a0800135b95221c5a8206`  
		Last Modified: Fri, 02 Oct 2026 01:36:47 GMT  
		Size: 391.0 MB (390967483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:719f2238279735a6c60a81b6c5a72456e6f617517524f03ec683b2e5ea9f4d8c`  
		Last Modified: Fri, 02 Oct 2026 01:36:32 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dee70ab7e2610169990cc15625230bf33b0ff75e7cd03dba55cb89b3c8282ced`  
		Last Modified: Fri, 02 Oct 2026 01:36:34 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:108318c4b72609d1499a50e0b609bff06f292a99787b5e35c5ec62e08b946db2`  
		Last Modified: Fri, 02 Oct 2026 01:36:34 GMT  
		Size: 596.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8554ae3d7d3184acb3b46f372f94e67783defc9d3d84e872f088da40cccac86b`  
		Last Modified: Fri, 02 Oct 2026 01:36:35 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18.0` - unknown; unknown

```console
$ docker pull odoo@sha256:e700297ec498fabcd8089f3feeeb754709bbd71727c9795ce0d9dba0fd13cddf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.9 MB (43941153 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e8879a47d3c14b46f3e661870b52ff11282a478b27c7e60a839431656fbb373`

```dockerfile
```

-	Layers:
	-	`sha256:25579dd7a00704f2b504903d4c451695abbb4044d3ad2e13eca59cf4a33b0ac3`  
		Last Modified: Fri, 02 Oct 2026 01:36:34 GMT  
		Size: 43.9 MB (43913957 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f566b55c58f1fe7b9e58b051d9bf68d229c8e5d3218e61b59ea1528d1b20679a`  
		Last Modified: Fri, 02 Oct 2026 01:36:31 GMT  
		Size: 27.2 KB (27196 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:18.0` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:7cda9ea19a04437b77ca48b47352aabe29cc8736c7bb971208d133e8995ea131
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **673.3 MB (673282660 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de7a4dfe1f7eb7d30f1593c79c4a791549affb47260e2748d52135184894d15c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Fri, 18 Sep 2026 21:23:09 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:23:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:23:10 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:23:13 GMT
ADD file:1cd6cb2db79bbe57d4c67f2fc8379cad96159285fa5a44e68dad06261eee82b4 in / 
# Fri, 18 Sep 2026 21:23:13 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:32:54 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Fri, 02 Oct 2026 01:32:54 GMT
SHELL [/bin/bash -xo pipefail -c]
# Fri, 02 Oct 2026 01:32:54 GMT
ENV LANG=en_US.UTF-8
# Fri, 02 Oct 2026 01:32:54 GMT
ARG TARGETARCH=arm64
# Fri, 02 Oct 2026 01:32:54 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Fri, 02 Oct 2026 01:33:02 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:34:04 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:34:04 GMT
ENV ODOO_VERSION=18.0
# Fri, 02 Oct 2026 01:34:04 GMT
ARG ODOO_RELEASE=20260926
# Fri, 02 Oct 2026 01:34:04 GMT
ARG ODOO_SHA=b6a268db3fca5ce831a35070dd3c4bfc6a575b85
# Fri, 02 Oct 2026 01:35:05 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260926 ODOO_SHA=b6a268db3fca5ce831a35070dd3c4bfc6a575b85
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Fri, 02 Oct 2026 01:35:05 GMT
COPY ./entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:35:05 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Fri, 02 Oct 2026 01:35:05 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260926 ODOO_SHA=b6a268db3fca5ce831a35070dd3c4bfc6a575b85
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Fri, 02 Oct 2026 01:35:05 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Fri, 02 Oct 2026 01:35:05 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Fri, 02 Oct 2026 01:35:05 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Fri, 02 Oct 2026 01:35:05 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Fri, 02 Oct 2026 01:35:05 GMT
USER odoo
# Fri, 02 Oct 2026 01:35:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 02 Oct 2026 01:35:05 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:90812e242c93750dbd37ce847c7d3db62c2c53035367d1d89c61184f168f5d37`  
		Last Modified: Fri, 18 Sep 2026 22:29:58 GMT  
		Size: 28.9 MB (28940087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f527d1dd374d2feef787b69cba6da1e1d0b73e1f990668b319d56fb4c68db191`  
		Last Modified: Fri, 02 Oct 2026 01:36:41 GMT  
		Size: 238.5 MB (238455147 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bac02ea145931bfb4b28e08d6cac390772e5106b56969922a952b5dcc20e7668`  
		Last Modified: Fri, 02 Oct 2026 01:36:33 GMT  
		Size: 14.2 MB (14197449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bcad417377e98e1a36bc073cbd9188bda2c9cc22f274987a2a01b3daef4444a`  
		Last Modified: Fri, 02 Oct 2026 01:36:32 GMT  
		Size: 870.9 KB (870863 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:343da5d256e42fc2d3b0ee30b3483198c9bb3088918fd38e0cc566aa11ac70b4`  
		Last Modified: Fri, 02 Oct 2026 01:36:43 GMT  
		Size: 390.8 MB (390816314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05debafe2b1894ae21fcdcf8635c7ad148186031209aaee80ba5930776003653`  
		Last Modified: Fri, 02 Oct 2026 01:36:33 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:317ee3b4c3c45c48045e80b4ec90799d7998e84967e6c00c4cf6ea4431bf2824`  
		Last Modified: Fri, 02 Oct 2026 01:36:35 GMT  
		Size: 557.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ec59635d33719b1cba79a3506b3fefdb9737916505710cfdcd1fd0b5f33d7ca`  
		Last Modified: Fri, 02 Oct 2026 01:36:35 GMT  
		Size: 597.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddf2e1d090f77ac818e031a02af332009b8d7ec16bfa09425f0cf74ea26f37c5`  
		Last Modified: Fri, 02 Oct 2026 01:36:36 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18.0` - unknown; unknown

```console
$ docker pull odoo@sha256:b3e8a046afdb447f4c539c73e95e7aff7505a8d5e2de961ff4187458602ca23a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.9 MB (43948578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a59b2df0f01d8d58cc94d54e828b787325a3ebaf11e2b361568a81596628568f`

```dockerfile
```

-	Layers:
	-	`sha256:ba192ccb9248239a12e8a695be5577580b1553b2f0439f4e20f36458b1c70569`  
		Last Modified: Fri, 02 Oct 2026 01:36:35 GMT  
		Size: 43.9 MB (43921229 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:62aba4f78510a85c990bf0e5f15a785369a10e39e4656f5391641d9ed471c19e`  
		Last Modified: Fri, 02 Oct 2026 01:36:32 GMT  
		Size: 27.3 KB (27349 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:18.0` - linux; ppc64le

```console
$ docker pull odoo@sha256:699c703b1f1490f4115f14f733157c2a0d2c2a6edfaedd82b416a7307b27112b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **693.5 MB (693470484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15bee23e46d1f8d6fca4e840a93b205bcfda78443995ac0f86bf9fa7f99a87b4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Fri, 11 Sep 2026 11:54:01 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:54:01 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:54:01 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:54:04 GMT
ADD file:23a54200dc45d2e165b80cd813d76a8863b2e15710bb20b738f813328f74d05b in / 
# Fri, 11 Sep 2026 11:54:05 GMT
CMD ["/bin/bash"]
# Mon, 28 Sep 2026 18:56:30 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Mon, 28 Sep 2026 18:56:30 GMT
SHELL [/bin/bash -xo pipefail -c]
# Mon, 28 Sep 2026 18:56:30 GMT
ENV LANG=en_US.UTF-8
# Mon, 28 Sep 2026 18:56:30 GMT
ARG TARGETARCH=ppc64le
# Mon, 28 Sep 2026 18:56:30 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Mon, 28 Sep 2026 18:56:52 GMT
# ARGS: TARGETARCH=ppc64le
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 28 Sep 2026 19:01:02 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 28 Sep 2026 19:01:02 GMT
ENV ODOO_VERSION=18.0
# Mon, 28 Sep 2026 19:01:02 GMT
ARG ODOO_RELEASE=20260926
# Mon, 28 Sep 2026 19:01:02 GMT
ARG ODOO_SHA=b6a268db3fca5ce831a35070dd3c4bfc6a575b85
# Mon, 28 Sep 2026 19:11:54 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260926 ODOO_SHA=b6a268db3fca5ce831a35070dd3c4bfc6a575b85
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Mon, 28 Sep 2026 19:11:55 GMT
COPY ./entrypoint.sh / # buildkit
# Mon, 28 Sep 2026 19:11:56 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Mon, 28 Sep 2026 19:11:56 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260926 ODOO_SHA=b6a268db3fca5ce831a35070dd3c4bfc6a575b85
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Mon, 28 Sep 2026 19:11:56 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Mon, 28 Sep 2026 19:11:56 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Mon, 28 Sep 2026 19:11:56 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Mon, 28 Sep 2026 19:11:56 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Mon, 28 Sep 2026 19:11:56 GMT
USER odoo
# Mon, 28 Sep 2026 19:11:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 28 Sep 2026 19:11:56 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:a7067f7ee788cc3e90f83fa0ac84d48a200fde4469a2a5e638f059842a8f11d1`  
		Last Modified: Fri, 11 Sep 2026 13:39:01 GMT  
		Size: 34.4 MB (34376958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7056e5335eeda1a995ed8e76b1a85d28b76a6c5a14082a11caf0eb7e8a3360e5`  
		Last Modified: Mon, 28 Sep 2026 19:09:44 GMT  
		Size: 249.4 MB (249411724 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ef9b20d478d7bc13e8b5c5584b5a55ee99191a50a62d92801d4496c3078a2eb`  
		Last Modified: Mon, 28 Sep 2026 19:09:35 GMT  
		Size: 17.3 MB (17306945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74facc9a28a86e8d9f454c26a78b0ad456c1dcffcab77f8f363e061cc0ded848`  
		Last Modified: Mon, 28 Sep 2026 19:09:34 GMT  
		Size: 870.0 KB (869959 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7fdae333ddb2ba70f98cde185d6156f7be171425c4c2b0c05c3d7ff0b6ba0fa`  
		Last Modified: Mon, 28 Sep 2026 19:16:35 GMT  
		Size: 391.5 MB (391502099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce7dca079dd1ad2c115c66b4645611c9122a93401087763f24c24d7450209e11`  
		Last Modified: Mon, 28 Sep 2026 19:16:25 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62d537c2483176795a82c0ea979575370ed8dc8aa12955176e58df4440912af3`  
		Last Modified: Mon, 28 Sep 2026 19:16:25 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb71b3731ffb3477c77bb67aa067c12af40d851a739518fcb9378bb4cc4023a1`  
		Last Modified: Mon, 28 Sep 2026 19:16:25 GMT  
		Size: 598.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c234cdfd4ab13a2f30e7622775be373d1eccfca147777cc25d7ab907a1d22126`  
		Last Modified: Mon, 28 Sep 2026 19:16:27 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18.0` - unknown; unknown

```console
$ docker pull odoo@sha256:417c04b74386af4c45d663c8d19f8a2c578f73dfd9087b7b7156f1407ffe2f60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.9 MB (43949574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fa88779743faf36751c011eb358b24982a0fed0bc14da4a88515fb55cd9a5dc`

```dockerfile
```

-	Layers:
	-	`sha256:cd3ee16aee4b551fbbb7fe55c27bbaafb8dd6d8af1cab4323d0c412e4fcc3a15`  
		Last Modified: Mon, 28 Sep 2026 19:16:28 GMT  
		Size: 43.9 MB (43922321 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:39be6e77fdd57557566968b000482e5988f1cae8b0f930619d812461331ba064`  
		Last Modified: Mon, 28 Sep 2026 19:16:25 GMT  
		Size: 27.3 KB (27253 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:18.0-20260926`

```console
$ docker pull odoo@sha256:35e57d54c489861082b647d091744d63510365f07400ede55b45bb6ada02a1cf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `odoo:18.0-20260926` - linux; amd64

```console
$ docker pull odoo@sha256:99a96c875759245a075c6ca9fe71a17d0927b301e616075257d8d3cf1ccab91f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **677.0 MB (676951737 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1616522ef3185fc8bd7522224877cd8542ad99090a7507a824e7c203f54bb26d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Fri, 18 Sep 2026 21:20:35 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:20:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:20:35 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:20:37 GMT
ADD file:6c214fc3c3c22122c7eb68f7fb32783df308e60b1eaeb9baf7e4d0cc961d448d in / 
# Fri, 18 Sep 2026 21:20:38 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:33:04 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Fri, 02 Oct 2026 01:33:04 GMT
SHELL [/bin/bash -xo pipefail -c]
# Fri, 02 Oct 2026 01:33:04 GMT
ENV LANG=en_US.UTF-8
# Fri, 02 Oct 2026 01:33:04 GMT
ARG TARGETARCH=amd64
# Fri, 02 Oct 2026 01:33:04 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Fri, 02 Oct 2026 01:33:12 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:34:25 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:34:25 GMT
ENV ODOO_VERSION=18.0
# Fri, 02 Oct 2026 01:34:25 GMT
ARG ODOO_RELEASE=20260926
# Fri, 02 Oct 2026 01:34:25 GMT
ARG ODOO_SHA=b6a268db3fca5ce831a35070dd3c4bfc6a575b85
# Fri, 02 Oct 2026 01:35:15 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260926 ODOO_SHA=b6a268db3fca5ce831a35070dd3c4bfc6a575b85
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Fri, 02 Oct 2026 01:35:15 GMT
COPY ./entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:35:15 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Fri, 02 Oct 2026 01:35:15 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260926 ODOO_SHA=b6a268db3fca5ce831a35070dd3c4bfc6a575b85
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Fri, 02 Oct 2026 01:35:15 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Fri, 02 Oct 2026 01:35:15 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Fri, 02 Oct 2026 01:35:15 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Fri, 02 Oct 2026 01:35:16 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Fri, 02 Oct 2026 01:35:16 GMT
USER odoo
# Fri, 02 Oct 2026 01:35:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 02 Oct 2026 01:35:16 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:a60ef8ec184edb5ed91f5983f00261359fb2fe20f603e8d488b9477d32fcad70`  
		Last Modified: Fri, 18 Sep 2026 22:29:51 GMT  
		Size: 29.8 MB (29764422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b0b6fa9ae8afc2fb68506410c9ea5c7569103a96cc73cfea127fbad08b1909a`  
		Last Modified: Fri, 02 Oct 2026 01:36:43 GMT  
		Size: 241.1 MB (241119589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddf3ad9dbdde9ce099f2263f4afadb142c8235c2797fdeac8944579b2e2b8732`  
		Last Modified: Fri, 02 Oct 2026 01:36:32 GMT  
		Size: 14.2 MB (14226470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:265217cd3579d252d885bde4f3bcde94b95aa02dcfbf029b925056d5481993cc`  
		Last Modified: Fri, 02 Oct 2026 01:36:31 GMT  
		Size: 871.0 KB (870975 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:257256ac0e2dcbf92a973ce923b2a9286613fe8ac13a0800135b95221c5a8206`  
		Last Modified: Fri, 02 Oct 2026 01:36:47 GMT  
		Size: 391.0 MB (390967483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:719f2238279735a6c60a81b6c5a72456e6f617517524f03ec683b2e5ea9f4d8c`  
		Last Modified: Fri, 02 Oct 2026 01:36:32 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dee70ab7e2610169990cc15625230bf33b0ff75e7cd03dba55cb89b3c8282ced`  
		Last Modified: Fri, 02 Oct 2026 01:36:34 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:108318c4b72609d1499a50e0b609bff06f292a99787b5e35c5ec62e08b946db2`  
		Last Modified: Fri, 02 Oct 2026 01:36:34 GMT  
		Size: 596.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8554ae3d7d3184acb3b46f372f94e67783defc9d3d84e872f088da40cccac86b`  
		Last Modified: Fri, 02 Oct 2026 01:36:35 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18.0-20260926` - unknown; unknown

```console
$ docker pull odoo@sha256:e700297ec498fabcd8089f3feeeb754709bbd71727c9795ce0d9dba0fd13cddf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.9 MB (43941153 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e8879a47d3c14b46f3e661870b52ff11282a478b27c7e60a839431656fbb373`

```dockerfile
```

-	Layers:
	-	`sha256:25579dd7a00704f2b504903d4c451695abbb4044d3ad2e13eca59cf4a33b0ac3`  
		Last Modified: Fri, 02 Oct 2026 01:36:34 GMT  
		Size: 43.9 MB (43913957 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f566b55c58f1fe7b9e58b051d9bf68d229c8e5d3218e61b59ea1528d1b20679a`  
		Last Modified: Fri, 02 Oct 2026 01:36:31 GMT  
		Size: 27.2 KB (27196 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:18.0-20260926` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:7cda9ea19a04437b77ca48b47352aabe29cc8736c7bb971208d133e8995ea131
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **673.3 MB (673282660 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de7a4dfe1f7eb7d30f1593c79c4a791549affb47260e2748d52135184894d15c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Fri, 18 Sep 2026 21:23:09 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:23:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:23:10 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:23:13 GMT
ADD file:1cd6cb2db79bbe57d4c67f2fc8379cad96159285fa5a44e68dad06261eee82b4 in / 
# Fri, 18 Sep 2026 21:23:13 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:32:54 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Fri, 02 Oct 2026 01:32:54 GMT
SHELL [/bin/bash -xo pipefail -c]
# Fri, 02 Oct 2026 01:32:54 GMT
ENV LANG=en_US.UTF-8
# Fri, 02 Oct 2026 01:32:54 GMT
ARG TARGETARCH=arm64
# Fri, 02 Oct 2026 01:32:54 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Fri, 02 Oct 2026 01:33:02 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:34:04 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:34:04 GMT
ENV ODOO_VERSION=18.0
# Fri, 02 Oct 2026 01:34:04 GMT
ARG ODOO_RELEASE=20260926
# Fri, 02 Oct 2026 01:34:04 GMT
ARG ODOO_SHA=b6a268db3fca5ce831a35070dd3c4bfc6a575b85
# Fri, 02 Oct 2026 01:35:05 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260926 ODOO_SHA=b6a268db3fca5ce831a35070dd3c4bfc6a575b85
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Fri, 02 Oct 2026 01:35:05 GMT
COPY ./entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:35:05 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Fri, 02 Oct 2026 01:35:05 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260926 ODOO_SHA=b6a268db3fca5ce831a35070dd3c4bfc6a575b85
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Fri, 02 Oct 2026 01:35:05 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Fri, 02 Oct 2026 01:35:05 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Fri, 02 Oct 2026 01:35:05 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Fri, 02 Oct 2026 01:35:05 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Fri, 02 Oct 2026 01:35:05 GMT
USER odoo
# Fri, 02 Oct 2026 01:35:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 02 Oct 2026 01:35:05 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:90812e242c93750dbd37ce847c7d3db62c2c53035367d1d89c61184f168f5d37`  
		Last Modified: Fri, 18 Sep 2026 22:29:58 GMT  
		Size: 28.9 MB (28940087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f527d1dd374d2feef787b69cba6da1e1d0b73e1f990668b319d56fb4c68db191`  
		Last Modified: Fri, 02 Oct 2026 01:36:41 GMT  
		Size: 238.5 MB (238455147 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bac02ea145931bfb4b28e08d6cac390772e5106b56969922a952b5dcc20e7668`  
		Last Modified: Fri, 02 Oct 2026 01:36:33 GMT  
		Size: 14.2 MB (14197449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bcad417377e98e1a36bc073cbd9188bda2c9cc22f274987a2a01b3daef4444a`  
		Last Modified: Fri, 02 Oct 2026 01:36:32 GMT  
		Size: 870.9 KB (870863 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:343da5d256e42fc2d3b0ee30b3483198c9bb3088918fd38e0cc566aa11ac70b4`  
		Last Modified: Fri, 02 Oct 2026 01:36:43 GMT  
		Size: 390.8 MB (390816314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05debafe2b1894ae21fcdcf8635c7ad148186031209aaee80ba5930776003653`  
		Last Modified: Fri, 02 Oct 2026 01:36:33 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:317ee3b4c3c45c48045e80b4ec90799d7998e84967e6c00c4cf6ea4431bf2824`  
		Last Modified: Fri, 02 Oct 2026 01:36:35 GMT  
		Size: 557.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ec59635d33719b1cba79a3506b3fefdb9737916505710cfdcd1fd0b5f33d7ca`  
		Last Modified: Fri, 02 Oct 2026 01:36:35 GMT  
		Size: 597.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddf2e1d090f77ac818e031a02af332009b8d7ec16bfa09425f0cf74ea26f37c5`  
		Last Modified: Fri, 02 Oct 2026 01:36:36 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18.0-20260926` - unknown; unknown

```console
$ docker pull odoo@sha256:b3e8a046afdb447f4c539c73e95e7aff7505a8d5e2de961ff4187458602ca23a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.9 MB (43948578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a59b2df0f01d8d58cc94d54e828b787325a3ebaf11e2b361568a81596628568f`

```dockerfile
```

-	Layers:
	-	`sha256:ba192ccb9248239a12e8a695be5577580b1553b2f0439f4e20f36458b1c70569`  
		Last Modified: Fri, 02 Oct 2026 01:36:35 GMT  
		Size: 43.9 MB (43921229 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:62aba4f78510a85c990bf0e5f15a785369a10e39e4656f5391641d9ed471c19e`  
		Last Modified: Fri, 02 Oct 2026 01:36:32 GMT  
		Size: 27.3 KB (27349 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:18.0-20260926` - linux; ppc64le

```console
$ docker pull odoo@sha256:699c703b1f1490f4115f14f733157c2a0d2c2a6edfaedd82b416a7307b27112b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **693.5 MB (693470484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15bee23e46d1f8d6fca4e840a93b205bcfda78443995ac0f86bf9fa7f99a87b4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Fri, 11 Sep 2026 11:54:01 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:54:01 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:54:01 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:54:04 GMT
ADD file:23a54200dc45d2e165b80cd813d76a8863b2e15710bb20b738f813328f74d05b in / 
# Fri, 11 Sep 2026 11:54:05 GMT
CMD ["/bin/bash"]
# Mon, 28 Sep 2026 18:56:30 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Mon, 28 Sep 2026 18:56:30 GMT
SHELL [/bin/bash -xo pipefail -c]
# Mon, 28 Sep 2026 18:56:30 GMT
ENV LANG=en_US.UTF-8
# Mon, 28 Sep 2026 18:56:30 GMT
ARG TARGETARCH=ppc64le
# Mon, 28 Sep 2026 18:56:30 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Mon, 28 Sep 2026 18:56:52 GMT
# ARGS: TARGETARCH=ppc64le
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 28 Sep 2026 19:01:02 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 28 Sep 2026 19:01:02 GMT
ENV ODOO_VERSION=18.0
# Mon, 28 Sep 2026 19:01:02 GMT
ARG ODOO_RELEASE=20260926
# Mon, 28 Sep 2026 19:01:02 GMT
ARG ODOO_SHA=b6a268db3fca5ce831a35070dd3c4bfc6a575b85
# Mon, 28 Sep 2026 19:11:54 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260926 ODOO_SHA=b6a268db3fca5ce831a35070dd3c4bfc6a575b85
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Mon, 28 Sep 2026 19:11:55 GMT
COPY ./entrypoint.sh / # buildkit
# Mon, 28 Sep 2026 19:11:56 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Mon, 28 Sep 2026 19:11:56 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260926 ODOO_SHA=b6a268db3fca5ce831a35070dd3c4bfc6a575b85
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Mon, 28 Sep 2026 19:11:56 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Mon, 28 Sep 2026 19:11:56 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Mon, 28 Sep 2026 19:11:56 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Mon, 28 Sep 2026 19:11:56 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Mon, 28 Sep 2026 19:11:56 GMT
USER odoo
# Mon, 28 Sep 2026 19:11:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 28 Sep 2026 19:11:56 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:a7067f7ee788cc3e90f83fa0ac84d48a200fde4469a2a5e638f059842a8f11d1`  
		Last Modified: Fri, 11 Sep 2026 13:39:01 GMT  
		Size: 34.4 MB (34376958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7056e5335eeda1a995ed8e76b1a85d28b76a6c5a14082a11caf0eb7e8a3360e5`  
		Last Modified: Mon, 28 Sep 2026 19:09:44 GMT  
		Size: 249.4 MB (249411724 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ef9b20d478d7bc13e8b5c5584b5a55ee99191a50a62d92801d4496c3078a2eb`  
		Last Modified: Mon, 28 Sep 2026 19:09:35 GMT  
		Size: 17.3 MB (17306945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74facc9a28a86e8d9f454c26a78b0ad456c1dcffcab77f8f363e061cc0ded848`  
		Last Modified: Mon, 28 Sep 2026 19:09:34 GMT  
		Size: 870.0 KB (869959 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7fdae333ddb2ba70f98cde185d6156f7be171425c4c2b0c05c3d7ff0b6ba0fa`  
		Last Modified: Mon, 28 Sep 2026 19:16:35 GMT  
		Size: 391.5 MB (391502099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce7dca079dd1ad2c115c66b4645611c9122a93401087763f24c24d7450209e11`  
		Last Modified: Mon, 28 Sep 2026 19:16:25 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62d537c2483176795a82c0ea979575370ed8dc8aa12955176e58df4440912af3`  
		Last Modified: Mon, 28 Sep 2026 19:16:25 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb71b3731ffb3477c77bb67aa067c12af40d851a739518fcb9378bb4cc4023a1`  
		Last Modified: Mon, 28 Sep 2026 19:16:25 GMT  
		Size: 598.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c234cdfd4ab13a2f30e7622775be373d1eccfca147777cc25d7ab907a1d22126`  
		Last Modified: Mon, 28 Sep 2026 19:16:27 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18.0-20260926` - unknown; unknown

```console
$ docker pull odoo@sha256:417c04b74386af4c45d663c8d19f8a2c578f73dfd9087b7b7156f1407ffe2f60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.9 MB (43949574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fa88779743faf36751c011eb358b24982a0fed0bc14da4a88515fb55cd9a5dc`

```dockerfile
```

-	Layers:
	-	`sha256:cd3ee16aee4b551fbbb7fe55c27bbaafb8dd6d8af1cab4323d0c412e4fcc3a15`  
		Last Modified: Mon, 28 Sep 2026 19:16:28 GMT  
		Size: 43.9 MB (43922321 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:39be6e77fdd57557566968b000482e5988f1cae8b0f930619d812461331ba064`  
		Last Modified: Mon, 28 Sep 2026 19:16:25 GMT  
		Size: 27.3 KB (27253 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:19`

```console
$ docker pull odoo@sha256:0b39190ab00340e9a3890a72d8af08c652dbd4c7fb5416ce5bde03f88b7847bd
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
$ docker pull odoo@sha256:22bd89f3d205e59c24dbb716943dcb8cd89ea090ed4d32ce1bfdcf087fafc5df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **700.4 MB (700430397 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d96a8dd3e197ad4966ca9f1f5f21a126641b8437b994012eaaec198ddffc8b2`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Fri, 18 Sep 2026 21:20:35 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:20:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:20:35 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:20:37 GMT
ADD file:6c214fc3c3c22122c7eb68f7fb32783df308e60b1eaeb9baf7e4d0cc961d448d in / 
# Fri, 18 Sep 2026 21:20:38 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:32:59 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Fri, 02 Oct 2026 01:32:59 GMT
SHELL [/bin/bash -xo pipefail -c]
# Fri, 02 Oct 2026 01:32:59 GMT
ENV LANG=en_US.UTF-8
# Fri, 02 Oct 2026 01:32:59 GMT
ARG TARGETARCH=amd64
# Fri, 02 Oct 2026 01:32:59 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Fri, 02 Oct 2026 01:33:08 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:34:26 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:34:26 GMT
ENV ODOO_VERSION=19.0
# Fri, 02 Oct 2026 01:34:26 GMT
ARG ODOO_RELEASE=20260926
# Fri, 02 Oct 2026 01:34:26 GMT
ARG ODOO_SHA=cb9d876779edc8d5f0394ddd3936a387e349077c
# Fri, 02 Oct 2026 01:35:25 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260926 ODOO_SHA=cb9d876779edc8d5f0394ddd3936a387e349077c
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Fri, 02 Oct 2026 01:35:26 GMT
COPY ./entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:35:26 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Fri, 02 Oct 2026 01:35:26 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260926 ODOO_SHA=cb9d876779edc8d5f0394ddd3936a387e349077c
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Fri, 02 Oct 2026 01:35:26 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Fri, 02 Oct 2026 01:35:26 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Fri, 02 Oct 2026 01:35:26 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Fri, 02 Oct 2026 01:35:26 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Fri, 02 Oct 2026 01:35:26 GMT
USER odoo
# Fri, 02 Oct 2026 01:35:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 02 Oct 2026 01:35:26 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:a60ef8ec184edb5ed91f5983f00261359fb2fe20f603e8d488b9477d32fcad70`  
		Last Modified: Fri, 18 Sep 2026 22:29:51 GMT  
		Size: 29.8 MB (29764422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdf3382b3654327889140a1df12fcbfe0ca85dc45762d3834c6b879a64f34ddd`  
		Last Modified: Fri, 02 Oct 2026 01:37:12 GMT  
		Size: 241.1 MB (241119720 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a7dccb956024f133684efebc0ba10b26687dd4120c3c8b3caa8c5345f35734f`  
		Last Modified: Fri, 02 Oct 2026 01:37:03 GMT  
		Size: 14.2 MB (14226465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:133ee383ab304ee5b93b00758f5589fc5717df26a6e187ab20316030f1c774ff`  
		Last Modified: Fri, 02 Oct 2026 01:37:02 GMT  
		Size: 871.0 KB (871050 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3580fef6dc6344834808315c0451b121f7edded97b00c2938e3b4b88d14c7163`  
		Last Modified: Fri, 02 Oct 2026 01:37:15 GMT  
		Size: 414.4 MB (414445989 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aff943fab8f692461ce1c79f0b4c7885407b07ab8be621b1a2f1d798ff7061cb`  
		Last Modified: Fri, 02 Oct 2026 01:37:03 GMT  
		Size: 719.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbd87b53a15b0b956b956a2cd6bf9e5519a1da7bdc2c05e0460b7922d662c10f`  
		Last Modified: Fri, 02 Oct 2026 01:37:05 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99557586df490c3e0708f5d0fbb83950c21fa4b0e126e8b71311c5ea26175132`  
		Last Modified: Fri, 02 Oct 2026 01:37:05 GMT  
		Size: 597.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f081b5cb50944236c6f0173c5dfa3f993c08b7515174c91dac39edcafcba2aa6`  
		Last Modified: Fri, 02 Oct 2026 01:37:06 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19` - unknown; unknown

```console
$ docker pull odoo@sha256:13dd48a3642abd34ce9d90fc8a55a004c4d58f87e5153b272f0f925101614520
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.5 MB (52486084 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00eb2677349713259119a3e2a5475bf910959d0a0034138e69949e4005a4ac76`

```dockerfile
```

-	Layers:
	-	`sha256:6cf08bfa8d8f35278f6d1ad45efed9e44ddf84a45d69722fae533a0bd4ca1995`  
		Last Modified: Fri, 02 Oct 2026 01:37:06 GMT  
		Size: 52.5 MB (52458888 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:303d77a4b046d6ddccf4c2174a070beb3596a9e74b6195ce8d59eb473cf7f47f`  
		Last Modified: Fri, 02 Oct 2026 01:37:02 GMT  
		Size: 27.2 KB (27196 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:19` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:1fc509063908c84f47dfad0b52ea01afc4c7787c92d09b5af0f868d82bbf551d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **696.8 MB (696757852 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97a10eba859ce25a81591833d34198efbf0d350ca8b0d9ce0f82ab84393a49e1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Fri, 18 Sep 2026 21:23:09 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:23:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:23:10 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:23:13 GMT
ADD file:1cd6cb2db79bbe57d4c67f2fc8379cad96159285fa5a44e68dad06261eee82b4 in / 
# Fri, 18 Sep 2026 21:23:13 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:32:44 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Fri, 02 Oct 2026 01:32:44 GMT
SHELL [/bin/bash -xo pipefail -c]
# Fri, 02 Oct 2026 01:32:44 GMT
ENV LANG=en_US.UTF-8
# Fri, 02 Oct 2026 01:32:44 GMT
ARG TARGETARCH=arm64
# Fri, 02 Oct 2026 01:32:44 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Fri, 02 Oct 2026 01:32:53 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:56 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:56 GMT
ENV ODOO_VERSION=19.0
# Fri, 02 Oct 2026 01:33:56 GMT
ARG ODOO_RELEASE=20260926
# Fri, 02 Oct 2026 01:33:56 GMT
ARG ODOO_SHA=cb9d876779edc8d5f0394ddd3936a387e349077c
# Fri, 02 Oct 2026 01:35:06 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260926 ODOO_SHA=cb9d876779edc8d5f0394ddd3936a387e349077c
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Fri, 02 Oct 2026 01:35:06 GMT
COPY ./entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:35:07 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Fri, 02 Oct 2026 01:35:07 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260926 ODOO_SHA=cb9d876779edc8d5f0394ddd3936a387e349077c
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Fri, 02 Oct 2026 01:35:07 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Fri, 02 Oct 2026 01:35:07 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Fri, 02 Oct 2026 01:35:07 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Fri, 02 Oct 2026 01:35:07 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Fri, 02 Oct 2026 01:35:07 GMT
USER odoo
# Fri, 02 Oct 2026 01:35:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 02 Oct 2026 01:35:07 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:90812e242c93750dbd37ce847c7d3db62c2c53035367d1d89c61184f168f5d37`  
		Last Modified: Fri, 18 Sep 2026 22:29:58 GMT  
		Size: 28.9 MB (28940087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a45035c500c90275fd2ebd482323b388ca0fc71184077deb920f6e3836e093bc`  
		Last Modified: Fri, 02 Oct 2026 01:37:07 GMT  
		Size: 238.5 MB (238453873 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2f32335377e10c6354696663e55afccdb3057e401fb20cb6c1009fa58f5b0fb`  
		Last Modified: Fri, 02 Oct 2026 01:36:55 GMT  
		Size: 14.2 MB (14197434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05bb92483b5d9b0428cdd3542e1bca536db4b7ee3276a022418f7693b07e952d`  
		Last Modified: Fri, 02 Oct 2026 01:36:54 GMT  
		Size: 870.9 KB (870906 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7382fc38be85b8c311e4978f4b7cf12b56b8b8c21cb56f7d8c22da2a2e7b43f`  
		Last Modified: Fri, 02 Oct 2026 01:37:12 GMT  
		Size: 414.3 MB (414292801 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5065857b1c3b845f8d068e6a099af3aeb9b88b6690f36876df2178ecbbea9d87`  
		Last Modified: Fri, 02 Oct 2026 01:36:55 GMT  
		Size: 719.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b489159ddc21f68a5449b180fd2503e34c7a22d12584275fffdb3c924cddf94e`  
		Last Modified: Fri, 02 Oct 2026 01:36:56 GMT  
		Size: 555.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e94fac65312c5b48f1b9c9983b075c156e65990d630a0eb1d5cb39f91e4f42b`  
		Last Modified: Fri, 02 Oct 2026 01:36:57 GMT  
		Size: 599.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8ca22c826cacf955dd2f7a1d180b802358ff66a90969730bcbee5ac5d857be2`  
		Last Modified: Fri, 02 Oct 2026 01:36:58 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19` - unknown; unknown

```console
$ docker pull odoo@sha256:4a1877facc9f7e6e5cf2f8766a0cbe300ae8481570e608b7985db5d7b894b869
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.5 MB (52493509 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:465724d8778bc47afa0af2774614388cd7a2ca905c36ac426e9dafbdf38543f1`

```dockerfile
```

-	Layers:
	-	`sha256:116ac9de18843dd5df750ee5b4fcf449c38d275820449a77fe7486b1c9468b54`  
		Last Modified: Fri, 02 Oct 2026 01:36:57 GMT  
		Size: 52.5 MB (52466160 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b83a203d89231d074cdbe0a59178bb76c40b68101a66e48e5bbf6bd71c853d86`  
		Last Modified: Fri, 02 Oct 2026 01:36:54 GMT  
		Size: 27.3 KB (27349 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:19` - linux; ppc64le

```console
$ docker pull odoo@sha256:50be9d97a84546537ad63a96d693bacdcfbb6840284ce26116205fc25f763be6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **717.0 MB (716957961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef274eac3d495fc45f6ded77efae73f7b42e56043cb5ef87a1f5246f0aa3936d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Fri, 11 Sep 2026 11:54:01 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:54:01 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:54:01 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:54:04 GMT
ADD file:23a54200dc45d2e165b80cd813d76a8863b2e15710bb20b738f813328f74d05b in / 
# Fri, 11 Sep 2026 11:54:05 GMT
CMD ["/bin/bash"]
# Mon, 28 Sep 2026 18:56:30 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Mon, 28 Sep 2026 18:56:30 GMT
SHELL [/bin/bash -xo pipefail -c]
# Mon, 28 Sep 2026 18:56:30 GMT
ENV LANG=en_US.UTF-8
# Mon, 28 Sep 2026 18:56:30 GMT
ARG TARGETARCH=ppc64le
# Mon, 28 Sep 2026 18:56:30 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Mon, 28 Sep 2026 18:56:52 GMT
# ARGS: TARGETARCH=ppc64le
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 28 Sep 2026 19:01:02 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 28 Sep 2026 19:01:02 GMT
ENV ODOO_VERSION=19.0
# Mon, 28 Sep 2026 19:01:02 GMT
ARG ODOO_RELEASE=20260926
# Mon, 28 Sep 2026 19:01:02 GMT
ARG ODOO_SHA=cb9d876779edc8d5f0394ddd3936a387e349077c
# Mon, 28 Sep 2026 19:04:13 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260926 ODOO_SHA=cb9d876779edc8d5f0394ddd3936a387e349077c
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Mon, 28 Sep 2026 19:04:18 GMT
COPY ./entrypoint.sh / # buildkit
# Mon, 28 Sep 2026 19:04:19 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Mon, 28 Sep 2026 19:04:21 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260926 ODOO_SHA=cb9d876779edc8d5f0394ddd3936a387e349077c
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Mon, 28 Sep 2026 19:04:21 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Mon, 28 Sep 2026 19:04:21 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Mon, 28 Sep 2026 19:04:21 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Mon, 28 Sep 2026 19:04:22 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Mon, 28 Sep 2026 19:04:22 GMT
USER odoo
# Mon, 28 Sep 2026 19:04:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 28 Sep 2026 19:04:22 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:a7067f7ee788cc3e90f83fa0ac84d48a200fde4469a2a5e638f059842a8f11d1`  
		Last Modified: Fri, 11 Sep 2026 13:39:01 GMT  
		Size: 34.4 MB (34376958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7056e5335eeda1a995ed8e76b1a85d28b76a6c5a14082a11caf0eb7e8a3360e5`  
		Last Modified: Mon, 28 Sep 2026 19:09:44 GMT  
		Size: 249.4 MB (249411724 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ef9b20d478d7bc13e8b5c5584b5a55ee99191a50a62d92801d4496c3078a2eb`  
		Last Modified: Mon, 28 Sep 2026 19:09:35 GMT  
		Size: 17.3 MB (17306945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74facc9a28a86e8d9f454c26a78b0ad456c1dcffcab77f8f363e061cc0ded848`  
		Last Modified: Mon, 28 Sep 2026 19:09:34 GMT  
		Size: 870.0 KB (869959 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4239e38dc7a54262dc6eb903b8decc32be4ed2ab0bc1990f5376dd26541b52e`  
		Last Modified: Mon, 28 Sep 2026 19:09:48 GMT  
		Size: 415.0 MB (414989621 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2320d60577a6b8de223a276067f01e431dc8e8162015d11cee15c7a24cc2da2`  
		Last Modified: Mon, 28 Sep 2026 19:09:35 GMT  
		Size: 718.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:816a913b081d386d4148a4a87a941f3ae38374e7d134d4a2cd7265ae86472a73`  
		Last Modified: Mon, 28 Sep 2026 19:09:37 GMT  
		Size: 558.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b004dc1790754369bc00ad948793e0eeda838ee12c4e2e434a275f443c7d60a0`  
		Last Modified: Mon, 28 Sep 2026 19:09:36 GMT  
		Size: 602.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8537f0a4a294b1b9412a3f865ac6c788d91c53f38c6393fbb998ca70f3240f5`  
		Last Modified: Mon, 28 Sep 2026 19:09:38 GMT  
		Size: 876.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19` - unknown; unknown

```console
$ docker pull odoo@sha256:f1ce86f988c06db7fc33d622f440de18b22b1605dbf577f8e8128a3121af8dce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.5 MB (52494504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e373ff6f56a2fd33401156c8154ff6f1c15c1b9aa1bb048ca7a291dc276da189`

```dockerfile
```

-	Layers:
	-	`sha256:ec98a7849bc2234ee830eda18a218c378cb668d16abad5782d01b5ecad2e6a19`  
		Last Modified: Mon, 28 Sep 2026 19:09:37 GMT  
		Size: 52.5 MB (52467252 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:94345822266e6815f8e3a595d23aadbf5d3c36166a3c75f4b945dd144d3fa1b1`  
		Last Modified: Mon, 28 Sep 2026 19:09:34 GMT  
		Size: 27.3 KB (27252 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:19.0`

```console
$ docker pull odoo@sha256:0b39190ab00340e9a3890a72d8af08c652dbd4c7fb5416ce5bde03f88b7847bd
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
$ docker pull odoo@sha256:22bd89f3d205e59c24dbb716943dcb8cd89ea090ed4d32ce1bfdcf087fafc5df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **700.4 MB (700430397 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d96a8dd3e197ad4966ca9f1f5f21a126641b8437b994012eaaec198ddffc8b2`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Fri, 18 Sep 2026 21:20:35 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:20:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:20:35 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:20:37 GMT
ADD file:6c214fc3c3c22122c7eb68f7fb32783df308e60b1eaeb9baf7e4d0cc961d448d in / 
# Fri, 18 Sep 2026 21:20:38 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:32:59 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Fri, 02 Oct 2026 01:32:59 GMT
SHELL [/bin/bash -xo pipefail -c]
# Fri, 02 Oct 2026 01:32:59 GMT
ENV LANG=en_US.UTF-8
# Fri, 02 Oct 2026 01:32:59 GMT
ARG TARGETARCH=amd64
# Fri, 02 Oct 2026 01:32:59 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Fri, 02 Oct 2026 01:33:08 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:34:26 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:34:26 GMT
ENV ODOO_VERSION=19.0
# Fri, 02 Oct 2026 01:34:26 GMT
ARG ODOO_RELEASE=20260926
# Fri, 02 Oct 2026 01:34:26 GMT
ARG ODOO_SHA=cb9d876779edc8d5f0394ddd3936a387e349077c
# Fri, 02 Oct 2026 01:35:25 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260926 ODOO_SHA=cb9d876779edc8d5f0394ddd3936a387e349077c
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Fri, 02 Oct 2026 01:35:26 GMT
COPY ./entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:35:26 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Fri, 02 Oct 2026 01:35:26 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260926 ODOO_SHA=cb9d876779edc8d5f0394ddd3936a387e349077c
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Fri, 02 Oct 2026 01:35:26 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Fri, 02 Oct 2026 01:35:26 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Fri, 02 Oct 2026 01:35:26 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Fri, 02 Oct 2026 01:35:26 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Fri, 02 Oct 2026 01:35:26 GMT
USER odoo
# Fri, 02 Oct 2026 01:35:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 02 Oct 2026 01:35:26 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:a60ef8ec184edb5ed91f5983f00261359fb2fe20f603e8d488b9477d32fcad70`  
		Last Modified: Fri, 18 Sep 2026 22:29:51 GMT  
		Size: 29.8 MB (29764422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdf3382b3654327889140a1df12fcbfe0ca85dc45762d3834c6b879a64f34ddd`  
		Last Modified: Fri, 02 Oct 2026 01:37:12 GMT  
		Size: 241.1 MB (241119720 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a7dccb956024f133684efebc0ba10b26687dd4120c3c8b3caa8c5345f35734f`  
		Last Modified: Fri, 02 Oct 2026 01:37:03 GMT  
		Size: 14.2 MB (14226465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:133ee383ab304ee5b93b00758f5589fc5717df26a6e187ab20316030f1c774ff`  
		Last Modified: Fri, 02 Oct 2026 01:37:02 GMT  
		Size: 871.0 KB (871050 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3580fef6dc6344834808315c0451b121f7edded97b00c2938e3b4b88d14c7163`  
		Last Modified: Fri, 02 Oct 2026 01:37:15 GMT  
		Size: 414.4 MB (414445989 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aff943fab8f692461ce1c79f0b4c7885407b07ab8be621b1a2f1d798ff7061cb`  
		Last Modified: Fri, 02 Oct 2026 01:37:03 GMT  
		Size: 719.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbd87b53a15b0b956b956a2cd6bf9e5519a1da7bdc2c05e0460b7922d662c10f`  
		Last Modified: Fri, 02 Oct 2026 01:37:05 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99557586df490c3e0708f5d0fbb83950c21fa4b0e126e8b71311c5ea26175132`  
		Last Modified: Fri, 02 Oct 2026 01:37:05 GMT  
		Size: 597.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f081b5cb50944236c6f0173c5dfa3f993c08b7515174c91dac39edcafcba2aa6`  
		Last Modified: Fri, 02 Oct 2026 01:37:06 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19.0` - unknown; unknown

```console
$ docker pull odoo@sha256:13dd48a3642abd34ce9d90fc8a55a004c4d58f87e5153b272f0f925101614520
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.5 MB (52486084 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00eb2677349713259119a3e2a5475bf910959d0a0034138e69949e4005a4ac76`

```dockerfile
```

-	Layers:
	-	`sha256:6cf08bfa8d8f35278f6d1ad45efed9e44ddf84a45d69722fae533a0bd4ca1995`  
		Last Modified: Fri, 02 Oct 2026 01:37:06 GMT  
		Size: 52.5 MB (52458888 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:303d77a4b046d6ddccf4c2174a070beb3596a9e74b6195ce8d59eb473cf7f47f`  
		Last Modified: Fri, 02 Oct 2026 01:37:02 GMT  
		Size: 27.2 KB (27196 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:19.0` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:1fc509063908c84f47dfad0b52ea01afc4c7787c92d09b5af0f868d82bbf551d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **696.8 MB (696757852 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97a10eba859ce25a81591833d34198efbf0d350ca8b0d9ce0f82ab84393a49e1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Fri, 18 Sep 2026 21:23:09 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:23:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:23:10 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:23:13 GMT
ADD file:1cd6cb2db79bbe57d4c67f2fc8379cad96159285fa5a44e68dad06261eee82b4 in / 
# Fri, 18 Sep 2026 21:23:13 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:32:44 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Fri, 02 Oct 2026 01:32:44 GMT
SHELL [/bin/bash -xo pipefail -c]
# Fri, 02 Oct 2026 01:32:44 GMT
ENV LANG=en_US.UTF-8
# Fri, 02 Oct 2026 01:32:44 GMT
ARG TARGETARCH=arm64
# Fri, 02 Oct 2026 01:32:44 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Fri, 02 Oct 2026 01:32:53 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:56 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:56 GMT
ENV ODOO_VERSION=19.0
# Fri, 02 Oct 2026 01:33:56 GMT
ARG ODOO_RELEASE=20260926
# Fri, 02 Oct 2026 01:33:56 GMT
ARG ODOO_SHA=cb9d876779edc8d5f0394ddd3936a387e349077c
# Fri, 02 Oct 2026 01:35:06 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260926 ODOO_SHA=cb9d876779edc8d5f0394ddd3936a387e349077c
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Fri, 02 Oct 2026 01:35:06 GMT
COPY ./entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:35:07 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Fri, 02 Oct 2026 01:35:07 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260926 ODOO_SHA=cb9d876779edc8d5f0394ddd3936a387e349077c
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Fri, 02 Oct 2026 01:35:07 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Fri, 02 Oct 2026 01:35:07 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Fri, 02 Oct 2026 01:35:07 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Fri, 02 Oct 2026 01:35:07 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Fri, 02 Oct 2026 01:35:07 GMT
USER odoo
# Fri, 02 Oct 2026 01:35:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 02 Oct 2026 01:35:07 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:90812e242c93750dbd37ce847c7d3db62c2c53035367d1d89c61184f168f5d37`  
		Last Modified: Fri, 18 Sep 2026 22:29:58 GMT  
		Size: 28.9 MB (28940087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a45035c500c90275fd2ebd482323b388ca0fc71184077deb920f6e3836e093bc`  
		Last Modified: Fri, 02 Oct 2026 01:37:07 GMT  
		Size: 238.5 MB (238453873 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2f32335377e10c6354696663e55afccdb3057e401fb20cb6c1009fa58f5b0fb`  
		Last Modified: Fri, 02 Oct 2026 01:36:55 GMT  
		Size: 14.2 MB (14197434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05bb92483b5d9b0428cdd3542e1bca536db4b7ee3276a022418f7693b07e952d`  
		Last Modified: Fri, 02 Oct 2026 01:36:54 GMT  
		Size: 870.9 KB (870906 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7382fc38be85b8c311e4978f4b7cf12b56b8b8c21cb56f7d8c22da2a2e7b43f`  
		Last Modified: Fri, 02 Oct 2026 01:37:12 GMT  
		Size: 414.3 MB (414292801 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5065857b1c3b845f8d068e6a099af3aeb9b88b6690f36876df2178ecbbea9d87`  
		Last Modified: Fri, 02 Oct 2026 01:36:55 GMT  
		Size: 719.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b489159ddc21f68a5449b180fd2503e34c7a22d12584275fffdb3c924cddf94e`  
		Last Modified: Fri, 02 Oct 2026 01:36:56 GMT  
		Size: 555.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e94fac65312c5b48f1b9c9983b075c156e65990d630a0eb1d5cb39f91e4f42b`  
		Last Modified: Fri, 02 Oct 2026 01:36:57 GMT  
		Size: 599.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8ca22c826cacf955dd2f7a1d180b802358ff66a90969730bcbee5ac5d857be2`  
		Last Modified: Fri, 02 Oct 2026 01:36:58 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19.0` - unknown; unknown

```console
$ docker pull odoo@sha256:4a1877facc9f7e6e5cf2f8766a0cbe300ae8481570e608b7985db5d7b894b869
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.5 MB (52493509 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:465724d8778bc47afa0af2774614388cd7a2ca905c36ac426e9dafbdf38543f1`

```dockerfile
```

-	Layers:
	-	`sha256:116ac9de18843dd5df750ee5b4fcf449c38d275820449a77fe7486b1c9468b54`  
		Last Modified: Fri, 02 Oct 2026 01:36:57 GMT  
		Size: 52.5 MB (52466160 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b83a203d89231d074cdbe0a59178bb76c40b68101a66e48e5bbf6bd71c853d86`  
		Last Modified: Fri, 02 Oct 2026 01:36:54 GMT  
		Size: 27.3 KB (27349 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:19.0` - linux; ppc64le

```console
$ docker pull odoo@sha256:50be9d97a84546537ad63a96d693bacdcfbb6840284ce26116205fc25f763be6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **717.0 MB (716957961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef274eac3d495fc45f6ded77efae73f7b42e56043cb5ef87a1f5246f0aa3936d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Fri, 11 Sep 2026 11:54:01 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:54:01 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:54:01 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:54:04 GMT
ADD file:23a54200dc45d2e165b80cd813d76a8863b2e15710bb20b738f813328f74d05b in / 
# Fri, 11 Sep 2026 11:54:05 GMT
CMD ["/bin/bash"]
# Mon, 28 Sep 2026 18:56:30 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Mon, 28 Sep 2026 18:56:30 GMT
SHELL [/bin/bash -xo pipefail -c]
# Mon, 28 Sep 2026 18:56:30 GMT
ENV LANG=en_US.UTF-8
# Mon, 28 Sep 2026 18:56:30 GMT
ARG TARGETARCH=ppc64le
# Mon, 28 Sep 2026 18:56:30 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Mon, 28 Sep 2026 18:56:52 GMT
# ARGS: TARGETARCH=ppc64le
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 28 Sep 2026 19:01:02 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 28 Sep 2026 19:01:02 GMT
ENV ODOO_VERSION=19.0
# Mon, 28 Sep 2026 19:01:02 GMT
ARG ODOO_RELEASE=20260926
# Mon, 28 Sep 2026 19:01:02 GMT
ARG ODOO_SHA=cb9d876779edc8d5f0394ddd3936a387e349077c
# Mon, 28 Sep 2026 19:04:13 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260926 ODOO_SHA=cb9d876779edc8d5f0394ddd3936a387e349077c
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Mon, 28 Sep 2026 19:04:18 GMT
COPY ./entrypoint.sh / # buildkit
# Mon, 28 Sep 2026 19:04:19 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Mon, 28 Sep 2026 19:04:21 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260926 ODOO_SHA=cb9d876779edc8d5f0394ddd3936a387e349077c
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Mon, 28 Sep 2026 19:04:21 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Mon, 28 Sep 2026 19:04:21 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Mon, 28 Sep 2026 19:04:21 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Mon, 28 Sep 2026 19:04:22 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Mon, 28 Sep 2026 19:04:22 GMT
USER odoo
# Mon, 28 Sep 2026 19:04:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 28 Sep 2026 19:04:22 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:a7067f7ee788cc3e90f83fa0ac84d48a200fde4469a2a5e638f059842a8f11d1`  
		Last Modified: Fri, 11 Sep 2026 13:39:01 GMT  
		Size: 34.4 MB (34376958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7056e5335eeda1a995ed8e76b1a85d28b76a6c5a14082a11caf0eb7e8a3360e5`  
		Last Modified: Mon, 28 Sep 2026 19:09:44 GMT  
		Size: 249.4 MB (249411724 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ef9b20d478d7bc13e8b5c5584b5a55ee99191a50a62d92801d4496c3078a2eb`  
		Last Modified: Mon, 28 Sep 2026 19:09:35 GMT  
		Size: 17.3 MB (17306945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74facc9a28a86e8d9f454c26a78b0ad456c1dcffcab77f8f363e061cc0ded848`  
		Last Modified: Mon, 28 Sep 2026 19:09:34 GMT  
		Size: 870.0 KB (869959 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4239e38dc7a54262dc6eb903b8decc32be4ed2ab0bc1990f5376dd26541b52e`  
		Last Modified: Mon, 28 Sep 2026 19:09:48 GMT  
		Size: 415.0 MB (414989621 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2320d60577a6b8de223a276067f01e431dc8e8162015d11cee15c7a24cc2da2`  
		Last Modified: Mon, 28 Sep 2026 19:09:35 GMT  
		Size: 718.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:816a913b081d386d4148a4a87a941f3ae38374e7d134d4a2cd7265ae86472a73`  
		Last Modified: Mon, 28 Sep 2026 19:09:37 GMT  
		Size: 558.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b004dc1790754369bc00ad948793e0eeda838ee12c4e2e434a275f443c7d60a0`  
		Last Modified: Mon, 28 Sep 2026 19:09:36 GMT  
		Size: 602.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8537f0a4a294b1b9412a3f865ac6c788d91c53f38c6393fbb998ca70f3240f5`  
		Last Modified: Mon, 28 Sep 2026 19:09:38 GMT  
		Size: 876.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19.0` - unknown; unknown

```console
$ docker pull odoo@sha256:f1ce86f988c06db7fc33d622f440de18b22b1605dbf577f8e8128a3121af8dce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.5 MB (52494504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e373ff6f56a2fd33401156c8154ff6f1c15c1b9aa1bb048ca7a291dc276da189`

```dockerfile
```

-	Layers:
	-	`sha256:ec98a7849bc2234ee830eda18a218c378cb668d16abad5782d01b5ecad2e6a19`  
		Last Modified: Mon, 28 Sep 2026 19:09:37 GMT  
		Size: 52.5 MB (52467252 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:94345822266e6815f8e3a595d23aadbf5d3c36166a3c75f4b945dd144d3fa1b1`  
		Last Modified: Mon, 28 Sep 2026 19:09:34 GMT  
		Size: 27.3 KB (27252 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:19.0-20260926`

```console
$ docker pull odoo@sha256:0b39190ab00340e9a3890a72d8af08c652dbd4c7fb5416ce5bde03f88b7847bd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `odoo:19.0-20260926` - linux; amd64

```console
$ docker pull odoo@sha256:22bd89f3d205e59c24dbb716943dcb8cd89ea090ed4d32ce1bfdcf087fafc5df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **700.4 MB (700430397 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d96a8dd3e197ad4966ca9f1f5f21a126641b8437b994012eaaec198ddffc8b2`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Fri, 18 Sep 2026 21:20:35 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:20:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:20:35 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:20:37 GMT
ADD file:6c214fc3c3c22122c7eb68f7fb32783df308e60b1eaeb9baf7e4d0cc961d448d in / 
# Fri, 18 Sep 2026 21:20:38 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:32:59 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Fri, 02 Oct 2026 01:32:59 GMT
SHELL [/bin/bash -xo pipefail -c]
# Fri, 02 Oct 2026 01:32:59 GMT
ENV LANG=en_US.UTF-8
# Fri, 02 Oct 2026 01:32:59 GMT
ARG TARGETARCH=amd64
# Fri, 02 Oct 2026 01:32:59 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Fri, 02 Oct 2026 01:33:08 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:34:26 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:34:26 GMT
ENV ODOO_VERSION=19.0
# Fri, 02 Oct 2026 01:34:26 GMT
ARG ODOO_RELEASE=20260926
# Fri, 02 Oct 2026 01:34:26 GMT
ARG ODOO_SHA=cb9d876779edc8d5f0394ddd3936a387e349077c
# Fri, 02 Oct 2026 01:35:25 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260926 ODOO_SHA=cb9d876779edc8d5f0394ddd3936a387e349077c
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Fri, 02 Oct 2026 01:35:26 GMT
COPY ./entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:35:26 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Fri, 02 Oct 2026 01:35:26 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260926 ODOO_SHA=cb9d876779edc8d5f0394ddd3936a387e349077c
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Fri, 02 Oct 2026 01:35:26 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Fri, 02 Oct 2026 01:35:26 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Fri, 02 Oct 2026 01:35:26 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Fri, 02 Oct 2026 01:35:26 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Fri, 02 Oct 2026 01:35:26 GMT
USER odoo
# Fri, 02 Oct 2026 01:35:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 02 Oct 2026 01:35:26 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:a60ef8ec184edb5ed91f5983f00261359fb2fe20f603e8d488b9477d32fcad70`  
		Last Modified: Fri, 18 Sep 2026 22:29:51 GMT  
		Size: 29.8 MB (29764422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdf3382b3654327889140a1df12fcbfe0ca85dc45762d3834c6b879a64f34ddd`  
		Last Modified: Fri, 02 Oct 2026 01:37:12 GMT  
		Size: 241.1 MB (241119720 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a7dccb956024f133684efebc0ba10b26687dd4120c3c8b3caa8c5345f35734f`  
		Last Modified: Fri, 02 Oct 2026 01:37:03 GMT  
		Size: 14.2 MB (14226465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:133ee383ab304ee5b93b00758f5589fc5717df26a6e187ab20316030f1c774ff`  
		Last Modified: Fri, 02 Oct 2026 01:37:02 GMT  
		Size: 871.0 KB (871050 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3580fef6dc6344834808315c0451b121f7edded97b00c2938e3b4b88d14c7163`  
		Last Modified: Fri, 02 Oct 2026 01:37:15 GMT  
		Size: 414.4 MB (414445989 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aff943fab8f692461ce1c79f0b4c7885407b07ab8be621b1a2f1d798ff7061cb`  
		Last Modified: Fri, 02 Oct 2026 01:37:03 GMT  
		Size: 719.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbd87b53a15b0b956b956a2cd6bf9e5519a1da7bdc2c05e0460b7922d662c10f`  
		Last Modified: Fri, 02 Oct 2026 01:37:05 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99557586df490c3e0708f5d0fbb83950c21fa4b0e126e8b71311c5ea26175132`  
		Last Modified: Fri, 02 Oct 2026 01:37:05 GMT  
		Size: 597.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f081b5cb50944236c6f0173c5dfa3f993c08b7515174c91dac39edcafcba2aa6`  
		Last Modified: Fri, 02 Oct 2026 01:37:06 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19.0-20260926` - unknown; unknown

```console
$ docker pull odoo@sha256:13dd48a3642abd34ce9d90fc8a55a004c4d58f87e5153b272f0f925101614520
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.5 MB (52486084 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00eb2677349713259119a3e2a5475bf910959d0a0034138e69949e4005a4ac76`

```dockerfile
```

-	Layers:
	-	`sha256:6cf08bfa8d8f35278f6d1ad45efed9e44ddf84a45d69722fae533a0bd4ca1995`  
		Last Modified: Fri, 02 Oct 2026 01:37:06 GMT  
		Size: 52.5 MB (52458888 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:303d77a4b046d6ddccf4c2174a070beb3596a9e74b6195ce8d59eb473cf7f47f`  
		Last Modified: Fri, 02 Oct 2026 01:37:02 GMT  
		Size: 27.2 KB (27196 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:19.0-20260926` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:1fc509063908c84f47dfad0b52ea01afc4c7787c92d09b5af0f868d82bbf551d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **696.8 MB (696757852 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97a10eba859ce25a81591833d34198efbf0d350ca8b0d9ce0f82ab84393a49e1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Fri, 18 Sep 2026 21:23:09 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:23:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:23:10 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:23:13 GMT
ADD file:1cd6cb2db79bbe57d4c67f2fc8379cad96159285fa5a44e68dad06261eee82b4 in / 
# Fri, 18 Sep 2026 21:23:13 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:32:44 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Fri, 02 Oct 2026 01:32:44 GMT
SHELL [/bin/bash -xo pipefail -c]
# Fri, 02 Oct 2026 01:32:44 GMT
ENV LANG=en_US.UTF-8
# Fri, 02 Oct 2026 01:32:44 GMT
ARG TARGETARCH=arm64
# Fri, 02 Oct 2026 01:32:44 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Fri, 02 Oct 2026 01:32:53 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:56 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:56 GMT
ENV ODOO_VERSION=19.0
# Fri, 02 Oct 2026 01:33:56 GMT
ARG ODOO_RELEASE=20260926
# Fri, 02 Oct 2026 01:33:56 GMT
ARG ODOO_SHA=cb9d876779edc8d5f0394ddd3936a387e349077c
# Fri, 02 Oct 2026 01:35:06 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260926 ODOO_SHA=cb9d876779edc8d5f0394ddd3936a387e349077c
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Fri, 02 Oct 2026 01:35:06 GMT
COPY ./entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:35:07 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Fri, 02 Oct 2026 01:35:07 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260926 ODOO_SHA=cb9d876779edc8d5f0394ddd3936a387e349077c
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Fri, 02 Oct 2026 01:35:07 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Fri, 02 Oct 2026 01:35:07 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Fri, 02 Oct 2026 01:35:07 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Fri, 02 Oct 2026 01:35:07 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Fri, 02 Oct 2026 01:35:07 GMT
USER odoo
# Fri, 02 Oct 2026 01:35:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 02 Oct 2026 01:35:07 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:90812e242c93750dbd37ce847c7d3db62c2c53035367d1d89c61184f168f5d37`  
		Last Modified: Fri, 18 Sep 2026 22:29:58 GMT  
		Size: 28.9 MB (28940087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a45035c500c90275fd2ebd482323b388ca0fc71184077deb920f6e3836e093bc`  
		Last Modified: Fri, 02 Oct 2026 01:37:07 GMT  
		Size: 238.5 MB (238453873 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2f32335377e10c6354696663e55afccdb3057e401fb20cb6c1009fa58f5b0fb`  
		Last Modified: Fri, 02 Oct 2026 01:36:55 GMT  
		Size: 14.2 MB (14197434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05bb92483b5d9b0428cdd3542e1bca536db4b7ee3276a022418f7693b07e952d`  
		Last Modified: Fri, 02 Oct 2026 01:36:54 GMT  
		Size: 870.9 KB (870906 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7382fc38be85b8c311e4978f4b7cf12b56b8b8c21cb56f7d8c22da2a2e7b43f`  
		Last Modified: Fri, 02 Oct 2026 01:37:12 GMT  
		Size: 414.3 MB (414292801 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5065857b1c3b845f8d068e6a099af3aeb9b88b6690f36876df2178ecbbea9d87`  
		Last Modified: Fri, 02 Oct 2026 01:36:55 GMT  
		Size: 719.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b489159ddc21f68a5449b180fd2503e34c7a22d12584275fffdb3c924cddf94e`  
		Last Modified: Fri, 02 Oct 2026 01:36:56 GMT  
		Size: 555.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e94fac65312c5b48f1b9c9983b075c156e65990d630a0eb1d5cb39f91e4f42b`  
		Last Modified: Fri, 02 Oct 2026 01:36:57 GMT  
		Size: 599.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8ca22c826cacf955dd2f7a1d180b802358ff66a90969730bcbee5ac5d857be2`  
		Last Modified: Fri, 02 Oct 2026 01:36:58 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19.0-20260926` - unknown; unknown

```console
$ docker pull odoo@sha256:4a1877facc9f7e6e5cf2f8766a0cbe300ae8481570e608b7985db5d7b894b869
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.5 MB (52493509 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:465724d8778bc47afa0af2774614388cd7a2ca905c36ac426e9dafbdf38543f1`

```dockerfile
```

-	Layers:
	-	`sha256:116ac9de18843dd5df750ee5b4fcf449c38d275820449a77fe7486b1c9468b54`  
		Last Modified: Fri, 02 Oct 2026 01:36:57 GMT  
		Size: 52.5 MB (52466160 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b83a203d89231d074cdbe0a59178bb76c40b68101a66e48e5bbf6bd71c853d86`  
		Last Modified: Fri, 02 Oct 2026 01:36:54 GMT  
		Size: 27.3 KB (27349 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:19.0-20260926` - linux; ppc64le

```console
$ docker pull odoo@sha256:50be9d97a84546537ad63a96d693bacdcfbb6840284ce26116205fc25f763be6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **717.0 MB (716957961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef274eac3d495fc45f6ded77efae73f7b42e56043cb5ef87a1f5246f0aa3936d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Fri, 11 Sep 2026 11:54:01 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:54:01 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:54:01 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:54:04 GMT
ADD file:23a54200dc45d2e165b80cd813d76a8863b2e15710bb20b738f813328f74d05b in / 
# Fri, 11 Sep 2026 11:54:05 GMT
CMD ["/bin/bash"]
# Mon, 28 Sep 2026 18:56:30 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Mon, 28 Sep 2026 18:56:30 GMT
SHELL [/bin/bash -xo pipefail -c]
# Mon, 28 Sep 2026 18:56:30 GMT
ENV LANG=en_US.UTF-8
# Mon, 28 Sep 2026 18:56:30 GMT
ARG TARGETARCH=ppc64le
# Mon, 28 Sep 2026 18:56:30 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Mon, 28 Sep 2026 18:56:52 GMT
# ARGS: TARGETARCH=ppc64le
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 28 Sep 2026 19:01:02 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 28 Sep 2026 19:01:02 GMT
ENV ODOO_VERSION=19.0
# Mon, 28 Sep 2026 19:01:02 GMT
ARG ODOO_RELEASE=20260926
# Mon, 28 Sep 2026 19:01:02 GMT
ARG ODOO_SHA=cb9d876779edc8d5f0394ddd3936a387e349077c
# Mon, 28 Sep 2026 19:04:13 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260926 ODOO_SHA=cb9d876779edc8d5f0394ddd3936a387e349077c
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Mon, 28 Sep 2026 19:04:18 GMT
COPY ./entrypoint.sh / # buildkit
# Mon, 28 Sep 2026 19:04:19 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Mon, 28 Sep 2026 19:04:21 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260926 ODOO_SHA=cb9d876779edc8d5f0394ddd3936a387e349077c
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Mon, 28 Sep 2026 19:04:21 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Mon, 28 Sep 2026 19:04:21 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Mon, 28 Sep 2026 19:04:21 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Mon, 28 Sep 2026 19:04:22 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Mon, 28 Sep 2026 19:04:22 GMT
USER odoo
# Mon, 28 Sep 2026 19:04:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 28 Sep 2026 19:04:22 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:a7067f7ee788cc3e90f83fa0ac84d48a200fde4469a2a5e638f059842a8f11d1`  
		Last Modified: Fri, 11 Sep 2026 13:39:01 GMT  
		Size: 34.4 MB (34376958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7056e5335eeda1a995ed8e76b1a85d28b76a6c5a14082a11caf0eb7e8a3360e5`  
		Last Modified: Mon, 28 Sep 2026 19:09:44 GMT  
		Size: 249.4 MB (249411724 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ef9b20d478d7bc13e8b5c5584b5a55ee99191a50a62d92801d4496c3078a2eb`  
		Last Modified: Mon, 28 Sep 2026 19:09:35 GMT  
		Size: 17.3 MB (17306945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74facc9a28a86e8d9f454c26a78b0ad456c1dcffcab77f8f363e061cc0ded848`  
		Last Modified: Mon, 28 Sep 2026 19:09:34 GMT  
		Size: 870.0 KB (869959 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4239e38dc7a54262dc6eb903b8decc32be4ed2ab0bc1990f5376dd26541b52e`  
		Last Modified: Mon, 28 Sep 2026 19:09:48 GMT  
		Size: 415.0 MB (414989621 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2320d60577a6b8de223a276067f01e431dc8e8162015d11cee15c7a24cc2da2`  
		Last Modified: Mon, 28 Sep 2026 19:09:35 GMT  
		Size: 718.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:816a913b081d386d4148a4a87a941f3ae38374e7d134d4a2cd7265ae86472a73`  
		Last Modified: Mon, 28 Sep 2026 19:09:37 GMT  
		Size: 558.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b004dc1790754369bc00ad948793e0eeda838ee12c4e2e434a275f443c7d60a0`  
		Last Modified: Mon, 28 Sep 2026 19:09:36 GMT  
		Size: 602.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8537f0a4a294b1b9412a3f865ac6c788d91c53f38c6393fbb998ca70f3240f5`  
		Last Modified: Mon, 28 Sep 2026 19:09:38 GMT  
		Size: 876.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19.0-20260926` - unknown; unknown

```console
$ docker pull odoo@sha256:f1ce86f988c06db7fc33d622f440de18b22b1605dbf577f8e8128a3121af8dce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.5 MB (52494504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e373ff6f56a2fd33401156c8154ff6f1c15c1b9aa1bb048ca7a291dc276da189`

```dockerfile
```

-	Layers:
	-	`sha256:ec98a7849bc2234ee830eda18a218c378cb668d16abad5782d01b5ecad2e6a19`  
		Last Modified: Mon, 28 Sep 2026 19:09:37 GMT  
		Size: 52.5 MB (52467252 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:94345822266e6815f8e3a595d23aadbf5d3c36166a3c75f4b945dd144d3fa1b1`  
		Last Modified: Mon, 28 Sep 2026 19:09:34 GMT  
		Size: 27.3 KB (27252 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:20`

```console
$ docker pull odoo@sha256:c953aec9c6403db8c530a26a8af3a02317ce4fc45df64bffdda6e2fceac12e1d
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
$ docker pull odoo@sha256:a54b6a68e1816f57c3f22f611e049246ca274ab86bc9fb24fc021a21c850209e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **797.8 MB (797803823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1a11d4377b87f0883588dce896c5164666276113a6776546fd6df8a07dd9214`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Fri, 18 Sep 2026 21:20:35 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:20:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:20:35 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:20:37 GMT
ADD file:6c214fc3c3c22122c7eb68f7fb32783df308e60b1eaeb9baf7e4d0cc961d448d in / 
# Fri, 18 Sep 2026 21:20:38 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:32:44 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Fri, 02 Oct 2026 01:32:44 GMT
SHELL [/bin/bash -xo pipefail -c]
# Fri, 02 Oct 2026 01:32:44 GMT
ENV LANG=en_US.UTF-8
# Fri, 02 Oct 2026 01:32:44 GMT
ARG TARGETARCH=amd64
# Fri, 02 Oct 2026 01:32:44 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Fri, 02 Oct 2026 01:32:53 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:58 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:58 GMT
ENV ODOO_VERSION=20.0
# Fri, 02 Oct 2026 01:33:58 GMT
ARG ODOO_RELEASE=20260926
# Fri, 02 Oct 2026 01:33:58 GMT
ARG ODOO_SHA=7cb4a582ebe275a4f9c22eae24ce2bcb7fa27040
# Fri, 02 Oct 2026 01:35:04 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260926 ODOO_SHA=7cb4a582ebe275a4f9c22eae24ce2bcb7fa27040
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Fri, 02 Oct 2026 01:35:05 GMT
COPY ./entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:35:05 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Fri, 02 Oct 2026 01:35:05 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260926 ODOO_SHA=7cb4a582ebe275a4f9c22eae24ce2bcb7fa27040
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Fri, 02 Oct 2026 01:35:05 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Fri, 02 Oct 2026 01:35:05 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Fri, 02 Oct 2026 01:35:05 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Fri, 02 Oct 2026 01:35:05 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Fri, 02 Oct 2026 01:35:05 GMT
USER odoo
# Fri, 02 Oct 2026 01:35:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 02 Oct 2026 01:35:05 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:a60ef8ec184edb5ed91f5983f00261359fb2fe20f603e8d488b9477d32fcad70`  
		Last Modified: Fri, 18 Sep 2026 22:29:51 GMT  
		Size: 29.8 MB (29764422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c00dff1e5176396dde6d1ef81f3ec560cf5ff9b9afa8bcd94c9496f1f398845`  
		Last Modified: Fri, 02 Oct 2026 01:36:52 GMT  
		Size: 241.1 MB (241119561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f01217557c05985af8cc340e5bc3f926018a1bf5006eefa887879bdf4efdad92`  
		Last Modified: Fri, 02 Oct 2026 01:36:44 GMT  
		Size: 14.2 MB (14226443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92f391c3336cbbc1e78c39fef7ca5d26bebec6f748a41140e91074965316a706`  
		Last Modified: Fri, 02 Oct 2026 01:36:43 GMT  
		Size: 871.0 KB (871015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:991589626834abd7f08b4ca9815b22391022ecbe70484f35eb4556d3333de675`  
		Last Modified: Fri, 02 Oct 2026 01:36:57 GMT  
		Size: 511.8 MB (511819636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2818495a7de441bbf88f1c9b626ccdc9ab9c317f76f2f115cf6845426e3c9ec1`  
		Last Modified: Fri, 02 Oct 2026 01:36:45 GMT  
		Size: 718.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:636bb5eb4cb8505944c8a71295b4a13e0c71b9a3afbe1d4a7c30f1a8cfa4145e`  
		Last Modified: Fri, 02 Oct 2026 01:36:46 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:598a91cd0f951582af6332be697370b7e4be4c1dfd21ffb6e6720d783bbd57e3`  
		Last Modified: Fri, 02 Oct 2026 01:36:46 GMT  
		Size: 596.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa8b72ae33c3dc8768f3a37224ff3af2f87825e9ea75f8c5d5c9b57fc44f279b`  
		Last Modified: Fri, 02 Oct 2026 01:36:47 GMT  
		Size: 876.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:20` - unknown; unknown

```console
$ docker pull odoo@sha256:1065b6c5147dddfd959864d8eb102fe5f8ae217ad18a5048f6d41c239033b030
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.0 MB (55020918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d86820be3cf404428fba79012a1d3a7ba9256e8d1f3dce343e6ae38c858ad89`

```dockerfile
```

-	Layers:
	-	`sha256:e67d1da465d1a3c43d311d17179f8741817bbb4b92fd59fead4159965cba9c08`  
		Last Modified: Fri, 02 Oct 2026 01:36:47 GMT  
		Size: 55.0 MB (54993427 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aef1eb72f858d13d6bd759f22bf285e531f832f542717c942e9ea5ee0ccfeb00`  
		Last Modified: Fri, 02 Oct 2026 01:36:43 GMT  
		Size: 27.5 KB (27491 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:20` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:3170aab811a4ecd41858ec978f70c140f3252a238c4b47c0c898ebb432b910ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **794.1 MB (794108275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64759ba41128bf8abce8f5b8dc945d54bcfbe1ab583aa6295e7b8331d59c26bb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Fri, 18 Sep 2026 21:23:09 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:23:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:23:10 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:23:13 GMT
ADD file:1cd6cb2db79bbe57d4c67f2fc8379cad96159285fa5a44e68dad06261eee82b4 in / 
# Fri, 18 Sep 2026 21:23:13 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:32:35 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Fri, 02 Oct 2026 01:32:35 GMT
SHELL [/bin/bash -xo pipefail -c]
# Fri, 02 Oct 2026 01:32:35 GMT
ENV LANG=en_US.UTF-8
# Fri, 02 Oct 2026 01:32:35 GMT
ARG TARGETARCH=arm64
# Fri, 02 Oct 2026 01:32:35 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Fri, 02 Oct 2026 01:32:45 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:49 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:49 GMT
ENV ODOO_VERSION=20.0
# Fri, 02 Oct 2026 01:33:49 GMT
ARG ODOO_RELEASE=20260926
# Fri, 02 Oct 2026 01:33:49 GMT
ARG ODOO_SHA=7cb4a582ebe275a4f9c22eae24ce2bcb7fa27040
# Fri, 02 Oct 2026 01:35:07 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260926 ODOO_SHA=7cb4a582ebe275a4f9c22eae24ce2bcb7fa27040
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Fri, 02 Oct 2026 01:35:08 GMT
COPY ./entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:35:08 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Fri, 02 Oct 2026 01:35:08 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260926 ODOO_SHA=7cb4a582ebe275a4f9c22eae24ce2bcb7fa27040
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Fri, 02 Oct 2026 01:35:08 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Fri, 02 Oct 2026 01:35:08 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Fri, 02 Oct 2026 01:35:08 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Fri, 02 Oct 2026 01:35:08 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Fri, 02 Oct 2026 01:35:08 GMT
USER odoo
# Fri, 02 Oct 2026 01:35:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 02 Oct 2026 01:35:08 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:90812e242c93750dbd37ce847c7d3db62c2c53035367d1d89c61184f168f5d37`  
		Last Modified: Fri, 18 Sep 2026 22:29:58 GMT  
		Size: 28.9 MB (28940087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:130f34aeab8a0ffeaba6da8cb036ec7d6775ad03035726a607912a5df030e8da`  
		Last Modified: Fri, 02 Oct 2026 01:37:18 GMT  
		Size: 238.5 MB (238454827 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9492e8a10a04262728dfe891bb6bc53d0fcf3bc83a6ae0d2e73cf76f47a5d982`  
		Last Modified: Fri, 02 Oct 2026 01:37:10 GMT  
		Size: 14.2 MB (14197473 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3abf8085314d6508823bd561318a6f6a3eccb7994aea6aaef8cf647d846f4fd1`  
		Last Modified: Fri, 02 Oct 2026 01:37:09 GMT  
		Size: 870.9 KB (870882 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08ad8b852e9c00f8b8babaa00a183962f39a67fdcdfa7859a780db0a9b9c2387`  
		Last Modified: Fri, 02 Oct 2026 01:37:22 GMT  
		Size: 511.6 MB (511642257 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d24dc1f35a46ca9f5d7815b017cd76cf3277d8e3307d542c7c00d73b57c8149`  
		Last Modified: Fri, 02 Oct 2026 01:37:10 GMT  
		Size: 718.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5175d1ac4279cea7ca3b5b4817ba83c6c907cb4fef2f5c4b7ff5fa21ae3f0e27`  
		Last Modified: Fri, 02 Oct 2026 01:37:11 GMT  
		Size: 557.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c33b81b426a469047e6c7cdb47594d752bff6ae0d33e61234093f8fa6df2f97b`  
		Last Modified: Fri, 02 Oct 2026 01:37:11 GMT  
		Size: 597.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:212847a23b24dee0ad031d7e8709aa3c8ef79cda10a0e3e55b2c784f95b8475d`  
		Last Modified: Fri, 02 Oct 2026 01:37:12 GMT  
		Size: 877.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:20` - unknown; unknown

```console
$ docker pull odoo@sha256:ca9430cf6927e11d7b6c91617e153ee06cba41488cfeecab8dface253fe23d3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.0 MB (55028366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98243666829f41538a0b6d7db2e15a84805759afdfdf6ee8b29bcb8ba3c29fd8`

```dockerfile
```

-	Layers:
	-	`sha256:6d49ea9ff72a0582c018318498afe91a192789dd07a77db450a095ae7d5a1737`  
		Last Modified: Fri, 02 Oct 2026 01:37:12 GMT  
		Size: 55.0 MB (55000711 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:32a2344dec9d2fe1c8a72a67e33fe63939b7465e78629e10c1814365b042e5af`  
		Last Modified: Fri, 02 Oct 2026 01:37:08 GMT  
		Size: 27.7 KB (27655 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:20` - linux; ppc64le

```console
$ docker pull odoo@sha256:ccca49d14b08518519e5b688e2aad4616afb00cd8eb680218f809c44c08bc793
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **814.3 MB (814312281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3cd06ccc64f43832a4b83636f2ef5ade12f8160ec6eefc6711e630d04eec8c3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Fri, 11 Sep 2026 11:54:01 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:54:01 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:54:01 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:54:04 GMT
ADD file:23a54200dc45d2e165b80cd813d76a8863b2e15710bb20b738f813328f74d05b in / 
# Fri, 11 Sep 2026 11:54:05 GMT
CMD ["/bin/bash"]
# Mon, 28 Sep 2026 18:56:30 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Mon, 28 Sep 2026 18:56:30 GMT
SHELL [/bin/bash -xo pipefail -c]
# Mon, 28 Sep 2026 18:56:30 GMT
ENV LANG=en_US.UTF-8
# Mon, 28 Sep 2026 18:56:30 GMT
ARG TARGETARCH=ppc64le
# Mon, 28 Sep 2026 18:56:30 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Mon, 28 Sep 2026 18:56:52 GMT
# ARGS: TARGETARCH=ppc64le
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 28 Sep 2026 19:01:02 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 28 Sep 2026 19:01:02 GMT
ENV ODOO_VERSION=20.0
# Mon, 28 Sep 2026 19:01:02 GMT
ARG ODOO_RELEASE=20260926
# Mon, 28 Sep 2026 19:01:02 GMT
ARG ODOO_SHA=7cb4a582ebe275a4f9c22eae24ce2bcb7fa27040
# Mon, 28 Sep 2026 19:04:14 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260926 ODOO_SHA=7cb4a582ebe275a4f9c22eae24ce2bcb7fa27040
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Mon, 28 Sep 2026 19:04:18 GMT
COPY ./entrypoint.sh / # buildkit
# Mon, 28 Sep 2026 19:04:19 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Mon, 28 Sep 2026 19:04:22 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260926 ODOO_SHA=7cb4a582ebe275a4f9c22eae24ce2bcb7fa27040
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Mon, 28 Sep 2026 19:04:22 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Mon, 28 Sep 2026 19:04:22 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Mon, 28 Sep 2026 19:04:22 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Mon, 28 Sep 2026 19:04:23 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Mon, 28 Sep 2026 19:04:23 GMT
USER odoo
# Mon, 28 Sep 2026 19:04:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 28 Sep 2026 19:04:23 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:a7067f7ee788cc3e90f83fa0ac84d48a200fde4469a2a5e638f059842a8f11d1`  
		Last Modified: Fri, 11 Sep 2026 13:39:01 GMT  
		Size: 34.4 MB (34376958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7056e5335eeda1a995ed8e76b1a85d28b76a6c5a14082a11caf0eb7e8a3360e5`  
		Last Modified: Mon, 28 Sep 2026 19:09:44 GMT  
		Size: 249.4 MB (249411724 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ef9b20d478d7bc13e8b5c5584b5a55ee99191a50a62d92801d4496c3078a2eb`  
		Last Modified: Mon, 28 Sep 2026 19:09:35 GMT  
		Size: 17.3 MB (17306945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74facc9a28a86e8d9f454c26a78b0ad456c1dcffcab77f8f363e061cc0ded848`  
		Last Modified: Mon, 28 Sep 2026 19:09:34 GMT  
		Size: 870.0 KB (869959 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b538858bdaeb37c4fa8bb5215881ff361aa4270a0b648feb3dfbfc0ee407de75`  
		Last Modified: Mon, 28 Sep 2026 19:10:05 GMT  
		Size: 512.3 MB (512343945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4200c33b205355a49429f1fa1e0fc32acce66af58f46c9359169f016ad54579`  
		Last Modified: Mon, 28 Sep 2026 19:09:53 GMT  
		Size: 719.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dec0214bd494b09595bf03579be8a8840dcb4b9b54fbb9b5b880457ee3f00c99`  
		Last Modified: Mon, 28 Sep 2026 19:09:54 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2385578020ea4dd6a58a07ffc853ebaa0d4a5198e0a718f4b572384c21ab3191`  
		Last Modified: Mon, 28 Sep 2026 19:09:54 GMT  
		Size: 600.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd52d7bfcc1e01bfc4b47f244e5855ea0de863d87916b0e1758e2bca695bd2c3`  
		Last Modified: Mon, 28 Sep 2026 19:09:55 GMT  
		Size: 875.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:20` - unknown; unknown

```console
$ docker pull odoo@sha256:51ec8d38f6204e7f6334a40b30224238564306e7d1ed42fa9cbfbed112744b44
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.0 MB (55029350 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9f48ff56f3a8b8ef986ac6b5e5fd6113ccb1f295477bd6427c11792380a3c70`

```dockerfile
```

-	Layers:
	-	`sha256:b1eedb2b44faddd6e24ebd95005cea9dde1c3d2e3382be044f86db8795828039`  
		Last Modified: Mon, 28 Sep 2026 19:09:56 GMT  
		Size: 55.0 MB (55001797 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a340389db09bb7869b9e803fb70bb6856e1d9507cb7c655d8d4373eea0aaf1bd`  
		Last Modified: Mon, 28 Sep 2026 19:09:53 GMT  
		Size: 27.6 KB (27553 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:20.0`

```console
$ docker pull odoo@sha256:c953aec9c6403db8c530a26a8af3a02317ce4fc45df64bffdda6e2fceac12e1d
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
$ docker pull odoo@sha256:a54b6a68e1816f57c3f22f611e049246ca274ab86bc9fb24fc021a21c850209e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **797.8 MB (797803823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1a11d4377b87f0883588dce896c5164666276113a6776546fd6df8a07dd9214`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Fri, 18 Sep 2026 21:20:35 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:20:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:20:35 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:20:37 GMT
ADD file:6c214fc3c3c22122c7eb68f7fb32783df308e60b1eaeb9baf7e4d0cc961d448d in / 
# Fri, 18 Sep 2026 21:20:38 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:32:44 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Fri, 02 Oct 2026 01:32:44 GMT
SHELL [/bin/bash -xo pipefail -c]
# Fri, 02 Oct 2026 01:32:44 GMT
ENV LANG=en_US.UTF-8
# Fri, 02 Oct 2026 01:32:44 GMT
ARG TARGETARCH=amd64
# Fri, 02 Oct 2026 01:32:44 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Fri, 02 Oct 2026 01:32:53 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:58 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:58 GMT
ENV ODOO_VERSION=20.0
# Fri, 02 Oct 2026 01:33:58 GMT
ARG ODOO_RELEASE=20260926
# Fri, 02 Oct 2026 01:33:58 GMT
ARG ODOO_SHA=7cb4a582ebe275a4f9c22eae24ce2bcb7fa27040
# Fri, 02 Oct 2026 01:35:04 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260926 ODOO_SHA=7cb4a582ebe275a4f9c22eae24ce2bcb7fa27040
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Fri, 02 Oct 2026 01:35:05 GMT
COPY ./entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:35:05 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Fri, 02 Oct 2026 01:35:05 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260926 ODOO_SHA=7cb4a582ebe275a4f9c22eae24ce2bcb7fa27040
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Fri, 02 Oct 2026 01:35:05 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Fri, 02 Oct 2026 01:35:05 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Fri, 02 Oct 2026 01:35:05 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Fri, 02 Oct 2026 01:35:05 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Fri, 02 Oct 2026 01:35:05 GMT
USER odoo
# Fri, 02 Oct 2026 01:35:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 02 Oct 2026 01:35:05 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:a60ef8ec184edb5ed91f5983f00261359fb2fe20f603e8d488b9477d32fcad70`  
		Last Modified: Fri, 18 Sep 2026 22:29:51 GMT  
		Size: 29.8 MB (29764422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c00dff1e5176396dde6d1ef81f3ec560cf5ff9b9afa8bcd94c9496f1f398845`  
		Last Modified: Fri, 02 Oct 2026 01:36:52 GMT  
		Size: 241.1 MB (241119561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f01217557c05985af8cc340e5bc3f926018a1bf5006eefa887879bdf4efdad92`  
		Last Modified: Fri, 02 Oct 2026 01:36:44 GMT  
		Size: 14.2 MB (14226443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92f391c3336cbbc1e78c39fef7ca5d26bebec6f748a41140e91074965316a706`  
		Last Modified: Fri, 02 Oct 2026 01:36:43 GMT  
		Size: 871.0 KB (871015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:991589626834abd7f08b4ca9815b22391022ecbe70484f35eb4556d3333de675`  
		Last Modified: Fri, 02 Oct 2026 01:36:57 GMT  
		Size: 511.8 MB (511819636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2818495a7de441bbf88f1c9b626ccdc9ab9c317f76f2f115cf6845426e3c9ec1`  
		Last Modified: Fri, 02 Oct 2026 01:36:45 GMT  
		Size: 718.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:636bb5eb4cb8505944c8a71295b4a13e0c71b9a3afbe1d4a7c30f1a8cfa4145e`  
		Last Modified: Fri, 02 Oct 2026 01:36:46 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:598a91cd0f951582af6332be697370b7e4be4c1dfd21ffb6e6720d783bbd57e3`  
		Last Modified: Fri, 02 Oct 2026 01:36:46 GMT  
		Size: 596.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa8b72ae33c3dc8768f3a37224ff3af2f87825e9ea75f8c5d5c9b57fc44f279b`  
		Last Modified: Fri, 02 Oct 2026 01:36:47 GMT  
		Size: 876.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:20.0` - unknown; unknown

```console
$ docker pull odoo@sha256:1065b6c5147dddfd959864d8eb102fe5f8ae217ad18a5048f6d41c239033b030
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.0 MB (55020918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d86820be3cf404428fba79012a1d3a7ba9256e8d1f3dce343e6ae38c858ad89`

```dockerfile
```

-	Layers:
	-	`sha256:e67d1da465d1a3c43d311d17179f8741817bbb4b92fd59fead4159965cba9c08`  
		Last Modified: Fri, 02 Oct 2026 01:36:47 GMT  
		Size: 55.0 MB (54993427 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aef1eb72f858d13d6bd759f22bf285e531f832f542717c942e9ea5ee0ccfeb00`  
		Last Modified: Fri, 02 Oct 2026 01:36:43 GMT  
		Size: 27.5 KB (27491 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:20.0` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:3170aab811a4ecd41858ec978f70c140f3252a238c4b47c0c898ebb432b910ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **794.1 MB (794108275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64759ba41128bf8abce8f5b8dc945d54bcfbe1ab583aa6295e7b8331d59c26bb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Fri, 18 Sep 2026 21:23:09 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:23:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:23:10 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:23:13 GMT
ADD file:1cd6cb2db79bbe57d4c67f2fc8379cad96159285fa5a44e68dad06261eee82b4 in / 
# Fri, 18 Sep 2026 21:23:13 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:32:35 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Fri, 02 Oct 2026 01:32:35 GMT
SHELL [/bin/bash -xo pipefail -c]
# Fri, 02 Oct 2026 01:32:35 GMT
ENV LANG=en_US.UTF-8
# Fri, 02 Oct 2026 01:32:35 GMT
ARG TARGETARCH=arm64
# Fri, 02 Oct 2026 01:32:35 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Fri, 02 Oct 2026 01:32:45 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:49 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:49 GMT
ENV ODOO_VERSION=20.0
# Fri, 02 Oct 2026 01:33:49 GMT
ARG ODOO_RELEASE=20260926
# Fri, 02 Oct 2026 01:33:49 GMT
ARG ODOO_SHA=7cb4a582ebe275a4f9c22eae24ce2bcb7fa27040
# Fri, 02 Oct 2026 01:35:07 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260926 ODOO_SHA=7cb4a582ebe275a4f9c22eae24ce2bcb7fa27040
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Fri, 02 Oct 2026 01:35:08 GMT
COPY ./entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:35:08 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Fri, 02 Oct 2026 01:35:08 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260926 ODOO_SHA=7cb4a582ebe275a4f9c22eae24ce2bcb7fa27040
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Fri, 02 Oct 2026 01:35:08 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Fri, 02 Oct 2026 01:35:08 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Fri, 02 Oct 2026 01:35:08 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Fri, 02 Oct 2026 01:35:08 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Fri, 02 Oct 2026 01:35:08 GMT
USER odoo
# Fri, 02 Oct 2026 01:35:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 02 Oct 2026 01:35:08 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:90812e242c93750dbd37ce847c7d3db62c2c53035367d1d89c61184f168f5d37`  
		Last Modified: Fri, 18 Sep 2026 22:29:58 GMT  
		Size: 28.9 MB (28940087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:130f34aeab8a0ffeaba6da8cb036ec7d6775ad03035726a607912a5df030e8da`  
		Last Modified: Fri, 02 Oct 2026 01:37:18 GMT  
		Size: 238.5 MB (238454827 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9492e8a10a04262728dfe891bb6bc53d0fcf3bc83a6ae0d2e73cf76f47a5d982`  
		Last Modified: Fri, 02 Oct 2026 01:37:10 GMT  
		Size: 14.2 MB (14197473 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3abf8085314d6508823bd561318a6f6a3eccb7994aea6aaef8cf647d846f4fd1`  
		Last Modified: Fri, 02 Oct 2026 01:37:09 GMT  
		Size: 870.9 KB (870882 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08ad8b852e9c00f8b8babaa00a183962f39a67fdcdfa7859a780db0a9b9c2387`  
		Last Modified: Fri, 02 Oct 2026 01:37:22 GMT  
		Size: 511.6 MB (511642257 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d24dc1f35a46ca9f5d7815b017cd76cf3277d8e3307d542c7c00d73b57c8149`  
		Last Modified: Fri, 02 Oct 2026 01:37:10 GMT  
		Size: 718.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5175d1ac4279cea7ca3b5b4817ba83c6c907cb4fef2f5c4b7ff5fa21ae3f0e27`  
		Last Modified: Fri, 02 Oct 2026 01:37:11 GMT  
		Size: 557.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c33b81b426a469047e6c7cdb47594d752bff6ae0d33e61234093f8fa6df2f97b`  
		Last Modified: Fri, 02 Oct 2026 01:37:11 GMT  
		Size: 597.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:212847a23b24dee0ad031d7e8709aa3c8ef79cda10a0e3e55b2c784f95b8475d`  
		Last Modified: Fri, 02 Oct 2026 01:37:12 GMT  
		Size: 877.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:20.0` - unknown; unknown

```console
$ docker pull odoo@sha256:ca9430cf6927e11d7b6c91617e153ee06cba41488cfeecab8dface253fe23d3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.0 MB (55028366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98243666829f41538a0b6d7db2e15a84805759afdfdf6ee8b29bcb8ba3c29fd8`

```dockerfile
```

-	Layers:
	-	`sha256:6d49ea9ff72a0582c018318498afe91a192789dd07a77db450a095ae7d5a1737`  
		Last Modified: Fri, 02 Oct 2026 01:37:12 GMT  
		Size: 55.0 MB (55000711 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:32a2344dec9d2fe1c8a72a67e33fe63939b7465e78629e10c1814365b042e5af`  
		Last Modified: Fri, 02 Oct 2026 01:37:08 GMT  
		Size: 27.7 KB (27655 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:20.0` - linux; ppc64le

```console
$ docker pull odoo@sha256:ccca49d14b08518519e5b688e2aad4616afb00cd8eb680218f809c44c08bc793
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **814.3 MB (814312281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3cd06ccc64f43832a4b83636f2ef5ade12f8160ec6eefc6711e630d04eec8c3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Fri, 11 Sep 2026 11:54:01 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:54:01 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:54:01 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:54:04 GMT
ADD file:23a54200dc45d2e165b80cd813d76a8863b2e15710bb20b738f813328f74d05b in / 
# Fri, 11 Sep 2026 11:54:05 GMT
CMD ["/bin/bash"]
# Mon, 28 Sep 2026 18:56:30 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Mon, 28 Sep 2026 18:56:30 GMT
SHELL [/bin/bash -xo pipefail -c]
# Mon, 28 Sep 2026 18:56:30 GMT
ENV LANG=en_US.UTF-8
# Mon, 28 Sep 2026 18:56:30 GMT
ARG TARGETARCH=ppc64le
# Mon, 28 Sep 2026 18:56:30 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Mon, 28 Sep 2026 18:56:52 GMT
# ARGS: TARGETARCH=ppc64le
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 28 Sep 2026 19:01:02 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 28 Sep 2026 19:01:02 GMT
ENV ODOO_VERSION=20.0
# Mon, 28 Sep 2026 19:01:02 GMT
ARG ODOO_RELEASE=20260926
# Mon, 28 Sep 2026 19:01:02 GMT
ARG ODOO_SHA=7cb4a582ebe275a4f9c22eae24ce2bcb7fa27040
# Mon, 28 Sep 2026 19:04:14 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260926 ODOO_SHA=7cb4a582ebe275a4f9c22eae24ce2bcb7fa27040
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Mon, 28 Sep 2026 19:04:18 GMT
COPY ./entrypoint.sh / # buildkit
# Mon, 28 Sep 2026 19:04:19 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Mon, 28 Sep 2026 19:04:22 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260926 ODOO_SHA=7cb4a582ebe275a4f9c22eae24ce2bcb7fa27040
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Mon, 28 Sep 2026 19:04:22 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Mon, 28 Sep 2026 19:04:22 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Mon, 28 Sep 2026 19:04:22 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Mon, 28 Sep 2026 19:04:23 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Mon, 28 Sep 2026 19:04:23 GMT
USER odoo
# Mon, 28 Sep 2026 19:04:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 28 Sep 2026 19:04:23 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:a7067f7ee788cc3e90f83fa0ac84d48a200fde4469a2a5e638f059842a8f11d1`  
		Last Modified: Fri, 11 Sep 2026 13:39:01 GMT  
		Size: 34.4 MB (34376958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7056e5335eeda1a995ed8e76b1a85d28b76a6c5a14082a11caf0eb7e8a3360e5`  
		Last Modified: Mon, 28 Sep 2026 19:09:44 GMT  
		Size: 249.4 MB (249411724 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ef9b20d478d7bc13e8b5c5584b5a55ee99191a50a62d92801d4496c3078a2eb`  
		Last Modified: Mon, 28 Sep 2026 19:09:35 GMT  
		Size: 17.3 MB (17306945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74facc9a28a86e8d9f454c26a78b0ad456c1dcffcab77f8f363e061cc0ded848`  
		Last Modified: Mon, 28 Sep 2026 19:09:34 GMT  
		Size: 870.0 KB (869959 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b538858bdaeb37c4fa8bb5215881ff361aa4270a0b648feb3dfbfc0ee407de75`  
		Last Modified: Mon, 28 Sep 2026 19:10:05 GMT  
		Size: 512.3 MB (512343945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4200c33b205355a49429f1fa1e0fc32acce66af58f46c9359169f016ad54579`  
		Last Modified: Mon, 28 Sep 2026 19:09:53 GMT  
		Size: 719.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dec0214bd494b09595bf03579be8a8840dcb4b9b54fbb9b5b880457ee3f00c99`  
		Last Modified: Mon, 28 Sep 2026 19:09:54 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2385578020ea4dd6a58a07ffc853ebaa0d4a5198e0a718f4b572384c21ab3191`  
		Last Modified: Mon, 28 Sep 2026 19:09:54 GMT  
		Size: 600.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd52d7bfcc1e01bfc4b47f244e5855ea0de863d87916b0e1758e2bca695bd2c3`  
		Last Modified: Mon, 28 Sep 2026 19:09:55 GMT  
		Size: 875.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:20.0` - unknown; unknown

```console
$ docker pull odoo@sha256:51ec8d38f6204e7f6334a40b30224238564306e7d1ed42fa9cbfbed112744b44
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.0 MB (55029350 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9f48ff56f3a8b8ef986ac6b5e5fd6113ccb1f295477bd6427c11792380a3c70`

```dockerfile
```

-	Layers:
	-	`sha256:b1eedb2b44faddd6e24ebd95005cea9dde1c3d2e3382be044f86db8795828039`  
		Last Modified: Mon, 28 Sep 2026 19:09:56 GMT  
		Size: 55.0 MB (55001797 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a340389db09bb7869b9e803fb70bb6856e1d9507cb7c655d8d4373eea0aaf1bd`  
		Last Modified: Mon, 28 Sep 2026 19:09:53 GMT  
		Size: 27.6 KB (27553 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:20.0-20260926`

```console
$ docker pull odoo@sha256:c953aec9c6403db8c530a26a8af3a02317ce4fc45df64bffdda6e2fceac12e1d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `odoo:20.0-20260926` - linux; amd64

```console
$ docker pull odoo@sha256:a54b6a68e1816f57c3f22f611e049246ca274ab86bc9fb24fc021a21c850209e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **797.8 MB (797803823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1a11d4377b87f0883588dce896c5164666276113a6776546fd6df8a07dd9214`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Fri, 18 Sep 2026 21:20:35 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:20:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:20:35 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:20:37 GMT
ADD file:6c214fc3c3c22122c7eb68f7fb32783df308e60b1eaeb9baf7e4d0cc961d448d in / 
# Fri, 18 Sep 2026 21:20:38 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:32:44 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Fri, 02 Oct 2026 01:32:44 GMT
SHELL [/bin/bash -xo pipefail -c]
# Fri, 02 Oct 2026 01:32:44 GMT
ENV LANG=en_US.UTF-8
# Fri, 02 Oct 2026 01:32:44 GMT
ARG TARGETARCH=amd64
# Fri, 02 Oct 2026 01:32:44 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Fri, 02 Oct 2026 01:32:53 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:58 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:58 GMT
ENV ODOO_VERSION=20.0
# Fri, 02 Oct 2026 01:33:58 GMT
ARG ODOO_RELEASE=20260926
# Fri, 02 Oct 2026 01:33:58 GMT
ARG ODOO_SHA=7cb4a582ebe275a4f9c22eae24ce2bcb7fa27040
# Fri, 02 Oct 2026 01:35:04 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260926 ODOO_SHA=7cb4a582ebe275a4f9c22eae24ce2bcb7fa27040
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Fri, 02 Oct 2026 01:35:05 GMT
COPY ./entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:35:05 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Fri, 02 Oct 2026 01:35:05 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260926 ODOO_SHA=7cb4a582ebe275a4f9c22eae24ce2bcb7fa27040
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Fri, 02 Oct 2026 01:35:05 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Fri, 02 Oct 2026 01:35:05 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Fri, 02 Oct 2026 01:35:05 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Fri, 02 Oct 2026 01:35:05 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Fri, 02 Oct 2026 01:35:05 GMT
USER odoo
# Fri, 02 Oct 2026 01:35:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 02 Oct 2026 01:35:05 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:a60ef8ec184edb5ed91f5983f00261359fb2fe20f603e8d488b9477d32fcad70`  
		Last Modified: Fri, 18 Sep 2026 22:29:51 GMT  
		Size: 29.8 MB (29764422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c00dff1e5176396dde6d1ef81f3ec560cf5ff9b9afa8bcd94c9496f1f398845`  
		Last Modified: Fri, 02 Oct 2026 01:36:52 GMT  
		Size: 241.1 MB (241119561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f01217557c05985af8cc340e5bc3f926018a1bf5006eefa887879bdf4efdad92`  
		Last Modified: Fri, 02 Oct 2026 01:36:44 GMT  
		Size: 14.2 MB (14226443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92f391c3336cbbc1e78c39fef7ca5d26bebec6f748a41140e91074965316a706`  
		Last Modified: Fri, 02 Oct 2026 01:36:43 GMT  
		Size: 871.0 KB (871015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:991589626834abd7f08b4ca9815b22391022ecbe70484f35eb4556d3333de675`  
		Last Modified: Fri, 02 Oct 2026 01:36:57 GMT  
		Size: 511.8 MB (511819636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2818495a7de441bbf88f1c9b626ccdc9ab9c317f76f2f115cf6845426e3c9ec1`  
		Last Modified: Fri, 02 Oct 2026 01:36:45 GMT  
		Size: 718.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:636bb5eb4cb8505944c8a71295b4a13e0c71b9a3afbe1d4a7c30f1a8cfa4145e`  
		Last Modified: Fri, 02 Oct 2026 01:36:46 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:598a91cd0f951582af6332be697370b7e4be4c1dfd21ffb6e6720d783bbd57e3`  
		Last Modified: Fri, 02 Oct 2026 01:36:46 GMT  
		Size: 596.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa8b72ae33c3dc8768f3a37224ff3af2f87825e9ea75f8c5d5c9b57fc44f279b`  
		Last Modified: Fri, 02 Oct 2026 01:36:47 GMT  
		Size: 876.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:20.0-20260926` - unknown; unknown

```console
$ docker pull odoo@sha256:1065b6c5147dddfd959864d8eb102fe5f8ae217ad18a5048f6d41c239033b030
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.0 MB (55020918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d86820be3cf404428fba79012a1d3a7ba9256e8d1f3dce343e6ae38c858ad89`

```dockerfile
```

-	Layers:
	-	`sha256:e67d1da465d1a3c43d311d17179f8741817bbb4b92fd59fead4159965cba9c08`  
		Last Modified: Fri, 02 Oct 2026 01:36:47 GMT  
		Size: 55.0 MB (54993427 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aef1eb72f858d13d6bd759f22bf285e531f832f542717c942e9ea5ee0ccfeb00`  
		Last Modified: Fri, 02 Oct 2026 01:36:43 GMT  
		Size: 27.5 KB (27491 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:20.0-20260926` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:3170aab811a4ecd41858ec978f70c140f3252a238c4b47c0c898ebb432b910ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **794.1 MB (794108275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64759ba41128bf8abce8f5b8dc945d54bcfbe1ab583aa6295e7b8331d59c26bb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Fri, 18 Sep 2026 21:23:09 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:23:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:23:10 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:23:13 GMT
ADD file:1cd6cb2db79bbe57d4c67f2fc8379cad96159285fa5a44e68dad06261eee82b4 in / 
# Fri, 18 Sep 2026 21:23:13 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:32:35 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Fri, 02 Oct 2026 01:32:35 GMT
SHELL [/bin/bash -xo pipefail -c]
# Fri, 02 Oct 2026 01:32:35 GMT
ENV LANG=en_US.UTF-8
# Fri, 02 Oct 2026 01:32:35 GMT
ARG TARGETARCH=arm64
# Fri, 02 Oct 2026 01:32:35 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Fri, 02 Oct 2026 01:32:45 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:49 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:49 GMT
ENV ODOO_VERSION=20.0
# Fri, 02 Oct 2026 01:33:49 GMT
ARG ODOO_RELEASE=20260926
# Fri, 02 Oct 2026 01:33:49 GMT
ARG ODOO_SHA=7cb4a582ebe275a4f9c22eae24ce2bcb7fa27040
# Fri, 02 Oct 2026 01:35:07 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260926 ODOO_SHA=7cb4a582ebe275a4f9c22eae24ce2bcb7fa27040
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Fri, 02 Oct 2026 01:35:08 GMT
COPY ./entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:35:08 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Fri, 02 Oct 2026 01:35:08 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260926 ODOO_SHA=7cb4a582ebe275a4f9c22eae24ce2bcb7fa27040
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Fri, 02 Oct 2026 01:35:08 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Fri, 02 Oct 2026 01:35:08 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Fri, 02 Oct 2026 01:35:08 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Fri, 02 Oct 2026 01:35:08 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Fri, 02 Oct 2026 01:35:08 GMT
USER odoo
# Fri, 02 Oct 2026 01:35:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 02 Oct 2026 01:35:08 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:90812e242c93750dbd37ce847c7d3db62c2c53035367d1d89c61184f168f5d37`  
		Last Modified: Fri, 18 Sep 2026 22:29:58 GMT  
		Size: 28.9 MB (28940087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:130f34aeab8a0ffeaba6da8cb036ec7d6775ad03035726a607912a5df030e8da`  
		Last Modified: Fri, 02 Oct 2026 01:37:18 GMT  
		Size: 238.5 MB (238454827 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9492e8a10a04262728dfe891bb6bc53d0fcf3bc83a6ae0d2e73cf76f47a5d982`  
		Last Modified: Fri, 02 Oct 2026 01:37:10 GMT  
		Size: 14.2 MB (14197473 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3abf8085314d6508823bd561318a6f6a3eccb7994aea6aaef8cf647d846f4fd1`  
		Last Modified: Fri, 02 Oct 2026 01:37:09 GMT  
		Size: 870.9 KB (870882 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08ad8b852e9c00f8b8babaa00a183962f39a67fdcdfa7859a780db0a9b9c2387`  
		Last Modified: Fri, 02 Oct 2026 01:37:22 GMT  
		Size: 511.6 MB (511642257 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d24dc1f35a46ca9f5d7815b017cd76cf3277d8e3307d542c7c00d73b57c8149`  
		Last Modified: Fri, 02 Oct 2026 01:37:10 GMT  
		Size: 718.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5175d1ac4279cea7ca3b5b4817ba83c6c907cb4fef2f5c4b7ff5fa21ae3f0e27`  
		Last Modified: Fri, 02 Oct 2026 01:37:11 GMT  
		Size: 557.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c33b81b426a469047e6c7cdb47594d752bff6ae0d33e61234093f8fa6df2f97b`  
		Last Modified: Fri, 02 Oct 2026 01:37:11 GMT  
		Size: 597.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:212847a23b24dee0ad031d7e8709aa3c8ef79cda10a0e3e55b2c784f95b8475d`  
		Last Modified: Fri, 02 Oct 2026 01:37:12 GMT  
		Size: 877.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:20.0-20260926` - unknown; unknown

```console
$ docker pull odoo@sha256:ca9430cf6927e11d7b6c91617e153ee06cba41488cfeecab8dface253fe23d3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.0 MB (55028366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98243666829f41538a0b6d7db2e15a84805759afdfdf6ee8b29bcb8ba3c29fd8`

```dockerfile
```

-	Layers:
	-	`sha256:6d49ea9ff72a0582c018318498afe91a192789dd07a77db450a095ae7d5a1737`  
		Last Modified: Fri, 02 Oct 2026 01:37:12 GMT  
		Size: 55.0 MB (55000711 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:32a2344dec9d2fe1c8a72a67e33fe63939b7465e78629e10c1814365b042e5af`  
		Last Modified: Fri, 02 Oct 2026 01:37:08 GMT  
		Size: 27.7 KB (27655 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:20.0-20260926` - linux; ppc64le

```console
$ docker pull odoo@sha256:ccca49d14b08518519e5b688e2aad4616afb00cd8eb680218f809c44c08bc793
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **814.3 MB (814312281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3cd06ccc64f43832a4b83636f2ef5ade12f8160ec6eefc6711e630d04eec8c3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Fri, 11 Sep 2026 11:54:01 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:54:01 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:54:01 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:54:04 GMT
ADD file:23a54200dc45d2e165b80cd813d76a8863b2e15710bb20b738f813328f74d05b in / 
# Fri, 11 Sep 2026 11:54:05 GMT
CMD ["/bin/bash"]
# Mon, 28 Sep 2026 18:56:30 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Mon, 28 Sep 2026 18:56:30 GMT
SHELL [/bin/bash -xo pipefail -c]
# Mon, 28 Sep 2026 18:56:30 GMT
ENV LANG=en_US.UTF-8
# Mon, 28 Sep 2026 18:56:30 GMT
ARG TARGETARCH=ppc64le
# Mon, 28 Sep 2026 18:56:30 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Mon, 28 Sep 2026 18:56:52 GMT
# ARGS: TARGETARCH=ppc64le
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 28 Sep 2026 19:01:02 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 28 Sep 2026 19:01:02 GMT
ENV ODOO_VERSION=20.0
# Mon, 28 Sep 2026 19:01:02 GMT
ARG ODOO_RELEASE=20260926
# Mon, 28 Sep 2026 19:01:02 GMT
ARG ODOO_SHA=7cb4a582ebe275a4f9c22eae24ce2bcb7fa27040
# Mon, 28 Sep 2026 19:04:14 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260926 ODOO_SHA=7cb4a582ebe275a4f9c22eae24ce2bcb7fa27040
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Mon, 28 Sep 2026 19:04:18 GMT
COPY ./entrypoint.sh / # buildkit
# Mon, 28 Sep 2026 19:04:19 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Mon, 28 Sep 2026 19:04:22 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260926 ODOO_SHA=7cb4a582ebe275a4f9c22eae24ce2bcb7fa27040
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Mon, 28 Sep 2026 19:04:22 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Mon, 28 Sep 2026 19:04:22 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Mon, 28 Sep 2026 19:04:22 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Mon, 28 Sep 2026 19:04:23 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Mon, 28 Sep 2026 19:04:23 GMT
USER odoo
# Mon, 28 Sep 2026 19:04:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 28 Sep 2026 19:04:23 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:a7067f7ee788cc3e90f83fa0ac84d48a200fde4469a2a5e638f059842a8f11d1`  
		Last Modified: Fri, 11 Sep 2026 13:39:01 GMT  
		Size: 34.4 MB (34376958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7056e5335eeda1a995ed8e76b1a85d28b76a6c5a14082a11caf0eb7e8a3360e5`  
		Last Modified: Mon, 28 Sep 2026 19:09:44 GMT  
		Size: 249.4 MB (249411724 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ef9b20d478d7bc13e8b5c5584b5a55ee99191a50a62d92801d4496c3078a2eb`  
		Last Modified: Mon, 28 Sep 2026 19:09:35 GMT  
		Size: 17.3 MB (17306945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74facc9a28a86e8d9f454c26a78b0ad456c1dcffcab77f8f363e061cc0ded848`  
		Last Modified: Mon, 28 Sep 2026 19:09:34 GMT  
		Size: 870.0 KB (869959 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b538858bdaeb37c4fa8bb5215881ff361aa4270a0b648feb3dfbfc0ee407de75`  
		Last Modified: Mon, 28 Sep 2026 19:10:05 GMT  
		Size: 512.3 MB (512343945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4200c33b205355a49429f1fa1e0fc32acce66af58f46c9359169f016ad54579`  
		Last Modified: Mon, 28 Sep 2026 19:09:53 GMT  
		Size: 719.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dec0214bd494b09595bf03579be8a8840dcb4b9b54fbb9b5b880457ee3f00c99`  
		Last Modified: Mon, 28 Sep 2026 19:09:54 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2385578020ea4dd6a58a07ffc853ebaa0d4a5198e0a718f4b572384c21ab3191`  
		Last Modified: Mon, 28 Sep 2026 19:09:54 GMT  
		Size: 600.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd52d7bfcc1e01bfc4b47f244e5855ea0de863d87916b0e1758e2bca695bd2c3`  
		Last Modified: Mon, 28 Sep 2026 19:09:55 GMT  
		Size: 875.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:20.0-20260926` - unknown; unknown

```console
$ docker pull odoo@sha256:51ec8d38f6204e7f6334a40b30224238564306e7d1ed42fa9cbfbed112744b44
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.0 MB (55029350 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9f48ff56f3a8b8ef986ac6b5e5fd6113ccb1f295477bd6427c11792380a3c70`

```dockerfile
```

-	Layers:
	-	`sha256:b1eedb2b44faddd6e24ebd95005cea9dde1c3d2e3382be044f86db8795828039`  
		Last Modified: Mon, 28 Sep 2026 19:09:56 GMT  
		Size: 55.0 MB (55001797 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a340389db09bb7869b9e803fb70bb6856e1d9507cb7c655d8d4373eea0aaf1bd`  
		Last Modified: Mon, 28 Sep 2026 19:09:53 GMT  
		Size: 27.6 KB (27553 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:latest`

```console
$ docker pull odoo@sha256:c953aec9c6403db8c530a26a8af3a02317ce4fc45df64bffdda6e2fceac12e1d
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
$ docker pull odoo@sha256:a54b6a68e1816f57c3f22f611e049246ca274ab86bc9fb24fc021a21c850209e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **797.8 MB (797803823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1a11d4377b87f0883588dce896c5164666276113a6776546fd6df8a07dd9214`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Fri, 18 Sep 2026 21:20:35 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:20:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:20:35 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:20:37 GMT
ADD file:6c214fc3c3c22122c7eb68f7fb32783df308e60b1eaeb9baf7e4d0cc961d448d in / 
# Fri, 18 Sep 2026 21:20:38 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:32:44 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Fri, 02 Oct 2026 01:32:44 GMT
SHELL [/bin/bash -xo pipefail -c]
# Fri, 02 Oct 2026 01:32:44 GMT
ENV LANG=en_US.UTF-8
# Fri, 02 Oct 2026 01:32:44 GMT
ARG TARGETARCH=amd64
# Fri, 02 Oct 2026 01:32:44 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Fri, 02 Oct 2026 01:32:53 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:58 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:58 GMT
ENV ODOO_VERSION=20.0
# Fri, 02 Oct 2026 01:33:58 GMT
ARG ODOO_RELEASE=20260926
# Fri, 02 Oct 2026 01:33:58 GMT
ARG ODOO_SHA=7cb4a582ebe275a4f9c22eae24ce2bcb7fa27040
# Fri, 02 Oct 2026 01:35:04 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260926 ODOO_SHA=7cb4a582ebe275a4f9c22eae24ce2bcb7fa27040
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Fri, 02 Oct 2026 01:35:05 GMT
COPY ./entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:35:05 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Fri, 02 Oct 2026 01:35:05 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20260926 ODOO_SHA=7cb4a582ebe275a4f9c22eae24ce2bcb7fa27040
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Fri, 02 Oct 2026 01:35:05 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Fri, 02 Oct 2026 01:35:05 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Fri, 02 Oct 2026 01:35:05 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Fri, 02 Oct 2026 01:35:05 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Fri, 02 Oct 2026 01:35:05 GMT
USER odoo
# Fri, 02 Oct 2026 01:35:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 02 Oct 2026 01:35:05 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:a60ef8ec184edb5ed91f5983f00261359fb2fe20f603e8d488b9477d32fcad70`  
		Last Modified: Fri, 18 Sep 2026 22:29:51 GMT  
		Size: 29.8 MB (29764422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c00dff1e5176396dde6d1ef81f3ec560cf5ff9b9afa8bcd94c9496f1f398845`  
		Last Modified: Fri, 02 Oct 2026 01:36:52 GMT  
		Size: 241.1 MB (241119561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f01217557c05985af8cc340e5bc3f926018a1bf5006eefa887879bdf4efdad92`  
		Last Modified: Fri, 02 Oct 2026 01:36:44 GMT  
		Size: 14.2 MB (14226443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92f391c3336cbbc1e78c39fef7ca5d26bebec6f748a41140e91074965316a706`  
		Last Modified: Fri, 02 Oct 2026 01:36:43 GMT  
		Size: 871.0 KB (871015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:991589626834abd7f08b4ca9815b22391022ecbe70484f35eb4556d3333de675`  
		Last Modified: Fri, 02 Oct 2026 01:36:57 GMT  
		Size: 511.8 MB (511819636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2818495a7de441bbf88f1c9b626ccdc9ab9c317f76f2f115cf6845426e3c9ec1`  
		Last Modified: Fri, 02 Oct 2026 01:36:45 GMT  
		Size: 718.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:636bb5eb4cb8505944c8a71295b4a13e0c71b9a3afbe1d4a7c30f1a8cfa4145e`  
		Last Modified: Fri, 02 Oct 2026 01:36:46 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:598a91cd0f951582af6332be697370b7e4be4c1dfd21ffb6e6720d783bbd57e3`  
		Last Modified: Fri, 02 Oct 2026 01:36:46 GMT  
		Size: 596.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa8b72ae33c3dc8768f3a37224ff3af2f87825e9ea75f8c5d5c9b57fc44f279b`  
		Last Modified: Fri, 02 Oct 2026 01:36:47 GMT  
		Size: 876.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:latest` - unknown; unknown

```console
$ docker pull odoo@sha256:1065b6c5147dddfd959864d8eb102fe5f8ae217ad18a5048f6d41c239033b030
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.0 MB (55020918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d86820be3cf404428fba79012a1d3a7ba9256e8d1f3dce343e6ae38c858ad89`

```dockerfile
```

-	Layers:
	-	`sha256:e67d1da465d1a3c43d311d17179f8741817bbb4b92fd59fead4159965cba9c08`  
		Last Modified: Fri, 02 Oct 2026 01:36:47 GMT  
		Size: 55.0 MB (54993427 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aef1eb72f858d13d6bd759f22bf285e531f832f542717c942e9ea5ee0ccfeb00`  
		Last Modified: Fri, 02 Oct 2026 01:36:43 GMT  
		Size: 27.5 KB (27491 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:latest` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:3170aab811a4ecd41858ec978f70c140f3252a238c4b47c0c898ebb432b910ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **794.1 MB (794108275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64759ba41128bf8abce8f5b8dc945d54bcfbe1ab583aa6295e7b8331d59c26bb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Fri, 18 Sep 2026 21:23:09 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:23:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:23:10 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:23:13 GMT
ADD file:1cd6cb2db79bbe57d4c67f2fc8379cad96159285fa5a44e68dad06261eee82b4 in / 
# Fri, 18 Sep 2026 21:23:13 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:32:35 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Fri, 02 Oct 2026 01:32:35 GMT
SHELL [/bin/bash -xo pipefail -c]
# Fri, 02 Oct 2026 01:32:35 GMT
ENV LANG=en_US.UTF-8
# Fri, 02 Oct 2026 01:32:35 GMT
ARG TARGETARCH=arm64
# Fri, 02 Oct 2026 01:32:35 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Fri, 02 Oct 2026 01:32:45 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:49 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:33:49 GMT
ENV ODOO_VERSION=20.0
# Fri, 02 Oct 2026 01:33:49 GMT
ARG ODOO_RELEASE=20260926
# Fri, 02 Oct 2026 01:33:49 GMT
ARG ODOO_SHA=7cb4a582ebe275a4f9c22eae24ce2bcb7fa27040
# Fri, 02 Oct 2026 01:35:07 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260926 ODOO_SHA=7cb4a582ebe275a4f9c22eae24ce2bcb7fa27040
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Fri, 02 Oct 2026 01:35:08 GMT
COPY ./entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:35:08 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Fri, 02 Oct 2026 01:35:08 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20260926 ODOO_SHA=7cb4a582ebe275a4f9c22eae24ce2bcb7fa27040
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Fri, 02 Oct 2026 01:35:08 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Fri, 02 Oct 2026 01:35:08 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Fri, 02 Oct 2026 01:35:08 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Fri, 02 Oct 2026 01:35:08 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Fri, 02 Oct 2026 01:35:08 GMT
USER odoo
# Fri, 02 Oct 2026 01:35:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 02 Oct 2026 01:35:08 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:90812e242c93750dbd37ce847c7d3db62c2c53035367d1d89c61184f168f5d37`  
		Last Modified: Fri, 18 Sep 2026 22:29:58 GMT  
		Size: 28.9 MB (28940087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:130f34aeab8a0ffeaba6da8cb036ec7d6775ad03035726a607912a5df030e8da`  
		Last Modified: Fri, 02 Oct 2026 01:37:18 GMT  
		Size: 238.5 MB (238454827 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9492e8a10a04262728dfe891bb6bc53d0fcf3bc83a6ae0d2e73cf76f47a5d982`  
		Last Modified: Fri, 02 Oct 2026 01:37:10 GMT  
		Size: 14.2 MB (14197473 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3abf8085314d6508823bd561318a6f6a3eccb7994aea6aaef8cf647d846f4fd1`  
		Last Modified: Fri, 02 Oct 2026 01:37:09 GMT  
		Size: 870.9 KB (870882 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08ad8b852e9c00f8b8babaa00a183962f39a67fdcdfa7859a780db0a9b9c2387`  
		Last Modified: Fri, 02 Oct 2026 01:37:22 GMT  
		Size: 511.6 MB (511642257 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d24dc1f35a46ca9f5d7815b017cd76cf3277d8e3307d542c7c00d73b57c8149`  
		Last Modified: Fri, 02 Oct 2026 01:37:10 GMT  
		Size: 718.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5175d1ac4279cea7ca3b5b4817ba83c6c907cb4fef2f5c4b7ff5fa21ae3f0e27`  
		Last Modified: Fri, 02 Oct 2026 01:37:11 GMT  
		Size: 557.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c33b81b426a469047e6c7cdb47594d752bff6ae0d33e61234093f8fa6df2f97b`  
		Last Modified: Fri, 02 Oct 2026 01:37:11 GMT  
		Size: 597.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:212847a23b24dee0ad031d7e8709aa3c8ef79cda10a0e3e55b2c784f95b8475d`  
		Last Modified: Fri, 02 Oct 2026 01:37:12 GMT  
		Size: 877.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:latest` - unknown; unknown

```console
$ docker pull odoo@sha256:ca9430cf6927e11d7b6c91617e153ee06cba41488cfeecab8dface253fe23d3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.0 MB (55028366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98243666829f41538a0b6d7db2e15a84805759afdfdf6ee8b29bcb8ba3c29fd8`

```dockerfile
```

-	Layers:
	-	`sha256:6d49ea9ff72a0582c018318498afe91a192789dd07a77db450a095ae7d5a1737`  
		Last Modified: Fri, 02 Oct 2026 01:37:12 GMT  
		Size: 55.0 MB (55000711 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:32a2344dec9d2fe1c8a72a67e33fe63939b7465e78629e10c1814365b042e5af`  
		Last Modified: Fri, 02 Oct 2026 01:37:08 GMT  
		Size: 27.7 KB (27655 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:latest` - linux; ppc64le

```console
$ docker pull odoo@sha256:ccca49d14b08518519e5b688e2aad4616afb00cd8eb680218f809c44c08bc793
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **814.3 MB (814312281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3cd06ccc64f43832a4b83636f2ef5ade12f8160ec6eefc6711e630d04eec8c3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Fri, 11 Sep 2026 11:54:01 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:54:01 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:54:01 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:54:04 GMT
ADD file:23a54200dc45d2e165b80cd813d76a8863b2e15710bb20b738f813328f74d05b in / 
# Fri, 11 Sep 2026 11:54:05 GMT
CMD ["/bin/bash"]
# Mon, 28 Sep 2026 18:56:30 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Mon, 28 Sep 2026 18:56:30 GMT
SHELL [/bin/bash -xo pipefail -c]
# Mon, 28 Sep 2026 18:56:30 GMT
ENV LANG=en_US.UTF-8
# Mon, 28 Sep 2026 18:56:30 GMT
ARG TARGETARCH=ppc64le
# Mon, 28 Sep 2026 18:56:30 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Mon, 28 Sep 2026 18:56:52 GMT
# ARGS: TARGETARCH=ppc64le
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 28 Sep 2026 19:01:02 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 28 Sep 2026 19:01:02 GMT
ENV ODOO_VERSION=20.0
# Mon, 28 Sep 2026 19:01:02 GMT
ARG ODOO_RELEASE=20260926
# Mon, 28 Sep 2026 19:01:02 GMT
ARG ODOO_SHA=7cb4a582ebe275a4f9c22eae24ce2bcb7fa27040
# Mon, 28 Sep 2026 19:04:14 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260926 ODOO_SHA=7cb4a582ebe275a4f9c22eae24ce2bcb7fa27040
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Mon, 28 Sep 2026 19:04:18 GMT
COPY ./entrypoint.sh / # buildkit
# Mon, 28 Sep 2026 19:04:19 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Mon, 28 Sep 2026 19:04:22 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260926 ODOO_SHA=7cb4a582ebe275a4f9c22eae24ce2bcb7fa27040
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Mon, 28 Sep 2026 19:04:22 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Mon, 28 Sep 2026 19:04:22 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Mon, 28 Sep 2026 19:04:22 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Mon, 28 Sep 2026 19:04:23 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Mon, 28 Sep 2026 19:04:23 GMT
USER odoo
# Mon, 28 Sep 2026 19:04:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 28 Sep 2026 19:04:23 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:a7067f7ee788cc3e90f83fa0ac84d48a200fde4469a2a5e638f059842a8f11d1`  
		Last Modified: Fri, 11 Sep 2026 13:39:01 GMT  
		Size: 34.4 MB (34376958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7056e5335eeda1a995ed8e76b1a85d28b76a6c5a14082a11caf0eb7e8a3360e5`  
		Last Modified: Mon, 28 Sep 2026 19:09:44 GMT  
		Size: 249.4 MB (249411724 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ef9b20d478d7bc13e8b5c5584b5a55ee99191a50a62d92801d4496c3078a2eb`  
		Last Modified: Mon, 28 Sep 2026 19:09:35 GMT  
		Size: 17.3 MB (17306945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74facc9a28a86e8d9f454c26a78b0ad456c1dcffcab77f8f363e061cc0ded848`  
		Last Modified: Mon, 28 Sep 2026 19:09:34 GMT  
		Size: 870.0 KB (869959 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b538858bdaeb37c4fa8bb5215881ff361aa4270a0b648feb3dfbfc0ee407de75`  
		Last Modified: Mon, 28 Sep 2026 19:10:05 GMT  
		Size: 512.3 MB (512343945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4200c33b205355a49429f1fa1e0fc32acce66af58f46c9359169f016ad54579`  
		Last Modified: Mon, 28 Sep 2026 19:09:53 GMT  
		Size: 719.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dec0214bd494b09595bf03579be8a8840dcb4b9b54fbb9b5b880457ee3f00c99`  
		Last Modified: Mon, 28 Sep 2026 19:09:54 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2385578020ea4dd6a58a07ffc853ebaa0d4a5198e0a718f4b572384c21ab3191`  
		Last Modified: Mon, 28 Sep 2026 19:09:54 GMT  
		Size: 600.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd52d7bfcc1e01bfc4b47f244e5855ea0de863d87916b0e1758e2bca695bd2c3`  
		Last Modified: Mon, 28 Sep 2026 19:09:55 GMT  
		Size: 875.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:latest` - unknown; unknown

```console
$ docker pull odoo@sha256:51ec8d38f6204e7f6334a40b30224238564306e7d1ed42fa9cbfbed112744b44
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.0 MB (55029350 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9f48ff56f3a8b8ef986ac6b5e5fd6113ccb1f295477bd6427c11792380a3c70`

```dockerfile
```

-	Layers:
	-	`sha256:b1eedb2b44faddd6e24ebd95005cea9dde1c3d2e3382be044f86db8795828039`  
		Last Modified: Mon, 28 Sep 2026 19:09:56 GMT  
		Size: 55.0 MB (55001797 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a340389db09bb7869b9e803fb70bb6856e1d9507cb7c655d8d4373eea0aaf1bd`  
		Last Modified: Mon, 28 Sep 2026 19:09:53 GMT  
		Size: 27.6 KB (27553 bytes)  
		MIME: application/vnd.in-toto+json
