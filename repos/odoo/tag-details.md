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
$ docker pull odoo@sha256:60eb1b5006df85f900e300b6cc120d51ebd979379ee9588340adc2a84ffcd718
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
$ docker pull odoo@sha256:f011d0db88baac1b8aa9310827618086676a8c97bb5656cf4ae217b3c592d1e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **693.6 MB (693594796 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e20a0fc0868b2e1aa5e6cb94c81bccbd3c300cad7a8d1096ebd93e1feac6cb6c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Fri, 18 Sep 2026 21:23:50 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:23:50 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:23:50 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:23:53 GMT
ADD file:65c699fd9797e3453b1d9214a3d29d981984167bbdef224150cdb4da169e2a77 in / 
# Fri, 18 Sep 2026 21:23:54 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 04:56:23 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Fri, 02 Oct 2026 04:56:23 GMT
SHELL [/bin/bash -xo pipefail -c]
# Fri, 02 Oct 2026 04:56:23 GMT
ENV LANG=en_US.UTF-8
# Fri, 02 Oct 2026 04:56:23 GMT
ARG TARGETARCH=ppc64le
# Fri, 02 Oct 2026 04:56:23 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Fri, 02 Oct 2026 04:56:38 GMT
# ARGS: TARGETARCH=ppc64le
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 05:01:04 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 05:01:04 GMT
ENV ODOO_VERSION=18.0
# Fri, 02 Oct 2026 05:01:04 GMT
ARG ODOO_RELEASE=20260926
# Fri, 02 Oct 2026 05:01:04 GMT
ARG ODOO_SHA=b6a268db3fca5ce831a35070dd3c4bfc6a575b85
# Fri, 02 Oct 2026 05:11:48 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260926 ODOO_SHA=b6a268db3fca5ce831a35070dd3c4bfc6a575b85
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Fri, 02 Oct 2026 05:11:49 GMT
COPY ./entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 05:11:50 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Fri, 02 Oct 2026 05:11:51 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260926 ODOO_SHA=b6a268db3fca5ce831a35070dd3c4bfc6a575b85
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Fri, 02 Oct 2026 05:11:51 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Fri, 02 Oct 2026 05:11:51 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Fri, 02 Oct 2026 05:11:51 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Fri, 02 Oct 2026 05:11:51 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Fri, 02 Oct 2026 05:11:51 GMT
USER odoo
# Fri, 02 Oct 2026 05:11:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 02 Oct 2026 05:11:51 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:02a2dd31affb75e9ad8595e0b0a537f3d60ecf8145f7dcd72eeaf14132bf426d`  
		Last Modified: Fri, 18 Sep 2026 22:30:11 GMT  
		Size: 34.4 MB (34376509 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c8344265edc93d01043011fa98d8ddf9f7dda1304b1ac8ca6c15ac2ec23ab67`  
		Last Modified: Fri, 02 Oct 2026 05:09:13 GMT  
		Size: 252.1 MB (252097976 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc434c514f33466f67088b49592594c177e546c4d94bac6c3dee8c1b92be8c33`  
		Last Modified: Fri, 02 Oct 2026 05:09:04 GMT  
		Size: 14.7 MB (14743895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f332b27062d44f5f49a6aebc57f43b4a24363ca0579b5d44e755f9b9c0b1a385`  
		Last Modified: Fri, 02 Oct 2026 05:09:03 GMT  
		Size: 871.9 KB (871868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:519d3f5c01464397f42bce9789a64709d2a0686cff004413a49c9a82c101a1b4`  
		Last Modified: Fri, 02 Oct 2026 05:15:37 GMT  
		Size: 391.5 MB (391501745 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:706020c54ca2c1d9f060b67dc7dc6b4647eff35605543797b39fde8227dd7584`  
		Last Modified: Fri, 02 Oct 2026 05:15:29 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:938462210cf2456dbd04bdc3d109d2ea2166a78464288ebe3542417ecf0c0ce5`  
		Last Modified: Fri, 02 Oct 2026 05:15:29 GMT  
		Size: 557.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:656a28ddfd21639b956e874e81509ebce0ac26959d6f84dc6820688d8d1c0f5c`  
		Last Modified: Fri, 02 Oct 2026 05:15:29 GMT  
		Size: 600.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68287b825680305f05347ee7ea056f58bb4641c9404078af1533393d17744e11`  
		Last Modified: Fri, 02 Oct 2026 05:15:30 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18` - unknown; unknown

```console
$ docker pull odoo@sha256:bd5f74d980ce3f5d52a5d08449a7d99dc01ad69fecea3ccb401fbf197defe5ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.9 MB (43949574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2449cb5bbe31688045844899b6d52f3bd14547d9ff0ffe83798e3ca86a97df4d`

```dockerfile
```

-	Layers:
	-	`sha256:35b0ca2336868b6b4d01f31e692b05b131f9be62f126d178cde269293dcc2560`  
		Last Modified: Fri, 02 Oct 2026 05:15:31 GMT  
		Size: 43.9 MB (43922321 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f2a22dd5f9b497d3272906801b5f2812a7b3f4f56de04809df8f8ba577e7f197`  
		Last Modified: Fri, 02 Oct 2026 05:15:29 GMT  
		Size: 27.3 KB (27253 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:18.0`

```console
$ docker pull odoo@sha256:60eb1b5006df85f900e300b6cc120d51ebd979379ee9588340adc2a84ffcd718
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
$ docker pull odoo@sha256:f011d0db88baac1b8aa9310827618086676a8c97bb5656cf4ae217b3c592d1e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **693.6 MB (693594796 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e20a0fc0868b2e1aa5e6cb94c81bccbd3c300cad7a8d1096ebd93e1feac6cb6c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Fri, 18 Sep 2026 21:23:50 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:23:50 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:23:50 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:23:53 GMT
ADD file:65c699fd9797e3453b1d9214a3d29d981984167bbdef224150cdb4da169e2a77 in / 
# Fri, 18 Sep 2026 21:23:54 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 04:56:23 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Fri, 02 Oct 2026 04:56:23 GMT
SHELL [/bin/bash -xo pipefail -c]
# Fri, 02 Oct 2026 04:56:23 GMT
ENV LANG=en_US.UTF-8
# Fri, 02 Oct 2026 04:56:23 GMT
ARG TARGETARCH=ppc64le
# Fri, 02 Oct 2026 04:56:23 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Fri, 02 Oct 2026 04:56:38 GMT
# ARGS: TARGETARCH=ppc64le
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 05:01:04 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 05:01:04 GMT
ENV ODOO_VERSION=18.0
# Fri, 02 Oct 2026 05:01:04 GMT
ARG ODOO_RELEASE=20260926
# Fri, 02 Oct 2026 05:01:04 GMT
ARG ODOO_SHA=b6a268db3fca5ce831a35070dd3c4bfc6a575b85
# Fri, 02 Oct 2026 05:11:48 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260926 ODOO_SHA=b6a268db3fca5ce831a35070dd3c4bfc6a575b85
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Fri, 02 Oct 2026 05:11:49 GMT
COPY ./entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 05:11:50 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Fri, 02 Oct 2026 05:11:51 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260926 ODOO_SHA=b6a268db3fca5ce831a35070dd3c4bfc6a575b85
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Fri, 02 Oct 2026 05:11:51 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Fri, 02 Oct 2026 05:11:51 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Fri, 02 Oct 2026 05:11:51 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Fri, 02 Oct 2026 05:11:51 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Fri, 02 Oct 2026 05:11:51 GMT
USER odoo
# Fri, 02 Oct 2026 05:11:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 02 Oct 2026 05:11:51 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:02a2dd31affb75e9ad8595e0b0a537f3d60ecf8145f7dcd72eeaf14132bf426d`  
		Last Modified: Fri, 18 Sep 2026 22:30:11 GMT  
		Size: 34.4 MB (34376509 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c8344265edc93d01043011fa98d8ddf9f7dda1304b1ac8ca6c15ac2ec23ab67`  
		Last Modified: Fri, 02 Oct 2026 05:09:13 GMT  
		Size: 252.1 MB (252097976 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc434c514f33466f67088b49592594c177e546c4d94bac6c3dee8c1b92be8c33`  
		Last Modified: Fri, 02 Oct 2026 05:09:04 GMT  
		Size: 14.7 MB (14743895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f332b27062d44f5f49a6aebc57f43b4a24363ca0579b5d44e755f9b9c0b1a385`  
		Last Modified: Fri, 02 Oct 2026 05:09:03 GMT  
		Size: 871.9 KB (871868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:519d3f5c01464397f42bce9789a64709d2a0686cff004413a49c9a82c101a1b4`  
		Last Modified: Fri, 02 Oct 2026 05:15:37 GMT  
		Size: 391.5 MB (391501745 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:706020c54ca2c1d9f060b67dc7dc6b4647eff35605543797b39fde8227dd7584`  
		Last Modified: Fri, 02 Oct 2026 05:15:29 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:938462210cf2456dbd04bdc3d109d2ea2166a78464288ebe3542417ecf0c0ce5`  
		Last Modified: Fri, 02 Oct 2026 05:15:29 GMT  
		Size: 557.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:656a28ddfd21639b956e874e81509ebce0ac26959d6f84dc6820688d8d1c0f5c`  
		Last Modified: Fri, 02 Oct 2026 05:15:29 GMT  
		Size: 600.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68287b825680305f05347ee7ea056f58bb4641c9404078af1533393d17744e11`  
		Last Modified: Fri, 02 Oct 2026 05:15:30 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18.0` - unknown; unknown

```console
$ docker pull odoo@sha256:bd5f74d980ce3f5d52a5d08449a7d99dc01ad69fecea3ccb401fbf197defe5ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.9 MB (43949574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2449cb5bbe31688045844899b6d52f3bd14547d9ff0ffe83798e3ca86a97df4d`

```dockerfile
```

-	Layers:
	-	`sha256:35b0ca2336868b6b4d01f31e692b05b131f9be62f126d178cde269293dcc2560`  
		Last Modified: Fri, 02 Oct 2026 05:15:31 GMT  
		Size: 43.9 MB (43922321 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f2a22dd5f9b497d3272906801b5f2812a7b3f4f56de04809df8f8ba577e7f197`  
		Last Modified: Fri, 02 Oct 2026 05:15:29 GMT  
		Size: 27.3 KB (27253 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:18.0-20260926`

```console
$ docker pull odoo@sha256:60eb1b5006df85f900e300b6cc120d51ebd979379ee9588340adc2a84ffcd718
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
$ docker pull odoo@sha256:f011d0db88baac1b8aa9310827618086676a8c97bb5656cf4ae217b3c592d1e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **693.6 MB (693594796 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e20a0fc0868b2e1aa5e6cb94c81bccbd3c300cad7a8d1096ebd93e1feac6cb6c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Fri, 18 Sep 2026 21:23:50 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:23:50 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:23:50 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:23:53 GMT
ADD file:65c699fd9797e3453b1d9214a3d29d981984167bbdef224150cdb4da169e2a77 in / 
# Fri, 18 Sep 2026 21:23:54 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 04:56:23 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Fri, 02 Oct 2026 04:56:23 GMT
SHELL [/bin/bash -xo pipefail -c]
# Fri, 02 Oct 2026 04:56:23 GMT
ENV LANG=en_US.UTF-8
# Fri, 02 Oct 2026 04:56:23 GMT
ARG TARGETARCH=ppc64le
# Fri, 02 Oct 2026 04:56:23 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Fri, 02 Oct 2026 04:56:38 GMT
# ARGS: TARGETARCH=ppc64le
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 05:01:04 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 05:01:04 GMT
ENV ODOO_VERSION=18.0
# Fri, 02 Oct 2026 05:01:04 GMT
ARG ODOO_RELEASE=20260926
# Fri, 02 Oct 2026 05:01:04 GMT
ARG ODOO_SHA=b6a268db3fca5ce831a35070dd3c4bfc6a575b85
# Fri, 02 Oct 2026 05:11:48 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260926 ODOO_SHA=b6a268db3fca5ce831a35070dd3c4bfc6a575b85
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Fri, 02 Oct 2026 05:11:49 GMT
COPY ./entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 05:11:50 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Fri, 02 Oct 2026 05:11:51 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260926 ODOO_SHA=b6a268db3fca5ce831a35070dd3c4bfc6a575b85
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Fri, 02 Oct 2026 05:11:51 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Fri, 02 Oct 2026 05:11:51 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Fri, 02 Oct 2026 05:11:51 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Fri, 02 Oct 2026 05:11:51 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Fri, 02 Oct 2026 05:11:51 GMT
USER odoo
# Fri, 02 Oct 2026 05:11:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 02 Oct 2026 05:11:51 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:02a2dd31affb75e9ad8595e0b0a537f3d60ecf8145f7dcd72eeaf14132bf426d`  
		Last Modified: Fri, 18 Sep 2026 22:30:11 GMT  
		Size: 34.4 MB (34376509 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c8344265edc93d01043011fa98d8ddf9f7dda1304b1ac8ca6c15ac2ec23ab67`  
		Last Modified: Fri, 02 Oct 2026 05:09:13 GMT  
		Size: 252.1 MB (252097976 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc434c514f33466f67088b49592594c177e546c4d94bac6c3dee8c1b92be8c33`  
		Last Modified: Fri, 02 Oct 2026 05:09:04 GMT  
		Size: 14.7 MB (14743895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f332b27062d44f5f49a6aebc57f43b4a24363ca0579b5d44e755f9b9c0b1a385`  
		Last Modified: Fri, 02 Oct 2026 05:09:03 GMT  
		Size: 871.9 KB (871868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:519d3f5c01464397f42bce9789a64709d2a0686cff004413a49c9a82c101a1b4`  
		Last Modified: Fri, 02 Oct 2026 05:15:37 GMT  
		Size: 391.5 MB (391501745 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:706020c54ca2c1d9f060b67dc7dc6b4647eff35605543797b39fde8227dd7584`  
		Last Modified: Fri, 02 Oct 2026 05:15:29 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:938462210cf2456dbd04bdc3d109d2ea2166a78464288ebe3542417ecf0c0ce5`  
		Last Modified: Fri, 02 Oct 2026 05:15:29 GMT  
		Size: 557.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:656a28ddfd21639b956e874e81509ebce0ac26959d6f84dc6820688d8d1c0f5c`  
		Last Modified: Fri, 02 Oct 2026 05:15:29 GMT  
		Size: 600.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68287b825680305f05347ee7ea056f58bb4641c9404078af1533393d17744e11`  
		Last Modified: Fri, 02 Oct 2026 05:15:30 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18.0-20260926` - unknown; unknown

```console
$ docker pull odoo@sha256:bd5f74d980ce3f5d52a5d08449a7d99dc01ad69fecea3ccb401fbf197defe5ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.9 MB (43949574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2449cb5bbe31688045844899b6d52f3bd14547d9ff0ffe83798e3ca86a97df4d`

```dockerfile
```

-	Layers:
	-	`sha256:35b0ca2336868b6b4d01f31e692b05b131f9be62f126d178cde269293dcc2560`  
		Last Modified: Fri, 02 Oct 2026 05:15:31 GMT  
		Size: 43.9 MB (43922321 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f2a22dd5f9b497d3272906801b5f2812a7b3f4f56de04809df8f8ba577e7f197`  
		Last Modified: Fri, 02 Oct 2026 05:15:29 GMT  
		Size: 27.3 KB (27253 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:19`

```console
$ docker pull odoo@sha256:dd9013e669caaa23d26765dc55814655eaeecca7cfc2c265dbabae913bce22fd
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
$ docker pull odoo@sha256:60bc2b22cf7ba3ee930e2d20d23922bd90c9f85dc16392e55d2b82d7349248cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **717.1 MB (717086503 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9cb7ab41cd153c801a170b1fc0d20be1348cc2e9c04e75287403ac20fab0ceb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Fri, 18 Sep 2026 21:23:50 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:23:50 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:23:50 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:23:53 GMT
ADD file:65c699fd9797e3453b1d9214a3d29d981984167bbdef224150cdb4da169e2a77 in / 
# Fri, 18 Sep 2026 21:23:54 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 04:56:23 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Fri, 02 Oct 2026 04:56:23 GMT
SHELL [/bin/bash -xo pipefail -c]
# Fri, 02 Oct 2026 04:56:23 GMT
ENV LANG=en_US.UTF-8
# Fri, 02 Oct 2026 04:56:23 GMT
ARG TARGETARCH=ppc64le
# Fri, 02 Oct 2026 04:56:23 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Fri, 02 Oct 2026 04:56:38 GMT
# ARGS: TARGETARCH=ppc64le
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 05:01:04 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 05:01:04 GMT
ENV ODOO_VERSION=19.0
# Fri, 02 Oct 2026 05:01:04 GMT
ARG ODOO_RELEASE=20260926
# Fri, 02 Oct 2026 05:01:04 GMT
ARG ODOO_SHA=cb9d876779edc8d5f0394ddd3936a387e349077c
# Fri, 02 Oct 2026 05:04:24 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260926 ODOO_SHA=cb9d876779edc8d5f0394ddd3936a387e349077c
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Fri, 02 Oct 2026 05:04:25 GMT
COPY ./entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 05:04:26 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Fri, 02 Oct 2026 05:04:26 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260926 ODOO_SHA=cb9d876779edc8d5f0394ddd3936a387e349077c
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Fri, 02 Oct 2026 05:04:26 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Fri, 02 Oct 2026 05:04:26 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Fri, 02 Oct 2026 05:04:26 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Fri, 02 Oct 2026 05:04:26 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Fri, 02 Oct 2026 05:04:26 GMT
USER odoo
# Fri, 02 Oct 2026 05:04:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 02 Oct 2026 05:04:26 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:02a2dd31affb75e9ad8595e0b0a537f3d60ecf8145f7dcd72eeaf14132bf426d`  
		Last Modified: Fri, 18 Sep 2026 22:30:11 GMT  
		Size: 34.4 MB (34376509 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c8344265edc93d01043011fa98d8ddf9f7dda1304b1ac8ca6c15ac2ec23ab67`  
		Last Modified: Fri, 02 Oct 2026 05:09:13 GMT  
		Size: 252.1 MB (252097976 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc434c514f33466f67088b49592594c177e546c4d94bac6c3dee8c1b92be8c33`  
		Last Modified: Fri, 02 Oct 2026 05:09:04 GMT  
		Size: 14.7 MB (14743895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f332b27062d44f5f49a6aebc57f43b4a24363ca0579b5d44e755f9b9c0b1a385`  
		Last Modified: Fri, 02 Oct 2026 05:09:03 GMT  
		Size: 871.9 KB (871868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4797121695f29f29eff3fe8e00195a554d674e2dd553debad5f6a9ad58c4d43`  
		Last Modified: Fri, 02 Oct 2026 05:09:16 GMT  
		Size: 415.0 MB (414993499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b258258e49fc257ced3ef919461152432d3be9e3c6793fb92d60cecfbd98c8a3`  
		Last Modified: Fri, 02 Oct 2026 05:09:04 GMT  
		Size: 719.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abcea566c6783e4f69106be559a6101fc51c3be9e1e1450168b39f1e744ce166`  
		Last Modified: Fri, 02 Oct 2026 05:09:05 GMT  
		Size: 557.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:193e068acfc3460e002a0b161451eba32300e1ab3fcd72625c2ac328d891429e`  
		Last Modified: Fri, 02 Oct 2026 05:09:05 GMT  
		Size: 601.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5b58bacbcc1794b525e25b2f6774a7f1b2c388fa22034011a3edf76af2eb176`  
		Last Modified: Fri, 02 Oct 2026 05:09:07 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19` - unknown; unknown

```console
$ docker pull odoo@sha256:ae4a8d1c92381f10f5e6bfddae966aecaf17db07249c1c6b6e56753cde50a521
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.5 MB (52494505 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:056ed01f319607d5b7b8f7df01346ec89404f4296d6b7dec6f6186500b7e66ba`

```dockerfile
```

-	Layers:
	-	`sha256:b764cf539a88280ed4960546c9a6eff24e0cec449025bd98784743307103d24d`  
		Last Modified: Fri, 02 Oct 2026 05:09:06 GMT  
		Size: 52.5 MB (52467252 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:73222999a1a4b23af393ff003d374d2e5ef2d66808b22e4ead14faabcbf8ae46`  
		Last Modified: Fri, 02 Oct 2026 05:09:02 GMT  
		Size: 27.3 KB (27253 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:19.0`

```console
$ docker pull odoo@sha256:dd9013e669caaa23d26765dc55814655eaeecca7cfc2c265dbabae913bce22fd
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
$ docker pull odoo@sha256:60bc2b22cf7ba3ee930e2d20d23922bd90c9f85dc16392e55d2b82d7349248cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **717.1 MB (717086503 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9cb7ab41cd153c801a170b1fc0d20be1348cc2e9c04e75287403ac20fab0ceb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Fri, 18 Sep 2026 21:23:50 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:23:50 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:23:50 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:23:53 GMT
ADD file:65c699fd9797e3453b1d9214a3d29d981984167bbdef224150cdb4da169e2a77 in / 
# Fri, 18 Sep 2026 21:23:54 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 04:56:23 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Fri, 02 Oct 2026 04:56:23 GMT
SHELL [/bin/bash -xo pipefail -c]
# Fri, 02 Oct 2026 04:56:23 GMT
ENV LANG=en_US.UTF-8
# Fri, 02 Oct 2026 04:56:23 GMT
ARG TARGETARCH=ppc64le
# Fri, 02 Oct 2026 04:56:23 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Fri, 02 Oct 2026 04:56:38 GMT
# ARGS: TARGETARCH=ppc64le
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 05:01:04 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 05:01:04 GMT
ENV ODOO_VERSION=19.0
# Fri, 02 Oct 2026 05:01:04 GMT
ARG ODOO_RELEASE=20260926
# Fri, 02 Oct 2026 05:01:04 GMT
ARG ODOO_SHA=cb9d876779edc8d5f0394ddd3936a387e349077c
# Fri, 02 Oct 2026 05:04:24 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260926 ODOO_SHA=cb9d876779edc8d5f0394ddd3936a387e349077c
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Fri, 02 Oct 2026 05:04:25 GMT
COPY ./entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 05:04:26 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Fri, 02 Oct 2026 05:04:26 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260926 ODOO_SHA=cb9d876779edc8d5f0394ddd3936a387e349077c
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Fri, 02 Oct 2026 05:04:26 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Fri, 02 Oct 2026 05:04:26 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Fri, 02 Oct 2026 05:04:26 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Fri, 02 Oct 2026 05:04:26 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Fri, 02 Oct 2026 05:04:26 GMT
USER odoo
# Fri, 02 Oct 2026 05:04:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 02 Oct 2026 05:04:26 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:02a2dd31affb75e9ad8595e0b0a537f3d60ecf8145f7dcd72eeaf14132bf426d`  
		Last Modified: Fri, 18 Sep 2026 22:30:11 GMT  
		Size: 34.4 MB (34376509 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c8344265edc93d01043011fa98d8ddf9f7dda1304b1ac8ca6c15ac2ec23ab67`  
		Last Modified: Fri, 02 Oct 2026 05:09:13 GMT  
		Size: 252.1 MB (252097976 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc434c514f33466f67088b49592594c177e546c4d94bac6c3dee8c1b92be8c33`  
		Last Modified: Fri, 02 Oct 2026 05:09:04 GMT  
		Size: 14.7 MB (14743895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f332b27062d44f5f49a6aebc57f43b4a24363ca0579b5d44e755f9b9c0b1a385`  
		Last Modified: Fri, 02 Oct 2026 05:09:03 GMT  
		Size: 871.9 KB (871868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4797121695f29f29eff3fe8e00195a554d674e2dd553debad5f6a9ad58c4d43`  
		Last Modified: Fri, 02 Oct 2026 05:09:16 GMT  
		Size: 415.0 MB (414993499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b258258e49fc257ced3ef919461152432d3be9e3c6793fb92d60cecfbd98c8a3`  
		Last Modified: Fri, 02 Oct 2026 05:09:04 GMT  
		Size: 719.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abcea566c6783e4f69106be559a6101fc51c3be9e1e1450168b39f1e744ce166`  
		Last Modified: Fri, 02 Oct 2026 05:09:05 GMT  
		Size: 557.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:193e068acfc3460e002a0b161451eba32300e1ab3fcd72625c2ac328d891429e`  
		Last Modified: Fri, 02 Oct 2026 05:09:05 GMT  
		Size: 601.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5b58bacbcc1794b525e25b2f6774a7f1b2c388fa22034011a3edf76af2eb176`  
		Last Modified: Fri, 02 Oct 2026 05:09:07 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19.0` - unknown; unknown

```console
$ docker pull odoo@sha256:ae4a8d1c92381f10f5e6bfddae966aecaf17db07249c1c6b6e56753cde50a521
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.5 MB (52494505 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:056ed01f319607d5b7b8f7df01346ec89404f4296d6b7dec6f6186500b7e66ba`

```dockerfile
```

-	Layers:
	-	`sha256:b764cf539a88280ed4960546c9a6eff24e0cec449025bd98784743307103d24d`  
		Last Modified: Fri, 02 Oct 2026 05:09:06 GMT  
		Size: 52.5 MB (52467252 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:73222999a1a4b23af393ff003d374d2e5ef2d66808b22e4ead14faabcbf8ae46`  
		Last Modified: Fri, 02 Oct 2026 05:09:02 GMT  
		Size: 27.3 KB (27253 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:19.0-20260926`

```console
$ docker pull odoo@sha256:dd9013e669caaa23d26765dc55814655eaeecca7cfc2c265dbabae913bce22fd
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
$ docker pull odoo@sha256:60bc2b22cf7ba3ee930e2d20d23922bd90c9f85dc16392e55d2b82d7349248cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **717.1 MB (717086503 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9cb7ab41cd153c801a170b1fc0d20be1348cc2e9c04e75287403ac20fab0ceb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Fri, 18 Sep 2026 21:23:50 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:23:50 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:23:50 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:23:53 GMT
ADD file:65c699fd9797e3453b1d9214a3d29d981984167bbdef224150cdb4da169e2a77 in / 
# Fri, 18 Sep 2026 21:23:54 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 04:56:23 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Fri, 02 Oct 2026 04:56:23 GMT
SHELL [/bin/bash -xo pipefail -c]
# Fri, 02 Oct 2026 04:56:23 GMT
ENV LANG=en_US.UTF-8
# Fri, 02 Oct 2026 04:56:23 GMT
ARG TARGETARCH=ppc64le
# Fri, 02 Oct 2026 04:56:23 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Fri, 02 Oct 2026 04:56:38 GMT
# ARGS: TARGETARCH=ppc64le
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 05:01:04 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 05:01:04 GMT
ENV ODOO_VERSION=19.0
# Fri, 02 Oct 2026 05:01:04 GMT
ARG ODOO_RELEASE=20260926
# Fri, 02 Oct 2026 05:01:04 GMT
ARG ODOO_SHA=cb9d876779edc8d5f0394ddd3936a387e349077c
# Fri, 02 Oct 2026 05:04:24 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260926 ODOO_SHA=cb9d876779edc8d5f0394ddd3936a387e349077c
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Fri, 02 Oct 2026 05:04:25 GMT
COPY ./entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 05:04:26 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Fri, 02 Oct 2026 05:04:26 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260926 ODOO_SHA=cb9d876779edc8d5f0394ddd3936a387e349077c
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Fri, 02 Oct 2026 05:04:26 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Fri, 02 Oct 2026 05:04:26 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Fri, 02 Oct 2026 05:04:26 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Fri, 02 Oct 2026 05:04:26 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Fri, 02 Oct 2026 05:04:26 GMT
USER odoo
# Fri, 02 Oct 2026 05:04:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 02 Oct 2026 05:04:26 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:02a2dd31affb75e9ad8595e0b0a537f3d60ecf8145f7dcd72eeaf14132bf426d`  
		Last Modified: Fri, 18 Sep 2026 22:30:11 GMT  
		Size: 34.4 MB (34376509 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c8344265edc93d01043011fa98d8ddf9f7dda1304b1ac8ca6c15ac2ec23ab67`  
		Last Modified: Fri, 02 Oct 2026 05:09:13 GMT  
		Size: 252.1 MB (252097976 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc434c514f33466f67088b49592594c177e546c4d94bac6c3dee8c1b92be8c33`  
		Last Modified: Fri, 02 Oct 2026 05:09:04 GMT  
		Size: 14.7 MB (14743895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f332b27062d44f5f49a6aebc57f43b4a24363ca0579b5d44e755f9b9c0b1a385`  
		Last Modified: Fri, 02 Oct 2026 05:09:03 GMT  
		Size: 871.9 KB (871868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4797121695f29f29eff3fe8e00195a554d674e2dd553debad5f6a9ad58c4d43`  
		Last Modified: Fri, 02 Oct 2026 05:09:16 GMT  
		Size: 415.0 MB (414993499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b258258e49fc257ced3ef919461152432d3be9e3c6793fb92d60cecfbd98c8a3`  
		Last Modified: Fri, 02 Oct 2026 05:09:04 GMT  
		Size: 719.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abcea566c6783e4f69106be559a6101fc51c3be9e1e1450168b39f1e744ce166`  
		Last Modified: Fri, 02 Oct 2026 05:09:05 GMT  
		Size: 557.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:193e068acfc3460e002a0b161451eba32300e1ab3fcd72625c2ac328d891429e`  
		Last Modified: Fri, 02 Oct 2026 05:09:05 GMT  
		Size: 601.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5b58bacbcc1794b525e25b2f6774a7f1b2c388fa22034011a3edf76af2eb176`  
		Last Modified: Fri, 02 Oct 2026 05:09:07 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19.0-20260926` - unknown; unknown

```console
$ docker pull odoo@sha256:ae4a8d1c92381f10f5e6bfddae966aecaf17db07249c1c6b6e56753cde50a521
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.5 MB (52494505 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:056ed01f319607d5b7b8f7df01346ec89404f4296d6b7dec6f6186500b7e66ba`

```dockerfile
```

-	Layers:
	-	`sha256:b764cf539a88280ed4960546c9a6eff24e0cec449025bd98784743307103d24d`  
		Last Modified: Fri, 02 Oct 2026 05:09:06 GMT  
		Size: 52.5 MB (52467252 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:73222999a1a4b23af393ff003d374d2e5ef2d66808b22e4ead14faabcbf8ae46`  
		Last Modified: Fri, 02 Oct 2026 05:09:02 GMT  
		Size: 27.3 KB (27253 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:20`

```console
$ docker pull odoo@sha256:cdd83e8359b3e8c357895d476396c05021fed9975bf420f353bab25fcaed1533
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
$ docker pull odoo@sha256:4aa9da00de4a770b2816ebe63ccc7c74cbac1955bbd90238113934752af51fd3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **814.4 MB (814443447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c78de4c474fa16782e489983bf5772933b9002752767bb763d8e4e4e57b5882a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Fri, 18 Sep 2026 21:23:50 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:23:50 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:23:50 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:23:53 GMT
ADD file:65c699fd9797e3453b1d9214a3d29d981984167bbdef224150cdb4da169e2a77 in / 
# Fri, 18 Sep 2026 21:23:54 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 04:56:23 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Fri, 02 Oct 2026 04:56:23 GMT
SHELL [/bin/bash -xo pipefail -c]
# Fri, 02 Oct 2026 04:56:23 GMT
ENV LANG=en_US.UTF-8
# Fri, 02 Oct 2026 04:56:23 GMT
ARG TARGETARCH=ppc64le
# Fri, 02 Oct 2026 04:56:23 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Fri, 02 Oct 2026 04:56:38 GMT
# ARGS: TARGETARCH=ppc64le
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 05:01:04 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 05:01:04 GMT
ENV ODOO_VERSION=20.0
# Fri, 02 Oct 2026 05:01:04 GMT
ARG ODOO_RELEASE=20260926
# Fri, 02 Oct 2026 05:01:04 GMT
ARG ODOO_SHA=7cb4a582ebe275a4f9c22eae24ce2bcb7fa27040
# Fri, 02 Oct 2026 05:04:27 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260926 ODOO_SHA=7cb4a582ebe275a4f9c22eae24ce2bcb7fa27040
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Fri, 02 Oct 2026 05:04:29 GMT
COPY ./entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 05:04:29 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Fri, 02 Oct 2026 05:04:30 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260926 ODOO_SHA=7cb4a582ebe275a4f9c22eae24ce2bcb7fa27040
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Fri, 02 Oct 2026 05:04:30 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Fri, 02 Oct 2026 05:04:30 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Fri, 02 Oct 2026 05:04:30 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Fri, 02 Oct 2026 05:04:31 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Fri, 02 Oct 2026 05:04:31 GMT
USER odoo
# Fri, 02 Oct 2026 05:04:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 02 Oct 2026 05:04:31 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:02a2dd31affb75e9ad8595e0b0a537f3d60ecf8145f7dcd72eeaf14132bf426d`  
		Last Modified: Fri, 18 Sep 2026 22:30:11 GMT  
		Size: 34.4 MB (34376509 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c8344265edc93d01043011fa98d8ddf9f7dda1304b1ac8ca6c15ac2ec23ab67`  
		Last Modified: Fri, 02 Oct 2026 05:09:13 GMT  
		Size: 252.1 MB (252097976 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc434c514f33466f67088b49592594c177e546c4d94bac6c3dee8c1b92be8c33`  
		Last Modified: Fri, 02 Oct 2026 05:09:04 GMT  
		Size: 14.7 MB (14743895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f332b27062d44f5f49a6aebc57f43b4a24363ca0579b5d44e755f9b9c0b1a385`  
		Last Modified: Fri, 02 Oct 2026 05:09:03 GMT  
		Size: 871.9 KB (871868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2246f8962d9be4a414727ac16112bdbf6e10bcd765173ec1b0767c60f7ff50c4`  
		Last Modified: Fri, 02 Oct 2026 05:09:34 GMT  
		Size: 512.4 MB (512350447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c154b495a70f6f956d495774a37181c102a258d30155e5c3c1549aec65d8386a`  
		Last Modified: Fri, 02 Oct 2026 05:09:23 GMT  
		Size: 716.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf2c8375e0fe440845183a249ff07d35f7bdec2e3abaefcf5795be9a8ce31d12`  
		Last Modified: Fri, 02 Oct 2026 05:09:23 GMT  
		Size: 557.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2c1960bb76ab67518162b29cc3a4cdb8e0d39410fd20a5cf7a83ae3e57992be`  
		Last Modified: Fri, 02 Oct 2026 05:09:23 GMT  
		Size: 600.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04210dba93e33a61121056d4ca1635f6f790249db3f498a6c746056a623030dc`  
		Last Modified: Fri, 02 Oct 2026 05:09:24 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:20` - unknown; unknown

```console
$ docker pull odoo@sha256:806462f850f1d1a771a9c4c0a72280a27f4682a7a2ba5367dc4a37f748e86b6d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.0 MB (55029349 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e0a8ca8f45cd1488ea86240c9a1ab1db662a270ef348b31f1aea91b216f4e4b`

```dockerfile
```

-	Layers:
	-	`sha256:e50b1220f52aec90868441126d417495ac97797e465b79553e4cf354e18faf70`  
		Last Modified: Fri, 02 Oct 2026 05:09:26 GMT  
		Size: 55.0 MB (55001797 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6a034462ab6eafe3d157016e711604d7f31592f54d2fe58fc00d99849dea16e8`  
		Last Modified: Fri, 02 Oct 2026 05:09:23 GMT  
		Size: 27.6 KB (27552 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:20.0`

```console
$ docker pull odoo@sha256:cdd83e8359b3e8c357895d476396c05021fed9975bf420f353bab25fcaed1533
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
$ docker pull odoo@sha256:4aa9da00de4a770b2816ebe63ccc7c74cbac1955bbd90238113934752af51fd3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **814.4 MB (814443447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c78de4c474fa16782e489983bf5772933b9002752767bb763d8e4e4e57b5882a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Fri, 18 Sep 2026 21:23:50 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:23:50 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:23:50 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:23:53 GMT
ADD file:65c699fd9797e3453b1d9214a3d29d981984167bbdef224150cdb4da169e2a77 in / 
# Fri, 18 Sep 2026 21:23:54 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 04:56:23 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Fri, 02 Oct 2026 04:56:23 GMT
SHELL [/bin/bash -xo pipefail -c]
# Fri, 02 Oct 2026 04:56:23 GMT
ENV LANG=en_US.UTF-8
# Fri, 02 Oct 2026 04:56:23 GMT
ARG TARGETARCH=ppc64le
# Fri, 02 Oct 2026 04:56:23 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Fri, 02 Oct 2026 04:56:38 GMT
# ARGS: TARGETARCH=ppc64le
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 05:01:04 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 05:01:04 GMT
ENV ODOO_VERSION=20.0
# Fri, 02 Oct 2026 05:01:04 GMT
ARG ODOO_RELEASE=20260926
# Fri, 02 Oct 2026 05:01:04 GMT
ARG ODOO_SHA=7cb4a582ebe275a4f9c22eae24ce2bcb7fa27040
# Fri, 02 Oct 2026 05:04:27 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260926 ODOO_SHA=7cb4a582ebe275a4f9c22eae24ce2bcb7fa27040
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Fri, 02 Oct 2026 05:04:29 GMT
COPY ./entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 05:04:29 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Fri, 02 Oct 2026 05:04:30 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260926 ODOO_SHA=7cb4a582ebe275a4f9c22eae24ce2bcb7fa27040
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Fri, 02 Oct 2026 05:04:30 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Fri, 02 Oct 2026 05:04:30 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Fri, 02 Oct 2026 05:04:30 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Fri, 02 Oct 2026 05:04:31 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Fri, 02 Oct 2026 05:04:31 GMT
USER odoo
# Fri, 02 Oct 2026 05:04:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 02 Oct 2026 05:04:31 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:02a2dd31affb75e9ad8595e0b0a537f3d60ecf8145f7dcd72eeaf14132bf426d`  
		Last Modified: Fri, 18 Sep 2026 22:30:11 GMT  
		Size: 34.4 MB (34376509 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c8344265edc93d01043011fa98d8ddf9f7dda1304b1ac8ca6c15ac2ec23ab67`  
		Last Modified: Fri, 02 Oct 2026 05:09:13 GMT  
		Size: 252.1 MB (252097976 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc434c514f33466f67088b49592594c177e546c4d94bac6c3dee8c1b92be8c33`  
		Last Modified: Fri, 02 Oct 2026 05:09:04 GMT  
		Size: 14.7 MB (14743895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f332b27062d44f5f49a6aebc57f43b4a24363ca0579b5d44e755f9b9c0b1a385`  
		Last Modified: Fri, 02 Oct 2026 05:09:03 GMT  
		Size: 871.9 KB (871868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2246f8962d9be4a414727ac16112bdbf6e10bcd765173ec1b0767c60f7ff50c4`  
		Last Modified: Fri, 02 Oct 2026 05:09:34 GMT  
		Size: 512.4 MB (512350447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c154b495a70f6f956d495774a37181c102a258d30155e5c3c1549aec65d8386a`  
		Last Modified: Fri, 02 Oct 2026 05:09:23 GMT  
		Size: 716.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf2c8375e0fe440845183a249ff07d35f7bdec2e3abaefcf5795be9a8ce31d12`  
		Last Modified: Fri, 02 Oct 2026 05:09:23 GMT  
		Size: 557.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2c1960bb76ab67518162b29cc3a4cdb8e0d39410fd20a5cf7a83ae3e57992be`  
		Last Modified: Fri, 02 Oct 2026 05:09:23 GMT  
		Size: 600.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04210dba93e33a61121056d4ca1635f6f790249db3f498a6c746056a623030dc`  
		Last Modified: Fri, 02 Oct 2026 05:09:24 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:20.0` - unknown; unknown

```console
$ docker pull odoo@sha256:806462f850f1d1a771a9c4c0a72280a27f4682a7a2ba5367dc4a37f748e86b6d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.0 MB (55029349 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e0a8ca8f45cd1488ea86240c9a1ab1db662a270ef348b31f1aea91b216f4e4b`

```dockerfile
```

-	Layers:
	-	`sha256:e50b1220f52aec90868441126d417495ac97797e465b79553e4cf354e18faf70`  
		Last Modified: Fri, 02 Oct 2026 05:09:26 GMT  
		Size: 55.0 MB (55001797 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6a034462ab6eafe3d157016e711604d7f31592f54d2fe58fc00d99849dea16e8`  
		Last Modified: Fri, 02 Oct 2026 05:09:23 GMT  
		Size: 27.6 KB (27552 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:20.0-20260926`

```console
$ docker pull odoo@sha256:cdd83e8359b3e8c357895d476396c05021fed9975bf420f353bab25fcaed1533
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
$ docker pull odoo@sha256:4aa9da00de4a770b2816ebe63ccc7c74cbac1955bbd90238113934752af51fd3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **814.4 MB (814443447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c78de4c474fa16782e489983bf5772933b9002752767bb763d8e4e4e57b5882a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Fri, 18 Sep 2026 21:23:50 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:23:50 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:23:50 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:23:53 GMT
ADD file:65c699fd9797e3453b1d9214a3d29d981984167bbdef224150cdb4da169e2a77 in / 
# Fri, 18 Sep 2026 21:23:54 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 04:56:23 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Fri, 02 Oct 2026 04:56:23 GMT
SHELL [/bin/bash -xo pipefail -c]
# Fri, 02 Oct 2026 04:56:23 GMT
ENV LANG=en_US.UTF-8
# Fri, 02 Oct 2026 04:56:23 GMT
ARG TARGETARCH=ppc64le
# Fri, 02 Oct 2026 04:56:23 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Fri, 02 Oct 2026 04:56:38 GMT
# ARGS: TARGETARCH=ppc64le
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 05:01:04 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 05:01:04 GMT
ENV ODOO_VERSION=20.0
# Fri, 02 Oct 2026 05:01:04 GMT
ARG ODOO_RELEASE=20260926
# Fri, 02 Oct 2026 05:01:04 GMT
ARG ODOO_SHA=7cb4a582ebe275a4f9c22eae24ce2bcb7fa27040
# Fri, 02 Oct 2026 05:04:27 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260926 ODOO_SHA=7cb4a582ebe275a4f9c22eae24ce2bcb7fa27040
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Fri, 02 Oct 2026 05:04:29 GMT
COPY ./entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 05:04:29 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Fri, 02 Oct 2026 05:04:30 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260926 ODOO_SHA=7cb4a582ebe275a4f9c22eae24ce2bcb7fa27040
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Fri, 02 Oct 2026 05:04:30 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Fri, 02 Oct 2026 05:04:30 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Fri, 02 Oct 2026 05:04:30 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Fri, 02 Oct 2026 05:04:31 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Fri, 02 Oct 2026 05:04:31 GMT
USER odoo
# Fri, 02 Oct 2026 05:04:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 02 Oct 2026 05:04:31 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:02a2dd31affb75e9ad8595e0b0a537f3d60ecf8145f7dcd72eeaf14132bf426d`  
		Last Modified: Fri, 18 Sep 2026 22:30:11 GMT  
		Size: 34.4 MB (34376509 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c8344265edc93d01043011fa98d8ddf9f7dda1304b1ac8ca6c15ac2ec23ab67`  
		Last Modified: Fri, 02 Oct 2026 05:09:13 GMT  
		Size: 252.1 MB (252097976 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc434c514f33466f67088b49592594c177e546c4d94bac6c3dee8c1b92be8c33`  
		Last Modified: Fri, 02 Oct 2026 05:09:04 GMT  
		Size: 14.7 MB (14743895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f332b27062d44f5f49a6aebc57f43b4a24363ca0579b5d44e755f9b9c0b1a385`  
		Last Modified: Fri, 02 Oct 2026 05:09:03 GMT  
		Size: 871.9 KB (871868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2246f8962d9be4a414727ac16112bdbf6e10bcd765173ec1b0767c60f7ff50c4`  
		Last Modified: Fri, 02 Oct 2026 05:09:34 GMT  
		Size: 512.4 MB (512350447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c154b495a70f6f956d495774a37181c102a258d30155e5c3c1549aec65d8386a`  
		Last Modified: Fri, 02 Oct 2026 05:09:23 GMT  
		Size: 716.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf2c8375e0fe440845183a249ff07d35f7bdec2e3abaefcf5795be9a8ce31d12`  
		Last Modified: Fri, 02 Oct 2026 05:09:23 GMT  
		Size: 557.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2c1960bb76ab67518162b29cc3a4cdb8e0d39410fd20a5cf7a83ae3e57992be`  
		Last Modified: Fri, 02 Oct 2026 05:09:23 GMT  
		Size: 600.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04210dba93e33a61121056d4ca1635f6f790249db3f498a6c746056a623030dc`  
		Last Modified: Fri, 02 Oct 2026 05:09:24 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:20.0-20260926` - unknown; unknown

```console
$ docker pull odoo@sha256:806462f850f1d1a771a9c4c0a72280a27f4682a7a2ba5367dc4a37f748e86b6d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.0 MB (55029349 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e0a8ca8f45cd1488ea86240c9a1ab1db662a270ef348b31f1aea91b216f4e4b`

```dockerfile
```

-	Layers:
	-	`sha256:e50b1220f52aec90868441126d417495ac97797e465b79553e4cf354e18faf70`  
		Last Modified: Fri, 02 Oct 2026 05:09:26 GMT  
		Size: 55.0 MB (55001797 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6a034462ab6eafe3d157016e711604d7f31592f54d2fe58fc00d99849dea16e8`  
		Last Modified: Fri, 02 Oct 2026 05:09:23 GMT  
		Size: 27.6 KB (27552 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:latest`

```console
$ docker pull odoo@sha256:cdd83e8359b3e8c357895d476396c05021fed9975bf420f353bab25fcaed1533
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
$ docker pull odoo@sha256:4aa9da00de4a770b2816ebe63ccc7c74cbac1955bbd90238113934752af51fd3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **814.4 MB (814443447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c78de4c474fa16782e489983bf5772933b9002752767bb763d8e4e4e57b5882a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Fri, 18 Sep 2026 21:23:50 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:23:50 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:23:50 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:23:53 GMT
ADD file:65c699fd9797e3453b1d9214a3d29d981984167bbdef224150cdb4da169e2a77 in / 
# Fri, 18 Sep 2026 21:23:54 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 04:56:23 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Fri, 02 Oct 2026 04:56:23 GMT
SHELL [/bin/bash -xo pipefail -c]
# Fri, 02 Oct 2026 04:56:23 GMT
ENV LANG=en_US.UTF-8
# Fri, 02 Oct 2026 04:56:23 GMT
ARG TARGETARCH=ppc64le
# Fri, 02 Oct 2026 04:56:23 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Fri, 02 Oct 2026 04:56:38 GMT
# ARGS: TARGETARCH=ppc64le
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 05:01:04 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 05:01:04 GMT
ENV ODOO_VERSION=20.0
# Fri, 02 Oct 2026 05:01:04 GMT
ARG ODOO_RELEASE=20260926
# Fri, 02 Oct 2026 05:01:04 GMT
ARG ODOO_SHA=7cb4a582ebe275a4f9c22eae24ce2bcb7fa27040
# Fri, 02 Oct 2026 05:04:27 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260926 ODOO_SHA=7cb4a582ebe275a4f9c22eae24ce2bcb7fa27040
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Fri, 02 Oct 2026 05:04:29 GMT
COPY ./entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 05:04:29 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Fri, 02 Oct 2026 05:04:30 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20260926 ODOO_SHA=7cb4a582ebe275a4f9c22eae24ce2bcb7fa27040
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Fri, 02 Oct 2026 05:04:30 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Fri, 02 Oct 2026 05:04:30 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Fri, 02 Oct 2026 05:04:30 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Fri, 02 Oct 2026 05:04:31 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Fri, 02 Oct 2026 05:04:31 GMT
USER odoo
# Fri, 02 Oct 2026 05:04:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 02 Oct 2026 05:04:31 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:02a2dd31affb75e9ad8595e0b0a537f3d60ecf8145f7dcd72eeaf14132bf426d`  
		Last Modified: Fri, 18 Sep 2026 22:30:11 GMT  
		Size: 34.4 MB (34376509 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c8344265edc93d01043011fa98d8ddf9f7dda1304b1ac8ca6c15ac2ec23ab67`  
		Last Modified: Fri, 02 Oct 2026 05:09:13 GMT  
		Size: 252.1 MB (252097976 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc434c514f33466f67088b49592594c177e546c4d94bac6c3dee8c1b92be8c33`  
		Last Modified: Fri, 02 Oct 2026 05:09:04 GMT  
		Size: 14.7 MB (14743895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f332b27062d44f5f49a6aebc57f43b4a24363ca0579b5d44e755f9b9c0b1a385`  
		Last Modified: Fri, 02 Oct 2026 05:09:03 GMT  
		Size: 871.9 KB (871868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2246f8962d9be4a414727ac16112bdbf6e10bcd765173ec1b0767c60f7ff50c4`  
		Last Modified: Fri, 02 Oct 2026 05:09:34 GMT  
		Size: 512.4 MB (512350447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c154b495a70f6f956d495774a37181c102a258d30155e5c3c1549aec65d8386a`  
		Last Modified: Fri, 02 Oct 2026 05:09:23 GMT  
		Size: 716.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf2c8375e0fe440845183a249ff07d35f7bdec2e3abaefcf5795be9a8ce31d12`  
		Last Modified: Fri, 02 Oct 2026 05:09:23 GMT  
		Size: 557.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2c1960bb76ab67518162b29cc3a4cdb8e0d39410fd20a5cf7a83ae3e57992be`  
		Last Modified: Fri, 02 Oct 2026 05:09:23 GMT  
		Size: 600.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04210dba93e33a61121056d4ca1635f6f790249db3f498a6c746056a623030dc`  
		Last Modified: Fri, 02 Oct 2026 05:09:24 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:latest` - unknown; unknown

```console
$ docker pull odoo@sha256:806462f850f1d1a771a9c4c0a72280a27f4682a7a2ba5367dc4a37f748e86b6d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.0 MB (55029349 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e0a8ca8f45cd1488ea86240c9a1ab1db662a270ef348b31f1aea91b216f4e4b`

```dockerfile
```

-	Layers:
	-	`sha256:e50b1220f52aec90868441126d417495ac97797e465b79553e4cf354e18faf70`  
		Last Modified: Fri, 02 Oct 2026 05:09:26 GMT  
		Size: 55.0 MB (55001797 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6a034462ab6eafe3d157016e711604d7f31592f54d2fe58fc00d99849dea16e8`  
		Last Modified: Fri, 02 Oct 2026 05:09:23 GMT  
		Size: 27.6 KB (27552 bytes)  
		MIME: application/vnd.in-toto+json
