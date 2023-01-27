<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `odoo`

-	[`odoo:14`](#odoo14)
-	[`odoo:14.0`](#odoo140)
-	[`odoo:15`](#odoo15)
-	[`odoo:15.0`](#odoo150)
-	[`odoo:16`](#odoo16)
-	[`odoo:16.0`](#odoo160)
-	[`odoo:latest`](#odoolatest)

## `odoo:14`

```console
$ docker pull odoo@sha256:e1c70d0309aefdc63f78450c5e2a8e0b0a94ec8bfc6567a14f22481aacbe59c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `odoo:14` - linux; amd64

```console
$ docker pull odoo@sha256:06913dae47ccc27ac7d8ad7659d59d2a9bc47a9a7c82acefa0cdeb6a20c47858
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **531.5 MB (531523023 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c15ce9c9b4e7ab932574f610c131129fbe6e8e367fa9b87f63ae9d365a749ffd`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Wed, 11 Jan 2023 02:35:07 GMT
ADD file:67ceb946e54c26c505b5f9f393d77befbd5e9b3b5c069ca301e314ecc74456b0 in / 
# Wed, 11 Jan 2023 02:35:07 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 06:57:34 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Wed, 11 Jan 2023 06:57:34 GMT
SHELL [/bin/bash -xo pipefail -c]
# Wed, 11 Jan 2023 06:57:34 GMT
ENV LANG=C.UTF-8
# Wed, 11 Jan 2023 06:59:13 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         npm         python3-num2words         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.5/wkhtmltox_0.12.5-1.buster_amd64.deb     && echo 'ea8277df4297afc507c61122f3c349af142f31e5 wkhtmltox.deb' | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb
# Wed, 11 Jan 2023 06:59:25 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ buster-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 06:59:27 GMT
RUN npm install -g rtlcss
# Wed, 11 Jan 2023 06:59:28 GMT
ENV ODOO_VERSION=14.0
# Wed, 11 Jan 2023 06:59:28 GMT
ARG ODOO_RELEASE=20230109
# Wed, 11 Jan 2023 06:59:28 GMT
ARG ODOO_SHA=ef9eef9a5e5bbeb455ac7d1c05cc675e74876609
# Wed, 11 Jan 2023 07:00:49 GMT
# ARGS: ODOO_RELEASE=20230109 ODOO_SHA=ef9eef9a5e5bbeb455ac7d1c05cc675e74876609
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb
# Wed, 11 Jan 2023 07:00:53 GMT
COPY file:cbe34bc5236465e4ed439e0c8f6504d2d221f79f7c70b37fe62b56662bd0ab6d in / 
# Wed, 11 Jan 2023 07:00:53 GMT
COPY file:1e7209cce5525d270c422815db614f496d4d0da4820de1ab0000e9e592223235 in /etc/odoo/ 
# Wed, 11 Jan 2023 07:00:53 GMT
# ARGS: ODOO_RELEASE=20230109 ODOO_SHA=ef9eef9a5e5bbeb455ac7d1c05cc675e74876609
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons
# Wed, 11 Jan 2023 07:00:54 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 11 Jan 2023 07:00:54 GMT
EXPOSE 8069 8071 8072
# Wed, 11 Jan 2023 07:00:54 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Wed, 11 Jan 2023 07:00:54 GMT
COPY file:0bc771c66dfeb517d19d13ea2699a0d3cbbbba684c8851640e6b87fe85b40619 in /usr/local/bin/wait-for-psql.py 
# Wed, 11 Jan 2023 07:00:54 GMT
USER odoo
# Wed, 11 Jan 2023 07:00:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 11 Jan 2023 07:00:54 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:548fcab5fe888f589dd092c68b813bfd65359878bd1950d6b753f749e82ebd7c`  
		Last Modified: Wed, 11 Jan 2023 02:39:48 GMT  
		Size: 27.1 MB (27140352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b28c0e09953cf9fbc79d6e93b5acef391268e3017e987caae38aecd4175292a3`  
		Last Modified: Wed, 11 Jan 2023 07:03:07 GMT  
		Size: 213.2 MB (213188007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87cd2f31c7147e61c38147defb008c0e060390d924a75506221fe6572127a505`  
		Last Modified: Wed, 11 Jan 2023 07:02:45 GMT  
		Size: 13.5 MB (13515320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:805325adf7adcce998df8d91233c147a6df858daa48cd3c71ed8456d0a04f509`  
		Last Modified: Wed, 11 Jan 2023 07:02:42 GMT  
		Size: 456.7 KB (456651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f98fa3cd18268c9daec6ffc7f60b6c409309c8f25a5568602a80c4d15574da64`  
		Last Modified: Wed, 11 Jan 2023 07:03:14 GMT  
		Size: 277.2 MB (277220228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64d094679a79ef653cb0759201c74f517732008340099be66b853017292bb468`  
		Last Modified: Wed, 11 Jan 2023 07:02:40 GMT  
		Size: 706.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dc54b01d740513fa4bd2fd3c90fe4655a5aa27be4caa5a9599a5ce88eec4df3`  
		Last Modified: Wed, 11 Jan 2023 07:02:40 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ab8e45831006c0e54789ea901a37949039b57e167abe8542fc1b585226895db`  
		Last Modified: Wed, 11 Jan 2023 07:02:40 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2fba4fa1553fa9b665e0799d38c2583e27d0b986818c37d2e862110b4b3cecb`  
		Last Modified: Wed, 11 Jan 2023 07:02:40 GMT  
		Size: 584.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:14.0`

```console
$ docker pull odoo@sha256:e1c70d0309aefdc63f78450c5e2a8e0b0a94ec8bfc6567a14f22481aacbe59c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `odoo:14.0` - linux; amd64

```console
$ docker pull odoo@sha256:06913dae47ccc27ac7d8ad7659d59d2a9bc47a9a7c82acefa0cdeb6a20c47858
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **531.5 MB (531523023 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c15ce9c9b4e7ab932574f610c131129fbe6e8e367fa9b87f63ae9d365a749ffd`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Wed, 11 Jan 2023 02:35:07 GMT
ADD file:67ceb946e54c26c505b5f9f393d77befbd5e9b3b5c069ca301e314ecc74456b0 in / 
# Wed, 11 Jan 2023 02:35:07 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 06:57:34 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Wed, 11 Jan 2023 06:57:34 GMT
SHELL [/bin/bash -xo pipefail -c]
# Wed, 11 Jan 2023 06:57:34 GMT
ENV LANG=C.UTF-8
# Wed, 11 Jan 2023 06:59:13 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         npm         python3-num2words         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.5/wkhtmltox_0.12.5-1.buster_amd64.deb     && echo 'ea8277df4297afc507c61122f3c349af142f31e5 wkhtmltox.deb' | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb
# Wed, 11 Jan 2023 06:59:25 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ buster-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 06:59:27 GMT
RUN npm install -g rtlcss
# Wed, 11 Jan 2023 06:59:28 GMT
ENV ODOO_VERSION=14.0
# Wed, 11 Jan 2023 06:59:28 GMT
ARG ODOO_RELEASE=20230109
# Wed, 11 Jan 2023 06:59:28 GMT
ARG ODOO_SHA=ef9eef9a5e5bbeb455ac7d1c05cc675e74876609
# Wed, 11 Jan 2023 07:00:49 GMT
# ARGS: ODOO_RELEASE=20230109 ODOO_SHA=ef9eef9a5e5bbeb455ac7d1c05cc675e74876609
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb
# Wed, 11 Jan 2023 07:00:53 GMT
COPY file:cbe34bc5236465e4ed439e0c8f6504d2d221f79f7c70b37fe62b56662bd0ab6d in / 
# Wed, 11 Jan 2023 07:00:53 GMT
COPY file:1e7209cce5525d270c422815db614f496d4d0da4820de1ab0000e9e592223235 in /etc/odoo/ 
# Wed, 11 Jan 2023 07:00:53 GMT
# ARGS: ODOO_RELEASE=20230109 ODOO_SHA=ef9eef9a5e5bbeb455ac7d1c05cc675e74876609
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons
# Wed, 11 Jan 2023 07:00:54 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 11 Jan 2023 07:00:54 GMT
EXPOSE 8069 8071 8072
# Wed, 11 Jan 2023 07:00:54 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Wed, 11 Jan 2023 07:00:54 GMT
COPY file:0bc771c66dfeb517d19d13ea2699a0d3cbbbba684c8851640e6b87fe85b40619 in /usr/local/bin/wait-for-psql.py 
# Wed, 11 Jan 2023 07:00:54 GMT
USER odoo
# Wed, 11 Jan 2023 07:00:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 11 Jan 2023 07:00:54 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:548fcab5fe888f589dd092c68b813bfd65359878bd1950d6b753f749e82ebd7c`  
		Last Modified: Wed, 11 Jan 2023 02:39:48 GMT  
		Size: 27.1 MB (27140352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b28c0e09953cf9fbc79d6e93b5acef391268e3017e987caae38aecd4175292a3`  
		Last Modified: Wed, 11 Jan 2023 07:03:07 GMT  
		Size: 213.2 MB (213188007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87cd2f31c7147e61c38147defb008c0e060390d924a75506221fe6572127a505`  
		Last Modified: Wed, 11 Jan 2023 07:02:45 GMT  
		Size: 13.5 MB (13515320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:805325adf7adcce998df8d91233c147a6df858daa48cd3c71ed8456d0a04f509`  
		Last Modified: Wed, 11 Jan 2023 07:02:42 GMT  
		Size: 456.7 KB (456651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f98fa3cd18268c9daec6ffc7f60b6c409309c8f25a5568602a80c4d15574da64`  
		Last Modified: Wed, 11 Jan 2023 07:03:14 GMT  
		Size: 277.2 MB (277220228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64d094679a79ef653cb0759201c74f517732008340099be66b853017292bb468`  
		Last Modified: Wed, 11 Jan 2023 07:02:40 GMT  
		Size: 706.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dc54b01d740513fa4bd2fd3c90fe4655a5aa27be4caa5a9599a5ce88eec4df3`  
		Last Modified: Wed, 11 Jan 2023 07:02:40 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ab8e45831006c0e54789ea901a37949039b57e167abe8542fc1b585226895db`  
		Last Modified: Wed, 11 Jan 2023 07:02:40 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2fba4fa1553fa9b665e0799d38c2583e27d0b986818c37d2e862110b4b3cecb`  
		Last Modified: Wed, 11 Jan 2023 07:02:40 GMT  
		Size: 584.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:15`

```console
$ docker pull odoo@sha256:682c093091620aaafa21ed9c2eff565b5eafaaf033c777a80cd286ffc2503e6e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `odoo:15` - linux; amd64

```console
$ docker pull odoo@sha256:5331d720246dc6f63593331476ddee6c719ea7e7c2887ced8d40611ce68cddb6
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **559.7 MB (559714776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:589b99045a1991bcaf460ed277e1a4c84a25c197b1f21356a740de121c1bfa7e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Wed, 11 Jan 2023 02:34:44 GMT
ADD file:e2398d0bf516084b2b37ba1bb76b86d56e66999831df692461679fbd6a5d8eb6 in / 
# Wed, 11 Jan 2023 02:34:44 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 06:52:32 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Wed, 11 Jan 2023 06:52:33 GMT
SHELL [/bin/bash -xo pipefail -c]
# Wed, 11 Jan 2023 06:52:33 GMT
ENV LANG=C.UTF-8
# Wed, 11 Jan 2023 06:53:52 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         npm         python3-num2words         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.5/wkhtmltox_0.12.5-1.buster_amd64.deb     && echo 'ea8277df4297afc507c61122f3c349af142f31e5 wkhtmltox.deb' | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb
# Wed, 11 Jan 2023 06:54:02 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ bullseye-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 06:54:03 GMT
RUN npm install -g rtlcss
# Wed, 11 Jan 2023 06:55:55 GMT
ENV ODOO_VERSION=15.0
# Wed, 11 Jan 2023 06:55:56 GMT
ARG ODOO_RELEASE=20230109
# Wed, 11 Jan 2023 06:55:56 GMT
ARG ODOO_SHA=618e45490616f63dfb68077523c2971cbb6cdda7
# Wed, 11 Jan 2023 06:57:12 GMT
# ARGS: ODOO_RELEASE=20230109 ODOO_SHA=618e45490616f63dfb68077523c2971cbb6cdda7
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb
# Wed, 11 Jan 2023 06:57:16 GMT
COPY file:cbe34bc5236465e4ed439e0c8f6504d2d221f79f7c70b37fe62b56662bd0ab6d in / 
# Wed, 11 Jan 2023 06:57:16 GMT
COPY file:1e7209cce5525d270c422815db614f496d4d0da4820de1ab0000e9e592223235 in /etc/odoo/ 
# Wed, 11 Jan 2023 06:57:17 GMT
# ARGS: ODOO_RELEASE=20230109 ODOO_SHA=618e45490616f63dfb68077523c2971cbb6cdda7
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons
# Wed, 11 Jan 2023 06:57:17 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 11 Jan 2023 06:57:17 GMT
EXPOSE 8069 8071 8072
# Wed, 11 Jan 2023 06:57:17 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Wed, 11 Jan 2023 06:57:17 GMT
COPY file:0bc771c66dfeb517d19d13ea2699a0d3cbbbba684c8851640e6b87fe85b40619 in /usr/local/bin/wait-for-psql.py 
# Wed, 11 Jan 2023 06:57:17 GMT
USER odoo
# Wed, 11 Jan 2023 06:57:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 11 Jan 2023 06:57:17 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:8740c948ffd4c816ea7ca963f99ca52f4788baa23f228da9581a9ea2edd3fcd7`  
		Last Modified: Wed, 11 Jan 2023 02:39:07 GMT  
		Size: 31.4 MB (31396972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdbab7e66e15ffe2e790ce2c8f6b704f96fd6c814408225be817d8d1d36eb18f`  
		Last Modified: Wed, 11 Jan 2023 07:01:35 GMT  
		Size: 220.3 MB (220297424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e1eefc77c2c1e5777b752a9ebddcd192799b046447d3287b814cbc70ffe93d9`  
		Last Modified: Wed, 11 Jan 2023 07:01:09 GMT  
		Size: 2.6 MB (2573914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ddc6425fcf050291c390913ceec3ab368ced9b688188dcf13f8d8b76c58d8e0`  
		Last Modified: Wed, 11 Jan 2023 07:01:09 GMT  
		Size: 452.1 KB (452141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfa9ff2dafbaad392a5adaf61b1f2ffe07e5ab51ad0247ecf8b7cdf69719c53a`  
		Last Modified: Wed, 11 Jan 2023 07:02:32 GMT  
		Size: 305.0 MB (304991858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e1005d25cab3399a9cb9f3dd1cae3a4ce028df6f828eece96588c338c5fe8a1`  
		Last Modified: Wed, 11 Jan 2023 07:01:56 GMT  
		Size: 706.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33779df262248978e5d0f6a78bad8cbab20e990d4b36ca6728ce8790cc9912a9`  
		Last Modified: Wed, 11 Jan 2023 07:01:56 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4b2300b48bad5f0baa9137b8dd5fc9614ce4031205b2c685879f8b042cfc5ab`  
		Last Modified: Wed, 11 Jan 2023 07:01:56 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c376d1b85c64ba58bce300d6fcc470d0b2272e1a4fb4068287a7864df054e8f5`  
		Last Modified: Wed, 11 Jan 2023 07:01:56 GMT  
		Size: 583.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:15.0`

```console
$ docker pull odoo@sha256:682c093091620aaafa21ed9c2eff565b5eafaaf033c777a80cd286ffc2503e6e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `odoo:15.0` - linux; amd64

```console
$ docker pull odoo@sha256:5331d720246dc6f63593331476ddee6c719ea7e7c2887ced8d40611ce68cddb6
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **559.7 MB (559714776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:589b99045a1991bcaf460ed277e1a4c84a25c197b1f21356a740de121c1bfa7e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Wed, 11 Jan 2023 02:34:44 GMT
ADD file:e2398d0bf516084b2b37ba1bb76b86d56e66999831df692461679fbd6a5d8eb6 in / 
# Wed, 11 Jan 2023 02:34:44 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 06:52:32 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Wed, 11 Jan 2023 06:52:33 GMT
SHELL [/bin/bash -xo pipefail -c]
# Wed, 11 Jan 2023 06:52:33 GMT
ENV LANG=C.UTF-8
# Wed, 11 Jan 2023 06:53:52 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         npm         python3-num2words         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.5/wkhtmltox_0.12.5-1.buster_amd64.deb     && echo 'ea8277df4297afc507c61122f3c349af142f31e5 wkhtmltox.deb' | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb
# Wed, 11 Jan 2023 06:54:02 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ bullseye-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 06:54:03 GMT
RUN npm install -g rtlcss
# Wed, 11 Jan 2023 06:55:55 GMT
ENV ODOO_VERSION=15.0
# Wed, 11 Jan 2023 06:55:56 GMT
ARG ODOO_RELEASE=20230109
# Wed, 11 Jan 2023 06:55:56 GMT
ARG ODOO_SHA=618e45490616f63dfb68077523c2971cbb6cdda7
# Wed, 11 Jan 2023 06:57:12 GMT
# ARGS: ODOO_RELEASE=20230109 ODOO_SHA=618e45490616f63dfb68077523c2971cbb6cdda7
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb
# Wed, 11 Jan 2023 06:57:16 GMT
COPY file:cbe34bc5236465e4ed439e0c8f6504d2d221f79f7c70b37fe62b56662bd0ab6d in / 
# Wed, 11 Jan 2023 06:57:16 GMT
COPY file:1e7209cce5525d270c422815db614f496d4d0da4820de1ab0000e9e592223235 in /etc/odoo/ 
# Wed, 11 Jan 2023 06:57:17 GMT
# ARGS: ODOO_RELEASE=20230109 ODOO_SHA=618e45490616f63dfb68077523c2971cbb6cdda7
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons
# Wed, 11 Jan 2023 06:57:17 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 11 Jan 2023 06:57:17 GMT
EXPOSE 8069 8071 8072
# Wed, 11 Jan 2023 06:57:17 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Wed, 11 Jan 2023 06:57:17 GMT
COPY file:0bc771c66dfeb517d19d13ea2699a0d3cbbbba684c8851640e6b87fe85b40619 in /usr/local/bin/wait-for-psql.py 
# Wed, 11 Jan 2023 06:57:17 GMT
USER odoo
# Wed, 11 Jan 2023 06:57:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 11 Jan 2023 06:57:17 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:8740c948ffd4c816ea7ca963f99ca52f4788baa23f228da9581a9ea2edd3fcd7`  
		Last Modified: Wed, 11 Jan 2023 02:39:07 GMT  
		Size: 31.4 MB (31396972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdbab7e66e15ffe2e790ce2c8f6b704f96fd6c814408225be817d8d1d36eb18f`  
		Last Modified: Wed, 11 Jan 2023 07:01:35 GMT  
		Size: 220.3 MB (220297424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e1eefc77c2c1e5777b752a9ebddcd192799b046447d3287b814cbc70ffe93d9`  
		Last Modified: Wed, 11 Jan 2023 07:01:09 GMT  
		Size: 2.6 MB (2573914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ddc6425fcf050291c390913ceec3ab368ced9b688188dcf13f8d8b76c58d8e0`  
		Last Modified: Wed, 11 Jan 2023 07:01:09 GMT  
		Size: 452.1 KB (452141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfa9ff2dafbaad392a5adaf61b1f2ffe07e5ab51ad0247ecf8b7cdf69719c53a`  
		Last Modified: Wed, 11 Jan 2023 07:02:32 GMT  
		Size: 305.0 MB (304991858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e1005d25cab3399a9cb9f3dd1cae3a4ce028df6f828eece96588c338c5fe8a1`  
		Last Modified: Wed, 11 Jan 2023 07:01:56 GMT  
		Size: 706.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33779df262248978e5d0f6a78bad8cbab20e990d4b36ca6728ce8790cc9912a9`  
		Last Modified: Wed, 11 Jan 2023 07:01:56 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4b2300b48bad5f0baa9137b8dd5fc9614ce4031205b2c685879f8b042cfc5ab`  
		Last Modified: Wed, 11 Jan 2023 07:01:56 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c376d1b85c64ba58bce300d6fcc470d0b2272e1a4fb4068287a7864df054e8f5`  
		Last Modified: Wed, 11 Jan 2023 07:01:56 GMT  
		Size: 583.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:16`

```console
$ docker pull odoo@sha256:f46ca3b6b1d884a6cf931da9d860b6ecbef18a5121c833caad1bc87034d2362d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `odoo:16` - linux; amd64

```console
$ docker pull odoo@sha256:5d86d8defc15d2375323a9d9b71232534cbe9c1c987cbe9553350fbd033971b3
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **566.2 MB (566179870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42549b282e79c7e371468ee93d8b99ff2d674e244ee04011b40d89fd10dd7607`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Wed, 11 Jan 2023 02:34:44 GMT
ADD file:e2398d0bf516084b2b37ba1bb76b86d56e66999831df692461679fbd6a5d8eb6 in / 
# Wed, 11 Jan 2023 02:34:44 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 06:52:32 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Wed, 11 Jan 2023 06:52:33 GMT
SHELL [/bin/bash -xo pipefail -c]
# Wed, 11 Jan 2023 06:52:33 GMT
ENV LANG=C.UTF-8
# Wed, 11 Jan 2023 06:53:52 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         npm         python3-num2words         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.5/wkhtmltox_0.12.5-1.buster_amd64.deb     && echo 'ea8277df4297afc507c61122f3c349af142f31e5 wkhtmltox.deb' | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb
# Wed, 11 Jan 2023 06:54:02 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ bullseye-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 06:54:03 GMT
RUN npm install -g rtlcss
# Wed, 11 Jan 2023 06:54:04 GMT
ENV ODOO_VERSION=16.0
# Wed, 11 Jan 2023 06:54:04 GMT
ARG ODOO_RELEASE=20230109
# Wed, 11 Jan 2023 06:54:04 GMT
ARG ODOO_SHA=884bf72c7318835b9ac56be2594032cbba7b8c7b
# Wed, 11 Jan 2023 06:55:36 GMT
# ARGS: ODOO_RELEASE=20230109 ODOO_SHA=884bf72c7318835b9ac56be2594032cbba7b8c7b
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb
# Wed, 11 Jan 2023 06:55:41 GMT
COPY file:cbe34bc5236465e4ed439e0c8f6504d2d221f79f7c70b37fe62b56662bd0ab6d in / 
# Wed, 11 Jan 2023 06:55:41 GMT
COPY file:1e7209cce5525d270c422815db614f496d4d0da4820de1ab0000e9e592223235 in /etc/odoo/ 
# Wed, 11 Jan 2023 06:55:42 GMT
# ARGS: ODOO_RELEASE=20230109 ODOO_SHA=884bf72c7318835b9ac56be2594032cbba7b8c7b
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons
# Wed, 11 Jan 2023 06:55:42 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 11 Jan 2023 06:55:42 GMT
EXPOSE 8069 8071 8072
# Wed, 11 Jan 2023 06:55:42 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Wed, 11 Jan 2023 06:55:42 GMT
COPY file:0bc771c66dfeb517d19d13ea2699a0d3cbbbba684c8851640e6b87fe85b40619 in /usr/local/bin/wait-for-psql.py 
# Wed, 11 Jan 2023 06:55:42 GMT
USER odoo
# Wed, 11 Jan 2023 06:55:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 11 Jan 2023 06:55:42 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:8740c948ffd4c816ea7ca963f99ca52f4788baa23f228da9581a9ea2edd3fcd7`  
		Last Modified: Wed, 11 Jan 2023 02:39:07 GMT  
		Size: 31.4 MB (31396972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdbab7e66e15ffe2e790ce2c8f6b704f96fd6c814408225be817d8d1d36eb18f`  
		Last Modified: Wed, 11 Jan 2023 07:01:35 GMT  
		Size: 220.3 MB (220297424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e1eefc77c2c1e5777b752a9ebddcd192799b046447d3287b814cbc70ffe93d9`  
		Last Modified: Wed, 11 Jan 2023 07:01:09 GMT  
		Size: 2.6 MB (2573914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ddc6425fcf050291c390913ceec3ab368ced9b688188dcf13f8d8b76c58d8e0`  
		Last Modified: Wed, 11 Jan 2023 07:01:09 GMT  
		Size: 452.1 KB (452141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f036960caac9dafe462a1e471906a623a7cf35b7824ee16a68aa99df59a5be4`  
		Last Modified: Wed, 11 Jan 2023 07:01:46 GMT  
		Size: 311.5 MB (311456957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e02d7f45856501a1e71fd0214c4a553170b603768f49739d4d07d0efa6eaf0a9`  
		Last Modified: Wed, 11 Jan 2023 07:01:07 GMT  
		Size: 706.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfc0d60743f64ea95bafc7bdefdb3d8c00be5b863eabdd55fe6372c44d67e99f`  
		Last Modified: Wed, 11 Jan 2023 07:01:07 GMT  
		Size: 553.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29f60b437a4202e92973d10c1ea22a498c7eb7ec86ba8b181ca57b65d0f2f595`  
		Last Modified: Wed, 11 Jan 2023 07:01:07 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34d9921b8b19195f924933266911ccc5457c08cef99a2c58d86a1bc1dc886e08`  
		Last Modified: Wed, 11 Jan 2023 07:01:07 GMT  
		Size: 583.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:16.0`

```console
$ docker pull odoo@sha256:f46ca3b6b1d884a6cf931da9d860b6ecbef18a5121c833caad1bc87034d2362d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `odoo:16.0` - linux; amd64

```console
$ docker pull odoo@sha256:5d86d8defc15d2375323a9d9b71232534cbe9c1c987cbe9553350fbd033971b3
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **566.2 MB (566179870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42549b282e79c7e371468ee93d8b99ff2d674e244ee04011b40d89fd10dd7607`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Wed, 11 Jan 2023 02:34:44 GMT
ADD file:e2398d0bf516084b2b37ba1bb76b86d56e66999831df692461679fbd6a5d8eb6 in / 
# Wed, 11 Jan 2023 02:34:44 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 06:52:32 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Wed, 11 Jan 2023 06:52:33 GMT
SHELL [/bin/bash -xo pipefail -c]
# Wed, 11 Jan 2023 06:52:33 GMT
ENV LANG=C.UTF-8
# Wed, 11 Jan 2023 06:53:52 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         npm         python3-num2words         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.5/wkhtmltox_0.12.5-1.buster_amd64.deb     && echo 'ea8277df4297afc507c61122f3c349af142f31e5 wkhtmltox.deb' | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb
# Wed, 11 Jan 2023 06:54:02 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ bullseye-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 06:54:03 GMT
RUN npm install -g rtlcss
# Wed, 11 Jan 2023 06:54:04 GMT
ENV ODOO_VERSION=16.0
# Wed, 11 Jan 2023 06:54:04 GMT
ARG ODOO_RELEASE=20230109
# Wed, 11 Jan 2023 06:54:04 GMT
ARG ODOO_SHA=884bf72c7318835b9ac56be2594032cbba7b8c7b
# Wed, 11 Jan 2023 06:55:36 GMT
# ARGS: ODOO_RELEASE=20230109 ODOO_SHA=884bf72c7318835b9ac56be2594032cbba7b8c7b
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb
# Wed, 11 Jan 2023 06:55:41 GMT
COPY file:cbe34bc5236465e4ed439e0c8f6504d2d221f79f7c70b37fe62b56662bd0ab6d in / 
# Wed, 11 Jan 2023 06:55:41 GMT
COPY file:1e7209cce5525d270c422815db614f496d4d0da4820de1ab0000e9e592223235 in /etc/odoo/ 
# Wed, 11 Jan 2023 06:55:42 GMT
# ARGS: ODOO_RELEASE=20230109 ODOO_SHA=884bf72c7318835b9ac56be2594032cbba7b8c7b
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons
# Wed, 11 Jan 2023 06:55:42 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 11 Jan 2023 06:55:42 GMT
EXPOSE 8069 8071 8072
# Wed, 11 Jan 2023 06:55:42 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Wed, 11 Jan 2023 06:55:42 GMT
COPY file:0bc771c66dfeb517d19d13ea2699a0d3cbbbba684c8851640e6b87fe85b40619 in /usr/local/bin/wait-for-psql.py 
# Wed, 11 Jan 2023 06:55:42 GMT
USER odoo
# Wed, 11 Jan 2023 06:55:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 11 Jan 2023 06:55:42 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:8740c948ffd4c816ea7ca963f99ca52f4788baa23f228da9581a9ea2edd3fcd7`  
		Last Modified: Wed, 11 Jan 2023 02:39:07 GMT  
		Size: 31.4 MB (31396972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdbab7e66e15ffe2e790ce2c8f6b704f96fd6c814408225be817d8d1d36eb18f`  
		Last Modified: Wed, 11 Jan 2023 07:01:35 GMT  
		Size: 220.3 MB (220297424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e1eefc77c2c1e5777b752a9ebddcd192799b046447d3287b814cbc70ffe93d9`  
		Last Modified: Wed, 11 Jan 2023 07:01:09 GMT  
		Size: 2.6 MB (2573914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ddc6425fcf050291c390913ceec3ab368ced9b688188dcf13f8d8b76c58d8e0`  
		Last Modified: Wed, 11 Jan 2023 07:01:09 GMT  
		Size: 452.1 KB (452141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f036960caac9dafe462a1e471906a623a7cf35b7824ee16a68aa99df59a5be4`  
		Last Modified: Wed, 11 Jan 2023 07:01:46 GMT  
		Size: 311.5 MB (311456957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e02d7f45856501a1e71fd0214c4a553170b603768f49739d4d07d0efa6eaf0a9`  
		Last Modified: Wed, 11 Jan 2023 07:01:07 GMT  
		Size: 706.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfc0d60743f64ea95bafc7bdefdb3d8c00be5b863eabdd55fe6372c44d67e99f`  
		Last Modified: Wed, 11 Jan 2023 07:01:07 GMT  
		Size: 553.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29f60b437a4202e92973d10c1ea22a498c7eb7ec86ba8b181ca57b65d0f2f595`  
		Last Modified: Wed, 11 Jan 2023 07:01:07 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34d9921b8b19195f924933266911ccc5457c08cef99a2c58d86a1bc1dc886e08`  
		Last Modified: Wed, 11 Jan 2023 07:01:07 GMT  
		Size: 583.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:latest`

```console
$ docker pull odoo@sha256:f46ca3b6b1d884a6cf931da9d860b6ecbef18a5121c833caad1bc87034d2362d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `odoo:latest` - linux; amd64

```console
$ docker pull odoo@sha256:5d86d8defc15d2375323a9d9b71232534cbe9c1c987cbe9553350fbd033971b3
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **566.2 MB (566179870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42549b282e79c7e371468ee93d8b99ff2d674e244ee04011b40d89fd10dd7607`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`
-	`SHELL`: `["\/bin\/bash","-xo","pipefail","-c"]`

```dockerfile
# Wed, 11 Jan 2023 02:34:44 GMT
ADD file:e2398d0bf516084b2b37ba1bb76b86d56e66999831df692461679fbd6a5d8eb6 in / 
# Wed, 11 Jan 2023 02:34:44 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 06:52:32 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Wed, 11 Jan 2023 06:52:33 GMT
SHELL [/bin/bash -xo pipefail -c]
# Wed, 11 Jan 2023 06:52:33 GMT
ENV LANG=C.UTF-8
# Wed, 11 Jan 2023 06:53:52 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         npm         python3-num2words         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.5/wkhtmltox_0.12.5-1.buster_amd64.deb     && echo 'ea8277df4297afc507c61122f3c349af142f31e5 wkhtmltox.deb' | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb
# Wed, 11 Jan 2023 06:54:02 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ bullseye-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 06:54:03 GMT
RUN npm install -g rtlcss
# Wed, 11 Jan 2023 06:54:04 GMT
ENV ODOO_VERSION=16.0
# Wed, 11 Jan 2023 06:54:04 GMT
ARG ODOO_RELEASE=20230109
# Wed, 11 Jan 2023 06:54:04 GMT
ARG ODOO_SHA=884bf72c7318835b9ac56be2594032cbba7b8c7b
# Wed, 11 Jan 2023 06:55:36 GMT
# ARGS: ODOO_RELEASE=20230109 ODOO_SHA=884bf72c7318835b9ac56be2594032cbba7b8c7b
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb
# Wed, 11 Jan 2023 06:55:41 GMT
COPY file:cbe34bc5236465e4ed439e0c8f6504d2d221f79f7c70b37fe62b56662bd0ab6d in / 
# Wed, 11 Jan 2023 06:55:41 GMT
COPY file:1e7209cce5525d270c422815db614f496d4d0da4820de1ab0000e9e592223235 in /etc/odoo/ 
# Wed, 11 Jan 2023 06:55:42 GMT
# ARGS: ODOO_RELEASE=20230109 ODOO_SHA=884bf72c7318835b9ac56be2594032cbba7b8c7b
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons
# Wed, 11 Jan 2023 06:55:42 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 11 Jan 2023 06:55:42 GMT
EXPOSE 8069 8071 8072
# Wed, 11 Jan 2023 06:55:42 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Wed, 11 Jan 2023 06:55:42 GMT
COPY file:0bc771c66dfeb517d19d13ea2699a0d3cbbbba684c8851640e6b87fe85b40619 in /usr/local/bin/wait-for-psql.py 
# Wed, 11 Jan 2023 06:55:42 GMT
USER odoo
# Wed, 11 Jan 2023 06:55:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 11 Jan 2023 06:55:42 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:8740c948ffd4c816ea7ca963f99ca52f4788baa23f228da9581a9ea2edd3fcd7`  
		Last Modified: Wed, 11 Jan 2023 02:39:07 GMT  
		Size: 31.4 MB (31396972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdbab7e66e15ffe2e790ce2c8f6b704f96fd6c814408225be817d8d1d36eb18f`  
		Last Modified: Wed, 11 Jan 2023 07:01:35 GMT  
		Size: 220.3 MB (220297424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e1eefc77c2c1e5777b752a9ebddcd192799b046447d3287b814cbc70ffe93d9`  
		Last Modified: Wed, 11 Jan 2023 07:01:09 GMT  
		Size: 2.6 MB (2573914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ddc6425fcf050291c390913ceec3ab368ced9b688188dcf13f8d8b76c58d8e0`  
		Last Modified: Wed, 11 Jan 2023 07:01:09 GMT  
		Size: 452.1 KB (452141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f036960caac9dafe462a1e471906a623a7cf35b7824ee16a68aa99df59a5be4`  
		Last Modified: Wed, 11 Jan 2023 07:01:46 GMT  
		Size: 311.5 MB (311456957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e02d7f45856501a1e71fd0214c4a553170b603768f49739d4d07d0efa6eaf0a9`  
		Last Modified: Wed, 11 Jan 2023 07:01:07 GMT  
		Size: 706.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfc0d60743f64ea95bafc7bdefdb3d8c00be5b863eabdd55fe6372c44d67e99f`  
		Last Modified: Wed, 11 Jan 2023 07:01:07 GMT  
		Size: 553.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29f60b437a4202e92973d10c1ea22a498c7eb7ec86ba8b181ca57b65d0f2f595`  
		Last Modified: Wed, 11 Jan 2023 07:01:07 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34d9921b8b19195f924933266911ccc5457c08cef99a2c58d86a1bc1dc886e08`  
		Last Modified: Wed, 11 Jan 2023 07:01:07 GMT  
		Size: 583.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
