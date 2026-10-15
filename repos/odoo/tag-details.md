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
$ docker pull odoo@sha256:969046a63c575331df8e817cbb89fe23ca35ce877ce0a77b9f2eb7536a8375a7
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
$ docker pull odoo@sha256:eda24b114f322e1d0a7c61029a4a513bdb9155a6864948acb477a8b2bebd5343
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **677.5 MB (677525215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4051f6f6f065ee1fc7d0092871e85f7ecae3651b0bc6e8c29d4db43bccb101db`
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
# Thu, 15 Oct 2026 19:05:56 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Thu, 15 Oct 2026 19:05:56 GMT
SHELL [/bin/bash -xo pipefail -c]
# Thu, 15 Oct 2026 19:05:56 GMT
ENV LANG=en_US.UTF-8
# Thu, 15 Oct 2026 19:05:56 GMT
ARG TARGETARCH=amd64
# Thu, 15 Oct 2026 19:05:56 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Thu, 15 Oct 2026 19:06:05 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 15 Oct 2026 19:07:26 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 15 Oct 2026 19:07:26 GMT
ENV ODOO_VERSION=18.0
# Thu, 15 Oct 2026 19:07:26 GMT
ARG ODOO_RELEASE=20261015
# Thu, 15 Oct 2026 19:07:26 GMT
ARG ODOO_SHA=21f8d7d61d37a8bb1a6a0e151bc976c91d8b8229
# Thu, 15 Oct 2026 19:08:19 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261015 ODOO_SHA=21f8d7d61d37a8bb1a6a0e151bc976c91d8b8229
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Thu, 15 Oct 2026 19:08:20 GMT
COPY ./entrypoint.sh / # buildkit
# Thu, 15 Oct 2026 19:08:20 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Thu, 15 Oct 2026 19:08:20 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261015 ODOO_SHA=21f8d7d61d37a8bb1a6a0e151bc976c91d8b8229
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Thu, 15 Oct 2026 19:08:20 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Thu, 15 Oct 2026 19:08:20 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Thu, 15 Oct 2026 19:08:20 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Thu, 15 Oct 2026 19:08:20 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Thu, 15 Oct 2026 19:08:20 GMT
USER odoo
# Thu, 15 Oct 2026 19:08:20 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 15 Oct 2026 19:08:20 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:a60ef8ec184edb5ed91f5983f00261359fb2fe20f603e8d488b9477d32fcad70`  
		Last Modified: Fri, 18 Sep 2026 22:29:51 GMT  
		Size: 29.8 MB (29764422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c6b0c65f1f33e7fd5af4cb60b80c6303a25b601f66cb829e9897f79b9fa97d5`  
		Last Modified: Thu, 15 Oct 2026 19:09:52 GMT  
		Size: 241.1 MB (241120959 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5b40a04f3f57082f1bf8d34e9ac455926a19d1b19f63503e4ed7ea88b5d19b8`  
		Last Modified: Thu, 15 Oct 2026 19:09:42 GMT  
		Size: 14.2 MB (14226530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a47a8d9089ed7168c78bb474fee6f8fcd0a98d20d1a302a0ec1e049e2920b524`  
		Last Modified: Thu, 15 Oct 2026 19:09:41 GMT  
		Size: 873.1 KB (873125 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bed7e101fb910b9aac4439f2f3e2fab9efc84b46f61eaac04dabc0e0e7fe2203`  
		Last Modified: Thu, 15 Oct 2026 19:09:55 GMT  
		Size: 391.5 MB (391537381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6b55e971ceea4bcbde374ffc5f27540d4e38954418929b84bc8f19c6eafba87`  
		Last Modified: Thu, 15 Oct 2026 19:09:43 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54d179a9c16355670e1c1f7001f5d8afca3345d0b701056b623e11d8c78c7542`  
		Last Modified: Thu, 15 Oct 2026 19:09:44 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55c4da8dd857c7e5ee144df53da0398f7ef8a45f80b29ae14dea23293af6b236`  
		Last Modified: Thu, 15 Oct 2026 19:09:44 GMT  
		Size: 596.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:889eb181e5c734833a46da4f09c3bda807811ec17c366a0f1b6342cc7833dfc8`  
		Last Modified: Thu, 15 Oct 2026 19:09:45 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18` - unknown; unknown

```console
$ docker pull odoo@sha256:62727087ead36c92a46f893f1c63fbd0104dbb0791eb414546934e143c7f1f9f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.0 MB (43962101 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78a2bd544ad477dabf663540bbdcadb0a6b3473bc0bed6a2976760c69432d256`

```dockerfile
```

-	Layers:
	-	`sha256:e89350cde5183f186f1abc3c35254377cb1475b6961f11310efe706630eed11b`  
		Last Modified: Thu, 15 Oct 2026 19:09:44 GMT  
		Size: 43.9 MB (43934904 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a8c7b3ac0410e0ccf737b706e2cbdedbd642f3887fe35eeb3af2d67964c1993c`  
		Last Modified: Thu, 15 Oct 2026 19:09:41 GMT  
		Size: 27.2 KB (27197 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:18` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:739d834c129d8035229623b0c95db67ec85d1276c184006abd88aa1c9678970a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **673.9 MB (673873772 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:074c484de2e429e11ae8c805fb8613937cae5dc6eda6723051243efe77f7c929`
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
# Thu, 15 Oct 2026 19:03:30 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Thu, 15 Oct 2026 19:03:30 GMT
SHELL [/bin/bash -xo pipefail -c]
# Thu, 15 Oct 2026 19:03:30 GMT
ENV LANG=en_US.UTF-8
# Thu, 15 Oct 2026 19:03:30 GMT
ARG TARGETARCH=arm64
# Thu, 15 Oct 2026 19:03:30 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Thu, 15 Oct 2026 19:03:40 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 15 Oct 2026 19:04:46 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 15 Oct 2026 19:04:46 GMT
ENV ODOO_VERSION=18.0
# Thu, 15 Oct 2026 19:04:46 GMT
ARG ODOO_RELEASE=20261015
# Thu, 15 Oct 2026 19:04:46 GMT
ARG ODOO_SHA=21f8d7d61d37a8bb1a6a0e151bc976c91d8b8229
# Thu, 15 Oct 2026 19:05:46 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261015 ODOO_SHA=21f8d7d61d37a8bb1a6a0e151bc976c91d8b8229
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Thu, 15 Oct 2026 19:05:46 GMT
COPY ./entrypoint.sh / # buildkit
# Thu, 15 Oct 2026 19:05:46 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Thu, 15 Oct 2026 19:05:46 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261015 ODOO_SHA=21f8d7d61d37a8bb1a6a0e151bc976c91d8b8229
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Thu, 15 Oct 2026 19:05:46 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Thu, 15 Oct 2026 19:05:46 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Thu, 15 Oct 2026 19:05:46 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Thu, 15 Oct 2026 19:05:46 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Thu, 15 Oct 2026 19:05:46 GMT
USER odoo
# Thu, 15 Oct 2026 19:05:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 15 Oct 2026 19:05:46 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:90812e242c93750dbd37ce847c7d3db62c2c53035367d1d89c61184f168f5d37`  
		Last Modified: Fri, 18 Sep 2026 22:29:58 GMT  
		Size: 28.9 MB (28940087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20bcd750b3e28421f25d90f584a577d682a18ae6061b044b50eadb0508d44a9c`  
		Last Modified: Thu, 15 Oct 2026 19:07:26 GMT  
		Size: 238.5 MB (238459353 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f07b8359fa8ce370013b8e4b442c7c1517b4cefabf8ba50bea50f2698f02b005`  
		Last Modified: Thu, 15 Oct 2026 19:07:17 GMT  
		Size: 14.2 MB (14197536 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d35f89c93a95a1a54299bc7de5dd67c9f78d130ef1914c4b7910644dd885c05d`  
		Last Modified: Thu, 15 Oct 2026 19:07:16 GMT  
		Size: 872.8 KB (872795 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f473e12dd1ebcfee8f1e3e9e98870634c0ea45af1f750cb4d81498350a6b044d`  
		Last Modified: Thu, 15 Oct 2026 19:07:29 GMT  
		Size: 391.4 MB (391401201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88d0cbf96a20fff901a1a1a09188a8b5f95c15307145c3cffbd584d5815af48d`  
		Last Modified: Thu, 15 Oct 2026 19:07:18 GMT  
		Size: 766.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a5ccbeb1ff978ce389a803b2a0242bd52395d7c117fe773fbb7e071a6164bd4`  
		Last Modified: Thu, 15 Oct 2026 19:07:19 GMT  
		Size: 558.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d874597ebfbb9d6769fde69af0dcd6d70b2bb56bea26dc6a3c8575f299e03bb`  
		Last Modified: Thu, 15 Oct 2026 19:07:19 GMT  
		Size: 597.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ddfee0ff3efb5159b4d6fb149dd873db525b00c61882ea1209945437f2a0eef`  
		Last Modified: Thu, 15 Oct 2026 19:07:20 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18` - unknown; unknown

```console
$ docker pull odoo@sha256:10faec6bf53a677e47e9ba424b77616ab735cbff6e9bc16561d3d9eabc6cd097
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.0 MB (43969525 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96542ad630869b20a9aca57412f633c75e7bf9b7355d9eb9734e137117e9f1bc`

```dockerfile
```

-	Layers:
	-	`sha256:6078af39660c0c4e3c37f0f25ab7d9f0a5d931b60b6848c0a87f5cb5ee5f3b46`  
		Last Modified: Thu, 15 Oct 2026 19:07:19 GMT  
		Size: 43.9 MB (43942176 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fb6ec94f6574b31cda604dabcb2714299684cbd10c0f55ec3943f1f62b1a130b`  
		Last Modified: Thu, 15 Oct 2026 19:07:16 GMT  
		Size: 27.3 KB (27349 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:18` - linux; ppc64le

```console
$ docker pull odoo@sha256:e3a5297ff9dd58d48a93c81fbc8fee8ae96c57758764cf74c0860e70abf623af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **694.3 MB (694309060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67a708ac7c45c8e03a61fbf61ed367fdfda0fdef4310976701bd1caae3cfe085`
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
ENV ODOO_VERSION=18.0
# Thu, 15 Oct 2026 20:00:46 GMT
ARG ODOO_RELEASE=20261015
# Thu, 15 Oct 2026 20:00:46 GMT
ARG ODOO_SHA=21f8d7d61d37a8bb1a6a0e151bc976c91d8b8229
# Thu, 15 Oct 2026 20:12:58 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261015 ODOO_SHA=21f8d7d61d37a8bb1a6a0e151bc976c91d8b8229
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Thu, 15 Oct 2026 20:13:01 GMT
COPY ./entrypoint.sh / # buildkit
# Thu, 15 Oct 2026 20:13:03 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Thu, 15 Oct 2026 20:13:06 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261015 ODOO_SHA=21f8d7d61d37a8bb1a6a0e151bc976c91d8b8229
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Thu, 15 Oct 2026 20:13:06 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Thu, 15 Oct 2026 20:13:06 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Thu, 15 Oct 2026 20:13:06 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Thu, 15 Oct 2026 20:13:09 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Thu, 15 Oct 2026 20:13:09 GMT
USER odoo
# Thu, 15 Oct 2026 20:13:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 15 Oct 2026 20:13:09 GMT
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
	-	`sha256:2e03e4820111744c4bb9579d4c2412c718e3080c56f7f7dbc88798abdb48c8f2`  
		Last Modified: Thu, 15 Oct 2026 20:16:38 GMT  
		Size: 392.2 MB (392214341 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:640fb77a2bda5f31c5759930eb86ad600ec26203dade7000c08d27b7acd33708`  
		Last Modified: Thu, 15 Oct 2026 20:16:28 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5005a7adbb5bcfded0441af996806becd648c46baf1601c17d748ef229e29061`  
		Last Modified: Thu, 15 Oct 2026 20:16:28 GMT  
		Size: 557.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb340c4fce9944d3ce4a099ef52a295ec9e0b27f85688373ef4b82eed14e7632`  
		Last Modified: Thu, 15 Oct 2026 20:16:29 GMT  
		Size: 600.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01e6aa91b243e742767f71acb51123b7dac5fa70481abce225227c9d863c2e23`  
		Last Modified: Thu, 15 Oct 2026 20:16:30 GMT  
		Size: 880.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18` - unknown; unknown

```console
$ docker pull odoo@sha256:58ae6649fb1cc6cc435f1665a7364acad61078a9eec36b4707a8745341262144
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.0 MB (43970521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:797138fd97de3d50da45bd9b6e47d6646466e97f89f209141c321263570a7874`

```dockerfile
```

-	Layers:
	-	`sha256:1eeeb5375a6f172d670420ca445dc9e7345249e6052290ee9788ee7a3d90d3e8`  
		Last Modified: Thu, 15 Oct 2026 20:16:31 GMT  
		Size: 43.9 MB (43943268 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:df062674c5586a9231dd9f456e0779bcfedfcdec958ceb638d03ef13b44d82e9`  
		Last Modified: Thu, 15 Oct 2026 20:16:28 GMT  
		Size: 27.3 KB (27253 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:18.0`

```console
$ docker pull odoo@sha256:969046a63c575331df8e817cbb89fe23ca35ce877ce0a77b9f2eb7536a8375a7
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
$ docker pull odoo@sha256:eda24b114f322e1d0a7c61029a4a513bdb9155a6864948acb477a8b2bebd5343
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **677.5 MB (677525215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4051f6f6f065ee1fc7d0092871e85f7ecae3651b0bc6e8c29d4db43bccb101db`
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
# Thu, 15 Oct 2026 19:05:56 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Thu, 15 Oct 2026 19:05:56 GMT
SHELL [/bin/bash -xo pipefail -c]
# Thu, 15 Oct 2026 19:05:56 GMT
ENV LANG=en_US.UTF-8
# Thu, 15 Oct 2026 19:05:56 GMT
ARG TARGETARCH=amd64
# Thu, 15 Oct 2026 19:05:56 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Thu, 15 Oct 2026 19:06:05 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 15 Oct 2026 19:07:26 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 15 Oct 2026 19:07:26 GMT
ENV ODOO_VERSION=18.0
# Thu, 15 Oct 2026 19:07:26 GMT
ARG ODOO_RELEASE=20261015
# Thu, 15 Oct 2026 19:07:26 GMT
ARG ODOO_SHA=21f8d7d61d37a8bb1a6a0e151bc976c91d8b8229
# Thu, 15 Oct 2026 19:08:19 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261015 ODOO_SHA=21f8d7d61d37a8bb1a6a0e151bc976c91d8b8229
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Thu, 15 Oct 2026 19:08:20 GMT
COPY ./entrypoint.sh / # buildkit
# Thu, 15 Oct 2026 19:08:20 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Thu, 15 Oct 2026 19:08:20 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261015 ODOO_SHA=21f8d7d61d37a8bb1a6a0e151bc976c91d8b8229
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Thu, 15 Oct 2026 19:08:20 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Thu, 15 Oct 2026 19:08:20 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Thu, 15 Oct 2026 19:08:20 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Thu, 15 Oct 2026 19:08:20 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Thu, 15 Oct 2026 19:08:20 GMT
USER odoo
# Thu, 15 Oct 2026 19:08:20 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 15 Oct 2026 19:08:20 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:a60ef8ec184edb5ed91f5983f00261359fb2fe20f603e8d488b9477d32fcad70`  
		Last Modified: Fri, 18 Sep 2026 22:29:51 GMT  
		Size: 29.8 MB (29764422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c6b0c65f1f33e7fd5af4cb60b80c6303a25b601f66cb829e9897f79b9fa97d5`  
		Last Modified: Thu, 15 Oct 2026 19:09:52 GMT  
		Size: 241.1 MB (241120959 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5b40a04f3f57082f1bf8d34e9ac455926a19d1b19f63503e4ed7ea88b5d19b8`  
		Last Modified: Thu, 15 Oct 2026 19:09:42 GMT  
		Size: 14.2 MB (14226530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a47a8d9089ed7168c78bb474fee6f8fcd0a98d20d1a302a0ec1e049e2920b524`  
		Last Modified: Thu, 15 Oct 2026 19:09:41 GMT  
		Size: 873.1 KB (873125 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bed7e101fb910b9aac4439f2f3e2fab9efc84b46f61eaac04dabc0e0e7fe2203`  
		Last Modified: Thu, 15 Oct 2026 19:09:55 GMT  
		Size: 391.5 MB (391537381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6b55e971ceea4bcbde374ffc5f27540d4e38954418929b84bc8f19c6eafba87`  
		Last Modified: Thu, 15 Oct 2026 19:09:43 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54d179a9c16355670e1c1f7001f5d8afca3345d0b701056b623e11d8c78c7542`  
		Last Modified: Thu, 15 Oct 2026 19:09:44 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55c4da8dd857c7e5ee144df53da0398f7ef8a45f80b29ae14dea23293af6b236`  
		Last Modified: Thu, 15 Oct 2026 19:09:44 GMT  
		Size: 596.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:889eb181e5c734833a46da4f09c3bda807811ec17c366a0f1b6342cc7833dfc8`  
		Last Modified: Thu, 15 Oct 2026 19:09:45 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18.0` - unknown; unknown

```console
$ docker pull odoo@sha256:62727087ead36c92a46f893f1c63fbd0104dbb0791eb414546934e143c7f1f9f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.0 MB (43962101 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78a2bd544ad477dabf663540bbdcadb0a6b3473bc0bed6a2976760c69432d256`

```dockerfile
```

-	Layers:
	-	`sha256:e89350cde5183f186f1abc3c35254377cb1475b6961f11310efe706630eed11b`  
		Last Modified: Thu, 15 Oct 2026 19:09:44 GMT  
		Size: 43.9 MB (43934904 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a8c7b3ac0410e0ccf737b706e2cbdedbd642f3887fe35eeb3af2d67964c1993c`  
		Last Modified: Thu, 15 Oct 2026 19:09:41 GMT  
		Size: 27.2 KB (27197 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:18.0` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:739d834c129d8035229623b0c95db67ec85d1276c184006abd88aa1c9678970a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **673.9 MB (673873772 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:074c484de2e429e11ae8c805fb8613937cae5dc6eda6723051243efe77f7c929`
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
# Thu, 15 Oct 2026 19:03:30 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Thu, 15 Oct 2026 19:03:30 GMT
SHELL [/bin/bash -xo pipefail -c]
# Thu, 15 Oct 2026 19:03:30 GMT
ENV LANG=en_US.UTF-8
# Thu, 15 Oct 2026 19:03:30 GMT
ARG TARGETARCH=arm64
# Thu, 15 Oct 2026 19:03:30 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Thu, 15 Oct 2026 19:03:40 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 15 Oct 2026 19:04:46 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 15 Oct 2026 19:04:46 GMT
ENV ODOO_VERSION=18.0
# Thu, 15 Oct 2026 19:04:46 GMT
ARG ODOO_RELEASE=20261015
# Thu, 15 Oct 2026 19:04:46 GMT
ARG ODOO_SHA=21f8d7d61d37a8bb1a6a0e151bc976c91d8b8229
# Thu, 15 Oct 2026 19:05:46 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261015 ODOO_SHA=21f8d7d61d37a8bb1a6a0e151bc976c91d8b8229
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Thu, 15 Oct 2026 19:05:46 GMT
COPY ./entrypoint.sh / # buildkit
# Thu, 15 Oct 2026 19:05:46 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Thu, 15 Oct 2026 19:05:46 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261015 ODOO_SHA=21f8d7d61d37a8bb1a6a0e151bc976c91d8b8229
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Thu, 15 Oct 2026 19:05:46 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Thu, 15 Oct 2026 19:05:46 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Thu, 15 Oct 2026 19:05:46 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Thu, 15 Oct 2026 19:05:46 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Thu, 15 Oct 2026 19:05:46 GMT
USER odoo
# Thu, 15 Oct 2026 19:05:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 15 Oct 2026 19:05:46 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:90812e242c93750dbd37ce847c7d3db62c2c53035367d1d89c61184f168f5d37`  
		Last Modified: Fri, 18 Sep 2026 22:29:58 GMT  
		Size: 28.9 MB (28940087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20bcd750b3e28421f25d90f584a577d682a18ae6061b044b50eadb0508d44a9c`  
		Last Modified: Thu, 15 Oct 2026 19:07:26 GMT  
		Size: 238.5 MB (238459353 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f07b8359fa8ce370013b8e4b442c7c1517b4cefabf8ba50bea50f2698f02b005`  
		Last Modified: Thu, 15 Oct 2026 19:07:17 GMT  
		Size: 14.2 MB (14197536 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d35f89c93a95a1a54299bc7de5dd67c9f78d130ef1914c4b7910644dd885c05d`  
		Last Modified: Thu, 15 Oct 2026 19:07:16 GMT  
		Size: 872.8 KB (872795 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f473e12dd1ebcfee8f1e3e9e98870634c0ea45af1f750cb4d81498350a6b044d`  
		Last Modified: Thu, 15 Oct 2026 19:07:29 GMT  
		Size: 391.4 MB (391401201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88d0cbf96a20fff901a1a1a09188a8b5f95c15307145c3cffbd584d5815af48d`  
		Last Modified: Thu, 15 Oct 2026 19:07:18 GMT  
		Size: 766.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a5ccbeb1ff978ce389a803b2a0242bd52395d7c117fe773fbb7e071a6164bd4`  
		Last Modified: Thu, 15 Oct 2026 19:07:19 GMT  
		Size: 558.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d874597ebfbb9d6769fde69af0dcd6d70b2bb56bea26dc6a3c8575f299e03bb`  
		Last Modified: Thu, 15 Oct 2026 19:07:19 GMT  
		Size: 597.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ddfee0ff3efb5159b4d6fb149dd873db525b00c61882ea1209945437f2a0eef`  
		Last Modified: Thu, 15 Oct 2026 19:07:20 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18.0` - unknown; unknown

```console
$ docker pull odoo@sha256:10faec6bf53a677e47e9ba424b77616ab735cbff6e9bc16561d3d9eabc6cd097
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.0 MB (43969525 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96542ad630869b20a9aca57412f633c75e7bf9b7355d9eb9734e137117e9f1bc`

```dockerfile
```

-	Layers:
	-	`sha256:6078af39660c0c4e3c37f0f25ab7d9f0a5d931b60b6848c0a87f5cb5ee5f3b46`  
		Last Modified: Thu, 15 Oct 2026 19:07:19 GMT  
		Size: 43.9 MB (43942176 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fb6ec94f6574b31cda604dabcb2714299684cbd10c0f55ec3943f1f62b1a130b`  
		Last Modified: Thu, 15 Oct 2026 19:07:16 GMT  
		Size: 27.3 KB (27349 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:18.0` - linux; ppc64le

```console
$ docker pull odoo@sha256:e3a5297ff9dd58d48a93c81fbc8fee8ae96c57758764cf74c0860e70abf623af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **694.3 MB (694309060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67a708ac7c45c8e03a61fbf61ed367fdfda0fdef4310976701bd1caae3cfe085`
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
ENV ODOO_VERSION=18.0
# Thu, 15 Oct 2026 20:00:46 GMT
ARG ODOO_RELEASE=20261015
# Thu, 15 Oct 2026 20:00:46 GMT
ARG ODOO_SHA=21f8d7d61d37a8bb1a6a0e151bc976c91d8b8229
# Thu, 15 Oct 2026 20:12:58 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261015 ODOO_SHA=21f8d7d61d37a8bb1a6a0e151bc976c91d8b8229
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Thu, 15 Oct 2026 20:13:01 GMT
COPY ./entrypoint.sh / # buildkit
# Thu, 15 Oct 2026 20:13:03 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Thu, 15 Oct 2026 20:13:06 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261015 ODOO_SHA=21f8d7d61d37a8bb1a6a0e151bc976c91d8b8229
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Thu, 15 Oct 2026 20:13:06 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Thu, 15 Oct 2026 20:13:06 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Thu, 15 Oct 2026 20:13:06 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Thu, 15 Oct 2026 20:13:09 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Thu, 15 Oct 2026 20:13:09 GMT
USER odoo
# Thu, 15 Oct 2026 20:13:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 15 Oct 2026 20:13:09 GMT
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
	-	`sha256:2e03e4820111744c4bb9579d4c2412c718e3080c56f7f7dbc88798abdb48c8f2`  
		Last Modified: Thu, 15 Oct 2026 20:16:38 GMT  
		Size: 392.2 MB (392214341 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:640fb77a2bda5f31c5759930eb86ad600ec26203dade7000c08d27b7acd33708`  
		Last Modified: Thu, 15 Oct 2026 20:16:28 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5005a7adbb5bcfded0441af996806becd648c46baf1601c17d748ef229e29061`  
		Last Modified: Thu, 15 Oct 2026 20:16:28 GMT  
		Size: 557.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb340c4fce9944d3ce4a099ef52a295ec9e0b27f85688373ef4b82eed14e7632`  
		Last Modified: Thu, 15 Oct 2026 20:16:29 GMT  
		Size: 600.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01e6aa91b243e742767f71acb51123b7dac5fa70481abce225227c9d863c2e23`  
		Last Modified: Thu, 15 Oct 2026 20:16:30 GMT  
		Size: 880.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18.0` - unknown; unknown

```console
$ docker pull odoo@sha256:58ae6649fb1cc6cc435f1665a7364acad61078a9eec36b4707a8745341262144
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.0 MB (43970521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:797138fd97de3d50da45bd9b6e47d6646466e97f89f209141c321263570a7874`

```dockerfile
```

-	Layers:
	-	`sha256:1eeeb5375a6f172d670420ca445dc9e7345249e6052290ee9788ee7a3d90d3e8`  
		Last Modified: Thu, 15 Oct 2026 20:16:31 GMT  
		Size: 43.9 MB (43943268 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:df062674c5586a9231dd9f456e0779bcfedfcdec958ceb638d03ef13b44d82e9`  
		Last Modified: Thu, 15 Oct 2026 20:16:28 GMT  
		Size: 27.3 KB (27253 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:18.0-20261015`

```console
$ docker pull odoo@sha256:969046a63c575331df8e817cbb89fe23ca35ce877ce0a77b9f2eb7536a8375a7
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
$ docker pull odoo@sha256:eda24b114f322e1d0a7c61029a4a513bdb9155a6864948acb477a8b2bebd5343
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **677.5 MB (677525215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4051f6f6f065ee1fc7d0092871e85f7ecae3651b0bc6e8c29d4db43bccb101db`
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
# Thu, 15 Oct 2026 19:05:56 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Thu, 15 Oct 2026 19:05:56 GMT
SHELL [/bin/bash -xo pipefail -c]
# Thu, 15 Oct 2026 19:05:56 GMT
ENV LANG=en_US.UTF-8
# Thu, 15 Oct 2026 19:05:56 GMT
ARG TARGETARCH=amd64
# Thu, 15 Oct 2026 19:05:56 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Thu, 15 Oct 2026 19:06:05 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 15 Oct 2026 19:07:26 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 15 Oct 2026 19:07:26 GMT
ENV ODOO_VERSION=18.0
# Thu, 15 Oct 2026 19:07:26 GMT
ARG ODOO_RELEASE=20261015
# Thu, 15 Oct 2026 19:07:26 GMT
ARG ODOO_SHA=21f8d7d61d37a8bb1a6a0e151bc976c91d8b8229
# Thu, 15 Oct 2026 19:08:19 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261015 ODOO_SHA=21f8d7d61d37a8bb1a6a0e151bc976c91d8b8229
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Thu, 15 Oct 2026 19:08:20 GMT
COPY ./entrypoint.sh / # buildkit
# Thu, 15 Oct 2026 19:08:20 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Thu, 15 Oct 2026 19:08:20 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261015 ODOO_SHA=21f8d7d61d37a8bb1a6a0e151bc976c91d8b8229
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Thu, 15 Oct 2026 19:08:20 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Thu, 15 Oct 2026 19:08:20 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Thu, 15 Oct 2026 19:08:20 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Thu, 15 Oct 2026 19:08:20 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Thu, 15 Oct 2026 19:08:20 GMT
USER odoo
# Thu, 15 Oct 2026 19:08:20 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 15 Oct 2026 19:08:20 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:a60ef8ec184edb5ed91f5983f00261359fb2fe20f603e8d488b9477d32fcad70`  
		Last Modified: Fri, 18 Sep 2026 22:29:51 GMT  
		Size: 29.8 MB (29764422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c6b0c65f1f33e7fd5af4cb60b80c6303a25b601f66cb829e9897f79b9fa97d5`  
		Last Modified: Thu, 15 Oct 2026 19:09:52 GMT  
		Size: 241.1 MB (241120959 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5b40a04f3f57082f1bf8d34e9ac455926a19d1b19f63503e4ed7ea88b5d19b8`  
		Last Modified: Thu, 15 Oct 2026 19:09:42 GMT  
		Size: 14.2 MB (14226530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a47a8d9089ed7168c78bb474fee6f8fcd0a98d20d1a302a0ec1e049e2920b524`  
		Last Modified: Thu, 15 Oct 2026 19:09:41 GMT  
		Size: 873.1 KB (873125 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bed7e101fb910b9aac4439f2f3e2fab9efc84b46f61eaac04dabc0e0e7fe2203`  
		Last Modified: Thu, 15 Oct 2026 19:09:55 GMT  
		Size: 391.5 MB (391537381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6b55e971ceea4bcbde374ffc5f27540d4e38954418929b84bc8f19c6eafba87`  
		Last Modified: Thu, 15 Oct 2026 19:09:43 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54d179a9c16355670e1c1f7001f5d8afca3345d0b701056b623e11d8c78c7542`  
		Last Modified: Thu, 15 Oct 2026 19:09:44 GMT  
		Size: 556.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55c4da8dd857c7e5ee144df53da0398f7ef8a45f80b29ae14dea23293af6b236`  
		Last Modified: Thu, 15 Oct 2026 19:09:44 GMT  
		Size: 596.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:889eb181e5c734833a46da4f09c3bda807811ec17c366a0f1b6342cc7833dfc8`  
		Last Modified: Thu, 15 Oct 2026 19:09:45 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18.0-20261015` - unknown; unknown

```console
$ docker pull odoo@sha256:62727087ead36c92a46f893f1c63fbd0104dbb0791eb414546934e143c7f1f9f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.0 MB (43962101 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78a2bd544ad477dabf663540bbdcadb0a6b3473bc0bed6a2976760c69432d256`

```dockerfile
```

-	Layers:
	-	`sha256:e89350cde5183f186f1abc3c35254377cb1475b6961f11310efe706630eed11b`  
		Last Modified: Thu, 15 Oct 2026 19:09:44 GMT  
		Size: 43.9 MB (43934904 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a8c7b3ac0410e0ccf737b706e2cbdedbd642f3887fe35eeb3af2d67964c1993c`  
		Last Modified: Thu, 15 Oct 2026 19:09:41 GMT  
		Size: 27.2 KB (27197 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:18.0-20261015` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:739d834c129d8035229623b0c95db67ec85d1276c184006abd88aa1c9678970a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **673.9 MB (673873772 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:074c484de2e429e11ae8c805fb8613937cae5dc6eda6723051243efe77f7c929`
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
# Thu, 15 Oct 2026 19:03:30 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Thu, 15 Oct 2026 19:03:30 GMT
SHELL [/bin/bash -xo pipefail -c]
# Thu, 15 Oct 2026 19:03:30 GMT
ENV LANG=en_US.UTF-8
# Thu, 15 Oct 2026 19:03:30 GMT
ARG TARGETARCH=arm64
# Thu, 15 Oct 2026 19:03:30 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Thu, 15 Oct 2026 19:03:40 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 15 Oct 2026 19:04:46 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 15 Oct 2026 19:04:46 GMT
ENV ODOO_VERSION=18.0
# Thu, 15 Oct 2026 19:04:46 GMT
ARG ODOO_RELEASE=20261015
# Thu, 15 Oct 2026 19:04:46 GMT
ARG ODOO_SHA=21f8d7d61d37a8bb1a6a0e151bc976c91d8b8229
# Thu, 15 Oct 2026 19:05:46 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261015 ODOO_SHA=21f8d7d61d37a8bb1a6a0e151bc976c91d8b8229
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Thu, 15 Oct 2026 19:05:46 GMT
COPY ./entrypoint.sh / # buildkit
# Thu, 15 Oct 2026 19:05:46 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Thu, 15 Oct 2026 19:05:46 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261015 ODOO_SHA=21f8d7d61d37a8bb1a6a0e151bc976c91d8b8229
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Thu, 15 Oct 2026 19:05:46 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Thu, 15 Oct 2026 19:05:46 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Thu, 15 Oct 2026 19:05:46 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Thu, 15 Oct 2026 19:05:46 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Thu, 15 Oct 2026 19:05:46 GMT
USER odoo
# Thu, 15 Oct 2026 19:05:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 15 Oct 2026 19:05:46 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:90812e242c93750dbd37ce847c7d3db62c2c53035367d1d89c61184f168f5d37`  
		Last Modified: Fri, 18 Sep 2026 22:29:58 GMT  
		Size: 28.9 MB (28940087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20bcd750b3e28421f25d90f584a577d682a18ae6061b044b50eadb0508d44a9c`  
		Last Modified: Thu, 15 Oct 2026 19:07:26 GMT  
		Size: 238.5 MB (238459353 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f07b8359fa8ce370013b8e4b442c7c1517b4cefabf8ba50bea50f2698f02b005`  
		Last Modified: Thu, 15 Oct 2026 19:07:17 GMT  
		Size: 14.2 MB (14197536 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d35f89c93a95a1a54299bc7de5dd67c9f78d130ef1914c4b7910644dd885c05d`  
		Last Modified: Thu, 15 Oct 2026 19:07:16 GMT  
		Size: 872.8 KB (872795 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f473e12dd1ebcfee8f1e3e9e98870634c0ea45af1f750cb4d81498350a6b044d`  
		Last Modified: Thu, 15 Oct 2026 19:07:29 GMT  
		Size: 391.4 MB (391401201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88d0cbf96a20fff901a1a1a09188a8b5f95c15307145c3cffbd584d5815af48d`  
		Last Modified: Thu, 15 Oct 2026 19:07:18 GMT  
		Size: 766.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a5ccbeb1ff978ce389a803b2a0242bd52395d7c117fe773fbb7e071a6164bd4`  
		Last Modified: Thu, 15 Oct 2026 19:07:19 GMT  
		Size: 558.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d874597ebfbb9d6769fde69af0dcd6d70b2bb56bea26dc6a3c8575f299e03bb`  
		Last Modified: Thu, 15 Oct 2026 19:07:19 GMT  
		Size: 597.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ddfee0ff3efb5159b4d6fb149dd873db525b00c61882ea1209945437f2a0eef`  
		Last Modified: Thu, 15 Oct 2026 19:07:20 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18.0-20261015` - unknown; unknown

```console
$ docker pull odoo@sha256:10faec6bf53a677e47e9ba424b77616ab735cbff6e9bc16561d3d9eabc6cd097
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.0 MB (43969525 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96542ad630869b20a9aca57412f633c75e7bf9b7355d9eb9734e137117e9f1bc`

```dockerfile
```

-	Layers:
	-	`sha256:6078af39660c0c4e3c37f0f25ab7d9f0a5d931b60b6848c0a87f5cb5ee5f3b46`  
		Last Modified: Thu, 15 Oct 2026 19:07:19 GMT  
		Size: 43.9 MB (43942176 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fb6ec94f6574b31cda604dabcb2714299684cbd10c0f55ec3943f1f62b1a130b`  
		Last Modified: Thu, 15 Oct 2026 19:07:16 GMT  
		Size: 27.3 KB (27349 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:18.0-20261015` - linux; ppc64le

```console
$ docker pull odoo@sha256:e3a5297ff9dd58d48a93c81fbc8fee8ae96c57758764cf74c0860e70abf623af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **694.3 MB (694309060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67a708ac7c45c8e03a61fbf61ed367fdfda0fdef4310976701bd1caae3cfe085`
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
ENV ODOO_VERSION=18.0
# Thu, 15 Oct 2026 20:00:46 GMT
ARG ODOO_RELEASE=20261015
# Thu, 15 Oct 2026 20:00:46 GMT
ARG ODOO_SHA=21f8d7d61d37a8bb1a6a0e151bc976c91d8b8229
# Thu, 15 Oct 2026 20:12:58 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261015 ODOO_SHA=21f8d7d61d37a8bb1a6a0e151bc976c91d8b8229
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Thu, 15 Oct 2026 20:13:01 GMT
COPY ./entrypoint.sh / # buildkit
# Thu, 15 Oct 2026 20:13:03 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Thu, 15 Oct 2026 20:13:06 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261015 ODOO_SHA=21f8d7d61d37a8bb1a6a0e151bc976c91d8b8229
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Thu, 15 Oct 2026 20:13:06 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Thu, 15 Oct 2026 20:13:06 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Thu, 15 Oct 2026 20:13:06 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Thu, 15 Oct 2026 20:13:09 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Thu, 15 Oct 2026 20:13:09 GMT
USER odoo
# Thu, 15 Oct 2026 20:13:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 15 Oct 2026 20:13:09 GMT
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
	-	`sha256:2e03e4820111744c4bb9579d4c2412c718e3080c56f7f7dbc88798abdb48c8f2`  
		Last Modified: Thu, 15 Oct 2026 20:16:38 GMT  
		Size: 392.2 MB (392214341 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:640fb77a2bda5f31c5759930eb86ad600ec26203dade7000c08d27b7acd33708`  
		Last Modified: Thu, 15 Oct 2026 20:16:28 GMT  
		Size: 767.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5005a7adbb5bcfded0441af996806becd648c46baf1601c17d748ef229e29061`  
		Last Modified: Thu, 15 Oct 2026 20:16:28 GMT  
		Size: 557.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb340c4fce9944d3ce4a099ef52a295ec9e0b27f85688373ef4b82eed14e7632`  
		Last Modified: Thu, 15 Oct 2026 20:16:29 GMT  
		Size: 600.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01e6aa91b243e742767f71acb51123b7dac5fa70481abce225227c9d863c2e23`  
		Last Modified: Thu, 15 Oct 2026 20:16:30 GMT  
		Size: 880.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:18.0-20261015` - unknown; unknown

```console
$ docker pull odoo@sha256:58ae6649fb1cc6cc435f1665a7364acad61078a9eec36b4707a8745341262144
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.0 MB (43970521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:797138fd97de3d50da45bd9b6e47d6646466e97f89f209141c321263570a7874`

```dockerfile
```

-	Layers:
	-	`sha256:1eeeb5375a6f172d670420ca445dc9e7345249e6052290ee9788ee7a3d90d3e8`  
		Last Modified: Thu, 15 Oct 2026 20:16:31 GMT  
		Size: 43.9 MB (43943268 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:df062674c5586a9231dd9f456e0779bcfedfcdec958ceb638d03ef13b44d82e9`  
		Last Modified: Thu, 15 Oct 2026 20:16:28 GMT  
		Size: 27.3 KB (27253 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:19`

```console
$ docker pull odoo@sha256:d7b19ac51bf8eddba38f53395451681b4b54b68daf905b698b3b9133f954f51f
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
$ docker pull odoo@sha256:7a902e2ec54ad96008a66c80dffa2ac5dc540948e97ddaa55196aad88fc09e60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **701.2 MB (701220384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a788f0352f6197ff49180c9d50a8291c2ae75ab22515a987660ad0166ed2624a`
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
# Thu, 15 Oct 2026 19:04:36 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Thu, 15 Oct 2026 19:04:36 GMT
SHELL [/bin/bash -xo pipefail -c]
# Thu, 15 Oct 2026 19:04:36 GMT
ENV LANG=en_US.UTF-8
# Thu, 15 Oct 2026 19:04:36 GMT
ARG TARGETARCH=amd64
# Thu, 15 Oct 2026 19:04:36 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Thu, 15 Oct 2026 19:04:48 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 15 Oct 2026 19:05:55 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 15 Oct 2026 19:05:55 GMT
ENV ODOO_VERSION=19.0
# Thu, 15 Oct 2026 19:05:55 GMT
ARG ODOO_RELEASE=20261015
# Thu, 15 Oct 2026 19:05:55 GMT
ARG ODOO_SHA=3a2e406fa0399944a7c339baa5f53ca2e783e71b
# Thu, 15 Oct 2026 19:06:59 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261015 ODOO_SHA=3a2e406fa0399944a7c339baa5f53ca2e783e71b
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Thu, 15 Oct 2026 19:07:00 GMT
COPY ./entrypoint.sh / # buildkit
# Thu, 15 Oct 2026 19:07:00 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Thu, 15 Oct 2026 19:07:00 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261015 ODOO_SHA=3a2e406fa0399944a7c339baa5f53ca2e783e71b
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Thu, 15 Oct 2026 19:07:00 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Thu, 15 Oct 2026 19:07:00 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Thu, 15 Oct 2026 19:07:00 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Thu, 15 Oct 2026 19:07:00 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Thu, 15 Oct 2026 19:07:00 GMT
USER odoo
# Thu, 15 Oct 2026 19:07:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 15 Oct 2026 19:07:00 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:a60ef8ec184edb5ed91f5983f00261359fb2fe20f603e8d488b9477d32fcad70`  
		Last Modified: Fri, 18 Sep 2026 22:29:51 GMT  
		Size: 29.8 MB (29764422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0af56fb33a2a766310593e83b629da96c719a978fa6ff477f824b4fb6a12105`  
		Last Modified: Thu, 15 Oct 2026 19:08:57 GMT  
		Size: 241.1 MB (241121094 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00897e6f011920a015a0945e4fc9fbed77d10529952cceebf7dc7ece3f394803`  
		Last Modified: Thu, 15 Oct 2026 19:08:45 GMT  
		Size: 14.2 MB (14226250 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95132e22b34951eb97b60a4b752e570e5f5280aeaa23b2a21efac5d2da5806aa`  
		Last Modified: Thu, 15 Oct 2026 19:08:43 GMT  
		Size: 872.9 KB (872882 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:feff55f7a9061a2edb9343b7293c57d3533426318ef8f1519cbc7636867d8d3e`  
		Last Modified: Thu, 15 Oct 2026 19:09:02 GMT  
		Size: 415.2 MB (415232991 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09b194b1ff63a53cef53d578312374f9a621968720e19c91aea22dd2e2273df8`  
		Last Modified: Thu, 15 Oct 2026 19:08:45 GMT  
		Size: 719.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac4f16ec7bbe14f8189f6a2b915f613614aed4ff99ba906bf29f2a934508c8ca`  
		Last Modified: Thu, 15 Oct 2026 19:08:46 GMT  
		Size: 555.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34f896168afedc0aaedb1bd0c5258d3e5f82ece0903ab49848f1e16f920c1e82`  
		Last Modified: Thu, 15 Oct 2026 19:08:46 GMT  
		Size: 593.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d7cc4c9d1627bb43bbf56eddbc869c41049a8592c8ae06af1e17b15022426a8`  
		Last Modified: Thu, 15 Oct 2026 19:08:48 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19` - unknown; unknown

```console
$ docker pull odoo@sha256:4fa11cbe3508b0d282202d688926be1d5a014bc19f0ff1555afc5297882903ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.5 MB (52519065 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d917ae082948cfa20124655baff91b11dcde0fcaf767ebf16db540f1c0e967dd`

```dockerfile
```

-	Layers:
	-	`sha256:6bade89a60fccb0cb4860e442f01b82dbe6f56fa569699b9392e6519b897fe41`  
		Last Modified: Thu, 15 Oct 2026 19:08:47 GMT  
		Size: 52.5 MB (52491868 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:300a19b9ae91261b996c3f3f6d81befb5693c8d96c8bc65452c1fea3b3369044`  
		Last Modified: Thu, 15 Oct 2026 19:08:43 GMT  
		Size: 27.2 KB (27197 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:19` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:eee12460f4a1fdebd6d1c1267535d261a20325622b028277a39ce8f8813e33e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **697.6 MB (697569666 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63c94d3de38179664249f4adf73590ad221b4062485559ca4b28fdc20a9608e3`
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
# Thu, 15 Oct 2026 19:03:37 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Thu, 15 Oct 2026 19:03:37 GMT
SHELL [/bin/bash -xo pipefail -c]
# Thu, 15 Oct 2026 19:03:37 GMT
ENV LANG=en_US.UTF-8
# Thu, 15 Oct 2026 19:03:37 GMT
ARG TARGETARCH=arm64
# Thu, 15 Oct 2026 19:03:37 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Thu, 15 Oct 2026 19:03:47 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 15 Oct 2026 19:04:59 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 15 Oct 2026 19:04:59 GMT
ENV ODOO_VERSION=19.0
# Thu, 15 Oct 2026 19:04:59 GMT
ARG ODOO_RELEASE=20261015
# Thu, 15 Oct 2026 19:04:59 GMT
ARG ODOO_SHA=3a2e406fa0399944a7c339baa5f53ca2e783e71b
# Thu, 15 Oct 2026 19:06:06 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261015 ODOO_SHA=3a2e406fa0399944a7c339baa5f53ca2e783e71b
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Thu, 15 Oct 2026 19:06:07 GMT
COPY ./entrypoint.sh / # buildkit
# Thu, 15 Oct 2026 19:06:07 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Thu, 15 Oct 2026 19:06:07 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261015 ODOO_SHA=3a2e406fa0399944a7c339baa5f53ca2e783e71b
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Thu, 15 Oct 2026 19:06:07 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Thu, 15 Oct 2026 19:06:07 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Thu, 15 Oct 2026 19:06:07 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Thu, 15 Oct 2026 19:06:07 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Thu, 15 Oct 2026 19:06:07 GMT
USER odoo
# Thu, 15 Oct 2026 19:06:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 15 Oct 2026 19:06:07 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:90812e242c93750dbd37ce847c7d3db62c2c53035367d1d89c61184f168f5d37`  
		Last Modified: Fri, 18 Sep 2026 22:29:58 GMT  
		Size: 28.9 MB (28940087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7171d61c56a058bbaca73d3635777125555984e1f860e8c8e2a8c0a23bebe9f6`  
		Last Modified: Thu, 15 Oct 2026 19:08:09 GMT  
		Size: 238.5 MB (238458164 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:757e006461d29f0cd5c8582fdeeb5d209e71cb2b06aaa194ce43ddb2271934c2`  
		Last Modified: Thu, 15 Oct 2026 19:07:55 GMT  
		Size: 14.2 MB (14197544 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5874fbaff78361e21c2edecee89b893d47afb991b1312e6c781472089988fd65`  
		Last Modified: Thu, 15 Oct 2026 19:07:54 GMT  
		Size: 872.8 KB (872766 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d262728dee8f48339089ee7e90800b0094eda6a1f6e6f9cd09ef74cb641f45b0`  
		Last Modified: Thu, 15 Oct 2026 19:08:14 GMT  
		Size: 415.1 MB (415098355 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0840e25de150fc7e1f33a8abd41afa65d91ba2d9d59836f7e3b61818f5b3ab53`  
		Last Modified: Thu, 15 Oct 2026 19:07:56 GMT  
		Size: 718.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e715d97e329603105b3632cf466ca6aec83edf4d0e2a3bf4ac367600301da40`  
		Last Modified: Thu, 15 Oct 2026 19:07:57 GMT  
		Size: 557.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20c13242c87814b23e4a0e84ca7a4c1a8610b430c5c26b16a655c1f94d24485f`  
		Last Modified: Thu, 15 Oct 2026 19:07:57 GMT  
		Size: 596.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13b5fd30f9c37c60ad9241ac167460eb727b544b952afaa330e3d6027936d2bd`  
		Last Modified: Thu, 15 Oct 2026 19:07:58 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19` - unknown; unknown

```console
$ docker pull odoo@sha256:68bb39e2753ef044a741aac16f01fa792cd5346353e10c38854c24cc01e4a2d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.5 MB (52526489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68523d7ce209b8f626ac251e5a950c0c0f7b78aad8b4136ba71353fa80c35dfd`

```dockerfile
```

-	Layers:
	-	`sha256:137441aa6ba00c82cb0b69068cfe2d43fbb276e72c0114838085d345d4c90210`  
		Last Modified: Thu, 15 Oct 2026 19:07:58 GMT  
		Size: 52.5 MB (52499140 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6c8b88f92253bbabbec3659137b4c4a39d20d73c7cbfc9617e037f2d8480bed7`  
		Last Modified: Thu, 15 Oct 2026 19:07:54 GMT  
		Size: 27.3 KB (27349 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:19` - linux; ppc64le

```console
$ docker pull odoo@sha256:8c17457ac63fe42db8f0633491e1eb71ccbe17a9eda3f6b7c61c957d2b61ff4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **718.0 MB (717978826 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78040b7a3e7fa10ea4bdbdc36003ceb01b340b52fabc448936a99019029a8752`
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
ENV ODOO_VERSION=19.0
# Thu, 15 Oct 2026 20:00:46 GMT
ARG ODOO_RELEASE=20261015
# Thu, 15 Oct 2026 20:00:46 GMT
ARG ODOO_SHA=3a2e406fa0399944a7c339baa5f53ca2e783e71b
# Thu, 15 Oct 2026 20:04:06 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261015 ODOO_SHA=3a2e406fa0399944a7c339baa5f53ca2e783e71b
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Thu, 15 Oct 2026 20:04:27 GMT
COPY ./entrypoint.sh / # buildkit
# Thu, 15 Oct 2026 20:04:30 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Thu, 15 Oct 2026 20:04:52 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261015 ODOO_SHA=3a2e406fa0399944a7c339baa5f53ca2e783e71b
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
	-	`sha256:dbe372734663beaef98b7214d091201c6def7171ceaa6f042c2594912af97b8f`  
		Last Modified: Thu, 15 Oct 2026 20:10:03 GMT  
		Size: 415.9 MB (415884157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a94a417ff78809d600359150191ba9d37e33421a46c3b9f07c005b307336ef51`  
		Last Modified: Thu, 15 Oct 2026 20:09:51 GMT  
		Size: 718.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:196351ce4315584f370b94515fca3fb5a2005333028c479a1391593b2031735d`  
		Last Modified: Thu, 15 Oct 2026 20:09:52 GMT  
		Size: 557.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64f9c09782e0ba2cfec3fe74e250265e13eb532bc56e39a46b3e39e75b06aa69`  
		Last Modified: Thu, 15 Oct 2026 20:09:52 GMT  
		Size: 600.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a589889f574f3fe0af0582a8ea92d999a250d8c06c677d51c503da8fea4de82e`  
		Last Modified: Thu, 15 Oct 2026 20:09:54 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19` - unknown; unknown

```console
$ docker pull odoo@sha256:95e73dd39f7b112920775f0c604d1d4879510723a8e86981decfe9d7b7bea4a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.5 MB (52527484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22fcdc833b4b53fe58c60d92ccdb756a1b5bc69bd8896a729039b167ec908451`

```dockerfile
```

-	Layers:
	-	`sha256:7e69d479b3d1fe67f593cafde062b25c4eae0ddb4e60e20d4a4e68e1cee3d258`  
		Last Modified: Thu, 15 Oct 2026 20:09:53 GMT  
		Size: 52.5 MB (52500232 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2b616612b89e27cfff922bcbae976107cb06fd23d9ba07afc9004a28a91401af`  
		Last Modified: Thu, 15 Oct 2026 20:09:49 GMT  
		Size: 27.3 KB (27252 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:19.0`

```console
$ docker pull odoo@sha256:d7b19ac51bf8eddba38f53395451681b4b54b68daf905b698b3b9133f954f51f
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
$ docker pull odoo@sha256:7a902e2ec54ad96008a66c80dffa2ac5dc540948e97ddaa55196aad88fc09e60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **701.2 MB (701220384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a788f0352f6197ff49180c9d50a8291c2ae75ab22515a987660ad0166ed2624a`
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
# Thu, 15 Oct 2026 19:04:36 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Thu, 15 Oct 2026 19:04:36 GMT
SHELL [/bin/bash -xo pipefail -c]
# Thu, 15 Oct 2026 19:04:36 GMT
ENV LANG=en_US.UTF-8
# Thu, 15 Oct 2026 19:04:36 GMT
ARG TARGETARCH=amd64
# Thu, 15 Oct 2026 19:04:36 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Thu, 15 Oct 2026 19:04:48 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 15 Oct 2026 19:05:55 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 15 Oct 2026 19:05:55 GMT
ENV ODOO_VERSION=19.0
# Thu, 15 Oct 2026 19:05:55 GMT
ARG ODOO_RELEASE=20261015
# Thu, 15 Oct 2026 19:05:55 GMT
ARG ODOO_SHA=3a2e406fa0399944a7c339baa5f53ca2e783e71b
# Thu, 15 Oct 2026 19:06:59 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261015 ODOO_SHA=3a2e406fa0399944a7c339baa5f53ca2e783e71b
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Thu, 15 Oct 2026 19:07:00 GMT
COPY ./entrypoint.sh / # buildkit
# Thu, 15 Oct 2026 19:07:00 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Thu, 15 Oct 2026 19:07:00 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261015 ODOO_SHA=3a2e406fa0399944a7c339baa5f53ca2e783e71b
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Thu, 15 Oct 2026 19:07:00 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Thu, 15 Oct 2026 19:07:00 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Thu, 15 Oct 2026 19:07:00 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Thu, 15 Oct 2026 19:07:00 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Thu, 15 Oct 2026 19:07:00 GMT
USER odoo
# Thu, 15 Oct 2026 19:07:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 15 Oct 2026 19:07:00 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:a60ef8ec184edb5ed91f5983f00261359fb2fe20f603e8d488b9477d32fcad70`  
		Last Modified: Fri, 18 Sep 2026 22:29:51 GMT  
		Size: 29.8 MB (29764422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0af56fb33a2a766310593e83b629da96c719a978fa6ff477f824b4fb6a12105`  
		Last Modified: Thu, 15 Oct 2026 19:08:57 GMT  
		Size: 241.1 MB (241121094 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00897e6f011920a015a0945e4fc9fbed77d10529952cceebf7dc7ece3f394803`  
		Last Modified: Thu, 15 Oct 2026 19:08:45 GMT  
		Size: 14.2 MB (14226250 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95132e22b34951eb97b60a4b752e570e5f5280aeaa23b2a21efac5d2da5806aa`  
		Last Modified: Thu, 15 Oct 2026 19:08:43 GMT  
		Size: 872.9 KB (872882 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:feff55f7a9061a2edb9343b7293c57d3533426318ef8f1519cbc7636867d8d3e`  
		Last Modified: Thu, 15 Oct 2026 19:09:02 GMT  
		Size: 415.2 MB (415232991 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09b194b1ff63a53cef53d578312374f9a621968720e19c91aea22dd2e2273df8`  
		Last Modified: Thu, 15 Oct 2026 19:08:45 GMT  
		Size: 719.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac4f16ec7bbe14f8189f6a2b915f613614aed4ff99ba906bf29f2a934508c8ca`  
		Last Modified: Thu, 15 Oct 2026 19:08:46 GMT  
		Size: 555.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34f896168afedc0aaedb1bd0c5258d3e5f82ece0903ab49848f1e16f920c1e82`  
		Last Modified: Thu, 15 Oct 2026 19:08:46 GMT  
		Size: 593.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d7cc4c9d1627bb43bbf56eddbc869c41049a8592c8ae06af1e17b15022426a8`  
		Last Modified: Thu, 15 Oct 2026 19:08:48 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19.0` - unknown; unknown

```console
$ docker pull odoo@sha256:4fa11cbe3508b0d282202d688926be1d5a014bc19f0ff1555afc5297882903ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.5 MB (52519065 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d917ae082948cfa20124655baff91b11dcde0fcaf767ebf16db540f1c0e967dd`

```dockerfile
```

-	Layers:
	-	`sha256:6bade89a60fccb0cb4860e442f01b82dbe6f56fa569699b9392e6519b897fe41`  
		Last Modified: Thu, 15 Oct 2026 19:08:47 GMT  
		Size: 52.5 MB (52491868 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:300a19b9ae91261b996c3f3f6d81befb5693c8d96c8bc65452c1fea3b3369044`  
		Last Modified: Thu, 15 Oct 2026 19:08:43 GMT  
		Size: 27.2 KB (27197 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:19.0` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:eee12460f4a1fdebd6d1c1267535d261a20325622b028277a39ce8f8813e33e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **697.6 MB (697569666 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63c94d3de38179664249f4adf73590ad221b4062485559ca4b28fdc20a9608e3`
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
# Thu, 15 Oct 2026 19:03:37 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Thu, 15 Oct 2026 19:03:37 GMT
SHELL [/bin/bash -xo pipefail -c]
# Thu, 15 Oct 2026 19:03:37 GMT
ENV LANG=en_US.UTF-8
# Thu, 15 Oct 2026 19:03:37 GMT
ARG TARGETARCH=arm64
# Thu, 15 Oct 2026 19:03:37 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Thu, 15 Oct 2026 19:03:47 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 15 Oct 2026 19:04:59 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 15 Oct 2026 19:04:59 GMT
ENV ODOO_VERSION=19.0
# Thu, 15 Oct 2026 19:04:59 GMT
ARG ODOO_RELEASE=20261015
# Thu, 15 Oct 2026 19:04:59 GMT
ARG ODOO_SHA=3a2e406fa0399944a7c339baa5f53ca2e783e71b
# Thu, 15 Oct 2026 19:06:06 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261015 ODOO_SHA=3a2e406fa0399944a7c339baa5f53ca2e783e71b
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Thu, 15 Oct 2026 19:06:07 GMT
COPY ./entrypoint.sh / # buildkit
# Thu, 15 Oct 2026 19:06:07 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Thu, 15 Oct 2026 19:06:07 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261015 ODOO_SHA=3a2e406fa0399944a7c339baa5f53ca2e783e71b
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Thu, 15 Oct 2026 19:06:07 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Thu, 15 Oct 2026 19:06:07 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Thu, 15 Oct 2026 19:06:07 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Thu, 15 Oct 2026 19:06:07 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Thu, 15 Oct 2026 19:06:07 GMT
USER odoo
# Thu, 15 Oct 2026 19:06:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 15 Oct 2026 19:06:07 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:90812e242c93750dbd37ce847c7d3db62c2c53035367d1d89c61184f168f5d37`  
		Last Modified: Fri, 18 Sep 2026 22:29:58 GMT  
		Size: 28.9 MB (28940087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7171d61c56a058bbaca73d3635777125555984e1f860e8c8e2a8c0a23bebe9f6`  
		Last Modified: Thu, 15 Oct 2026 19:08:09 GMT  
		Size: 238.5 MB (238458164 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:757e006461d29f0cd5c8582fdeeb5d209e71cb2b06aaa194ce43ddb2271934c2`  
		Last Modified: Thu, 15 Oct 2026 19:07:55 GMT  
		Size: 14.2 MB (14197544 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5874fbaff78361e21c2edecee89b893d47afb991b1312e6c781472089988fd65`  
		Last Modified: Thu, 15 Oct 2026 19:07:54 GMT  
		Size: 872.8 KB (872766 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d262728dee8f48339089ee7e90800b0094eda6a1f6e6f9cd09ef74cb641f45b0`  
		Last Modified: Thu, 15 Oct 2026 19:08:14 GMT  
		Size: 415.1 MB (415098355 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0840e25de150fc7e1f33a8abd41afa65d91ba2d9d59836f7e3b61818f5b3ab53`  
		Last Modified: Thu, 15 Oct 2026 19:07:56 GMT  
		Size: 718.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e715d97e329603105b3632cf466ca6aec83edf4d0e2a3bf4ac367600301da40`  
		Last Modified: Thu, 15 Oct 2026 19:07:57 GMT  
		Size: 557.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20c13242c87814b23e4a0e84ca7a4c1a8610b430c5c26b16a655c1f94d24485f`  
		Last Modified: Thu, 15 Oct 2026 19:07:57 GMT  
		Size: 596.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13b5fd30f9c37c60ad9241ac167460eb727b544b952afaa330e3d6027936d2bd`  
		Last Modified: Thu, 15 Oct 2026 19:07:58 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19.0` - unknown; unknown

```console
$ docker pull odoo@sha256:68bb39e2753ef044a741aac16f01fa792cd5346353e10c38854c24cc01e4a2d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.5 MB (52526489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68523d7ce209b8f626ac251e5a950c0c0f7b78aad8b4136ba71353fa80c35dfd`

```dockerfile
```

-	Layers:
	-	`sha256:137441aa6ba00c82cb0b69068cfe2d43fbb276e72c0114838085d345d4c90210`  
		Last Modified: Thu, 15 Oct 2026 19:07:58 GMT  
		Size: 52.5 MB (52499140 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6c8b88f92253bbabbec3659137b4c4a39d20d73c7cbfc9617e037f2d8480bed7`  
		Last Modified: Thu, 15 Oct 2026 19:07:54 GMT  
		Size: 27.3 KB (27349 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:19.0` - linux; ppc64le

```console
$ docker pull odoo@sha256:8c17457ac63fe42db8f0633491e1eb71ccbe17a9eda3f6b7c61c957d2b61ff4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **718.0 MB (717978826 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78040b7a3e7fa10ea4bdbdc36003ceb01b340b52fabc448936a99019029a8752`
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
ENV ODOO_VERSION=19.0
# Thu, 15 Oct 2026 20:00:46 GMT
ARG ODOO_RELEASE=20261015
# Thu, 15 Oct 2026 20:00:46 GMT
ARG ODOO_SHA=3a2e406fa0399944a7c339baa5f53ca2e783e71b
# Thu, 15 Oct 2026 20:04:06 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261015 ODOO_SHA=3a2e406fa0399944a7c339baa5f53ca2e783e71b
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Thu, 15 Oct 2026 20:04:27 GMT
COPY ./entrypoint.sh / # buildkit
# Thu, 15 Oct 2026 20:04:30 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Thu, 15 Oct 2026 20:04:52 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261015 ODOO_SHA=3a2e406fa0399944a7c339baa5f53ca2e783e71b
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
	-	`sha256:dbe372734663beaef98b7214d091201c6def7171ceaa6f042c2594912af97b8f`  
		Last Modified: Thu, 15 Oct 2026 20:10:03 GMT  
		Size: 415.9 MB (415884157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a94a417ff78809d600359150191ba9d37e33421a46c3b9f07c005b307336ef51`  
		Last Modified: Thu, 15 Oct 2026 20:09:51 GMT  
		Size: 718.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:196351ce4315584f370b94515fca3fb5a2005333028c479a1391593b2031735d`  
		Last Modified: Thu, 15 Oct 2026 20:09:52 GMT  
		Size: 557.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64f9c09782e0ba2cfec3fe74e250265e13eb532bc56e39a46b3e39e75b06aa69`  
		Last Modified: Thu, 15 Oct 2026 20:09:52 GMT  
		Size: 600.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a589889f574f3fe0af0582a8ea92d999a250d8c06c677d51c503da8fea4de82e`  
		Last Modified: Thu, 15 Oct 2026 20:09:54 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19.0` - unknown; unknown

```console
$ docker pull odoo@sha256:95e73dd39f7b112920775f0c604d1d4879510723a8e86981decfe9d7b7bea4a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.5 MB (52527484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22fcdc833b4b53fe58c60d92ccdb756a1b5bc69bd8896a729039b167ec908451`

```dockerfile
```

-	Layers:
	-	`sha256:7e69d479b3d1fe67f593cafde062b25c4eae0ddb4e60e20d4a4e68e1cee3d258`  
		Last Modified: Thu, 15 Oct 2026 20:09:53 GMT  
		Size: 52.5 MB (52500232 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2b616612b89e27cfff922bcbae976107cb06fd23d9ba07afc9004a28a91401af`  
		Last Modified: Thu, 15 Oct 2026 20:09:49 GMT  
		Size: 27.3 KB (27252 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:19.0-20261015`

```console
$ docker pull odoo@sha256:d7b19ac51bf8eddba38f53395451681b4b54b68daf905b698b3b9133f954f51f
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
$ docker pull odoo@sha256:7a902e2ec54ad96008a66c80dffa2ac5dc540948e97ddaa55196aad88fc09e60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **701.2 MB (701220384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a788f0352f6197ff49180c9d50a8291c2ae75ab22515a987660ad0166ed2624a`
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
# Thu, 15 Oct 2026 19:04:36 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Thu, 15 Oct 2026 19:04:36 GMT
SHELL [/bin/bash -xo pipefail -c]
# Thu, 15 Oct 2026 19:04:36 GMT
ENV LANG=en_US.UTF-8
# Thu, 15 Oct 2026 19:04:36 GMT
ARG TARGETARCH=amd64
# Thu, 15 Oct 2026 19:04:36 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Thu, 15 Oct 2026 19:04:48 GMT
# ARGS: TARGETARCH=amd64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 15 Oct 2026 19:05:55 GMT
# ARGS: TARGETARCH=amd64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 15 Oct 2026 19:05:55 GMT
ENV ODOO_VERSION=19.0
# Thu, 15 Oct 2026 19:05:55 GMT
ARG ODOO_RELEASE=20261015
# Thu, 15 Oct 2026 19:05:55 GMT
ARG ODOO_SHA=3a2e406fa0399944a7c339baa5f53ca2e783e71b
# Thu, 15 Oct 2026 19:06:59 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261015 ODOO_SHA=3a2e406fa0399944a7c339baa5f53ca2e783e71b
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Thu, 15 Oct 2026 19:07:00 GMT
COPY ./entrypoint.sh / # buildkit
# Thu, 15 Oct 2026 19:07:00 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Thu, 15 Oct 2026 19:07:00 GMT
# ARGS: TARGETARCH=amd64 ODOO_RELEASE=20261015 ODOO_SHA=3a2e406fa0399944a7c339baa5f53ca2e783e71b
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Thu, 15 Oct 2026 19:07:00 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Thu, 15 Oct 2026 19:07:00 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Thu, 15 Oct 2026 19:07:00 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Thu, 15 Oct 2026 19:07:00 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Thu, 15 Oct 2026 19:07:00 GMT
USER odoo
# Thu, 15 Oct 2026 19:07:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 15 Oct 2026 19:07:00 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:a60ef8ec184edb5ed91f5983f00261359fb2fe20f603e8d488b9477d32fcad70`  
		Last Modified: Fri, 18 Sep 2026 22:29:51 GMT  
		Size: 29.8 MB (29764422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0af56fb33a2a766310593e83b629da96c719a978fa6ff477f824b4fb6a12105`  
		Last Modified: Thu, 15 Oct 2026 19:08:57 GMT  
		Size: 241.1 MB (241121094 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00897e6f011920a015a0945e4fc9fbed77d10529952cceebf7dc7ece3f394803`  
		Last Modified: Thu, 15 Oct 2026 19:08:45 GMT  
		Size: 14.2 MB (14226250 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95132e22b34951eb97b60a4b752e570e5f5280aeaa23b2a21efac5d2da5806aa`  
		Last Modified: Thu, 15 Oct 2026 19:08:43 GMT  
		Size: 872.9 KB (872882 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:feff55f7a9061a2edb9343b7293c57d3533426318ef8f1519cbc7636867d8d3e`  
		Last Modified: Thu, 15 Oct 2026 19:09:02 GMT  
		Size: 415.2 MB (415232991 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09b194b1ff63a53cef53d578312374f9a621968720e19c91aea22dd2e2273df8`  
		Last Modified: Thu, 15 Oct 2026 19:08:45 GMT  
		Size: 719.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac4f16ec7bbe14f8189f6a2b915f613614aed4ff99ba906bf29f2a934508c8ca`  
		Last Modified: Thu, 15 Oct 2026 19:08:46 GMT  
		Size: 555.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34f896168afedc0aaedb1bd0c5258d3e5f82ece0903ab49848f1e16f920c1e82`  
		Last Modified: Thu, 15 Oct 2026 19:08:46 GMT  
		Size: 593.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d7cc4c9d1627bb43bbf56eddbc869c41049a8592c8ae06af1e17b15022426a8`  
		Last Modified: Thu, 15 Oct 2026 19:08:48 GMT  
		Size: 878.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19.0-20261015` - unknown; unknown

```console
$ docker pull odoo@sha256:4fa11cbe3508b0d282202d688926be1d5a014bc19f0ff1555afc5297882903ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.5 MB (52519065 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d917ae082948cfa20124655baff91b11dcde0fcaf767ebf16db540f1c0e967dd`

```dockerfile
```

-	Layers:
	-	`sha256:6bade89a60fccb0cb4860e442f01b82dbe6f56fa569699b9392e6519b897fe41`  
		Last Modified: Thu, 15 Oct 2026 19:08:47 GMT  
		Size: 52.5 MB (52491868 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:300a19b9ae91261b996c3f3f6d81befb5693c8d96c8bc65452c1fea3b3369044`  
		Last Modified: Thu, 15 Oct 2026 19:08:43 GMT  
		Size: 27.2 KB (27197 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:19.0-20261015` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:eee12460f4a1fdebd6d1c1267535d261a20325622b028277a39ce8f8813e33e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **697.6 MB (697569666 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63c94d3de38179664249f4adf73590ad221b4062485559ca4b28fdc20a9608e3`
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
# Thu, 15 Oct 2026 19:03:37 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Thu, 15 Oct 2026 19:03:37 GMT
SHELL [/bin/bash -xo pipefail -c]
# Thu, 15 Oct 2026 19:03:37 GMT
ENV LANG=en_US.UTF-8
# Thu, 15 Oct 2026 19:03:37 GMT
ARG TARGETARCH=arm64
# Thu, 15 Oct 2026 19:03:37 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dirmngr         fonts-noto-cjk         gnupg         libssl-dev         node-less         python3-magic         python3-num2words         python3-odf         python3-pdfminer         python3-pip         python3-phonenumbers         python3-pyldap         python3-qrcode         python3-renderpm         python3-setuptools         python3-slugify         python3-vobject         python3-watchdog         python3-xlrd         python3-xlwt         xz-utils &&     if [ -z "${TARGETARCH}" ]; then         TARGETARCH="$(dpkg --print-architecture)";     fi;     WKHTMLTOPDF_ARCH=${TARGETARCH} &&     case ${TARGETARCH} in     "amd64") WKHTMLTOPDF_ARCH=amd64 && WKHTMLTOPDF_SHA=967390a759707337b46d1c02452e2bb6b2dc6d59  ;;     "arm64")  WKHTMLTOPDF_SHA=90f6e69896d51ef77339d3f3a20f8582bdf496cc  ;;     "ppc64le" | "ppc64el") WKHTMLTOPDF_ARCH=ppc64el && WKHTMLTOPDF_SHA=5312d7d34a25b321282929df82e3574319aed25c  ;;     esac     && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_${WKHTMLTOPDF_ARCH}.deb     && echo ${WKHTMLTOPDF_SHA} wkhtmltox.deb | sha1sum -c -     && apt-get install -y --no-install-recommends ./wkhtmltox.deb     && rm -rf /var/lib/apt/lists/* wkhtmltox.deb # buildkit
# Thu, 15 Oct 2026 19:03:47 GMT
# ARGS: TARGETARCH=arm64
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ noble-pgdg main' > /etc/apt/sources.list.d/pgdg.list     && GNUPGHOME="$(mktemp -d)"     && export GNUPGHOME     && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --batch --armor --export "${repokey}" > /etc/apt/trusted.gpg.d/pgdg.gpg.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update      && apt-get install --no-install-recommends -y postgresql-client     && rm -f /etc/apt/sources.list.d/pgdg.list     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 15 Oct 2026 19:04:59 GMT
# ARGS: TARGETARCH=arm64
RUN apt-get update &&     apt-get install -y --no-install-recommends nodejs npm     && npm install -g rtlcss     && apt-get purge --autoremove -y npm     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 15 Oct 2026 19:04:59 GMT
ENV ODOO_VERSION=19.0
# Thu, 15 Oct 2026 19:04:59 GMT
ARG ODOO_RELEASE=20261015
# Thu, 15 Oct 2026 19:04:59 GMT
ARG ODOO_SHA=3a2e406fa0399944a7c339baa5f53ca2e783e71b
# Thu, 15 Oct 2026 19:06:06 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261015 ODOO_SHA=3a2e406fa0399944a7c339baa5f53ca2e783e71b
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Thu, 15 Oct 2026 19:06:07 GMT
COPY ./entrypoint.sh / # buildkit
# Thu, 15 Oct 2026 19:06:07 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Thu, 15 Oct 2026 19:06:07 GMT
# ARGS: TARGETARCH=arm64 ODOO_RELEASE=20261015 ODOO_SHA=3a2e406fa0399944a7c339baa5f53ca2e783e71b
RUN chown odoo /etc/odoo/odoo.conf     && mkdir -p /mnt/extra-addons     && chown -R odoo /mnt/extra-addons # buildkit
# Thu, 15 Oct 2026 19:06:07 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Thu, 15 Oct 2026 19:06:07 GMT
EXPOSE map[8069/tcp:{} 8071/tcp:{} 8072/tcp:{}]
# Thu, 15 Oct 2026 19:06:07 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Thu, 15 Oct 2026 19:06:07 GMT
COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py # buildkit
# Thu, 15 Oct 2026 19:06:07 GMT
USER odoo
# Thu, 15 Oct 2026 19:06:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 15 Oct 2026 19:06:07 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:90812e242c93750dbd37ce847c7d3db62c2c53035367d1d89c61184f168f5d37`  
		Last Modified: Fri, 18 Sep 2026 22:29:58 GMT  
		Size: 28.9 MB (28940087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7171d61c56a058bbaca73d3635777125555984e1f860e8c8e2a8c0a23bebe9f6`  
		Last Modified: Thu, 15 Oct 2026 19:08:09 GMT  
		Size: 238.5 MB (238458164 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:757e006461d29f0cd5c8582fdeeb5d209e71cb2b06aaa194ce43ddb2271934c2`  
		Last Modified: Thu, 15 Oct 2026 19:07:55 GMT  
		Size: 14.2 MB (14197544 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5874fbaff78361e21c2edecee89b893d47afb991b1312e6c781472089988fd65`  
		Last Modified: Thu, 15 Oct 2026 19:07:54 GMT  
		Size: 872.8 KB (872766 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d262728dee8f48339089ee7e90800b0094eda6a1f6e6f9cd09ef74cb641f45b0`  
		Last Modified: Thu, 15 Oct 2026 19:08:14 GMT  
		Size: 415.1 MB (415098355 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0840e25de150fc7e1f33a8abd41afa65d91ba2d9d59836f7e3b61818f5b3ab53`  
		Last Modified: Thu, 15 Oct 2026 19:07:56 GMT  
		Size: 718.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e715d97e329603105b3632cf466ca6aec83edf4d0e2a3bf4ac367600301da40`  
		Last Modified: Thu, 15 Oct 2026 19:07:57 GMT  
		Size: 557.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20c13242c87814b23e4a0e84ca7a4c1a8610b430c5c26b16a655c1f94d24485f`  
		Last Modified: Thu, 15 Oct 2026 19:07:57 GMT  
		Size: 596.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13b5fd30f9c37c60ad9241ac167460eb727b544b952afaa330e3d6027936d2bd`  
		Last Modified: Thu, 15 Oct 2026 19:07:58 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19.0-20261015` - unknown; unknown

```console
$ docker pull odoo@sha256:68bb39e2753ef044a741aac16f01fa792cd5346353e10c38854c24cc01e4a2d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.5 MB (52526489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68523d7ce209b8f626ac251e5a950c0c0f7b78aad8b4136ba71353fa80c35dfd`

```dockerfile
```

-	Layers:
	-	`sha256:137441aa6ba00c82cb0b69068cfe2d43fbb276e72c0114838085d345d4c90210`  
		Last Modified: Thu, 15 Oct 2026 19:07:58 GMT  
		Size: 52.5 MB (52499140 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6c8b88f92253bbabbec3659137b4c4a39d20d73c7cbfc9617e037f2d8480bed7`  
		Last Modified: Thu, 15 Oct 2026 19:07:54 GMT  
		Size: 27.3 KB (27349 bytes)  
		MIME: application/vnd.in-toto+json

### `odoo:19.0-20261015` - linux; ppc64le

```console
$ docker pull odoo@sha256:8c17457ac63fe42db8f0633491e1eb71ccbe17a9eda3f6b7c61c957d2b61ff4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **718.0 MB (717978826 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78040b7a3e7fa10ea4bdbdc36003ceb01b340b52fabc448936a99019029a8752`
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
ENV ODOO_VERSION=19.0
# Thu, 15 Oct 2026 20:00:46 GMT
ARG ODOO_RELEASE=20261015
# Thu, 15 Oct 2026 20:00:46 GMT
ARG ODOO_SHA=3a2e406fa0399944a7c339baa5f53ca2e783e71b
# Thu, 15 Oct 2026 20:04:06 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261015 ODOO_SHA=3a2e406fa0399944a7c339baa5f53ca2e783e71b
RUN curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb     && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -     && apt-get update     && apt-get -y install --no-install-recommends ./odoo.deb     && rm -rf /var/lib/apt/lists/* odoo.deb # buildkit
# Thu, 15 Oct 2026 20:04:27 GMT
COPY ./entrypoint.sh / # buildkit
# Thu, 15 Oct 2026 20:04:30 GMT
COPY ./odoo.conf /etc/odoo/ # buildkit
# Thu, 15 Oct 2026 20:04:52 GMT
# ARGS: TARGETARCH=ppc64le ODOO_RELEASE=20261015 ODOO_SHA=3a2e406fa0399944a7c339baa5f53ca2e783e71b
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
	-	`sha256:dbe372734663beaef98b7214d091201c6def7171ceaa6f042c2594912af97b8f`  
		Last Modified: Thu, 15 Oct 2026 20:10:03 GMT  
		Size: 415.9 MB (415884157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a94a417ff78809d600359150191ba9d37e33421a46c3b9f07c005b307336ef51`  
		Last Modified: Thu, 15 Oct 2026 20:09:51 GMT  
		Size: 718.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:196351ce4315584f370b94515fca3fb5a2005333028c479a1391593b2031735d`  
		Last Modified: Thu, 15 Oct 2026 20:09:52 GMT  
		Size: 557.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64f9c09782e0ba2cfec3fe74e250265e13eb532bc56e39a46b3e39e75b06aa69`  
		Last Modified: Thu, 15 Oct 2026 20:09:52 GMT  
		Size: 600.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a589889f574f3fe0af0582a8ea92d999a250d8c06c677d51c503da8fea4de82e`  
		Last Modified: Thu, 15 Oct 2026 20:09:54 GMT  
		Size: 879.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `odoo:19.0-20261015` - unknown; unknown

```console
$ docker pull odoo@sha256:95e73dd39f7b112920775f0c604d1d4879510723a8e86981decfe9d7b7bea4a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.5 MB (52527484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22fcdc833b4b53fe58c60d92ccdb756a1b5bc69bd8896a729039b167ec908451`

```dockerfile
```

-	Layers:
	-	`sha256:7e69d479b3d1fe67f593cafde062b25c4eae0ddb4e60e20d4a4e68e1cee3d258`  
		Last Modified: Thu, 15 Oct 2026 20:09:53 GMT  
		Size: 52.5 MB (52500232 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2b616612b89e27cfff922bcbae976107cb06fd23d9ba07afc9004a28a91401af`  
		Last Modified: Thu, 15 Oct 2026 20:09:49 GMT  
		Size: 27.3 KB (27252 bytes)  
		MIME: application/vnd.in-toto+json

## `odoo:20`

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

### `odoo:20` - linux; amd64

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

### `odoo:20` - unknown; unknown

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

### `odoo:20` - linux; arm64 variant v8

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

### `odoo:20` - unknown; unknown

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

### `odoo:20` - linux; ppc64le

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

### `odoo:20` - unknown; unknown

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

## `odoo:20.0`

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

### `odoo:20.0` - linux; amd64

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

### `odoo:20.0` - unknown; unknown

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

### `odoo:20.0` - linux; arm64 variant v8

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

### `odoo:20.0` - unknown; unknown

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

### `odoo:20.0` - linux; ppc64le

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

### `odoo:20.0` - unknown; unknown

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

## `odoo:20.0-20261015`

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

### `odoo:20.0-20261015` - linux; amd64

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

### `odoo:20.0-20261015` - unknown; unknown

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

### `odoo:20.0-20261015` - linux; arm64 variant v8

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

### `odoo:20.0-20261015` - unknown; unknown

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

### `odoo:20.0-20261015` - linux; ppc64le

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

### `odoo:20.0-20261015` - unknown; unknown

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
