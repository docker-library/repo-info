## `odoo:latest`

```console
$ docker pull odoo@sha256:3de556969ca7916fe7d1a7fa3be2a49307a147c5fa1491bc2c57dcb0b950bea5
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
$ docker pull odoo@sha256:ce45fea4e92b1780e7cd85f723a6717b1333e9f256853dffe9a3d2ad5a080e44
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **802.5 MB (802500267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83aefe4877511825a87ccc3a0390e0a750461adbe43c9bfdeb0891bf4003837b`
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
# Thu, 15 Oct 2026 19:04:30 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Thu, 15 Oct 2026 19:04:30 GMT
SHELL [/bin/bash -xo pipefail -c]
# Thu, 15 Oct 2026 19:04:30 GMT
ENV LANG=en_US.UTF-8
# Thu, 15 Oct 2026 19:04:30 GMT
ARG TARGETARCH=amd64
# Thu, 15 Oct 2026 19:04:30 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Thu, 15 Oct 2026 19:04:40 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 15 Oct 2026 19:06:34 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 15 Oct 2026 19:06:34 GMT
ENV ODOO_VERSION=20.0
# Thu, 15 Oct 2026 19:06:34 GMT
ARG ODOO_RELEASE=20261015
# Thu, 15 Oct 2026 19:06:34 GMT
ARG ODOO_SHA=ae908bc0fa5e01d076a74a1008f07ad8869f819d
# Thu, 15 Oct 2026 19:07:48 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261015 ODOO_SHA=ae908bc0fa5e01d076a74a1008f07ad8869f819d
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Thu, 15 Oct 2026 19:07:48 GMT
COPY ./entrypoint.sh / # buildkit
# Thu, 15 Oct 2026 19:07:48 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Thu, 15 Oct 2026 19:07:48 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261015 ODOO_SHA=ae908bc0fa5e01d076a74a1008f07ad8869f819d
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Thu, 15 Oct 2026 19:07:48 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Thu, 15 Oct 2026 19:07:48 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Thu, 15 Oct 2026 19:07:48 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Thu, 15 Oct 2026 19:07:48 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Thu, 15 Oct 2026 19:07:48 GMT
USER odoo
# Thu, 15 Oct 2026 19:07:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 15 Oct 2026 19:07:48 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:a60ef8ec184edb5ed91f5983f00261359fb2fe20f603e8d488b9477d32fcad70`  
		Last Modified: Fri, 18 Sep 2026 22:29:51 GMT  
		Size: 29.8 MB (29764422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec22f528727a7c4dcaed39f15ba5c874000cabfb4cf8a7500940fb967662e9d8`  
		Last Modified: Thu, 15 Oct 2026 19:09:48 GMT  
		Size: 241.1 MB (241121117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f37a53f646be9fdbe3b3d75f4595edbd3fcf2fa0d6f63f9b74857d8ed29158b`  
		Last Modified: Thu, 15 Oct 2026 19:09:36 GMT  
		Size: 14.2 MB (14226469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46703a7aaa16d47948a2df2c1bddd7b41fab0c7498d74ca91bf097deb2f784aa`  
		Last Modified: Thu, 15 Oct 2026 19:09:35 GMT  
		Size: 873.0 KB (872952 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79058cf5516967ad99e97ee440955ad876198f81dd280fb0dbf1984ab1e68f8e`  
		Last Modified: Thu, 15 Oct 2026 19:09:55 GMT  
		Size: 516.5 MB (516512537 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5f171ce644c9f4a87ed54576b5e41e5f328acfba381eebfa80b1bca1b101ef3`  
		Last Modified: Thu, 15 Oct 2026 19:09:37 GMT  
		Size: 719.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:729efe63c88a793a2e9f4bec505c93b01c8929107042f225e94a4eb537e8aca5`  
		Last Modified: Thu, 15 Oct 2026 19:09:38 GMT  
		Size: 566.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59e085af66139eada3a4edb62049be3121652535415265acd68cef3017d9ff21`  
		Last Modified: Thu, 15 Oct 2026 19:09:39 GMT  
		Size: 606.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76702bf08f68c4f6938c8d3c259a9c442e999971739ed9e7e4fadb505603303e`  
		Last Modified: Thu, 15 Oct 2026 19:09:40 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:latest` - unknown; unknown

```console
$ docker pull odoo@sha256:7d6f8947223379b3fa9c606cdc1554719748db25fe0f76d9061282e722f0276e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.1 MB (55095645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26f0835c08ac60531866a437be320d6506f73eac9675ea95c0d1b766904b693f`

```dockerfile
```

-	Layers:
	-	`sha256:d41d50529dec9159f328fd79e79ce5c389a95cea9289b9f16bcb2818d9361f2b`  
		Last Modified: Thu, 15 Oct 2026 19:09:40 GMT  
		Size: 55.1 MB (55068154 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:48cf3c6ffe43499ecaedc344d17ee224442a996c3eeaab62d0e30f60c38af6f7`  
		Last Modified: Thu, 15 Oct 2026 19:09:34 GMT  
		Size: 27.5 KB (27491 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:latest` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:d88ab8920f8e54aad084d67e474d59d11b7ffd9cdf20d51f973f7d168b2c0fc4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **798.8 MB (798826637 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b35717833b0966cad2352a7986cae966d81835a41bcd7e13a019e04b77e0b3d`
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
# Thu, 15 Oct 2026 19:03:27 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Thu, 15 Oct 2026 19:03:27 GMT
SHELL [/bin/bash -xo pipefail -c]
# Thu, 15 Oct 2026 19:03:27 GMT
ENV LANG=en_US.UTF-8
# Thu, 15 Oct 2026 19:03:27 GMT
ARG TARGETARCH=arm64
# Thu, 15 Oct 2026 19:03:27 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Thu, 15 Oct 2026 19:03:39 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 15 Oct 2026 19:04:43 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 15 Oct 2026 19:04:43 GMT
ENV ODOO_VERSION=20.0
# Thu, 15 Oct 2026 19:04:43 GMT
ARG ODOO_RELEASE=20261015
# Thu, 15 Oct 2026 19:04:43 GMT
ARG ODOO_SHA=ae908bc0fa5e01d076a74a1008f07ad8869f819d
# Thu, 15 Oct 2026 19:05:59 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261015 ODOO_SHA=ae908bc0fa5e01d076a74a1008f07ad8869f819d
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Thu, 15 Oct 2026 19:05:59 GMT
COPY ./entrypoint.sh / # buildkit
# Thu, 15 Oct 2026 19:05:59 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Thu, 15 Oct 2026 19:05:59 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261015 ODOO_SHA=ae908bc0fa5e01d076a74a1008f07ad8869f819d
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Thu, 15 Oct 2026 19:05:59 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Thu, 15 Oct 2026 19:05:59 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Thu, 15 Oct 2026 19:05:59 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Thu, 15 Oct 2026 19:06:00 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Thu, 15 Oct 2026 19:06:00 GMT
USER odoo
# Thu, 15 Oct 2026 19:06:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 15 Oct 2026 19:06:00 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:90812e242c93750dbd37ce847c7d3db62c2c53035367d1d89c61184f168f5d37`  
		Last Modified: Fri, 18 Sep 2026 22:29:58 GMT  
		Size: 28.9 MB (28940087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1678960b758cedb640499db5c4514fd2303eb3562d88676565005d3a72b3166c`  
		Last Modified: Thu, 15 Oct 2026 19:08:09 GMT  
		Size: 238.5 MB (238459898 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d19ab12d54d0a2cda1304b87141a3dfeb349ab77d85b6311198b39a271c91d4`  
		Last Modified: Thu, 15 Oct 2026 19:08:01 GMT  
		Size: 14.2 MB (14197644 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:681258a68aed0185dae77eea91ebcc99a20f6534fd0fb8abb208bde718c49693`  
		Last Modified: Thu, 15 Oct 2026 19:08:00 GMT  
		Size: 872.7 KB (872739 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c506c2bd4c3aa40193d666bff4940858401c79dd75608de4373697671eef9a12`  
		Last Modified: Thu, 15 Oct 2026 19:08:13 GMT  
		Size: 516.4 MB (516353507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e6a41c8eaf07862f8828076b4586c65b6a1ca0195ec94bd2bc929d99fc6cfef`  
		Last Modified: Thu, 15 Oct 2026 19:08:01 GMT  
		Size: 719.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81b7f33c718a13d8cd3cbf5346817f8fc91dc610d31b870c41a40df6cc287e00`  
		Last Modified: Thu, 15 Oct 2026 19:08:02 GMT  
		Size: 563.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7159317491535cdd8779633f0c10570cf6a62fc3d7b2307bac9fe4cfe7bb6bf`  
		Last Modified: Thu, 15 Oct 2026 19:08:03 GMT  
		Size: 602.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71064384767f7688e2d9ad5b43ba6d33f4ae33749eaad4cc6ae411ddaf8358b8`  
		Last Modified: Thu, 15 Oct 2026 19:08:04 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:latest` - unknown; unknown

```console
$ docker pull odoo@sha256:8e408e148b6b6f4fb1ac9082d27b9219487edc7603c966a80fb26acb9596fd3e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.1 MB (55103093 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e77488b402bdc8dae6099eedba26fb4ca1bb4d4f0b4cbbfb4f4c53cd618930f3`

```dockerfile
```

-	Layers:
	-	`sha256:6166ca9961206707eaf71b6c7a7ab172f5c27ce3c6e7af9c155f017cc5a35b77`  
		Last Modified: Thu, 15 Oct 2026 19:08:03 GMT  
		Size: 55.1 MB (55075438 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f66910930aaa0e43b2106111a0a0a5a186b52fbda463cd62a751e7e6a72c7829`  
		Last Modified: Thu, 15 Oct 2026 19:08:00 GMT  
		Size: 27.7 KB (27655 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:latest` - linux; ppc64le

```console
$ docker pull odoo@sha256:dcd3803e4cf5c4aafc5117da1b37e018dc9360615774ec3896c08c5bd0ce1b02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **819.3 MB (819273816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4489f45d5ed11e32531a48d160152c5524ad12287cd482bf39571e218efaa5cc`
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
# Thu, 15 Oct 2026 19:56:04 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Thu, 15 Oct 2026 19:56:04 GMT
SHELL [/bin/bash -xo pipefail -c]
# Thu, 15 Oct 2026 19:56:04 GMT
ENV LANG=en_US.UTF-8
# Thu, 15 Oct 2026 19:56:04 GMT
ARG TARGETARCH=ppc64le
# Thu, 15 Oct 2026 19:56:04 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Thu, 15 Oct 2026 19:56:21 GMT
# ARGS: TARGETARCH=ppc64le
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 15 Oct 2026 20:00:46 GMT
# ARGS: TARGETARCH=ppc64le
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 15 Oct 2026 20:00:46 GMT
ENV ODOO_VERSION=20.0
# Thu, 15 Oct 2026 20:00:46 GMT
ARG ODOO_RELEASE=20261015
# Thu, 15 Oct 2026 20:00:46 GMT
ARG ODOO_SHA=ae908bc0fa5e01d076a74a1008f07ad8869f819d
# Thu, 15 Oct 2026 20:04:04 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261015 ODOO_SHA=ae908bc0fa5e01d076a74a1008f07ad8869f819d
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Thu, 15 Oct 2026 20:04:27 GMT
COPY ./entrypoint.sh / # buildkit
# Thu, 15 Oct 2026 20:04:29 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Thu, 15 Oct 2026 20:04:52 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261015 ODOO_SHA=ae908bc0fa5e01d076a74a1008f07ad8869f819d
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Thu, 15 Oct 2026 20:04:52 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Thu, 15 Oct 2026 20:04:52 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Thu, 15 Oct 2026 20:04:52 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Thu, 15 Oct 2026 20:04:55 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Thu, 15 Oct 2026 20:04:55 GMT
USER odoo
# Thu, 15 Oct 2026 20:04:55 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 15 Oct 2026 20:04:55 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:02a2dd31affb75e9ad8595e0b0a537f3d60ecf8145f7dcd72eeaf14132bf426d`  
		Last Modified: Fri, 18 Sep 2026 22:30:11 GMT  
		Size: 34.4 MB (34376509 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac4c1a0aa032675e9e838ce160f15e5641cbb49bb8ca09323b50094d4934d4aa`  
		Last Modified: Thu, 15 Oct 2026 20:10:00 GMT  
		Size: 252.1 MB (252097988 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4be18475745fbe87ed531f980eea48ffb1794ca0b6a4a842a49db7bfc5de7686`  
		Last Modified: Thu, 15 Oct 2026 20:09:51 GMT  
		Size: 14.7 MB (14743513 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c242f0c5cd221733183abd0a81cbc85133453b365702cede93fa0187ee5a5ca`  
		Last Modified: Thu, 15 Oct 2026 20:09:49 GMT  
		Size: 873.9 KB (873905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cfa9a31ee7c53dadddb194047f8f87d81ead3988ebda1dd62522d0dac943341`  
		Last Modified: Thu, 15 Oct 2026 20:10:35 GMT  
		Size: 517.2 MB (517179124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73127fc2a88990ed2506d481b8cb9fdb2abd2f336b8494806b30bd9e9800ebc6`  
		Last Modified: Thu, 15 Oct 2026 20:10:25 GMT  
		Size: 719.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b16fc52eb1684d4aaf56b2d765cdbcf408e934388888e4c29e5da907c7878d0b`  
		Last Modified: Thu, 15 Oct 2026 20:10:25 GMT  
		Size: 567.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c34962efc830be0fa454aaac29e3589d61418946acb0c8aeb75a5abe6977100d`  
		Last Modified: Thu, 15 Oct 2026 20:10:25 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52643329199d0ded135013377ab998ddea5a6fe8faa71eb44480efd8a1564050`  
		Last Modified: Thu, 15 Oct 2026 20:10:26 GMT  
		Size: 880.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:latest` - unknown; unknown

```console
$ docker pull odoo@sha256:9c5f2f30c7d9183b232106ee89534db233e87053ef83f6a25c2aba185379fd24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.1 MB (55104077 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f63daf147b271a6fa94b8b91ab134c295b891c1ef59875e975c4bbaedcdefa78`

```dockerfile
```

-	Layers:
	-	`sha256:02387b6fa921ee737d0da469527032e0afc6225009fe81d1920847bd75b06b1a`  
		Last Modified: Thu, 15 Oct 2026 20:10:27 GMT  
		Size: 55.1 MB (55076524 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:add5c567e1585e049a34484cc244c7a7868a98d222b98c56e54f24987759e616`  
		Last Modified: Thu, 15 Oct 2026 20:10:24 GMT  
		Size: 27.6 KB (27553 bytes)  
		MIME: application/vnd.in-toto+json
