<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `odoo`

-	[`odoo:18`](#odoo18)
-	[`odoo:18.0`](#odoo180)
-	[`odoo:18.0-20261112`](#odoo180-20261112)
-	[`odoo:19`](#odoo19)
-	[`odoo:19.0`](#odoo190)
-	[`odoo:19.0-20261112`](#odoo190-20261112)
-	[`odoo:20`](#odoo20)
-	[`odoo:20.0`](#odoo200)
-	[`odoo:20.0-20261112`](#odoo200-20261112)
-	[`odoo:latest`](#odoolatest)

## `odoo:18`

```console
$ docker pull odoo@sha256:0bd79cf07f59105c5697667c2241b86447e99c6adb036200df0e4e295785bdf3
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
$ docker pull odoo@sha256:f5e18dea144c6054b2084874801283cf4e31868186415c19f21e3c0904545bec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **675.9 MB (675938581 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9bbae871063639647584c1898882aa2ed3b98069b80258b2f16ef7cf4fb85a84`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Tue, 10 Nov 2026 18:35:15 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:35:15 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:35:15 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:35:17 GMT
ADD file:54dafd97985c3ec227e2c96be9290657cf2ab456885b5fc8a24c9278bca65e60 in / 
# Tue, 10 Nov 2026 18:35:18 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:26:42 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Fri, 20 Nov 2026 03:26:42 GMT
SHELL [/bin/bash -xo pipefail -c]
# Fri, 20 Nov 2026 03:26:42 GMT
ENV LANG=en_US.UTF-8
# Fri, 20 Nov 2026 03:26:42 GMT
ARG TARGETARCH=amd64
# Fri, 20 Nov 2026 03:26:42 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Fri, 20 Nov 2026 03:26:47 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:27:47 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:27:47 GMT
ENV ODOO_VERSION=18.0
# Fri, 20 Nov 2026 03:27:47 GMT
ARG ODOO_RELEASE=20261112
# Fri, 20 Nov 2026 03:27:47 GMT
ARG ODOO_SHA=cd29eedcd78f286cd0e44958760f1fdaf8927dd3
# Fri, 20 Nov 2026 03:28:35 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261112 ODOO_SHA=cd29eedcd78f286cd0e44958760f1fdaf8927dd3
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Fri, 20 Nov 2026 03:28:35 GMT
COPY ./entrypoint.sh / # buildkit
# Fri, 20 Nov 2026 03:28:35 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Fri, 20 Nov 2026 03:28:35 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261112 ODOO_SHA=cd29eedcd78f286cd0e44958760f1fdaf8927dd3
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Fri, 20 Nov 2026 03:28:35 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Fri, 20 Nov 2026 03:28:35 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Fri, 20 Nov 2026 03:28:35 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Fri, 20 Nov 2026 03:28:35 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Fri, 20 Nov 2026 03:28:35 GMT
USER odoo
# Fri, 20 Nov 2026 03:28:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 20 Nov 2026 03:28:35 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:8e8df94085bf9af8de500d2042195f1819a4c381b7f3be2a6b920cab65039050`  
		Last Modified: Tue, 10 Nov 2026 20:09:19 GMT  
		Size: 29.8 MB (29793297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6ee00496fb8dc5a49c2386679bef8aacf6b4c2294a2e6e816393bc98f189cf0`  
		Last Modified: Fri, 20 Nov 2026 03:30:01 GMT  
		Size: 238.7 MB (238729354 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15b5cc012c0568207ae9c95182906cd088467e9db2f8c9a06e88384bf9423ee1`  
		Last Modified: Fri, 20 Nov 2026 03:29:53 GMT  
		Size: 14.2 MB (14228091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba9bf393922be6017c4aa5ecceca11900e3d16d83ff4da420a84ec6de3b4b3bc`  
		Last Modified: Fri, 20 Nov 2026 03:29:53 GMT  
		Size: 879.5 KB (879524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e133a7f33770fe58b4d7b9870b9532dd80833742e05f28ef3a19adb59484f515`  
		Last Modified: Fri, 20 Nov 2026 03:30:04 GMT  
		Size: 392.3 MB (392305518 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:304138cae502cbe4e47a8fa4a66896406cf4c768de400028dc621d879c925e78`  
		Last Modified: Fri, 20 Nov 2026 03:29:54 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e9537e06f94d7e59a787a31776538995f39f1a1da9955a1c5bc48294480c14a`  
		Last Modified: Fri, 20 Nov 2026 03:29:55 GMT  
		Size: 555.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fde1fb3b8624e22ebd3ec80ac730ffb4b1fc4a4adc85e2d79501848ab03b11a`  
		Last Modified: Fri, 20 Nov 2026 03:29:55 GMT  
		Size: 597.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a8716829cec1ade62294be87983d7f81b65fc747b2f9569ae0070bcac8b7f50`  
		Last Modified: Fri, 20 Nov 2026 03:29:56 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18` - unknown; unknown

```console
$ docker pull odoo@sha256:28e37ac8472078718bde5f0748e8d0e8839453e7f2e3ba2872ae918c4d5b37ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.0 MB (44010529 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c8279b6a2f034c13866ebdcdbbd7a0550acc51f99ed8ed4a9dd8b5eeddc2df5`

```dockerfile
```

-	Layers:
	-	`sha256:6879bb19fb1b7ee78c5bd789db85ff216ed528c86f72c9075b80a0ddf7486390`  
		Last Modified: Fri, 20 Nov 2026 03:29:55 GMT  
		Size: 44.0 MB (43983332 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ea4a5f6bf76f433d288412f2ab0e39bd05f62899a8d592488e19ebd5db6eed71`  
		Last Modified: Fri, 20 Nov 2026 03:29:53 GMT  
		Size: 27.2 KB (27197 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:18` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:9f66068dfbe6cba6d4e814a373b367fe02e217aca65ce9037c89bb873e07c787
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **672.4 MB (672400016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b2c5e1621c0e62c1f7eab039b981d54c979046e5d34760fe60faa354aa5e9ef`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Tue, 10 Nov 2026 18:31:19 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:31:19 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:31:19 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:31:22 GMT
ADD file:2a6d7d3511af5b48de2ccdad66ef2aa7544bf264ce928935ad4469c76a66169b in / 
# Tue, 10 Nov 2026 18:31:22 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:28:01 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Fri, 20 Nov 2026 03:28:01 GMT
SHELL [/bin/bash -xo pipefail -c]
# Fri, 20 Nov 2026 03:28:01 GMT
ENV LANG=en_US.UTF-8
# Fri, 20 Nov 2026 03:28:01 GMT
ARG TARGETARCH=arm64
# Fri, 20 Nov 2026 03:28:01 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Fri, 20 Nov 2026 03:28:07 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:30:52 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:30:52 GMT
ENV ODOO_VERSION=18.0
# Fri, 20 Nov 2026 03:30:52 GMT
ARG ODOO_RELEASE=20261112
# Fri, 20 Nov 2026 03:30:52 GMT
ARG ODOO_SHA=cd29eedcd78f286cd0e44958760f1fdaf8927dd3
# Fri, 20 Nov 2026 03:32:21 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261112 ODOO_SHA=cd29eedcd78f286cd0e44958760f1fdaf8927dd3
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Fri, 20 Nov 2026 03:32:22 GMT
COPY ./entrypoint.sh / # buildkit
# Fri, 20 Nov 2026 03:32:22 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Fri, 20 Nov 2026 03:32:22 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261112 ODOO_SHA=cd29eedcd78f286cd0e44958760f1fdaf8927dd3
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Fri, 20 Nov 2026 03:32:22 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Fri, 20 Nov 2026 03:32:22 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Fri, 20 Nov 2026 03:32:22 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Fri, 20 Nov 2026 03:32:22 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Fri, 20 Nov 2026 03:32:22 GMT
USER odoo
# Fri, 20 Nov 2026 03:32:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 20 Nov 2026 03:32:22 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:6542099f24f28e8effaa18375a01b636d7898b6807da55b7c2d7a7a8d9eb103c`  
		Last Modified: Tue, 10 Nov 2026 20:09:25 GMT  
		Size: 29.0 MB (28965318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1c14cec8b63c2f4ff0dde75f6d9c2e7a64fdeda288b25108aaa65c59d36de3f`  
		Last Modified: Fri, 20 Nov 2026 03:33:54 GMT  
		Size: 236.2 MB (236192647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc032e7e95c9748aa4d7bc157a9a84bcdb7252a8c317731acaa36ce99074b2d2`  
		Last Modified: Fri, 20 Nov 2026 03:33:46 GMT  
		Size: 14.2 MB (14206214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:448635b0be7e97f384c4c7e5b7af9bfa153880af50e702b48d284bf619762401`  
		Last Modified: Fri, 20 Nov 2026 03:33:45 GMT  
		Size: 879.7 KB (879720 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d10e40418ac1712c874ac04cf04594373dbd53d77bce5b16dee53dc62d246d46`  
		Last Modified: Fri, 20 Nov 2026 03:33:57 GMT  
		Size: 392.2 MB (392153315 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:601516beacd04a211a31173dd4f17db5a0db48de22de72acb065951a1ff65a36`  
		Last Modified: Fri, 20 Nov 2026 03:33:47 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:997ad2083cf9b5ac9041d29cac062e2149c51e7867d9796293586f8c7f9d68f2`  
		Last Modified: Fri, 20 Nov 2026 03:33:48 GMT  
		Size: 558.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa4748fa77046c5dc1504ef9baa5d4c669835c0307729a551c0dda87b0269c34`  
		Last Modified: Fri, 20 Nov 2026 03:33:48 GMT  
		Size: 598.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53ca34d57b16796e1b8bbb6846ad8cee47325fcfd06271e34df09c2a498cb9de`  
		Last Modified: Fri, 20 Nov 2026 03:33:49 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18` - unknown; unknown

```console
$ docker pull odoo@sha256:5773d658014305a9991b7be2cfe54a5a89b7d85cec09631267dc2b76fb643810
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.0 MB (44017953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9690e4171fa9c35ab56a0a90ef7c02618dc7e6e81e45c543b67d310643f66bd`

```dockerfile
```

-	Layers:
	-	`sha256:9211d678b0459c6db20d549fa5ebdc141c88958ce1de1721289b6c10a5ef2cfd`  
		Last Modified: Fri, 20 Nov 2026 03:33:48 GMT  
		Size: 44.0 MB (43990604 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2616f9fa7c8218a214116d6177e48302b32819a53182bb2e8492635ca495424e`  
		Last Modified: Fri, 20 Nov 2026 03:33:45 GMT  
		Size: 27.3 KB (27349 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:18` - linux; ppc64le

```console
$ docker pull odoo@sha256:d19703e6646b6e6a6b3d4d37dc7dfef99ef1377e52644deba8e23e08727e7968
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **692.5 MB (692452497 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d29d5d7996c425cab041b8067d48009fae3c8122072e8e139428cbf2b851a8e5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Tue, 10 Nov 2026 18:32:30 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:32:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:32:30 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:32:33 GMT
ADD file:9fc87f5d4993c1f29848a41be6f1c74d6ab81fed009749aa0f9d0206b6b19eb0 in / 
# Tue, 10 Nov 2026 18:32:34 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:47:47 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Fri, 20 Nov 2026 03:47:47 GMT
SHELL [/bin/bash -xo pipefail -c]
# Fri, 20 Nov 2026 03:47:47 GMT
ENV LANG=en_US.UTF-8
# Fri, 20 Nov 2026 03:47:47 GMT
ARG TARGETARCH=ppc64le
# Fri, 20 Nov 2026 03:47:47 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Fri, 20 Nov 2026 03:48:01 GMT
# ARGS: TARGETARCH=ppc64le
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:52:38 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:52:38 GMT
ENV ODOO_VERSION=18.0
# Fri, 20 Nov 2026 03:52:38 GMT
ARG ODOO_RELEASE=20261112
# Fri, 20 Nov 2026 03:52:38 GMT
ARG ODOO_SHA=cd29eedcd78f286cd0e44958760f1fdaf8927dd3
# Fri, 20 Nov 2026 04:02:59 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261112 ODOO_SHA=cd29eedcd78f286cd0e44958760f1fdaf8927dd3
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Fri, 20 Nov 2026 04:03:00 GMT
COPY ./entrypoint.sh / # buildkit
# Fri, 20 Nov 2026 04:03:00 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Fri, 20 Nov 2026 04:03:01 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261112 ODOO_SHA=cd29eedcd78f286cd0e44958760f1fdaf8927dd3
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Fri, 20 Nov 2026 04:03:01 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Fri, 20 Nov 2026 04:03:01 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Fri, 20 Nov 2026 04:03:01 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Fri, 20 Nov 2026 04:03:01 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Fri, 20 Nov 2026 04:03:01 GMT
USER odoo
# Fri, 20 Nov 2026 04:03:01 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 20 Nov 2026 04:03:01 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:6c769a4f95bc536aae313c2bf7fcbf46e8cc18ed65fefad2a8ccfc1b5b7a63b4`  
		Last Modified: Tue, 10 Nov 2026 20:09:39 GMT  
		Size: 34.4 MB (34406239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09d23117909b1e154619850f663e5569eee5dbcc94f9ac42ebce205ced4b3216`  
		Last Modified: Fri, 20 Nov 2026 04:00:23 GMT  
		Size: 249.4 MB (249408577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92bbbe0bfdd20d044abe9826b7a10c9c8fec1fa7c0af70499d9c16ebac621942`  
		Last Modified: Fri, 20 Nov 2026 04:00:13 GMT  
		Size: 14.8 MB (14765235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d487da9837144c93790f88f70ddb5e7d4b836443f900d194bf0cb96b0c6b34b7`  
		Last Modified: Fri, 20 Nov 2026 04:00:11 GMT  
		Size: 881.0 KB (881010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db09bba98d200a0628d251b43ef258ee78d4294c83694ca3604c39bbf6f86c1d`  
		Last Modified: Fri, 20 Nov 2026 04:06:28 GMT  
		Size: 393.0 MB (392988636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4e6b3a9ed1ab388921ab7ac30772dd984c2905d087c6c8fb34bbf2d29e0c80e`  
		Last Modified: Fri, 20 Nov 2026 04:06:19 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f4ec6b88628cfd237941be64a7a80ad1cd0d43744a248ff23ce2a99bba60a7d`  
		Last Modified: Fri, 20 Nov 2026 04:06:19 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5b19875e027e454e05385456965350112471b78e5e042109b70235deb0ceb64`  
		Last Modified: Fri, 20 Nov 2026 04:06:19 GMT  
		Size: 598.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7640df58c91b1ae320b9870ced11a193ef76e882a48517c012785bf09dbd294`  
		Last Modified: Fri, 20 Nov 2026 04:06:21 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18` - unknown; unknown

```console
$ docker pull odoo@sha256:a9fd7acea0c600e0d286ff316b1c3ac6ca95c86ae4fe6f95fcb28b546e1a0389
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.0 MB (44018949 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35c0716224b1ed03ad51895374f73e467eb11fc44d81d21175637820ef9267a9`

```dockerfile
```

-	Layers:
	-	`sha256:070ccd77950259a446395feed8eb4e9d83eb7e35f6f3662bbe2e82552d0820c7`  
		Last Modified: Fri, 20 Nov 2026 04:06:21 GMT  
		Size: 44.0 MB (43991696 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f949b447ec25f329fba3d13330c72b991a77751f7ba929f671bcd984d7cf7653`  
		Last Modified: Fri, 20 Nov 2026 04:06:19 GMT  
		Size: 27.3 KB (27253 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:18.0`

```console
$ docker pull odoo@sha256:0bd79cf07f59105c5697667c2241b86447e99c6adb036200df0e4e295785bdf3
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
$ docker pull odoo@sha256:f5e18dea144c6054b2084874801283cf4e31868186415c19f21e3c0904545bec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **675.9 MB (675938581 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9bbae871063639647584c1898882aa2ed3b98069b80258b2f16ef7cf4fb85a84`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Tue, 10 Nov 2026 18:35:15 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:35:15 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:35:15 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:35:17 GMT
ADD file:54dafd97985c3ec227e2c96be9290657cf2ab456885b5fc8a24c9278bca65e60 in / 
# Tue, 10 Nov 2026 18:35:18 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:26:42 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Fri, 20 Nov 2026 03:26:42 GMT
SHELL [/bin/bash -xo pipefail -c]
# Fri, 20 Nov 2026 03:26:42 GMT
ENV LANG=en_US.UTF-8
# Fri, 20 Nov 2026 03:26:42 GMT
ARG TARGETARCH=amd64
# Fri, 20 Nov 2026 03:26:42 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Fri, 20 Nov 2026 03:26:47 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:27:47 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:27:47 GMT
ENV ODOO_VERSION=18.0
# Fri, 20 Nov 2026 03:27:47 GMT
ARG ODOO_RELEASE=20261112
# Fri, 20 Nov 2026 03:27:47 GMT
ARG ODOO_SHA=cd29eedcd78f286cd0e44958760f1fdaf8927dd3
# Fri, 20 Nov 2026 03:28:35 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261112 ODOO_SHA=cd29eedcd78f286cd0e44958760f1fdaf8927dd3
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Fri, 20 Nov 2026 03:28:35 GMT
COPY ./entrypoint.sh / # buildkit
# Fri, 20 Nov 2026 03:28:35 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Fri, 20 Nov 2026 03:28:35 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261112 ODOO_SHA=cd29eedcd78f286cd0e44958760f1fdaf8927dd3
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Fri, 20 Nov 2026 03:28:35 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Fri, 20 Nov 2026 03:28:35 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Fri, 20 Nov 2026 03:28:35 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Fri, 20 Nov 2026 03:28:35 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Fri, 20 Nov 2026 03:28:35 GMT
USER odoo
# Fri, 20 Nov 2026 03:28:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 20 Nov 2026 03:28:35 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:8e8df94085bf9af8de500d2042195f1819a4c381b7f3be2a6b920cab65039050`  
		Last Modified: Tue, 10 Nov 2026 20:09:19 GMT  
		Size: 29.8 MB (29793297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6ee00496fb8dc5a49c2386679bef8aacf6b4c2294a2e6e816393bc98f189cf0`  
		Last Modified: Fri, 20 Nov 2026 03:30:01 GMT  
		Size: 238.7 MB (238729354 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15b5cc012c0568207ae9c95182906cd088467e9db2f8c9a06e88384bf9423ee1`  
		Last Modified: Fri, 20 Nov 2026 03:29:53 GMT  
		Size: 14.2 MB (14228091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba9bf393922be6017c4aa5ecceca11900e3d16d83ff4da420a84ec6de3b4b3bc`  
		Last Modified: Fri, 20 Nov 2026 03:29:53 GMT  
		Size: 879.5 KB (879524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e133a7f33770fe58b4d7b9870b9532dd80833742e05f28ef3a19adb59484f515`  
		Last Modified: Fri, 20 Nov 2026 03:30:04 GMT  
		Size: 392.3 MB (392305518 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:304138cae502cbe4e47a8fa4a66896406cf4c768de400028dc621d879c925e78`  
		Last Modified: Fri, 20 Nov 2026 03:29:54 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e9537e06f94d7e59a787a31776538995f39f1a1da9955a1c5bc48294480c14a`  
		Last Modified: Fri, 20 Nov 2026 03:29:55 GMT  
		Size: 555.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fde1fb3b8624e22ebd3ec80ac730ffb4b1fc4a4adc85e2d79501848ab03b11a`  
		Last Modified: Fri, 20 Nov 2026 03:29:55 GMT  
		Size: 597.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a8716829cec1ade62294be87983d7f81b65fc747b2f9569ae0070bcac8b7f50`  
		Last Modified: Fri, 20 Nov 2026 03:29:56 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18.0` - unknown; unknown

```console
$ docker pull odoo@sha256:28e37ac8472078718bde5f0748e8d0e8839453e7f2e3ba2872ae918c4d5b37ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.0 MB (44010529 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c8279b6a2f034c13866ebdcdbbd7a0550acc51f99ed8ed4a9dd8b5eeddc2df5`

```dockerfile
```

-	Layers:
	-	`sha256:6879bb19fb1b7ee78c5bd789db85ff216ed528c86f72c9075b80a0ddf7486390`  
		Last Modified: Fri, 20 Nov 2026 03:29:55 GMT  
		Size: 44.0 MB (43983332 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ea4a5f6bf76f433d288412f2ab0e39bd05f62899a8d592488e19ebd5db6eed71`  
		Last Modified: Fri, 20 Nov 2026 03:29:53 GMT  
		Size: 27.2 KB (27197 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:18.0` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:9f66068dfbe6cba6d4e814a373b367fe02e217aca65ce9037c89bb873e07c787
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **672.4 MB (672400016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b2c5e1621c0e62c1f7eab039b981d54c979046e5d34760fe60faa354aa5e9ef`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Tue, 10 Nov 2026 18:31:19 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:31:19 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:31:19 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:31:22 GMT
ADD file:2a6d7d3511af5b48de2ccdad66ef2aa7544bf264ce928935ad4469c76a66169b in / 
# Tue, 10 Nov 2026 18:31:22 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:28:01 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Fri, 20 Nov 2026 03:28:01 GMT
SHELL [/bin/bash -xo pipefail -c]
# Fri, 20 Nov 2026 03:28:01 GMT
ENV LANG=en_US.UTF-8
# Fri, 20 Nov 2026 03:28:01 GMT
ARG TARGETARCH=arm64
# Fri, 20 Nov 2026 03:28:01 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Fri, 20 Nov 2026 03:28:07 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:30:52 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:30:52 GMT
ENV ODOO_VERSION=18.0
# Fri, 20 Nov 2026 03:30:52 GMT
ARG ODOO_RELEASE=20261112
# Fri, 20 Nov 2026 03:30:52 GMT
ARG ODOO_SHA=cd29eedcd78f286cd0e44958760f1fdaf8927dd3
# Fri, 20 Nov 2026 03:32:21 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261112 ODOO_SHA=cd29eedcd78f286cd0e44958760f1fdaf8927dd3
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Fri, 20 Nov 2026 03:32:22 GMT
COPY ./entrypoint.sh / # buildkit
# Fri, 20 Nov 2026 03:32:22 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Fri, 20 Nov 2026 03:32:22 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261112 ODOO_SHA=cd29eedcd78f286cd0e44958760f1fdaf8927dd3
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Fri, 20 Nov 2026 03:32:22 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Fri, 20 Nov 2026 03:32:22 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Fri, 20 Nov 2026 03:32:22 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Fri, 20 Nov 2026 03:32:22 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Fri, 20 Nov 2026 03:32:22 GMT
USER odoo
# Fri, 20 Nov 2026 03:32:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 20 Nov 2026 03:32:22 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:6542099f24f28e8effaa18375a01b636d7898b6807da55b7c2d7a7a8d9eb103c`  
		Last Modified: Tue, 10 Nov 2026 20:09:25 GMT  
		Size: 29.0 MB (28965318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1c14cec8b63c2f4ff0dde75f6d9c2e7a64fdeda288b25108aaa65c59d36de3f`  
		Last Modified: Fri, 20 Nov 2026 03:33:54 GMT  
		Size: 236.2 MB (236192647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc032e7e95c9748aa4d7bc157a9a84bcdb7252a8c317731acaa36ce99074b2d2`  
		Last Modified: Fri, 20 Nov 2026 03:33:46 GMT  
		Size: 14.2 MB (14206214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:448635b0be7e97f384c4c7e5b7af9bfa153880af50e702b48d284bf619762401`  
		Last Modified: Fri, 20 Nov 2026 03:33:45 GMT  
		Size: 879.7 KB (879720 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d10e40418ac1712c874ac04cf04594373dbd53d77bce5b16dee53dc62d246d46`  
		Last Modified: Fri, 20 Nov 2026 03:33:57 GMT  
		Size: 392.2 MB (392153315 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:601516beacd04a211a31173dd4f17db5a0db48de22de72acb065951a1ff65a36`  
		Last Modified: Fri, 20 Nov 2026 03:33:47 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:997ad2083cf9b5ac9041d29cac062e2149c51e7867d9796293586f8c7f9d68f2`  
		Last Modified: Fri, 20 Nov 2026 03:33:48 GMT  
		Size: 558.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa4748fa77046c5dc1504ef9baa5d4c669835c0307729a551c0dda87b0269c34`  
		Last Modified: Fri, 20 Nov 2026 03:33:48 GMT  
		Size: 598.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53ca34d57b16796e1b8bbb6846ad8cee47325fcfd06271e34df09c2a498cb9de`  
		Last Modified: Fri, 20 Nov 2026 03:33:49 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18.0` - unknown; unknown

```console
$ docker pull odoo@sha256:5773d658014305a9991b7be2cfe54a5a89b7d85cec09631267dc2b76fb643810
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.0 MB (44017953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9690e4171fa9c35ab56a0a90ef7c02618dc7e6e81e45c543b67d310643f66bd`

```dockerfile
```

-	Layers:
	-	`sha256:9211d678b0459c6db20d549fa5ebdc141c88958ce1de1721289b6c10a5ef2cfd`  
		Last Modified: Fri, 20 Nov 2026 03:33:48 GMT  
		Size: 44.0 MB (43990604 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2616f9fa7c8218a214116d6177e48302b32819a53182bb2e8492635ca495424e`  
		Last Modified: Fri, 20 Nov 2026 03:33:45 GMT  
		Size: 27.3 KB (27349 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:18.0` - linux; ppc64le

```console
$ docker pull odoo@sha256:d19703e6646b6e6a6b3d4d37dc7dfef99ef1377e52644deba8e23e08727e7968
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **692.5 MB (692452497 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d29d5d7996c425cab041b8067d48009fae3c8122072e8e139428cbf2b851a8e5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Tue, 10 Nov 2026 18:32:30 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:32:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:32:30 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:32:33 GMT
ADD file:9fc87f5d4993c1f29848a41be6f1c74d6ab81fed009749aa0f9d0206b6b19eb0 in / 
# Tue, 10 Nov 2026 18:32:34 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:47:47 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Fri, 20 Nov 2026 03:47:47 GMT
SHELL [/bin/bash -xo pipefail -c]
# Fri, 20 Nov 2026 03:47:47 GMT
ENV LANG=en_US.UTF-8
# Fri, 20 Nov 2026 03:47:47 GMT
ARG TARGETARCH=ppc64le
# Fri, 20 Nov 2026 03:47:47 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Fri, 20 Nov 2026 03:48:01 GMT
# ARGS: TARGETARCH=ppc64le
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:52:38 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:52:38 GMT
ENV ODOO_VERSION=18.0
# Fri, 20 Nov 2026 03:52:38 GMT
ARG ODOO_RELEASE=20261112
# Fri, 20 Nov 2026 03:52:38 GMT
ARG ODOO_SHA=cd29eedcd78f286cd0e44958760f1fdaf8927dd3
# Fri, 20 Nov 2026 04:02:59 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261112 ODOO_SHA=cd29eedcd78f286cd0e44958760f1fdaf8927dd3
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Fri, 20 Nov 2026 04:03:00 GMT
COPY ./entrypoint.sh / # buildkit
# Fri, 20 Nov 2026 04:03:00 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Fri, 20 Nov 2026 04:03:01 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261112 ODOO_SHA=cd29eedcd78f286cd0e44958760f1fdaf8927dd3
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Fri, 20 Nov 2026 04:03:01 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Fri, 20 Nov 2026 04:03:01 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Fri, 20 Nov 2026 04:03:01 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Fri, 20 Nov 2026 04:03:01 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Fri, 20 Nov 2026 04:03:01 GMT
USER odoo
# Fri, 20 Nov 2026 04:03:01 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 20 Nov 2026 04:03:01 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:6c769a4f95bc536aae313c2bf7fcbf46e8cc18ed65fefad2a8ccfc1b5b7a63b4`  
		Last Modified: Tue, 10 Nov 2026 20:09:39 GMT  
		Size: 34.4 MB (34406239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09d23117909b1e154619850f663e5569eee5dbcc94f9ac42ebce205ced4b3216`  
		Last Modified: Fri, 20 Nov 2026 04:00:23 GMT  
		Size: 249.4 MB (249408577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92bbbe0bfdd20d044abe9826b7a10c9c8fec1fa7c0af70499d9c16ebac621942`  
		Last Modified: Fri, 20 Nov 2026 04:00:13 GMT  
		Size: 14.8 MB (14765235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d487da9837144c93790f88f70ddb5e7d4b836443f900d194bf0cb96b0c6b34b7`  
		Last Modified: Fri, 20 Nov 2026 04:00:11 GMT  
		Size: 881.0 KB (881010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db09bba98d200a0628d251b43ef258ee78d4294c83694ca3604c39bbf6f86c1d`  
		Last Modified: Fri, 20 Nov 2026 04:06:28 GMT  
		Size: 393.0 MB (392988636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4e6b3a9ed1ab388921ab7ac30772dd984c2905d087c6c8fb34bbf2d29e0c80e`  
		Last Modified: Fri, 20 Nov 2026 04:06:19 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f4ec6b88628cfd237941be64a7a80ad1cd0d43744a248ff23ce2a99bba60a7d`  
		Last Modified: Fri, 20 Nov 2026 04:06:19 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5b19875e027e454e05385456965350112471b78e5e042109b70235deb0ceb64`  
		Last Modified: Fri, 20 Nov 2026 04:06:19 GMT  
		Size: 598.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7640df58c91b1ae320b9870ced11a193ef76e882a48517c012785bf09dbd294`  
		Last Modified: Fri, 20 Nov 2026 04:06:21 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18.0` - unknown; unknown

```console
$ docker pull odoo@sha256:a9fd7acea0c600e0d286ff316b1c3ac6ca95c86ae4fe6f95fcb28b546e1a0389
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.0 MB (44018949 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35c0716224b1ed03ad51895374f73e467eb11fc44d81d21175637820ef9267a9`

```dockerfile
```

-	Layers:
	-	`sha256:070ccd77950259a446395feed8eb4e9d83eb7e35f6f3662bbe2e82552d0820c7`  
		Last Modified: Fri, 20 Nov 2026 04:06:21 GMT  
		Size: 44.0 MB (43991696 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f949b447ec25f329fba3d13330c72b991a77751f7ba929f671bcd984d7cf7653`  
		Last Modified: Fri, 20 Nov 2026 04:06:19 GMT  
		Size: 27.3 KB (27253 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:18.0-20261112`

```console
$ docker pull odoo@sha256:0bd79cf07f59105c5697667c2241b86447e99c6adb036200df0e4e295785bdf3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `odoo:18.0-20261112` - linux; amd64

```console
$ docker pull odoo@sha256:f5e18dea144c6054b2084874801283cf4e31868186415c19f21e3c0904545bec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **675.9 MB (675938581 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9bbae871063639647584c1898882aa2ed3b98069b80258b2f16ef7cf4fb85a84`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Tue, 10 Nov 2026 18:35:15 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:35:15 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:35:15 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:35:17 GMT
ADD file:54dafd97985c3ec227e2c96be9290657cf2ab456885b5fc8a24c9278bca65e60 in / 
# Tue, 10 Nov 2026 18:35:18 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:26:42 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Fri, 20 Nov 2026 03:26:42 GMT
SHELL [/bin/bash -xo pipefail -c]
# Fri, 20 Nov 2026 03:26:42 GMT
ENV LANG=en_US.UTF-8
# Fri, 20 Nov 2026 03:26:42 GMT
ARG TARGETARCH=amd64
# Fri, 20 Nov 2026 03:26:42 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Fri, 20 Nov 2026 03:26:47 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:27:47 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:27:47 GMT
ENV ODOO_VERSION=18.0
# Fri, 20 Nov 2026 03:27:47 GMT
ARG ODOO_RELEASE=20261112
# Fri, 20 Nov 2026 03:27:47 GMT
ARG ODOO_SHA=cd29eedcd78f286cd0e44958760f1fdaf8927dd3
# Fri, 20 Nov 2026 03:28:35 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261112 ODOO_SHA=cd29eedcd78f286cd0e44958760f1fdaf8927dd3
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Fri, 20 Nov 2026 03:28:35 GMT
COPY ./entrypoint.sh / # buildkit
# Fri, 20 Nov 2026 03:28:35 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Fri, 20 Nov 2026 03:28:35 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261112 ODOO_SHA=cd29eedcd78f286cd0e44958760f1fdaf8927dd3
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Fri, 20 Nov 2026 03:28:35 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Fri, 20 Nov 2026 03:28:35 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Fri, 20 Nov 2026 03:28:35 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Fri, 20 Nov 2026 03:28:35 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Fri, 20 Nov 2026 03:28:35 GMT
USER odoo
# Fri, 20 Nov 2026 03:28:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 20 Nov 2026 03:28:35 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:8e8df94085bf9af8de500d2042195f1819a4c381b7f3be2a6b920cab65039050`  
		Last Modified: Tue, 10 Nov 2026 20:09:19 GMT  
		Size: 29.8 MB (29793297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6ee00496fb8dc5a49c2386679bef8aacf6b4c2294a2e6e816393bc98f189cf0`  
		Last Modified: Fri, 20 Nov 2026 03:30:01 GMT  
		Size: 238.7 MB (238729354 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15b5cc012c0568207ae9c95182906cd088467e9db2f8c9a06e88384bf9423ee1`  
		Last Modified: Fri, 20 Nov 2026 03:29:53 GMT  
		Size: 14.2 MB (14228091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba9bf393922be6017c4aa5ecceca11900e3d16d83ff4da420a84ec6de3b4b3bc`  
		Last Modified: Fri, 20 Nov 2026 03:29:53 GMT  
		Size: 879.5 KB (879524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e133a7f33770fe58b4d7b9870b9532dd80833742e05f28ef3a19adb59484f515`  
		Last Modified: Fri, 20 Nov 2026 03:30:04 GMT  
		Size: 392.3 MB (392305518 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:304138cae502cbe4e47a8fa4a66896406cf4c768de400028dc621d879c925e78`  
		Last Modified: Fri, 20 Nov 2026 03:29:54 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e9537e06f94d7e59a787a31776538995f39f1a1da9955a1c5bc48294480c14a`  
		Last Modified: Fri, 20 Nov 2026 03:29:55 GMT  
		Size: 555.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fde1fb3b8624e22ebd3ec80ac730ffb4b1fc4a4adc85e2d79501848ab03b11a`  
		Last Modified: Fri, 20 Nov 2026 03:29:55 GMT  
		Size: 597.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a8716829cec1ade62294be87983d7f81b65fc747b2f9569ae0070bcac8b7f50`  
		Last Modified: Fri, 20 Nov 2026 03:29:56 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18.0-20261112` - unknown; unknown

```console
$ docker pull odoo@sha256:28e37ac8472078718bde5f0748e8d0e8839453e7f2e3ba2872ae918c4d5b37ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.0 MB (44010529 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c8279b6a2f034c13866ebdcdbbd7a0550acc51f99ed8ed4a9dd8b5eeddc2df5`

```dockerfile
```

-	Layers:
	-	`sha256:6879bb19fb1b7ee78c5bd789db85ff216ed528c86f72c9075b80a0ddf7486390`  
		Last Modified: Fri, 20 Nov 2026 03:29:55 GMT  
		Size: 44.0 MB (43983332 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ea4a5f6bf76f433d288412f2ab0e39bd05f62899a8d592488e19ebd5db6eed71`  
		Last Modified: Fri, 20 Nov 2026 03:29:53 GMT  
		Size: 27.2 KB (27197 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:18.0-20261112` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:9f66068dfbe6cba6d4e814a373b367fe02e217aca65ce9037c89bb873e07c787
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **672.4 MB (672400016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b2c5e1621c0e62c1f7eab039b981d54c979046e5d34760fe60faa354aa5e9ef`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Tue, 10 Nov 2026 18:31:19 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:31:19 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:31:19 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:31:22 GMT
ADD file:2a6d7d3511af5b48de2ccdad66ef2aa7544bf264ce928935ad4469c76a66169b in / 
# Tue, 10 Nov 2026 18:31:22 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:28:01 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Fri, 20 Nov 2026 03:28:01 GMT
SHELL [/bin/bash -xo pipefail -c]
# Fri, 20 Nov 2026 03:28:01 GMT
ENV LANG=en_US.UTF-8
# Fri, 20 Nov 2026 03:28:01 GMT
ARG TARGETARCH=arm64
# Fri, 20 Nov 2026 03:28:01 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Fri, 20 Nov 2026 03:28:07 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:30:52 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:30:52 GMT
ENV ODOO_VERSION=18.0
# Fri, 20 Nov 2026 03:30:52 GMT
ARG ODOO_RELEASE=20261112
# Fri, 20 Nov 2026 03:30:52 GMT
ARG ODOO_SHA=cd29eedcd78f286cd0e44958760f1fdaf8927dd3
# Fri, 20 Nov 2026 03:32:21 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261112 ODOO_SHA=cd29eedcd78f286cd0e44958760f1fdaf8927dd3
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Fri, 20 Nov 2026 03:32:22 GMT
COPY ./entrypoint.sh / # buildkit
# Fri, 20 Nov 2026 03:32:22 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Fri, 20 Nov 2026 03:32:22 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261112 ODOO_SHA=cd29eedcd78f286cd0e44958760f1fdaf8927dd3
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Fri, 20 Nov 2026 03:32:22 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Fri, 20 Nov 2026 03:32:22 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Fri, 20 Nov 2026 03:32:22 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Fri, 20 Nov 2026 03:32:22 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Fri, 20 Nov 2026 03:32:22 GMT
USER odoo
# Fri, 20 Nov 2026 03:32:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 20 Nov 2026 03:32:22 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:6542099f24f28e8effaa18375a01b636d7898b6807da55b7c2d7a7a8d9eb103c`  
		Last Modified: Tue, 10 Nov 2026 20:09:25 GMT  
		Size: 29.0 MB (28965318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1c14cec8b63c2f4ff0dde75f6d9c2e7a64fdeda288b25108aaa65c59d36de3f`  
		Last Modified: Fri, 20 Nov 2026 03:33:54 GMT  
		Size: 236.2 MB (236192647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc032e7e95c9748aa4d7bc157a9a84bcdb7252a8c317731acaa36ce99074b2d2`  
		Last Modified: Fri, 20 Nov 2026 03:33:46 GMT  
		Size: 14.2 MB (14206214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:448635b0be7e97f384c4c7e5b7af9bfa153880af50e702b48d284bf619762401`  
		Last Modified: Fri, 20 Nov 2026 03:33:45 GMT  
		Size: 879.7 KB (879720 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d10e40418ac1712c874ac04cf04594373dbd53d77bce5b16dee53dc62d246d46`  
		Last Modified: Fri, 20 Nov 2026 03:33:57 GMT  
		Size: 392.2 MB (392153315 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:601516beacd04a211a31173dd4f17db5a0db48de22de72acb065951a1ff65a36`  
		Last Modified: Fri, 20 Nov 2026 03:33:47 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:997ad2083cf9b5ac9041d29cac062e2149c51e7867d9796293586f8c7f9d68f2`  
		Last Modified: Fri, 20 Nov 2026 03:33:48 GMT  
		Size: 558.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa4748fa77046c5dc1504ef9baa5d4c669835c0307729a551c0dda87b0269c34`  
		Last Modified: Fri, 20 Nov 2026 03:33:48 GMT  
		Size: 598.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53ca34d57b16796e1b8bbb6846ad8cee47325fcfd06271e34df09c2a498cb9de`  
		Last Modified: Fri, 20 Nov 2026 03:33:49 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18.0-20261112` - unknown; unknown

```console
$ docker pull odoo@sha256:5773d658014305a9991b7be2cfe54a5a89b7d85cec09631267dc2b76fb643810
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.0 MB (44017953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9690e4171fa9c35ab56a0a90ef7c02618dc7e6e81e45c543b67d310643f66bd`

```dockerfile
```

-	Layers:
	-	`sha256:9211d678b0459c6db20d549fa5ebdc141c88958ce1de1721289b6c10a5ef2cfd`  
		Last Modified: Fri, 20 Nov 2026 03:33:48 GMT  
		Size: 44.0 MB (43990604 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2616f9fa7c8218a214116d6177e48302b32819a53182bb2e8492635ca495424e`  
		Last Modified: Fri, 20 Nov 2026 03:33:45 GMT  
		Size: 27.3 KB (27349 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:18.0-20261112` - linux; ppc64le

```console
$ docker pull odoo@sha256:d19703e6646b6e6a6b3d4d37dc7dfef99ef1377e52644deba8e23e08727e7968
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **692.5 MB (692452497 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d29d5d7996c425cab041b8067d48009fae3c8122072e8e139428cbf2b851a8e5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Tue, 10 Nov 2026 18:32:30 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:32:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:32:30 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:32:33 GMT
ADD file:9fc87f5d4993c1f29848a41be6f1c74d6ab81fed009749aa0f9d0206b6b19eb0 in / 
# Tue, 10 Nov 2026 18:32:34 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:47:47 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Fri, 20 Nov 2026 03:47:47 GMT
SHELL [/bin/bash -xo pipefail -c]
# Fri, 20 Nov 2026 03:47:47 GMT
ENV LANG=en_US.UTF-8
# Fri, 20 Nov 2026 03:47:47 GMT
ARG TARGETARCH=ppc64le
# Fri, 20 Nov 2026 03:47:47 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Fri, 20 Nov 2026 03:48:01 GMT
# ARGS: TARGETARCH=ppc64le
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:52:38 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:52:38 GMT
ENV ODOO_VERSION=18.0
# Fri, 20 Nov 2026 03:52:38 GMT
ARG ODOO_RELEASE=20261112
# Fri, 20 Nov 2026 03:52:38 GMT
ARG ODOO_SHA=cd29eedcd78f286cd0e44958760f1fdaf8927dd3
# Fri, 20 Nov 2026 04:02:59 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261112 ODOO_SHA=cd29eedcd78f286cd0e44958760f1fdaf8927dd3
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Fri, 20 Nov 2026 04:03:00 GMT
COPY ./entrypoint.sh / # buildkit
# Fri, 20 Nov 2026 04:03:00 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Fri, 20 Nov 2026 04:03:01 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261112 ODOO_SHA=cd29eedcd78f286cd0e44958760f1fdaf8927dd3
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Fri, 20 Nov 2026 04:03:01 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Fri, 20 Nov 2026 04:03:01 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Fri, 20 Nov 2026 04:03:01 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Fri, 20 Nov 2026 04:03:01 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Fri, 20 Nov 2026 04:03:01 GMT
USER odoo
# Fri, 20 Nov 2026 04:03:01 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 20 Nov 2026 04:03:01 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:6c769a4f95bc536aae313c2bf7fcbf46e8cc18ed65fefad2a8ccfc1b5b7a63b4`  
		Last Modified: Tue, 10 Nov 2026 20:09:39 GMT  
		Size: 34.4 MB (34406239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09d23117909b1e154619850f663e5569eee5dbcc94f9ac42ebce205ced4b3216`  
		Last Modified: Fri, 20 Nov 2026 04:00:23 GMT  
		Size: 249.4 MB (249408577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92bbbe0bfdd20d044abe9826b7a10c9c8fec1fa7c0af70499d9c16ebac621942`  
		Last Modified: Fri, 20 Nov 2026 04:00:13 GMT  
		Size: 14.8 MB (14765235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d487da9837144c93790f88f70ddb5e7d4b836443f900d194bf0cb96b0c6b34b7`  
		Last Modified: Fri, 20 Nov 2026 04:00:11 GMT  
		Size: 881.0 KB (881010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db09bba98d200a0628d251b43ef258ee78d4294c83694ca3604c39bbf6f86c1d`  
		Last Modified: Fri, 20 Nov 2026 04:06:28 GMT  
		Size: 393.0 MB (392988636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4e6b3a9ed1ab388921ab7ac30772dd984c2905d087c6c8fb34bbf2d29e0c80e`  
		Last Modified: Fri, 20 Nov 2026 04:06:19 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f4ec6b88628cfd237941be64a7a80ad1cd0d43744a248ff23ce2a99bba60a7d`  
		Last Modified: Fri, 20 Nov 2026 04:06:19 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5b19875e027e454e05385456965350112471b78e5e042109b70235deb0ceb64`  
		Last Modified: Fri, 20 Nov 2026 04:06:19 GMT  
		Size: 598.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7640df58c91b1ae320b9870ced11a193ef76e882a48517c012785bf09dbd294`  
		Last Modified: Fri, 20 Nov 2026 04:06:21 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18.0-20261112` - unknown; unknown

```console
$ docker pull odoo@sha256:a9fd7acea0c600e0d286ff316b1c3ac6ca95c86ae4fe6f95fcb28b546e1a0389
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.0 MB (44018949 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35c0716224b1ed03ad51895374f73e467eb11fc44d81d21175637820ef9267a9`

```dockerfile
```

-	Layers:
	-	`sha256:070ccd77950259a446395feed8eb4e9d83eb7e35f6f3662bbe2e82552d0820c7`  
		Last Modified: Fri, 20 Nov 2026 04:06:21 GMT  
		Size: 44.0 MB (43991696 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f949b447ec25f329fba3d13330c72b991a77751f7ba929f671bcd984d7cf7653`  
		Last Modified: Fri, 20 Nov 2026 04:06:19 GMT  
		Size: 27.3 KB (27253 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:19`

```console
$ docker pull odoo@sha256:03a47921f9eef2c225ded1167fe7828465d2b3177883f30d173bb1c3c792949b
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
$ docker pull odoo@sha256:349afe11a45dc5884901e087ea3d5cfb65669134692e2623113df45463b2d368
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **700.3 MB (700270278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:648686e6e750d806e794c98af1df68c877679f4540ce29ce97acb3b8cb5f89f9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Tue, 10 Nov 2026 18:35:15 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:35:15 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:35:15 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:35:17 GMT
ADD file:54dafd97985c3ec227e2c96be9290657cf2ab456885b5fc8a24c9278bca65e60 in / 
# Tue, 10 Nov 2026 18:35:18 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:26:39 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Fri, 20 Nov 2026 03:26:39 GMT
SHELL [/bin/bash -xo pipefail -c]
# Fri, 20 Nov 2026 03:26:39 GMT
ENV LANG=en_US.UTF-8
# Fri, 20 Nov 2026 03:26:39 GMT
ARG TARGETARCH=amd64
# Fri, 20 Nov 2026 03:26:39 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Fri, 20 Nov 2026 03:26:44 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:27:43 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:27:43 GMT
ENV ODOO_VERSION=19.0
# Fri, 20 Nov 2026 03:27:43 GMT
ARG ODOO_RELEASE=20261112
# Fri, 20 Nov 2026 03:27:43 GMT
ARG ODOO_SHA=2b7dc8d539619a4ca8cc21ae2493935943b52f01
# Fri, 20 Nov 2026 03:28:47 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261112 ODOO_SHA=2b7dc8d539619a4ca8cc21ae2493935943b52f01
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Fri, 20 Nov 2026 03:28:47 GMT
COPY ./entrypoint.sh / # buildkit
# Fri, 20 Nov 2026 03:28:47 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Fri, 20 Nov 2026 03:28:48 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261112 ODOO_SHA=2b7dc8d539619a4ca8cc21ae2493935943b52f01
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Fri, 20 Nov 2026 03:28:48 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Fri, 20 Nov 2026 03:28:48 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Fri, 20 Nov 2026 03:28:48 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Fri, 20 Nov 2026 03:28:48 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Fri, 20 Nov 2026 03:28:48 GMT
USER odoo
# Fri, 20 Nov 2026 03:28:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 20 Nov 2026 03:28:48 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:8e8df94085bf9af8de500d2042195f1819a4c381b7f3be2a6b920cab65039050`  
		Last Modified: Tue, 10 Nov 2026 20:09:19 GMT  
		Size: 29.8 MB (29793297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:725cb5ba00325f70ca2477f4ff590a6b015f3c9f8045e13e64b47b19347694b6`  
		Last Modified: Fri, 20 Nov 2026 03:30:34 GMT  
		Size: 238.7 MB (238729201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34431d7a821fb217e13bc6137875d4871164c373a2344cfb76d5380cc4cf37b3`  
		Last Modified: Fri, 20 Nov 2026 03:30:26 GMT  
		Size: 14.2 MB (14228130 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2902ecf3d238b2adb624d91ec835bbb8df44f0efcacef52c2290cb19f850ce1d`  
		Last Modified: Fri, 20 Nov 2026 03:30:25 GMT  
		Size: 879.6 KB (879562 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39025d4c2c0bbd1ee412345ea2f759ac2e18ced01c8e02bd116b6a94999e1406`  
		Last Modified: Fri, 20 Nov 2026 03:30:37 GMT  
		Size: 416.6 MB (416637338 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f2bebc5ea16d96b5504554dd7819b5ae19936e3c2b4db242ed761696d312cb4`  
		Last Modified: Fri, 20 Nov 2026 03:30:26 GMT  
		Size: 718.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f7ee598c73c89aa992d2607d44a43f22fb6718c692fc72b8b133ee362f3c82f`  
		Last Modified: Fri, 20 Nov 2026 03:30:28 GMT  
		Size: 555.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a28c235b875578db031035b3e2888a17b8053a1b467825c41ba2308ef78f1ecc`  
		Last Modified: Fri, 20 Nov 2026 03:30:28 GMT  
		Size: 598.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2535575594e778595e7ab0b63b4c2ea717deba56954a864aabca4cc3163f3067`  
		Last Modified: Fri, 20 Nov 2026 03:30:29 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19` - unknown; unknown

```console
$ docker pull odoo@sha256:2eb36954803036fa3ba0c9ded3eec81c4cf9dea435f07b928cf661f5284df617
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.7 MB (52707075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de5f5307b12a94464d9199c0847cf0c0e69859a0c0bdbb4b85ad6bcd4be1ac18`

```dockerfile
```

-	Layers:
	-	`sha256:d84b0ef43eb13ecccebbce345aa5df17be5768b6cd12e66be842d0ec98617ffc`  
		Last Modified: Fri, 20 Nov 2026 03:30:28 GMT  
		Size: 52.7 MB (52679878 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:23123fa37d196d97a59805e965caf79c927d378197093868d33dd69a186530fc`  
		Last Modified: Fri, 20 Nov 2026 03:30:25 GMT  
		Size: 27.2 KB (27197 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:19` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:5bc372340695b9d2fe76d4c6e611abeb6566ab355623e3bcd5750b6d9762c406
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **696.8 MB (696763635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f141e35c74a920e24323c5f98309b3deb2ba4febf3b47c446cc4d2dc8974a390`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Tue, 10 Nov 2026 18:31:19 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:31:19 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:31:19 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:31:22 GMT
ADD file:2a6d7d3511af5b48de2ccdad66ef2aa7544bf264ce928935ad4469c76a66169b in / 
# Tue, 10 Nov 2026 18:31:22 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:28:02 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Fri, 20 Nov 2026 03:28:02 GMT
SHELL [/bin/bash -xo pipefail -c]
# Fri, 20 Nov 2026 03:28:02 GMT
ENV LANG=en_US.UTF-8
# Fri, 20 Nov 2026 03:28:02 GMT
ARG TARGETARCH=arm64
# Fri, 20 Nov 2026 03:28:02 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Fri, 20 Nov 2026 03:28:08 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:30:56 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:30:56 GMT
ENV ODOO_VERSION=19.0
# Fri, 20 Nov 2026 03:30:56 GMT
ARG ODOO_RELEASE=20261112
# Fri, 20 Nov 2026 03:30:56 GMT
ARG ODOO_SHA=2b7dc8d539619a4ca8cc21ae2493935943b52f01
# Fri, 20 Nov 2026 03:32:32 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261112 ODOO_SHA=2b7dc8d539619a4ca8cc21ae2493935943b52f01
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Fri, 20 Nov 2026 03:32:33 GMT
COPY ./entrypoint.sh / # buildkit
# Fri, 20 Nov 2026 03:32:33 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Fri, 20 Nov 2026 03:32:33 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261112 ODOO_SHA=2b7dc8d539619a4ca8cc21ae2493935943b52f01
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Fri, 20 Nov 2026 03:32:33 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Fri, 20 Nov 2026 03:32:33 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Fri, 20 Nov 2026 03:32:33 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Fri, 20 Nov 2026 03:32:33 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Fri, 20 Nov 2026 03:32:33 GMT
USER odoo
# Fri, 20 Nov 2026 03:32:33 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 20 Nov 2026 03:32:33 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:6542099f24f28e8effaa18375a01b636d7898b6807da55b7c2d7a7a8d9eb103c`  
		Last Modified: Tue, 10 Nov 2026 20:09:25 GMT  
		Size: 29.0 MB (28965318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e515c57444a648fdb974374368c6146e2452b6285058dde83df4750c42cd8178`  
		Last Modified: Fri, 20 Nov 2026 03:34:38 GMT  
		Size: 236.2 MB (236193445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:549a516a6f9649a97063a0c83cc8c03b8a209b253e7af95f4ef10556aced7858`  
		Last Modified: Fri, 20 Nov 2026 03:34:29 GMT  
		Size: 14.2 MB (14206218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce4a593f17dac9c9dd6e36a9c334fbdcbf033f4b2cc1038331b2d481afd9c2d2`  
		Last Modified: Fri, 20 Nov 2026 03:34:28 GMT  
		Size: 879.8 KB (879811 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e106507c3d585af15f9f43ffe4540b9a70660b79206d3f906718a1c4387739b`  
		Last Modified: Fri, 20 Nov 2026 03:34:42 GMT  
		Size: 416.5 MB (416516096 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fde8116dc3f5aba90b8e040bf4b88f19df4e4ac70bc97fd0aa7a4c1682369dd9`  
		Last Modified: Fri, 20 Nov 2026 03:34:29 GMT  
		Size: 716.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8f47a212c7f6322558cc640f1595b777ac3b50b9b30037e71d96e90f330d3c7`  
		Last Modified: Fri, 20 Nov 2026 03:34:30 GMT  
		Size: 557.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64c3bd8c4d164e76d47b267a79792290f6a6599e1dd72ca4051c9dee73c1da4a`  
		Last Modified: Fri, 20 Nov 2026 03:34:30 GMT  
		Size: 597.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:061c532214ab3e685da4089a03ef9bcef388ffac086d6c1307d5aabbd926e7ca`  
		Last Modified: Fri, 20 Nov 2026 03:34:31 GMT  
		Size: 877.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19` - unknown; unknown

```console
$ docker pull odoo@sha256:5e65950fbb8942cbe5de3ca6ab2cf9460f83c5c693bc80644153e951fcfbacbc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.7 MB (52714498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4540ffc2af06b4226e9555c79f6b2fde99270a23e6e670a32c741c5ee12ac7ed`

```dockerfile
```

-	Layers:
	-	`sha256:ea560f96aae3c10b5ba1cd5836056e33f2d090253cb3ed22b518f0cf3050699e`  
		Last Modified: Fri, 20 Nov 2026 03:34:31 GMT  
		Size: 52.7 MB (52687150 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:943e5d766749802da655557def0a2f429bd828089321786fa4c0f0817294e2bc`  
		Last Modified: Fri, 20 Nov 2026 03:34:28 GMT  
		Size: 27.3 KB (27348 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:19` - linux; ppc64le

```console
$ docker pull odoo@sha256:feb9d67d8ba0d9e87df61bd5629a10811edb723b9aea3033798459cf7e663023
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **716.8 MB (716811635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f9ab6394d5304b44ab55c8edecdbef5ba453717354e1fa3623c6f000d910d0c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Tue, 10 Nov 2026 18:32:30 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:32:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:32:30 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:32:33 GMT
ADD file:9fc87f5d4993c1f29848a41be6f1c74d6ab81fed009749aa0f9d0206b6b19eb0 in / 
# Tue, 10 Nov 2026 18:32:34 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:47:47 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Fri, 20 Nov 2026 03:47:47 GMT
SHELL [/bin/bash -xo pipefail -c]
# Fri, 20 Nov 2026 03:47:47 GMT
ENV LANG=en_US.UTF-8
# Fri, 20 Nov 2026 03:47:47 GMT
ARG TARGETARCH=ppc64le
# Fri, 20 Nov 2026 03:47:47 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Fri, 20 Nov 2026 03:48:01 GMT
# ARGS: TARGETARCH=ppc64le
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:52:38 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:52:38 GMT
ENV ODOO_VERSION=19.0
# Fri, 20 Nov 2026 03:52:38 GMT
ARG ODOO_RELEASE=20261112
# Fri, 20 Nov 2026 03:52:38 GMT
ARG ODOO_SHA=2b7dc8d539619a4ca8cc21ae2493935943b52f01
# Fri, 20 Nov 2026 03:55:46 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261112 ODOO_SHA=2b7dc8d539619a4ca8cc21ae2493935943b52f01
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Fri, 20 Nov 2026 03:55:49 GMT
COPY ./entrypoint.sh / # buildkit
# Fri, 20 Nov 2026 03:55:50 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Fri, 20 Nov 2026 03:55:51 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261112 ODOO_SHA=2b7dc8d539619a4ca8cc21ae2493935943b52f01
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Fri, 20 Nov 2026 03:55:51 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Fri, 20 Nov 2026 03:55:51 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Fri, 20 Nov 2026 03:55:51 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Fri, 20 Nov 2026 03:55:51 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Fri, 20 Nov 2026 03:55:51 GMT
USER odoo
# Fri, 20 Nov 2026 03:55:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 20 Nov 2026 03:55:51 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:6c769a4f95bc536aae313c2bf7fcbf46e8cc18ed65fefad2a8ccfc1b5b7a63b4`  
		Last Modified: Tue, 10 Nov 2026 20:09:39 GMT  
		Size: 34.4 MB (34406239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09d23117909b1e154619850f663e5569eee5dbcc94f9ac42ebce205ced4b3216`  
		Last Modified: Fri, 20 Nov 2026 04:00:23 GMT  
		Size: 249.4 MB (249408577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92bbbe0bfdd20d044abe9826b7a10c9c8fec1fa7c0af70499d9c16ebac621942`  
		Last Modified: Fri, 20 Nov 2026 04:00:13 GMT  
		Size: 14.8 MB (14765235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d487da9837144c93790f88f70ddb5e7d4b836443f900d194bf0cb96b0c6b34b7`  
		Last Modified: Fri, 20 Nov 2026 04:00:11 GMT  
		Size: 881.0 KB (881010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e78050dca434636c9690ea39411d4f33bf777f93ecfc9dba9ffe50b1ccd079c2`  
		Last Modified: Fri, 20 Nov 2026 04:00:28 GMT  
		Size: 417.3 MB (417347821 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bca3714c121e48227384da8a2424cf95148ddf5f63920fe0bf4e9dd724e99a21`  
		Last Modified: Fri, 20 Nov 2026 04:00:13 GMT  
		Size: 717.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7f8b78a38080d247d8c5d957085b9ea58e4fd27dd4aa9b60a82f742e1635b4d`  
		Last Modified: Fri, 20 Nov 2026 04:00:15 GMT  
		Size: 557.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:173476d57e3067b17cc6ec2cd5e15d74dccf881a5cf7070604a5c85ddae6cbf0`  
		Last Modified: Fri, 20 Nov 2026 04:00:15 GMT  
		Size: 600.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f161fa2891f6b740c6e59c1005feba7606550bff14b429daaa9cc0fb27646c3`  
		Last Modified: Fri, 20 Nov 2026 04:00:17 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19` - unknown; unknown

```console
$ docker pull odoo@sha256:969696d6fcdf98a6d9996be7ca010d4106cb1830fe787eb4a1f3d1e4ff33c0fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.7 MB (52715495 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9472518bb01ddb9ebb28b9374fa6e4d9386fad74189623919b9793290e777919`

```dockerfile
```

-	Layers:
	-	`sha256:6285fcf58766f51867f166bd553b7c8474dd720719451f86e07620879d93b762`  
		Last Modified: Fri, 20 Nov 2026 04:00:17 GMT  
		Size: 52.7 MB (52688242 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:498b44023fb8ee5355e82af130b034fae9d9a631f4230e97806a02daf045a616`  
		Last Modified: Fri, 20 Nov 2026 04:00:12 GMT  
		Size: 27.3 KB (27253 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:19.0`

```console
$ docker pull odoo@sha256:03a47921f9eef2c225ded1167fe7828465d2b3177883f30d173bb1c3c792949b
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
$ docker pull odoo@sha256:349afe11a45dc5884901e087ea3d5cfb65669134692e2623113df45463b2d368
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **700.3 MB (700270278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:648686e6e750d806e794c98af1df68c877679f4540ce29ce97acb3b8cb5f89f9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Tue, 10 Nov 2026 18:35:15 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:35:15 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:35:15 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:35:17 GMT
ADD file:54dafd97985c3ec227e2c96be9290657cf2ab456885b5fc8a24c9278bca65e60 in / 
# Tue, 10 Nov 2026 18:35:18 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:26:39 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Fri, 20 Nov 2026 03:26:39 GMT
SHELL [/bin/bash -xo pipefail -c]
# Fri, 20 Nov 2026 03:26:39 GMT
ENV LANG=en_US.UTF-8
# Fri, 20 Nov 2026 03:26:39 GMT
ARG TARGETARCH=amd64
# Fri, 20 Nov 2026 03:26:39 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Fri, 20 Nov 2026 03:26:44 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:27:43 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:27:43 GMT
ENV ODOO_VERSION=19.0
# Fri, 20 Nov 2026 03:27:43 GMT
ARG ODOO_RELEASE=20261112
# Fri, 20 Nov 2026 03:27:43 GMT
ARG ODOO_SHA=2b7dc8d539619a4ca8cc21ae2493935943b52f01
# Fri, 20 Nov 2026 03:28:47 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261112 ODOO_SHA=2b7dc8d539619a4ca8cc21ae2493935943b52f01
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Fri, 20 Nov 2026 03:28:47 GMT
COPY ./entrypoint.sh / # buildkit
# Fri, 20 Nov 2026 03:28:47 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Fri, 20 Nov 2026 03:28:48 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261112 ODOO_SHA=2b7dc8d539619a4ca8cc21ae2493935943b52f01
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Fri, 20 Nov 2026 03:28:48 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Fri, 20 Nov 2026 03:28:48 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Fri, 20 Nov 2026 03:28:48 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Fri, 20 Nov 2026 03:28:48 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Fri, 20 Nov 2026 03:28:48 GMT
USER odoo
# Fri, 20 Nov 2026 03:28:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 20 Nov 2026 03:28:48 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:8e8df94085bf9af8de500d2042195f1819a4c381b7f3be2a6b920cab65039050`  
		Last Modified: Tue, 10 Nov 2026 20:09:19 GMT  
		Size: 29.8 MB (29793297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:725cb5ba00325f70ca2477f4ff590a6b015f3c9f8045e13e64b47b19347694b6`  
		Last Modified: Fri, 20 Nov 2026 03:30:34 GMT  
		Size: 238.7 MB (238729201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34431d7a821fb217e13bc6137875d4871164c373a2344cfb76d5380cc4cf37b3`  
		Last Modified: Fri, 20 Nov 2026 03:30:26 GMT  
		Size: 14.2 MB (14228130 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2902ecf3d238b2adb624d91ec835bbb8df44f0efcacef52c2290cb19f850ce1d`  
		Last Modified: Fri, 20 Nov 2026 03:30:25 GMT  
		Size: 879.6 KB (879562 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39025d4c2c0bbd1ee412345ea2f759ac2e18ced01c8e02bd116b6a94999e1406`  
		Last Modified: Fri, 20 Nov 2026 03:30:37 GMT  
		Size: 416.6 MB (416637338 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f2bebc5ea16d96b5504554dd7819b5ae19936e3c2b4db242ed761696d312cb4`  
		Last Modified: Fri, 20 Nov 2026 03:30:26 GMT  
		Size: 718.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f7ee598c73c89aa992d2607d44a43f22fb6718c692fc72b8b133ee362f3c82f`  
		Last Modified: Fri, 20 Nov 2026 03:30:28 GMT  
		Size: 555.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a28c235b875578db031035b3e2888a17b8053a1b467825c41ba2308ef78f1ecc`  
		Last Modified: Fri, 20 Nov 2026 03:30:28 GMT  
		Size: 598.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2535575594e778595e7ab0b63b4c2ea717deba56954a864aabca4cc3163f3067`  
		Last Modified: Fri, 20 Nov 2026 03:30:29 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19.0` - unknown; unknown

```console
$ docker pull odoo@sha256:2eb36954803036fa3ba0c9ded3eec81c4cf9dea435f07b928cf661f5284df617
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.7 MB (52707075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de5f5307b12a94464d9199c0847cf0c0e69859a0c0bdbb4b85ad6bcd4be1ac18`

```dockerfile
```

-	Layers:
	-	`sha256:d84b0ef43eb13ecccebbce345aa5df17be5768b6cd12e66be842d0ec98617ffc`  
		Last Modified: Fri, 20 Nov 2026 03:30:28 GMT  
		Size: 52.7 MB (52679878 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:23123fa37d196d97a59805e965caf79c927d378197093868d33dd69a186530fc`  
		Last Modified: Fri, 20 Nov 2026 03:30:25 GMT  
		Size: 27.2 KB (27197 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:19.0` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:5bc372340695b9d2fe76d4c6e611abeb6566ab355623e3bcd5750b6d9762c406
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **696.8 MB (696763635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f141e35c74a920e24323c5f98309b3deb2ba4febf3b47c446cc4d2dc8974a390`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Tue, 10 Nov 2026 18:31:19 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:31:19 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:31:19 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:31:22 GMT
ADD file:2a6d7d3511af5b48de2ccdad66ef2aa7544bf264ce928935ad4469c76a66169b in / 
# Tue, 10 Nov 2026 18:31:22 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:28:02 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Fri, 20 Nov 2026 03:28:02 GMT
SHELL [/bin/bash -xo pipefail -c]
# Fri, 20 Nov 2026 03:28:02 GMT
ENV LANG=en_US.UTF-8
# Fri, 20 Nov 2026 03:28:02 GMT
ARG TARGETARCH=arm64
# Fri, 20 Nov 2026 03:28:02 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Fri, 20 Nov 2026 03:28:08 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:30:56 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:30:56 GMT
ENV ODOO_VERSION=19.0
# Fri, 20 Nov 2026 03:30:56 GMT
ARG ODOO_RELEASE=20261112
# Fri, 20 Nov 2026 03:30:56 GMT
ARG ODOO_SHA=2b7dc8d539619a4ca8cc21ae2493935943b52f01
# Fri, 20 Nov 2026 03:32:32 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261112 ODOO_SHA=2b7dc8d539619a4ca8cc21ae2493935943b52f01
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Fri, 20 Nov 2026 03:32:33 GMT
COPY ./entrypoint.sh / # buildkit
# Fri, 20 Nov 2026 03:32:33 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Fri, 20 Nov 2026 03:32:33 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261112 ODOO_SHA=2b7dc8d539619a4ca8cc21ae2493935943b52f01
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Fri, 20 Nov 2026 03:32:33 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Fri, 20 Nov 2026 03:32:33 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Fri, 20 Nov 2026 03:32:33 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Fri, 20 Nov 2026 03:32:33 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Fri, 20 Nov 2026 03:32:33 GMT
USER odoo
# Fri, 20 Nov 2026 03:32:33 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 20 Nov 2026 03:32:33 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:6542099f24f28e8effaa18375a01b636d7898b6807da55b7c2d7a7a8d9eb103c`  
		Last Modified: Tue, 10 Nov 2026 20:09:25 GMT  
		Size: 29.0 MB (28965318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e515c57444a648fdb974374368c6146e2452b6285058dde83df4750c42cd8178`  
		Last Modified: Fri, 20 Nov 2026 03:34:38 GMT  
		Size: 236.2 MB (236193445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:549a516a6f9649a97063a0c83cc8c03b8a209b253e7af95f4ef10556aced7858`  
		Last Modified: Fri, 20 Nov 2026 03:34:29 GMT  
		Size: 14.2 MB (14206218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce4a593f17dac9c9dd6e36a9c334fbdcbf033f4b2cc1038331b2d481afd9c2d2`  
		Last Modified: Fri, 20 Nov 2026 03:34:28 GMT  
		Size: 879.8 KB (879811 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e106507c3d585af15f9f43ffe4540b9a70660b79206d3f906718a1c4387739b`  
		Last Modified: Fri, 20 Nov 2026 03:34:42 GMT  
		Size: 416.5 MB (416516096 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fde8116dc3f5aba90b8e040bf4b88f19df4e4ac70bc97fd0aa7a4c1682369dd9`  
		Last Modified: Fri, 20 Nov 2026 03:34:29 GMT  
		Size: 716.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8f47a212c7f6322558cc640f1595b777ac3b50b9b30037e71d96e90f330d3c7`  
		Last Modified: Fri, 20 Nov 2026 03:34:30 GMT  
		Size: 557.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64c3bd8c4d164e76d47b267a79792290f6a6599e1dd72ca4051c9dee73c1da4a`  
		Last Modified: Fri, 20 Nov 2026 03:34:30 GMT  
		Size: 597.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:061c532214ab3e685da4089a03ef9bcef388ffac086d6c1307d5aabbd926e7ca`  
		Last Modified: Fri, 20 Nov 2026 03:34:31 GMT  
		Size: 877.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19.0` - unknown; unknown

```console
$ docker pull odoo@sha256:5e65950fbb8942cbe5de3ca6ab2cf9460f83c5c693bc80644153e951fcfbacbc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.7 MB (52714498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4540ffc2af06b4226e9555c79f6b2fde99270a23e6e670a32c741c5ee12ac7ed`

```dockerfile
```

-	Layers:
	-	`sha256:ea560f96aae3c10b5ba1cd5836056e33f2d090253cb3ed22b518f0cf3050699e`  
		Last Modified: Fri, 20 Nov 2026 03:34:31 GMT  
		Size: 52.7 MB (52687150 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:943e5d766749802da655557def0a2f429bd828089321786fa4c0f0817294e2bc`  
		Last Modified: Fri, 20 Nov 2026 03:34:28 GMT  
		Size: 27.3 KB (27348 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:19.0` - linux; ppc64le

```console
$ docker pull odoo@sha256:feb9d67d8ba0d9e87df61bd5629a10811edb723b9aea3033798459cf7e663023
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **716.8 MB (716811635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f9ab6394d5304b44ab55c8edecdbef5ba453717354e1fa3623c6f000d910d0c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Tue, 10 Nov 2026 18:32:30 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:32:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:32:30 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:32:33 GMT
ADD file:9fc87f5d4993c1f29848a41be6f1c74d6ab81fed009749aa0f9d0206b6b19eb0 in / 
# Tue, 10 Nov 2026 18:32:34 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:47:47 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Fri, 20 Nov 2026 03:47:47 GMT
SHELL [/bin/bash -xo pipefail -c]
# Fri, 20 Nov 2026 03:47:47 GMT
ENV LANG=en_US.UTF-8
# Fri, 20 Nov 2026 03:47:47 GMT
ARG TARGETARCH=ppc64le
# Fri, 20 Nov 2026 03:47:47 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Fri, 20 Nov 2026 03:48:01 GMT
# ARGS: TARGETARCH=ppc64le
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:52:38 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:52:38 GMT
ENV ODOO_VERSION=19.0
# Fri, 20 Nov 2026 03:52:38 GMT
ARG ODOO_RELEASE=20261112
# Fri, 20 Nov 2026 03:52:38 GMT
ARG ODOO_SHA=2b7dc8d539619a4ca8cc21ae2493935943b52f01
# Fri, 20 Nov 2026 03:55:46 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261112 ODOO_SHA=2b7dc8d539619a4ca8cc21ae2493935943b52f01
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Fri, 20 Nov 2026 03:55:49 GMT
COPY ./entrypoint.sh / # buildkit
# Fri, 20 Nov 2026 03:55:50 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Fri, 20 Nov 2026 03:55:51 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261112 ODOO_SHA=2b7dc8d539619a4ca8cc21ae2493935943b52f01
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Fri, 20 Nov 2026 03:55:51 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Fri, 20 Nov 2026 03:55:51 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Fri, 20 Nov 2026 03:55:51 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Fri, 20 Nov 2026 03:55:51 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Fri, 20 Nov 2026 03:55:51 GMT
USER odoo
# Fri, 20 Nov 2026 03:55:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 20 Nov 2026 03:55:51 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:6c769a4f95bc536aae313c2bf7fcbf46e8cc18ed65fefad2a8ccfc1b5b7a63b4`  
		Last Modified: Tue, 10 Nov 2026 20:09:39 GMT  
		Size: 34.4 MB (34406239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09d23117909b1e154619850f663e5569eee5dbcc94f9ac42ebce205ced4b3216`  
		Last Modified: Fri, 20 Nov 2026 04:00:23 GMT  
		Size: 249.4 MB (249408577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92bbbe0bfdd20d044abe9826b7a10c9c8fec1fa7c0af70499d9c16ebac621942`  
		Last Modified: Fri, 20 Nov 2026 04:00:13 GMT  
		Size: 14.8 MB (14765235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d487da9837144c93790f88f70ddb5e7d4b836443f900d194bf0cb96b0c6b34b7`  
		Last Modified: Fri, 20 Nov 2026 04:00:11 GMT  
		Size: 881.0 KB (881010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e78050dca434636c9690ea39411d4f33bf777f93ecfc9dba9ffe50b1ccd079c2`  
		Last Modified: Fri, 20 Nov 2026 04:00:28 GMT  
		Size: 417.3 MB (417347821 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bca3714c121e48227384da8a2424cf95148ddf5f63920fe0bf4e9dd724e99a21`  
		Last Modified: Fri, 20 Nov 2026 04:00:13 GMT  
		Size: 717.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7f8b78a38080d247d8c5d957085b9ea58e4fd27dd4aa9b60a82f742e1635b4d`  
		Last Modified: Fri, 20 Nov 2026 04:00:15 GMT  
		Size: 557.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:173476d57e3067b17cc6ec2cd5e15d74dccf881a5cf7070604a5c85ddae6cbf0`  
		Last Modified: Fri, 20 Nov 2026 04:00:15 GMT  
		Size: 600.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f161fa2891f6b740c6e59c1005feba7606550bff14b429daaa9cc0fb27646c3`  
		Last Modified: Fri, 20 Nov 2026 04:00:17 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19.0` - unknown; unknown

```console
$ docker pull odoo@sha256:969696d6fcdf98a6d9996be7ca010d4106cb1830fe787eb4a1f3d1e4ff33c0fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.7 MB (52715495 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9472518bb01ddb9ebb28b9374fa6e4d9386fad74189623919b9793290e777919`

```dockerfile
```

-	Layers:
	-	`sha256:6285fcf58766f51867f166bd553b7c8474dd720719451f86e07620879d93b762`  
		Last Modified: Fri, 20 Nov 2026 04:00:17 GMT  
		Size: 52.7 MB (52688242 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:498b44023fb8ee5355e82af130b034fae9d9a631f4230e97806a02daf045a616`  
		Last Modified: Fri, 20 Nov 2026 04:00:12 GMT  
		Size: 27.3 KB (27253 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:19.0-20261112`

```console
$ docker pull odoo@sha256:03a47921f9eef2c225ded1167fe7828465d2b3177883f30d173bb1c3c792949b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `odoo:19.0-20261112` - linux; amd64

```console
$ docker pull odoo@sha256:349afe11a45dc5884901e087ea3d5cfb65669134692e2623113df45463b2d368
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **700.3 MB (700270278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:648686e6e750d806e794c98af1df68c877679f4540ce29ce97acb3b8cb5f89f9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Tue, 10 Nov 2026 18:35:15 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:35:15 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:35:15 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:35:17 GMT
ADD file:54dafd97985c3ec227e2c96be9290657cf2ab456885b5fc8a24c9278bca65e60 in / 
# Tue, 10 Nov 2026 18:35:18 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:26:39 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Fri, 20 Nov 2026 03:26:39 GMT
SHELL [/bin/bash -xo pipefail -c]
# Fri, 20 Nov 2026 03:26:39 GMT
ENV LANG=en_US.UTF-8
# Fri, 20 Nov 2026 03:26:39 GMT
ARG TARGETARCH=amd64
# Fri, 20 Nov 2026 03:26:39 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Fri, 20 Nov 2026 03:26:44 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:27:43 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:27:43 GMT
ENV ODOO_VERSION=19.0
# Fri, 20 Nov 2026 03:27:43 GMT
ARG ODOO_RELEASE=20261112
# Fri, 20 Nov 2026 03:27:43 GMT
ARG ODOO_SHA=2b7dc8d539619a4ca8cc21ae2493935943b52f01
# Fri, 20 Nov 2026 03:28:47 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261112 ODOO_SHA=2b7dc8d539619a4ca8cc21ae2493935943b52f01
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Fri, 20 Nov 2026 03:28:47 GMT
COPY ./entrypoint.sh / # buildkit
# Fri, 20 Nov 2026 03:28:47 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Fri, 20 Nov 2026 03:28:48 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261112 ODOO_SHA=2b7dc8d539619a4ca8cc21ae2493935943b52f01
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Fri, 20 Nov 2026 03:28:48 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Fri, 20 Nov 2026 03:28:48 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Fri, 20 Nov 2026 03:28:48 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Fri, 20 Nov 2026 03:28:48 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Fri, 20 Nov 2026 03:28:48 GMT
USER odoo
# Fri, 20 Nov 2026 03:28:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 20 Nov 2026 03:28:48 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:8e8df94085bf9af8de500d2042195f1819a4c381b7f3be2a6b920cab65039050`  
		Last Modified: Tue, 10 Nov 2026 20:09:19 GMT  
		Size: 29.8 MB (29793297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:725cb5ba00325f70ca2477f4ff590a6b015f3c9f8045e13e64b47b19347694b6`  
		Last Modified: Fri, 20 Nov 2026 03:30:34 GMT  
		Size: 238.7 MB (238729201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34431d7a821fb217e13bc6137875d4871164c373a2344cfb76d5380cc4cf37b3`  
		Last Modified: Fri, 20 Nov 2026 03:30:26 GMT  
		Size: 14.2 MB (14228130 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2902ecf3d238b2adb624d91ec835bbb8df44f0efcacef52c2290cb19f850ce1d`  
		Last Modified: Fri, 20 Nov 2026 03:30:25 GMT  
		Size: 879.6 KB (879562 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39025d4c2c0bbd1ee412345ea2f759ac2e18ced01c8e02bd116b6a94999e1406`  
		Last Modified: Fri, 20 Nov 2026 03:30:37 GMT  
		Size: 416.6 MB (416637338 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f2bebc5ea16d96b5504554dd7819b5ae19936e3c2b4db242ed761696d312cb4`  
		Last Modified: Fri, 20 Nov 2026 03:30:26 GMT  
		Size: 718.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f7ee598c73c89aa992d2607d44a43f22fb6718c692fc72b8b133ee362f3c82f`  
		Last Modified: Fri, 20 Nov 2026 03:30:28 GMT  
		Size: 555.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a28c235b875578db031035b3e2888a17b8053a1b467825c41ba2308ef78f1ecc`  
		Last Modified: Fri, 20 Nov 2026 03:30:28 GMT  
		Size: 598.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2535575594e778595e7ab0b63b4c2ea717deba56954a864aabca4cc3163f3067`  
		Last Modified: Fri, 20 Nov 2026 03:30:29 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19.0-20261112` - unknown; unknown

```console
$ docker pull odoo@sha256:2eb36954803036fa3ba0c9ded3eec81c4cf9dea435f07b928cf661f5284df617
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.7 MB (52707075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de5f5307b12a94464d9199c0847cf0c0e69859a0c0bdbb4b85ad6bcd4be1ac18`

```dockerfile
```

-	Layers:
	-	`sha256:d84b0ef43eb13ecccebbce345aa5df17be5768b6cd12e66be842d0ec98617ffc`  
		Last Modified: Fri, 20 Nov 2026 03:30:28 GMT  
		Size: 52.7 MB (52679878 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:23123fa37d196d97a59805e965caf79c927d378197093868d33dd69a186530fc`  
		Last Modified: Fri, 20 Nov 2026 03:30:25 GMT  
		Size: 27.2 KB (27197 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:19.0-20261112` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:5bc372340695b9d2fe76d4c6e611abeb6566ab355623e3bcd5750b6d9762c406
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **696.8 MB (696763635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f141e35c74a920e24323c5f98309b3deb2ba4febf3b47c446cc4d2dc8974a390`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Tue, 10 Nov 2026 18:31:19 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:31:19 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:31:19 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:31:22 GMT
ADD file:2a6d7d3511af5b48de2ccdad66ef2aa7544bf264ce928935ad4469c76a66169b in / 
# Tue, 10 Nov 2026 18:31:22 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:28:02 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Fri, 20 Nov 2026 03:28:02 GMT
SHELL [/bin/bash -xo pipefail -c]
# Fri, 20 Nov 2026 03:28:02 GMT
ENV LANG=en_US.UTF-8
# Fri, 20 Nov 2026 03:28:02 GMT
ARG TARGETARCH=arm64
# Fri, 20 Nov 2026 03:28:02 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Fri, 20 Nov 2026 03:28:08 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:30:56 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:30:56 GMT
ENV ODOO_VERSION=19.0
# Fri, 20 Nov 2026 03:30:56 GMT
ARG ODOO_RELEASE=20261112
# Fri, 20 Nov 2026 03:30:56 GMT
ARG ODOO_SHA=2b7dc8d539619a4ca8cc21ae2493935943b52f01
# Fri, 20 Nov 2026 03:32:32 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261112 ODOO_SHA=2b7dc8d539619a4ca8cc21ae2493935943b52f01
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Fri, 20 Nov 2026 03:32:33 GMT
COPY ./entrypoint.sh / # buildkit
# Fri, 20 Nov 2026 03:32:33 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Fri, 20 Nov 2026 03:32:33 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261112 ODOO_SHA=2b7dc8d539619a4ca8cc21ae2493935943b52f01
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Fri, 20 Nov 2026 03:32:33 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Fri, 20 Nov 2026 03:32:33 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Fri, 20 Nov 2026 03:32:33 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Fri, 20 Nov 2026 03:32:33 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Fri, 20 Nov 2026 03:32:33 GMT
USER odoo
# Fri, 20 Nov 2026 03:32:33 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 20 Nov 2026 03:32:33 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:6542099f24f28e8effaa18375a01b636d7898b6807da55b7c2d7a7a8d9eb103c`  
		Last Modified: Tue, 10 Nov 2026 20:09:25 GMT  
		Size: 29.0 MB (28965318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e515c57444a648fdb974374368c6146e2452b6285058dde83df4750c42cd8178`  
		Last Modified: Fri, 20 Nov 2026 03:34:38 GMT  
		Size: 236.2 MB (236193445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:549a516a6f9649a97063a0c83cc8c03b8a209b253e7af95f4ef10556aced7858`  
		Last Modified: Fri, 20 Nov 2026 03:34:29 GMT  
		Size: 14.2 MB (14206218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce4a593f17dac9c9dd6e36a9c334fbdcbf033f4b2cc1038331b2d481afd9c2d2`  
		Last Modified: Fri, 20 Nov 2026 03:34:28 GMT  
		Size: 879.8 KB (879811 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e106507c3d585af15f9f43ffe4540b9a70660b79206d3f906718a1c4387739b`  
		Last Modified: Fri, 20 Nov 2026 03:34:42 GMT  
		Size: 416.5 MB (416516096 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fde8116dc3f5aba90b8e040bf4b88f19df4e4ac70bc97fd0aa7a4c1682369dd9`  
		Last Modified: Fri, 20 Nov 2026 03:34:29 GMT  
		Size: 716.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8f47a212c7f6322558cc640f1595b777ac3b50b9b30037e71d96e90f330d3c7`  
		Last Modified: Fri, 20 Nov 2026 03:34:30 GMT  
		Size: 557.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64c3bd8c4d164e76d47b267a79792290f6a6599e1dd72ca4051c9dee73c1da4a`  
		Last Modified: Fri, 20 Nov 2026 03:34:30 GMT  
		Size: 597.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:061c532214ab3e685da4089a03ef9bcef388ffac086d6c1307d5aabbd926e7ca`  
		Last Modified: Fri, 20 Nov 2026 03:34:31 GMT  
		Size: 877.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19.0-20261112` - unknown; unknown

```console
$ docker pull odoo@sha256:5e65950fbb8942cbe5de3ca6ab2cf9460f83c5c693bc80644153e951fcfbacbc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.7 MB (52714498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4540ffc2af06b4226e9555c79f6b2fde99270a23e6e670a32c741c5ee12ac7ed`

```dockerfile
```

-	Layers:
	-	`sha256:ea560f96aae3c10b5ba1cd5836056e33f2d090253cb3ed22b518f0cf3050699e`  
		Last Modified: Fri, 20 Nov 2026 03:34:31 GMT  
		Size: 52.7 MB (52687150 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:943e5d766749802da655557def0a2f429bd828089321786fa4c0f0817294e2bc`  
		Last Modified: Fri, 20 Nov 2026 03:34:28 GMT  
		Size: 27.3 KB (27348 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:19.0-20261112` - linux; ppc64le

```console
$ docker pull odoo@sha256:feb9d67d8ba0d9e87df61bd5629a10811edb723b9aea3033798459cf7e663023
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **716.8 MB (716811635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f9ab6394d5304b44ab55c8edecdbef5ba453717354e1fa3623c6f000d910d0c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Tue, 10 Nov 2026 18:32:30 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:32:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:32:30 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:32:33 GMT
ADD file:9fc87f5d4993c1f29848a41be6f1c74d6ab81fed009749aa0f9d0206b6b19eb0 in / 
# Tue, 10 Nov 2026 18:32:34 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:47:47 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Fri, 20 Nov 2026 03:47:47 GMT
SHELL [/bin/bash -xo pipefail -c]
# Fri, 20 Nov 2026 03:47:47 GMT
ENV LANG=en_US.UTF-8
# Fri, 20 Nov 2026 03:47:47 GMT
ARG TARGETARCH=ppc64le
# Fri, 20 Nov 2026 03:47:47 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Fri, 20 Nov 2026 03:48:01 GMT
# ARGS: TARGETARCH=ppc64le
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:52:38 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:52:38 GMT
ENV ODOO_VERSION=19.0
# Fri, 20 Nov 2026 03:52:38 GMT
ARG ODOO_RELEASE=20261112
# Fri, 20 Nov 2026 03:52:38 GMT
ARG ODOO_SHA=2b7dc8d539619a4ca8cc21ae2493935943b52f01
# Fri, 20 Nov 2026 03:55:46 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261112 ODOO_SHA=2b7dc8d539619a4ca8cc21ae2493935943b52f01
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Fri, 20 Nov 2026 03:55:49 GMT
COPY ./entrypoint.sh / # buildkit
# Fri, 20 Nov 2026 03:55:50 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Fri, 20 Nov 2026 03:55:51 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261112 ODOO_SHA=2b7dc8d539619a4ca8cc21ae2493935943b52f01
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Fri, 20 Nov 2026 03:55:51 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Fri, 20 Nov 2026 03:55:51 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Fri, 20 Nov 2026 03:55:51 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Fri, 20 Nov 2026 03:55:51 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Fri, 20 Nov 2026 03:55:51 GMT
USER odoo
# Fri, 20 Nov 2026 03:55:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 20 Nov 2026 03:55:51 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:6c769a4f95bc536aae313c2bf7fcbf46e8cc18ed65fefad2a8ccfc1b5b7a63b4`  
		Last Modified: Tue, 10 Nov 2026 20:09:39 GMT  
		Size: 34.4 MB (34406239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09d23117909b1e154619850f663e5569eee5dbcc94f9ac42ebce205ced4b3216`  
		Last Modified: Fri, 20 Nov 2026 04:00:23 GMT  
		Size: 249.4 MB (249408577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92bbbe0bfdd20d044abe9826b7a10c9c8fec1fa7c0af70499d9c16ebac621942`  
		Last Modified: Fri, 20 Nov 2026 04:00:13 GMT  
		Size: 14.8 MB (14765235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d487da9837144c93790f88f70ddb5e7d4b836443f900d194bf0cb96b0c6b34b7`  
		Last Modified: Fri, 20 Nov 2026 04:00:11 GMT  
		Size: 881.0 KB (881010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e78050dca434636c9690ea39411d4f33bf777f93ecfc9dba9ffe50b1ccd079c2`  
		Last Modified: Fri, 20 Nov 2026 04:00:28 GMT  
		Size: 417.3 MB (417347821 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bca3714c121e48227384da8a2424cf95148ddf5f63920fe0bf4e9dd724e99a21`  
		Last Modified: Fri, 20 Nov 2026 04:00:13 GMT  
		Size: 717.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7f8b78a38080d247d8c5d957085b9ea58e4fd27dd4aa9b60a82f742e1635b4d`  
		Last Modified: Fri, 20 Nov 2026 04:00:15 GMT  
		Size: 557.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:173476d57e3067b17cc6ec2cd5e15d74dccf881a5cf7070604a5c85ddae6cbf0`  
		Last Modified: Fri, 20 Nov 2026 04:00:15 GMT  
		Size: 600.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f161fa2891f6b740c6e59c1005feba7606550bff14b429daaa9cc0fb27646c3`  
		Last Modified: Fri, 20 Nov 2026 04:00:17 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19.0-20261112` - unknown; unknown

```console
$ docker pull odoo@sha256:969696d6fcdf98a6d9996be7ca010d4106cb1830fe787eb4a1f3d1e4ff33c0fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.7 MB (52715495 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9472518bb01ddb9ebb28b9374fa6e4d9386fad74189623919b9793290e777919`

```dockerfile
```

-	Layers:
	-	`sha256:6285fcf58766f51867f166bd553b7c8474dd720719451f86e07620879d93b762`  
		Last Modified: Fri, 20 Nov 2026 04:00:17 GMT  
		Size: 52.7 MB (52688242 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:498b44023fb8ee5355e82af130b034fae9d9a631f4230e97806a02daf045a616`  
		Last Modified: Fri, 20 Nov 2026 04:00:12 GMT  
		Size: 27.3 KB (27253 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:20`

```console
$ docker pull odoo@sha256:c7352c766b245b3c0e5c7b7a57e7660dde3265872be9566870d44bdb974f44cf
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
$ docker pull odoo@sha256:63bc2629dd027635f279e8d00a190d13f62027bf27c7f845bcda726984348bf6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **805.6 MB (805579912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27fbd408964548911b06a7583b7ac0ee78ae93da94d039f2b813e8ad3efc0f6a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Tue, 10 Nov 2026 18:35:15 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:35:15 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:35:15 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:35:17 GMT
ADD file:54dafd97985c3ec227e2c96be9290657cf2ab456885b5fc8a24c9278bca65e60 in / 
# Tue, 10 Nov 2026 18:35:18 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:26:29 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Fri, 20 Nov 2026 03:26:29 GMT
SHELL [/bin/bash -xo pipefail -c]
# Fri, 20 Nov 2026 03:26:29 GMT
ENV LANG=en_US.UTF-8
# Fri, 20 Nov 2026 03:26:29 GMT
ARG TARGETARCH=amd64
# Fri, 20 Nov 2026 03:26:29 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Fri, 20 Nov 2026 03:26:35 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:27:43 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:27:43 GMT
ENV ODOO_VERSION=20.0
# Fri, 20 Nov 2026 03:27:43 GMT
ARG ODOO_RELEASE=20261112
# Fri, 20 Nov 2026 03:27:43 GMT
ARG ODOO_SHA=9b69ffe4ebf8a4412b312d1f71494112d8410e12
# Fri, 20 Nov 2026 03:28:53 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261112 ODOO_SHA=9b69ffe4ebf8a4412b312d1f71494112d8410e12
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Fri, 20 Nov 2026 03:28:54 GMT
COPY ./entrypoint.sh / # buildkit
# Fri, 20 Nov 2026 03:28:54 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Fri, 20 Nov 2026 03:28:54 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261112 ODOO_SHA=9b69ffe4ebf8a4412b312d1f71494112d8410e12
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Fri, 20 Nov 2026 03:28:54 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Fri, 20 Nov 2026 03:28:54 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Fri, 20 Nov 2026 03:28:54 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Fri, 20 Nov 2026 03:28:54 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Fri, 20 Nov 2026 03:28:54 GMT
USER odoo
# Fri, 20 Nov 2026 03:28:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 20 Nov 2026 03:28:54 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:8e8df94085bf9af8de500d2042195f1819a4c381b7f3be2a6b920cab65039050`  
		Last Modified: Tue, 10 Nov 2026 20:09:19 GMT  
		Size: 29.8 MB (29793297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80dd9268a19eee8451746e54d6667a7feb84084a25eba3ebd85c76271fd8c64b`  
		Last Modified: Fri, 20 Nov 2026 03:30:48 GMT  
		Size: 238.7 MB (238729552 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71087c6097044a752897049ed90dafa87ae548a6aa939e06ced80f911808bfc7`  
		Last Modified: Fri, 20 Nov 2026 03:30:40 GMT  
		Size: 14.2 MB (14228061 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b271b7bab83c955f1b54aa1097049de6b5714377d25ff6eb7a2767c9531fef8f`  
		Last Modified: Fri, 20 Nov 2026 03:30:39 GMT  
		Size: 879.6 KB (879577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9adba81c653e3c7b41dc9415e0f5b7896e311c7c247ca5c647c3b6cd28da08d9`  
		Last Modified: Fri, 20 Nov 2026 03:30:53 GMT  
		Size: 521.9 MB (521946656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64768fb8be794e0840a2d5f3ba281d9019178326be23b1feb9cbab0db7bbb488`  
		Last Modified: Fri, 20 Nov 2026 03:30:40 GMT  
		Size: 718.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8006e5fcda892de93c28e809e9c39e0db849d6a5dd6299252c73d775592737d`  
		Last Modified: Fri, 20 Nov 2026 03:30:41 GMT  
		Size: 566.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05c51a1dd9cf5a8648068b5d9ec77b09f0f0a3078a780dd822035dd0f0174ecd`  
		Last Modified: Fri, 20 Nov 2026 03:30:41 GMT  
		Size: 607.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b38c8e4826b7d1175d568dec2dec57174ca474416519589297987510375f59ad`  
		Last Modified: Fri, 20 Nov 2026 03:30:43 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:20` - unknown; unknown

```console
$ docker pull odoo@sha256:02edc598e0431b295005261e29ac2f17224c26d9f17bcfea8b17caa7ae86add3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.4 MB (55414960 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1dee902d7c7dcf41e7723b2c14c96ea976fb522785d88d67d48b22885970c452`

```dockerfile
```

-	Layers:
	-	`sha256:cc6f7c33387fe413c887e3b0eb47aabb19caa00d94b071de4a07c0363ab318fc`  
		Last Modified: Fri, 20 Nov 2026 03:30:42 GMT  
		Size: 55.4 MB (55387469 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6080e891f57217460bc974f41969ee6c48f0aefbc6de0ed17b79a474993410ef`  
		Last Modified: Fri, 20 Nov 2026 03:30:39 GMT  
		Size: 27.5 KB (27491 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:20` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:7dcfb60ddf48dbe5bcace178670f7efe4f8dfc5507a802fcb671a643b9f4735d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **802.1 MB (802053114 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f350daec023a37f548425ee1414acbca54f69128ad0edf90b81e8ca5c917f723`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Tue, 10 Nov 2026 18:31:19 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:31:19 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:31:19 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:31:22 GMT
ADD file:2a6d7d3511af5b48de2ccdad66ef2aa7544bf264ce928935ad4469c76a66169b in / 
# Tue, 10 Nov 2026 18:31:22 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:28:02 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Fri, 20 Nov 2026 03:28:02 GMT
SHELL [/bin/bash -xo pipefail -c]
# Fri, 20 Nov 2026 03:28:02 GMT
ENV LANG=en_US.UTF-8
# Fri, 20 Nov 2026 03:28:02 GMT
ARG TARGETARCH=arm64
# Fri, 20 Nov 2026 03:28:02 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Fri, 20 Nov 2026 03:28:09 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:30:58 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:30:58 GMT
ENV ODOO_VERSION=20.0
# Fri, 20 Nov 2026 03:30:58 GMT
ARG ODOO_RELEASE=20261112
# Fri, 20 Nov 2026 03:30:58 GMT
ARG ODOO_SHA=9b69ffe4ebf8a4412b312d1f71494112d8410e12
# Fri, 20 Nov 2026 03:32:37 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261112 ODOO_SHA=9b69ffe4ebf8a4412b312d1f71494112d8410e12
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Fri, 20 Nov 2026 03:32:38 GMT
COPY ./entrypoint.sh / # buildkit
# Fri, 20 Nov 2026 03:32:38 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Fri, 20 Nov 2026 03:32:38 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261112 ODOO_SHA=9b69ffe4ebf8a4412b312d1f71494112d8410e12
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Fri, 20 Nov 2026 03:32:38 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Fri, 20 Nov 2026 03:32:38 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Fri, 20 Nov 2026 03:32:38 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Fri, 20 Nov 2026 03:32:38 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Fri, 20 Nov 2026 03:32:38 GMT
USER odoo
# Fri, 20 Nov 2026 03:32:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 20 Nov 2026 03:32:38 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:6542099f24f28e8effaa18375a01b636d7898b6807da55b7c2d7a7a8d9eb103c`  
		Last Modified: Tue, 10 Nov 2026 20:09:25 GMT  
		Size: 29.0 MB (28965318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1832609bfee64aef25519de7e1983a8f38a6e02fe49b1e53858ef5a98ed8581a`  
		Last Modified: Fri, 20 Nov 2026 03:35:08 GMT  
		Size: 236.2 MB (236192703 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d39eb6d826cd1b96e2678c7eda09397f10b97adcdd1aeb2794fcb8d3eb52083f`  
		Last Modified: Fri, 20 Nov 2026 03:34:57 GMT  
		Size: 14.2 MB (14206282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e68e3d297bd92d0362af6ef1a5521763b7c4210c9b0a1161d3bfc2e6bd5aa27`  
		Last Modified: Fri, 20 Nov 2026 03:34:56 GMT  
		Size: 879.8 KB (879771 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e1bf60f2391a745b7145fef8f51dadf64cad250a77aa9a3cf6bb2706760635d`  
		Last Modified: Fri, 20 Nov 2026 03:35:13 GMT  
		Size: 521.8 MB (521806268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c385377d7b57dd2a8f2f26eab261000d547366f58477048106ff0d2f1d89fe07`  
		Last Modified: Fri, 20 Nov 2026 03:34:57 GMT  
		Size: 718.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e032ea0ff7d26a45d377e01d9d6676ea210295326abb1f586364e0320a81a1d`  
		Last Modified: Fri, 20 Nov 2026 03:34:58 GMT  
		Size: 567.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5764ae51c2e503b8e24847765598e60a0372a8ad4cad915a3858b52bc8c6284c`  
		Last Modified: Fri, 20 Nov 2026 03:34:58 GMT  
		Size: 608.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:831248d3274d92fc1b88805dc2b235357ac396b571b1bbce1648d30555e8113d`  
		Last Modified: Fri, 20 Nov 2026 03:35:00 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:20` - unknown; unknown

```console
$ docker pull odoo@sha256:99073a10e8ae03f77e50c24f07e30dc4f9499f254b38e4476bf0ebcf7377c8f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.4 MB (55422408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f44a130294b44d67fe65eb8bf41f031f34d6620c05621cd5060a0722651c377`

```dockerfile
```

-	Layers:
	-	`sha256:b8719568ce89636290857940e52105079cab62c27fc9d5e20bfe21d720b81264`  
		Last Modified: Fri, 20 Nov 2026 03:35:00 GMT  
		Size: 55.4 MB (55394753 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9422fd2cb3f9450f40899cfa0efd3a1a5867f9ee394463d73a6e93a2c5d9fb0b`  
		Last Modified: Fri, 20 Nov 2026 03:34:56 GMT  
		Size: 27.7 KB (27655 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:20` - linux; ppc64le

```console
$ docker pull odoo@sha256:d8f889ed048ea648051fef16375550c464c2e1f1dd805cfaa45532682a489e51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **822.1 MB (822093665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6eaf488ff028f4561ba9293c5059f34163a076c31df6e5cc394cd9baef35fbe6`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Tue, 10 Nov 2026 18:32:30 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:32:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:32:30 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:32:33 GMT
ADD file:9fc87f5d4993c1f29848a41be6f1c74d6ab81fed009749aa0f9d0206b6b19eb0 in / 
# Tue, 10 Nov 2026 18:32:34 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:47:47 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Fri, 20 Nov 2026 03:47:47 GMT
SHELL [/bin/bash -xo pipefail -c]
# Fri, 20 Nov 2026 03:47:47 GMT
ENV LANG=en_US.UTF-8
# Fri, 20 Nov 2026 03:47:47 GMT
ARG TARGETARCH=ppc64le
# Fri, 20 Nov 2026 03:47:47 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Fri, 20 Nov 2026 03:48:01 GMT
# ARGS: TARGETARCH=ppc64le
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:52:38 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:52:38 GMT
ENV ODOO_VERSION=20.0
# Fri, 20 Nov 2026 03:52:38 GMT
ARG ODOO_RELEASE=20261112
# Fri, 20 Nov 2026 03:52:38 GMT
ARG ODOO_SHA=9b69ffe4ebf8a4412b312d1f71494112d8410e12
# Fri, 20 Nov 2026 03:55:47 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261112 ODOO_SHA=9b69ffe4ebf8a4412b312d1f71494112d8410e12
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Fri, 20 Nov 2026 03:55:49 GMT
COPY ./entrypoint.sh / # buildkit
# Fri, 20 Nov 2026 03:55:50 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Fri, 20 Nov 2026 03:55:51 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261112 ODOO_SHA=9b69ffe4ebf8a4412b312d1f71494112d8410e12
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Fri, 20 Nov 2026 03:55:51 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Fri, 20 Nov 2026 03:55:51 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Fri, 20 Nov 2026 03:55:51 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Fri, 20 Nov 2026 03:55:51 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Fri, 20 Nov 2026 03:55:51 GMT
USER odoo
# Fri, 20 Nov 2026 03:55:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 20 Nov 2026 03:55:51 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:6c769a4f95bc536aae313c2bf7fcbf46e8cc18ed65fefad2a8ccfc1b5b7a63b4`  
		Last Modified: Tue, 10 Nov 2026 20:09:39 GMT  
		Size: 34.4 MB (34406239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09d23117909b1e154619850f663e5569eee5dbcc94f9ac42ebce205ced4b3216`  
		Last Modified: Fri, 20 Nov 2026 04:00:23 GMT  
		Size: 249.4 MB (249408577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92bbbe0bfdd20d044abe9826b7a10c9c8fec1fa7c0af70499d9c16ebac621942`  
		Last Modified: Fri, 20 Nov 2026 04:00:13 GMT  
		Size: 14.8 MB (14765235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d487da9837144c93790f88f70ddb5e7d4b836443f900d194bf0cb96b0c6b34b7`  
		Last Modified: Fri, 20 Nov 2026 04:00:11 GMT  
		Size: 881.0 KB (881010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a2098c41e6891a02baf68a3b6cb48a09a117b03ca8122d6b744753b9fc75fb5`  
		Last Modified: Fri, 20 Nov 2026 04:00:44 GMT  
		Size: 522.6 MB (522629831 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83448281777888afe986e33aa578010d1c32f739c6f89de9326b18c70b9ef448`  
		Last Modified: Fri, 20 Nov 2026 04:00:24 GMT  
		Size: 717.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fe9c5d4886ab550a1ccfaf7586b39933fb1f160b50f973c11a05560db4227cf`  
		Last Modified: Fri, 20 Nov 2026 04:00:25 GMT  
		Size: 567.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b9f6c592584e0e69a71ea2f34c1415a3b97d5714787ac946d986769c65bb8c4`  
		Last Modified: Fri, 20 Nov 2026 04:00:26 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2528515556b7f72a8745495f3b916e63202252227323874cb67cb1b905f4546`  
		Last Modified: Fri, 20 Nov 2026 04:00:28 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:20` - unknown; unknown

```console
$ docker pull odoo@sha256:f1e7cebb29fad9f43370fff55b9f7a69646f9b52a94a25c6538423c8a4b924dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.4 MB (55423392 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7557d9a2d87c62294b59759e095677016cd81671c7e7a047ef505ef78d86537`

```dockerfile
```

-	Layers:
	-	`sha256:276ff97af83d2623ffc83d918bf108d6885e2f0839f9f8800c97d1687d282468`  
		Last Modified: Fri, 20 Nov 2026 04:00:30 GMT  
		Size: 55.4 MB (55395839 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9dace0516753f1c32e77e463906520ffb69ca69d6fba1236404c029cfb297d8f`  
		Last Modified: Fri, 20 Nov 2026 04:00:25 GMT  
		Size: 27.6 KB (27553 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:20.0`

```console
$ docker pull odoo@sha256:c7352c766b245b3c0e5c7b7a57e7660dde3265872be9566870d44bdb974f44cf
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
$ docker pull odoo@sha256:63bc2629dd027635f279e8d00a190d13f62027bf27c7f845bcda726984348bf6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **805.6 MB (805579912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27fbd408964548911b06a7583b7ac0ee78ae93da94d039f2b813e8ad3efc0f6a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Tue, 10 Nov 2026 18:35:15 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:35:15 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:35:15 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:35:17 GMT
ADD file:54dafd97985c3ec227e2c96be9290657cf2ab456885b5fc8a24c9278bca65e60 in / 
# Tue, 10 Nov 2026 18:35:18 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:26:29 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Fri, 20 Nov 2026 03:26:29 GMT
SHELL [/bin/bash -xo pipefail -c]
# Fri, 20 Nov 2026 03:26:29 GMT
ENV LANG=en_US.UTF-8
# Fri, 20 Nov 2026 03:26:29 GMT
ARG TARGETARCH=amd64
# Fri, 20 Nov 2026 03:26:29 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Fri, 20 Nov 2026 03:26:35 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:27:43 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:27:43 GMT
ENV ODOO_VERSION=20.0
# Fri, 20 Nov 2026 03:27:43 GMT
ARG ODOO_RELEASE=20261112
# Fri, 20 Nov 2026 03:27:43 GMT
ARG ODOO_SHA=9b69ffe4ebf8a4412b312d1f71494112d8410e12
# Fri, 20 Nov 2026 03:28:53 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261112 ODOO_SHA=9b69ffe4ebf8a4412b312d1f71494112d8410e12
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Fri, 20 Nov 2026 03:28:54 GMT
COPY ./entrypoint.sh / # buildkit
# Fri, 20 Nov 2026 03:28:54 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Fri, 20 Nov 2026 03:28:54 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261112 ODOO_SHA=9b69ffe4ebf8a4412b312d1f71494112d8410e12
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Fri, 20 Nov 2026 03:28:54 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Fri, 20 Nov 2026 03:28:54 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Fri, 20 Nov 2026 03:28:54 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Fri, 20 Nov 2026 03:28:54 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Fri, 20 Nov 2026 03:28:54 GMT
USER odoo
# Fri, 20 Nov 2026 03:28:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 20 Nov 2026 03:28:54 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:8e8df94085bf9af8de500d2042195f1819a4c381b7f3be2a6b920cab65039050`  
		Last Modified: Tue, 10 Nov 2026 20:09:19 GMT  
		Size: 29.8 MB (29793297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80dd9268a19eee8451746e54d6667a7feb84084a25eba3ebd85c76271fd8c64b`  
		Last Modified: Fri, 20 Nov 2026 03:30:48 GMT  
		Size: 238.7 MB (238729552 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71087c6097044a752897049ed90dafa87ae548a6aa939e06ced80f911808bfc7`  
		Last Modified: Fri, 20 Nov 2026 03:30:40 GMT  
		Size: 14.2 MB (14228061 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b271b7bab83c955f1b54aa1097049de6b5714377d25ff6eb7a2767c9531fef8f`  
		Last Modified: Fri, 20 Nov 2026 03:30:39 GMT  
		Size: 879.6 KB (879577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9adba81c653e3c7b41dc9415e0f5b7896e311c7c247ca5c647c3b6cd28da08d9`  
		Last Modified: Fri, 20 Nov 2026 03:30:53 GMT  
		Size: 521.9 MB (521946656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64768fb8be794e0840a2d5f3ba281d9019178326be23b1feb9cbab0db7bbb488`  
		Last Modified: Fri, 20 Nov 2026 03:30:40 GMT  
		Size: 718.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8006e5fcda892de93c28e809e9c39e0db849d6a5dd6299252c73d775592737d`  
		Last Modified: Fri, 20 Nov 2026 03:30:41 GMT  
		Size: 566.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05c51a1dd9cf5a8648068b5d9ec77b09f0f0a3078a780dd822035dd0f0174ecd`  
		Last Modified: Fri, 20 Nov 2026 03:30:41 GMT  
		Size: 607.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b38c8e4826b7d1175d568dec2dec57174ca474416519589297987510375f59ad`  
		Last Modified: Fri, 20 Nov 2026 03:30:43 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:20.0` - unknown; unknown

```console
$ docker pull odoo@sha256:02edc598e0431b295005261e29ac2f17224c26d9f17bcfea8b17caa7ae86add3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.4 MB (55414960 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1dee902d7c7dcf41e7723b2c14c96ea976fb522785d88d67d48b22885970c452`

```dockerfile
```

-	Layers:
	-	`sha256:cc6f7c33387fe413c887e3b0eb47aabb19caa00d94b071de4a07c0363ab318fc`  
		Last Modified: Fri, 20 Nov 2026 03:30:42 GMT  
		Size: 55.4 MB (55387469 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6080e891f57217460bc974f41969ee6c48f0aefbc6de0ed17b79a474993410ef`  
		Last Modified: Fri, 20 Nov 2026 03:30:39 GMT  
		Size: 27.5 KB (27491 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:20.0` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:7dcfb60ddf48dbe5bcace178670f7efe4f8dfc5507a802fcb671a643b9f4735d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **802.1 MB (802053114 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f350daec023a37f548425ee1414acbca54f69128ad0edf90b81e8ca5c917f723`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Tue, 10 Nov 2026 18:31:19 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:31:19 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:31:19 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:31:22 GMT
ADD file:2a6d7d3511af5b48de2ccdad66ef2aa7544bf264ce928935ad4469c76a66169b in / 
# Tue, 10 Nov 2026 18:31:22 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:28:02 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Fri, 20 Nov 2026 03:28:02 GMT
SHELL [/bin/bash -xo pipefail -c]
# Fri, 20 Nov 2026 03:28:02 GMT
ENV LANG=en_US.UTF-8
# Fri, 20 Nov 2026 03:28:02 GMT
ARG TARGETARCH=arm64
# Fri, 20 Nov 2026 03:28:02 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Fri, 20 Nov 2026 03:28:09 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:30:58 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:30:58 GMT
ENV ODOO_VERSION=20.0
# Fri, 20 Nov 2026 03:30:58 GMT
ARG ODOO_RELEASE=20261112
# Fri, 20 Nov 2026 03:30:58 GMT
ARG ODOO_SHA=9b69ffe4ebf8a4412b312d1f71494112d8410e12
# Fri, 20 Nov 2026 03:32:37 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261112 ODOO_SHA=9b69ffe4ebf8a4412b312d1f71494112d8410e12
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Fri, 20 Nov 2026 03:32:38 GMT
COPY ./entrypoint.sh / # buildkit
# Fri, 20 Nov 2026 03:32:38 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Fri, 20 Nov 2026 03:32:38 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261112 ODOO_SHA=9b69ffe4ebf8a4412b312d1f71494112d8410e12
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Fri, 20 Nov 2026 03:32:38 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Fri, 20 Nov 2026 03:32:38 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Fri, 20 Nov 2026 03:32:38 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Fri, 20 Nov 2026 03:32:38 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Fri, 20 Nov 2026 03:32:38 GMT
USER odoo
# Fri, 20 Nov 2026 03:32:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 20 Nov 2026 03:32:38 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:6542099f24f28e8effaa18375a01b636d7898b6807da55b7c2d7a7a8d9eb103c`  
		Last Modified: Tue, 10 Nov 2026 20:09:25 GMT  
		Size: 29.0 MB (28965318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1832609bfee64aef25519de7e1983a8f38a6e02fe49b1e53858ef5a98ed8581a`  
		Last Modified: Fri, 20 Nov 2026 03:35:08 GMT  
		Size: 236.2 MB (236192703 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d39eb6d826cd1b96e2678c7eda09397f10b97adcdd1aeb2794fcb8d3eb52083f`  
		Last Modified: Fri, 20 Nov 2026 03:34:57 GMT  
		Size: 14.2 MB (14206282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e68e3d297bd92d0362af6ef1a5521763b7c4210c9b0a1161d3bfc2e6bd5aa27`  
		Last Modified: Fri, 20 Nov 2026 03:34:56 GMT  
		Size: 879.8 KB (879771 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e1bf60f2391a745b7145fef8f51dadf64cad250a77aa9a3cf6bb2706760635d`  
		Last Modified: Fri, 20 Nov 2026 03:35:13 GMT  
		Size: 521.8 MB (521806268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c385377d7b57dd2a8f2f26eab261000d547366f58477048106ff0d2f1d89fe07`  
		Last Modified: Fri, 20 Nov 2026 03:34:57 GMT  
		Size: 718.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e032ea0ff7d26a45d377e01d9d6676ea210295326abb1f586364e0320a81a1d`  
		Last Modified: Fri, 20 Nov 2026 03:34:58 GMT  
		Size: 567.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5764ae51c2e503b8e24847765598e60a0372a8ad4cad915a3858b52bc8c6284c`  
		Last Modified: Fri, 20 Nov 2026 03:34:58 GMT  
		Size: 608.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:831248d3274d92fc1b88805dc2b235357ac396b571b1bbce1648d30555e8113d`  
		Last Modified: Fri, 20 Nov 2026 03:35:00 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:20.0` - unknown; unknown

```console
$ docker pull odoo@sha256:99073a10e8ae03f77e50c24f07e30dc4f9499f254b38e4476bf0ebcf7377c8f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.4 MB (55422408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f44a130294b44d67fe65eb8bf41f031f34d6620c05621cd5060a0722651c377`

```dockerfile
```

-	Layers:
	-	`sha256:b8719568ce89636290857940e52105079cab62c27fc9d5e20bfe21d720b81264`  
		Last Modified: Fri, 20 Nov 2026 03:35:00 GMT  
		Size: 55.4 MB (55394753 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9422fd2cb3f9450f40899cfa0efd3a1a5867f9ee394463d73a6e93a2c5d9fb0b`  
		Last Modified: Fri, 20 Nov 2026 03:34:56 GMT  
		Size: 27.7 KB (27655 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:20.0` - linux; ppc64le

```console
$ docker pull odoo@sha256:d8f889ed048ea648051fef16375550c464c2e1f1dd805cfaa45532682a489e51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **822.1 MB (822093665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6eaf488ff028f4561ba9293c5059f34163a076c31df6e5cc394cd9baef35fbe6`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Tue, 10 Nov 2026 18:32:30 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:32:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:32:30 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:32:33 GMT
ADD file:9fc87f5d4993c1f29848a41be6f1c74d6ab81fed009749aa0f9d0206b6b19eb0 in / 
# Tue, 10 Nov 2026 18:32:34 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:47:47 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Fri, 20 Nov 2026 03:47:47 GMT
SHELL [/bin/bash -xo pipefail -c]
# Fri, 20 Nov 2026 03:47:47 GMT
ENV LANG=en_US.UTF-8
# Fri, 20 Nov 2026 03:47:47 GMT
ARG TARGETARCH=ppc64le
# Fri, 20 Nov 2026 03:47:47 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Fri, 20 Nov 2026 03:48:01 GMT
# ARGS: TARGETARCH=ppc64le
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:52:38 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:52:38 GMT
ENV ODOO_VERSION=20.0
# Fri, 20 Nov 2026 03:52:38 GMT
ARG ODOO_RELEASE=20261112
# Fri, 20 Nov 2026 03:52:38 GMT
ARG ODOO_SHA=9b69ffe4ebf8a4412b312d1f71494112d8410e12
# Fri, 20 Nov 2026 03:55:47 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261112 ODOO_SHA=9b69ffe4ebf8a4412b312d1f71494112d8410e12
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Fri, 20 Nov 2026 03:55:49 GMT
COPY ./entrypoint.sh / # buildkit
# Fri, 20 Nov 2026 03:55:50 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Fri, 20 Nov 2026 03:55:51 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261112 ODOO_SHA=9b69ffe4ebf8a4412b312d1f71494112d8410e12
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Fri, 20 Nov 2026 03:55:51 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Fri, 20 Nov 2026 03:55:51 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Fri, 20 Nov 2026 03:55:51 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Fri, 20 Nov 2026 03:55:51 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Fri, 20 Nov 2026 03:55:51 GMT
USER odoo
# Fri, 20 Nov 2026 03:55:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 20 Nov 2026 03:55:51 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:6c769a4f95bc536aae313c2bf7fcbf46e8cc18ed65fefad2a8ccfc1b5b7a63b4`  
		Last Modified: Tue, 10 Nov 2026 20:09:39 GMT  
		Size: 34.4 MB (34406239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09d23117909b1e154619850f663e5569eee5dbcc94f9ac42ebce205ced4b3216`  
		Last Modified: Fri, 20 Nov 2026 04:00:23 GMT  
		Size: 249.4 MB (249408577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92bbbe0bfdd20d044abe9826b7a10c9c8fec1fa7c0af70499d9c16ebac621942`  
		Last Modified: Fri, 20 Nov 2026 04:00:13 GMT  
		Size: 14.8 MB (14765235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d487da9837144c93790f88f70ddb5e7d4b836443f900d194bf0cb96b0c6b34b7`  
		Last Modified: Fri, 20 Nov 2026 04:00:11 GMT  
		Size: 881.0 KB (881010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a2098c41e6891a02baf68a3b6cb48a09a117b03ca8122d6b744753b9fc75fb5`  
		Last Modified: Fri, 20 Nov 2026 04:00:44 GMT  
		Size: 522.6 MB (522629831 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83448281777888afe986e33aa578010d1c32f739c6f89de9326b18c70b9ef448`  
		Last Modified: Fri, 20 Nov 2026 04:00:24 GMT  
		Size: 717.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fe9c5d4886ab550a1ccfaf7586b39933fb1f160b50f973c11a05560db4227cf`  
		Last Modified: Fri, 20 Nov 2026 04:00:25 GMT  
		Size: 567.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b9f6c592584e0e69a71ea2f34c1415a3b97d5714787ac946d986769c65bb8c4`  
		Last Modified: Fri, 20 Nov 2026 04:00:26 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2528515556b7f72a8745495f3b916e63202252227323874cb67cb1b905f4546`  
		Last Modified: Fri, 20 Nov 2026 04:00:28 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:20.0` - unknown; unknown

```console
$ docker pull odoo@sha256:f1e7cebb29fad9f43370fff55b9f7a69646f9b52a94a25c6538423c8a4b924dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.4 MB (55423392 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7557d9a2d87c62294b59759e095677016cd81671c7e7a047ef505ef78d86537`

```dockerfile
```

-	Layers:
	-	`sha256:276ff97af83d2623ffc83d918bf108d6885e2f0839f9f8800c97d1687d282468`  
		Last Modified: Fri, 20 Nov 2026 04:00:30 GMT  
		Size: 55.4 MB (55395839 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9dace0516753f1c32e77e463906520ffb69ca69d6fba1236404c029cfb297d8f`  
		Last Modified: Fri, 20 Nov 2026 04:00:25 GMT  
		Size: 27.6 KB (27553 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:20.0-20261112`

```console
$ docker pull odoo@sha256:c7352c766b245b3c0e5c7b7a57e7660dde3265872be9566870d44bdb974f44cf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `odoo:20.0-20261112` - linux; amd64

```console
$ docker pull odoo@sha256:63bc2629dd027635f279e8d00a190d13f62027bf27c7f845bcda726984348bf6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **805.6 MB (805579912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27fbd408964548911b06a7583b7ac0ee78ae93da94d039f2b813e8ad3efc0f6a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Tue, 10 Nov 2026 18:35:15 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:35:15 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:35:15 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:35:17 GMT
ADD file:54dafd97985c3ec227e2c96be9290657cf2ab456885b5fc8a24c9278bca65e60 in / 
# Tue, 10 Nov 2026 18:35:18 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:26:29 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Fri, 20 Nov 2026 03:26:29 GMT
SHELL [/bin/bash -xo pipefail -c]
# Fri, 20 Nov 2026 03:26:29 GMT
ENV LANG=en_US.UTF-8
# Fri, 20 Nov 2026 03:26:29 GMT
ARG TARGETARCH=amd64
# Fri, 20 Nov 2026 03:26:29 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Fri, 20 Nov 2026 03:26:35 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:27:43 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:27:43 GMT
ENV ODOO_VERSION=20.0
# Fri, 20 Nov 2026 03:27:43 GMT
ARG ODOO_RELEASE=20261112
# Fri, 20 Nov 2026 03:27:43 GMT
ARG ODOO_SHA=9b69ffe4ebf8a4412b312d1f71494112d8410e12
# Fri, 20 Nov 2026 03:28:53 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261112 ODOO_SHA=9b69ffe4ebf8a4412b312d1f71494112d8410e12
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Fri, 20 Nov 2026 03:28:54 GMT
COPY ./entrypoint.sh / # buildkit
# Fri, 20 Nov 2026 03:28:54 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Fri, 20 Nov 2026 03:28:54 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261112 ODOO_SHA=9b69ffe4ebf8a4412b312d1f71494112d8410e12
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Fri, 20 Nov 2026 03:28:54 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Fri, 20 Nov 2026 03:28:54 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Fri, 20 Nov 2026 03:28:54 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Fri, 20 Nov 2026 03:28:54 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Fri, 20 Nov 2026 03:28:54 GMT
USER odoo
# Fri, 20 Nov 2026 03:28:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 20 Nov 2026 03:28:54 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:8e8df94085bf9af8de500d2042195f1819a4c381b7f3be2a6b920cab65039050`  
		Last Modified: Tue, 10 Nov 2026 20:09:19 GMT  
		Size: 29.8 MB (29793297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80dd9268a19eee8451746e54d6667a7feb84084a25eba3ebd85c76271fd8c64b`  
		Last Modified: Fri, 20 Nov 2026 03:30:48 GMT  
		Size: 238.7 MB (238729552 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71087c6097044a752897049ed90dafa87ae548a6aa939e06ced80f911808bfc7`  
		Last Modified: Fri, 20 Nov 2026 03:30:40 GMT  
		Size: 14.2 MB (14228061 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b271b7bab83c955f1b54aa1097049de6b5714377d25ff6eb7a2767c9531fef8f`  
		Last Modified: Fri, 20 Nov 2026 03:30:39 GMT  
		Size: 879.6 KB (879577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9adba81c653e3c7b41dc9415e0f5b7896e311c7c247ca5c647c3b6cd28da08d9`  
		Last Modified: Fri, 20 Nov 2026 03:30:53 GMT  
		Size: 521.9 MB (521946656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64768fb8be794e0840a2d5f3ba281d9019178326be23b1feb9cbab0db7bbb488`  
		Last Modified: Fri, 20 Nov 2026 03:30:40 GMT  
		Size: 718.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8006e5fcda892de93c28e809e9c39e0db849d6a5dd6299252c73d775592737d`  
		Last Modified: Fri, 20 Nov 2026 03:30:41 GMT  
		Size: 566.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05c51a1dd9cf5a8648068b5d9ec77b09f0f0a3078a780dd822035dd0f0174ecd`  
		Last Modified: Fri, 20 Nov 2026 03:30:41 GMT  
		Size: 607.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b38c8e4826b7d1175d568dec2dec57174ca474416519589297987510375f59ad`  
		Last Modified: Fri, 20 Nov 2026 03:30:43 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:20.0-20261112` - unknown; unknown

```console
$ docker pull odoo@sha256:02edc598e0431b295005261e29ac2f17224c26d9f17bcfea8b17caa7ae86add3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.4 MB (55414960 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1dee902d7c7dcf41e7723b2c14c96ea976fb522785d88d67d48b22885970c452`

```dockerfile
```

-	Layers:
	-	`sha256:cc6f7c33387fe413c887e3b0eb47aabb19caa00d94b071de4a07c0363ab318fc`  
		Last Modified: Fri, 20 Nov 2026 03:30:42 GMT  
		Size: 55.4 MB (55387469 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6080e891f57217460bc974f41969ee6c48f0aefbc6de0ed17b79a474993410ef`  
		Last Modified: Fri, 20 Nov 2026 03:30:39 GMT  
		Size: 27.5 KB (27491 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:20.0-20261112` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:7dcfb60ddf48dbe5bcace178670f7efe4f8dfc5507a802fcb671a643b9f4735d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **802.1 MB (802053114 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f350daec023a37f548425ee1414acbca54f69128ad0edf90b81e8ca5c917f723`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Tue, 10 Nov 2026 18:31:19 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:31:19 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:31:19 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:31:22 GMT
ADD file:2a6d7d3511af5b48de2ccdad66ef2aa7544bf264ce928935ad4469c76a66169b in / 
# Tue, 10 Nov 2026 18:31:22 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:28:02 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Fri, 20 Nov 2026 03:28:02 GMT
SHELL [/bin/bash -xo pipefail -c]
# Fri, 20 Nov 2026 03:28:02 GMT
ENV LANG=en_US.UTF-8
# Fri, 20 Nov 2026 03:28:02 GMT
ARG TARGETARCH=arm64
# Fri, 20 Nov 2026 03:28:02 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Fri, 20 Nov 2026 03:28:09 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:30:58 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:30:58 GMT
ENV ODOO_VERSION=20.0
# Fri, 20 Nov 2026 03:30:58 GMT
ARG ODOO_RELEASE=20261112
# Fri, 20 Nov 2026 03:30:58 GMT
ARG ODOO_SHA=9b69ffe4ebf8a4412b312d1f71494112d8410e12
# Fri, 20 Nov 2026 03:32:37 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261112 ODOO_SHA=9b69ffe4ebf8a4412b312d1f71494112d8410e12
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Fri, 20 Nov 2026 03:32:38 GMT
COPY ./entrypoint.sh / # buildkit
# Fri, 20 Nov 2026 03:32:38 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Fri, 20 Nov 2026 03:32:38 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261112 ODOO_SHA=9b69ffe4ebf8a4412b312d1f71494112d8410e12
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Fri, 20 Nov 2026 03:32:38 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Fri, 20 Nov 2026 03:32:38 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Fri, 20 Nov 2026 03:32:38 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Fri, 20 Nov 2026 03:32:38 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Fri, 20 Nov 2026 03:32:38 GMT
USER odoo
# Fri, 20 Nov 2026 03:32:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 20 Nov 2026 03:32:38 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:6542099f24f28e8effaa18375a01b636d7898b6807da55b7c2d7a7a8d9eb103c`  
		Last Modified: Tue, 10 Nov 2026 20:09:25 GMT  
		Size: 29.0 MB (28965318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1832609bfee64aef25519de7e1983a8f38a6e02fe49b1e53858ef5a98ed8581a`  
		Last Modified: Fri, 20 Nov 2026 03:35:08 GMT  
		Size: 236.2 MB (236192703 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d39eb6d826cd1b96e2678c7eda09397f10b97adcdd1aeb2794fcb8d3eb52083f`  
		Last Modified: Fri, 20 Nov 2026 03:34:57 GMT  
		Size: 14.2 MB (14206282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e68e3d297bd92d0362af6ef1a5521763b7c4210c9b0a1161d3bfc2e6bd5aa27`  
		Last Modified: Fri, 20 Nov 2026 03:34:56 GMT  
		Size: 879.8 KB (879771 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e1bf60f2391a745b7145fef8f51dadf64cad250a77aa9a3cf6bb2706760635d`  
		Last Modified: Fri, 20 Nov 2026 03:35:13 GMT  
		Size: 521.8 MB (521806268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c385377d7b57dd2a8f2f26eab261000d547366f58477048106ff0d2f1d89fe07`  
		Last Modified: Fri, 20 Nov 2026 03:34:57 GMT  
		Size: 718.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e032ea0ff7d26a45d377e01d9d6676ea210295326abb1f586364e0320a81a1d`  
		Last Modified: Fri, 20 Nov 2026 03:34:58 GMT  
		Size: 567.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5764ae51c2e503b8e24847765598e60a0372a8ad4cad915a3858b52bc8c6284c`  
		Last Modified: Fri, 20 Nov 2026 03:34:58 GMT  
		Size: 608.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:831248d3274d92fc1b88805dc2b235357ac396b571b1bbce1648d30555e8113d`  
		Last Modified: Fri, 20 Nov 2026 03:35:00 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:20.0-20261112` - unknown; unknown

```console
$ docker pull odoo@sha256:99073a10e8ae03f77e50c24f07e30dc4f9499f254b38e4476bf0ebcf7377c8f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.4 MB (55422408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f44a130294b44d67fe65eb8bf41f031f34d6620c05621cd5060a0722651c377`

```dockerfile
```

-	Layers:
	-	`sha256:b8719568ce89636290857940e52105079cab62c27fc9d5e20bfe21d720b81264`  
		Last Modified: Fri, 20 Nov 2026 03:35:00 GMT  
		Size: 55.4 MB (55394753 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9422fd2cb3f9450f40899cfa0efd3a1a5867f9ee394463d73a6e93a2c5d9fb0b`  
		Last Modified: Fri, 20 Nov 2026 03:34:56 GMT  
		Size: 27.7 KB (27655 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:20.0-20261112` - linux; ppc64le

```console
$ docker pull odoo@sha256:d8f889ed048ea648051fef16375550c464c2e1f1dd805cfaa45532682a489e51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **822.1 MB (822093665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6eaf488ff028f4561ba9293c5059f34163a076c31df6e5cc394cd9baef35fbe6`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Tue, 10 Nov 2026 18:32:30 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:32:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:32:30 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:32:33 GMT
ADD file:9fc87f5d4993c1f29848a41be6f1c74d6ab81fed009749aa0f9d0206b6b19eb0 in / 
# Tue, 10 Nov 2026 18:32:34 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:47:47 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Fri, 20 Nov 2026 03:47:47 GMT
SHELL [/bin/bash -xo pipefail -c]
# Fri, 20 Nov 2026 03:47:47 GMT
ENV LANG=en_US.UTF-8
# Fri, 20 Nov 2026 03:47:47 GMT
ARG TARGETARCH=ppc64le
# Fri, 20 Nov 2026 03:47:47 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Fri, 20 Nov 2026 03:48:01 GMT
# ARGS: TARGETARCH=ppc64le
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:52:38 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:52:38 GMT
ENV ODOO_VERSION=20.0
# Fri, 20 Nov 2026 03:52:38 GMT
ARG ODOO_RELEASE=20261112
# Fri, 20 Nov 2026 03:52:38 GMT
ARG ODOO_SHA=9b69ffe4ebf8a4412b312d1f71494112d8410e12
# Fri, 20 Nov 2026 03:55:47 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261112 ODOO_SHA=9b69ffe4ebf8a4412b312d1f71494112d8410e12
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Fri, 20 Nov 2026 03:55:49 GMT
COPY ./entrypoint.sh / # buildkit
# Fri, 20 Nov 2026 03:55:50 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Fri, 20 Nov 2026 03:55:51 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261112 ODOO_SHA=9b69ffe4ebf8a4412b312d1f71494112d8410e12
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Fri, 20 Nov 2026 03:55:51 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Fri, 20 Nov 2026 03:55:51 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Fri, 20 Nov 2026 03:55:51 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Fri, 20 Nov 2026 03:55:51 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Fri, 20 Nov 2026 03:55:51 GMT
USER odoo
# Fri, 20 Nov 2026 03:55:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 20 Nov 2026 03:55:51 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:6c769a4f95bc536aae313c2bf7fcbf46e8cc18ed65fefad2a8ccfc1b5b7a63b4`  
		Last Modified: Tue, 10 Nov 2026 20:09:39 GMT  
		Size: 34.4 MB (34406239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09d23117909b1e154619850f663e5569eee5dbcc94f9ac42ebce205ced4b3216`  
		Last Modified: Fri, 20 Nov 2026 04:00:23 GMT  
		Size: 249.4 MB (249408577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92bbbe0bfdd20d044abe9826b7a10c9c8fec1fa7c0af70499d9c16ebac621942`  
		Last Modified: Fri, 20 Nov 2026 04:00:13 GMT  
		Size: 14.8 MB (14765235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d487da9837144c93790f88f70ddb5e7d4b836443f900d194bf0cb96b0c6b34b7`  
		Last Modified: Fri, 20 Nov 2026 04:00:11 GMT  
		Size: 881.0 KB (881010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a2098c41e6891a02baf68a3b6cb48a09a117b03ca8122d6b744753b9fc75fb5`  
		Last Modified: Fri, 20 Nov 2026 04:00:44 GMT  
		Size: 522.6 MB (522629831 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83448281777888afe986e33aa578010d1c32f739c6f89de9326b18c70b9ef448`  
		Last Modified: Fri, 20 Nov 2026 04:00:24 GMT  
		Size: 717.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fe9c5d4886ab550a1ccfaf7586b39933fb1f160b50f973c11a05560db4227cf`  
		Last Modified: Fri, 20 Nov 2026 04:00:25 GMT  
		Size: 567.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b9f6c592584e0e69a71ea2f34c1415a3b97d5714787ac946d986769c65bb8c4`  
		Last Modified: Fri, 20 Nov 2026 04:00:26 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2528515556b7f72a8745495f3b916e63202252227323874cb67cb1b905f4546`  
		Last Modified: Fri, 20 Nov 2026 04:00:28 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:20.0-20261112` - unknown; unknown

```console
$ docker pull odoo@sha256:f1e7cebb29fad9f43370fff55b9f7a69646f9b52a94a25c6538423c8a4b924dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.4 MB (55423392 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7557d9a2d87c62294b59759e095677016cd81671c7e7a047ef505ef78d86537`

```dockerfile
```

-	Layers:
	-	`sha256:276ff97af83d2623ffc83d918bf108d6885e2f0839f9f8800c97d1687d282468`  
		Last Modified: Fri, 20 Nov 2026 04:00:30 GMT  
		Size: 55.4 MB (55395839 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9dace0516753f1c32e77e463906520ffb69ca69d6fba1236404c029cfb297d8f`  
		Last Modified: Fri, 20 Nov 2026 04:00:25 GMT  
		Size: 27.6 KB (27553 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:latest`

```console
$ docker pull odoo@sha256:c7352c766b245b3c0e5c7b7a57e7660dde3265872be9566870d44bdb974f44cf
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
$ docker pull odoo@sha256:63bc2629dd027635f279e8d00a190d13f62027bf27c7f845bcda726984348bf6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **805.6 MB (805579912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27fbd408964548911b06a7583b7ac0ee78ae93da94d039f2b813e8ad3efc0f6a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Tue, 10 Nov 2026 18:35:15 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:35:15 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:35:15 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:35:17 GMT
ADD file:54dafd97985c3ec227e2c96be9290657cf2ab456885b5fc8a24c9278bca65e60 in / 
# Tue, 10 Nov 2026 18:35:18 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:26:29 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Fri, 20 Nov 2026 03:26:29 GMT
SHELL [/bin/bash -xo pipefail -c]
# Fri, 20 Nov 2026 03:26:29 GMT
ENV LANG=en_US.UTF-8
# Fri, 20 Nov 2026 03:26:29 GMT
ARG TARGETARCH=amd64
# Fri, 20 Nov 2026 03:26:29 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Fri, 20 Nov 2026 03:26:35 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:27:43 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:27:43 GMT
ENV ODOO_VERSION=20.0
# Fri, 20 Nov 2026 03:27:43 GMT
ARG ODOO_RELEASE=20261112
# Fri, 20 Nov 2026 03:27:43 GMT
ARG ODOO_SHA=9b69ffe4ebf8a4412b312d1f71494112d8410e12
# Fri, 20 Nov 2026 03:28:53 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261112 ODOO_SHA=9b69ffe4ebf8a4412b312d1f71494112d8410e12
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Fri, 20 Nov 2026 03:28:54 GMT
COPY ./entrypoint.sh / # buildkit
# Fri, 20 Nov 2026 03:28:54 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Fri, 20 Nov 2026 03:28:54 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261112 ODOO_SHA=9b69ffe4ebf8a4412b312d1f71494112d8410e12
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Fri, 20 Nov 2026 03:28:54 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Fri, 20 Nov 2026 03:28:54 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Fri, 20 Nov 2026 03:28:54 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Fri, 20 Nov 2026 03:28:54 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Fri, 20 Nov 2026 03:28:54 GMT
USER odoo
# Fri, 20 Nov 2026 03:28:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 20 Nov 2026 03:28:54 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:8e8df94085bf9af8de500d2042195f1819a4c381b7f3be2a6b920cab65039050`  
		Last Modified: Tue, 10 Nov 2026 20:09:19 GMT  
		Size: 29.8 MB (29793297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80dd9268a19eee8451746e54d6667a7feb84084a25eba3ebd85c76271fd8c64b`  
		Last Modified: Fri, 20 Nov 2026 03:30:48 GMT  
		Size: 238.7 MB (238729552 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71087c6097044a752897049ed90dafa87ae548a6aa939e06ced80f911808bfc7`  
		Last Modified: Fri, 20 Nov 2026 03:30:40 GMT  
		Size: 14.2 MB (14228061 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b271b7bab83c955f1b54aa1097049de6b5714377d25ff6eb7a2767c9531fef8f`  
		Last Modified: Fri, 20 Nov 2026 03:30:39 GMT  
		Size: 879.6 KB (879577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9adba81c653e3c7b41dc9415e0f5b7896e311c7c247ca5c647c3b6cd28da08d9`  
		Last Modified: Fri, 20 Nov 2026 03:30:53 GMT  
		Size: 521.9 MB (521946656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64768fb8be794e0840a2d5f3ba281d9019178326be23b1feb9cbab0db7bbb488`  
		Last Modified: Fri, 20 Nov 2026 03:30:40 GMT  
		Size: 718.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8006e5fcda892de93c28e809e9c39e0db849d6a5dd6299252c73d775592737d`  
		Last Modified: Fri, 20 Nov 2026 03:30:41 GMT  
		Size: 566.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05c51a1dd9cf5a8648068b5d9ec77b09f0f0a3078a780dd822035dd0f0174ecd`  
		Last Modified: Fri, 20 Nov 2026 03:30:41 GMT  
		Size: 607.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b38c8e4826b7d1175d568dec2dec57174ca474416519589297987510375f59ad`  
		Last Modified: Fri, 20 Nov 2026 03:30:43 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:latest` - unknown; unknown

```console
$ docker pull odoo@sha256:02edc598e0431b295005261e29ac2f17224c26d9f17bcfea8b17caa7ae86add3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.4 MB (55414960 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1dee902d7c7dcf41e7723b2c14c96ea976fb522785d88d67d48b22885970c452`

```dockerfile
```

-	Layers:
	-	`sha256:cc6f7c33387fe413c887e3b0eb47aabb19caa00d94b071de4a07c0363ab318fc`  
		Last Modified: Fri, 20 Nov 2026 03:30:42 GMT  
		Size: 55.4 MB (55387469 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6080e891f57217460bc974f41969ee6c48f0aefbc6de0ed17b79a474993410ef`  
		Last Modified: Fri, 20 Nov 2026 03:30:39 GMT  
		Size: 27.5 KB (27491 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:latest` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:7dcfb60ddf48dbe5bcace178670f7efe4f8dfc5507a802fcb671a643b9f4735d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **802.1 MB (802053114 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f350daec023a37f548425ee1414acbca54f69128ad0edf90b81e8ca5c917f723`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Tue, 10 Nov 2026 18:31:19 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:31:19 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:31:19 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:31:22 GMT
ADD file:2a6d7d3511af5b48de2ccdad66ef2aa7544bf264ce928935ad4469c76a66169b in / 
# Tue, 10 Nov 2026 18:31:22 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:28:02 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Fri, 20 Nov 2026 03:28:02 GMT
SHELL [/bin/bash -xo pipefail -c]
# Fri, 20 Nov 2026 03:28:02 GMT
ENV LANG=en_US.UTF-8
# Fri, 20 Nov 2026 03:28:02 GMT
ARG TARGETARCH=arm64
# Fri, 20 Nov 2026 03:28:02 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Fri, 20 Nov 2026 03:28:09 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:30:58 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:30:58 GMT
ENV ODOO_VERSION=20.0
# Fri, 20 Nov 2026 03:30:58 GMT
ARG ODOO_RELEASE=20261112
# Fri, 20 Nov 2026 03:30:58 GMT
ARG ODOO_SHA=9b69ffe4ebf8a4412b312d1f71494112d8410e12
# Fri, 20 Nov 2026 03:32:37 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261112 ODOO_SHA=9b69ffe4ebf8a4412b312d1f71494112d8410e12
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Fri, 20 Nov 2026 03:32:38 GMT
COPY ./entrypoint.sh / # buildkit
# Fri, 20 Nov 2026 03:32:38 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Fri, 20 Nov 2026 03:32:38 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261112 ODOO_SHA=9b69ffe4ebf8a4412b312d1f71494112d8410e12
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Fri, 20 Nov 2026 03:32:38 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Fri, 20 Nov 2026 03:32:38 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Fri, 20 Nov 2026 03:32:38 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Fri, 20 Nov 2026 03:32:38 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Fri, 20 Nov 2026 03:32:38 GMT
USER odoo
# Fri, 20 Nov 2026 03:32:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 20 Nov 2026 03:32:38 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:6542099f24f28e8effaa18375a01b636d7898b6807da55b7c2d7a7a8d9eb103c`  
		Last Modified: Tue, 10 Nov 2026 20:09:25 GMT  
		Size: 29.0 MB (28965318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1832609bfee64aef25519de7e1983a8f38a6e02fe49b1e53858ef5a98ed8581a`  
		Last Modified: Fri, 20 Nov 2026 03:35:08 GMT  
		Size: 236.2 MB (236192703 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d39eb6d826cd1b96e2678c7eda09397f10b97adcdd1aeb2794fcb8d3eb52083f`  
		Last Modified: Fri, 20 Nov 2026 03:34:57 GMT  
		Size: 14.2 MB (14206282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e68e3d297bd92d0362af6ef1a5521763b7c4210c9b0a1161d3bfc2e6bd5aa27`  
		Last Modified: Fri, 20 Nov 2026 03:34:56 GMT  
		Size: 879.8 KB (879771 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e1bf60f2391a745b7145fef8f51dadf64cad250a77aa9a3cf6bb2706760635d`  
		Last Modified: Fri, 20 Nov 2026 03:35:13 GMT  
		Size: 521.8 MB (521806268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c385377d7b57dd2a8f2f26eab261000d547366f58477048106ff0d2f1d89fe07`  
		Last Modified: Fri, 20 Nov 2026 03:34:57 GMT  
		Size: 718.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e032ea0ff7d26a45d377e01d9d6676ea210295326abb1f586364e0320a81a1d`  
		Last Modified: Fri, 20 Nov 2026 03:34:58 GMT  
		Size: 567.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5764ae51c2e503b8e24847765598e60a0372a8ad4cad915a3858b52bc8c6284c`  
		Last Modified: Fri, 20 Nov 2026 03:34:58 GMT  
		Size: 608.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:831248d3274d92fc1b88805dc2b235357ac396b571b1bbce1648d30555e8113d`  
		Last Modified: Fri, 20 Nov 2026 03:35:00 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:latest` - unknown; unknown

```console
$ docker pull odoo@sha256:99073a10e8ae03f77e50c24f07e30dc4f9499f254b38e4476bf0ebcf7377c8f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.4 MB (55422408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f44a130294b44d67fe65eb8bf41f031f34d6620c05621cd5060a0722651c377`

```dockerfile
```

-	Layers:
	-	`sha256:b8719568ce89636290857940e52105079cab62c27fc9d5e20bfe21d720b81264`  
		Last Modified: Fri, 20 Nov 2026 03:35:00 GMT  
		Size: 55.4 MB (55394753 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9422fd2cb3f9450f40899cfa0efd3a1a5867f9ee394463d73a6e93a2c5d9fb0b`  
		Last Modified: Fri, 20 Nov 2026 03:34:56 GMT  
		Size: 27.7 KB (27655 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:latest` - linux; ppc64le

```console
$ docker pull odoo@sha256:d8f889ed048ea648051fef16375550c464c2e1f1dd805cfaa45532682a489e51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **822.1 MB (822093665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6eaf488ff028f4561ba9293c5059f34163a076c31df6e5cc394cd9baef35fbe6`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Tue, 10 Nov 2026 18:32:30 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:32:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:32:30 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:32:33 GMT
ADD file:9fc87f5d4993c1f29848a41be6f1c74d6ab81fed009749aa0f9d0206b6b19eb0 in / 
# Tue, 10 Nov 2026 18:32:34 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:47:47 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Fri, 20 Nov 2026 03:47:47 GMT
SHELL [/bin/bash -xo pipefail -c]
# Fri, 20 Nov 2026 03:47:47 GMT
ENV LANG=en_US.UTF-8
# Fri, 20 Nov 2026 03:47:47 GMT
ARG TARGETARCH=ppc64le
# Fri, 20 Nov 2026 03:47:47 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Fri, 20 Nov 2026 03:48:01 GMT
# ARGS: TARGETARCH=ppc64le
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:52:38 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:52:38 GMT
ENV ODOO_VERSION=20.0
# Fri, 20 Nov 2026 03:52:38 GMT
ARG ODOO_RELEASE=20261112
# Fri, 20 Nov 2026 03:52:38 GMT
ARG ODOO_SHA=9b69ffe4ebf8a4412b312d1f71494112d8410e12
# Fri, 20 Nov 2026 03:55:47 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261112 ODOO_SHA=9b69ffe4ebf8a4412b312d1f71494112d8410e12
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Fri, 20 Nov 2026 03:55:49 GMT
COPY ./entrypoint.sh / # buildkit
# Fri, 20 Nov 2026 03:55:50 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Fri, 20 Nov 2026 03:55:51 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261112 ODOO_SHA=9b69ffe4ebf8a4412b312d1f71494112d8410e12
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Fri, 20 Nov 2026 03:55:51 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Fri, 20 Nov 2026 03:55:51 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Fri, 20 Nov 2026 03:55:51 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Fri, 20 Nov 2026 03:55:51 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Fri, 20 Nov 2026 03:55:51 GMT
USER odoo
# Fri, 20 Nov 2026 03:55:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 20 Nov 2026 03:55:51 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:6c769a4f95bc536aae313c2bf7fcbf46e8cc18ed65fefad2a8ccfc1b5b7a63b4`  
		Last Modified: Tue, 10 Nov 2026 20:09:39 GMT  
		Size: 34.4 MB (34406239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09d23117909b1e154619850f663e5569eee5dbcc94f9ac42ebce205ced4b3216`  
		Last Modified: Fri, 20 Nov 2026 04:00:23 GMT  
		Size: 249.4 MB (249408577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92bbbe0bfdd20d044abe9826b7a10c9c8fec1fa7c0af70499d9c16ebac621942`  
		Last Modified: Fri, 20 Nov 2026 04:00:13 GMT  
		Size: 14.8 MB (14765235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d487da9837144c93790f88f70ddb5e7d4b836443f900d194bf0cb96b0c6b34b7`  
		Last Modified: Fri, 20 Nov 2026 04:00:11 GMT  
		Size: 881.0 KB (881010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a2098c41e6891a02baf68a3b6cb48a09a117b03ca8122d6b744753b9fc75fb5`  
		Last Modified: Fri, 20 Nov 2026 04:00:44 GMT  
		Size: 522.6 MB (522629831 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83448281777888afe986e33aa578010d1c32f739c6f89de9326b18c70b9ef448`  
		Last Modified: Fri, 20 Nov 2026 04:00:24 GMT  
		Size: 717.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fe9c5d4886ab550a1ccfaf7586b39933fb1f160b50f973c11a05560db4227cf`  
		Last Modified: Fri, 20 Nov 2026 04:00:25 GMT  
		Size: 567.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b9f6c592584e0e69a71ea2f34c1415a3b97d5714787ac946d986769c65bb8c4`  
		Last Modified: Fri, 20 Nov 2026 04:00:26 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2528515556b7f72a8745495f3b916e63202252227323874cb67cb1b905f4546`  
		Last Modified: Fri, 20 Nov 2026 04:00:28 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:latest` - unknown; unknown

```console
$ docker pull odoo@sha256:f1e7cebb29fad9f43370fff55b9f7a69646f9b52a94a25c6538423c8a4b924dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.4 MB (55423392 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7557d9a2d87c62294b59759e095677016cd81671c7e7a047ef505ef78d86537`

```dockerfile
```

-	Layers:
	-	`sha256:276ff97af83d2623ffc83d918bf108d6885e2f0839f9f8800c97d1687d282468`  
		Last Modified: Fri, 20 Nov 2026 04:00:30 GMT  
		Size: 55.4 MB (55395839 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9dace0516753f1c32e77e463906520ffb69ca69d6fba1236404c029cfb297d8f`  
		Last Modified: Fri, 20 Nov 2026 04:00:25 GMT  
		Size: 27.6 KB (27553 bytes)  
		MIME: application/vnd.in-toto+json
