<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `odoo`

-	[`odoo:18`](#odoo18)
-	[`odoo:18.0`](#odoo180)
-	[`odoo:18.0-20261102`](#odoo180-20261102)
-	[`odoo:19`](#odoo19)
-	[`odoo:19.0`](#odoo190)
-	[`odoo:19.0-20261102`](#odoo190-20261102)
-	[`odoo:20`](#odoo20)
-	[`odoo:20.0`](#odoo200)
-	[`odoo:20.0-20261102`](#odoo200-20261102)
-	[`odoo:latest`](#odoolatest)

## `odoo:18`

```console
$ docker pull odoo@sha256:f61d3e36eb699e63557bbcdf4d7bd659e51418c326009e6574565d87e1d9026d
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
$ docker pull odoo@sha256:62494eed4f2ba93a5aeb7b443992e0f4d135c80b90b9a72b46239b7d2c9add37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **675.8 MB (675800490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4bed941c6a7b5db3e0d61252c92f0a0e1c2fd06ecdad8bc72525f948f9a56ac`
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
# Tue, 03 Nov 2026 00:17:24 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 03 Nov 2026 00:17:24 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 03 Nov 2026 00:17:24 GMT
ENV LANG=en_US.UTF-8
# Tue, 03 Nov 2026 00:17:24 GMT
ARG TARGETARCH=amd64
# Tue, 03 Nov 2026 00:17:24 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 03 Nov 2026 00:17:34 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:18:44 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:18:44 GMT
ENV ODOO_VERSION=18.0
# Tue, 03 Nov 2026 00:18:44 GMT
ARG ODOO_RELEASE=20261102
# Tue, 03 Nov 2026 00:18:44 GMT
ARG ODOO_SHA=349c907ea772231b39859c6e6a13093587860861
# Tue, 03 Nov 2026 00:19:39 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261102 ODOO_SHA=349c907ea772231b39859c6e6a13093587860861
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 03 Nov 2026 00:19:39 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 03 Nov 2026 00:19:39 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 03 Nov 2026 00:19:39 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261102 ODOO_SHA=349c907ea772231b39859c6e6a13093587860861
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 03 Nov 2026 00:19:39 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 03 Nov 2026 00:19:39 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 03 Nov 2026 00:19:39 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 03 Nov 2026 00:19:39 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 03 Nov 2026 00:19:39 GMT
USER odoo
# Tue, 03 Nov 2026 00:19:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 03 Nov 2026 00:19:39 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5eb36f76f306a85cf366392b0b2ccabff429e0fb276f686765408c3ffe338825`  
		Last Modified: Tue, 03 Nov 2026 00:21:12 GMT  
		Size: 238.7 MB (238714757 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c1eea53ff0c098e61c3d471f860d3309d0f007de7e2c227748c8b7a815d81cb`  
		Last Modified: Tue, 03 Nov 2026 00:21:04 GMT  
		Size: 14.2 MB (14226170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24d4d8f31eee95b3586c9edf5d9ea842ffeaeb97c0c36cbe45c15d49fa968555`  
		Last Modified: Tue, 03 Nov 2026 00:21:03 GMT  
		Size: 873.9 KB (873901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b8ddbf2385da467409357332133ce0081a3ba8bcfb7f0643ab89e30c54f1187`  
		Last Modified: Tue, 03 Nov 2026 00:21:14 GMT  
		Size: 392.2 MB (392215253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9dfe111c4325c11ece1918bafc63d7f539f88b8b359334199e7e81be4ef4ab52`  
		Last Modified: Tue, 03 Nov 2026 00:21:04 GMT  
		Size: 766.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:123d5ee1028fbf5d41cebca8a9ad9f01ba4cbfcd08a1450ec085e8cdede6b141`  
		Last Modified: Tue, 03 Nov 2026 00:21:05 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77ae0c5b70a45c6140f8e1f6d58fd0a6be9687f148d47ace09aee7783d966f32`  
		Last Modified: Tue, 03 Nov 2026 00:21:06 GMT  
		Size: 595.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb4e23081cc8727c34ea47e552784ad70c6a3041c07f7be0e98a27fad2171c17`  
		Last Modified: Tue, 03 Nov 2026 00:21:06 GMT  
		Size: 880.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18` - unknown; unknown

```console
$ docker pull odoo@sha256:5a2998faa715344a83495814ec35807dd5af37a51156f3baea24f2a7a089ce57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.0 MB (44005400 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a138f434f36bc930379d6fe14de38fe818b70e207580d4fb6d0e4c6c474c59d`

```dockerfile
```

-	Layers:
	-	`sha256:1f92a19975b8ff05e9c1a761dea52cb5c4f7ac9f356ae3ba5c189a68a9642136`  
		Last Modified: Tue, 03 Nov 2026 00:21:06 GMT  
		Size: 44.0 MB (43978204 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1b582979420e812f69eb5885fed1a72bc3c8a684a828515862bd9455e66f3d51`  
		Last Modified: Tue, 03 Nov 2026 00:21:03 GMT  
		Size: 27.2 KB (27196 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:18` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:77f73c0c436b08d826338e830c190b5c2991ad8659f8f41fd3b0a204325ff350
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **672.3 MB (672269692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa2260df78ed931998e2ccc6b8e9804f65f926041367f89a588ec17a7c81cfd4`
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
# Tue, 03 Nov 2026 00:17:44 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 03 Nov 2026 00:17:44 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 03 Nov 2026 00:17:44 GMT
ENV LANG=en_US.UTF-8
# Tue, 03 Nov 2026 00:17:44 GMT
ARG TARGETARCH=arm64
# Tue, 03 Nov 2026 00:17:44 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 03 Nov 2026 00:17:54 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:18:58 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:18:58 GMT
ENV ODOO_VERSION=18.0
# Tue, 03 Nov 2026 00:18:58 GMT
ARG ODOO_RELEASE=20261102
# Tue, 03 Nov 2026 00:18:58 GMT
ARG ODOO_SHA=349c907ea772231b39859c6e6a13093587860861
# Tue, 03 Nov 2026 00:20:01 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261102 ODOO_SHA=349c907ea772231b39859c6e6a13093587860861
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 03 Nov 2026 00:20:01 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 03 Nov 2026 00:20:01 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 03 Nov 2026 00:20:01 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261102 ODOO_SHA=349c907ea772231b39859c6e6a13093587860861
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 03 Nov 2026 00:20:01 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 03 Nov 2026 00:20:01 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 03 Nov 2026 00:20:01 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 03 Nov 2026 00:20:02 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 03 Nov 2026 00:20:02 GMT
USER odoo
# Tue, 03 Nov 2026 00:20:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 03 Nov 2026 00:20:02 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:e2d2bb84d02254f4be480ca3c62f94fc12ac959c11b3ce5bd7da3f411b2b9607`  
		Last Modified: Sun, 25 Oct 2026 14:50:12 GMT  
		Size: 28.9 MB (28940126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39c8f7af14211baa2686ece7fde8052e472a37c9cea840c5bb28758822a37b8b`  
		Last Modified: Tue, 03 Nov 2026 00:21:38 GMT  
		Size: 236.2 MB (236179135 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56d7d0aa2407d479c6f6e970680ea1e2b7a43052c4e68704e8124e4b4c21299f`  
		Last Modified: Tue, 03 Nov 2026 00:21:31 GMT  
		Size: 14.2 MB (14197428 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ed75218a7f2518063d54d25d66793b03c2872887f76d31f3f2ad05504bd285c`  
		Last Modified: Tue, 03 Nov 2026 00:21:30 GMT  
		Size: 874.0 KB (873967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23e61f26f1ce2d0efc778f9ede8b90bceefdd1a86188ec88cb200de23b64a13f`  
		Last Modified: Tue, 03 Nov 2026 00:21:41 GMT  
		Size: 392.1 MB (392076239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc22d6a51515334c60ccfc57157a0a801e4e1d5e271f9b93d6ec79370af89978`  
		Last Modified: Tue, 03 Nov 2026 00:21:31 GMT  
		Size: 766.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66bd9696623f53c9ed576034fe2c2b4638d72fbc038aa4fdca81a26a0d657ba5`  
		Last Modified: Tue, 03 Nov 2026 00:21:32 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:211bde528c13104e763aaf2899041ae7d898f4880229835b7b2476a295ea1bce`  
		Last Modified: Tue, 03 Nov 2026 00:21:32 GMT  
		Size: 596.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb8a9684d7fd2336f0705f86cd254510a57377d98b987c3974dd137cae7ee84d`  
		Last Modified: Tue, 03 Nov 2026 00:21:34 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18` - unknown; unknown

```console
$ docker pull odoo@sha256:86bc05455472e943582ddabd4de1addc85dea3df502baee97936e4e442f055a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.0 MB (44012825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3075f6f706b20eaf32a46ff9c47fa22c0e8703d77a974f46f47134231cb1ec0e`

```dockerfile
```

-	Layers:
	-	`sha256:b11bf50b41e78a3c261b77b3e5ddc3e7fba13a31c5de7bb7a06feaa7d5a17217`  
		Last Modified: Tue, 03 Nov 2026 00:21:32 GMT  
		Size: 44.0 MB (43985476 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:686d870c23796d13acc5297d928a4d8facf5346fb0905f78aac94f8debc93e87`  
		Last Modified: Tue, 03 Nov 2026 00:21:30 GMT  
		Size: 27.3 KB (27349 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:18` - linux; ppc64le

```console
$ docker pull odoo@sha256:546f05dc24fda4e1f12a3f0a81319ac526bab3823721b531f373d67f59efbc94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **692.2 MB (692236088 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afa30cbad215ea71fedcfff43fd3115c0a37c07bbe08d53ef6dd2f3ec261083f`
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
# Tue, 03 Nov 2026 00:15:59 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 03 Nov 2026 00:15:59 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 03 Nov 2026 00:15:59 GMT
ENV LANG=en_US.UTF-8
# Tue, 03 Nov 2026 00:15:59 GMT
ARG TARGETARCH=ppc64le
# Tue, 03 Nov 2026 00:15:59 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 03 Nov 2026 00:16:13 GMT
# ARGS: TARGETARCH=ppc64le
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:20:56 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:20:56 GMT
ENV ODOO_VERSION=18.0
# Tue, 03 Nov 2026 00:20:56 GMT
ARG ODOO_RELEASE=20261102
# Tue, 03 Nov 2026 00:20:56 GMT
ARG ODOO_SHA=349c907ea772231b39859c6e6a13093587860861
# Tue, 03 Nov 2026 00:31:43 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261102 ODOO_SHA=349c907ea772231b39859c6e6a13093587860861
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 03 Nov 2026 00:31:44 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 03 Nov 2026 00:31:44 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 03 Nov 2026 00:31:44 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261102 ODOO_SHA=349c907ea772231b39859c6e6a13093587860861
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 03 Nov 2026 00:31:44 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 03 Nov 2026 00:31:44 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 03 Nov 2026 00:31:44 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 03 Nov 2026 00:31:45 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 03 Nov 2026 00:31:45 GMT
USER odoo
# Tue, 03 Nov 2026 00:31:45 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 03 Nov 2026 00:31:45 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:400d78a2b842f2bd938ae79326cc66475d11b949ac6b2acbfbc7709090964eb8`  
		Last Modified: Sun, 25 Oct 2026 14:50:25 GMT  
		Size: 34.4 MB (34378308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:250157a23803c3e07f3e4465e1f9606abc0c5e21e600249deaa9fda75f2bf5ba`  
		Last Modified: Tue, 03 Nov 2026 00:29:16 GMT  
		Size: 249.4 MB (249382793 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06a6eeba402f3ba273d07fe34e9630bd8de1e44bdb48d6f4deb3858cf3e566f6`  
		Last Modified: Tue, 03 Nov 2026 00:29:06 GMT  
		Size: 14.7 MB (14743154 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d91b9a2240116b1addde2f24ee7af737939fec6464bdfec0bc9b2cce1a828265`  
		Last Modified: Tue, 03 Nov 2026 00:29:05 GMT  
		Size: 875.1 KB (875106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cf5ccdb906fa7de11f7532ac32b1b34ad520729a62dd8028dae60522f3e3a9b`  
		Last Modified: Tue, 03 Nov 2026 00:34:57 GMT  
		Size: 392.9 MB (392853929 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ca43cb70ec9a1ce7d91d999d45481c8d002f638e277cce46cbd700939ca48f3`  
		Last Modified: Tue, 03 Nov 2026 00:34:49 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee73a4724ae35305d754fc7cd8463930e35084172e43738851e540e1306e1cce`  
		Last Modified: Tue, 03 Nov 2026 00:34:48 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a3a350fc4ac3c85a0c345b7e8228f66d5787e71ae16909bfb69df6d9419775b`  
		Last Modified: Tue, 03 Nov 2026 00:34:49 GMT  
		Size: 595.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:105f9af15035628805d35982863246ea9f749604af9f51890d26f516a814950b`  
		Last Modified: Tue, 03 Nov 2026 00:34:50 GMT  
		Size: 880.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18` - unknown; unknown

```console
$ docker pull odoo@sha256:305a6a95e750277cdfdf68f47d8f92fe6c4757cac8fe9de910d369e72c3d5e21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.0 MB (44013821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6eeee77a182f4b62df27f53334f4b66355db62f645c4e6eb3b5bc6c59749dc9f`

```dockerfile
```

-	Layers:
	-	`sha256:018bc5e6449228faf71bc74e9a24c6c98a0682fbb563a4d9e0324fc111af8373`  
		Last Modified: Tue, 03 Nov 2026 00:34:51 GMT  
		Size: 44.0 MB (43986568 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6983b777743b6d7c2d62aa0133b756514ee9ab0caa701aba6f01f633e32df4a5`  
		Last Modified: Tue, 03 Nov 2026 00:34:48 GMT  
		Size: 27.3 KB (27253 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:18.0`

```console
$ docker pull odoo@sha256:f61d3e36eb699e63557bbcdf4d7bd659e51418c326009e6574565d87e1d9026d
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
$ docker pull odoo@sha256:62494eed4f2ba93a5aeb7b443992e0f4d135c80b90b9a72b46239b7d2c9add37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **675.8 MB (675800490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4bed941c6a7b5db3e0d61252c92f0a0e1c2fd06ecdad8bc72525f948f9a56ac`
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
# Tue, 03 Nov 2026 00:17:24 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 03 Nov 2026 00:17:24 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 03 Nov 2026 00:17:24 GMT
ENV LANG=en_US.UTF-8
# Tue, 03 Nov 2026 00:17:24 GMT
ARG TARGETARCH=amd64
# Tue, 03 Nov 2026 00:17:24 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 03 Nov 2026 00:17:34 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:18:44 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:18:44 GMT
ENV ODOO_VERSION=18.0
# Tue, 03 Nov 2026 00:18:44 GMT
ARG ODOO_RELEASE=20261102
# Tue, 03 Nov 2026 00:18:44 GMT
ARG ODOO_SHA=349c907ea772231b39859c6e6a13093587860861
# Tue, 03 Nov 2026 00:19:39 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261102 ODOO_SHA=349c907ea772231b39859c6e6a13093587860861
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 03 Nov 2026 00:19:39 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 03 Nov 2026 00:19:39 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 03 Nov 2026 00:19:39 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261102 ODOO_SHA=349c907ea772231b39859c6e6a13093587860861
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 03 Nov 2026 00:19:39 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 03 Nov 2026 00:19:39 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 03 Nov 2026 00:19:39 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 03 Nov 2026 00:19:39 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 03 Nov 2026 00:19:39 GMT
USER odoo
# Tue, 03 Nov 2026 00:19:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 03 Nov 2026 00:19:39 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5eb36f76f306a85cf366392b0b2ccabff429e0fb276f686765408c3ffe338825`  
		Last Modified: Tue, 03 Nov 2026 00:21:12 GMT  
		Size: 238.7 MB (238714757 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c1eea53ff0c098e61c3d471f860d3309d0f007de7e2c227748c8b7a815d81cb`  
		Last Modified: Tue, 03 Nov 2026 00:21:04 GMT  
		Size: 14.2 MB (14226170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24d4d8f31eee95b3586c9edf5d9ea842ffeaeb97c0c36cbe45c15d49fa968555`  
		Last Modified: Tue, 03 Nov 2026 00:21:03 GMT  
		Size: 873.9 KB (873901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b8ddbf2385da467409357332133ce0081a3ba8bcfb7f0643ab89e30c54f1187`  
		Last Modified: Tue, 03 Nov 2026 00:21:14 GMT  
		Size: 392.2 MB (392215253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9dfe111c4325c11ece1918bafc63d7f539f88b8b359334199e7e81be4ef4ab52`  
		Last Modified: Tue, 03 Nov 2026 00:21:04 GMT  
		Size: 766.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:123d5ee1028fbf5d41cebca8a9ad9f01ba4cbfcd08a1450ec085e8cdede6b141`  
		Last Modified: Tue, 03 Nov 2026 00:21:05 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77ae0c5b70a45c6140f8e1f6d58fd0a6be9687f148d47ace09aee7783d966f32`  
		Last Modified: Tue, 03 Nov 2026 00:21:06 GMT  
		Size: 595.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb4e23081cc8727c34ea47e552784ad70c6a3041c07f7be0e98a27fad2171c17`  
		Last Modified: Tue, 03 Nov 2026 00:21:06 GMT  
		Size: 880.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18.0` - unknown; unknown

```console
$ docker pull odoo@sha256:5a2998faa715344a83495814ec35807dd5af37a51156f3baea24f2a7a089ce57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.0 MB (44005400 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a138f434f36bc930379d6fe14de38fe818b70e207580d4fb6d0e4c6c474c59d`

```dockerfile
```

-	Layers:
	-	`sha256:1f92a19975b8ff05e9c1a761dea52cb5c4f7ac9f356ae3ba5c189a68a9642136`  
		Last Modified: Tue, 03 Nov 2026 00:21:06 GMT  
		Size: 44.0 MB (43978204 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1b582979420e812f69eb5885fed1a72bc3c8a684a828515862bd9455e66f3d51`  
		Last Modified: Tue, 03 Nov 2026 00:21:03 GMT  
		Size: 27.2 KB (27196 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:18.0` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:77f73c0c436b08d826338e830c190b5c2991ad8659f8f41fd3b0a204325ff350
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **672.3 MB (672269692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa2260df78ed931998e2ccc6b8e9804f65f926041367f89a588ec17a7c81cfd4`
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
# Tue, 03 Nov 2026 00:17:44 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 03 Nov 2026 00:17:44 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 03 Nov 2026 00:17:44 GMT
ENV LANG=en_US.UTF-8
# Tue, 03 Nov 2026 00:17:44 GMT
ARG TARGETARCH=arm64
# Tue, 03 Nov 2026 00:17:44 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 03 Nov 2026 00:17:54 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:18:58 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:18:58 GMT
ENV ODOO_VERSION=18.0
# Tue, 03 Nov 2026 00:18:58 GMT
ARG ODOO_RELEASE=20261102
# Tue, 03 Nov 2026 00:18:58 GMT
ARG ODOO_SHA=349c907ea772231b39859c6e6a13093587860861
# Tue, 03 Nov 2026 00:20:01 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261102 ODOO_SHA=349c907ea772231b39859c6e6a13093587860861
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 03 Nov 2026 00:20:01 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 03 Nov 2026 00:20:01 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 03 Nov 2026 00:20:01 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261102 ODOO_SHA=349c907ea772231b39859c6e6a13093587860861
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 03 Nov 2026 00:20:01 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 03 Nov 2026 00:20:01 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 03 Nov 2026 00:20:01 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 03 Nov 2026 00:20:02 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 03 Nov 2026 00:20:02 GMT
USER odoo
# Tue, 03 Nov 2026 00:20:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 03 Nov 2026 00:20:02 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:e2d2bb84d02254f4be480ca3c62f94fc12ac959c11b3ce5bd7da3f411b2b9607`  
		Last Modified: Sun, 25 Oct 2026 14:50:12 GMT  
		Size: 28.9 MB (28940126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39c8f7af14211baa2686ece7fde8052e472a37c9cea840c5bb28758822a37b8b`  
		Last Modified: Tue, 03 Nov 2026 00:21:38 GMT  
		Size: 236.2 MB (236179135 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56d7d0aa2407d479c6f6e970680ea1e2b7a43052c4e68704e8124e4b4c21299f`  
		Last Modified: Tue, 03 Nov 2026 00:21:31 GMT  
		Size: 14.2 MB (14197428 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ed75218a7f2518063d54d25d66793b03c2872887f76d31f3f2ad05504bd285c`  
		Last Modified: Tue, 03 Nov 2026 00:21:30 GMT  
		Size: 874.0 KB (873967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23e61f26f1ce2d0efc778f9ede8b90bceefdd1a86188ec88cb200de23b64a13f`  
		Last Modified: Tue, 03 Nov 2026 00:21:41 GMT  
		Size: 392.1 MB (392076239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc22d6a51515334c60ccfc57157a0a801e4e1d5e271f9b93d6ec79370af89978`  
		Last Modified: Tue, 03 Nov 2026 00:21:31 GMT  
		Size: 766.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66bd9696623f53c9ed576034fe2c2b4638d72fbc038aa4fdca81a26a0d657ba5`  
		Last Modified: Tue, 03 Nov 2026 00:21:32 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:211bde528c13104e763aaf2899041ae7d898f4880229835b7b2476a295ea1bce`  
		Last Modified: Tue, 03 Nov 2026 00:21:32 GMT  
		Size: 596.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb8a9684d7fd2336f0705f86cd254510a57377d98b987c3974dd137cae7ee84d`  
		Last Modified: Tue, 03 Nov 2026 00:21:34 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18.0` - unknown; unknown

```console
$ docker pull odoo@sha256:86bc05455472e943582ddabd4de1addc85dea3df502baee97936e4e442f055a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.0 MB (44012825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3075f6f706b20eaf32a46ff9c47fa22c0e8703d77a974f46f47134231cb1ec0e`

```dockerfile
```

-	Layers:
	-	`sha256:b11bf50b41e78a3c261b77b3e5ddc3e7fba13a31c5de7bb7a06feaa7d5a17217`  
		Last Modified: Tue, 03 Nov 2026 00:21:32 GMT  
		Size: 44.0 MB (43985476 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:686d870c23796d13acc5297d928a4d8facf5346fb0905f78aac94f8debc93e87`  
		Last Modified: Tue, 03 Nov 2026 00:21:30 GMT  
		Size: 27.3 KB (27349 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:18.0` - linux; ppc64le

```console
$ docker pull odoo@sha256:546f05dc24fda4e1f12a3f0a81319ac526bab3823721b531f373d67f59efbc94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **692.2 MB (692236088 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afa30cbad215ea71fedcfff43fd3115c0a37c07bbe08d53ef6dd2f3ec261083f`
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
# Tue, 03 Nov 2026 00:15:59 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 03 Nov 2026 00:15:59 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 03 Nov 2026 00:15:59 GMT
ENV LANG=en_US.UTF-8
# Tue, 03 Nov 2026 00:15:59 GMT
ARG TARGETARCH=ppc64le
# Tue, 03 Nov 2026 00:15:59 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 03 Nov 2026 00:16:13 GMT
# ARGS: TARGETARCH=ppc64le
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:20:56 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:20:56 GMT
ENV ODOO_VERSION=18.0
# Tue, 03 Nov 2026 00:20:56 GMT
ARG ODOO_RELEASE=20261102
# Tue, 03 Nov 2026 00:20:56 GMT
ARG ODOO_SHA=349c907ea772231b39859c6e6a13093587860861
# Tue, 03 Nov 2026 00:31:43 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261102 ODOO_SHA=349c907ea772231b39859c6e6a13093587860861
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 03 Nov 2026 00:31:44 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 03 Nov 2026 00:31:44 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 03 Nov 2026 00:31:44 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261102 ODOO_SHA=349c907ea772231b39859c6e6a13093587860861
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 03 Nov 2026 00:31:44 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 03 Nov 2026 00:31:44 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 03 Nov 2026 00:31:44 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 03 Nov 2026 00:31:45 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 03 Nov 2026 00:31:45 GMT
USER odoo
# Tue, 03 Nov 2026 00:31:45 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 03 Nov 2026 00:31:45 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:400d78a2b842f2bd938ae79326cc66475d11b949ac6b2acbfbc7709090964eb8`  
		Last Modified: Sun, 25 Oct 2026 14:50:25 GMT  
		Size: 34.4 MB (34378308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:250157a23803c3e07f3e4465e1f9606abc0c5e21e600249deaa9fda75f2bf5ba`  
		Last Modified: Tue, 03 Nov 2026 00:29:16 GMT  
		Size: 249.4 MB (249382793 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06a6eeba402f3ba273d07fe34e9630bd8de1e44bdb48d6f4deb3858cf3e566f6`  
		Last Modified: Tue, 03 Nov 2026 00:29:06 GMT  
		Size: 14.7 MB (14743154 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d91b9a2240116b1addde2f24ee7af737939fec6464bdfec0bc9b2cce1a828265`  
		Last Modified: Tue, 03 Nov 2026 00:29:05 GMT  
		Size: 875.1 KB (875106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cf5ccdb906fa7de11f7532ac32b1b34ad520729a62dd8028dae60522f3e3a9b`  
		Last Modified: Tue, 03 Nov 2026 00:34:57 GMT  
		Size: 392.9 MB (392853929 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ca43cb70ec9a1ce7d91d999d45481c8d002f638e277cce46cbd700939ca48f3`  
		Last Modified: Tue, 03 Nov 2026 00:34:49 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee73a4724ae35305d754fc7cd8463930e35084172e43738851e540e1306e1cce`  
		Last Modified: Tue, 03 Nov 2026 00:34:48 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a3a350fc4ac3c85a0c345b7e8228f66d5787e71ae16909bfb69df6d9419775b`  
		Last Modified: Tue, 03 Nov 2026 00:34:49 GMT  
		Size: 595.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:105f9af15035628805d35982863246ea9f749604af9f51890d26f516a814950b`  
		Last Modified: Tue, 03 Nov 2026 00:34:50 GMT  
		Size: 880.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18.0` - unknown; unknown

```console
$ docker pull odoo@sha256:305a6a95e750277cdfdf68f47d8f92fe6c4757cac8fe9de910d369e72c3d5e21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.0 MB (44013821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6eeee77a182f4b62df27f53334f4b66355db62f645c4e6eb3b5bc6c59749dc9f`

```dockerfile
```

-	Layers:
	-	`sha256:018bc5e6449228faf71bc74e9a24c6c98a0682fbb563a4d9e0324fc111af8373`  
		Last Modified: Tue, 03 Nov 2026 00:34:51 GMT  
		Size: 44.0 MB (43986568 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6983b777743b6d7c2d62aa0133b756514ee9ab0caa701aba6f01f633e32df4a5`  
		Last Modified: Tue, 03 Nov 2026 00:34:48 GMT  
		Size: 27.3 KB (27253 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:18.0-20261102`

```console
$ docker pull odoo@sha256:f61d3e36eb699e63557bbcdf4d7bd659e51418c326009e6574565d87e1d9026d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `odoo:18.0-20261102` - linux; amd64

```console
$ docker pull odoo@sha256:62494eed4f2ba93a5aeb7b443992e0f4d135c80b90b9a72b46239b7d2c9add37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **675.8 MB (675800490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4bed941c6a7b5db3e0d61252c92f0a0e1c2fd06ecdad8bc72525f948f9a56ac`
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
# Tue, 03 Nov 2026 00:17:24 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 03 Nov 2026 00:17:24 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 03 Nov 2026 00:17:24 GMT
ENV LANG=en_US.UTF-8
# Tue, 03 Nov 2026 00:17:24 GMT
ARG TARGETARCH=amd64
# Tue, 03 Nov 2026 00:17:24 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 03 Nov 2026 00:17:34 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:18:44 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:18:44 GMT
ENV ODOO_VERSION=18.0
# Tue, 03 Nov 2026 00:18:44 GMT
ARG ODOO_RELEASE=20261102
# Tue, 03 Nov 2026 00:18:44 GMT
ARG ODOO_SHA=349c907ea772231b39859c6e6a13093587860861
# Tue, 03 Nov 2026 00:19:39 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261102 ODOO_SHA=349c907ea772231b39859c6e6a13093587860861
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 03 Nov 2026 00:19:39 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 03 Nov 2026 00:19:39 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 03 Nov 2026 00:19:39 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261102 ODOO_SHA=349c907ea772231b39859c6e6a13093587860861
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 03 Nov 2026 00:19:39 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 03 Nov 2026 00:19:39 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 03 Nov 2026 00:19:39 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 03 Nov 2026 00:19:39 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 03 Nov 2026 00:19:39 GMT
USER odoo
# Tue, 03 Nov 2026 00:19:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 03 Nov 2026 00:19:39 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5eb36f76f306a85cf366392b0b2ccabff429e0fb276f686765408c3ffe338825`  
		Last Modified: Tue, 03 Nov 2026 00:21:12 GMT  
		Size: 238.7 MB (238714757 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c1eea53ff0c098e61c3d471f860d3309d0f007de7e2c227748c8b7a815d81cb`  
		Last Modified: Tue, 03 Nov 2026 00:21:04 GMT  
		Size: 14.2 MB (14226170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24d4d8f31eee95b3586c9edf5d9ea842ffeaeb97c0c36cbe45c15d49fa968555`  
		Last Modified: Tue, 03 Nov 2026 00:21:03 GMT  
		Size: 873.9 KB (873901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b8ddbf2385da467409357332133ce0081a3ba8bcfb7f0643ab89e30c54f1187`  
		Last Modified: Tue, 03 Nov 2026 00:21:14 GMT  
		Size: 392.2 MB (392215253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9dfe111c4325c11ece1918bafc63d7f539f88b8b359334199e7e81be4ef4ab52`  
		Last Modified: Tue, 03 Nov 2026 00:21:04 GMT  
		Size: 766.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:123d5ee1028fbf5d41cebca8a9ad9f01ba4cbfcd08a1450ec085e8cdede6b141`  
		Last Modified: Tue, 03 Nov 2026 00:21:05 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77ae0c5b70a45c6140f8e1f6d58fd0a6be9687f148d47ace09aee7783d966f32`  
		Last Modified: Tue, 03 Nov 2026 00:21:06 GMT  
		Size: 595.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb4e23081cc8727c34ea47e552784ad70c6a3041c07f7be0e98a27fad2171c17`  
		Last Modified: Tue, 03 Nov 2026 00:21:06 GMT  
		Size: 880.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18.0-20261102` - unknown; unknown

```console
$ docker pull odoo@sha256:5a2998faa715344a83495814ec35807dd5af37a51156f3baea24f2a7a089ce57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.0 MB (44005400 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a138f434f36bc930379d6fe14de38fe818b70e207580d4fb6d0e4c6c474c59d`

```dockerfile
```

-	Layers:
	-	`sha256:1f92a19975b8ff05e9c1a761dea52cb5c4f7ac9f356ae3ba5c189a68a9642136`  
		Last Modified: Tue, 03 Nov 2026 00:21:06 GMT  
		Size: 44.0 MB (43978204 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1b582979420e812f69eb5885fed1a72bc3c8a684a828515862bd9455e66f3d51`  
		Last Modified: Tue, 03 Nov 2026 00:21:03 GMT  
		Size: 27.2 KB (27196 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:18.0-20261102` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:77f73c0c436b08d826338e830c190b5c2991ad8659f8f41fd3b0a204325ff350
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **672.3 MB (672269692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa2260df78ed931998e2ccc6b8e9804f65f926041367f89a588ec17a7c81cfd4`
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
# Tue, 03 Nov 2026 00:17:44 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 03 Nov 2026 00:17:44 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 03 Nov 2026 00:17:44 GMT
ENV LANG=en_US.UTF-8
# Tue, 03 Nov 2026 00:17:44 GMT
ARG TARGETARCH=arm64
# Tue, 03 Nov 2026 00:17:44 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 03 Nov 2026 00:17:54 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:18:58 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:18:58 GMT
ENV ODOO_VERSION=18.0
# Tue, 03 Nov 2026 00:18:58 GMT
ARG ODOO_RELEASE=20261102
# Tue, 03 Nov 2026 00:18:58 GMT
ARG ODOO_SHA=349c907ea772231b39859c6e6a13093587860861
# Tue, 03 Nov 2026 00:20:01 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261102 ODOO_SHA=349c907ea772231b39859c6e6a13093587860861
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 03 Nov 2026 00:20:01 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 03 Nov 2026 00:20:01 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 03 Nov 2026 00:20:01 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261102 ODOO_SHA=349c907ea772231b39859c6e6a13093587860861
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 03 Nov 2026 00:20:01 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 03 Nov 2026 00:20:01 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 03 Nov 2026 00:20:01 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 03 Nov 2026 00:20:02 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 03 Nov 2026 00:20:02 GMT
USER odoo
# Tue, 03 Nov 2026 00:20:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 03 Nov 2026 00:20:02 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:e2d2bb84d02254f4be480ca3c62f94fc12ac959c11b3ce5bd7da3f411b2b9607`  
		Last Modified: Sun, 25 Oct 2026 14:50:12 GMT  
		Size: 28.9 MB (28940126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39c8f7af14211baa2686ece7fde8052e472a37c9cea840c5bb28758822a37b8b`  
		Last Modified: Tue, 03 Nov 2026 00:21:38 GMT  
		Size: 236.2 MB (236179135 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56d7d0aa2407d479c6f6e970680ea1e2b7a43052c4e68704e8124e4b4c21299f`  
		Last Modified: Tue, 03 Nov 2026 00:21:31 GMT  
		Size: 14.2 MB (14197428 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ed75218a7f2518063d54d25d66793b03c2872887f76d31f3f2ad05504bd285c`  
		Last Modified: Tue, 03 Nov 2026 00:21:30 GMT  
		Size: 874.0 KB (873967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23e61f26f1ce2d0efc778f9ede8b90bceefdd1a86188ec88cb200de23b64a13f`  
		Last Modified: Tue, 03 Nov 2026 00:21:41 GMT  
		Size: 392.1 MB (392076239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc22d6a51515334c60ccfc57157a0a801e4e1d5e271f9b93d6ec79370af89978`  
		Last Modified: Tue, 03 Nov 2026 00:21:31 GMT  
		Size: 766.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66bd9696623f53c9ed576034fe2c2b4638d72fbc038aa4fdca81a26a0d657ba5`  
		Last Modified: Tue, 03 Nov 2026 00:21:32 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:211bde528c13104e763aaf2899041ae7d898f4880229835b7b2476a295ea1bce`  
		Last Modified: Tue, 03 Nov 2026 00:21:32 GMT  
		Size: 596.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb8a9684d7fd2336f0705f86cd254510a57377d98b987c3974dd137cae7ee84d`  
		Last Modified: Tue, 03 Nov 2026 00:21:34 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18.0-20261102` - unknown; unknown

```console
$ docker pull odoo@sha256:86bc05455472e943582ddabd4de1addc85dea3df502baee97936e4e442f055a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.0 MB (44012825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3075f6f706b20eaf32a46ff9c47fa22c0e8703d77a974f46f47134231cb1ec0e`

```dockerfile
```

-	Layers:
	-	`sha256:b11bf50b41e78a3c261b77b3e5ddc3e7fba13a31c5de7bb7a06feaa7d5a17217`  
		Last Modified: Tue, 03 Nov 2026 00:21:32 GMT  
		Size: 44.0 MB (43985476 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:686d870c23796d13acc5297d928a4d8facf5346fb0905f78aac94f8debc93e87`  
		Last Modified: Tue, 03 Nov 2026 00:21:30 GMT  
		Size: 27.3 KB (27349 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:18.0-20261102` - linux; ppc64le

```console
$ docker pull odoo@sha256:546f05dc24fda4e1f12a3f0a81319ac526bab3823721b531f373d67f59efbc94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **692.2 MB (692236088 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afa30cbad215ea71fedcfff43fd3115c0a37c07bbe08d53ef6dd2f3ec261083f`
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
# Tue, 03 Nov 2026 00:15:59 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 03 Nov 2026 00:15:59 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 03 Nov 2026 00:15:59 GMT
ENV LANG=en_US.UTF-8
# Tue, 03 Nov 2026 00:15:59 GMT
ARG TARGETARCH=ppc64le
# Tue, 03 Nov 2026 00:15:59 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 03 Nov 2026 00:16:13 GMT
# ARGS: TARGETARCH=ppc64le
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:20:56 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:20:56 GMT
ENV ODOO_VERSION=18.0
# Tue, 03 Nov 2026 00:20:56 GMT
ARG ODOO_RELEASE=20261102
# Tue, 03 Nov 2026 00:20:56 GMT
ARG ODOO_SHA=349c907ea772231b39859c6e6a13093587860861
# Tue, 03 Nov 2026 00:31:43 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261102 ODOO_SHA=349c907ea772231b39859c6e6a13093587860861
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 03 Nov 2026 00:31:44 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 03 Nov 2026 00:31:44 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 03 Nov 2026 00:31:44 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261102 ODOO_SHA=349c907ea772231b39859c6e6a13093587860861
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 03 Nov 2026 00:31:44 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 03 Nov 2026 00:31:44 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 03 Nov 2026 00:31:44 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 03 Nov 2026 00:31:45 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 03 Nov 2026 00:31:45 GMT
USER odoo
# Tue, 03 Nov 2026 00:31:45 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 03 Nov 2026 00:31:45 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:400d78a2b842f2bd938ae79326cc66475d11b949ac6b2acbfbc7709090964eb8`  
		Last Modified: Sun, 25 Oct 2026 14:50:25 GMT  
		Size: 34.4 MB (34378308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:250157a23803c3e07f3e4465e1f9606abc0c5e21e600249deaa9fda75f2bf5ba`  
		Last Modified: Tue, 03 Nov 2026 00:29:16 GMT  
		Size: 249.4 MB (249382793 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06a6eeba402f3ba273d07fe34e9630bd8de1e44bdb48d6f4deb3858cf3e566f6`  
		Last Modified: Tue, 03 Nov 2026 00:29:06 GMT  
		Size: 14.7 MB (14743154 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d91b9a2240116b1addde2f24ee7af737939fec6464bdfec0bc9b2cce1a828265`  
		Last Modified: Tue, 03 Nov 2026 00:29:05 GMT  
		Size: 875.1 KB (875106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cf5ccdb906fa7de11f7532ac32b1b34ad520729a62dd8028dae60522f3e3a9b`  
		Last Modified: Tue, 03 Nov 2026 00:34:57 GMT  
		Size: 392.9 MB (392853929 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ca43cb70ec9a1ce7d91d999d45481c8d002f638e277cce46cbd700939ca48f3`  
		Last Modified: Tue, 03 Nov 2026 00:34:49 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee73a4724ae35305d754fc7cd8463930e35084172e43738851e540e1306e1cce`  
		Last Modified: Tue, 03 Nov 2026 00:34:48 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a3a350fc4ac3c85a0c345b7e8228f66d5787e71ae16909bfb69df6d9419775b`  
		Last Modified: Tue, 03 Nov 2026 00:34:49 GMT  
		Size: 595.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:105f9af15035628805d35982863246ea9f749604af9f51890d26f516a814950b`  
		Last Modified: Tue, 03 Nov 2026 00:34:50 GMT  
		Size: 880.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18.0-20261102` - unknown; unknown

```console
$ docker pull odoo@sha256:305a6a95e750277cdfdf68f47d8f92fe6c4757cac8fe9de910d369e72c3d5e21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.0 MB (44013821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6eeee77a182f4b62df27f53334f4b66355db62f645c4e6eb3b5bc6c59749dc9f`

```dockerfile
```

-	Layers:
	-	`sha256:018bc5e6449228faf71bc74e9a24c6c98a0682fbb563a4d9e0324fc111af8373`  
		Last Modified: Tue, 03 Nov 2026 00:34:51 GMT  
		Size: 44.0 MB (43986568 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6983b777743b6d7c2d62aa0133b756514ee9ab0caa701aba6f01f633e32df4a5`  
		Last Modified: Tue, 03 Nov 2026 00:34:48 GMT  
		Size: 27.3 KB (27253 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:19`

```console
$ docker pull odoo@sha256:5e755c725b3c43cf0be16d579904e1418300db3a2c44952f928eaddbcb0cc16d
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
$ docker pull odoo@sha256:08374de09bab5d80851c5709896aa49917e6c6a893b39025d6669db908e238b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **699.9 MB (699881662 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e397079360907eb52bf648be9c3232338d7bc03142132d613bff2b8de3283ed`
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
# Tue, 03 Nov 2026 00:17:21 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 03 Nov 2026 00:17:21 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 03 Nov 2026 00:17:21 GMT
ENV LANG=en_US.UTF-8
# Tue, 03 Nov 2026 00:17:21 GMT
ARG TARGETARCH=amd64
# Tue, 03 Nov 2026 00:17:21 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 03 Nov 2026 00:17:30 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:19:08 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:19:08 GMT
ENV ODOO_VERSION=19.0
# Tue, 03 Nov 2026 00:19:08 GMT
ARG ODOO_RELEASE=20261102
# Tue, 03 Nov 2026 00:19:08 GMT
ARG ODOO_SHA=a68201e81fff90efd7f7bc7f5f1d8ac43d633587
# Tue, 03 Nov 2026 00:20:16 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261102 ODOO_SHA=a68201e81fff90efd7f7bc7f5f1d8ac43d633587
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 03 Nov 2026 00:20:17 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 03 Nov 2026 00:20:17 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 03 Nov 2026 00:20:17 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261102 ODOO_SHA=a68201e81fff90efd7f7bc7f5f1d8ac43d633587
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 03 Nov 2026 00:20:17 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 03 Nov 2026 00:20:17 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 03 Nov 2026 00:20:17 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 03 Nov 2026 00:20:17 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 03 Nov 2026 00:20:17 GMT
USER odoo
# Tue, 03 Nov 2026 00:20:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 03 Nov 2026 00:20:17 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d542da8bf0547edf28091403cd9ec555fe73218390b03735b9adec48302dfa60`  
		Last Modified: Tue, 03 Nov 2026 00:22:07 GMT  
		Size: 238.7 MB (238715113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef116428f66f10b627b701cd07c3055ca4759100274e7287bc836ae2aadcd5f2`  
		Last Modified: Tue, 03 Nov 2026 00:21:59 GMT  
		Size: 14.2 MB (14226162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98b77fee58b3a378cd3f13b0664b83e9efc865832c7d8f84cdd3dcd8ee0bb74c`  
		Last Modified: Tue, 03 Nov 2026 00:21:58 GMT  
		Size: 874.0 KB (873993 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ae1ebb5cb095fbdb61594ba1e4fcf470661af41e896c2073e223150315f43db`  
		Last Modified: Tue, 03 Nov 2026 00:22:11 GMT  
		Size: 416.3 MB (416296033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8f6dd177bdbf8dab2d313c603e06724d33221f5da3a8d7c3fc12f80820fb8d4`  
		Last Modified: Tue, 03 Nov 2026 00:22:00 GMT  
		Size: 719.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4498368ec6626e03643422acc5d70339329c9f9fa39158f9234364b3ff4ff7d0`  
		Last Modified: Tue, 03 Nov 2026 00:22:01 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd1323a3db4b5f6214163904c83a9e2ad88ab52bd7d469f187cfff54e600aa65`  
		Last Modified: Tue, 03 Nov 2026 00:22:01 GMT  
		Size: 595.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90e59b8c5a901a8bca160bdc42888a2132e1d79074786c8a0e687df9f5cd5376`  
		Last Modified: Tue, 03 Nov 2026 00:22:02 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19` - unknown; unknown

```console
$ docker pull odoo@sha256:39c24833a3a125daad224b769a1cc07b6d9ba712ddd2d74bd58f6ec4457d280a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.7 MB (52663404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd08dd85d8631d0235d74b0f03c47cb6051d32760f7f80bb4cf98133e2d8644f`

```dockerfile
```

-	Layers:
	-	`sha256:0ae04d8ac90527ee07b581e440e54197f2d63480b28ed6df500ee6bb8c27dc70`  
		Last Modified: Tue, 03 Nov 2026 00:22:01 GMT  
		Size: 52.6 MB (52636207 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0b223d992e7d4a25c289353044a80ea617cb5f4fbcab952fb19e893084a7fd5d`  
		Last Modified: Tue, 03 Nov 2026 00:21:58 GMT  
		Size: 27.2 KB (27197 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:19` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:e165f42554c167e0f26460b51207c8d26ed5e9ed53ee2454727fad8874ab9cb3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **696.4 MB (696352118 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:055341009b4c26074437c614b92436f4822e3f4366a385e76b7974c3caf6ae33`
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
# Tue, 03 Nov 2026 00:17:41 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 03 Nov 2026 00:17:41 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 03 Nov 2026 00:17:41 GMT
ENV LANG=en_US.UTF-8
# Tue, 03 Nov 2026 00:17:41 GMT
ARG TARGETARCH=arm64
# Tue, 03 Nov 2026 00:17:41 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 03 Nov 2026 00:17:51 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:18:51 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:18:51 GMT
ENV ODOO_VERSION=19.0
# Tue, 03 Nov 2026 00:18:51 GMT
ARG ODOO_RELEASE=20261102
# Tue, 03 Nov 2026 00:18:51 GMT
ARG ODOO_SHA=a68201e81fff90efd7f7bc7f5f1d8ac43d633587
# Tue, 03 Nov 2026 00:20:02 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261102 ODOO_SHA=a68201e81fff90efd7f7bc7f5f1d8ac43d633587
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 03 Nov 2026 00:20:03 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 03 Nov 2026 00:20:03 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 03 Nov 2026 00:20:03 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261102 ODOO_SHA=a68201e81fff90efd7f7bc7f5f1d8ac43d633587
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 03 Nov 2026 00:20:03 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 03 Nov 2026 00:20:03 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 03 Nov 2026 00:20:03 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 03 Nov 2026 00:20:03 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 03 Nov 2026 00:20:03 GMT
USER odoo
# Tue, 03 Nov 2026 00:20:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 03 Nov 2026 00:20:03 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:e2d2bb84d02254f4be480ca3c62f94fc12ac959c11b3ce5bd7da3f411b2b9607`  
		Last Modified: Sun, 25 Oct 2026 14:50:12 GMT  
		Size: 28.9 MB (28940126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d956ecea64b769d48a71d2fbd479c20d7994d5ad7a4728328d3ec0d2fd3bae1`  
		Last Modified: Tue, 03 Nov 2026 00:21:55 GMT  
		Size: 236.2 MB (236180413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5ef62f106d88e0f481596c7577e267ab0e23c35fdb14827bfa4d2d9f32c94df`  
		Last Modified: Tue, 03 Nov 2026 00:21:47 GMT  
		Size: 14.2 MB (14197262 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0aea37c5ef7535b978dac05c689d9bcbbfc64c94f0091596b2708b7f10854c1c`  
		Last Modified: Tue, 03 Nov 2026 00:21:46 GMT  
		Size: 873.9 KB (873861 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a3613027a6599275a5c4428ce1e4043f84b03107d98401f9ae70121a05ea268`  
		Last Modified: Tue, 03 Nov 2026 00:21:57 GMT  
		Size: 416.2 MB (416157706 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd9e0bb19481778c9564290762a191702568386b7a61d85b69030a5a39d47b2a`  
		Last Modified: Tue, 03 Nov 2026 00:21:48 GMT  
		Size: 719.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c881b64be8fa165fe2681381cbf47d80c787cdb479e304dcd8cfe709050ea3c5`  
		Last Modified: Tue, 03 Nov 2026 00:21:49 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a819f53f1fbac460e04d01d604aaeba1ecb8426b7405d4a5ab624a3c70dfe7c`  
		Last Modified: Tue, 03 Nov 2026 00:21:49 GMT  
		Size: 596.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49736bc74082c7969dfc3140ec02a3a6950ec12cf7c64539bee7ec998eaf0b03`  
		Last Modified: Tue, 03 Nov 2026 00:21:50 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19` - unknown; unknown

```console
$ docker pull odoo@sha256:68b62d4e667b8991b2c0c13aaeaa644eb71abc6fc79ddcd5b6c197697c34c071
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.7 MB (52670828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee1bbe7a37842cac2c0de2786b72a1d21168268e124b98599db535e43a94b410`

```dockerfile
```

-	Layers:
	-	`sha256:60a7ec831028738db3c5de1b447098fd258171b9b670dadd483ba49192965d02`  
		Last Modified: Tue, 03 Nov 2026 00:21:49 GMT  
		Size: 52.6 MB (52643479 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:119e18e7e87164bfa02a4430e4db633851705d1f5e77024aec4d4d7555b1d46c`  
		Last Modified: Tue, 03 Nov 2026 00:21:46 GMT  
		Size: 27.3 KB (27349 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:19` - linux; ppc64le

```console
$ docker pull odoo@sha256:d96ef0d5377f73f6c14aab75160d392fe7568b001e185e12f4c40bf498954a68
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **716.4 MB (716363874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9c1a002e2494bb18b699ab51b589e5d184728da9602a5a0558a26453df9dbcb`
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
# Tue, 03 Nov 2026 00:15:59 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 03 Nov 2026 00:15:59 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 03 Nov 2026 00:15:59 GMT
ENV LANG=en_US.UTF-8
# Tue, 03 Nov 2026 00:15:59 GMT
ARG TARGETARCH=ppc64le
# Tue, 03 Nov 2026 00:15:59 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 03 Nov 2026 00:16:13 GMT
# ARGS: TARGETARCH=ppc64le
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:20:56 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:20:56 GMT
ENV ODOO_VERSION=19.0
# Tue, 03 Nov 2026 00:20:56 GMT
ARG ODOO_RELEASE=20261102
# Tue, 03 Nov 2026 00:20:56 GMT
ARG ODOO_SHA=a68201e81fff90efd7f7bc7f5f1d8ac43d633587
# Tue, 03 Nov 2026 00:24:43 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261102 ODOO_SHA=a68201e81fff90efd7f7bc7f5f1d8ac43d633587
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 03 Nov 2026 00:24:47 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 03 Nov 2026 00:24:47 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 03 Nov 2026 00:24:48 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261102 ODOO_SHA=a68201e81fff90efd7f7bc7f5f1d8ac43d633587
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 03 Nov 2026 00:24:48 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 03 Nov 2026 00:24:48 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 03 Nov 2026 00:24:48 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 03 Nov 2026 00:24:49 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 03 Nov 2026 00:24:49 GMT
USER odoo
# Tue, 03 Nov 2026 00:24:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 03 Nov 2026 00:24:49 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:400d78a2b842f2bd938ae79326cc66475d11b949ac6b2acbfbc7709090964eb8`  
		Last Modified: Sun, 25 Oct 2026 14:50:25 GMT  
		Size: 34.4 MB (34378308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:250157a23803c3e07f3e4465e1f9606abc0c5e21e600249deaa9fda75f2bf5ba`  
		Last Modified: Tue, 03 Nov 2026 00:29:16 GMT  
		Size: 249.4 MB (249382793 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06a6eeba402f3ba273d07fe34e9630bd8de1e44bdb48d6f4deb3858cf3e566f6`  
		Last Modified: Tue, 03 Nov 2026 00:29:06 GMT  
		Size: 14.7 MB (14743154 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d91b9a2240116b1addde2f24ee7af737939fec6464bdfec0bc9b2cce1a828265`  
		Last Modified: Tue, 03 Nov 2026 00:29:05 GMT  
		Size: 875.1 KB (875106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccd188e3980b40b3d2180f6883edd1cdc46c55f47ff52b104cd85aad612bbc48`  
		Last Modified: Tue, 03 Nov 2026 00:29:19 GMT  
		Size: 417.0 MB (416981756 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29ec8b3719d45feb173dd6c063b45f5d156f87df238c02b46f98a9452ba5fb1a`  
		Last Modified: Tue, 03 Nov 2026 00:29:07 GMT  
		Size: 718.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc8db1d73a6f0f3264e24d38c3cafd1be24500400f019f6b7cb72f86fedaa7ff`  
		Last Modified: Tue, 03 Nov 2026 00:29:08 GMT  
		Size: 558.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d2d0ddc9b191af1d6abc51033cd87279c00a94345f34a587fdac5e7410271c1`  
		Last Modified: Tue, 03 Nov 2026 00:29:08 GMT  
		Size: 601.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8040926e2b73368b8714801440c20ba7318d4222c6b42799da9bfb674fa0bff`  
		Last Modified: Tue, 03 Nov 2026 00:29:09 GMT  
		Size: 880.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19` - unknown; unknown

```console
$ docker pull odoo@sha256:96777eefcfd642667af4bd4d3c4d85017ab2fe91611284acb12758027cb83229
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.7 MB (52671823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31a3534805c13fbab023e706aa5978e18e6ea1d16b98a49acf62dcfa3ab20515`

```dockerfile
```

-	Layers:
	-	`sha256:a34e3dcd4769902539293bb607bd4045a4a72f308bfb9f98f7a373f9674a9c9d`  
		Last Modified: Tue, 03 Nov 2026 00:29:09 GMT  
		Size: 52.6 MB (52644571 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:33039397c42264422c0c54e45aef840b35ae95f177902b4814fc41a541ed27cf`  
		Last Modified: Tue, 03 Nov 2026 00:29:05 GMT  
		Size: 27.3 KB (27252 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:19.0`

```console
$ docker pull odoo@sha256:5e755c725b3c43cf0be16d579904e1418300db3a2c44952f928eaddbcb0cc16d
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
$ docker pull odoo@sha256:08374de09bab5d80851c5709896aa49917e6c6a893b39025d6669db908e238b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **699.9 MB (699881662 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e397079360907eb52bf648be9c3232338d7bc03142132d613bff2b8de3283ed`
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
# Tue, 03 Nov 2026 00:17:21 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 03 Nov 2026 00:17:21 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 03 Nov 2026 00:17:21 GMT
ENV LANG=en_US.UTF-8
# Tue, 03 Nov 2026 00:17:21 GMT
ARG TARGETARCH=amd64
# Tue, 03 Nov 2026 00:17:21 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 03 Nov 2026 00:17:30 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:19:08 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:19:08 GMT
ENV ODOO_VERSION=19.0
# Tue, 03 Nov 2026 00:19:08 GMT
ARG ODOO_RELEASE=20261102
# Tue, 03 Nov 2026 00:19:08 GMT
ARG ODOO_SHA=a68201e81fff90efd7f7bc7f5f1d8ac43d633587
# Tue, 03 Nov 2026 00:20:16 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261102 ODOO_SHA=a68201e81fff90efd7f7bc7f5f1d8ac43d633587
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 03 Nov 2026 00:20:17 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 03 Nov 2026 00:20:17 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 03 Nov 2026 00:20:17 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261102 ODOO_SHA=a68201e81fff90efd7f7bc7f5f1d8ac43d633587
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 03 Nov 2026 00:20:17 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 03 Nov 2026 00:20:17 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 03 Nov 2026 00:20:17 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 03 Nov 2026 00:20:17 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 03 Nov 2026 00:20:17 GMT
USER odoo
# Tue, 03 Nov 2026 00:20:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 03 Nov 2026 00:20:17 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d542da8bf0547edf28091403cd9ec555fe73218390b03735b9adec48302dfa60`  
		Last Modified: Tue, 03 Nov 2026 00:22:07 GMT  
		Size: 238.7 MB (238715113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef116428f66f10b627b701cd07c3055ca4759100274e7287bc836ae2aadcd5f2`  
		Last Modified: Tue, 03 Nov 2026 00:21:59 GMT  
		Size: 14.2 MB (14226162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98b77fee58b3a378cd3f13b0664b83e9efc865832c7d8f84cdd3dcd8ee0bb74c`  
		Last Modified: Tue, 03 Nov 2026 00:21:58 GMT  
		Size: 874.0 KB (873993 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ae1ebb5cb095fbdb61594ba1e4fcf470661af41e896c2073e223150315f43db`  
		Last Modified: Tue, 03 Nov 2026 00:22:11 GMT  
		Size: 416.3 MB (416296033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8f6dd177bdbf8dab2d313c603e06724d33221f5da3a8d7c3fc12f80820fb8d4`  
		Last Modified: Tue, 03 Nov 2026 00:22:00 GMT  
		Size: 719.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4498368ec6626e03643422acc5d70339329c9f9fa39158f9234364b3ff4ff7d0`  
		Last Modified: Tue, 03 Nov 2026 00:22:01 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd1323a3db4b5f6214163904c83a9e2ad88ab52bd7d469f187cfff54e600aa65`  
		Last Modified: Tue, 03 Nov 2026 00:22:01 GMT  
		Size: 595.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90e59b8c5a901a8bca160bdc42888a2132e1d79074786c8a0e687df9f5cd5376`  
		Last Modified: Tue, 03 Nov 2026 00:22:02 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19.0` - unknown; unknown

```console
$ docker pull odoo@sha256:39c24833a3a125daad224b769a1cc07b6d9ba712ddd2d74bd58f6ec4457d280a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.7 MB (52663404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd08dd85d8631d0235d74b0f03c47cb6051d32760f7f80bb4cf98133e2d8644f`

```dockerfile
```

-	Layers:
	-	`sha256:0ae04d8ac90527ee07b581e440e54197f2d63480b28ed6df500ee6bb8c27dc70`  
		Last Modified: Tue, 03 Nov 2026 00:22:01 GMT  
		Size: 52.6 MB (52636207 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0b223d992e7d4a25c289353044a80ea617cb5f4fbcab952fb19e893084a7fd5d`  
		Last Modified: Tue, 03 Nov 2026 00:21:58 GMT  
		Size: 27.2 KB (27197 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:19.0` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:e165f42554c167e0f26460b51207c8d26ed5e9ed53ee2454727fad8874ab9cb3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **696.4 MB (696352118 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:055341009b4c26074437c614b92436f4822e3f4366a385e76b7974c3caf6ae33`
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
# Tue, 03 Nov 2026 00:17:41 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 03 Nov 2026 00:17:41 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 03 Nov 2026 00:17:41 GMT
ENV LANG=en_US.UTF-8
# Tue, 03 Nov 2026 00:17:41 GMT
ARG TARGETARCH=arm64
# Tue, 03 Nov 2026 00:17:41 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 03 Nov 2026 00:17:51 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:18:51 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:18:51 GMT
ENV ODOO_VERSION=19.0
# Tue, 03 Nov 2026 00:18:51 GMT
ARG ODOO_RELEASE=20261102
# Tue, 03 Nov 2026 00:18:51 GMT
ARG ODOO_SHA=a68201e81fff90efd7f7bc7f5f1d8ac43d633587
# Tue, 03 Nov 2026 00:20:02 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261102 ODOO_SHA=a68201e81fff90efd7f7bc7f5f1d8ac43d633587
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 03 Nov 2026 00:20:03 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 03 Nov 2026 00:20:03 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 03 Nov 2026 00:20:03 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261102 ODOO_SHA=a68201e81fff90efd7f7bc7f5f1d8ac43d633587
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 03 Nov 2026 00:20:03 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 03 Nov 2026 00:20:03 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 03 Nov 2026 00:20:03 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 03 Nov 2026 00:20:03 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 03 Nov 2026 00:20:03 GMT
USER odoo
# Tue, 03 Nov 2026 00:20:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 03 Nov 2026 00:20:03 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:e2d2bb84d02254f4be480ca3c62f94fc12ac959c11b3ce5bd7da3f411b2b9607`  
		Last Modified: Sun, 25 Oct 2026 14:50:12 GMT  
		Size: 28.9 MB (28940126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d956ecea64b769d48a71d2fbd479c20d7994d5ad7a4728328d3ec0d2fd3bae1`  
		Last Modified: Tue, 03 Nov 2026 00:21:55 GMT  
		Size: 236.2 MB (236180413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5ef62f106d88e0f481596c7577e267ab0e23c35fdb14827bfa4d2d9f32c94df`  
		Last Modified: Tue, 03 Nov 2026 00:21:47 GMT  
		Size: 14.2 MB (14197262 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0aea37c5ef7535b978dac05c689d9bcbbfc64c94f0091596b2708b7f10854c1c`  
		Last Modified: Tue, 03 Nov 2026 00:21:46 GMT  
		Size: 873.9 KB (873861 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a3613027a6599275a5c4428ce1e4043f84b03107d98401f9ae70121a05ea268`  
		Last Modified: Tue, 03 Nov 2026 00:21:57 GMT  
		Size: 416.2 MB (416157706 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd9e0bb19481778c9564290762a191702568386b7a61d85b69030a5a39d47b2a`  
		Last Modified: Tue, 03 Nov 2026 00:21:48 GMT  
		Size: 719.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c881b64be8fa165fe2681381cbf47d80c787cdb479e304dcd8cfe709050ea3c5`  
		Last Modified: Tue, 03 Nov 2026 00:21:49 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a819f53f1fbac460e04d01d604aaeba1ecb8426b7405d4a5ab624a3c70dfe7c`  
		Last Modified: Tue, 03 Nov 2026 00:21:49 GMT  
		Size: 596.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49736bc74082c7969dfc3140ec02a3a6950ec12cf7c64539bee7ec998eaf0b03`  
		Last Modified: Tue, 03 Nov 2026 00:21:50 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19.0` - unknown; unknown

```console
$ docker pull odoo@sha256:68b62d4e667b8991b2c0c13aaeaa644eb71abc6fc79ddcd5b6c197697c34c071
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.7 MB (52670828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee1bbe7a37842cac2c0de2786b72a1d21168268e124b98599db535e43a94b410`

```dockerfile
```

-	Layers:
	-	`sha256:60a7ec831028738db3c5de1b447098fd258171b9b670dadd483ba49192965d02`  
		Last Modified: Tue, 03 Nov 2026 00:21:49 GMT  
		Size: 52.6 MB (52643479 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:119e18e7e87164bfa02a4430e4db633851705d1f5e77024aec4d4d7555b1d46c`  
		Last Modified: Tue, 03 Nov 2026 00:21:46 GMT  
		Size: 27.3 KB (27349 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:19.0` - linux; ppc64le

```console
$ docker pull odoo@sha256:d96ef0d5377f73f6c14aab75160d392fe7568b001e185e12f4c40bf498954a68
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **716.4 MB (716363874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9c1a002e2494bb18b699ab51b589e5d184728da9602a5a0558a26453df9dbcb`
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
# Tue, 03 Nov 2026 00:15:59 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 03 Nov 2026 00:15:59 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 03 Nov 2026 00:15:59 GMT
ENV LANG=en_US.UTF-8
# Tue, 03 Nov 2026 00:15:59 GMT
ARG TARGETARCH=ppc64le
# Tue, 03 Nov 2026 00:15:59 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 03 Nov 2026 00:16:13 GMT
# ARGS: TARGETARCH=ppc64le
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:20:56 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:20:56 GMT
ENV ODOO_VERSION=19.0
# Tue, 03 Nov 2026 00:20:56 GMT
ARG ODOO_RELEASE=20261102
# Tue, 03 Nov 2026 00:20:56 GMT
ARG ODOO_SHA=a68201e81fff90efd7f7bc7f5f1d8ac43d633587
# Tue, 03 Nov 2026 00:24:43 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261102 ODOO_SHA=a68201e81fff90efd7f7bc7f5f1d8ac43d633587
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 03 Nov 2026 00:24:47 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 03 Nov 2026 00:24:47 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 03 Nov 2026 00:24:48 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261102 ODOO_SHA=a68201e81fff90efd7f7bc7f5f1d8ac43d633587
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 03 Nov 2026 00:24:48 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 03 Nov 2026 00:24:48 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 03 Nov 2026 00:24:48 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 03 Nov 2026 00:24:49 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 03 Nov 2026 00:24:49 GMT
USER odoo
# Tue, 03 Nov 2026 00:24:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 03 Nov 2026 00:24:49 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:400d78a2b842f2bd938ae79326cc66475d11b949ac6b2acbfbc7709090964eb8`  
		Last Modified: Sun, 25 Oct 2026 14:50:25 GMT  
		Size: 34.4 MB (34378308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:250157a23803c3e07f3e4465e1f9606abc0c5e21e600249deaa9fda75f2bf5ba`  
		Last Modified: Tue, 03 Nov 2026 00:29:16 GMT  
		Size: 249.4 MB (249382793 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06a6eeba402f3ba273d07fe34e9630bd8de1e44bdb48d6f4deb3858cf3e566f6`  
		Last Modified: Tue, 03 Nov 2026 00:29:06 GMT  
		Size: 14.7 MB (14743154 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d91b9a2240116b1addde2f24ee7af737939fec6464bdfec0bc9b2cce1a828265`  
		Last Modified: Tue, 03 Nov 2026 00:29:05 GMT  
		Size: 875.1 KB (875106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccd188e3980b40b3d2180f6883edd1cdc46c55f47ff52b104cd85aad612bbc48`  
		Last Modified: Tue, 03 Nov 2026 00:29:19 GMT  
		Size: 417.0 MB (416981756 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29ec8b3719d45feb173dd6c063b45f5d156f87df238c02b46f98a9452ba5fb1a`  
		Last Modified: Tue, 03 Nov 2026 00:29:07 GMT  
		Size: 718.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc8db1d73a6f0f3264e24d38c3cafd1be24500400f019f6b7cb72f86fedaa7ff`  
		Last Modified: Tue, 03 Nov 2026 00:29:08 GMT  
		Size: 558.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d2d0ddc9b191af1d6abc51033cd87279c00a94345f34a587fdac5e7410271c1`  
		Last Modified: Tue, 03 Nov 2026 00:29:08 GMT  
		Size: 601.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8040926e2b73368b8714801440c20ba7318d4222c6b42799da9bfb674fa0bff`  
		Last Modified: Tue, 03 Nov 2026 00:29:09 GMT  
		Size: 880.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19.0` - unknown; unknown

```console
$ docker pull odoo@sha256:96777eefcfd642667af4bd4d3c4d85017ab2fe91611284acb12758027cb83229
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.7 MB (52671823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31a3534805c13fbab023e706aa5978e18e6ea1d16b98a49acf62dcfa3ab20515`

```dockerfile
```

-	Layers:
	-	`sha256:a34e3dcd4769902539293bb607bd4045a4a72f308bfb9f98f7a373f9674a9c9d`  
		Last Modified: Tue, 03 Nov 2026 00:29:09 GMT  
		Size: 52.6 MB (52644571 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:33039397c42264422c0c54e45aef840b35ae95f177902b4814fc41a541ed27cf`  
		Last Modified: Tue, 03 Nov 2026 00:29:05 GMT  
		Size: 27.3 KB (27252 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:19.0-20261102`

```console
$ docker pull odoo@sha256:5e755c725b3c43cf0be16d579904e1418300db3a2c44952f928eaddbcb0cc16d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `odoo:19.0-20261102` - linux; amd64

```console
$ docker pull odoo@sha256:08374de09bab5d80851c5709896aa49917e6c6a893b39025d6669db908e238b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **699.9 MB (699881662 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e397079360907eb52bf648be9c3232338d7bc03142132d613bff2b8de3283ed`
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
# Tue, 03 Nov 2026 00:17:21 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 03 Nov 2026 00:17:21 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 03 Nov 2026 00:17:21 GMT
ENV LANG=en_US.UTF-8
# Tue, 03 Nov 2026 00:17:21 GMT
ARG TARGETARCH=amd64
# Tue, 03 Nov 2026 00:17:21 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 03 Nov 2026 00:17:30 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:19:08 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:19:08 GMT
ENV ODOO_VERSION=19.0
# Tue, 03 Nov 2026 00:19:08 GMT
ARG ODOO_RELEASE=20261102
# Tue, 03 Nov 2026 00:19:08 GMT
ARG ODOO_SHA=a68201e81fff90efd7f7bc7f5f1d8ac43d633587
# Tue, 03 Nov 2026 00:20:16 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261102 ODOO_SHA=a68201e81fff90efd7f7bc7f5f1d8ac43d633587
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 03 Nov 2026 00:20:17 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 03 Nov 2026 00:20:17 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 03 Nov 2026 00:20:17 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261102 ODOO_SHA=a68201e81fff90efd7f7bc7f5f1d8ac43d633587
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 03 Nov 2026 00:20:17 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 03 Nov 2026 00:20:17 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 03 Nov 2026 00:20:17 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 03 Nov 2026 00:20:17 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 03 Nov 2026 00:20:17 GMT
USER odoo
# Tue, 03 Nov 2026 00:20:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 03 Nov 2026 00:20:17 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d542da8bf0547edf28091403cd9ec555fe73218390b03735b9adec48302dfa60`  
		Last Modified: Tue, 03 Nov 2026 00:22:07 GMT  
		Size: 238.7 MB (238715113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef116428f66f10b627b701cd07c3055ca4759100274e7287bc836ae2aadcd5f2`  
		Last Modified: Tue, 03 Nov 2026 00:21:59 GMT  
		Size: 14.2 MB (14226162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98b77fee58b3a378cd3f13b0664b83e9efc865832c7d8f84cdd3dcd8ee0bb74c`  
		Last Modified: Tue, 03 Nov 2026 00:21:58 GMT  
		Size: 874.0 KB (873993 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ae1ebb5cb095fbdb61594ba1e4fcf470661af41e896c2073e223150315f43db`  
		Last Modified: Tue, 03 Nov 2026 00:22:11 GMT  
		Size: 416.3 MB (416296033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8f6dd177bdbf8dab2d313c603e06724d33221f5da3a8d7c3fc12f80820fb8d4`  
		Last Modified: Tue, 03 Nov 2026 00:22:00 GMT  
		Size: 719.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4498368ec6626e03643422acc5d70339329c9f9fa39158f9234364b3ff4ff7d0`  
		Last Modified: Tue, 03 Nov 2026 00:22:01 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd1323a3db4b5f6214163904c83a9e2ad88ab52bd7d469f187cfff54e600aa65`  
		Last Modified: Tue, 03 Nov 2026 00:22:01 GMT  
		Size: 595.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90e59b8c5a901a8bca160bdc42888a2132e1d79074786c8a0e687df9f5cd5376`  
		Last Modified: Tue, 03 Nov 2026 00:22:02 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19.0-20261102` - unknown; unknown

```console
$ docker pull odoo@sha256:39c24833a3a125daad224b769a1cc07b6d9ba712ddd2d74bd58f6ec4457d280a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.7 MB (52663404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd08dd85d8631d0235d74b0f03c47cb6051d32760f7f80bb4cf98133e2d8644f`

```dockerfile
```

-	Layers:
	-	`sha256:0ae04d8ac90527ee07b581e440e54197f2d63480b28ed6df500ee6bb8c27dc70`  
		Last Modified: Tue, 03 Nov 2026 00:22:01 GMT  
		Size: 52.6 MB (52636207 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0b223d992e7d4a25c289353044a80ea617cb5f4fbcab952fb19e893084a7fd5d`  
		Last Modified: Tue, 03 Nov 2026 00:21:58 GMT  
		Size: 27.2 KB (27197 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:19.0-20261102` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:e165f42554c167e0f26460b51207c8d26ed5e9ed53ee2454727fad8874ab9cb3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **696.4 MB (696352118 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:055341009b4c26074437c614b92436f4822e3f4366a385e76b7974c3caf6ae33`
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
# Tue, 03 Nov 2026 00:17:41 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 03 Nov 2026 00:17:41 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 03 Nov 2026 00:17:41 GMT
ENV LANG=en_US.UTF-8
# Tue, 03 Nov 2026 00:17:41 GMT
ARG TARGETARCH=arm64
# Tue, 03 Nov 2026 00:17:41 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 03 Nov 2026 00:17:51 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:18:51 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:18:51 GMT
ENV ODOO_VERSION=19.0
# Tue, 03 Nov 2026 00:18:51 GMT
ARG ODOO_RELEASE=20261102
# Tue, 03 Nov 2026 00:18:51 GMT
ARG ODOO_SHA=a68201e81fff90efd7f7bc7f5f1d8ac43d633587
# Tue, 03 Nov 2026 00:20:02 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261102 ODOO_SHA=a68201e81fff90efd7f7bc7f5f1d8ac43d633587
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 03 Nov 2026 00:20:03 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 03 Nov 2026 00:20:03 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 03 Nov 2026 00:20:03 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261102 ODOO_SHA=a68201e81fff90efd7f7bc7f5f1d8ac43d633587
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 03 Nov 2026 00:20:03 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 03 Nov 2026 00:20:03 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 03 Nov 2026 00:20:03 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 03 Nov 2026 00:20:03 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 03 Nov 2026 00:20:03 GMT
USER odoo
# Tue, 03 Nov 2026 00:20:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 03 Nov 2026 00:20:03 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:e2d2bb84d02254f4be480ca3c62f94fc12ac959c11b3ce5bd7da3f411b2b9607`  
		Last Modified: Sun, 25 Oct 2026 14:50:12 GMT  
		Size: 28.9 MB (28940126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d956ecea64b769d48a71d2fbd479c20d7994d5ad7a4728328d3ec0d2fd3bae1`  
		Last Modified: Tue, 03 Nov 2026 00:21:55 GMT  
		Size: 236.2 MB (236180413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5ef62f106d88e0f481596c7577e267ab0e23c35fdb14827bfa4d2d9f32c94df`  
		Last Modified: Tue, 03 Nov 2026 00:21:47 GMT  
		Size: 14.2 MB (14197262 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0aea37c5ef7535b978dac05c689d9bcbbfc64c94f0091596b2708b7f10854c1c`  
		Last Modified: Tue, 03 Nov 2026 00:21:46 GMT  
		Size: 873.9 KB (873861 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a3613027a6599275a5c4428ce1e4043f84b03107d98401f9ae70121a05ea268`  
		Last Modified: Tue, 03 Nov 2026 00:21:57 GMT  
		Size: 416.2 MB (416157706 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd9e0bb19481778c9564290762a191702568386b7a61d85b69030a5a39d47b2a`  
		Last Modified: Tue, 03 Nov 2026 00:21:48 GMT  
		Size: 719.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c881b64be8fa165fe2681381cbf47d80c787cdb479e304dcd8cfe709050ea3c5`  
		Last Modified: Tue, 03 Nov 2026 00:21:49 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a819f53f1fbac460e04d01d604aaeba1ecb8426b7405d4a5ab624a3c70dfe7c`  
		Last Modified: Tue, 03 Nov 2026 00:21:49 GMT  
		Size: 596.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49736bc74082c7969dfc3140ec02a3a6950ec12cf7c64539bee7ec998eaf0b03`  
		Last Modified: Tue, 03 Nov 2026 00:21:50 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19.0-20261102` - unknown; unknown

```console
$ docker pull odoo@sha256:68b62d4e667b8991b2c0c13aaeaa644eb71abc6fc79ddcd5b6c197697c34c071
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.7 MB (52670828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee1bbe7a37842cac2c0de2786b72a1d21168268e124b98599db535e43a94b410`

```dockerfile
```

-	Layers:
	-	`sha256:60a7ec831028738db3c5de1b447098fd258171b9b670dadd483ba49192965d02`  
		Last Modified: Tue, 03 Nov 2026 00:21:49 GMT  
		Size: 52.6 MB (52643479 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:119e18e7e87164bfa02a4430e4db633851705d1f5e77024aec4d4d7555b1d46c`  
		Last Modified: Tue, 03 Nov 2026 00:21:46 GMT  
		Size: 27.3 KB (27349 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:19.0-20261102` - linux; ppc64le

```console
$ docker pull odoo@sha256:d96ef0d5377f73f6c14aab75160d392fe7568b001e185e12f4c40bf498954a68
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **716.4 MB (716363874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9c1a002e2494bb18b699ab51b589e5d184728da9602a5a0558a26453df9dbcb`
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
# Tue, 03 Nov 2026 00:15:59 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 03 Nov 2026 00:15:59 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 03 Nov 2026 00:15:59 GMT
ENV LANG=en_US.UTF-8
# Tue, 03 Nov 2026 00:15:59 GMT
ARG TARGETARCH=ppc64le
# Tue, 03 Nov 2026 00:15:59 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 03 Nov 2026 00:16:13 GMT
# ARGS: TARGETARCH=ppc64le
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:20:56 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:20:56 GMT
ENV ODOO_VERSION=19.0
# Tue, 03 Nov 2026 00:20:56 GMT
ARG ODOO_RELEASE=20261102
# Tue, 03 Nov 2026 00:20:56 GMT
ARG ODOO_SHA=a68201e81fff90efd7f7bc7f5f1d8ac43d633587
# Tue, 03 Nov 2026 00:24:43 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261102 ODOO_SHA=a68201e81fff90efd7f7bc7f5f1d8ac43d633587
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 03 Nov 2026 00:24:47 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 03 Nov 2026 00:24:47 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 03 Nov 2026 00:24:48 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261102 ODOO_SHA=a68201e81fff90efd7f7bc7f5f1d8ac43d633587
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 03 Nov 2026 00:24:48 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 03 Nov 2026 00:24:48 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 03 Nov 2026 00:24:48 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 03 Nov 2026 00:24:49 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 03 Nov 2026 00:24:49 GMT
USER odoo
# Tue, 03 Nov 2026 00:24:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 03 Nov 2026 00:24:49 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:400d78a2b842f2bd938ae79326cc66475d11b949ac6b2acbfbc7709090964eb8`  
		Last Modified: Sun, 25 Oct 2026 14:50:25 GMT  
		Size: 34.4 MB (34378308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:250157a23803c3e07f3e4465e1f9606abc0c5e21e600249deaa9fda75f2bf5ba`  
		Last Modified: Tue, 03 Nov 2026 00:29:16 GMT  
		Size: 249.4 MB (249382793 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06a6eeba402f3ba273d07fe34e9630bd8de1e44bdb48d6f4deb3858cf3e566f6`  
		Last Modified: Tue, 03 Nov 2026 00:29:06 GMT  
		Size: 14.7 MB (14743154 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d91b9a2240116b1addde2f24ee7af737939fec6464bdfec0bc9b2cce1a828265`  
		Last Modified: Tue, 03 Nov 2026 00:29:05 GMT  
		Size: 875.1 KB (875106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccd188e3980b40b3d2180f6883edd1cdc46c55f47ff52b104cd85aad612bbc48`  
		Last Modified: Tue, 03 Nov 2026 00:29:19 GMT  
		Size: 417.0 MB (416981756 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29ec8b3719d45feb173dd6c063b45f5d156f87df238c02b46f98a9452ba5fb1a`  
		Last Modified: Tue, 03 Nov 2026 00:29:07 GMT  
		Size: 718.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc8db1d73a6f0f3264e24d38c3cafd1be24500400f019f6b7cb72f86fedaa7ff`  
		Last Modified: Tue, 03 Nov 2026 00:29:08 GMT  
		Size: 558.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d2d0ddc9b191af1d6abc51033cd87279c00a94345f34a587fdac5e7410271c1`  
		Last Modified: Tue, 03 Nov 2026 00:29:08 GMT  
		Size: 601.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8040926e2b73368b8714801440c20ba7318d4222c6b42799da9bfb674fa0bff`  
		Last Modified: Tue, 03 Nov 2026 00:29:09 GMT  
		Size: 880.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19.0-20261102` - unknown; unknown

```console
$ docker pull odoo@sha256:96777eefcfd642667af4bd4d3c4d85017ab2fe91611284acb12758027cb83229
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.7 MB (52671823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31a3534805c13fbab023e706aa5978e18e6ea1d16b98a49acf62dcfa3ab20515`

```dockerfile
```

-	Layers:
	-	`sha256:a34e3dcd4769902539293bb607bd4045a4a72f308bfb9f98f7a373f9674a9c9d`  
		Last Modified: Tue, 03 Nov 2026 00:29:09 GMT  
		Size: 52.6 MB (52644571 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:33039397c42264422c0c54e45aef840b35ae95f177902b4814fc41a541ed27cf`  
		Last Modified: Tue, 03 Nov 2026 00:29:05 GMT  
		Size: 27.3 KB (27252 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:20`

```console
$ docker pull odoo@sha256:a97a7665e2b9fd890e12785491a2c91d779f800bcbc30873dada1c8748b28f1c
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
$ docker pull odoo@sha256:99fad02652e93ad61abb6dc8fe210c59cb4cd1ef6c6c118385e3a8cc2ff7dc34
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **804.2 MB (804151235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18919079d2b2a7d18b39423c7f429513abc6474ba3daaa2bc732afaefdae164b`
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
# Tue, 03 Nov 2026 00:17:30 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 03 Nov 2026 00:17:30 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 03 Nov 2026 00:17:30 GMT
ENV LANG=en_US.UTF-8
# Tue, 03 Nov 2026 00:17:30 GMT
ARG TARGETARCH=amd64
# Tue, 03 Nov 2026 00:17:30 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 03 Nov 2026 00:17:40 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:18:56 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:18:56 GMT
ENV ODOO_VERSION=20.0
# Tue, 03 Nov 2026 00:18:56 GMT
ARG ODOO_RELEASE=20261102
# Tue, 03 Nov 2026 00:18:56 GMT
ARG ODOO_SHA=0706abac09a953f10007e26aa31767af5f9d1b2b
# Tue, 03 Nov 2026 00:20:08 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261102 ODOO_SHA=0706abac09a953f10007e26aa31767af5f9d1b2b
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 03 Nov 2026 00:20:09 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 03 Nov 2026 00:20:09 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 03 Nov 2026 00:20:09 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261102 ODOO_SHA=0706abac09a953f10007e26aa31767af5f9d1b2b
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 03 Nov 2026 00:20:09 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 03 Nov 2026 00:20:09 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 03 Nov 2026 00:20:09 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 03 Nov 2026 00:20:09 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 03 Nov 2026 00:20:09 GMT
USER odoo
# Tue, 03 Nov 2026 00:20:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 03 Nov 2026 00:20:09 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e071ad5406d6fbdbb16bdcee9ce1bd1a998917ff9b18d38164554c449824406`  
		Last Modified: Tue, 03 Nov 2026 00:22:02 GMT  
		Size: 238.7 MB (238714761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f43b709c764c7f552702204584b862b11cd401834278223c20516e05e3e8f88c`  
		Last Modified: Tue, 03 Nov 2026 00:21:54 GMT  
		Size: 14.2 MB (14226165 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be75d50c8962dd3f86dc0a5075817073ee4f427af160fedfbc52eb130ac93a5a`  
		Last Modified: Tue, 03 Nov 2026 00:21:53 GMT  
		Size: 874.0 KB (873988 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb043f13ddd13424e42c376f70400f17d6f5e25e65e58a3ddf3dca9dce0d82b8`  
		Last Modified: Tue, 03 Nov 2026 00:22:08 GMT  
		Size: 520.6 MB (520565938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1aa88749e14ec418c8da78212308516d33a26c9ff8eadab6cedd56661a63e618`  
		Last Modified: Tue, 03 Nov 2026 00:21:54 GMT  
		Size: 718.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64398bf6644804e6c22318f8f48c078bf3339db35383426bc2b5191a1010e6d4`  
		Last Modified: Tue, 03 Nov 2026 00:21:55 GMT  
		Size: 566.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3240963449906a627ac4d1166e9d3aa6b105c2c5ccc85764e43f4bec33b953bf`  
		Last Modified: Tue, 03 Nov 2026 00:21:55 GMT  
		Size: 607.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cf27859beea1bb53f1b2404e05101704beaf4f758f565f0b02fca06ed288919`  
		Last Modified: Tue, 03 Nov 2026 00:21:57 GMT  
		Size: 880.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:20` - unknown; unknown

```console
$ docker pull odoo@sha256:87621272dbf8cd03f0a96d076e2bfab692bab7155c042527015fc95d8175b287
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.3 MB (55345810 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11e27acfec2c10eb3516fd61992dc5b655e0ba7d0bc7a36e8e7bd081450c8a8d`

```dockerfile
```

-	Layers:
	-	`sha256:c0b55ace42eafb952b61f691d5e0309ebd41480fb1188addf0a63fb0e509cf3a`  
		Last Modified: Tue, 03 Nov 2026 00:21:56 GMT  
		Size: 55.3 MB (55318321 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:85e055fd0552da259a265b574faeb0989f71b8a2adcb03144574a74ba0c1552d`  
		Last Modified: Tue, 03 Nov 2026 00:21:53 GMT  
		Size: 27.5 KB (27489 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:20` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:627c1512673bb1a7fd5661e0ab7809407646e9c4618c4765de0cae08d07a7e41
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **800.6 MB (800607230 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32b13c8c052f5f6b6482bd432a2b0d1abd629d1586cbaad9d55083ad0a5676f6`
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
# Tue, 03 Nov 2026 00:17:38 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 03 Nov 2026 00:17:38 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 03 Nov 2026 00:17:38 GMT
ENV LANG=en_US.UTF-8
# Tue, 03 Nov 2026 00:17:38 GMT
ARG TARGETARCH=arm64
# Tue, 03 Nov 2026 00:17:38 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 03 Nov 2026 00:17:48 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:18:53 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:18:53 GMT
ENV ODOO_VERSION=20.0
# Tue, 03 Nov 2026 00:18:53 GMT
ARG ODOO_RELEASE=20261102
# Tue, 03 Nov 2026 00:18:53 GMT
ARG ODOO_SHA=0706abac09a953f10007e26aa31767af5f9d1b2b
# Tue, 03 Nov 2026 00:20:15 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261102 ODOO_SHA=0706abac09a953f10007e26aa31767af5f9d1b2b
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 03 Nov 2026 00:20:16 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 03 Nov 2026 00:20:16 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 03 Nov 2026 00:20:16 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261102 ODOO_SHA=0706abac09a953f10007e26aa31767af5f9d1b2b
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 03 Nov 2026 00:20:16 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 03 Nov 2026 00:20:16 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 03 Nov 2026 00:20:16 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 03 Nov 2026 00:20:16 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 03 Nov 2026 00:20:16 GMT
USER odoo
# Tue, 03 Nov 2026 00:20:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 03 Nov 2026 00:20:16 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:e2d2bb84d02254f4be480ca3c62f94fc12ac959c11b3ce5bd7da3f411b2b9607`  
		Last Modified: Sun, 25 Oct 2026 14:50:12 GMT  
		Size: 28.9 MB (28940126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a6bdc0259885efc6f9b807882520bd7d57fad73606982c678e61f09fc65e589`  
		Last Modified: Tue, 03 Nov 2026 00:22:18 GMT  
		Size: 236.2 MB (236178230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2c78139e59fa90dfd4519d00d27da0f215110f8b471094d7e95e03512686351`  
		Last Modified: Tue, 03 Nov 2026 00:22:10 GMT  
		Size: 14.2 MB (14197381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b18b9f88a004420909c5cb9a55f634d6f172ace3cec14640ed87e7efcec3e79`  
		Last Modified: Tue, 03 Nov 2026 00:22:10 GMT  
		Size: 873.9 KB (873908 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a54dd0386c48e53e64b443ec99c05b9fd4e6fb9755179ed606f6b179f057d44f`  
		Last Modified: Tue, 03 Nov 2026 00:22:22 GMT  
		Size: 520.4 MB (520414816 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25a7257906fad5ba033d93cceb6e6f0c46a34bf4292c0dd7c7bf94bddd3b0fc6`  
		Last Modified: Tue, 03 Nov 2026 00:22:11 GMT  
		Size: 718.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ac4479726d883ce5631b414b079c8eb7a0efb1e67f6b5782af80bc8985d3e1e`  
		Last Modified: Tue, 03 Nov 2026 00:22:12 GMT  
		Size: 566.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac9094acc75ce0bd6e7e43aaffebfeef63dcaef77d2d70e3970095b3dd1925ab`  
		Last Modified: Tue, 03 Nov 2026 00:22:12 GMT  
		Size: 607.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00b8af124f8ddcf055a7106235b9198f65d332db18159238e17b5aa11963d041`  
		Last Modified: Tue, 03 Nov 2026 00:22:13 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:20` - unknown; unknown

```console
$ docker pull odoo@sha256:74761632ce866621173e65931c35aec7bc1df16055cade27066a2c8544dad56e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.4 MB (55353260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6f71553330ee583ea609f10a6d7d077c534eb2b9669790ff3592539934588dc`

```dockerfile
```

-	Layers:
	-	`sha256:b4d112ce6f5f2406c19e12c96836cd60527f7b4bb291f447f38b4f585dc649a1`  
		Last Modified: Tue, 03 Nov 2026 00:22:12 GMT  
		Size: 55.3 MB (55325605 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c3bf87985c97f78282a6ae7425493637117194efdda877a47ec738fe0921f489`  
		Last Modified: Tue, 03 Nov 2026 00:22:09 GMT  
		Size: 27.7 KB (27655 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:20` - linux; ppc64le

```console
$ docker pull odoo@sha256:dea5146bfe0123a316536ba8acee66ac61296900642772c6921fde925d9ca045
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **820.6 MB (820623124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2db58ecdf80633cba6571c9ed19efec27dc9f630189dddab32b7b096d6dc13a8`
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
# Tue, 03 Nov 2026 00:15:59 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 03 Nov 2026 00:15:59 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 03 Nov 2026 00:15:59 GMT
ENV LANG=en_US.UTF-8
# Tue, 03 Nov 2026 00:15:59 GMT
ARG TARGETARCH=ppc64le
# Tue, 03 Nov 2026 00:15:59 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 03 Nov 2026 00:16:13 GMT
# ARGS: TARGETARCH=ppc64le
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:20:56 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:20:56 GMT
ENV ODOO_VERSION=20.0
# Tue, 03 Nov 2026 00:20:56 GMT
ARG ODOO_RELEASE=20261102
# Tue, 03 Nov 2026 00:20:56 GMT
ARG ODOO_SHA=0706abac09a953f10007e26aa31767af5f9d1b2b
# Tue, 03 Nov 2026 00:24:43 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261102 ODOO_SHA=0706abac09a953f10007e26aa31767af5f9d1b2b
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 03 Nov 2026 00:24:47 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 03 Nov 2026 00:24:48 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 03 Nov 2026 00:24:48 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261102 ODOO_SHA=0706abac09a953f10007e26aa31767af5f9d1b2b
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 03 Nov 2026 00:24:48 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 03 Nov 2026 00:24:48 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 03 Nov 2026 00:24:48 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 03 Nov 2026 00:24:49 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 03 Nov 2026 00:24:49 GMT
USER odoo
# Tue, 03 Nov 2026 00:24:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 03 Nov 2026 00:24:49 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:400d78a2b842f2bd938ae79326cc66475d11b949ac6b2acbfbc7709090964eb8`  
		Last Modified: Sun, 25 Oct 2026 14:50:25 GMT  
		Size: 34.4 MB (34378308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:250157a23803c3e07f3e4465e1f9606abc0c5e21e600249deaa9fda75f2bf5ba`  
		Last Modified: Tue, 03 Nov 2026 00:29:16 GMT  
		Size: 249.4 MB (249382793 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06a6eeba402f3ba273d07fe34e9630bd8de1e44bdb48d6f4deb3858cf3e566f6`  
		Last Modified: Tue, 03 Nov 2026 00:29:06 GMT  
		Size: 14.7 MB (14743154 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d91b9a2240116b1addde2f24ee7af737939fec6464bdfec0bc9b2cce1a828265`  
		Last Modified: Tue, 03 Nov 2026 00:29:05 GMT  
		Size: 875.1 KB (875106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7e57628e148c61c4bfec12d56368c915bb7246be4ac65a66674ed3afe9c336c`  
		Last Modified: Tue, 03 Nov 2026 00:29:43 GMT  
		Size: 521.2 MB (521240989 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d61f641126ed0ca731ca344ea9d47a607e5a8ca8d524fee3d497d618884167c3`  
		Last Modified: Tue, 03 Nov 2026 00:29:31 GMT  
		Size: 718.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40aff0ac535a2d6a02efd04bcb411e22c5f0c5d3375299e3755bab6fa609cd6c`  
		Last Modified: Tue, 03 Nov 2026 00:29:31 GMT  
		Size: 567.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88a3c38682bf41f08845a66b47ca925199cf688584b36e8e323e87e10cdf5f9d`  
		Last Modified: Tue, 03 Nov 2026 00:29:31 GMT  
		Size: 610.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:854f73f4b988b6058c0de4eb4013ef7f1eae3191713183cb61f3f33ebfec3dc4`  
		Last Modified: Tue, 03 Nov 2026 00:29:32 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:20` - unknown; unknown

```console
$ docker pull odoo@sha256:97f5eba1c994b3786a7eceb82f626c3bb1f0a5ed7f5e52bdc4a47b1c9e5fbbde
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.4 MB (55354244 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb1ae6a9766a12703786b6d9943a58f88ac7ffe35e11743772b236e0180ad53d`

```dockerfile
```

-	Layers:
	-	`sha256:1e80fdc1a3d2f845c3eb697e753547d9fb6e40430c9d7e6f2800d1f31d611238`  
		Last Modified: Tue, 03 Nov 2026 00:29:34 GMT  
		Size: 55.3 MB (55326691 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d901e3c7ad44144c326fb42ece2bf4aac8ef3de3171972f964c92424e5815f87`  
		Last Modified: Tue, 03 Nov 2026 00:29:31 GMT  
		Size: 27.6 KB (27553 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:20.0`

```console
$ docker pull odoo@sha256:a97a7665e2b9fd890e12785491a2c91d779f800bcbc30873dada1c8748b28f1c
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
$ docker pull odoo@sha256:99fad02652e93ad61abb6dc8fe210c59cb4cd1ef6c6c118385e3a8cc2ff7dc34
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **804.2 MB (804151235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18919079d2b2a7d18b39423c7f429513abc6474ba3daaa2bc732afaefdae164b`
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
# Tue, 03 Nov 2026 00:17:30 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 03 Nov 2026 00:17:30 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 03 Nov 2026 00:17:30 GMT
ENV LANG=en_US.UTF-8
# Tue, 03 Nov 2026 00:17:30 GMT
ARG TARGETARCH=amd64
# Tue, 03 Nov 2026 00:17:30 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 03 Nov 2026 00:17:40 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:18:56 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:18:56 GMT
ENV ODOO_VERSION=20.0
# Tue, 03 Nov 2026 00:18:56 GMT
ARG ODOO_RELEASE=20261102
# Tue, 03 Nov 2026 00:18:56 GMT
ARG ODOO_SHA=0706abac09a953f10007e26aa31767af5f9d1b2b
# Tue, 03 Nov 2026 00:20:08 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261102 ODOO_SHA=0706abac09a953f10007e26aa31767af5f9d1b2b
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 03 Nov 2026 00:20:09 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 03 Nov 2026 00:20:09 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 03 Nov 2026 00:20:09 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261102 ODOO_SHA=0706abac09a953f10007e26aa31767af5f9d1b2b
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 03 Nov 2026 00:20:09 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 03 Nov 2026 00:20:09 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 03 Nov 2026 00:20:09 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 03 Nov 2026 00:20:09 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 03 Nov 2026 00:20:09 GMT
USER odoo
# Tue, 03 Nov 2026 00:20:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 03 Nov 2026 00:20:09 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e071ad5406d6fbdbb16bdcee9ce1bd1a998917ff9b18d38164554c449824406`  
		Last Modified: Tue, 03 Nov 2026 00:22:02 GMT  
		Size: 238.7 MB (238714761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f43b709c764c7f552702204584b862b11cd401834278223c20516e05e3e8f88c`  
		Last Modified: Tue, 03 Nov 2026 00:21:54 GMT  
		Size: 14.2 MB (14226165 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be75d50c8962dd3f86dc0a5075817073ee4f427af160fedfbc52eb130ac93a5a`  
		Last Modified: Tue, 03 Nov 2026 00:21:53 GMT  
		Size: 874.0 KB (873988 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb043f13ddd13424e42c376f70400f17d6f5e25e65e58a3ddf3dca9dce0d82b8`  
		Last Modified: Tue, 03 Nov 2026 00:22:08 GMT  
		Size: 520.6 MB (520565938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1aa88749e14ec418c8da78212308516d33a26c9ff8eadab6cedd56661a63e618`  
		Last Modified: Tue, 03 Nov 2026 00:21:54 GMT  
		Size: 718.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64398bf6644804e6c22318f8f48c078bf3339db35383426bc2b5191a1010e6d4`  
		Last Modified: Tue, 03 Nov 2026 00:21:55 GMT  
		Size: 566.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3240963449906a627ac4d1166e9d3aa6b105c2c5ccc85764e43f4bec33b953bf`  
		Last Modified: Tue, 03 Nov 2026 00:21:55 GMT  
		Size: 607.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cf27859beea1bb53f1b2404e05101704beaf4f758f565f0b02fca06ed288919`  
		Last Modified: Tue, 03 Nov 2026 00:21:57 GMT  
		Size: 880.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:20.0` - unknown; unknown

```console
$ docker pull odoo@sha256:87621272dbf8cd03f0a96d076e2bfab692bab7155c042527015fc95d8175b287
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.3 MB (55345810 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11e27acfec2c10eb3516fd61992dc5b655e0ba7d0bc7a36e8e7bd081450c8a8d`

```dockerfile
```

-	Layers:
	-	`sha256:c0b55ace42eafb952b61f691d5e0309ebd41480fb1188addf0a63fb0e509cf3a`  
		Last Modified: Tue, 03 Nov 2026 00:21:56 GMT  
		Size: 55.3 MB (55318321 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:85e055fd0552da259a265b574faeb0989f71b8a2adcb03144574a74ba0c1552d`  
		Last Modified: Tue, 03 Nov 2026 00:21:53 GMT  
		Size: 27.5 KB (27489 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:20.0` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:627c1512673bb1a7fd5661e0ab7809407646e9c4618c4765de0cae08d07a7e41
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **800.6 MB (800607230 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32b13c8c052f5f6b6482bd432a2b0d1abd629d1586cbaad9d55083ad0a5676f6`
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
# Tue, 03 Nov 2026 00:17:38 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 03 Nov 2026 00:17:38 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 03 Nov 2026 00:17:38 GMT
ENV LANG=en_US.UTF-8
# Tue, 03 Nov 2026 00:17:38 GMT
ARG TARGETARCH=arm64
# Tue, 03 Nov 2026 00:17:38 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 03 Nov 2026 00:17:48 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:18:53 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:18:53 GMT
ENV ODOO_VERSION=20.0
# Tue, 03 Nov 2026 00:18:53 GMT
ARG ODOO_RELEASE=20261102
# Tue, 03 Nov 2026 00:18:53 GMT
ARG ODOO_SHA=0706abac09a953f10007e26aa31767af5f9d1b2b
# Tue, 03 Nov 2026 00:20:15 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261102 ODOO_SHA=0706abac09a953f10007e26aa31767af5f9d1b2b
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 03 Nov 2026 00:20:16 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 03 Nov 2026 00:20:16 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 03 Nov 2026 00:20:16 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261102 ODOO_SHA=0706abac09a953f10007e26aa31767af5f9d1b2b
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 03 Nov 2026 00:20:16 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 03 Nov 2026 00:20:16 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 03 Nov 2026 00:20:16 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 03 Nov 2026 00:20:16 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 03 Nov 2026 00:20:16 GMT
USER odoo
# Tue, 03 Nov 2026 00:20:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 03 Nov 2026 00:20:16 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:e2d2bb84d02254f4be480ca3c62f94fc12ac959c11b3ce5bd7da3f411b2b9607`  
		Last Modified: Sun, 25 Oct 2026 14:50:12 GMT  
		Size: 28.9 MB (28940126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a6bdc0259885efc6f9b807882520bd7d57fad73606982c678e61f09fc65e589`  
		Last Modified: Tue, 03 Nov 2026 00:22:18 GMT  
		Size: 236.2 MB (236178230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2c78139e59fa90dfd4519d00d27da0f215110f8b471094d7e95e03512686351`  
		Last Modified: Tue, 03 Nov 2026 00:22:10 GMT  
		Size: 14.2 MB (14197381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b18b9f88a004420909c5cb9a55f634d6f172ace3cec14640ed87e7efcec3e79`  
		Last Modified: Tue, 03 Nov 2026 00:22:10 GMT  
		Size: 873.9 KB (873908 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a54dd0386c48e53e64b443ec99c05b9fd4e6fb9755179ed606f6b179f057d44f`  
		Last Modified: Tue, 03 Nov 2026 00:22:22 GMT  
		Size: 520.4 MB (520414816 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25a7257906fad5ba033d93cceb6e6f0c46a34bf4292c0dd7c7bf94bddd3b0fc6`  
		Last Modified: Tue, 03 Nov 2026 00:22:11 GMT  
		Size: 718.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ac4479726d883ce5631b414b079c8eb7a0efb1e67f6b5782af80bc8985d3e1e`  
		Last Modified: Tue, 03 Nov 2026 00:22:12 GMT  
		Size: 566.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac9094acc75ce0bd6e7e43aaffebfeef63dcaef77d2d70e3970095b3dd1925ab`  
		Last Modified: Tue, 03 Nov 2026 00:22:12 GMT  
		Size: 607.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00b8af124f8ddcf055a7106235b9198f65d332db18159238e17b5aa11963d041`  
		Last Modified: Tue, 03 Nov 2026 00:22:13 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:20.0` - unknown; unknown

```console
$ docker pull odoo@sha256:74761632ce866621173e65931c35aec7bc1df16055cade27066a2c8544dad56e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.4 MB (55353260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6f71553330ee583ea609f10a6d7d077c534eb2b9669790ff3592539934588dc`

```dockerfile
```

-	Layers:
	-	`sha256:b4d112ce6f5f2406c19e12c96836cd60527f7b4bb291f447f38b4f585dc649a1`  
		Last Modified: Tue, 03 Nov 2026 00:22:12 GMT  
		Size: 55.3 MB (55325605 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c3bf87985c97f78282a6ae7425493637117194efdda877a47ec738fe0921f489`  
		Last Modified: Tue, 03 Nov 2026 00:22:09 GMT  
		Size: 27.7 KB (27655 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:20.0` - linux; ppc64le

```console
$ docker pull odoo@sha256:dea5146bfe0123a316536ba8acee66ac61296900642772c6921fde925d9ca045
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **820.6 MB (820623124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2db58ecdf80633cba6571c9ed19efec27dc9f630189dddab32b7b096d6dc13a8`
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
# Tue, 03 Nov 2026 00:15:59 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 03 Nov 2026 00:15:59 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 03 Nov 2026 00:15:59 GMT
ENV LANG=en_US.UTF-8
# Tue, 03 Nov 2026 00:15:59 GMT
ARG TARGETARCH=ppc64le
# Tue, 03 Nov 2026 00:15:59 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 03 Nov 2026 00:16:13 GMT
# ARGS: TARGETARCH=ppc64le
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:20:56 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:20:56 GMT
ENV ODOO_VERSION=20.0
# Tue, 03 Nov 2026 00:20:56 GMT
ARG ODOO_RELEASE=20261102
# Tue, 03 Nov 2026 00:20:56 GMT
ARG ODOO_SHA=0706abac09a953f10007e26aa31767af5f9d1b2b
# Tue, 03 Nov 2026 00:24:43 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261102 ODOO_SHA=0706abac09a953f10007e26aa31767af5f9d1b2b
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 03 Nov 2026 00:24:47 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 03 Nov 2026 00:24:48 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 03 Nov 2026 00:24:48 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261102 ODOO_SHA=0706abac09a953f10007e26aa31767af5f9d1b2b
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 03 Nov 2026 00:24:48 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 03 Nov 2026 00:24:48 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 03 Nov 2026 00:24:48 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 03 Nov 2026 00:24:49 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 03 Nov 2026 00:24:49 GMT
USER odoo
# Tue, 03 Nov 2026 00:24:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 03 Nov 2026 00:24:49 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:400d78a2b842f2bd938ae79326cc66475d11b949ac6b2acbfbc7709090964eb8`  
		Last Modified: Sun, 25 Oct 2026 14:50:25 GMT  
		Size: 34.4 MB (34378308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:250157a23803c3e07f3e4465e1f9606abc0c5e21e600249deaa9fda75f2bf5ba`  
		Last Modified: Tue, 03 Nov 2026 00:29:16 GMT  
		Size: 249.4 MB (249382793 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06a6eeba402f3ba273d07fe34e9630bd8de1e44bdb48d6f4deb3858cf3e566f6`  
		Last Modified: Tue, 03 Nov 2026 00:29:06 GMT  
		Size: 14.7 MB (14743154 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d91b9a2240116b1addde2f24ee7af737939fec6464bdfec0bc9b2cce1a828265`  
		Last Modified: Tue, 03 Nov 2026 00:29:05 GMT  
		Size: 875.1 KB (875106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7e57628e148c61c4bfec12d56368c915bb7246be4ac65a66674ed3afe9c336c`  
		Last Modified: Tue, 03 Nov 2026 00:29:43 GMT  
		Size: 521.2 MB (521240989 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d61f641126ed0ca731ca344ea9d47a607e5a8ca8d524fee3d497d618884167c3`  
		Last Modified: Tue, 03 Nov 2026 00:29:31 GMT  
		Size: 718.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40aff0ac535a2d6a02efd04bcb411e22c5f0c5d3375299e3755bab6fa609cd6c`  
		Last Modified: Tue, 03 Nov 2026 00:29:31 GMT  
		Size: 567.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88a3c38682bf41f08845a66b47ca925199cf688584b36e8e323e87e10cdf5f9d`  
		Last Modified: Tue, 03 Nov 2026 00:29:31 GMT  
		Size: 610.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:854f73f4b988b6058c0de4eb4013ef7f1eae3191713183cb61f3f33ebfec3dc4`  
		Last Modified: Tue, 03 Nov 2026 00:29:32 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:20.0` - unknown; unknown

```console
$ docker pull odoo@sha256:97f5eba1c994b3786a7eceb82f626c3bb1f0a5ed7f5e52bdc4a47b1c9e5fbbde
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.4 MB (55354244 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb1ae6a9766a12703786b6d9943a58f88ac7ffe35e11743772b236e0180ad53d`

```dockerfile
```

-	Layers:
	-	`sha256:1e80fdc1a3d2f845c3eb697e753547d9fb6e40430c9d7e6f2800d1f31d611238`  
		Last Modified: Tue, 03 Nov 2026 00:29:34 GMT  
		Size: 55.3 MB (55326691 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d901e3c7ad44144c326fb42ece2bf4aac8ef3de3171972f964c92424e5815f87`  
		Last Modified: Tue, 03 Nov 2026 00:29:31 GMT  
		Size: 27.6 KB (27553 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:20.0-20261102`

```console
$ docker pull odoo@sha256:a97a7665e2b9fd890e12785491a2c91d779f800bcbc30873dada1c8748b28f1c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `odoo:20.0-20261102` - linux; amd64

```console
$ docker pull odoo@sha256:99fad02652e93ad61abb6dc8fe210c59cb4cd1ef6c6c118385e3a8cc2ff7dc34
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **804.2 MB (804151235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18919079d2b2a7d18b39423c7f429513abc6474ba3daaa2bc732afaefdae164b`
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
# Tue, 03 Nov 2026 00:17:30 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 03 Nov 2026 00:17:30 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 03 Nov 2026 00:17:30 GMT
ENV LANG=en_US.UTF-8
# Tue, 03 Nov 2026 00:17:30 GMT
ARG TARGETARCH=amd64
# Tue, 03 Nov 2026 00:17:30 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 03 Nov 2026 00:17:40 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:18:56 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:18:56 GMT
ENV ODOO_VERSION=20.0
# Tue, 03 Nov 2026 00:18:56 GMT
ARG ODOO_RELEASE=20261102
# Tue, 03 Nov 2026 00:18:56 GMT
ARG ODOO_SHA=0706abac09a953f10007e26aa31767af5f9d1b2b
# Tue, 03 Nov 2026 00:20:08 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261102 ODOO_SHA=0706abac09a953f10007e26aa31767af5f9d1b2b
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 03 Nov 2026 00:20:09 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 03 Nov 2026 00:20:09 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 03 Nov 2026 00:20:09 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261102 ODOO_SHA=0706abac09a953f10007e26aa31767af5f9d1b2b
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 03 Nov 2026 00:20:09 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 03 Nov 2026 00:20:09 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 03 Nov 2026 00:20:09 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 03 Nov 2026 00:20:09 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 03 Nov 2026 00:20:09 GMT
USER odoo
# Tue, 03 Nov 2026 00:20:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 03 Nov 2026 00:20:09 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e071ad5406d6fbdbb16bdcee9ce1bd1a998917ff9b18d38164554c449824406`  
		Last Modified: Tue, 03 Nov 2026 00:22:02 GMT  
		Size: 238.7 MB (238714761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f43b709c764c7f552702204584b862b11cd401834278223c20516e05e3e8f88c`  
		Last Modified: Tue, 03 Nov 2026 00:21:54 GMT  
		Size: 14.2 MB (14226165 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be75d50c8962dd3f86dc0a5075817073ee4f427af160fedfbc52eb130ac93a5a`  
		Last Modified: Tue, 03 Nov 2026 00:21:53 GMT  
		Size: 874.0 KB (873988 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb043f13ddd13424e42c376f70400f17d6f5e25e65e58a3ddf3dca9dce0d82b8`  
		Last Modified: Tue, 03 Nov 2026 00:22:08 GMT  
		Size: 520.6 MB (520565938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1aa88749e14ec418c8da78212308516d33a26c9ff8eadab6cedd56661a63e618`  
		Last Modified: Tue, 03 Nov 2026 00:21:54 GMT  
		Size: 718.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64398bf6644804e6c22318f8f48c078bf3339db35383426bc2b5191a1010e6d4`  
		Last Modified: Tue, 03 Nov 2026 00:21:55 GMT  
		Size: 566.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3240963449906a627ac4d1166e9d3aa6b105c2c5ccc85764e43f4bec33b953bf`  
		Last Modified: Tue, 03 Nov 2026 00:21:55 GMT  
		Size: 607.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cf27859beea1bb53f1b2404e05101704beaf4f758f565f0b02fca06ed288919`  
		Last Modified: Tue, 03 Nov 2026 00:21:57 GMT  
		Size: 880.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:20.0-20261102` - unknown; unknown

```console
$ docker pull odoo@sha256:87621272dbf8cd03f0a96d076e2bfab692bab7155c042527015fc95d8175b287
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.3 MB (55345810 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11e27acfec2c10eb3516fd61992dc5b655e0ba7d0bc7a36e8e7bd081450c8a8d`

```dockerfile
```

-	Layers:
	-	`sha256:c0b55ace42eafb952b61f691d5e0309ebd41480fb1188addf0a63fb0e509cf3a`  
		Last Modified: Tue, 03 Nov 2026 00:21:56 GMT  
		Size: 55.3 MB (55318321 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:85e055fd0552da259a265b574faeb0989f71b8a2adcb03144574a74ba0c1552d`  
		Last Modified: Tue, 03 Nov 2026 00:21:53 GMT  
		Size: 27.5 KB (27489 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:20.0-20261102` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:627c1512673bb1a7fd5661e0ab7809407646e9c4618c4765de0cae08d07a7e41
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **800.6 MB (800607230 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32b13c8c052f5f6b6482bd432a2b0d1abd629d1586cbaad9d55083ad0a5676f6`
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
# Tue, 03 Nov 2026 00:17:38 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 03 Nov 2026 00:17:38 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 03 Nov 2026 00:17:38 GMT
ENV LANG=en_US.UTF-8
# Tue, 03 Nov 2026 00:17:38 GMT
ARG TARGETARCH=arm64
# Tue, 03 Nov 2026 00:17:38 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 03 Nov 2026 00:17:48 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:18:53 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:18:53 GMT
ENV ODOO_VERSION=20.0
# Tue, 03 Nov 2026 00:18:53 GMT
ARG ODOO_RELEASE=20261102
# Tue, 03 Nov 2026 00:18:53 GMT
ARG ODOO_SHA=0706abac09a953f10007e26aa31767af5f9d1b2b
# Tue, 03 Nov 2026 00:20:15 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261102 ODOO_SHA=0706abac09a953f10007e26aa31767af5f9d1b2b
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 03 Nov 2026 00:20:16 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 03 Nov 2026 00:20:16 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 03 Nov 2026 00:20:16 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261102 ODOO_SHA=0706abac09a953f10007e26aa31767af5f9d1b2b
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 03 Nov 2026 00:20:16 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 03 Nov 2026 00:20:16 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 03 Nov 2026 00:20:16 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 03 Nov 2026 00:20:16 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 03 Nov 2026 00:20:16 GMT
USER odoo
# Tue, 03 Nov 2026 00:20:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 03 Nov 2026 00:20:16 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:e2d2bb84d02254f4be480ca3c62f94fc12ac959c11b3ce5bd7da3f411b2b9607`  
		Last Modified: Sun, 25 Oct 2026 14:50:12 GMT  
		Size: 28.9 MB (28940126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a6bdc0259885efc6f9b807882520bd7d57fad73606982c678e61f09fc65e589`  
		Last Modified: Tue, 03 Nov 2026 00:22:18 GMT  
		Size: 236.2 MB (236178230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2c78139e59fa90dfd4519d00d27da0f215110f8b471094d7e95e03512686351`  
		Last Modified: Tue, 03 Nov 2026 00:22:10 GMT  
		Size: 14.2 MB (14197381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b18b9f88a004420909c5cb9a55f634d6f172ace3cec14640ed87e7efcec3e79`  
		Last Modified: Tue, 03 Nov 2026 00:22:10 GMT  
		Size: 873.9 KB (873908 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a54dd0386c48e53e64b443ec99c05b9fd4e6fb9755179ed606f6b179f057d44f`  
		Last Modified: Tue, 03 Nov 2026 00:22:22 GMT  
		Size: 520.4 MB (520414816 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25a7257906fad5ba033d93cceb6e6f0c46a34bf4292c0dd7c7bf94bddd3b0fc6`  
		Last Modified: Tue, 03 Nov 2026 00:22:11 GMT  
		Size: 718.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ac4479726d883ce5631b414b079c8eb7a0efb1e67f6b5782af80bc8985d3e1e`  
		Last Modified: Tue, 03 Nov 2026 00:22:12 GMT  
		Size: 566.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac9094acc75ce0bd6e7e43aaffebfeef63dcaef77d2d70e3970095b3dd1925ab`  
		Last Modified: Tue, 03 Nov 2026 00:22:12 GMT  
		Size: 607.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00b8af124f8ddcf055a7106235b9198f65d332db18159238e17b5aa11963d041`  
		Last Modified: Tue, 03 Nov 2026 00:22:13 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:20.0-20261102` - unknown; unknown

```console
$ docker pull odoo@sha256:74761632ce866621173e65931c35aec7bc1df16055cade27066a2c8544dad56e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.4 MB (55353260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6f71553330ee583ea609f10a6d7d077c534eb2b9669790ff3592539934588dc`

```dockerfile
```

-	Layers:
	-	`sha256:b4d112ce6f5f2406c19e12c96836cd60527f7b4bb291f447f38b4f585dc649a1`  
		Last Modified: Tue, 03 Nov 2026 00:22:12 GMT  
		Size: 55.3 MB (55325605 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c3bf87985c97f78282a6ae7425493637117194efdda877a47ec738fe0921f489`  
		Last Modified: Tue, 03 Nov 2026 00:22:09 GMT  
		Size: 27.7 KB (27655 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:20.0-20261102` - linux; ppc64le

```console
$ docker pull odoo@sha256:dea5146bfe0123a316536ba8acee66ac61296900642772c6921fde925d9ca045
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **820.6 MB (820623124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2db58ecdf80633cba6571c9ed19efec27dc9f630189dddab32b7b096d6dc13a8`
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
# Tue, 03 Nov 2026 00:15:59 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 03 Nov 2026 00:15:59 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 03 Nov 2026 00:15:59 GMT
ENV LANG=en_US.UTF-8
# Tue, 03 Nov 2026 00:15:59 GMT
ARG TARGETARCH=ppc64le
# Tue, 03 Nov 2026 00:15:59 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 03 Nov 2026 00:16:13 GMT
# ARGS: TARGETARCH=ppc64le
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:20:56 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:20:56 GMT
ENV ODOO_VERSION=20.0
# Tue, 03 Nov 2026 00:20:56 GMT
ARG ODOO_RELEASE=20261102
# Tue, 03 Nov 2026 00:20:56 GMT
ARG ODOO_SHA=0706abac09a953f10007e26aa31767af5f9d1b2b
# Tue, 03 Nov 2026 00:24:43 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261102 ODOO_SHA=0706abac09a953f10007e26aa31767af5f9d1b2b
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 03 Nov 2026 00:24:47 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 03 Nov 2026 00:24:48 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 03 Nov 2026 00:24:48 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261102 ODOO_SHA=0706abac09a953f10007e26aa31767af5f9d1b2b
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 03 Nov 2026 00:24:48 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 03 Nov 2026 00:24:48 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 03 Nov 2026 00:24:48 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 03 Nov 2026 00:24:49 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 03 Nov 2026 00:24:49 GMT
USER odoo
# Tue, 03 Nov 2026 00:24:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 03 Nov 2026 00:24:49 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:400d78a2b842f2bd938ae79326cc66475d11b949ac6b2acbfbc7709090964eb8`  
		Last Modified: Sun, 25 Oct 2026 14:50:25 GMT  
		Size: 34.4 MB (34378308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:250157a23803c3e07f3e4465e1f9606abc0c5e21e600249deaa9fda75f2bf5ba`  
		Last Modified: Tue, 03 Nov 2026 00:29:16 GMT  
		Size: 249.4 MB (249382793 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06a6eeba402f3ba273d07fe34e9630bd8de1e44bdb48d6f4deb3858cf3e566f6`  
		Last Modified: Tue, 03 Nov 2026 00:29:06 GMT  
		Size: 14.7 MB (14743154 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d91b9a2240116b1addde2f24ee7af737939fec6464bdfec0bc9b2cce1a828265`  
		Last Modified: Tue, 03 Nov 2026 00:29:05 GMT  
		Size: 875.1 KB (875106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7e57628e148c61c4bfec12d56368c915bb7246be4ac65a66674ed3afe9c336c`  
		Last Modified: Tue, 03 Nov 2026 00:29:43 GMT  
		Size: 521.2 MB (521240989 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d61f641126ed0ca731ca344ea9d47a607e5a8ca8d524fee3d497d618884167c3`  
		Last Modified: Tue, 03 Nov 2026 00:29:31 GMT  
		Size: 718.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40aff0ac535a2d6a02efd04bcb411e22c5f0c5d3375299e3755bab6fa609cd6c`  
		Last Modified: Tue, 03 Nov 2026 00:29:31 GMT  
		Size: 567.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88a3c38682bf41f08845a66b47ca925199cf688584b36e8e323e87e10cdf5f9d`  
		Last Modified: Tue, 03 Nov 2026 00:29:31 GMT  
		Size: 610.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:854f73f4b988b6058c0de4eb4013ef7f1eae3191713183cb61f3f33ebfec3dc4`  
		Last Modified: Tue, 03 Nov 2026 00:29:32 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:20.0-20261102` - unknown; unknown

```console
$ docker pull odoo@sha256:97f5eba1c994b3786a7eceb82f626c3bb1f0a5ed7f5e52bdc4a47b1c9e5fbbde
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.4 MB (55354244 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb1ae6a9766a12703786b6d9943a58f88ac7ffe35e11743772b236e0180ad53d`

```dockerfile
```

-	Layers:
	-	`sha256:1e80fdc1a3d2f845c3eb697e753547d9fb6e40430c9d7e6f2800d1f31d611238`  
		Last Modified: Tue, 03 Nov 2026 00:29:34 GMT  
		Size: 55.3 MB (55326691 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d901e3c7ad44144c326fb42ece2bf4aac8ef3de3171972f964c92424e5815f87`  
		Last Modified: Tue, 03 Nov 2026 00:29:31 GMT  
		Size: 27.6 KB (27553 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:latest`

```console
$ docker pull odoo@sha256:a97a7665e2b9fd890e12785491a2c91d779f800bcbc30873dada1c8748b28f1c
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
$ docker pull odoo@sha256:99fad02652e93ad61abb6dc8fe210c59cb4cd1ef6c6c118385e3a8cc2ff7dc34
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **804.2 MB (804151235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18919079d2b2a7d18b39423c7f429513abc6474ba3daaa2bc732afaefdae164b`
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
# Tue, 03 Nov 2026 00:17:30 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 03 Nov 2026 00:17:30 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 03 Nov 2026 00:17:30 GMT
ENV LANG=en_US.UTF-8
# Tue, 03 Nov 2026 00:17:30 GMT
ARG TARGETARCH=amd64
# Tue, 03 Nov 2026 00:17:30 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 03 Nov 2026 00:17:40 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:18:56 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:18:56 GMT
ENV ODOO_VERSION=20.0
# Tue, 03 Nov 2026 00:18:56 GMT
ARG ODOO_RELEASE=20261102
# Tue, 03 Nov 2026 00:18:56 GMT
ARG ODOO_SHA=0706abac09a953f10007e26aa31767af5f9d1b2b
# Tue, 03 Nov 2026 00:20:08 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261102 ODOO_SHA=0706abac09a953f10007e26aa31767af5f9d1b2b
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 03 Nov 2026 00:20:09 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 03 Nov 2026 00:20:09 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 03 Nov 2026 00:20:09 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261102 ODOO_SHA=0706abac09a953f10007e26aa31767af5f9d1b2b
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 03 Nov 2026 00:20:09 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 03 Nov 2026 00:20:09 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 03 Nov 2026 00:20:09 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 03 Nov 2026 00:20:09 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 03 Nov 2026 00:20:09 GMT
USER odoo
# Tue, 03 Nov 2026 00:20:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 03 Nov 2026 00:20:09 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e071ad5406d6fbdbb16bdcee9ce1bd1a998917ff9b18d38164554c449824406`  
		Last Modified: Tue, 03 Nov 2026 00:22:02 GMT  
		Size: 238.7 MB (238714761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f43b709c764c7f552702204584b862b11cd401834278223c20516e05e3e8f88c`  
		Last Modified: Tue, 03 Nov 2026 00:21:54 GMT  
		Size: 14.2 MB (14226165 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be75d50c8962dd3f86dc0a5075817073ee4f427af160fedfbc52eb130ac93a5a`  
		Last Modified: Tue, 03 Nov 2026 00:21:53 GMT  
		Size: 874.0 KB (873988 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb043f13ddd13424e42c376f70400f17d6f5e25e65e58a3ddf3dca9dce0d82b8`  
		Last Modified: Tue, 03 Nov 2026 00:22:08 GMT  
		Size: 520.6 MB (520565938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1aa88749e14ec418c8da78212308516d33a26c9ff8eadab6cedd56661a63e618`  
		Last Modified: Tue, 03 Nov 2026 00:21:54 GMT  
		Size: 718.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64398bf6644804e6c22318f8f48c078bf3339db35383426bc2b5191a1010e6d4`  
		Last Modified: Tue, 03 Nov 2026 00:21:55 GMT  
		Size: 566.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3240963449906a627ac4d1166e9d3aa6b105c2c5ccc85764e43f4bec33b953bf`  
		Last Modified: Tue, 03 Nov 2026 00:21:55 GMT  
		Size: 607.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cf27859beea1bb53f1b2404e05101704beaf4f758f565f0b02fca06ed288919`  
		Last Modified: Tue, 03 Nov 2026 00:21:57 GMT  
		Size: 880.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:latest` - unknown; unknown

```console
$ docker pull odoo@sha256:87621272dbf8cd03f0a96d076e2bfab692bab7155c042527015fc95d8175b287
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.3 MB (55345810 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11e27acfec2c10eb3516fd61992dc5b655e0ba7d0bc7a36e8e7bd081450c8a8d`

```dockerfile
```

-	Layers:
	-	`sha256:c0b55ace42eafb952b61f691d5e0309ebd41480fb1188addf0a63fb0e509cf3a`  
		Last Modified: Tue, 03 Nov 2026 00:21:56 GMT  
		Size: 55.3 MB (55318321 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:85e055fd0552da259a265b574faeb0989f71b8a2adcb03144574a74ba0c1552d`  
		Last Modified: Tue, 03 Nov 2026 00:21:53 GMT  
		Size: 27.5 KB (27489 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:latest` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:627c1512673bb1a7fd5661e0ab7809407646e9c4618c4765de0cae08d07a7e41
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **800.6 MB (800607230 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32b13c8c052f5f6b6482bd432a2b0d1abd629d1586cbaad9d55083ad0a5676f6`
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
# Tue, 03 Nov 2026 00:17:38 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 03 Nov 2026 00:17:38 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 03 Nov 2026 00:17:38 GMT
ENV LANG=en_US.UTF-8
# Tue, 03 Nov 2026 00:17:38 GMT
ARG TARGETARCH=arm64
# Tue, 03 Nov 2026 00:17:38 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 03 Nov 2026 00:17:48 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:18:53 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:18:53 GMT
ENV ODOO_VERSION=20.0
# Tue, 03 Nov 2026 00:18:53 GMT
ARG ODOO_RELEASE=20261102
# Tue, 03 Nov 2026 00:18:53 GMT
ARG ODOO_SHA=0706abac09a953f10007e26aa31767af5f9d1b2b
# Tue, 03 Nov 2026 00:20:15 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261102 ODOO_SHA=0706abac09a953f10007e26aa31767af5f9d1b2b
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 03 Nov 2026 00:20:16 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 03 Nov 2026 00:20:16 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 03 Nov 2026 00:20:16 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261102 ODOO_SHA=0706abac09a953f10007e26aa31767af5f9d1b2b
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 03 Nov 2026 00:20:16 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 03 Nov 2026 00:20:16 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 03 Nov 2026 00:20:16 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 03 Nov 2026 00:20:16 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 03 Nov 2026 00:20:16 GMT
USER odoo
# Tue, 03 Nov 2026 00:20:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 03 Nov 2026 00:20:16 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:e2d2bb84d02254f4be480ca3c62f94fc12ac959c11b3ce5bd7da3f411b2b9607`  
		Last Modified: Sun, 25 Oct 2026 14:50:12 GMT  
		Size: 28.9 MB (28940126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a6bdc0259885efc6f9b807882520bd7d57fad73606982c678e61f09fc65e589`  
		Last Modified: Tue, 03 Nov 2026 00:22:18 GMT  
		Size: 236.2 MB (236178230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2c78139e59fa90dfd4519d00d27da0f215110f8b471094d7e95e03512686351`  
		Last Modified: Tue, 03 Nov 2026 00:22:10 GMT  
		Size: 14.2 MB (14197381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b18b9f88a004420909c5cb9a55f634d6f172ace3cec14640ed87e7efcec3e79`  
		Last Modified: Tue, 03 Nov 2026 00:22:10 GMT  
		Size: 873.9 KB (873908 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a54dd0386c48e53e64b443ec99c05b9fd4e6fb9755179ed606f6b179f057d44f`  
		Last Modified: Tue, 03 Nov 2026 00:22:22 GMT  
		Size: 520.4 MB (520414816 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25a7257906fad5ba033d93cceb6e6f0c46a34bf4292c0dd7c7bf94bddd3b0fc6`  
		Last Modified: Tue, 03 Nov 2026 00:22:11 GMT  
		Size: 718.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ac4479726d883ce5631b414b079c8eb7a0efb1e67f6b5782af80bc8985d3e1e`  
		Last Modified: Tue, 03 Nov 2026 00:22:12 GMT  
		Size: 566.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac9094acc75ce0bd6e7e43aaffebfeef63dcaef77d2d70e3970095b3dd1925ab`  
		Last Modified: Tue, 03 Nov 2026 00:22:12 GMT  
		Size: 607.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00b8af124f8ddcf055a7106235b9198f65d332db18159238e17b5aa11963d041`  
		Last Modified: Tue, 03 Nov 2026 00:22:13 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:latest` - unknown; unknown

```console
$ docker pull odoo@sha256:74761632ce866621173e65931c35aec7bc1df16055cade27066a2c8544dad56e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.4 MB (55353260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6f71553330ee583ea609f10a6d7d077c534eb2b9669790ff3592539934588dc`

```dockerfile
```

-	Layers:
	-	`sha256:b4d112ce6f5f2406c19e12c96836cd60527f7b4bb291f447f38b4f585dc649a1`  
		Last Modified: Tue, 03 Nov 2026 00:22:12 GMT  
		Size: 55.3 MB (55325605 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c3bf87985c97f78282a6ae7425493637117194efdda877a47ec738fe0921f489`  
		Last Modified: Tue, 03 Nov 2026 00:22:09 GMT  
		Size: 27.7 KB (27655 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:latest` - linux; ppc64le

```console
$ docker pull odoo@sha256:dea5146bfe0123a316536ba8acee66ac61296900642772c6921fde925d9ca045
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **820.6 MB (820623124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2db58ecdf80633cba6571c9ed19efec27dc9f630189dddab32b7b096d6dc13a8`
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
# Tue, 03 Nov 2026 00:15:59 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 03 Nov 2026 00:15:59 GMT
SHELL [/bin/bash -xo pipefail -c]
# Tue, 03 Nov 2026 00:15:59 GMT
ENV LANG=en_US.UTF-8
# Tue, 03 Nov 2026 00:15:59 GMT
ARG TARGETARCH=ppc64le
# Tue, 03 Nov 2026 00:15:59 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Tue, 03 Nov 2026 00:16:13 GMT
# ARGS: TARGETARCH=ppc64le
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:20:56 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:20:56 GMT
ENV ODOO_VERSION=20.0
# Tue, 03 Nov 2026 00:20:56 GMT
ARG ODOO_RELEASE=20261102
# Tue, 03 Nov 2026 00:20:56 GMT
ARG ODOO_SHA=0706abac09a953f10007e26aa31767af5f9d1b2b
# Tue, 03 Nov 2026 00:24:43 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261102 ODOO_SHA=0706abac09a953f10007e26aa31767af5f9d1b2b
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Tue, 03 Nov 2026 00:24:47 GMT
COPY ./entrypoint.sh / # buildkit
# Tue, 03 Nov 2026 00:24:48 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Tue, 03 Nov 2026 00:24:48 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261102 ODOO_SHA=0706abac09a953f10007e26aa31767af5f9d1b2b
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Tue, 03 Nov 2026 00:24:48 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 03 Nov 2026 00:24:48 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Tue, 03 Nov 2026 00:24:48 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 03 Nov 2026 00:24:49 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Tue, 03 Nov 2026 00:24:49 GMT
USER odoo
# Tue, 03 Nov 2026 00:24:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 03 Nov 2026 00:24:49 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:400d78a2b842f2bd938ae79326cc66475d11b949ac6b2acbfbc7709090964eb8`  
		Last Modified: Sun, 25 Oct 2026 14:50:25 GMT  
		Size: 34.4 MB (34378308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:250157a23803c3e07f3e4465e1f9606abc0c5e21e600249deaa9fda75f2bf5ba`  
		Last Modified: Tue, 03 Nov 2026 00:29:16 GMT  
		Size: 249.4 MB (249382793 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06a6eeba402f3ba273d07fe34e9630bd8de1e44bdb48d6f4deb3858cf3e566f6`  
		Last Modified: Tue, 03 Nov 2026 00:29:06 GMT  
		Size: 14.7 MB (14743154 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d91b9a2240116b1addde2f24ee7af737939fec6464bdfec0bc9b2cce1a828265`  
		Last Modified: Tue, 03 Nov 2026 00:29:05 GMT  
		Size: 875.1 KB (875106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7e57628e148c61c4bfec12d56368c915bb7246be4ac65a66674ed3afe9c336c`  
		Last Modified: Tue, 03 Nov 2026 00:29:43 GMT  
		Size: 521.2 MB (521240989 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d61f641126ed0ca731ca344ea9d47a607e5a8ca8d524fee3d497d618884167c3`  
		Last Modified: Tue, 03 Nov 2026 00:29:31 GMT  
		Size: 718.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40aff0ac535a2d6a02efd04bcb411e22c5f0c5d3375299e3755bab6fa609cd6c`  
		Last Modified: Tue, 03 Nov 2026 00:29:31 GMT  
		Size: 567.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88a3c38682bf41f08845a66b47ca925199cf688584b36e8e323e87e10cdf5f9d`  
		Last Modified: Tue, 03 Nov 2026 00:29:31 GMT  
		Size: 610.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:854f73f4b988b6058c0de4eb4013ef7f1eae3191713183cb61f3f33ebfec3dc4`  
		Last Modified: Tue, 03 Nov 2026 00:29:32 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:latest` - unknown; unknown

```console
$ docker pull odoo@sha256:97f5eba1c994b3786a7eceb82f626c3bb1f0a5ed7f5e52bdc4a47b1c9e5fbbde
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.4 MB (55354244 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb1ae6a9766a12703786b6d9943a58f88ac7ffe35e11743772b236e0180ad53d`

```dockerfile
```

-	Layers:
	-	`sha256:1e80fdc1a3d2f845c3eb697e753547d9fb6e40430c9d7e6f2800d1f31d611238`  
		Last Modified: Tue, 03 Nov 2026 00:29:34 GMT  
		Size: 55.3 MB (55326691 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d901e3c7ad44144c326fb42ece2bf4aac8ef3de3171972f964c92424e5815f87`  
		Last Modified: Tue, 03 Nov 2026 00:29:31 GMT  
		Size: 27.6 KB (27553 bytes)  
		MIME: application/vnd.in-toto+json
