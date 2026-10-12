<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `clickhouse`

-	[`clickhouse:26.3`](#clickhouse263)
-	[`clickhouse:26.3-jammy`](#clickhouse263-jammy)
-	[`clickhouse:26.3.45`](#clickhouse26345)
-	[`clickhouse:26.3.45-jammy`](#clickhouse26345-jammy)
-	[`clickhouse:26.3.45.3`](#clickhouse263453)
-	[`clickhouse:26.3.45.3-jammy`](#clickhouse263453-jammy)
-	[`clickhouse:26.7`](#clickhouse267)
-	[`clickhouse:26.7-jammy`](#clickhouse267-jammy)
-	[`clickhouse:26.7.25`](#clickhouse26725)
-	[`clickhouse:26.7.25-jammy`](#clickhouse26725-jammy)
-	[`clickhouse:26.7.25.6`](#clickhouse267256)
-	[`clickhouse:26.7.25.6-jammy`](#clickhouse267256-jammy)
-	[`clickhouse:26.8`](#clickhouse268)
-	[`clickhouse:26.8-jammy`](#clickhouse268-jammy)
-	[`clickhouse:26.8.21`](#clickhouse26821)
-	[`clickhouse:26.8.21-jammy`](#clickhouse26821-jammy)
-	[`clickhouse:26.8.21.10`](#clickhouse2682110)
-	[`clickhouse:26.8.21.10-jammy`](#clickhouse2682110-jammy)
-	[`clickhouse:26.9`](#clickhouse269)
-	[`clickhouse:26.9-jammy`](#clickhouse269-jammy)
-	[`clickhouse:26.9.13`](#clickhouse26913)
-	[`clickhouse:26.9.13-jammy`](#clickhouse26913-jammy)
-	[`clickhouse:26.9.13.15`](#clickhouse2691315)
-	[`clickhouse:26.9.13.15-jammy`](#clickhouse2691315-jammy)
-	[`clickhouse:jammy`](#clickhousejammy)
-	[`clickhouse:latest`](#clickhouselatest)
-	[`clickhouse:lts`](#clickhouselts)
-	[`clickhouse:lts-jammy`](#clickhouselts-jammy)

## `clickhouse:26.3`

```console
$ docker pull clickhouse@sha256:3a85365d7064aa0dbd4a9fb0b94699354be6d738d09f79800ef3b285f6bd5d1f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.3` - linux; amd64

```console
$ docker pull clickhouse@sha256:55ae0cbdcdb30889bcacf986b0fd6024eb729540d4450e95a35847bdf586db9a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.9 MB (266944400 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:016e390a903b01f7ea5697b4466246a1c857863d7acdf2b5697cd2ea26181dae`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:04 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:04 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:06 GMT
ADD file:b0bf3f64519bf10a51e00d4f8ab9c8693620659a0c4a4a5090a9765e754e1d1c in / 
# Thu, 24 Sep 2026 22:24:07 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 17:03:31 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 12 Oct 2026 17:03:31 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 12 Oct 2026 17:03:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 12 Oct 2026 17:03:31 GMT
ARG REPO_CHANNEL=stable
# Mon, 12 Oct 2026 17:03:31 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 12 Oct 2026 17:03:31 GMT
ARG VERSION=26.3.45.3
# Mon, 12 Oct 2026 17:03:31 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 12 Oct 2026 17:04:02 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.45.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 12 Oct 2026 17:04:02 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.45.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 12 Oct 2026 17:04:03 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.45.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 12 Oct 2026 17:04:03 GMT
ENV LANG=en_US.UTF-8
# Mon, 12 Oct 2026 17:04:03 GMT
ENV TZ=UTC
# Mon, 12 Oct 2026 17:04:03 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.45.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 12 Oct 2026 17:04:03 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 12 Oct 2026 17:04:03 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 12 Oct 2026 17:04:03 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 12 Oct 2026 17:04:03 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 12 Oct 2026 17:04:03 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 12 Oct 2026 17:04:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7c1a1c19ad8eb651973d1eb908fe8512bb3952ebebdb8139843c3d29b4c0bd2`  
		Last Modified: Mon, 12 Oct 2026 17:04:29 GMT  
		Size: 7.6 MB (7554222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45f259564388857f9d62c060d96a9b69b573cedffa377c80233cde37dd2bb143`  
		Last Modified: Mon, 12 Oct 2026 17:04:33 GMT  
		Size: 228.8 MB (228768498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2c218061828e2e4e07dcf4355d2e369564414cb8c97b6e990a17d2c72f26908`  
		Last Modified: Mon, 12 Oct 2026 17:04:29 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d8a1c7fdf017529b75b02557cc42acdd05ad24b0600ec3836bbaea6e9d961cb`  
		Last Modified: Mon, 12 Oct 2026 17:04:29 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06218aa653a4f6f861b2100de5e853a84ca104bb99e918d0f5d477a139954d57`  
		Last Modified: Mon, 12 Oct 2026 17:04:30 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e4bee78b3e522c7b845836c01bc4381b14072cd47ee368d6b43a9750805737f`  
		Last Modified: Mon, 12 Oct 2026 17:04:30 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1ca02c847f7eb28c1ffb5652431daad95e35b01be9418b745aa5623fc6fb04c`  
		Last Modified: Mon, 12 Oct 2026 17:04:31 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3` - unknown; unknown

```console
$ docker pull clickhouse@sha256:b9c797c61153b7e478698066e3a1084782edc8b34ac35b9dfcd5a6459e495a2a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b3745bcd4624215fec92f6668b67f7bab3a4d43b1ecb0ecfe5a4eadecb7f33f`

```dockerfile
```

-	Layers:
	-	`sha256:528ae3c45656ae434d454762198e0aeed6bcf665f07d1a36ca50f5f3fb4fff20`  
		Last Modified: Mon, 12 Oct 2026 17:04:29 GMT  
		Size: 26.2 KB (26224 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.3` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:60b616e5e905e8535877058b443696068f1be89478b239a4a037738594897ac8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.6 MB (248625298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a22cee15e83ceca32b7116e69637620d033a12d8b7f7584d384f8e1298ae3309`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:49 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:49 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:49 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:51 GMT
ADD file:58bfc1b17a1e2fc6a3ed29355c9baf1c70e13393e0632376cd7d67572c65ba25 in / 
# Thu, 24 Sep 2026 22:24:51 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 17:03:23 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 12 Oct 2026 17:03:23 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 12 Oct 2026 17:03:23 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 12 Oct 2026 17:03:23 GMT
ARG REPO_CHANNEL=stable
# Mon, 12 Oct 2026 17:03:23 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 12 Oct 2026 17:03:23 GMT
ARG VERSION=26.3.45.3
# Mon, 12 Oct 2026 17:03:23 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 12 Oct 2026 17:03:59 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.45.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 12 Oct 2026 17:03:59 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.45.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 12 Oct 2026 17:04:00 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.45.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 12 Oct 2026 17:04:00 GMT
ENV LANG=en_US.UTF-8
# Mon, 12 Oct 2026 17:04:00 GMT
ENV TZ=UTC
# Mon, 12 Oct 2026 17:04:00 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.45.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 12 Oct 2026 17:04:00 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 12 Oct 2026 17:04:00 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 12 Oct 2026 17:04:00 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 12 Oct 2026 17:04:00 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 12 Oct 2026 17:04:00 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 12 Oct 2026 17:04:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b79794055b1c3cd512a8ca0b69be5430d668f603b644cf55094a99a4d6223c53`  
		Last Modified: Mon, 12 Oct 2026 17:04:23 GMT  
		Size: 7.5 MB (7534193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d992bac53b253a80ddd6cbe10ccf49ff9b3b023a270cac60023a9329208ca04e`  
		Last Modified: Mon, 12 Oct 2026 17:04:27 GMT  
		Size: 212.5 MB (212536920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b4f33f73b7931bfcada7501c7e23d7ce9939027ff19f4efa01efe4d0a2790c1`  
		Last Modified: Mon, 12 Oct 2026 17:04:22 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8b1b72d824fac138dde304037f41e57aebe441bb666dceefd2efbdd8fe632b4`  
		Last Modified: Mon, 12 Oct 2026 17:04:22 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0480521bd762f77372abb48819170ffc5e28b3dcad351bce5f5bc5ea40104157`  
		Last Modified: Mon, 12 Oct 2026 17:04:24 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8c365a0d591d510f06c7f0c24420a17aafa1e4bb39ff02d2b3e7e0b10892f2f`  
		Last Modified: Mon, 12 Oct 2026 17:04:24 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:518fc7c323451cdff212ee683d5552c53b95c5f88cbf034c251e9f7a1ec96856`  
		Last Modified: Mon, 12 Oct 2026 17:04:24 GMT  
		Size: 3.6 KB (3636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3` - unknown; unknown

```console
$ docker pull clickhouse@sha256:da11413f07671ab0786b12501753c828ddbae3340508094fc1fb9ac43948338e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f7e43782c59144f84b0611e31499cc69a66a1d438d655a5a1cfe025cc05eade`

```dockerfile
```

-	Layers:
	-	`sha256:896d8544a73ca4ffc0b0ed2346509d8ad4873846e16ecfe8c39fbf3ec4945f2e`  
		Last Modified: Mon, 12 Oct 2026 17:04:22 GMT  
		Size: 26.4 KB (26411 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.3-jammy`

```console
$ docker pull clickhouse@sha256:3a85365d7064aa0dbd4a9fb0b94699354be6d738d09f79800ef3b285f6bd5d1f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.3-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:55ae0cbdcdb30889bcacf986b0fd6024eb729540d4450e95a35847bdf586db9a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.9 MB (266944400 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:016e390a903b01f7ea5697b4466246a1c857863d7acdf2b5697cd2ea26181dae`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:04 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:04 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:06 GMT
ADD file:b0bf3f64519bf10a51e00d4f8ab9c8693620659a0c4a4a5090a9765e754e1d1c in / 
# Thu, 24 Sep 2026 22:24:07 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 17:03:31 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 12 Oct 2026 17:03:31 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 12 Oct 2026 17:03:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 12 Oct 2026 17:03:31 GMT
ARG REPO_CHANNEL=stable
# Mon, 12 Oct 2026 17:03:31 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 12 Oct 2026 17:03:31 GMT
ARG VERSION=26.3.45.3
# Mon, 12 Oct 2026 17:03:31 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 12 Oct 2026 17:04:02 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.45.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 12 Oct 2026 17:04:02 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.45.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 12 Oct 2026 17:04:03 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.45.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 12 Oct 2026 17:04:03 GMT
ENV LANG=en_US.UTF-8
# Mon, 12 Oct 2026 17:04:03 GMT
ENV TZ=UTC
# Mon, 12 Oct 2026 17:04:03 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.45.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 12 Oct 2026 17:04:03 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 12 Oct 2026 17:04:03 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 12 Oct 2026 17:04:03 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 12 Oct 2026 17:04:03 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 12 Oct 2026 17:04:03 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 12 Oct 2026 17:04:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7c1a1c19ad8eb651973d1eb908fe8512bb3952ebebdb8139843c3d29b4c0bd2`  
		Last Modified: Mon, 12 Oct 2026 17:04:29 GMT  
		Size: 7.6 MB (7554222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45f259564388857f9d62c060d96a9b69b573cedffa377c80233cde37dd2bb143`  
		Last Modified: Mon, 12 Oct 2026 17:04:33 GMT  
		Size: 228.8 MB (228768498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2c218061828e2e4e07dcf4355d2e369564414cb8c97b6e990a17d2c72f26908`  
		Last Modified: Mon, 12 Oct 2026 17:04:29 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d8a1c7fdf017529b75b02557cc42acdd05ad24b0600ec3836bbaea6e9d961cb`  
		Last Modified: Mon, 12 Oct 2026 17:04:29 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06218aa653a4f6f861b2100de5e853a84ca104bb99e918d0f5d477a139954d57`  
		Last Modified: Mon, 12 Oct 2026 17:04:30 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e4bee78b3e522c7b845836c01bc4381b14072cd47ee368d6b43a9750805737f`  
		Last Modified: Mon, 12 Oct 2026 17:04:30 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1ca02c847f7eb28c1ffb5652431daad95e35b01be9418b745aa5623fc6fb04c`  
		Last Modified: Mon, 12 Oct 2026 17:04:31 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:b9c797c61153b7e478698066e3a1084782edc8b34ac35b9dfcd5a6459e495a2a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b3745bcd4624215fec92f6668b67f7bab3a4d43b1ecb0ecfe5a4eadecb7f33f`

```dockerfile
```

-	Layers:
	-	`sha256:528ae3c45656ae434d454762198e0aeed6bcf665f07d1a36ca50f5f3fb4fff20`  
		Last Modified: Mon, 12 Oct 2026 17:04:29 GMT  
		Size: 26.2 KB (26224 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.3-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:60b616e5e905e8535877058b443696068f1be89478b239a4a037738594897ac8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.6 MB (248625298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a22cee15e83ceca32b7116e69637620d033a12d8b7f7584d384f8e1298ae3309`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:49 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:49 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:49 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:51 GMT
ADD file:58bfc1b17a1e2fc6a3ed29355c9baf1c70e13393e0632376cd7d67572c65ba25 in / 
# Thu, 24 Sep 2026 22:24:51 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 17:03:23 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 12 Oct 2026 17:03:23 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 12 Oct 2026 17:03:23 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 12 Oct 2026 17:03:23 GMT
ARG REPO_CHANNEL=stable
# Mon, 12 Oct 2026 17:03:23 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 12 Oct 2026 17:03:23 GMT
ARG VERSION=26.3.45.3
# Mon, 12 Oct 2026 17:03:23 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 12 Oct 2026 17:03:59 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.45.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 12 Oct 2026 17:03:59 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.45.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 12 Oct 2026 17:04:00 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.45.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 12 Oct 2026 17:04:00 GMT
ENV LANG=en_US.UTF-8
# Mon, 12 Oct 2026 17:04:00 GMT
ENV TZ=UTC
# Mon, 12 Oct 2026 17:04:00 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.45.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 12 Oct 2026 17:04:00 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 12 Oct 2026 17:04:00 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 12 Oct 2026 17:04:00 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 12 Oct 2026 17:04:00 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 12 Oct 2026 17:04:00 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 12 Oct 2026 17:04:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b79794055b1c3cd512a8ca0b69be5430d668f603b644cf55094a99a4d6223c53`  
		Last Modified: Mon, 12 Oct 2026 17:04:23 GMT  
		Size: 7.5 MB (7534193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d992bac53b253a80ddd6cbe10ccf49ff9b3b023a270cac60023a9329208ca04e`  
		Last Modified: Mon, 12 Oct 2026 17:04:27 GMT  
		Size: 212.5 MB (212536920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b4f33f73b7931bfcada7501c7e23d7ce9939027ff19f4efa01efe4d0a2790c1`  
		Last Modified: Mon, 12 Oct 2026 17:04:22 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8b1b72d824fac138dde304037f41e57aebe441bb666dceefd2efbdd8fe632b4`  
		Last Modified: Mon, 12 Oct 2026 17:04:22 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0480521bd762f77372abb48819170ffc5e28b3dcad351bce5f5bc5ea40104157`  
		Last Modified: Mon, 12 Oct 2026 17:04:24 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8c365a0d591d510f06c7f0c24420a17aafa1e4bb39ff02d2b3e7e0b10892f2f`  
		Last Modified: Mon, 12 Oct 2026 17:04:24 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:518fc7c323451cdff212ee683d5552c53b95c5f88cbf034c251e9f7a1ec96856`  
		Last Modified: Mon, 12 Oct 2026 17:04:24 GMT  
		Size: 3.6 KB (3636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:da11413f07671ab0786b12501753c828ddbae3340508094fc1fb9ac43948338e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f7e43782c59144f84b0611e31499cc69a66a1d438d655a5a1cfe025cc05eade`

```dockerfile
```

-	Layers:
	-	`sha256:896d8544a73ca4ffc0b0ed2346509d8ad4873846e16ecfe8c39fbf3ec4945f2e`  
		Last Modified: Mon, 12 Oct 2026 17:04:22 GMT  
		Size: 26.4 KB (26411 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.3.45`

```console
$ docker pull clickhouse@sha256:3a85365d7064aa0dbd4a9fb0b94699354be6d738d09f79800ef3b285f6bd5d1f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.3.45` - linux; amd64

```console
$ docker pull clickhouse@sha256:55ae0cbdcdb30889bcacf986b0fd6024eb729540d4450e95a35847bdf586db9a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.9 MB (266944400 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:016e390a903b01f7ea5697b4466246a1c857863d7acdf2b5697cd2ea26181dae`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:04 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:04 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:06 GMT
ADD file:b0bf3f64519bf10a51e00d4f8ab9c8693620659a0c4a4a5090a9765e754e1d1c in / 
# Thu, 24 Sep 2026 22:24:07 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 17:03:31 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 12 Oct 2026 17:03:31 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 12 Oct 2026 17:03:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 12 Oct 2026 17:03:31 GMT
ARG REPO_CHANNEL=stable
# Mon, 12 Oct 2026 17:03:31 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 12 Oct 2026 17:03:31 GMT
ARG VERSION=26.3.45.3
# Mon, 12 Oct 2026 17:03:31 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 12 Oct 2026 17:04:02 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.45.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 12 Oct 2026 17:04:02 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.45.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 12 Oct 2026 17:04:03 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.45.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 12 Oct 2026 17:04:03 GMT
ENV LANG=en_US.UTF-8
# Mon, 12 Oct 2026 17:04:03 GMT
ENV TZ=UTC
# Mon, 12 Oct 2026 17:04:03 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.45.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 12 Oct 2026 17:04:03 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 12 Oct 2026 17:04:03 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 12 Oct 2026 17:04:03 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 12 Oct 2026 17:04:03 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 12 Oct 2026 17:04:03 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 12 Oct 2026 17:04:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7c1a1c19ad8eb651973d1eb908fe8512bb3952ebebdb8139843c3d29b4c0bd2`  
		Last Modified: Mon, 12 Oct 2026 17:04:29 GMT  
		Size: 7.6 MB (7554222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45f259564388857f9d62c060d96a9b69b573cedffa377c80233cde37dd2bb143`  
		Last Modified: Mon, 12 Oct 2026 17:04:33 GMT  
		Size: 228.8 MB (228768498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2c218061828e2e4e07dcf4355d2e369564414cb8c97b6e990a17d2c72f26908`  
		Last Modified: Mon, 12 Oct 2026 17:04:29 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d8a1c7fdf017529b75b02557cc42acdd05ad24b0600ec3836bbaea6e9d961cb`  
		Last Modified: Mon, 12 Oct 2026 17:04:29 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06218aa653a4f6f861b2100de5e853a84ca104bb99e918d0f5d477a139954d57`  
		Last Modified: Mon, 12 Oct 2026 17:04:30 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e4bee78b3e522c7b845836c01bc4381b14072cd47ee368d6b43a9750805737f`  
		Last Modified: Mon, 12 Oct 2026 17:04:30 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1ca02c847f7eb28c1ffb5652431daad95e35b01be9418b745aa5623fc6fb04c`  
		Last Modified: Mon, 12 Oct 2026 17:04:31 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.45` - unknown; unknown

```console
$ docker pull clickhouse@sha256:b9c797c61153b7e478698066e3a1084782edc8b34ac35b9dfcd5a6459e495a2a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b3745bcd4624215fec92f6668b67f7bab3a4d43b1ecb0ecfe5a4eadecb7f33f`

```dockerfile
```

-	Layers:
	-	`sha256:528ae3c45656ae434d454762198e0aeed6bcf665f07d1a36ca50f5f3fb4fff20`  
		Last Modified: Mon, 12 Oct 2026 17:04:29 GMT  
		Size: 26.2 KB (26224 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.3.45` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:60b616e5e905e8535877058b443696068f1be89478b239a4a037738594897ac8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.6 MB (248625298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a22cee15e83ceca32b7116e69637620d033a12d8b7f7584d384f8e1298ae3309`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:49 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:49 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:49 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:51 GMT
ADD file:58bfc1b17a1e2fc6a3ed29355c9baf1c70e13393e0632376cd7d67572c65ba25 in / 
# Thu, 24 Sep 2026 22:24:51 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 17:03:23 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 12 Oct 2026 17:03:23 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 12 Oct 2026 17:03:23 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 12 Oct 2026 17:03:23 GMT
ARG REPO_CHANNEL=stable
# Mon, 12 Oct 2026 17:03:23 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 12 Oct 2026 17:03:23 GMT
ARG VERSION=26.3.45.3
# Mon, 12 Oct 2026 17:03:23 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 12 Oct 2026 17:03:59 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.45.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 12 Oct 2026 17:03:59 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.45.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 12 Oct 2026 17:04:00 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.45.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 12 Oct 2026 17:04:00 GMT
ENV LANG=en_US.UTF-8
# Mon, 12 Oct 2026 17:04:00 GMT
ENV TZ=UTC
# Mon, 12 Oct 2026 17:04:00 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.45.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 12 Oct 2026 17:04:00 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 12 Oct 2026 17:04:00 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 12 Oct 2026 17:04:00 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 12 Oct 2026 17:04:00 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 12 Oct 2026 17:04:00 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 12 Oct 2026 17:04:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b79794055b1c3cd512a8ca0b69be5430d668f603b644cf55094a99a4d6223c53`  
		Last Modified: Mon, 12 Oct 2026 17:04:23 GMT  
		Size: 7.5 MB (7534193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d992bac53b253a80ddd6cbe10ccf49ff9b3b023a270cac60023a9329208ca04e`  
		Last Modified: Mon, 12 Oct 2026 17:04:27 GMT  
		Size: 212.5 MB (212536920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b4f33f73b7931bfcada7501c7e23d7ce9939027ff19f4efa01efe4d0a2790c1`  
		Last Modified: Mon, 12 Oct 2026 17:04:22 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8b1b72d824fac138dde304037f41e57aebe441bb666dceefd2efbdd8fe632b4`  
		Last Modified: Mon, 12 Oct 2026 17:04:22 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0480521bd762f77372abb48819170ffc5e28b3dcad351bce5f5bc5ea40104157`  
		Last Modified: Mon, 12 Oct 2026 17:04:24 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8c365a0d591d510f06c7f0c24420a17aafa1e4bb39ff02d2b3e7e0b10892f2f`  
		Last Modified: Mon, 12 Oct 2026 17:04:24 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:518fc7c323451cdff212ee683d5552c53b95c5f88cbf034c251e9f7a1ec96856`  
		Last Modified: Mon, 12 Oct 2026 17:04:24 GMT  
		Size: 3.6 KB (3636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.45` - unknown; unknown

```console
$ docker pull clickhouse@sha256:da11413f07671ab0786b12501753c828ddbae3340508094fc1fb9ac43948338e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f7e43782c59144f84b0611e31499cc69a66a1d438d655a5a1cfe025cc05eade`

```dockerfile
```

-	Layers:
	-	`sha256:896d8544a73ca4ffc0b0ed2346509d8ad4873846e16ecfe8c39fbf3ec4945f2e`  
		Last Modified: Mon, 12 Oct 2026 17:04:22 GMT  
		Size: 26.4 KB (26411 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.3.45-jammy`

```console
$ docker pull clickhouse@sha256:3a85365d7064aa0dbd4a9fb0b94699354be6d738d09f79800ef3b285f6bd5d1f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.3.45-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:55ae0cbdcdb30889bcacf986b0fd6024eb729540d4450e95a35847bdf586db9a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.9 MB (266944400 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:016e390a903b01f7ea5697b4466246a1c857863d7acdf2b5697cd2ea26181dae`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:04 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:04 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:06 GMT
ADD file:b0bf3f64519bf10a51e00d4f8ab9c8693620659a0c4a4a5090a9765e754e1d1c in / 
# Thu, 24 Sep 2026 22:24:07 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 17:03:31 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 12 Oct 2026 17:03:31 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 12 Oct 2026 17:03:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 12 Oct 2026 17:03:31 GMT
ARG REPO_CHANNEL=stable
# Mon, 12 Oct 2026 17:03:31 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 12 Oct 2026 17:03:31 GMT
ARG VERSION=26.3.45.3
# Mon, 12 Oct 2026 17:03:31 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 12 Oct 2026 17:04:02 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.45.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 12 Oct 2026 17:04:02 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.45.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 12 Oct 2026 17:04:03 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.45.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 12 Oct 2026 17:04:03 GMT
ENV LANG=en_US.UTF-8
# Mon, 12 Oct 2026 17:04:03 GMT
ENV TZ=UTC
# Mon, 12 Oct 2026 17:04:03 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.45.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 12 Oct 2026 17:04:03 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 12 Oct 2026 17:04:03 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 12 Oct 2026 17:04:03 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 12 Oct 2026 17:04:03 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 12 Oct 2026 17:04:03 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 12 Oct 2026 17:04:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7c1a1c19ad8eb651973d1eb908fe8512bb3952ebebdb8139843c3d29b4c0bd2`  
		Last Modified: Mon, 12 Oct 2026 17:04:29 GMT  
		Size: 7.6 MB (7554222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45f259564388857f9d62c060d96a9b69b573cedffa377c80233cde37dd2bb143`  
		Last Modified: Mon, 12 Oct 2026 17:04:33 GMT  
		Size: 228.8 MB (228768498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2c218061828e2e4e07dcf4355d2e369564414cb8c97b6e990a17d2c72f26908`  
		Last Modified: Mon, 12 Oct 2026 17:04:29 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d8a1c7fdf017529b75b02557cc42acdd05ad24b0600ec3836bbaea6e9d961cb`  
		Last Modified: Mon, 12 Oct 2026 17:04:29 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06218aa653a4f6f861b2100de5e853a84ca104bb99e918d0f5d477a139954d57`  
		Last Modified: Mon, 12 Oct 2026 17:04:30 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e4bee78b3e522c7b845836c01bc4381b14072cd47ee368d6b43a9750805737f`  
		Last Modified: Mon, 12 Oct 2026 17:04:30 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1ca02c847f7eb28c1ffb5652431daad95e35b01be9418b745aa5623fc6fb04c`  
		Last Modified: Mon, 12 Oct 2026 17:04:31 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.45-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:b9c797c61153b7e478698066e3a1084782edc8b34ac35b9dfcd5a6459e495a2a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b3745bcd4624215fec92f6668b67f7bab3a4d43b1ecb0ecfe5a4eadecb7f33f`

```dockerfile
```

-	Layers:
	-	`sha256:528ae3c45656ae434d454762198e0aeed6bcf665f07d1a36ca50f5f3fb4fff20`  
		Last Modified: Mon, 12 Oct 2026 17:04:29 GMT  
		Size: 26.2 KB (26224 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.3.45-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:60b616e5e905e8535877058b443696068f1be89478b239a4a037738594897ac8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.6 MB (248625298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a22cee15e83ceca32b7116e69637620d033a12d8b7f7584d384f8e1298ae3309`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:49 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:49 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:49 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:51 GMT
ADD file:58bfc1b17a1e2fc6a3ed29355c9baf1c70e13393e0632376cd7d67572c65ba25 in / 
# Thu, 24 Sep 2026 22:24:51 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 17:03:23 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 12 Oct 2026 17:03:23 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 12 Oct 2026 17:03:23 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 12 Oct 2026 17:03:23 GMT
ARG REPO_CHANNEL=stable
# Mon, 12 Oct 2026 17:03:23 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 12 Oct 2026 17:03:23 GMT
ARG VERSION=26.3.45.3
# Mon, 12 Oct 2026 17:03:23 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 12 Oct 2026 17:03:59 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.45.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 12 Oct 2026 17:03:59 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.45.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 12 Oct 2026 17:04:00 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.45.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 12 Oct 2026 17:04:00 GMT
ENV LANG=en_US.UTF-8
# Mon, 12 Oct 2026 17:04:00 GMT
ENV TZ=UTC
# Mon, 12 Oct 2026 17:04:00 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.45.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 12 Oct 2026 17:04:00 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 12 Oct 2026 17:04:00 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 12 Oct 2026 17:04:00 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 12 Oct 2026 17:04:00 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 12 Oct 2026 17:04:00 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 12 Oct 2026 17:04:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b79794055b1c3cd512a8ca0b69be5430d668f603b644cf55094a99a4d6223c53`  
		Last Modified: Mon, 12 Oct 2026 17:04:23 GMT  
		Size: 7.5 MB (7534193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d992bac53b253a80ddd6cbe10ccf49ff9b3b023a270cac60023a9329208ca04e`  
		Last Modified: Mon, 12 Oct 2026 17:04:27 GMT  
		Size: 212.5 MB (212536920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b4f33f73b7931bfcada7501c7e23d7ce9939027ff19f4efa01efe4d0a2790c1`  
		Last Modified: Mon, 12 Oct 2026 17:04:22 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8b1b72d824fac138dde304037f41e57aebe441bb666dceefd2efbdd8fe632b4`  
		Last Modified: Mon, 12 Oct 2026 17:04:22 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0480521bd762f77372abb48819170ffc5e28b3dcad351bce5f5bc5ea40104157`  
		Last Modified: Mon, 12 Oct 2026 17:04:24 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8c365a0d591d510f06c7f0c24420a17aafa1e4bb39ff02d2b3e7e0b10892f2f`  
		Last Modified: Mon, 12 Oct 2026 17:04:24 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:518fc7c323451cdff212ee683d5552c53b95c5f88cbf034c251e9f7a1ec96856`  
		Last Modified: Mon, 12 Oct 2026 17:04:24 GMT  
		Size: 3.6 KB (3636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.45-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:da11413f07671ab0786b12501753c828ddbae3340508094fc1fb9ac43948338e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f7e43782c59144f84b0611e31499cc69a66a1d438d655a5a1cfe025cc05eade`

```dockerfile
```

-	Layers:
	-	`sha256:896d8544a73ca4ffc0b0ed2346509d8ad4873846e16ecfe8c39fbf3ec4945f2e`  
		Last Modified: Mon, 12 Oct 2026 17:04:22 GMT  
		Size: 26.4 KB (26411 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.3.45.3`

```console
$ docker pull clickhouse@sha256:3a85365d7064aa0dbd4a9fb0b94699354be6d738d09f79800ef3b285f6bd5d1f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.3.45.3` - linux; amd64

```console
$ docker pull clickhouse@sha256:55ae0cbdcdb30889bcacf986b0fd6024eb729540d4450e95a35847bdf586db9a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.9 MB (266944400 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:016e390a903b01f7ea5697b4466246a1c857863d7acdf2b5697cd2ea26181dae`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:04 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:04 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:06 GMT
ADD file:b0bf3f64519bf10a51e00d4f8ab9c8693620659a0c4a4a5090a9765e754e1d1c in / 
# Thu, 24 Sep 2026 22:24:07 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 17:03:31 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 12 Oct 2026 17:03:31 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 12 Oct 2026 17:03:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 12 Oct 2026 17:03:31 GMT
ARG REPO_CHANNEL=stable
# Mon, 12 Oct 2026 17:03:31 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 12 Oct 2026 17:03:31 GMT
ARG VERSION=26.3.45.3
# Mon, 12 Oct 2026 17:03:31 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 12 Oct 2026 17:04:02 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.45.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 12 Oct 2026 17:04:02 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.45.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 12 Oct 2026 17:04:03 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.45.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 12 Oct 2026 17:04:03 GMT
ENV LANG=en_US.UTF-8
# Mon, 12 Oct 2026 17:04:03 GMT
ENV TZ=UTC
# Mon, 12 Oct 2026 17:04:03 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.45.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 12 Oct 2026 17:04:03 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 12 Oct 2026 17:04:03 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 12 Oct 2026 17:04:03 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 12 Oct 2026 17:04:03 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 12 Oct 2026 17:04:03 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 12 Oct 2026 17:04:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7c1a1c19ad8eb651973d1eb908fe8512bb3952ebebdb8139843c3d29b4c0bd2`  
		Last Modified: Mon, 12 Oct 2026 17:04:29 GMT  
		Size: 7.6 MB (7554222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45f259564388857f9d62c060d96a9b69b573cedffa377c80233cde37dd2bb143`  
		Last Modified: Mon, 12 Oct 2026 17:04:33 GMT  
		Size: 228.8 MB (228768498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2c218061828e2e4e07dcf4355d2e369564414cb8c97b6e990a17d2c72f26908`  
		Last Modified: Mon, 12 Oct 2026 17:04:29 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d8a1c7fdf017529b75b02557cc42acdd05ad24b0600ec3836bbaea6e9d961cb`  
		Last Modified: Mon, 12 Oct 2026 17:04:29 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06218aa653a4f6f861b2100de5e853a84ca104bb99e918d0f5d477a139954d57`  
		Last Modified: Mon, 12 Oct 2026 17:04:30 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e4bee78b3e522c7b845836c01bc4381b14072cd47ee368d6b43a9750805737f`  
		Last Modified: Mon, 12 Oct 2026 17:04:30 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1ca02c847f7eb28c1ffb5652431daad95e35b01be9418b745aa5623fc6fb04c`  
		Last Modified: Mon, 12 Oct 2026 17:04:31 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.45.3` - unknown; unknown

```console
$ docker pull clickhouse@sha256:b9c797c61153b7e478698066e3a1084782edc8b34ac35b9dfcd5a6459e495a2a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b3745bcd4624215fec92f6668b67f7bab3a4d43b1ecb0ecfe5a4eadecb7f33f`

```dockerfile
```

-	Layers:
	-	`sha256:528ae3c45656ae434d454762198e0aeed6bcf665f07d1a36ca50f5f3fb4fff20`  
		Last Modified: Mon, 12 Oct 2026 17:04:29 GMT  
		Size: 26.2 KB (26224 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.3.45.3` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:60b616e5e905e8535877058b443696068f1be89478b239a4a037738594897ac8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.6 MB (248625298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a22cee15e83ceca32b7116e69637620d033a12d8b7f7584d384f8e1298ae3309`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:49 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:49 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:49 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:51 GMT
ADD file:58bfc1b17a1e2fc6a3ed29355c9baf1c70e13393e0632376cd7d67572c65ba25 in / 
# Thu, 24 Sep 2026 22:24:51 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 17:03:23 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 12 Oct 2026 17:03:23 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 12 Oct 2026 17:03:23 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 12 Oct 2026 17:03:23 GMT
ARG REPO_CHANNEL=stable
# Mon, 12 Oct 2026 17:03:23 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 12 Oct 2026 17:03:23 GMT
ARG VERSION=26.3.45.3
# Mon, 12 Oct 2026 17:03:23 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 12 Oct 2026 17:03:59 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.45.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 12 Oct 2026 17:03:59 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.45.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 12 Oct 2026 17:04:00 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.45.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 12 Oct 2026 17:04:00 GMT
ENV LANG=en_US.UTF-8
# Mon, 12 Oct 2026 17:04:00 GMT
ENV TZ=UTC
# Mon, 12 Oct 2026 17:04:00 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.45.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 12 Oct 2026 17:04:00 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 12 Oct 2026 17:04:00 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 12 Oct 2026 17:04:00 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 12 Oct 2026 17:04:00 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 12 Oct 2026 17:04:00 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 12 Oct 2026 17:04:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b79794055b1c3cd512a8ca0b69be5430d668f603b644cf55094a99a4d6223c53`  
		Last Modified: Mon, 12 Oct 2026 17:04:23 GMT  
		Size: 7.5 MB (7534193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d992bac53b253a80ddd6cbe10ccf49ff9b3b023a270cac60023a9329208ca04e`  
		Last Modified: Mon, 12 Oct 2026 17:04:27 GMT  
		Size: 212.5 MB (212536920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b4f33f73b7931bfcada7501c7e23d7ce9939027ff19f4efa01efe4d0a2790c1`  
		Last Modified: Mon, 12 Oct 2026 17:04:22 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8b1b72d824fac138dde304037f41e57aebe441bb666dceefd2efbdd8fe632b4`  
		Last Modified: Mon, 12 Oct 2026 17:04:22 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0480521bd762f77372abb48819170ffc5e28b3dcad351bce5f5bc5ea40104157`  
		Last Modified: Mon, 12 Oct 2026 17:04:24 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8c365a0d591d510f06c7f0c24420a17aafa1e4bb39ff02d2b3e7e0b10892f2f`  
		Last Modified: Mon, 12 Oct 2026 17:04:24 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:518fc7c323451cdff212ee683d5552c53b95c5f88cbf034c251e9f7a1ec96856`  
		Last Modified: Mon, 12 Oct 2026 17:04:24 GMT  
		Size: 3.6 KB (3636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.45.3` - unknown; unknown

```console
$ docker pull clickhouse@sha256:da11413f07671ab0786b12501753c828ddbae3340508094fc1fb9ac43948338e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f7e43782c59144f84b0611e31499cc69a66a1d438d655a5a1cfe025cc05eade`

```dockerfile
```

-	Layers:
	-	`sha256:896d8544a73ca4ffc0b0ed2346509d8ad4873846e16ecfe8c39fbf3ec4945f2e`  
		Last Modified: Mon, 12 Oct 2026 17:04:22 GMT  
		Size: 26.4 KB (26411 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.3.45.3-jammy`

```console
$ docker pull clickhouse@sha256:3a85365d7064aa0dbd4a9fb0b94699354be6d738d09f79800ef3b285f6bd5d1f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.3.45.3-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:55ae0cbdcdb30889bcacf986b0fd6024eb729540d4450e95a35847bdf586db9a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.9 MB (266944400 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:016e390a903b01f7ea5697b4466246a1c857863d7acdf2b5697cd2ea26181dae`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:04 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:04 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:06 GMT
ADD file:b0bf3f64519bf10a51e00d4f8ab9c8693620659a0c4a4a5090a9765e754e1d1c in / 
# Thu, 24 Sep 2026 22:24:07 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 17:03:31 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 12 Oct 2026 17:03:31 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 12 Oct 2026 17:03:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 12 Oct 2026 17:03:31 GMT
ARG REPO_CHANNEL=stable
# Mon, 12 Oct 2026 17:03:31 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 12 Oct 2026 17:03:31 GMT
ARG VERSION=26.3.45.3
# Mon, 12 Oct 2026 17:03:31 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 12 Oct 2026 17:04:02 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.45.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 12 Oct 2026 17:04:02 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.45.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 12 Oct 2026 17:04:03 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.45.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 12 Oct 2026 17:04:03 GMT
ENV LANG=en_US.UTF-8
# Mon, 12 Oct 2026 17:04:03 GMT
ENV TZ=UTC
# Mon, 12 Oct 2026 17:04:03 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.45.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 12 Oct 2026 17:04:03 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 12 Oct 2026 17:04:03 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 12 Oct 2026 17:04:03 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 12 Oct 2026 17:04:03 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 12 Oct 2026 17:04:03 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 12 Oct 2026 17:04:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7c1a1c19ad8eb651973d1eb908fe8512bb3952ebebdb8139843c3d29b4c0bd2`  
		Last Modified: Mon, 12 Oct 2026 17:04:29 GMT  
		Size: 7.6 MB (7554222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45f259564388857f9d62c060d96a9b69b573cedffa377c80233cde37dd2bb143`  
		Last Modified: Mon, 12 Oct 2026 17:04:33 GMT  
		Size: 228.8 MB (228768498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2c218061828e2e4e07dcf4355d2e369564414cb8c97b6e990a17d2c72f26908`  
		Last Modified: Mon, 12 Oct 2026 17:04:29 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d8a1c7fdf017529b75b02557cc42acdd05ad24b0600ec3836bbaea6e9d961cb`  
		Last Modified: Mon, 12 Oct 2026 17:04:29 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06218aa653a4f6f861b2100de5e853a84ca104bb99e918d0f5d477a139954d57`  
		Last Modified: Mon, 12 Oct 2026 17:04:30 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e4bee78b3e522c7b845836c01bc4381b14072cd47ee368d6b43a9750805737f`  
		Last Modified: Mon, 12 Oct 2026 17:04:30 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1ca02c847f7eb28c1ffb5652431daad95e35b01be9418b745aa5623fc6fb04c`  
		Last Modified: Mon, 12 Oct 2026 17:04:31 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.45.3-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:b9c797c61153b7e478698066e3a1084782edc8b34ac35b9dfcd5a6459e495a2a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b3745bcd4624215fec92f6668b67f7bab3a4d43b1ecb0ecfe5a4eadecb7f33f`

```dockerfile
```

-	Layers:
	-	`sha256:528ae3c45656ae434d454762198e0aeed6bcf665f07d1a36ca50f5f3fb4fff20`  
		Last Modified: Mon, 12 Oct 2026 17:04:29 GMT  
		Size: 26.2 KB (26224 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.3.45.3-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:60b616e5e905e8535877058b443696068f1be89478b239a4a037738594897ac8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.6 MB (248625298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a22cee15e83ceca32b7116e69637620d033a12d8b7f7584d384f8e1298ae3309`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:49 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:49 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:49 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:51 GMT
ADD file:58bfc1b17a1e2fc6a3ed29355c9baf1c70e13393e0632376cd7d67572c65ba25 in / 
# Thu, 24 Sep 2026 22:24:51 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 17:03:23 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 12 Oct 2026 17:03:23 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 12 Oct 2026 17:03:23 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 12 Oct 2026 17:03:23 GMT
ARG REPO_CHANNEL=stable
# Mon, 12 Oct 2026 17:03:23 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 12 Oct 2026 17:03:23 GMT
ARG VERSION=26.3.45.3
# Mon, 12 Oct 2026 17:03:23 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 12 Oct 2026 17:03:59 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.45.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 12 Oct 2026 17:03:59 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.45.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 12 Oct 2026 17:04:00 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.45.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 12 Oct 2026 17:04:00 GMT
ENV LANG=en_US.UTF-8
# Mon, 12 Oct 2026 17:04:00 GMT
ENV TZ=UTC
# Mon, 12 Oct 2026 17:04:00 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.45.3 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 12 Oct 2026 17:04:00 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 12 Oct 2026 17:04:00 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 12 Oct 2026 17:04:00 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 12 Oct 2026 17:04:00 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 12 Oct 2026 17:04:00 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 12 Oct 2026 17:04:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b79794055b1c3cd512a8ca0b69be5430d668f603b644cf55094a99a4d6223c53`  
		Last Modified: Mon, 12 Oct 2026 17:04:23 GMT  
		Size: 7.5 MB (7534193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d992bac53b253a80ddd6cbe10ccf49ff9b3b023a270cac60023a9329208ca04e`  
		Last Modified: Mon, 12 Oct 2026 17:04:27 GMT  
		Size: 212.5 MB (212536920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b4f33f73b7931bfcada7501c7e23d7ce9939027ff19f4efa01efe4d0a2790c1`  
		Last Modified: Mon, 12 Oct 2026 17:04:22 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8b1b72d824fac138dde304037f41e57aebe441bb666dceefd2efbdd8fe632b4`  
		Last Modified: Mon, 12 Oct 2026 17:04:22 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0480521bd762f77372abb48819170ffc5e28b3dcad351bce5f5bc5ea40104157`  
		Last Modified: Mon, 12 Oct 2026 17:04:24 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8c365a0d591d510f06c7f0c24420a17aafa1e4bb39ff02d2b3e7e0b10892f2f`  
		Last Modified: Mon, 12 Oct 2026 17:04:24 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:518fc7c323451cdff212ee683d5552c53b95c5f88cbf034c251e9f7a1ec96856`  
		Last Modified: Mon, 12 Oct 2026 17:04:24 GMT  
		Size: 3.6 KB (3636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.45.3-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:da11413f07671ab0786b12501753c828ddbae3340508094fc1fb9ac43948338e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f7e43782c59144f84b0611e31499cc69a66a1d438d655a5a1cfe025cc05eade`

```dockerfile
```

-	Layers:
	-	`sha256:896d8544a73ca4ffc0b0ed2346509d8ad4873846e16ecfe8c39fbf3ec4945f2e`  
		Last Modified: Mon, 12 Oct 2026 17:04:22 GMT  
		Size: 26.4 KB (26411 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.7`

```console
$ docker pull clickhouse@sha256:1a1d57c88399e2dd8348bb1dcbf583111e25ad93f96f235ee66939eb95edfbdd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.7` - linux; amd64

```console
$ docker pull clickhouse@sha256:65d35ed0cb5839b327ccbd54ab37662ded1afcd581ad109964c57acf10d6efc6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.4 MB (268351690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0eb63ef15372bad60c2ded7da5bfe3ffc364719ec65999c07f5b794152fb2aa`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:04 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:04 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:06 GMT
ADD file:b0bf3f64519bf10a51e00d4f8ab9c8693620659a0c4a4a5090a9765e754e1d1c in / 
# Thu, 24 Sep 2026 22:24:07 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 17:02:15 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 12 Oct 2026 17:02:15 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 12 Oct 2026 17:02:15 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 12 Oct 2026 17:02:15 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 12 Oct 2026 17:02:15 GMT
ARG REPO_CHANNEL=stable
# Mon, 12 Oct 2026 17:02:15 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 12 Oct 2026 17:02:15 GMT
ARG VERSION=26.7.25.6
# Mon, 12 Oct 2026 17:02:15 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 12 Oct 2026 17:02:42 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.25.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 12 Oct 2026 17:02:42 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.25.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 12 Oct 2026 17:02:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.25.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 12 Oct 2026 17:02:43 GMT
ENV LANG=en_US.UTF-8
# Mon, 12 Oct 2026 17:02:43 GMT
ENV TZ=UTC
# Mon, 12 Oct 2026 17:02:44 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.25.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 12 Oct 2026 17:02:44 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 12 Oct 2026 17:02:44 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 12 Oct 2026 17:02:44 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 12 Oct 2026 17:02:44 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 12 Oct 2026 17:02:44 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 12 Oct 2026 17:02:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4123255217d706dd196d7a0b0d974baee27bd3e33a5c99cf58d382c1cb00adf`  
		Last Modified: Mon, 12 Oct 2026 17:03:10 GMT  
		Size: 7.6 MB (7554217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41125d348f97940b79acdf0eb388c879de9be64c5c335ab792ff8be96df85577`  
		Last Modified: Mon, 12 Oct 2026 17:03:14 GMT  
		Size: 230.2 MB (230175795 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90c930ff751cbe32f4a5d4c7ba34f48af74c96e2da6822b77068dde75236bae0`  
		Last Modified: Mon, 12 Oct 2026 17:03:09 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dbc2b436c588172c0f1213199dc2a779e98be070e3253f9b6369adb8ac6045c`  
		Last Modified: Mon, 12 Oct 2026 17:03:09 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec8cb953c99e7443af8d8a4c26694179b674512f7937eedae64cd5f30883d745`  
		Last Modified: Mon, 12 Oct 2026 17:03:11 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87594a68897ba8f1c6d10e8f5eb0551c3a89495b2bdbbd181410e212d6c25dfb`  
		Last Modified: Mon, 12 Oct 2026 17:03:11 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a41b9ed5d99491719ecb82dae9a119064f25e8cf8b2652d1ddc3007bb9df7ac6`  
		Last Modified: Mon, 12 Oct 2026 17:03:11 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7` - unknown; unknown

```console
$ docker pull clickhouse@sha256:f910545e8dfc5ea5ffdfe6a905ce43fd20ea6f52d029e901801d0df6cd4efe40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.7 KB (26737 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52b4e25d9b7370721c1694c11006045554223cc12086e2204111337528ef3682`

```dockerfile
```

-	Layers:
	-	`sha256:16071da63ce78e62a64f1815de4ee69d7b94a0e17c71c974e90fff7643e8d910`  
		Last Modified: Mon, 12 Oct 2026 17:03:09 GMT  
		Size: 26.7 KB (26737 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.7` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:2dddd490bcc8d9a80e8fb2f6f6606ec27869a31ba926a9c8c4d8acedde415d8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.7 MB (251675059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb03e21850613f8c761bdc12865f0171ef7224abf8afd35e17ef8fad8f58828f`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:49 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:49 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:49 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:51 GMT
ADD file:58bfc1b17a1e2fc6a3ed29355c9baf1c70e13393e0632376cd7d67572c65ba25 in / 
# Thu, 24 Sep 2026 22:24:51 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 17:02:10 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 12 Oct 2026 17:02:10 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 12 Oct 2026 17:02:10 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 12 Oct 2026 17:02:10 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 12 Oct 2026 17:02:10 GMT
ARG REPO_CHANNEL=stable
# Mon, 12 Oct 2026 17:02:10 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 12 Oct 2026 17:02:10 GMT
ARG VERSION=26.7.25.6
# Mon, 12 Oct 2026 17:02:10 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 12 Oct 2026 17:02:52 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.25.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 12 Oct 2026 17:02:52 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.25.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 12 Oct 2026 17:02:54 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.25.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 12 Oct 2026 17:02:54 GMT
ENV LANG=en_US.UTF-8
# Mon, 12 Oct 2026 17:02:54 GMT
ENV TZ=UTC
# Mon, 12 Oct 2026 17:02:54 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.25.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 12 Oct 2026 17:02:54 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 12 Oct 2026 17:02:54 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 12 Oct 2026 17:02:54 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 12 Oct 2026 17:02:54 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 12 Oct 2026 17:02:54 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 12 Oct 2026 17:02:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:772765612473d2bb79bf345c2f764bb7c2735cecef9a121cabb210789aba4ad2`  
		Last Modified: Mon, 12 Oct 2026 17:03:16 GMT  
		Size: 7.5 MB (7534045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcb27040e47421de3014d3fb0a4bf0142e5da02cd34288773e12a8e84b2e8c45`  
		Last Modified: Mon, 12 Oct 2026 17:03:20 GMT  
		Size: 215.6 MB (215586829 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13de816e3586b5f68d20424c098d1caa198bb61ab2343a36ad5f4cc68c6f1631`  
		Last Modified: Mon, 12 Oct 2026 17:03:15 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5016d75b57aecd08846b5d65fd474138511362c01d86b9236aea7c1cd4005275`  
		Last Modified: Mon, 12 Oct 2026 17:03:16 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4f9893ec79e9c63faeb4931fb753b7fc80e5d730be906b827817706e2b24ede`  
		Last Modified: Mon, 12 Oct 2026 17:03:17 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b94212e8f89ce5ba975cc451d91b29884612645592c9806704c46dfad0e6023`  
		Last Modified: Mon, 12 Oct 2026 17:03:17 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e72e57cf5fb7505b5ad6f264204fb96800225e1a33cdb5016224c8f534d2f3d`  
		Last Modified: Mon, 12 Oct 2026 17:03:10 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7` - unknown; unknown

```console
$ docker pull clickhouse@sha256:7e2472b91a5363f47087355b550837b4ad75b7a9e7f1eb0e93462d9354809159
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.9 KB (26927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:062f62dfa7673d7b23f92259561455f5f478decce89798b08988e91b5288b6a6`

```dockerfile
```

-	Layers:
	-	`sha256:31dcd8a421f8684313b16fd230d3cf60be5f6a957849c835b6bbff5d154b493a`  
		Last Modified: Mon, 12 Oct 2026 17:03:15 GMT  
		Size: 26.9 KB (26927 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.7-jammy`

```console
$ docker pull clickhouse@sha256:1a1d57c88399e2dd8348bb1dcbf583111e25ad93f96f235ee66939eb95edfbdd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.7-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:65d35ed0cb5839b327ccbd54ab37662ded1afcd581ad109964c57acf10d6efc6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.4 MB (268351690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0eb63ef15372bad60c2ded7da5bfe3ffc364719ec65999c07f5b794152fb2aa`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:04 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:04 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:06 GMT
ADD file:b0bf3f64519bf10a51e00d4f8ab9c8693620659a0c4a4a5090a9765e754e1d1c in / 
# Thu, 24 Sep 2026 22:24:07 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 17:02:15 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 12 Oct 2026 17:02:15 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 12 Oct 2026 17:02:15 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 12 Oct 2026 17:02:15 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 12 Oct 2026 17:02:15 GMT
ARG REPO_CHANNEL=stable
# Mon, 12 Oct 2026 17:02:15 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 12 Oct 2026 17:02:15 GMT
ARG VERSION=26.7.25.6
# Mon, 12 Oct 2026 17:02:15 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 12 Oct 2026 17:02:42 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.25.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 12 Oct 2026 17:02:42 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.25.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 12 Oct 2026 17:02:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.25.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 12 Oct 2026 17:02:43 GMT
ENV LANG=en_US.UTF-8
# Mon, 12 Oct 2026 17:02:43 GMT
ENV TZ=UTC
# Mon, 12 Oct 2026 17:02:44 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.25.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 12 Oct 2026 17:02:44 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 12 Oct 2026 17:02:44 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 12 Oct 2026 17:02:44 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 12 Oct 2026 17:02:44 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 12 Oct 2026 17:02:44 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 12 Oct 2026 17:02:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4123255217d706dd196d7a0b0d974baee27bd3e33a5c99cf58d382c1cb00adf`  
		Last Modified: Mon, 12 Oct 2026 17:03:10 GMT  
		Size: 7.6 MB (7554217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41125d348f97940b79acdf0eb388c879de9be64c5c335ab792ff8be96df85577`  
		Last Modified: Mon, 12 Oct 2026 17:03:14 GMT  
		Size: 230.2 MB (230175795 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90c930ff751cbe32f4a5d4c7ba34f48af74c96e2da6822b77068dde75236bae0`  
		Last Modified: Mon, 12 Oct 2026 17:03:09 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dbc2b436c588172c0f1213199dc2a779e98be070e3253f9b6369adb8ac6045c`  
		Last Modified: Mon, 12 Oct 2026 17:03:09 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec8cb953c99e7443af8d8a4c26694179b674512f7937eedae64cd5f30883d745`  
		Last Modified: Mon, 12 Oct 2026 17:03:11 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87594a68897ba8f1c6d10e8f5eb0551c3a89495b2bdbbd181410e212d6c25dfb`  
		Last Modified: Mon, 12 Oct 2026 17:03:11 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a41b9ed5d99491719ecb82dae9a119064f25e8cf8b2652d1ddc3007bb9df7ac6`  
		Last Modified: Mon, 12 Oct 2026 17:03:11 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:f910545e8dfc5ea5ffdfe6a905ce43fd20ea6f52d029e901801d0df6cd4efe40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.7 KB (26737 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52b4e25d9b7370721c1694c11006045554223cc12086e2204111337528ef3682`

```dockerfile
```

-	Layers:
	-	`sha256:16071da63ce78e62a64f1815de4ee69d7b94a0e17c71c974e90fff7643e8d910`  
		Last Modified: Mon, 12 Oct 2026 17:03:09 GMT  
		Size: 26.7 KB (26737 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.7-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:2dddd490bcc8d9a80e8fb2f6f6606ec27869a31ba926a9c8c4d8acedde415d8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.7 MB (251675059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb03e21850613f8c761bdc12865f0171ef7224abf8afd35e17ef8fad8f58828f`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:49 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:49 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:49 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:51 GMT
ADD file:58bfc1b17a1e2fc6a3ed29355c9baf1c70e13393e0632376cd7d67572c65ba25 in / 
# Thu, 24 Sep 2026 22:24:51 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 17:02:10 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 12 Oct 2026 17:02:10 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 12 Oct 2026 17:02:10 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 12 Oct 2026 17:02:10 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 12 Oct 2026 17:02:10 GMT
ARG REPO_CHANNEL=stable
# Mon, 12 Oct 2026 17:02:10 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 12 Oct 2026 17:02:10 GMT
ARG VERSION=26.7.25.6
# Mon, 12 Oct 2026 17:02:10 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 12 Oct 2026 17:02:52 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.25.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 12 Oct 2026 17:02:52 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.25.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 12 Oct 2026 17:02:54 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.25.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 12 Oct 2026 17:02:54 GMT
ENV LANG=en_US.UTF-8
# Mon, 12 Oct 2026 17:02:54 GMT
ENV TZ=UTC
# Mon, 12 Oct 2026 17:02:54 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.25.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 12 Oct 2026 17:02:54 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 12 Oct 2026 17:02:54 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 12 Oct 2026 17:02:54 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 12 Oct 2026 17:02:54 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 12 Oct 2026 17:02:54 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 12 Oct 2026 17:02:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:772765612473d2bb79bf345c2f764bb7c2735cecef9a121cabb210789aba4ad2`  
		Last Modified: Mon, 12 Oct 2026 17:03:16 GMT  
		Size: 7.5 MB (7534045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcb27040e47421de3014d3fb0a4bf0142e5da02cd34288773e12a8e84b2e8c45`  
		Last Modified: Mon, 12 Oct 2026 17:03:20 GMT  
		Size: 215.6 MB (215586829 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13de816e3586b5f68d20424c098d1caa198bb61ab2343a36ad5f4cc68c6f1631`  
		Last Modified: Mon, 12 Oct 2026 17:03:15 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5016d75b57aecd08846b5d65fd474138511362c01d86b9236aea7c1cd4005275`  
		Last Modified: Mon, 12 Oct 2026 17:03:16 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4f9893ec79e9c63faeb4931fb753b7fc80e5d730be906b827817706e2b24ede`  
		Last Modified: Mon, 12 Oct 2026 17:03:17 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b94212e8f89ce5ba975cc451d91b29884612645592c9806704c46dfad0e6023`  
		Last Modified: Mon, 12 Oct 2026 17:03:17 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e72e57cf5fb7505b5ad6f264204fb96800225e1a33cdb5016224c8f534d2f3d`  
		Last Modified: Mon, 12 Oct 2026 17:03:10 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:7e2472b91a5363f47087355b550837b4ad75b7a9e7f1eb0e93462d9354809159
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.9 KB (26927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:062f62dfa7673d7b23f92259561455f5f478decce89798b08988e91b5288b6a6`

```dockerfile
```

-	Layers:
	-	`sha256:31dcd8a421f8684313b16fd230d3cf60be5f6a957849c835b6bbff5d154b493a`  
		Last Modified: Mon, 12 Oct 2026 17:03:15 GMT  
		Size: 26.9 KB (26927 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.7.25`

```console
$ docker pull clickhouse@sha256:1a1d57c88399e2dd8348bb1dcbf583111e25ad93f96f235ee66939eb95edfbdd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.7.25` - linux; amd64

```console
$ docker pull clickhouse@sha256:65d35ed0cb5839b327ccbd54ab37662ded1afcd581ad109964c57acf10d6efc6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.4 MB (268351690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0eb63ef15372bad60c2ded7da5bfe3ffc364719ec65999c07f5b794152fb2aa`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:04 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:04 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:06 GMT
ADD file:b0bf3f64519bf10a51e00d4f8ab9c8693620659a0c4a4a5090a9765e754e1d1c in / 
# Thu, 24 Sep 2026 22:24:07 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 17:02:15 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 12 Oct 2026 17:02:15 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 12 Oct 2026 17:02:15 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 12 Oct 2026 17:02:15 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 12 Oct 2026 17:02:15 GMT
ARG REPO_CHANNEL=stable
# Mon, 12 Oct 2026 17:02:15 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 12 Oct 2026 17:02:15 GMT
ARG VERSION=26.7.25.6
# Mon, 12 Oct 2026 17:02:15 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 12 Oct 2026 17:02:42 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.25.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 12 Oct 2026 17:02:42 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.25.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 12 Oct 2026 17:02:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.25.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 12 Oct 2026 17:02:43 GMT
ENV LANG=en_US.UTF-8
# Mon, 12 Oct 2026 17:02:43 GMT
ENV TZ=UTC
# Mon, 12 Oct 2026 17:02:44 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.25.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 12 Oct 2026 17:02:44 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 12 Oct 2026 17:02:44 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 12 Oct 2026 17:02:44 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 12 Oct 2026 17:02:44 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 12 Oct 2026 17:02:44 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 12 Oct 2026 17:02:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4123255217d706dd196d7a0b0d974baee27bd3e33a5c99cf58d382c1cb00adf`  
		Last Modified: Mon, 12 Oct 2026 17:03:10 GMT  
		Size: 7.6 MB (7554217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41125d348f97940b79acdf0eb388c879de9be64c5c335ab792ff8be96df85577`  
		Last Modified: Mon, 12 Oct 2026 17:03:14 GMT  
		Size: 230.2 MB (230175795 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90c930ff751cbe32f4a5d4c7ba34f48af74c96e2da6822b77068dde75236bae0`  
		Last Modified: Mon, 12 Oct 2026 17:03:09 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dbc2b436c588172c0f1213199dc2a779e98be070e3253f9b6369adb8ac6045c`  
		Last Modified: Mon, 12 Oct 2026 17:03:09 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec8cb953c99e7443af8d8a4c26694179b674512f7937eedae64cd5f30883d745`  
		Last Modified: Mon, 12 Oct 2026 17:03:11 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87594a68897ba8f1c6d10e8f5eb0551c3a89495b2bdbbd181410e212d6c25dfb`  
		Last Modified: Mon, 12 Oct 2026 17:03:11 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a41b9ed5d99491719ecb82dae9a119064f25e8cf8b2652d1ddc3007bb9df7ac6`  
		Last Modified: Mon, 12 Oct 2026 17:03:11 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7.25` - unknown; unknown

```console
$ docker pull clickhouse@sha256:f910545e8dfc5ea5ffdfe6a905ce43fd20ea6f52d029e901801d0df6cd4efe40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.7 KB (26737 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52b4e25d9b7370721c1694c11006045554223cc12086e2204111337528ef3682`

```dockerfile
```

-	Layers:
	-	`sha256:16071da63ce78e62a64f1815de4ee69d7b94a0e17c71c974e90fff7643e8d910`  
		Last Modified: Mon, 12 Oct 2026 17:03:09 GMT  
		Size: 26.7 KB (26737 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.7.25` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:2dddd490bcc8d9a80e8fb2f6f6606ec27869a31ba926a9c8c4d8acedde415d8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.7 MB (251675059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb03e21850613f8c761bdc12865f0171ef7224abf8afd35e17ef8fad8f58828f`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:49 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:49 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:49 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:51 GMT
ADD file:58bfc1b17a1e2fc6a3ed29355c9baf1c70e13393e0632376cd7d67572c65ba25 in / 
# Thu, 24 Sep 2026 22:24:51 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 17:02:10 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 12 Oct 2026 17:02:10 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 12 Oct 2026 17:02:10 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 12 Oct 2026 17:02:10 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 12 Oct 2026 17:02:10 GMT
ARG REPO_CHANNEL=stable
# Mon, 12 Oct 2026 17:02:10 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 12 Oct 2026 17:02:10 GMT
ARG VERSION=26.7.25.6
# Mon, 12 Oct 2026 17:02:10 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 12 Oct 2026 17:02:52 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.25.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 12 Oct 2026 17:02:52 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.25.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 12 Oct 2026 17:02:54 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.25.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 12 Oct 2026 17:02:54 GMT
ENV LANG=en_US.UTF-8
# Mon, 12 Oct 2026 17:02:54 GMT
ENV TZ=UTC
# Mon, 12 Oct 2026 17:02:54 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.25.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 12 Oct 2026 17:02:54 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 12 Oct 2026 17:02:54 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 12 Oct 2026 17:02:54 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 12 Oct 2026 17:02:54 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 12 Oct 2026 17:02:54 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 12 Oct 2026 17:02:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:772765612473d2bb79bf345c2f764bb7c2735cecef9a121cabb210789aba4ad2`  
		Last Modified: Mon, 12 Oct 2026 17:03:16 GMT  
		Size: 7.5 MB (7534045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcb27040e47421de3014d3fb0a4bf0142e5da02cd34288773e12a8e84b2e8c45`  
		Last Modified: Mon, 12 Oct 2026 17:03:20 GMT  
		Size: 215.6 MB (215586829 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13de816e3586b5f68d20424c098d1caa198bb61ab2343a36ad5f4cc68c6f1631`  
		Last Modified: Mon, 12 Oct 2026 17:03:15 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5016d75b57aecd08846b5d65fd474138511362c01d86b9236aea7c1cd4005275`  
		Last Modified: Mon, 12 Oct 2026 17:03:16 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4f9893ec79e9c63faeb4931fb753b7fc80e5d730be906b827817706e2b24ede`  
		Last Modified: Mon, 12 Oct 2026 17:03:17 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b94212e8f89ce5ba975cc451d91b29884612645592c9806704c46dfad0e6023`  
		Last Modified: Mon, 12 Oct 2026 17:03:17 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e72e57cf5fb7505b5ad6f264204fb96800225e1a33cdb5016224c8f534d2f3d`  
		Last Modified: Mon, 12 Oct 2026 17:03:10 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7.25` - unknown; unknown

```console
$ docker pull clickhouse@sha256:7e2472b91a5363f47087355b550837b4ad75b7a9e7f1eb0e93462d9354809159
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.9 KB (26927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:062f62dfa7673d7b23f92259561455f5f478decce89798b08988e91b5288b6a6`

```dockerfile
```

-	Layers:
	-	`sha256:31dcd8a421f8684313b16fd230d3cf60be5f6a957849c835b6bbff5d154b493a`  
		Last Modified: Mon, 12 Oct 2026 17:03:15 GMT  
		Size: 26.9 KB (26927 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.7.25-jammy`

```console
$ docker pull clickhouse@sha256:1a1d57c88399e2dd8348bb1dcbf583111e25ad93f96f235ee66939eb95edfbdd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.7.25-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:65d35ed0cb5839b327ccbd54ab37662ded1afcd581ad109964c57acf10d6efc6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.4 MB (268351690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0eb63ef15372bad60c2ded7da5bfe3ffc364719ec65999c07f5b794152fb2aa`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:04 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:04 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:06 GMT
ADD file:b0bf3f64519bf10a51e00d4f8ab9c8693620659a0c4a4a5090a9765e754e1d1c in / 
# Thu, 24 Sep 2026 22:24:07 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 17:02:15 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 12 Oct 2026 17:02:15 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 12 Oct 2026 17:02:15 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 12 Oct 2026 17:02:15 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 12 Oct 2026 17:02:15 GMT
ARG REPO_CHANNEL=stable
# Mon, 12 Oct 2026 17:02:15 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 12 Oct 2026 17:02:15 GMT
ARG VERSION=26.7.25.6
# Mon, 12 Oct 2026 17:02:15 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 12 Oct 2026 17:02:42 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.25.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 12 Oct 2026 17:02:42 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.25.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 12 Oct 2026 17:02:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.25.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 12 Oct 2026 17:02:43 GMT
ENV LANG=en_US.UTF-8
# Mon, 12 Oct 2026 17:02:43 GMT
ENV TZ=UTC
# Mon, 12 Oct 2026 17:02:44 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.25.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 12 Oct 2026 17:02:44 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 12 Oct 2026 17:02:44 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 12 Oct 2026 17:02:44 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 12 Oct 2026 17:02:44 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 12 Oct 2026 17:02:44 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 12 Oct 2026 17:02:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4123255217d706dd196d7a0b0d974baee27bd3e33a5c99cf58d382c1cb00adf`  
		Last Modified: Mon, 12 Oct 2026 17:03:10 GMT  
		Size: 7.6 MB (7554217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41125d348f97940b79acdf0eb388c879de9be64c5c335ab792ff8be96df85577`  
		Last Modified: Mon, 12 Oct 2026 17:03:14 GMT  
		Size: 230.2 MB (230175795 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90c930ff751cbe32f4a5d4c7ba34f48af74c96e2da6822b77068dde75236bae0`  
		Last Modified: Mon, 12 Oct 2026 17:03:09 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dbc2b436c588172c0f1213199dc2a779e98be070e3253f9b6369adb8ac6045c`  
		Last Modified: Mon, 12 Oct 2026 17:03:09 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec8cb953c99e7443af8d8a4c26694179b674512f7937eedae64cd5f30883d745`  
		Last Modified: Mon, 12 Oct 2026 17:03:11 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87594a68897ba8f1c6d10e8f5eb0551c3a89495b2bdbbd181410e212d6c25dfb`  
		Last Modified: Mon, 12 Oct 2026 17:03:11 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a41b9ed5d99491719ecb82dae9a119064f25e8cf8b2652d1ddc3007bb9df7ac6`  
		Last Modified: Mon, 12 Oct 2026 17:03:11 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7.25-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:f910545e8dfc5ea5ffdfe6a905ce43fd20ea6f52d029e901801d0df6cd4efe40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.7 KB (26737 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52b4e25d9b7370721c1694c11006045554223cc12086e2204111337528ef3682`

```dockerfile
```

-	Layers:
	-	`sha256:16071da63ce78e62a64f1815de4ee69d7b94a0e17c71c974e90fff7643e8d910`  
		Last Modified: Mon, 12 Oct 2026 17:03:09 GMT  
		Size: 26.7 KB (26737 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.7.25-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:2dddd490bcc8d9a80e8fb2f6f6606ec27869a31ba926a9c8c4d8acedde415d8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.7 MB (251675059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb03e21850613f8c761bdc12865f0171ef7224abf8afd35e17ef8fad8f58828f`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:49 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:49 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:49 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:51 GMT
ADD file:58bfc1b17a1e2fc6a3ed29355c9baf1c70e13393e0632376cd7d67572c65ba25 in / 
# Thu, 24 Sep 2026 22:24:51 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 17:02:10 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 12 Oct 2026 17:02:10 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 12 Oct 2026 17:02:10 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 12 Oct 2026 17:02:10 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 12 Oct 2026 17:02:10 GMT
ARG REPO_CHANNEL=stable
# Mon, 12 Oct 2026 17:02:10 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 12 Oct 2026 17:02:10 GMT
ARG VERSION=26.7.25.6
# Mon, 12 Oct 2026 17:02:10 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 12 Oct 2026 17:02:52 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.25.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 12 Oct 2026 17:02:52 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.25.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 12 Oct 2026 17:02:54 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.25.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 12 Oct 2026 17:02:54 GMT
ENV LANG=en_US.UTF-8
# Mon, 12 Oct 2026 17:02:54 GMT
ENV TZ=UTC
# Mon, 12 Oct 2026 17:02:54 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.25.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 12 Oct 2026 17:02:54 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 12 Oct 2026 17:02:54 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 12 Oct 2026 17:02:54 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 12 Oct 2026 17:02:54 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 12 Oct 2026 17:02:54 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 12 Oct 2026 17:02:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:772765612473d2bb79bf345c2f764bb7c2735cecef9a121cabb210789aba4ad2`  
		Last Modified: Mon, 12 Oct 2026 17:03:16 GMT  
		Size: 7.5 MB (7534045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcb27040e47421de3014d3fb0a4bf0142e5da02cd34288773e12a8e84b2e8c45`  
		Last Modified: Mon, 12 Oct 2026 17:03:20 GMT  
		Size: 215.6 MB (215586829 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13de816e3586b5f68d20424c098d1caa198bb61ab2343a36ad5f4cc68c6f1631`  
		Last Modified: Mon, 12 Oct 2026 17:03:15 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5016d75b57aecd08846b5d65fd474138511362c01d86b9236aea7c1cd4005275`  
		Last Modified: Mon, 12 Oct 2026 17:03:16 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4f9893ec79e9c63faeb4931fb753b7fc80e5d730be906b827817706e2b24ede`  
		Last Modified: Mon, 12 Oct 2026 17:03:17 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b94212e8f89ce5ba975cc451d91b29884612645592c9806704c46dfad0e6023`  
		Last Modified: Mon, 12 Oct 2026 17:03:17 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e72e57cf5fb7505b5ad6f264204fb96800225e1a33cdb5016224c8f534d2f3d`  
		Last Modified: Mon, 12 Oct 2026 17:03:10 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7.25-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:7e2472b91a5363f47087355b550837b4ad75b7a9e7f1eb0e93462d9354809159
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.9 KB (26927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:062f62dfa7673d7b23f92259561455f5f478decce89798b08988e91b5288b6a6`

```dockerfile
```

-	Layers:
	-	`sha256:31dcd8a421f8684313b16fd230d3cf60be5f6a957849c835b6bbff5d154b493a`  
		Last Modified: Mon, 12 Oct 2026 17:03:15 GMT  
		Size: 26.9 KB (26927 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.7.25.6`

```console
$ docker pull clickhouse@sha256:1a1d57c88399e2dd8348bb1dcbf583111e25ad93f96f235ee66939eb95edfbdd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.7.25.6` - linux; amd64

```console
$ docker pull clickhouse@sha256:65d35ed0cb5839b327ccbd54ab37662ded1afcd581ad109964c57acf10d6efc6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.4 MB (268351690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0eb63ef15372bad60c2ded7da5bfe3ffc364719ec65999c07f5b794152fb2aa`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:04 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:04 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:06 GMT
ADD file:b0bf3f64519bf10a51e00d4f8ab9c8693620659a0c4a4a5090a9765e754e1d1c in / 
# Thu, 24 Sep 2026 22:24:07 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 17:02:15 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 12 Oct 2026 17:02:15 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 12 Oct 2026 17:02:15 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 12 Oct 2026 17:02:15 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 12 Oct 2026 17:02:15 GMT
ARG REPO_CHANNEL=stable
# Mon, 12 Oct 2026 17:02:15 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 12 Oct 2026 17:02:15 GMT
ARG VERSION=26.7.25.6
# Mon, 12 Oct 2026 17:02:15 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 12 Oct 2026 17:02:42 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.25.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 12 Oct 2026 17:02:42 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.25.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 12 Oct 2026 17:02:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.25.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 12 Oct 2026 17:02:43 GMT
ENV LANG=en_US.UTF-8
# Mon, 12 Oct 2026 17:02:43 GMT
ENV TZ=UTC
# Mon, 12 Oct 2026 17:02:44 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.25.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 12 Oct 2026 17:02:44 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 12 Oct 2026 17:02:44 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 12 Oct 2026 17:02:44 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 12 Oct 2026 17:02:44 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 12 Oct 2026 17:02:44 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 12 Oct 2026 17:02:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4123255217d706dd196d7a0b0d974baee27bd3e33a5c99cf58d382c1cb00adf`  
		Last Modified: Mon, 12 Oct 2026 17:03:10 GMT  
		Size: 7.6 MB (7554217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41125d348f97940b79acdf0eb388c879de9be64c5c335ab792ff8be96df85577`  
		Last Modified: Mon, 12 Oct 2026 17:03:14 GMT  
		Size: 230.2 MB (230175795 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90c930ff751cbe32f4a5d4c7ba34f48af74c96e2da6822b77068dde75236bae0`  
		Last Modified: Mon, 12 Oct 2026 17:03:09 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dbc2b436c588172c0f1213199dc2a779e98be070e3253f9b6369adb8ac6045c`  
		Last Modified: Mon, 12 Oct 2026 17:03:09 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec8cb953c99e7443af8d8a4c26694179b674512f7937eedae64cd5f30883d745`  
		Last Modified: Mon, 12 Oct 2026 17:03:11 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87594a68897ba8f1c6d10e8f5eb0551c3a89495b2bdbbd181410e212d6c25dfb`  
		Last Modified: Mon, 12 Oct 2026 17:03:11 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a41b9ed5d99491719ecb82dae9a119064f25e8cf8b2652d1ddc3007bb9df7ac6`  
		Last Modified: Mon, 12 Oct 2026 17:03:11 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7.25.6` - unknown; unknown

```console
$ docker pull clickhouse@sha256:f910545e8dfc5ea5ffdfe6a905ce43fd20ea6f52d029e901801d0df6cd4efe40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.7 KB (26737 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52b4e25d9b7370721c1694c11006045554223cc12086e2204111337528ef3682`

```dockerfile
```

-	Layers:
	-	`sha256:16071da63ce78e62a64f1815de4ee69d7b94a0e17c71c974e90fff7643e8d910`  
		Last Modified: Mon, 12 Oct 2026 17:03:09 GMT  
		Size: 26.7 KB (26737 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.7.25.6` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:2dddd490bcc8d9a80e8fb2f6f6606ec27869a31ba926a9c8c4d8acedde415d8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.7 MB (251675059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb03e21850613f8c761bdc12865f0171ef7224abf8afd35e17ef8fad8f58828f`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:49 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:49 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:49 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:51 GMT
ADD file:58bfc1b17a1e2fc6a3ed29355c9baf1c70e13393e0632376cd7d67572c65ba25 in / 
# Thu, 24 Sep 2026 22:24:51 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 17:02:10 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 12 Oct 2026 17:02:10 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 12 Oct 2026 17:02:10 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 12 Oct 2026 17:02:10 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 12 Oct 2026 17:02:10 GMT
ARG REPO_CHANNEL=stable
# Mon, 12 Oct 2026 17:02:10 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 12 Oct 2026 17:02:10 GMT
ARG VERSION=26.7.25.6
# Mon, 12 Oct 2026 17:02:10 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 12 Oct 2026 17:02:52 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.25.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 12 Oct 2026 17:02:52 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.25.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 12 Oct 2026 17:02:54 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.25.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 12 Oct 2026 17:02:54 GMT
ENV LANG=en_US.UTF-8
# Mon, 12 Oct 2026 17:02:54 GMT
ENV TZ=UTC
# Mon, 12 Oct 2026 17:02:54 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.25.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 12 Oct 2026 17:02:54 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 12 Oct 2026 17:02:54 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 12 Oct 2026 17:02:54 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 12 Oct 2026 17:02:54 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 12 Oct 2026 17:02:54 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 12 Oct 2026 17:02:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:772765612473d2bb79bf345c2f764bb7c2735cecef9a121cabb210789aba4ad2`  
		Last Modified: Mon, 12 Oct 2026 17:03:16 GMT  
		Size: 7.5 MB (7534045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcb27040e47421de3014d3fb0a4bf0142e5da02cd34288773e12a8e84b2e8c45`  
		Last Modified: Mon, 12 Oct 2026 17:03:20 GMT  
		Size: 215.6 MB (215586829 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13de816e3586b5f68d20424c098d1caa198bb61ab2343a36ad5f4cc68c6f1631`  
		Last Modified: Mon, 12 Oct 2026 17:03:15 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5016d75b57aecd08846b5d65fd474138511362c01d86b9236aea7c1cd4005275`  
		Last Modified: Mon, 12 Oct 2026 17:03:16 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4f9893ec79e9c63faeb4931fb753b7fc80e5d730be906b827817706e2b24ede`  
		Last Modified: Mon, 12 Oct 2026 17:03:17 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b94212e8f89ce5ba975cc451d91b29884612645592c9806704c46dfad0e6023`  
		Last Modified: Mon, 12 Oct 2026 17:03:17 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e72e57cf5fb7505b5ad6f264204fb96800225e1a33cdb5016224c8f534d2f3d`  
		Last Modified: Mon, 12 Oct 2026 17:03:10 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7.25.6` - unknown; unknown

```console
$ docker pull clickhouse@sha256:7e2472b91a5363f47087355b550837b4ad75b7a9e7f1eb0e93462d9354809159
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.9 KB (26927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:062f62dfa7673d7b23f92259561455f5f478decce89798b08988e91b5288b6a6`

```dockerfile
```

-	Layers:
	-	`sha256:31dcd8a421f8684313b16fd230d3cf60be5f6a957849c835b6bbff5d154b493a`  
		Last Modified: Mon, 12 Oct 2026 17:03:15 GMT  
		Size: 26.9 KB (26927 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.7.25.6-jammy`

```console
$ docker pull clickhouse@sha256:1a1d57c88399e2dd8348bb1dcbf583111e25ad93f96f235ee66939eb95edfbdd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.7.25.6-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:65d35ed0cb5839b327ccbd54ab37662ded1afcd581ad109964c57acf10d6efc6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.4 MB (268351690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0eb63ef15372bad60c2ded7da5bfe3ffc364719ec65999c07f5b794152fb2aa`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:04 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:04 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:06 GMT
ADD file:b0bf3f64519bf10a51e00d4f8ab9c8693620659a0c4a4a5090a9765e754e1d1c in / 
# Thu, 24 Sep 2026 22:24:07 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 17:02:15 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 12 Oct 2026 17:02:15 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 12 Oct 2026 17:02:15 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 12 Oct 2026 17:02:15 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 12 Oct 2026 17:02:15 GMT
ARG REPO_CHANNEL=stable
# Mon, 12 Oct 2026 17:02:15 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 12 Oct 2026 17:02:15 GMT
ARG VERSION=26.7.25.6
# Mon, 12 Oct 2026 17:02:15 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 12 Oct 2026 17:02:42 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.25.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 12 Oct 2026 17:02:42 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.25.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 12 Oct 2026 17:02:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.25.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 12 Oct 2026 17:02:43 GMT
ENV LANG=en_US.UTF-8
# Mon, 12 Oct 2026 17:02:43 GMT
ENV TZ=UTC
# Mon, 12 Oct 2026 17:02:44 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.25.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 12 Oct 2026 17:02:44 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 12 Oct 2026 17:02:44 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 12 Oct 2026 17:02:44 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 12 Oct 2026 17:02:44 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 12 Oct 2026 17:02:44 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 12 Oct 2026 17:02:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4123255217d706dd196d7a0b0d974baee27bd3e33a5c99cf58d382c1cb00adf`  
		Last Modified: Mon, 12 Oct 2026 17:03:10 GMT  
		Size: 7.6 MB (7554217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41125d348f97940b79acdf0eb388c879de9be64c5c335ab792ff8be96df85577`  
		Last Modified: Mon, 12 Oct 2026 17:03:14 GMT  
		Size: 230.2 MB (230175795 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90c930ff751cbe32f4a5d4c7ba34f48af74c96e2da6822b77068dde75236bae0`  
		Last Modified: Mon, 12 Oct 2026 17:03:09 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dbc2b436c588172c0f1213199dc2a779e98be070e3253f9b6369adb8ac6045c`  
		Last Modified: Mon, 12 Oct 2026 17:03:09 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec8cb953c99e7443af8d8a4c26694179b674512f7937eedae64cd5f30883d745`  
		Last Modified: Mon, 12 Oct 2026 17:03:11 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87594a68897ba8f1c6d10e8f5eb0551c3a89495b2bdbbd181410e212d6c25dfb`  
		Last Modified: Mon, 12 Oct 2026 17:03:11 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a41b9ed5d99491719ecb82dae9a119064f25e8cf8b2652d1ddc3007bb9df7ac6`  
		Last Modified: Mon, 12 Oct 2026 17:03:11 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7.25.6-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:f910545e8dfc5ea5ffdfe6a905ce43fd20ea6f52d029e901801d0df6cd4efe40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.7 KB (26737 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52b4e25d9b7370721c1694c11006045554223cc12086e2204111337528ef3682`

```dockerfile
```

-	Layers:
	-	`sha256:16071da63ce78e62a64f1815de4ee69d7b94a0e17c71c974e90fff7643e8d910`  
		Last Modified: Mon, 12 Oct 2026 17:03:09 GMT  
		Size: 26.7 KB (26737 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.7.25.6-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:2dddd490bcc8d9a80e8fb2f6f6606ec27869a31ba926a9c8c4d8acedde415d8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.7 MB (251675059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb03e21850613f8c761bdc12865f0171ef7224abf8afd35e17ef8fad8f58828f`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:49 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:49 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:49 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:51 GMT
ADD file:58bfc1b17a1e2fc6a3ed29355c9baf1c70e13393e0632376cd7d67572c65ba25 in / 
# Thu, 24 Sep 2026 22:24:51 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 17:02:10 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 12 Oct 2026 17:02:10 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 12 Oct 2026 17:02:10 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 12 Oct 2026 17:02:10 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 12 Oct 2026 17:02:10 GMT
ARG REPO_CHANNEL=stable
# Mon, 12 Oct 2026 17:02:10 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 12 Oct 2026 17:02:10 GMT
ARG VERSION=26.7.25.6
# Mon, 12 Oct 2026 17:02:10 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 12 Oct 2026 17:02:52 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.25.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 12 Oct 2026 17:02:52 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.25.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 12 Oct 2026 17:02:54 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.25.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 12 Oct 2026 17:02:54 GMT
ENV LANG=en_US.UTF-8
# Mon, 12 Oct 2026 17:02:54 GMT
ENV TZ=UTC
# Mon, 12 Oct 2026 17:02:54 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.25.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 12 Oct 2026 17:02:54 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 12 Oct 2026 17:02:54 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 12 Oct 2026 17:02:54 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 12 Oct 2026 17:02:54 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 12 Oct 2026 17:02:54 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 12 Oct 2026 17:02:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:772765612473d2bb79bf345c2f764bb7c2735cecef9a121cabb210789aba4ad2`  
		Last Modified: Mon, 12 Oct 2026 17:03:16 GMT  
		Size: 7.5 MB (7534045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcb27040e47421de3014d3fb0a4bf0142e5da02cd34288773e12a8e84b2e8c45`  
		Last Modified: Mon, 12 Oct 2026 17:03:20 GMT  
		Size: 215.6 MB (215586829 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13de816e3586b5f68d20424c098d1caa198bb61ab2343a36ad5f4cc68c6f1631`  
		Last Modified: Mon, 12 Oct 2026 17:03:15 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5016d75b57aecd08846b5d65fd474138511362c01d86b9236aea7c1cd4005275`  
		Last Modified: Mon, 12 Oct 2026 17:03:16 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4f9893ec79e9c63faeb4931fb753b7fc80e5d730be906b827817706e2b24ede`  
		Last Modified: Mon, 12 Oct 2026 17:03:17 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b94212e8f89ce5ba975cc451d91b29884612645592c9806704c46dfad0e6023`  
		Last Modified: Mon, 12 Oct 2026 17:03:17 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e72e57cf5fb7505b5ad6f264204fb96800225e1a33cdb5016224c8f534d2f3d`  
		Last Modified: Mon, 12 Oct 2026 17:03:10 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7.25.6-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:7e2472b91a5363f47087355b550837b4ad75b7a9e7f1eb0e93462d9354809159
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.9 KB (26927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:062f62dfa7673d7b23f92259561455f5f478decce89798b08988e91b5288b6a6`

```dockerfile
```

-	Layers:
	-	`sha256:31dcd8a421f8684313b16fd230d3cf60be5f6a957849c835b6bbff5d154b493a`  
		Last Modified: Mon, 12 Oct 2026 17:03:15 GMT  
		Size: 26.9 KB (26927 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.8`

```console
$ docker pull clickhouse@sha256:77be6e71935b8957645adb34d80e68646b74c90cc260a69cb6150d7895cf2e19
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.8` - linux; amd64

```console
$ docker pull clickhouse@sha256:acc2627d5025eab3efe0a21bbf0dcefcb88f7c17c907ff8ae9fda165b6487d54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.6 MB (279551313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a13a867bbd9b03e1a677abe927959cd341ac5749cf3cdbaf54f0a33f1dc35ff5`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:04 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:04 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:06 GMT
ADD file:b0bf3f64519bf10a51e00d4f8ab9c8693620659a0c4a4a5090a9765e754e1d1c in / 
# Thu, 24 Sep 2026 22:24:07 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 17:02:09 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 12 Oct 2026 17:02:09 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 12 Oct 2026 17:02:09 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 12 Oct 2026 17:02:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 12 Oct 2026 17:02:09 GMT
ARG REPO_CHANNEL=stable
# Mon, 12 Oct 2026 17:02:09 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 12 Oct 2026 17:02:09 GMT
ARG VERSION=26.8.21.10
# Mon, 12 Oct 2026 17:02:09 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 12 Oct 2026 17:02:40 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.21.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 12 Oct 2026 17:02:40 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.21.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 12 Oct 2026 17:02:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.21.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 12 Oct 2026 17:02:41 GMT
ENV LANG=en_US.UTF-8
# Mon, 12 Oct 2026 17:02:41 GMT
ENV TZ=UTC
# Mon, 12 Oct 2026 17:02:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.21.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 12 Oct 2026 17:02:42 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 12 Oct 2026 17:02:42 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 12 Oct 2026 17:02:42 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 12 Oct 2026 17:02:42 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 12 Oct 2026 17:02:42 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 12 Oct 2026 17:02:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e042fdfbb63f1b6d4f0ae11391cad49f25b964d7036de842f5af54e678103b10`  
		Last Modified: Mon, 12 Oct 2026 17:03:08 GMT  
		Size: 7.6 MB (7554221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8da25d9e30dbc24132066d9cf96868a7483148fc7ac01be48c26036d5ad26a1e`  
		Last Modified: Mon, 12 Oct 2026 17:03:13 GMT  
		Size: 241.4 MB (241375417 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b62d27ad2a2436c34fb7e209779ca3045c53677c5ca58c955d412f5744c102d`  
		Last Modified: Mon, 12 Oct 2026 17:03:08 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc8c27f0bed9aefa35ed2801bd4438b2f4435786feba40f5ac9d780f562d8aa7`  
		Last Modified: Mon, 12 Oct 2026 17:03:08 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fe4d3aa1d0369bb476a25b16f9a8dd66286ad1a9d14bee8573698fb86a28fb4`  
		Last Modified: Mon, 12 Oct 2026 17:03:09 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b4384ac39914900d3e2c58e3921fc1ad2cc773edc8105da26a6ee1158663cae`  
		Last Modified: Mon, 12 Oct 2026 17:03:10 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e72e57cf5fb7505b5ad6f264204fb96800225e1a33cdb5016224c8f534d2f3d`  
		Last Modified: Mon, 12 Oct 2026 17:03:10 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8` - unknown; unknown

```console
$ docker pull clickhouse@sha256:eebe5649d163bff83f39cc22534f96d4e3b3be8b9bdba5b5e8d12337ff3d2c8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 KB (27366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ca587eca80c8d4368797ee704359635ef76bda981e36ae3f28cee614ae51556`

```dockerfile
```

-	Layers:
	-	`sha256:07e1a4d3b7799395469fe95111304c8f29d867725956761fb0556a9a442c330f`  
		Last Modified: Mon, 12 Oct 2026 17:03:08 GMT  
		Size: 27.4 KB (27366 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.8` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:89c98a876fefc6dd5a1ee8ed298a46fa0ab93cf1a606f4ce96297991788f9287
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.6 MB (262614749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:353e2059a26ad3b4629635a4e8cdfc4760c54c743b386c05bf8134d54d3879fd`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:49 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:49 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:49 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:51 GMT
ADD file:58bfc1b17a1e2fc6a3ed29355c9baf1c70e13393e0632376cd7d67572c65ba25 in / 
# Thu, 24 Sep 2026 22:24:51 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 17:02:36 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 12 Oct 2026 17:02:36 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 12 Oct 2026 17:02:36 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 12 Oct 2026 17:02:36 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 12 Oct 2026 17:02:36 GMT
ARG REPO_CHANNEL=stable
# Mon, 12 Oct 2026 17:02:36 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 12 Oct 2026 17:02:36 GMT
ARG VERSION=26.8.21.10
# Mon, 12 Oct 2026 17:02:36 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 12 Oct 2026 17:03:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.21.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 12 Oct 2026 17:03:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.21.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 12 Oct 2026 17:03:18 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.21.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 12 Oct 2026 17:03:18 GMT
ENV LANG=en_US.UTF-8
# Mon, 12 Oct 2026 17:03:18 GMT
ENV TZ=UTC
# Mon, 12 Oct 2026 17:03:18 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.21.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 12 Oct 2026 17:03:18 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 12 Oct 2026 17:03:18 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 12 Oct 2026 17:03:18 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 12 Oct 2026 17:03:18 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 12 Oct 2026 17:03:18 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 12 Oct 2026 17:03:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3df44adbff22a7787c4a1bbbac33c389cc823d9aaffd0f07168574536b0024d3`  
		Last Modified: Mon, 12 Oct 2026 17:03:40 GMT  
		Size: 7.5 MB (7534145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:853b3a44f3f9ecca6d609e396f98f7d7edcf988c34cad6389b0aaf76b04a22d8`  
		Last Modified: Mon, 12 Oct 2026 17:03:45 GMT  
		Size: 226.5 MB (226526418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7901d3621b276e6807d3b2a6df442a9d53d38e987f11d95ee3ca42b56098f6a`  
		Last Modified: Mon, 12 Oct 2026 17:03:40 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2852d5b625a64acdf4c799fa6733cbb5654ee1364b1bfca419b6eeb03f3e3151`  
		Last Modified: Mon, 12 Oct 2026 17:03:40 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad6cc80472dd88cf5ec0d381f16e7c57d08d44fcaa61ad288ae7f307f5b1a60a`  
		Last Modified: Mon, 12 Oct 2026 17:03:41 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3103202bf7c9091daf54f09431408fc9d71c6d4aef4c24884adf89e696dfdff6`  
		Last Modified: Mon, 12 Oct 2026 17:03:41 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c46248d1dedddcd2a8894e7961f9d67a72d4d4aca50ce3e4d971270b994b062`  
		Last Modified: Mon, 12 Oct 2026 17:03:42 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8` - unknown; unknown

```console
$ docker pull clickhouse@sha256:c6dcdca05891a3e8b5c1d546c80aedb48dafbb634064c659bd265f5f7c561021
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 KB (27578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1187018d73876fe58e3aaa307e7a9f0b73ea36d081b17541297db64d14e49f2a`

```dockerfile
```

-	Layers:
	-	`sha256:5f56b35827ca3349edc5216bccd073841b2c63badb916e307ebee70e170c73e4`  
		Last Modified: Mon, 12 Oct 2026 17:03:40 GMT  
		Size: 27.6 KB (27578 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.8-jammy`

```console
$ docker pull clickhouse@sha256:77be6e71935b8957645adb34d80e68646b74c90cc260a69cb6150d7895cf2e19
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.8-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:acc2627d5025eab3efe0a21bbf0dcefcb88f7c17c907ff8ae9fda165b6487d54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.6 MB (279551313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a13a867bbd9b03e1a677abe927959cd341ac5749cf3cdbaf54f0a33f1dc35ff5`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:04 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:04 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:06 GMT
ADD file:b0bf3f64519bf10a51e00d4f8ab9c8693620659a0c4a4a5090a9765e754e1d1c in / 
# Thu, 24 Sep 2026 22:24:07 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 17:02:09 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 12 Oct 2026 17:02:09 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 12 Oct 2026 17:02:09 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 12 Oct 2026 17:02:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 12 Oct 2026 17:02:09 GMT
ARG REPO_CHANNEL=stable
# Mon, 12 Oct 2026 17:02:09 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 12 Oct 2026 17:02:09 GMT
ARG VERSION=26.8.21.10
# Mon, 12 Oct 2026 17:02:09 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 12 Oct 2026 17:02:40 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.21.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 12 Oct 2026 17:02:40 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.21.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 12 Oct 2026 17:02:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.21.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 12 Oct 2026 17:02:41 GMT
ENV LANG=en_US.UTF-8
# Mon, 12 Oct 2026 17:02:41 GMT
ENV TZ=UTC
# Mon, 12 Oct 2026 17:02:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.21.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 12 Oct 2026 17:02:42 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 12 Oct 2026 17:02:42 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 12 Oct 2026 17:02:42 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 12 Oct 2026 17:02:42 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 12 Oct 2026 17:02:42 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 12 Oct 2026 17:02:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e042fdfbb63f1b6d4f0ae11391cad49f25b964d7036de842f5af54e678103b10`  
		Last Modified: Mon, 12 Oct 2026 17:03:08 GMT  
		Size: 7.6 MB (7554221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8da25d9e30dbc24132066d9cf96868a7483148fc7ac01be48c26036d5ad26a1e`  
		Last Modified: Mon, 12 Oct 2026 17:03:13 GMT  
		Size: 241.4 MB (241375417 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b62d27ad2a2436c34fb7e209779ca3045c53677c5ca58c955d412f5744c102d`  
		Last Modified: Mon, 12 Oct 2026 17:03:08 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc8c27f0bed9aefa35ed2801bd4438b2f4435786feba40f5ac9d780f562d8aa7`  
		Last Modified: Mon, 12 Oct 2026 17:03:08 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fe4d3aa1d0369bb476a25b16f9a8dd66286ad1a9d14bee8573698fb86a28fb4`  
		Last Modified: Mon, 12 Oct 2026 17:03:09 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b4384ac39914900d3e2c58e3921fc1ad2cc773edc8105da26a6ee1158663cae`  
		Last Modified: Mon, 12 Oct 2026 17:03:10 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e72e57cf5fb7505b5ad6f264204fb96800225e1a33cdb5016224c8f534d2f3d`  
		Last Modified: Mon, 12 Oct 2026 17:03:10 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:eebe5649d163bff83f39cc22534f96d4e3b3be8b9bdba5b5e8d12337ff3d2c8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 KB (27366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ca587eca80c8d4368797ee704359635ef76bda981e36ae3f28cee614ae51556`

```dockerfile
```

-	Layers:
	-	`sha256:07e1a4d3b7799395469fe95111304c8f29d867725956761fb0556a9a442c330f`  
		Last Modified: Mon, 12 Oct 2026 17:03:08 GMT  
		Size: 27.4 KB (27366 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.8-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:89c98a876fefc6dd5a1ee8ed298a46fa0ab93cf1a606f4ce96297991788f9287
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.6 MB (262614749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:353e2059a26ad3b4629635a4e8cdfc4760c54c743b386c05bf8134d54d3879fd`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:49 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:49 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:49 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:51 GMT
ADD file:58bfc1b17a1e2fc6a3ed29355c9baf1c70e13393e0632376cd7d67572c65ba25 in / 
# Thu, 24 Sep 2026 22:24:51 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 17:02:36 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 12 Oct 2026 17:02:36 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 12 Oct 2026 17:02:36 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 12 Oct 2026 17:02:36 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 12 Oct 2026 17:02:36 GMT
ARG REPO_CHANNEL=stable
# Mon, 12 Oct 2026 17:02:36 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 12 Oct 2026 17:02:36 GMT
ARG VERSION=26.8.21.10
# Mon, 12 Oct 2026 17:02:36 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 12 Oct 2026 17:03:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.21.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 12 Oct 2026 17:03:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.21.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 12 Oct 2026 17:03:18 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.21.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 12 Oct 2026 17:03:18 GMT
ENV LANG=en_US.UTF-8
# Mon, 12 Oct 2026 17:03:18 GMT
ENV TZ=UTC
# Mon, 12 Oct 2026 17:03:18 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.21.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 12 Oct 2026 17:03:18 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 12 Oct 2026 17:03:18 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 12 Oct 2026 17:03:18 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 12 Oct 2026 17:03:18 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 12 Oct 2026 17:03:18 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 12 Oct 2026 17:03:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3df44adbff22a7787c4a1bbbac33c389cc823d9aaffd0f07168574536b0024d3`  
		Last Modified: Mon, 12 Oct 2026 17:03:40 GMT  
		Size: 7.5 MB (7534145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:853b3a44f3f9ecca6d609e396f98f7d7edcf988c34cad6389b0aaf76b04a22d8`  
		Last Modified: Mon, 12 Oct 2026 17:03:45 GMT  
		Size: 226.5 MB (226526418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7901d3621b276e6807d3b2a6df442a9d53d38e987f11d95ee3ca42b56098f6a`  
		Last Modified: Mon, 12 Oct 2026 17:03:40 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2852d5b625a64acdf4c799fa6733cbb5654ee1364b1bfca419b6eeb03f3e3151`  
		Last Modified: Mon, 12 Oct 2026 17:03:40 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad6cc80472dd88cf5ec0d381f16e7c57d08d44fcaa61ad288ae7f307f5b1a60a`  
		Last Modified: Mon, 12 Oct 2026 17:03:41 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3103202bf7c9091daf54f09431408fc9d71c6d4aef4c24884adf89e696dfdff6`  
		Last Modified: Mon, 12 Oct 2026 17:03:41 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c46248d1dedddcd2a8894e7961f9d67a72d4d4aca50ce3e4d971270b994b062`  
		Last Modified: Mon, 12 Oct 2026 17:03:42 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:c6dcdca05891a3e8b5c1d546c80aedb48dafbb634064c659bd265f5f7c561021
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 KB (27578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1187018d73876fe58e3aaa307e7a9f0b73ea36d081b17541297db64d14e49f2a`

```dockerfile
```

-	Layers:
	-	`sha256:5f56b35827ca3349edc5216bccd073841b2c63badb916e307ebee70e170c73e4`  
		Last Modified: Mon, 12 Oct 2026 17:03:40 GMT  
		Size: 27.6 KB (27578 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.8.21`

```console
$ docker pull clickhouse@sha256:77be6e71935b8957645adb34d80e68646b74c90cc260a69cb6150d7895cf2e19
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.8.21` - linux; amd64

```console
$ docker pull clickhouse@sha256:acc2627d5025eab3efe0a21bbf0dcefcb88f7c17c907ff8ae9fda165b6487d54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.6 MB (279551313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a13a867bbd9b03e1a677abe927959cd341ac5749cf3cdbaf54f0a33f1dc35ff5`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:04 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:04 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:06 GMT
ADD file:b0bf3f64519bf10a51e00d4f8ab9c8693620659a0c4a4a5090a9765e754e1d1c in / 
# Thu, 24 Sep 2026 22:24:07 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 17:02:09 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 12 Oct 2026 17:02:09 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 12 Oct 2026 17:02:09 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 12 Oct 2026 17:02:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 12 Oct 2026 17:02:09 GMT
ARG REPO_CHANNEL=stable
# Mon, 12 Oct 2026 17:02:09 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 12 Oct 2026 17:02:09 GMT
ARG VERSION=26.8.21.10
# Mon, 12 Oct 2026 17:02:09 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 12 Oct 2026 17:02:40 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.21.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 12 Oct 2026 17:02:40 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.21.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 12 Oct 2026 17:02:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.21.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 12 Oct 2026 17:02:41 GMT
ENV LANG=en_US.UTF-8
# Mon, 12 Oct 2026 17:02:41 GMT
ENV TZ=UTC
# Mon, 12 Oct 2026 17:02:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.21.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 12 Oct 2026 17:02:42 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 12 Oct 2026 17:02:42 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 12 Oct 2026 17:02:42 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 12 Oct 2026 17:02:42 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 12 Oct 2026 17:02:42 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 12 Oct 2026 17:02:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e042fdfbb63f1b6d4f0ae11391cad49f25b964d7036de842f5af54e678103b10`  
		Last Modified: Mon, 12 Oct 2026 17:03:08 GMT  
		Size: 7.6 MB (7554221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8da25d9e30dbc24132066d9cf96868a7483148fc7ac01be48c26036d5ad26a1e`  
		Last Modified: Mon, 12 Oct 2026 17:03:13 GMT  
		Size: 241.4 MB (241375417 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b62d27ad2a2436c34fb7e209779ca3045c53677c5ca58c955d412f5744c102d`  
		Last Modified: Mon, 12 Oct 2026 17:03:08 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc8c27f0bed9aefa35ed2801bd4438b2f4435786feba40f5ac9d780f562d8aa7`  
		Last Modified: Mon, 12 Oct 2026 17:03:08 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fe4d3aa1d0369bb476a25b16f9a8dd66286ad1a9d14bee8573698fb86a28fb4`  
		Last Modified: Mon, 12 Oct 2026 17:03:09 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b4384ac39914900d3e2c58e3921fc1ad2cc773edc8105da26a6ee1158663cae`  
		Last Modified: Mon, 12 Oct 2026 17:03:10 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e72e57cf5fb7505b5ad6f264204fb96800225e1a33cdb5016224c8f534d2f3d`  
		Last Modified: Mon, 12 Oct 2026 17:03:10 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8.21` - unknown; unknown

```console
$ docker pull clickhouse@sha256:eebe5649d163bff83f39cc22534f96d4e3b3be8b9bdba5b5e8d12337ff3d2c8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 KB (27366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ca587eca80c8d4368797ee704359635ef76bda981e36ae3f28cee614ae51556`

```dockerfile
```

-	Layers:
	-	`sha256:07e1a4d3b7799395469fe95111304c8f29d867725956761fb0556a9a442c330f`  
		Last Modified: Mon, 12 Oct 2026 17:03:08 GMT  
		Size: 27.4 KB (27366 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.8.21` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:89c98a876fefc6dd5a1ee8ed298a46fa0ab93cf1a606f4ce96297991788f9287
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.6 MB (262614749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:353e2059a26ad3b4629635a4e8cdfc4760c54c743b386c05bf8134d54d3879fd`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:49 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:49 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:49 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:51 GMT
ADD file:58bfc1b17a1e2fc6a3ed29355c9baf1c70e13393e0632376cd7d67572c65ba25 in / 
# Thu, 24 Sep 2026 22:24:51 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 17:02:36 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 12 Oct 2026 17:02:36 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 12 Oct 2026 17:02:36 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 12 Oct 2026 17:02:36 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 12 Oct 2026 17:02:36 GMT
ARG REPO_CHANNEL=stable
# Mon, 12 Oct 2026 17:02:36 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 12 Oct 2026 17:02:36 GMT
ARG VERSION=26.8.21.10
# Mon, 12 Oct 2026 17:02:36 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 12 Oct 2026 17:03:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.21.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 12 Oct 2026 17:03:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.21.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 12 Oct 2026 17:03:18 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.21.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 12 Oct 2026 17:03:18 GMT
ENV LANG=en_US.UTF-8
# Mon, 12 Oct 2026 17:03:18 GMT
ENV TZ=UTC
# Mon, 12 Oct 2026 17:03:18 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.21.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 12 Oct 2026 17:03:18 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 12 Oct 2026 17:03:18 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 12 Oct 2026 17:03:18 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 12 Oct 2026 17:03:18 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 12 Oct 2026 17:03:18 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 12 Oct 2026 17:03:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3df44adbff22a7787c4a1bbbac33c389cc823d9aaffd0f07168574536b0024d3`  
		Last Modified: Mon, 12 Oct 2026 17:03:40 GMT  
		Size: 7.5 MB (7534145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:853b3a44f3f9ecca6d609e396f98f7d7edcf988c34cad6389b0aaf76b04a22d8`  
		Last Modified: Mon, 12 Oct 2026 17:03:45 GMT  
		Size: 226.5 MB (226526418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7901d3621b276e6807d3b2a6df442a9d53d38e987f11d95ee3ca42b56098f6a`  
		Last Modified: Mon, 12 Oct 2026 17:03:40 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2852d5b625a64acdf4c799fa6733cbb5654ee1364b1bfca419b6eeb03f3e3151`  
		Last Modified: Mon, 12 Oct 2026 17:03:40 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad6cc80472dd88cf5ec0d381f16e7c57d08d44fcaa61ad288ae7f307f5b1a60a`  
		Last Modified: Mon, 12 Oct 2026 17:03:41 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3103202bf7c9091daf54f09431408fc9d71c6d4aef4c24884adf89e696dfdff6`  
		Last Modified: Mon, 12 Oct 2026 17:03:41 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c46248d1dedddcd2a8894e7961f9d67a72d4d4aca50ce3e4d971270b994b062`  
		Last Modified: Mon, 12 Oct 2026 17:03:42 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8.21` - unknown; unknown

```console
$ docker pull clickhouse@sha256:c6dcdca05891a3e8b5c1d546c80aedb48dafbb634064c659bd265f5f7c561021
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 KB (27578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1187018d73876fe58e3aaa307e7a9f0b73ea36d081b17541297db64d14e49f2a`

```dockerfile
```

-	Layers:
	-	`sha256:5f56b35827ca3349edc5216bccd073841b2c63badb916e307ebee70e170c73e4`  
		Last Modified: Mon, 12 Oct 2026 17:03:40 GMT  
		Size: 27.6 KB (27578 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.8.21-jammy`

```console
$ docker pull clickhouse@sha256:77be6e71935b8957645adb34d80e68646b74c90cc260a69cb6150d7895cf2e19
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.8.21-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:acc2627d5025eab3efe0a21bbf0dcefcb88f7c17c907ff8ae9fda165b6487d54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.6 MB (279551313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a13a867bbd9b03e1a677abe927959cd341ac5749cf3cdbaf54f0a33f1dc35ff5`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:04 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:04 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:06 GMT
ADD file:b0bf3f64519bf10a51e00d4f8ab9c8693620659a0c4a4a5090a9765e754e1d1c in / 
# Thu, 24 Sep 2026 22:24:07 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 17:02:09 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 12 Oct 2026 17:02:09 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 12 Oct 2026 17:02:09 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 12 Oct 2026 17:02:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 12 Oct 2026 17:02:09 GMT
ARG REPO_CHANNEL=stable
# Mon, 12 Oct 2026 17:02:09 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 12 Oct 2026 17:02:09 GMT
ARG VERSION=26.8.21.10
# Mon, 12 Oct 2026 17:02:09 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 12 Oct 2026 17:02:40 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.21.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 12 Oct 2026 17:02:40 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.21.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 12 Oct 2026 17:02:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.21.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 12 Oct 2026 17:02:41 GMT
ENV LANG=en_US.UTF-8
# Mon, 12 Oct 2026 17:02:41 GMT
ENV TZ=UTC
# Mon, 12 Oct 2026 17:02:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.21.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 12 Oct 2026 17:02:42 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 12 Oct 2026 17:02:42 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 12 Oct 2026 17:02:42 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 12 Oct 2026 17:02:42 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 12 Oct 2026 17:02:42 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 12 Oct 2026 17:02:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e042fdfbb63f1b6d4f0ae11391cad49f25b964d7036de842f5af54e678103b10`  
		Last Modified: Mon, 12 Oct 2026 17:03:08 GMT  
		Size: 7.6 MB (7554221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8da25d9e30dbc24132066d9cf96868a7483148fc7ac01be48c26036d5ad26a1e`  
		Last Modified: Mon, 12 Oct 2026 17:03:13 GMT  
		Size: 241.4 MB (241375417 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b62d27ad2a2436c34fb7e209779ca3045c53677c5ca58c955d412f5744c102d`  
		Last Modified: Mon, 12 Oct 2026 17:03:08 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc8c27f0bed9aefa35ed2801bd4438b2f4435786feba40f5ac9d780f562d8aa7`  
		Last Modified: Mon, 12 Oct 2026 17:03:08 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fe4d3aa1d0369bb476a25b16f9a8dd66286ad1a9d14bee8573698fb86a28fb4`  
		Last Modified: Mon, 12 Oct 2026 17:03:09 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b4384ac39914900d3e2c58e3921fc1ad2cc773edc8105da26a6ee1158663cae`  
		Last Modified: Mon, 12 Oct 2026 17:03:10 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e72e57cf5fb7505b5ad6f264204fb96800225e1a33cdb5016224c8f534d2f3d`  
		Last Modified: Mon, 12 Oct 2026 17:03:10 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8.21-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:eebe5649d163bff83f39cc22534f96d4e3b3be8b9bdba5b5e8d12337ff3d2c8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 KB (27366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ca587eca80c8d4368797ee704359635ef76bda981e36ae3f28cee614ae51556`

```dockerfile
```

-	Layers:
	-	`sha256:07e1a4d3b7799395469fe95111304c8f29d867725956761fb0556a9a442c330f`  
		Last Modified: Mon, 12 Oct 2026 17:03:08 GMT  
		Size: 27.4 KB (27366 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.8.21-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:89c98a876fefc6dd5a1ee8ed298a46fa0ab93cf1a606f4ce96297991788f9287
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.6 MB (262614749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:353e2059a26ad3b4629635a4e8cdfc4760c54c743b386c05bf8134d54d3879fd`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:49 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:49 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:49 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:51 GMT
ADD file:58bfc1b17a1e2fc6a3ed29355c9baf1c70e13393e0632376cd7d67572c65ba25 in / 
# Thu, 24 Sep 2026 22:24:51 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 17:02:36 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 12 Oct 2026 17:02:36 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 12 Oct 2026 17:02:36 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 12 Oct 2026 17:02:36 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 12 Oct 2026 17:02:36 GMT
ARG REPO_CHANNEL=stable
# Mon, 12 Oct 2026 17:02:36 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 12 Oct 2026 17:02:36 GMT
ARG VERSION=26.8.21.10
# Mon, 12 Oct 2026 17:02:36 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 12 Oct 2026 17:03:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.21.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 12 Oct 2026 17:03:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.21.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 12 Oct 2026 17:03:18 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.21.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 12 Oct 2026 17:03:18 GMT
ENV LANG=en_US.UTF-8
# Mon, 12 Oct 2026 17:03:18 GMT
ENV TZ=UTC
# Mon, 12 Oct 2026 17:03:18 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.21.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 12 Oct 2026 17:03:18 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 12 Oct 2026 17:03:18 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 12 Oct 2026 17:03:18 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 12 Oct 2026 17:03:18 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 12 Oct 2026 17:03:18 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 12 Oct 2026 17:03:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3df44adbff22a7787c4a1bbbac33c389cc823d9aaffd0f07168574536b0024d3`  
		Last Modified: Mon, 12 Oct 2026 17:03:40 GMT  
		Size: 7.5 MB (7534145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:853b3a44f3f9ecca6d609e396f98f7d7edcf988c34cad6389b0aaf76b04a22d8`  
		Last Modified: Mon, 12 Oct 2026 17:03:45 GMT  
		Size: 226.5 MB (226526418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7901d3621b276e6807d3b2a6df442a9d53d38e987f11d95ee3ca42b56098f6a`  
		Last Modified: Mon, 12 Oct 2026 17:03:40 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2852d5b625a64acdf4c799fa6733cbb5654ee1364b1bfca419b6eeb03f3e3151`  
		Last Modified: Mon, 12 Oct 2026 17:03:40 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad6cc80472dd88cf5ec0d381f16e7c57d08d44fcaa61ad288ae7f307f5b1a60a`  
		Last Modified: Mon, 12 Oct 2026 17:03:41 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3103202bf7c9091daf54f09431408fc9d71c6d4aef4c24884adf89e696dfdff6`  
		Last Modified: Mon, 12 Oct 2026 17:03:41 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c46248d1dedddcd2a8894e7961f9d67a72d4d4aca50ce3e4d971270b994b062`  
		Last Modified: Mon, 12 Oct 2026 17:03:42 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8.21-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:c6dcdca05891a3e8b5c1d546c80aedb48dafbb634064c659bd265f5f7c561021
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 KB (27578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1187018d73876fe58e3aaa307e7a9f0b73ea36d081b17541297db64d14e49f2a`

```dockerfile
```

-	Layers:
	-	`sha256:5f56b35827ca3349edc5216bccd073841b2c63badb916e307ebee70e170c73e4`  
		Last Modified: Mon, 12 Oct 2026 17:03:40 GMT  
		Size: 27.6 KB (27578 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.8.21.10`

```console
$ docker pull clickhouse@sha256:77be6e71935b8957645adb34d80e68646b74c90cc260a69cb6150d7895cf2e19
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.8.21.10` - linux; amd64

```console
$ docker pull clickhouse@sha256:acc2627d5025eab3efe0a21bbf0dcefcb88f7c17c907ff8ae9fda165b6487d54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.6 MB (279551313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a13a867bbd9b03e1a677abe927959cd341ac5749cf3cdbaf54f0a33f1dc35ff5`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:04 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:04 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:06 GMT
ADD file:b0bf3f64519bf10a51e00d4f8ab9c8693620659a0c4a4a5090a9765e754e1d1c in / 
# Thu, 24 Sep 2026 22:24:07 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 17:02:09 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 12 Oct 2026 17:02:09 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 12 Oct 2026 17:02:09 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 12 Oct 2026 17:02:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 12 Oct 2026 17:02:09 GMT
ARG REPO_CHANNEL=stable
# Mon, 12 Oct 2026 17:02:09 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 12 Oct 2026 17:02:09 GMT
ARG VERSION=26.8.21.10
# Mon, 12 Oct 2026 17:02:09 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 12 Oct 2026 17:02:40 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.21.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 12 Oct 2026 17:02:40 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.21.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 12 Oct 2026 17:02:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.21.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 12 Oct 2026 17:02:41 GMT
ENV LANG=en_US.UTF-8
# Mon, 12 Oct 2026 17:02:41 GMT
ENV TZ=UTC
# Mon, 12 Oct 2026 17:02:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.21.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 12 Oct 2026 17:02:42 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 12 Oct 2026 17:02:42 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 12 Oct 2026 17:02:42 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 12 Oct 2026 17:02:42 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 12 Oct 2026 17:02:42 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 12 Oct 2026 17:02:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e042fdfbb63f1b6d4f0ae11391cad49f25b964d7036de842f5af54e678103b10`  
		Last Modified: Mon, 12 Oct 2026 17:03:08 GMT  
		Size: 7.6 MB (7554221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8da25d9e30dbc24132066d9cf96868a7483148fc7ac01be48c26036d5ad26a1e`  
		Last Modified: Mon, 12 Oct 2026 17:03:13 GMT  
		Size: 241.4 MB (241375417 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b62d27ad2a2436c34fb7e209779ca3045c53677c5ca58c955d412f5744c102d`  
		Last Modified: Mon, 12 Oct 2026 17:03:08 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc8c27f0bed9aefa35ed2801bd4438b2f4435786feba40f5ac9d780f562d8aa7`  
		Last Modified: Mon, 12 Oct 2026 17:03:08 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fe4d3aa1d0369bb476a25b16f9a8dd66286ad1a9d14bee8573698fb86a28fb4`  
		Last Modified: Mon, 12 Oct 2026 17:03:09 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b4384ac39914900d3e2c58e3921fc1ad2cc773edc8105da26a6ee1158663cae`  
		Last Modified: Mon, 12 Oct 2026 17:03:10 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e72e57cf5fb7505b5ad6f264204fb96800225e1a33cdb5016224c8f534d2f3d`  
		Last Modified: Mon, 12 Oct 2026 17:03:10 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8.21.10` - unknown; unknown

```console
$ docker pull clickhouse@sha256:eebe5649d163bff83f39cc22534f96d4e3b3be8b9bdba5b5e8d12337ff3d2c8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 KB (27366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ca587eca80c8d4368797ee704359635ef76bda981e36ae3f28cee614ae51556`

```dockerfile
```

-	Layers:
	-	`sha256:07e1a4d3b7799395469fe95111304c8f29d867725956761fb0556a9a442c330f`  
		Last Modified: Mon, 12 Oct 2026 17:03:08 GMT  
		Size: 27.4 KB (27366 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.8.21.10` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:89c98a876fefc6dd5a1ee8ed298a46fa0ab93cf1a606f4ce96297991788f9287
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.6 MB (262614749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:353e2059a26ad3b4629635a4e8cdfc4760c54c743b386c05bf8134d54d3879fd`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:49 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:49 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:49 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:51 GMT
ADD file:58bfc1b17a1e2fc6a3ed29355c9baf1c70e13393e0632376cd7d67572c65ba25 in / 
# Thu, 24 Sep 2026 22:24:51 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 17:02:36 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 12 Oct 2026 17:02:36 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 12 Oct 2026 17:02:36 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 12 Oct 2026 17:02:36 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 12 Oct 2026 17:02:36 GMT
ARG REPO_CHANNEL=stable
# Mon, 12 Oct 2026 17:02:36 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 12 Oct 2026 17:02:36 GMT
ARG VERSION=26.8.21.10
# Mon, 12 Oct 2026 17:02:36 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 12 Oct 2026 17:03:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.21.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 12 Oct 2026 17:03:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.21.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 12 Oct 2026 17:03:18 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.21.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 12 Oct 2026 17:03:18 GMT
ENV LANG=en_US.UTF-8
# Mon, 12 Oct 2026 17:03:18 GMT
ENV TZ=UTC
# Mon, 12 Oct 2026 17:03:18 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.21.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 12 Oct 2026 17:03:18 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 12 Oct 2026 17:03:18 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 12 Oct 2026 17:03:18 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 12 Oct 2026 17:03:18 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 12 Oct 2026 17:03:18 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 12 Oct 2026 17:03:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3df44adbff22a7787c4a1bbbac33c389cc823d9aaffd0f07168574536b0024d3`  
		Last Modified: Mon, 12 Oct 2026 17:03:40 GMT  
		Size: 7.5 MB (7534145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:853b3a44f3f9ecca6d609e396f98f7d7edcf988c34cad6389b0aaf76b04a22d8`  
		Last Modified: Mon, 12 Oct 2026 17:03:45 GMT  
		Size: 226.5 MB (226526418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7901d3621b276e6807d3b2a6df442a9d53d38e987f11d95ee3ca42b56098f6a`  
		Last Modified: Mon, 12 Oct 2026 17:03:40 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2852d5b625a64acdf4c799fa6733cbb5654ee1364b1bfca419b6eeb03f3e3151`  
		Last Modified: Mon, 12 Oct 2026 17:03:40 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad6cc80472dd88cf5ec0d381f16e7c57d08d44fcaa61ad288ae7f307f5b1a60a`  
		Last Modified: Mon, 12 Oct 2026 17:03:41 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3103202bf7c9091daf54f09431408fc9d71c6d4aef4c24884adf89e696dfdff6`  
		Last Modified: Mon, 12 Oct 2026 17:03:41 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c46248d1dedddcd2a8894e7961f9d67a72d4d4aca50ce3e4d971270b994b062`  
		Last Modified: Mon, 12 Oct 2026 17:03:42 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8.21.10` - unknown; unknown

```console
$ docker pull clickhouse@sha256:c6dcdca05891a3e8b5c1d546c80aedb48dafbb634064c659bd265f5f7c561021
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 KB (27578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1187018d73876fe58e3aaa307e7a9f0b73ea36d081b17541297db64d14e49f2a`

```dockerfile
```

-	Layers:
	-	`sha256:5f56b35827ca3349edc5216bccd073841b2c63badb916e307ebee70e170c73e4`  
		Last Modified: Mon, 12 Oct 2026 17:03:40 GMT  
		Size: 27.6 KB (27578 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.8.21.10-jammy`

```console
$ docker pull clickhouse@sha256:77be6e71935b8957645adb34d80e68646b74c90cc260a69cb6150d7895cf2e19
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.8.21.10-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:acc2627d5025eab3efe0a21bbf0dcefcb88f7c17c907ff8ae9fda165b6487d54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.6 MB (279551313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a13a867bbd9b03e1a677abe927959cd341ac5749cf3cdbaf54f0a33f1dc35ff5`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:04 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:04 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:06 GMT
ADD file:b0bf3f64519bf10a51e00d4f8ab9c8693620659a0c4a4a5090a9765e754e1d1c in / 
# Thu, 24 Sep 2026 22:24:07 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 17:02:09 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 12 Oct 2026 17:02:09 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 12 Oct 2026 17:02:09 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 12 Oct 2026 17:02:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 12 Oct 2026 17:02:09 GMT
ARG REPO_CHANNEL=stable
# Mon, 12 Oct 2026 17:02:09 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 12 Oct 2026 17:02:09 GMT
ARG VERSION=26.8.21.10
# Mon, 12 Oct 2026 17:02:09 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 12 Oct 2026 17:02:40 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.21.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 12 Oct 2026 17:02:40 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.21.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 12 Oct 2026 17:02:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.21.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 12 Oct 2026 17:02:41 GMT
ENV LANG=en_US.UTF-8
# Mon, 12 Oct 2026 17:02:41 GMT
ENV TZ=UTC
# Mon, 12 Oct 2026 17:02:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.21.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 12 Oct 2026 17:02:42 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 12 Oct 2026 17:02:42 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 12 Oct 2026 17:02:42 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 12 Oct 2026 17:02:42 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 12 Oct 2026 17:02:42 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 12 Oct 2026 17:02:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e042fdfbb63f1b6d4f0ae11391cad49f25b964d7036de842f5af54e678103b10`  
		Last Modified: Mon, 12 Oct 2026 17:03:08 GMT  
		Size: 7.6 MB (7554221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8da25d9e30dbc24132066d9cf96868a7483148fc7ac01be48c26036d5ad26a1e`  
		Last Modified: Mon, 12 Oct 2026 17:03:13 GMT  
		Size: 241.4 MB (241375417 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b62d27ad2a2436c34fb7e209779ca3045c53677c5ca58c955d412f5744c102d`  
		Last Modified: Mon, 12 Oct 2026 17:03:08 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc8c27f0bed9aefa35ed2801bd4438b2f4435786feba40f5ac9d780f562d8aa7`  
		Last Modified: Mon, 12 Oct 2026 17:03:08 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fe4d3aa1d0369bb476a25b16f9a8dd66286ad1a9d14bee8573698fb86a28fb4`  
		Last Modified: Mon, 12 Oct 2026 17:03:09 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b4384ac39914900d3e2c58e3921fc1ad2cc773edc8105da26a6ee1158663cae`  
		Last Modified: Mon, 12 Oct 2026 17:03:10 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e72e57cf5fb7505b5ad6f264204fb96800225e1a33cdb5016224c8f534d2f3d`  
		Last Modified: Mon, 12 Oct 2026 17:03:10 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8.21.10-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:eebe5649d163bff83f39cc22534f96d4e3b3be8b9bdba5b5e8d12337ff3d2c8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 KB (27366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ca587eca80c8d4368797ee704359635ef76bda981e36ae3f28cee614ae51556`

```dockerfile
```

-	Layers:
	-	`sha256:07e1a4d3b7799395469fe95111304c8f29d867725956761fb0556a9a442c330f`  
		Last Modified: Mon, 12 Oct 2026 17:03:08 GMT  
		Size: 27.4 KB (27366 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.8.21.10-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:89c98a876fefc6dd5a1ee8ed298a46fa0ab93cf1a606f4ce96297991788f9287
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.6 MB (262614749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:353e2059a26ad3b4629635a4e8cdfc4760c54c743b386c05bf8134d54d3879fd`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:49 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:49 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:49 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:51 GMT
ADD file:58bfc1b17a1e2fc6a3ed29355c9baf1c70e13393e0632376cd7d67572c65ba25 in / 
# Thu, 24 Sep 2026 22:24:51 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 17:02:36 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 12 Oct 2026 17:02:36 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 12 Oct 2026 17:02:36 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 12 Oct 2026 17:02:36 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 12 Oct 2026 17:02:36 GMT
ARG REPO_CHANNEL=stable
# Mon, 12 Oct 2026 17:02:36 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 12 Oct 2026 17:02:36 GMT
ARG VERSION=26.8.21.10
# Mon, 12 Oct 2026 17:02:36 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 12 Oct 2026 17:03:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.21.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 12 Oct 2026 17:03:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.21.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 12 Oct 2026 17:03:18 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.21.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 12 Oct 2026 17:03:18 GMT
ENV LANG=en_US.UTF-8
# Mon, 12 Oct 2026 17:03:18 GMT
ENV TZ=UTC
# Mon, 12 Oct 2026 17:03:18 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.21.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 12 Oct 2026 17:03:18 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 12 Oct 2026 17:03:18 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 12 Oct 2026 17:03:18 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 12 Oct 2026 17:03:18 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 12 Oct 2026 17:03:18 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 12 Oct 2026 17:03:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3df44adbff22a7787c4a1bbbac33c389cc823d9aaffd0f07168574536b0024d3`  
		Last Modified: Mon, 12 Oct 2026 17:03:40 GMT  
		Size: 7.5 MB (7534145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:853b3a44f3f9ecca6d609e396f98f7d7edcf988c34cad6389b0aaf76b04a22d8`  
		Last Modified: Mon, 12 Oct 2026 17:03:45 GMT  
		Size: 226.5 MB (226526418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7901d3621b276e6807d3b2a6df442a9d53d38e987f11d95ee3ca42b56098f6a`  
		Last Modified: Mon, 12 Oct 2026 17:03:40 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2852d5b625a64acdf4c799fa6733cbb5654ee1364b1bfca419b6eeb03f3e3151`  
		Last Modified: Mon, 12 Oct 2026 17:03:40 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad6cc80472dd88cf5ec0d381f16e7c57d08d44fcaa61ad288ae7f307f5b1a60a`  
		Last Modified: Mon, 12 Oct 2026 17:03:41 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3103202bf7c9091daf54f09431408fc9d71c6d4aef4c24884adf89e696dfdff6`  
		Last Modified: Mon, 12 Oct 2026 17:03:41 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c46248d1dedddcd2a8894e7961f9d67a72d4d4aca50ce3e4d971270b994b062`  
		Last Modified: Mon, 12 Oct 2026 17:03:42 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8.21.10-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:c6dcdca05891a3e8b5c1d546c80aedb48dafbb634064c659bd265f5f7c561021
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 KB (27578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1187018d73876fe58e3aaa307e7a9f0b73ea36d081b17541297db64d14e49f2a`

```dockerfile
```

-	Layers:
	-	`sha256:5f56b35827ca3349edc5216bccd073841b2c63badb916e307ebee70e170c73e4`  
		Last Modified: Mon, 12 Oct 2026 17:03:40 GMT  
		Size: 27.6 KB (27578 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.9`

```console
$ docker pull clickhouse@sha256:0c3783f287d4b959c48b9a489dca90255700d986c938b1e59195a696a0cc8de0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.9` - linux; amd64

```console
$ docker pull clickhouse@sha256:2e3abd9e7074605ae653252b0bc42c011eb852d1e0110c42ac020df86633d110
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.2 MB (295178851 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7d5ccec3279ce1331744bc6249bfb518849a52d09cbddbe184ed59823b65b67`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:04 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:04 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:06 GMT
ADD file:b0bf3f64519bf10a51e00d4f8ab9c8693620659a0c4a4a5090a9765e754e1d1c in / 
# Thu, 24 Sep 2026 22:24:07 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 17:02:35 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 12 Oct 2026 17:02:35 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 12 Oct 2026 17:02:35 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 12 Oct 2026 17:02:35 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 12 Oct 2026 17:02:35 GMT
ARG REPO_CHANNEL=stable
# Mon, 12 Oct 2026 17:02:35 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 12 Oct 2026 17:02:35 GMT
ARG VERSION=26.9.13.15
# Mon, 12 Oct 2026 17:02:35 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 12 Oct 2026 17:03:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.13.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 12 Oct 2026 17:03:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.13.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 12 Oct 2026 17:03:06 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.13.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 12 Oct 2026 17:03:06 GMT
ENV LANG=en_US.UTF-8
# Mon, 12 Oct 2026 17:03:06 GMT
ENV TZ=UTC
# Mon, 12 Oct 2026 17:03:06 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.13.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 12 Oct 2026 17:03:06 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 12 Oct 2026 17:03:06 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 12 Oct 2026 17:03:06 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 12 Oct 2026 17:03:06 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 12 Oct 2026 17:03:06 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 12 Oct 2026 17:03:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dee44ed0fb84bf09b9f5e83d3d16ecee82a41217c49cd170fbd1205c2d9c283b`  
		Last Modified: Mon, 12 Oct 2026 17:03:32 GMT  
		Size: 7.6 MB (7554239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af9dfa6f5acd9b5f355ae574a01e0046296ae742b239951ca3491872797a4cbb`  
		Last Modified: Mon, 12 Oct 2026 17:03:37 GMT  
		Size: 257.0 MB (257002665 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e52b7e93c64696814de3f522ce429dcde61e833b35c04c00acc3305f58255690`  
		Last Modified: Mon, 12 Oct 2026 17:03:32 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5856e742a26db5d96d208df9b99630719daead7b346087efb8b5799a44879f0`  
		Last Modified: Mon, 12 Oct 2026 17:03:32 GMT  
		Size: 865.8 KB (865752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:265a02db28505703dcc90b8f548547ce810a2331ecb8b901b3cfaf3bb7af55db`  
		Last Modified: Mon, 12 Oct 2026 17:03:33 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bf9c2ef3d4a51f8b1006c9024008b70e287673a8fbdb468b3b67e01915a9b82`  
		Last Modified: Mon, 12 Oct 2026 17:03:33 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60a8f76c796ab78225ee3ef38c5ade539f3af76f9f4a7ce158ed9a326b620783`  
		Last Modified: Mon, 12 Oct 2026 17:03:34 GMT  
		Size: 3.9 KB (3904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9` - unknown; unknown

```console
$ docker pull clickhouse@sha256:407ef7316a723bddd5627fe2c58aa10ce5bc46d07140894ae376114d65d93830
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 KB (27796 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:161f2b186c1fd61aca85266ba6825995a3d5c7a0beac6f441f8a6bb8f3ccc097`

```dockerfile
```

-	Layers:
	-	`sha256:46913ac6e252bfb73e531f2882e4c174daa762fe50db21d37c9fcf7655840225`  
		Last Modified: Mon, 12 Oct 2026 17:03:32 GMT  
		Size: 27.8 KB (27796 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.9` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:fb640e28d3888d4b5e7b1938b2c0858e53f030ff2cbe467ceb42a1f79efcfa1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.5 MB (272477352 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cca33d885e68e0a2fdf66fbd8cd8be5e9e35e532ee80b1e9834c5a5ae4d0e86f`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:49 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:49 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:49 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:51 GMT
ADD file:58bfc1b17a1e2fc6a3ed29355c9baf1c70e13393e0632376cd7d67572c65ba25 in / 
# Thu, 24 Sep 2026 22:24:51 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 17:02:01 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 12 Oct 2026 17:02:01 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 12 Oct 2026 17:02:01 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 12 Oct 2026 17:02:01 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 12 Oct 2026 17:02:01 GMT
ARG REPO_CHANNEL=stable
# Mon, 12 Oct 2026 17:02:01 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 12 Oct 2026 17:02:01 GMT
ARG VERSION=26.9.13.15
# Mon, 12 Oct 2026 17:02:01 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 12 Oct 2026 17:02:38 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.13.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 12 Oct 2026 17:02:38 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.13.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 12 Oct 2026 17:02:39 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.13.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 12 Oct 2026 17:02:39 GMT
ENV LANG=en_US.UTF-8
# Mon, 12 Oct 2026 17:02:39 GMT
ENV TZ=UTC
# Mon, 12 Oct 2026 17:02:39 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.13.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 12 Oct 2026 17:02:39 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 12 Oct 2026 17:02:39 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 12 Oct 2026 17:02:39 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 12 Oct 2026 17:02:39 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 12 Oct 2026 17:02:39 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 12 Oct 2026 17:02:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f758a77578b00eb76cbe833788b6bfb552d7007f6b8b4ade7e53e5d3e565e632`  
		Last Modified: Mon, 12 Oct 2026 17:03:02 GMT  
		Size: 7.5 MB (7534132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dc09cee16b288a87878636e00a4ceed08231c5ab39b9fb0b6575352716215fb`  
		Last Modified: Mon, 12 Oct 2026 17:03:07 GMT  
		Size: 236.4 MB (236388775 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0d6b4ed6afa9693ab0b2f23358c2b73949fef526c1d821d1ec03c63fa751c23`  
		Last Modified: Mon, 12 Oct 2026 17:03:02 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:666e8f8293dee96bcf3c594f7ee6afdb7cee0c4f4fe9f9bc4ccd5859cf471cd3`  
		Last Modified: Mon, 12 Oct 2026 17:03:02 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13d9a17513880a830ac17891bb41f872f195cc9e1f4ef695610ab8a1e05a101d`  
		Last Modified: Mon, 12 Oct 2026 17:03:03 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9a59dda667c5fcbfa9512c3ada726eeece3ca19c6eb67a3b84144319bf4b7d4`  
		Last Modified: Mon, 12 Oct 2026 17:03:03 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3813b29a4c90e70d2104a3556c7aeb3537ecb2a4cf10b175d10fa1825be83595`  
		Last Modified: Mon, 12 Oct 2026 17:03:04 GMT  
		Size: 3.9 KB (3899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9` - unknown; unknown

```console
$ docker pull clickhouse@sha256:a59104b9267427846ea0500ad8f829657184471e62370ca5c5c84b6180788dc0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.0 KB (28008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8e3784a6ea7b0722824168c789d489a837c56ce6aceb2cdf6bd6fddfdadea1f`

```dockerfile
```

-	Layers:
	-	`sha256:0a1b31f1ee795d13976eb5a33a185a58e12c88f05aa517a083660fe11649c972`  
		Last Modified: Mon, 12 Oct 2026 17:03:02 GMT  
		Size: 28.0 KB (28008 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.9-jammy`

```console
$ docker pull clickhouse@sha256:0c3783f287d4b959c48b9a489dca90255700d986c938b1e59195a696a0cc8de0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.9-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:2e3abd9e7074605ae653252b0bc42c011eb852d1e0110c42ac020df86633d110
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.2 MB (295178851 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7d5ccec3279ce1331744bc6249bfb518849a52d09cbddbe184ed59823b65b67`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:04 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:04 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:06 GMT
ADD file:b0bf3f64519bf10a51e00d4f8ab9c8693620659a0c4a4a5090a9765e754e1d1c in / 
# Thu, 24 Sep 2026 22:24:07 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 17:02:35 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 12 Oct 2026 17:02:35 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 12 Oct 2026 17:02:35 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 12 Oct 2026 17:02:35 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 12 Oct 2026 17:02:35 GMT
ARG REPO_CHANNEL=stable
# Mon, 12 Oct 2026 17:02:35 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 12 Oct 2026 17:02:35 GMT
ARG VERSION=26.9.13.15
# Mon, 12 Oct 2026 17:02:35 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 12 Oct 2026 17:03:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.13.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 12 Oct 2026 17:03:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.13.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 12 Oct 2026 17:03:06 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.13.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 12 Oct 2026 17:03:06 GMT
ENV LANG=en_US.UTF-8
# Mon, 12 Oct 2026 17:03:06 GMT
ENV TZ=UTC
# Mon, 12 Oct 2026 17:03:06 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.13.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 12 Oct 2026 17:03:06 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 12 Oct 2026 17:03:06 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 12 Oct 2026 17:03:06 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 12 Oct 2026 17:03:06 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 12 Oct 2026 17:03:06 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 12 Oct 2026 17:03:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dee44ed0fb84bf09b9f5e83d3d16ecee82a41217c49cd170fbd1205c2d9c283b`  
		Last Modified: Mon, 12 Oct 2026 17:03:32 GMT  
		Size: 7.6 MB (7554239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af9dfa6f5acd9b5f355ae574a01e0046296ae742b239951ca3491872797a4cbb`  
		Last Modified: Mon, 12 Oct 2026 17:03:37 GMT  
		Size: 257.0 MB (257002665 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e52b7e93c64696814de3f522ce429dcde61e833b35c04c00acc3305f58255690`  
		Last Modified: Mon, 12 Oct 2026 17:03:32 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5856e742a26db5d96d208df9b99630719daead7b346087efb8b5799a44879f0`  
		Last Modified: Mon, 12 Oct 2026 17:03:32 GMT  
		Size: 865.8 KB (865752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:265a02db28505703dcc90b8f548547ce810a2331ecb8b901b3cfaf3bb7af55db`  
		Last Modified: Mon, 12 Oct 2026 17:03:33 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bf9c2ef3d4a51f8b1006c9024008b70e287673a8fbdb468b3b67e01915a9b82`  
		Last Modified: Mon, 12 Oct 2026 17:03:33 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60a8f76c796ab78225ee3ef38c5ade539f3af76f9f4a7ce158ed9a326b620783`  
		Last Modified: Mon, 12 Oct 2026 17:03:34 GMT  
		Size: 3.9 KB (3904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:407ef7316a723bddd5627fe2c58aa10ce5bc46d07140894ae376114d65d93830
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 KB (27796 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:161f2b186c1fd61aca85266ba6825995a3d5c7a0beac6f441f8a6bb8f3ccc097`

```dockerfile
```

-	Layers:
	-	`sha256:46913ac6e252bfb73e531f2882e4c174daa762fe50db21d37c9fcf7655840225`  
		Last Modified: Mon, 12 Oct 2026 17:03:32 GMT  
		Size: 27.8 KB (27796 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.9-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:fb640e28d3888d4b5e7b1938b2c0858e53f030ff2cbe467ceb42a1f79efcfa1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.5 MB (272477352 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cca33d885e68e0a2fdf66fbd8cd8be5e9e35e532ee80b1e9834c5a5ae4d0e86f`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:49 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:49 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:49 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:51 GMT
ADD file:58bfc1b17a1e2fc6a3ed29355c9baf1c70e13393e0632376cd7d67572c65ba25 in / 
# Thu, 24 Sep 2026 22:24:51 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 17:02:01 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 12 Oct 2026 17:02:01 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 12 Oct 2026 17:02:01 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 12 Oct 2026 17:02:01 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 12 Oct 2026 17:02:01 GMT
ARG REPO_CHANNEL=stable
# Mon, 12 Oct 2026 17:02:01 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 12 Oct 2026 17:02:01 GMT
ARG VERSION=26.9.13.15
# Mon, 12 Oct 2026 17:02:01 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 12 Oct 2026 17:02:38 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.13.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 12 Oct 2026 17:02:38 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.13.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 12 Oct 2026 17:02:39 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.13.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 12 Oct 2026 17:02:39 GMT
ENV LANG=en_US.UTF-8
# Mon, 12 Oct 2026 17:02:39 GMT
ENV TZ=UTC
# Mon, 12 Oct 2026 17:02:39 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.13.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 12 Oct 2026 17:02:39 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 12 Oct 2026 17:02:39 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 12 Oct 2026 17:02:39 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 12 Oct 2026 17:02:39 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 12 Oct 2026 17:02:39 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 12 Oct 2026 17:02:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f758a77578b00eb76cbe833788b6bfb552d7007f6b8b4ade7e53e5d3e565e632`  
		Last Modified: Mon, 12 Oct 2026 17:03:02 GMT  
		Size: 7.5 MB (7534132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dc09cee16b288a87878636e00a4ceed08231c5ab39b9fb0b6575352716215fb`  
		Last Modified: Mon, 12 Oct 2026 17:03:07 GMT  
		Size: 236.4 MB (236388775 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0d6b4ed6afa9693ab0b2f23358c2b73949fef526c1d821d1ec03c63fa751c23`  
		Last Modified: Mon, 12 Oct 2026 17:03:02 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:666e8f8293dee96bcf3c594f7ee6afdb7cee0c4f4fe9f9bc4ccd5859cf471cd3`  
		Last Modified: Mon, 12 Oct 2026 17:03:02 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13d9a17513880a830ac17891bb41f872f195cc9e1f4ef695610ab8a1e05a101d`  
		Last Modified: Mon, 12 Oct 2026 17:03:03 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9a59dda667c5fcbfa9512c3ada726eeece3ca19c6eb67a3b84144319bf4b7d4`  
		Last Modified: Mon, 12 Oct 2026 17:03:03 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3813b29a4c90e70d2104a3556c7aeb3537ecb2a4cf10b175d10fa1825be83595`  
		Last Modified: Mon, 12 Oct 2026 17:03:04 GMT  
		Size: 3.9 KB (3899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:a59104b9267427846ea0500ad8f829657184471e62370ca5c5c84b6180788dc0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.0 KB (28008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8e3784a6ea7b0722824168c789d489a837c56ce6aceb2cdf6bd6fddfdadea1f`

```dockerfile
```

-	Layers:
	-	`sha256:0a1b31f1ee795d13976eb5a33a185a58e12c88f05aa517a083660fe11649c972`  
		Last Modified: Mon, 12 Oct 2026 17:03:02 GMT  
		Size: 28.0 KB (28008 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.9.13`

```console
$ docker pull clickhouse@sha256:0c3783f287d4b959c48b9a489dca90255700d986c938b1e59195a696a0cc8de0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.9.13` - linux; amd64

```console
$ docker pull clickhouse@sha256:2e3abd9e7074605ae653252b0bc42c011eb852d1e0110c42ac020df86633d110
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.2 MB (295178851 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7d5ccec3279ce1331744bc6249bfb518849a52d09cbddbe184ed59823b65b67`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:04 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:04 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:06 GMT
ADD file:b0bf3f64519bf10a51e00d4f8ab9c8693620659a0c4a4a5090a9765e754e1d1c in / 
# Thu, 24 Sep 2026 22:24:07 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 17:02:35 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 12 Oct 2026 17:02:35 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 12 Oct 2026 17:02:35 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 12 Oct 2026 17:02:35 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 12 Oct 2026 17:02:35 GMT
ARG REPO_CHANNEL=stable
# Mon, 12 Oct 2026 17:02:35 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 12 Oct 2026 17:02:35 GMT
ARG VERSION=26.9.13.15
# Mon, 12 Oct 2026 17:02:35 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 12 Oct 2026 17:03:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.13.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 12 Oct 2026 17:03:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.13.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 12 Oct 2026 17:03:06 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.13.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 12 Oct 2026 17:03:06 GMT
ENV LANG=en_US.UTF-8
# Mon, 12 Oct 2026 17:03:06 GMT
ENV TZ=UTC
# Mon, 12 Oct 2026 17:03:06 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.13.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 12 Oct 2026 17:03:06 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 12 Oct 2026 17:03:06 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 12 Oct 2026 17:03:06 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 12 Oct 2026 17:03:06 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 12 Oct 2026 17:03:06 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 12 Oct 2026 17:03:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dee44ed0fb84bf09b9f5e83d3d16ecee82a41217c49cd170fbd1205c2d9c283b`  
		Last Modified: Mon, 12 Oct 2026 17:03:32 GMT  
		Size: 7.6 MB (7554239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af9dfa6f5acd9b5f355ae574a01e0046296ae742b239951ca3491872797a4cbb`  
		Last Modified: Mon, 12 Oct 2026 17:03:37 GMT  
		Size: 257.0 MB (257002665 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e52b7e93c64696814de3f522ce429dcde61e833b35c04c00acc3305f58255690`  
		Last Modified: Mon, 12 Oct 2026 17:03:32 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5856e742a26db5d96d208df9b99630719daead7b346087efb8b5799a44879f0`  
		Last Modified: Mon, 12 Oct 2026 17:03:32 GMT  
		Size: 865.8 KB (865752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:265a02db28505703dcc90b8f548547ce810a2331ecb8b901b3cfaf3bb7af55db`  
		Last Modified: Mon, 12 Oct 2026 17:03:33 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bf9c2ef3d4a51f8b1006c9024008b70e287673a8fbdb468b3b67e01915a9b82`  
		Last Modified: Mon, 12 Oct 2026 17:03:33 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60a8f76c796ab78225ee3ef38c5ade539f3af76f9f4a7ce158ed9a326b620783`  
		Last Modified: Mon, 12 Oct 2026 17:03:34 GMT  
		Size: 3.9 KB (3904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9.13` - unknown; unknown

```console
$ docker pull clickhouse@sha256:407ef7316a723bddd5627fe2c58aa10ce5bc46d07140894ae376114d65d93830
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 KB (27796 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:161f2b186c1fd61aca85266ba6825995a3d5c7a0beac6f441f8a6bb8f3ccc097`

```dockerfile
```

-	Layers:
	-	`sha256:46913ac6e252bfb73e531f2882e4c174daa762fe50db21d37c9fcf7655840225`  
		Last Modified: Mon, 12 Oct 2026 17:03:32 GMT  
		Size: 27.8 KB (27796 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.9.13` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:fb640e28d3888d4b5e7b1938b2c0858e53f030ff2cbe467ceb42a1f79efcfa1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.5 MB (272477352 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cca33d885e68e0a2fdf66fbd8cd8be5e9e35e532ee80b1e9834c5a5ae4d0e86f`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:49 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:49 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:49 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:51 GMT
ADD file:58bfc1b17a1e2fc6a3ed29355c9baf1c70e13393e0632376cd7d67572c65ba25 in / 
# Thu, 24 Sep 2026 22:24:51 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 17:02:01 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 12 Oct 2026 17:02:01 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 12 Oct 2026 17:02:01 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 12 Oct 2026 17:02:01 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 12 Oct 2026 17:02:01 GMT
ARG REPO_CHANNEL=stable
# Mon, 12 Oct 2026 17:02:01 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 12 Oct 2026 17:02:01 GMT
ARG VERSION=26.9.13.15
# Mon, 12 Oct 2026 17:02:01 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 12 Oct 2026 17:02:38 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.13.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 12 Oct 2026 17:02:38 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.13.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 12 Oct 2026 17:02:39 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.13.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 12 Oct 2026 17:02:39 GMT
ENV LANG=en_US.UTF-8
# Mon, 12 Oct 2026 17:02:39 GMT
ENV TZ=UTC
# Mon, 12 Oct 2026 17:02:39 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.13.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 12 Oct 2026 17:02:39 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 12 Oct 2026 17:02:39 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 12 Oct 2026 17:02:39 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 12 Oct 2026 17:02:39 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 12 Oct 2026 17:02:39 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 12 Oct 2026 17:02:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f758a77578b00eb76cbe833788b6bfb552d7007f6b8b4ade7e53e5d3e565e632`  
		Last Modified: Mon, 12 Oct 2026 17:03:02 GMT  
		Size: 7.5 MB (7534132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dc09cee16b288a87878636e00a4ceed08231c5ab39b9fb0b6575352716215fb`  
		Last Modified: Mon, 12 Oct 2026 17:03:07 GMT  
		Size: 236.4 MB (236388775 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0d6b4ed6afa9693ab0b2f23358c2b73949fef526c1d821d1ec03c63fa751c23`  
		Last Modified: Mon, 12 Oct 2026 17:03:02 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:666e8f8293dee96bcf3c594f7ee6afdb7cee0c4f4fe9f9bc4ccd5859cf471cd3`  
		Last Modified: Mon, 12 Oct 2026 17:03:02 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13d9a17513880a830ac17891bb41f872f195cc9e1f4ef695610ab8a1e05a101d`  
		Last Modified: Mon, 12 Oct 2026 17:03:03 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9a59dda667c5fcbfa9512c3ada726eeece3ca19c6eb67a3b84144319bf4b7d4`  
		Last Modified: Mon, 12 Oct 2026 17:03:03 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3813b29a4c90e70d2104a3556c7aeb3537ecb2a4cf10b175d10fa1825be83595`  
		Last Modified: Mon, 12 Oct 2026 17:03:04 GMT  
		Size: 3.9 KB (3899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9.13` - unknown; unknown

```console
$ docker pull clickhouse@sha256:a59104b9267427846ea0500ad8f829657184471e62370ca5c5c84b6180788dc0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.0 KB (28008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8e3784a6ea7b0722824168c789d489a837c56ce6aceb2cdf6bd6fddfdadea1f`

```dockerfile
```

-	Layers:
	-	`sha256:0a1b31f1ee795d13976eb5a33a185a58e12c88f05aa517a083660fe11649c972`  
		Last Modified: Mon, 12 Oct 2026 17:03:02 GMT  
		Size: 28.0 KB (28008 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.9.13-jammy`

```console
$ docker pull clickhouse@sha256:0c3783f287d4b959c48b9a489dca90255700d986c938b1e59195a696a0cc8de0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.9.13-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:2e3abd9e7074605ae653252b0bc42c011eb852d1e0110c42ac020df86633d110
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.2 MB (295178851 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7d5ccec3279ce1331744bc6249bfb518849a52d09cbddbe184ed59823b65b67`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:04 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:04 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:06 GMT
ADD file:b0bf3f64519bf10a51e00d4f8ab9c8693620659a0c4a4a5090a9765e754e1d1c in / 
# Thu, 24 Sep 2026 22:24:07 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 17:02:35 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 12 Oct 2026 17:02:35 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 12 Oct 2026 17:02:35 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 12 Oct 2026 17:02:35 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 12 Oct 2026 17:02:35 GMT
ARG REPO_CHANNEL=stable
# Mon, 12 Oct 2026 17:02:35 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 12 Oct 2026 17:02:35 GMT
ARG VERSION=26.9.13.15
# Mon, 12 Oct 2026 17:02:35 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 12 Oct 2026 17:03:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.13.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 12 Oct 2026 17:03:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.13.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 12 Oct 2026 17:03:06 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.13.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 12 Oct 2026 17:03:06 GMT
ENV LANG=en_US.UTF-8
# Mon, 12 Oct 2026 17:03:06 GMT
ENV TZ=UTC
# Mon, 12 Oct 2026 17:03:06 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.13.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 12 Oct 2026 17:03:06 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 12 Oct 2026 17:03:06 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 12 Oct 2026 17:03:06 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 12 Oct 2026 17:03:06 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 12 Oct 2026 17:03:06 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 12 Oct 2026 17:03:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dee44ed0fb84bf09b9f5e83d3d16ecee82a41217c49cd170fbd1205c2d9c283b`  
		Last Modified: Mon, 12 Oct 2026 17:03:32 GMT  
		Size: 7.6 MB (7554239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af9dfa6f5acd9b5f355ae574a01e0046296ae742b239951ca3491872797a4cbb`  
		Last Modified: Mon, 12 Oct 2026 17:03:37 GMT  
		Size: 257.0 MB (257002665 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e52b7e93c64696814de3f522ce429dcde61e833b35c04c00acc3305f58255690`  
		Last Modified: Mon, 12 Oct 2026 17:03:32 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5856e742a26db5d96d208df9b99630719daead7b346087efb8b5799a44879f0`  
		Last Modified: Mon, 12 Oct 2026 17:03:32 GMT  
		Size: 865.8 KB (865752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:265a02db28505703dcc90b8f548547ce810a2331ecb8b901b3cfaf3bb7af55db`  
		Last Modified: Mon, 12 Oct 2026 17:03:33 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bf9c2ef3d4a51f8b1006c9024008b70e287673a8fbdb468b3b67e01915a9b82`  
		Last Modified: Mon, 12 Oct 2026 17:03:33 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60a8f76c796ab78225ee3ef38c5ade539f3af76f9f4a7ce158ed9a326b620783`  
		Last Modified: Mon, 12 Oct 2026 17:03:34 GMT  
		Size: 3.9 KB (3904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9.13-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:407ef7316a723bddd5627fe2c58aa10ce5bc46d07140894ae376114d65d93830
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 KB (27796 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:161f2b186c1fd61aca85266ba6825995a3d5c7a0beac6f441f8a6bb8f3ccc097`

```dockerfile
```

-	Layers:
	-	`sha256:46913ac6e252bfb73e531f2882e4c174daa762fe50db21d37c9fcf7655840225`  
		Last Modified: Mon, 12 Oct 2026 17:03:32 GMT  
		Size: 27.8 KB (27796 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.9.13-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:fb640e28d3888d4b5e7b1938b2c0858e53f030ff2cbe467ceb42a1f79efcfa1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.5 MB (272477352 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cca33d885e68e0a2fdf66fbd8cd8be5e9e35e532ee80b1e9834c5a5ae4d0e86f`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:49 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:49 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:49 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:51 GMT
ADD file:58bfc1b17a1e2fc6a3ed29355c9baf1c70e13393e0632376cd7d67572c65ba25 in / 
# Thu, 24 Sep 2026 22:24:51 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 17:02:01 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 12 Oct 2026 17:02:01 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 12 Oct 2026 17:02:01 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 12 Oct 2026 17:02:01 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 12 Oct 2026 17:02:01 GMT
ARG REPO_CHANNEL=stable
# Mon, 12 Oct 2026 17:02:01 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 12 Oct 2026 17:02:01 GMT
ARG VERSION=26.9.13.15
# Mon, 12 Oct 2026 17:02:01 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 12 Oct 2026 17:02:38 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.13.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 12 Oct 2026 17:02:38 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.13.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 12 Oct 2026 17:02:39 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.13.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 12 Oct 2026 17:02:39 GMT
ENV LANG=en_US.UTF-8
# Mon, 12 Oct 2026 17:02:39 GMT
ENV TZ=UTC
# Mon, 12 Oct 2026 17:02:39 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.13.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 12 Oct 2026 17:02:39 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 12 Oct 2026 17:02:39 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 12 Oct 2026 17:02:39 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 12 Oct 2026 17:02:39 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 12 Oct 2026 17:02:39 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 12 Oct 2026 17:02:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f758a77578b00eb76cbe833788b6bfb552d7007f6b8b4ade7e53e5d3e565e632`  
		Last Modified: Mon, 12 Oct 2026 17:03:02 GMT  
		Size: 7.5 MB (7534132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dc09cee16b288a87878636e00a4ceed08231c5ab39b9fb0b6575352716215fb`  
		Last Modified: Mon, 12 Oct 2026 17:03:07 GMT  
		Size: 236.4 MB (236388775 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0d6b4ed6afa9693ab0b2f23358c2b73949fef526c1d821d1ec03c63fa751c23`  
		Last Modified: Mon, 12 Oct 2026 17:03:02 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:666e8f8293dee96bcf3c594f7ee6afdb7cee0c4f4fe9f9bc4ccd5859cf471cd3`  
		Last Modified: Mon, 12 Oct 2026 17:03:02 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13d9a17513880a830ac17891bb41f872f195cc9e1f4ef695610ab8a1e05a101d`  
		Last Modified: Mon, 12 Oct 2026 17:03:03 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9a59dda667c5fcbfa9512c3ada726eeece3ca19c6eb67a3b84144319bf4b7d4`  
		Last Modified: Mon, 12 Oct 2026 17:03:03 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3813b29a4c90e70d2104a3556c7aeb3537ecb2a4cf10b175d10fa1825be83595`  
		Last Modified: Mon, 12 Oct 2026 17:03:04 GMT  
		Size: 3.9 KB (3899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9.13-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:a59104b9267427846ea0500ad8f829657184471e62370ca5c5c84b6180788dc0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.0 KB (28008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8e3784a6ea7b0722824168c789d489a837c56ce6aceb2cdf6bd6fddfdadea1f`

```dockerfile
```

-	Layers:
	-	`sha256:0a1b31f1ee795d13976eb5a33a185a58e12c88f05aa517a083660fe11649c972`  
		Last Modified: Mon, 12 Oct 2026 17:03:02 GMT  
		Size: 28.0 KB (28008 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.9.13.15`

```console
$ docker pull clickhouse@sha256:0c3783f287d4b959c48b9a489dca90255700d986c938b1e59195a696a0cc8de0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.9.13.15` - linux; amd64

```console
$ docker pull clickhouse@sha256:2e3abd9e7074605ae653252b0bc42c011eb852d1e0110c42ac020df86633d110
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.2 MB (295178851 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7d5ccec3279ce1331744bc6249bfb518849a52d09cbddbe184ed59823b65b67`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:04 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:04 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:06 GMT
ADD file:b0bf3f64519bf10a51e00d4f8ab9c8693620659a0c4a4a5090a9765e754e1d1c in / 
# Thu, 24 Sep 2026 22:24:07 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 17:02:35 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 12 Oct 2026 17:02:35 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 12 Oct 2026 17:02:35 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 12 Oct 2026 17:02:35 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 12 Oct 2026 17:02:35 GMT
ARG REPO_CHANNEL=stable
# Mon, 12 Oct 2026 17:02:35 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 12 Oct 2026 17:02:35 GMT
ARG VERSION=26.9.13.15
# Mon, 12 Oct 2026 17:02:35 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 12 Oct 2026 17:03:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.13.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 12 Oct 2026 17:03:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.13.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 12 Oct 2026 17:03:06 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.13.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 12 Oct 2026 17:03:06 GMT
ENV LANG=en_US.UTF-8
# Mon, 12 Oct 2026 17:03:06 GMT
ENV TZ=UTC
# Mon, 12 Oct 2026 17:03:06 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.13.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 12 Oct 2026 17:03:06 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 12 Oct 2026 17:03:06 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 12 Oct 2026 17:03:06 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 12 Oct 2026 17:03:06 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 12 Oct 2026 17:03:06 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 12 Oct 2026 17:03:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dee44ed0fb84bf09b9f5e83d3d16ecee82a41217c49cd170fbd1205c2d9c283b`  
		Last Modified: Mon, 12 Oct 2026 17:03:32 GMT  
		Size: 7.6 MB (7554239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af9dfa6f5acd9b5f355ae574a01e0046296ae742b239951ca3491872797a4cbb`  
		Last Modified: Mon, 12 Oct 2026 17:03:37 GMT  
		Size: 257.0 MB (257002665 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e52b7e93c64696814de3f522ce429dcde61e833b35c04c00acc3305f58255690`  
		Last Modified: Mon, 12 Oct 2026 17:03:32 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5856e742a26db5d96d208df9b99630719daead7b346087efb8b5799a44879f0`  
		Last Modified: Mon, 12 Oct 2026 17:03:32 GMT  
		Size: 865.8 KB (865752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:265a02db28505703dcc90b8f548547ce810a2331ecb8b901b3cfaf3bb7af55db`  
		Last Modified: Mon, 12 Oct 2026 17:03:33 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bf9c2ef3d4a51f8b1006c9024008b70e287673a8fbdb468b3b67e01915a9b82`  
		Last Modified: Mon, 12 Oct 2026 17:03:33 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60a8f76c796ab78225ee3ef38c5ade539f3af76f9f4a7ce158ed9a326b620783`  
		Last Modified: Mon, 12 Oct 2026 17:03:34 GMT  
		Size: 3.9 KB (3904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9.13.15` - unknown; unknown

```console
$ docker pull clickhouse@sha256:407ef7316a723bddd5627fe2c58aa10ce5bc46d07140894ae376114d65d93830
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 KB (27796 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:161f2b186c1fd61aca85266ba6825995a3d5c7a0beac6f441f8a6bb8f3ccc097`

```dockerfile
```

-	Layers:
	-	`sha256:46913ac6e252bfb73e531f2882e4c174daa762fe50db21d37c9fcf7655840225`  
		Last Modified: Mon, 12 Oct 2026 17:03:32 GMT  
		Size: 27.8 KB (27796 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.9.13.15` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:fb640e28d3888d4b5e7b1938b2c0858e53f030ff2cbe467ceb42a1f79efcfa1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.5 MB (272477352 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cca33d885e68e0a2fdf66fbd8cd8be5e9e35e532ee80b1e9834c5a5ae4d0e86f`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:49 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:49 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:49 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:51 GMT
ADD file:58bfc1b17a1e2fc6a3ed29355c9baf1c70e13393e0632376cd7d67572c65ba25 in / 
# Thu, 24 Sep 2026 22:24:51 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 17:02:01 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 12 Oct 2026 17:02:01 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 12 Oct 2026 17:02:01 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 12 Oct 2026 17:02:01 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 12 Oct 2026 17:02:01 GMT
ARG REPO_CHANNEL=stable
# Mon, 12 Oct 2026 17:02:01 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 12 Oct 2026 17:02:01 GMT
ARG VERSION=26.9.13.15
# Mon, 12 Oct 2026 17:02:01 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 12 Oct 2026 17:02:38 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.13.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 12 Oct 2026 17:02:38 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.13.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 12 Oct 2026 17:02:39 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.13.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 12 Oct 2026 17:02:39 GMT
ENV LANG=en_US.UTF-8
# Mon, 12 Oct 2026 17:02:39 GMT
ENV TZ=UTC
# Mon, 12 Oct 2026 17:02:39 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.13.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 12 Oct 2026 17:02:39 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 12 Oct 2026 17:02:39 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 12 Oct 2026 17:02:39 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 12 Oct 2026 17:02:39 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 12 Oct 2026 17:02:39 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 12 Oct 2026 17:02:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f758a77578b00eb76cbe833788b6bfb552d7007f6b8b4ade7e53e5d3e565e632`  
		Last Modified: Mon, 12 Oct 2026 17:03:02 GMT  
		Size: 7.5 MB (7534132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dc09cee16b288a87878636e00a4ceed08231c5ab39b9fb0b6575352716215fb`  
		Last Modified: Mon, 12 Oct 2026 17:03:07 GMT  
		Size: 236.4 MB (236388775 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0d6b4ed6afa9693ab0b2f23358c2b73949fef526c1d821d1ec03c63fa751c23`  
		Last Modified: Mon, 12 Oct 2026 17:03:02 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:666e8f8293dee96bcf3c594f7ee6afdb7cee0c4f4fe9f9bc4ccd5859cf471cd3`  
		Last Modified: Mon, 12 Oct 2026 17:03:02 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13d9a17513880a830ac17891bb41f872f195cc9e1f4ef695610ab8a1e05a101d`  
		Last Modified: Mon, 12 Oct 2026 17:03:03 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9a59dda667c5fcbfa9512c3ada726eeece3ca19c6eb67a3b84144319bf4b7d4`  
		Last Modified: Mon, 12 Oct 2026 17:03:03 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3813b29a4c90e70d2104a3556c7aeb3537ecb2a4cf10b175d10fa1825be83595`  
		Last Modified: Mon, 12 Oct 2026 17:03:04 GMT  
		Size: 3.9 KB (3899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9.13.15` - unknown; unknown

```console
$ docker pull clickhouse@sha256:a59104b9267427846ea0500ad8f829657184471e62370ca5c5c84b6180788dc0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.0 KB (28008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8e3784a6ea7b0722824168c789d489a837c56ce6aceb2cdf6bd6fddfdadea1f`

```dockerfile
```

-	Layers:
	-	`sha256:0a1b31f1ee795d13976eb5a33a185a58e12c88f05aa517a083660fe11649c972`  
		Last Modified: Mon, 12 Oct 2026 17:03:02 GMT  
		Size: 28.0 KB (28008 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.9.13.15-jammy`

```console
$ docker pull clickhouse@sha256:0c3783f287d4b959c48b9a489dca90255700d986c938b1e59195a696a0cc8de0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.9.13.15-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:2e3abd9e7074605ae653252b0bc42c011eb852d1e0110c42ac020df86633d110
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.2 MB (295178851 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7d5ccec3279ce1331744bc6249bfb518849a52d09cbddbe184ed59823b65b67`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:04 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:04 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:06 GMT
ADD file:b0bf3f64519bf10a51e00d4f8ab9c8693620659a0c4a4a5090a9765e754e1d1c in / 
# Thu, 24 Sep 2026 22:24:07 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 17:02:35 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 12 Oct 2026 17:02:35 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 12 Oct 2026 17:02:35 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 12 Oct 2026 17:02:35 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 12 Oct 2026 17:02:35 GMT
ARG REPO_CHANNEL=stable
# Mon, 12 Oct 2026 17:02:35 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 12 Oct 2026 17:02:35 GMT
ARG VERSION=26.9.13.15
# Mon, 12 Oct 2026 17:02:35 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 12 Oct 2026 17:03:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.13.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 12 Oct 2026 17:03:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.13.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 12 Oct 2026 17:03:06 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.13.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 12 Oct 2026 17:03:06 GMT
ENV LANG=en_US.UTF-8
# Mon, 12 Oct 2026 17:03:06 GMT
ENV TZ=UTC
# Mon, 12 Oct 2026 17:03:06 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.13.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 12 Oct 2026 17:03:06 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 12 Oct 2026 17:03:06 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 12 Oct 2026 17:03:06 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 12 Oct 2026 17:03:06 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 12 Oct 2026 17:03:06 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 12 Oct 2026 17:03:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dee44ed0fb84bf09b9f5e83d3d16ecee82a41217c49cd170fbd1205c2d9c283b`  
		Last Modified: Mon, 12 Oct 2026 17:03:32 GMT  
		Size: 7.6 MB (7554239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af9dfa6f5acd9b5f355ae574a01e0046296ae742b239951ca3491872797a4cbb`  
		Last Modified: Mon, 12 Oct 2026 17:03:37 GMT  
		Size: 257.0 MB (257002665 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e52b7e93c64696814de3f522ce429dcde61e833b35c04c00acc3305f58255690`  
		Last Modified: Mon, 12 Oct 2026 17:03:32 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5856e742a26db5d96d208df9b99630719daead7b346087efb8b5799a44879f0`  
		Last Modified: Mon, 12 Oct 2026 17:03:32 GMT  
		Size: 865.8 KB (865752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:265a02db28505703dcc90b8f548547ce810a2331ecb8b901b3cfaf3bb7af55db`  
		Last Modified: Mon, 12 Oct 2026 17:03:33 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bf9c2ef3d4a51f8b1006c9024008b70e287673a8fbdb468b3b67e01915a9b82`  
		Last Modified: Mon, 12 Oct 2026 17:03:33 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60a8f76c796ab78225ee3ef38c5ade539f3af76f9f4a7ce158ed9a326b620783`  
		Last Modified: Mon, 12 Oct 2026 17:03:34 GMT  
		Size: 3.9 KB (3904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9.13.15-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:407ef7316a723bddd5627fe2c58aa10ce5bc46d07140894ae376114d65d93830
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 KB (27796 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:161f2b186c1fd61aca85266ba6825995a3d5c7a0beac6f441f8a6bb8f3ccc097`

```dockerfile
```

-	Layers:
	-	`sha256:46913ac6e252bfb73e531f2882e4c174daa762fe50db21d37c9fcf7655840225`  
		Last Modified: Mon, 12 Oct 2026 17:03:32 GMT  
		Size: 27.8 KB (27796 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.9.13.15-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:fb640e28d3888d4b5e7b1938b2c0858e53f030ff2cbe467ceb42a1f79efcfa1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.5 MB (272477352 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cca33d885e68e0a2fdf66fbd8cd8be5e9e35e532ee80b1e9834c5a5ae4d0e86f`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:49 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:49 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:49 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:51 GMT
ADD file:58bfc1b17a1e2fc6a3ed29355c9baf1c70e13393e0632376cd7d67572c65ba25 in / 
# Thu, 24 Sep 2026 22:24:51 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 17:02:01 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 12 Oct 2026 17:02:01 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 12 Oct 2026 17:02:01 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 12 Oct 2026 17:02:01 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 12 Oct 2026 17:02:01 GMT
ARG REPO_CHANNEL=stable
# Mon, 12 Oct 2026 17:02:01 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 12 Oct 2026 17:02:01 GMT
ARG VERSION=26.9.13.15
# Mon, 12 Oct 2026 17:02:01 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 12 Oct 2026 17:02:38 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.13.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 12 Oct 2026 17:02:38 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.13.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 12 Oct 2026 17:02:39 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.13.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 12 Oct 2026 17:02:39 GMT
ENV LANG=en_US.UTF-8
# Mon, 12 Oct 2026 17:02:39 GMT
ENV TZ=UTC
# Mon, 12 Oct 2026 17:02:39 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.13.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 12 Oct 2026 17:02:39 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 12 Oct 2026 17:02:39 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 12 Oct 2026 17:02:39 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 12 Oct 2026 17:02:39 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 12 Oct 2026 17:02:39 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 12 Oct 2026 17:02:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f758a77578b00eb76cbe833788b6bfb552d7007f6b8b4ade7e53e5d3e565e632`  
		Last Modified: Mon, 12 Oct 2026 17:03:02 GMT  
		Size: 7.5 MB (7534132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dc09cee16b288a87878636e00a4ceed08231c5ab39b9fb0b6575352716215fb`  
		Last Modified: Mon, 12 Oct 2026 17:03:07 GMT  
		Size: 236.4 MB (236388775 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0d6b4ed6afa9693ab0b2f23358c2b73949fef526c1d821d1ec03c63fa751c23`  
		Last Modified: Mon, 12 Oct 2026 17:03:02 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:666e8f8293dee96bcf3c594f7ee6afdb7cee0c4f4fe9f9bc4ccd5859cf471cd3`  
		Last Modified: Mon, 12 Oct 2026 17:03:02 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13d9a17513880a830ac17891bb41f872f195cc9e1f4ef695610ab8a1e05a101d`  
		Last Modified: Mon, 12 Oct 2026 17:03:03 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9a59dda667c5fcbfa9512c3ada726eeece3ca19c6eb67a3b84144319bf4b7d4`  
		Last Modified: Mon, 12 Oct 2026 17:03:03 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3813b29a4c90e70d2104a3556c7aeb3537ecb2a4cf10b175d10fa1825be83595`  
		Last Modified: Mon, 12 Oct 2026 17:03:04 GMT  
		Size: 3.9 KB (3899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9.13.15-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:a59104b9267427846ea0500ad8f829657184471e62370ca5c5c84b6180788dc0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.0 KB (28008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8e3784a6ea7b0722824168c789d489a837c56ce6aceb2cdf6bd6fddfdadea1f`

```dockerfile
```

-	Layers:
	-	`sha256:0a1b31f1ee795d13976eb5a33a185a58e12c88f05aa517a083660fe11649c972`  
		Last Modified: Mon, 12 Oct 2026 17:03:02 GMT  
		Size: 28.0 KB (28008 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:jammy`

```console
$ docker pull clickhouse@sha256:0c3783f287d4b959c48b9a489dca90255700d986c938b1e59195a696a0cc8de0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:2e3abd9e7074605ae653252b0bc42c011eb852d1e0110c42ac020df86633d110
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.2 MB (295178851 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7d5ccec3279ce1331744bc6249bfb518849a52d09cbddbe184ed59823b65b67`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:04 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:04 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:06 GMT
ADD file:b0bf3f64519bf10a51e00d4f8ab9c8693620659a0c4a4a5090a9765e754e1d1c in / 
# Thu, 24 Sep 2026 22:24:07 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 17:02:35 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 12 Oct 2026 17:02:35 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 12 Oct 2026 17:02:35 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 12 Oct 2026 17:02:35 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 12 Oct 2026 17:02:35 GMT
ARG REPO_CHANNEL=stable
# Mon, 12 Oct 2026 17:02:35 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 12 Oct 2026 17:02:35 GMT
ARG VERSION=26.9.13.15
# Mon, 12 Oct 2026 17:02:35 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 12 Oct 2026 17:03:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.13.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 12 Oct 2026 17:03:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.13.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 12 Oct 2026 17:03:06 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.13.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 12 Oct 2026 17:03:06 GMT
ENV LANG=en_US.UTF-8
# Mon, 12 Oct 2026 17:03:06 GMT
ENV TZ=UTC
# Mon, 12 Oct 2026 17:03:06 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.13.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 12 Oct 2026 17:03:06 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 12 Oct 2026 17:03:06 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 12 Oct 2026 17:03:06 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 12 Oct 2026 17:03:06 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 12 Oct 2026 17:03:06 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 12 Oct 2026 17:03:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dee44ed0fb84bf09b9f5e83d3d16ecee82a41217c49cd170fbd1205c2d9c283b`  
		Last Modified: Mon, 12 Oct 2026 17:03:32 GMT  
		Size: 7.6 MB (7554239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af9dfa6f5acd9b5f355ae574a01e0046296ae742b239951ca3491872797a4cbb`  
		Last Modified: Mon, 12 Oct 2026 17:03:37 GMT  
		Size: 257.0 MB (257002665 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e52b7e93c64696814de3f522ce429dcde61e833b35c04c00acc3305f58255690`  
		Last Modified: Mon, 12 Oct 2026 17:03:32 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5856e742a26db5d96d208df9b99630719daead7b346087efb8b5799a44879f0`  
		Last Modified: Mon, 12 Oct 2026 17:03:32 GMT  
		Size: 865.8 KB (865752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:265a02db28505703dcc90b8f548547ce810a2331ecb8b901b3cfaf3bb7af55db`  
		Last Modified: Mon, 12 Oct 2026 17:03:33 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bf9c2ef3d4a51f8b1006c9024008b70e287673a8fbdb468b3b67e01915a9b82`  
		Last Modified: Mon, 12 Oct 2026 17:03:33 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60a8f76c796ab78225ee3ef38c5ade539f3af76f9f4a7ce158ed9a326b620783`  
		Last Modified: Mon, 12 Oct 2026 17:03:34 GMT  
		Size: 3.9 KB (3904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:407ef7316a723bddd5627fe2c58aa10ce5bc46d07140894ae376114d65d93830
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 KB (27796 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:161f2b186c1fd61aca85266ba6825995a3d5c7a0beac6f441f8a6bb8f3ccc097`

```dockerfile
```

-	Layers:
	-	`sha256:46913ac6e252bfb73e531f2882e4c174daa762fe50db21d37c9fcf7655840225`  
		Last Modified: Mon, 12 Oct 2026 17:03:32 GMT  
		Size: 27.8 KB (27796 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:fb640e28d3888d4b5e7b1938b2c0858e53f030ff2cbe467ceb42a1f79efcfa1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.5 MB (272477352 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cca33d885e68e0a2fdf66fbd8cd8be5e9e35e532ee80b1e9834c5a5ae4d0e86f`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:49 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:49 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:49 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:51 GMT
ADD file:58bfc1b17a1e2fc6a3ed29355c9baf1c70e13393e0632376cd7d67572c65ba25 in / 
# Thu, 24 Sep 2026 22:24:51 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 17:02:01 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 12 Oct 2026 17:02:01 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 12 Oct 2026 17:02:01 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 12 Oct 2026 17:02:01 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 12 Oct 2026 17:02:01 GMT
ARG REPO_CHANNEL=stable
# Mon, 12 Oct 2026 17:02:01 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 12 Oct 2026 17:02:01 GMT
ARG VERSION=26.9.13.15
# Mon, 12 Oct 2026 17:02:01 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 12 Oct 2026 17:02:38 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.13.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 12 Oct 2026 17:02:38 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.13.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 12 Oct 2026 17:02:39 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.13.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 12 Oct 2026 17:02:39 GMT
ENV LANG=en_US.UTF-8
# Mon, 12 Oct 2026 17:02:39 GMT
ENV TZ=UTC
# Mon, 12 Oct 2026 17:02:39 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.13.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 12 Oct 2026 17:02:39 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 12 Oct 2026 17:02:39 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 12 Oct 2026 17:02:39 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 12 Oct 2026 17:02:39 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 12 Oct 2026 17:02:39 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 12 Oct 2026 17:02:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f758a77578b00eb76cbe833788b6bfb552d7007f6b8b4ade7e53e5d3e565e632`  
		Last Modified: Mon, 12 Oct 2026 17:03:02 GMT  
		Size: 7.5 MB (7534132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dc09cee16b288a87878636e00a4ceed08231c5ab39b9fb0b6575352716215fb`  
		Last Modified: Mon, 12 Oct 2026 17:03:07 GMT  
		Size: 236.4 MB (236388775 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0d6b4ed6afa9693ab0b2f23358c2b73949fef526c1d821d1ec03c63fa751c23`  
		Last Modified: Mon, 12 Oct 2026 17:03:02 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:666e8f8293dee96bcf3c594f7ee6afdb7cee0c4f4fe9f9bc4ccd5859cf471cd3`  
		Last Modified: Mon, 12 Oct 2026 17:03:02 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13d9a17513880a830ac17891bb41f872f195cc9e1f4ef695610ab8a1e05a101d`  
		Last Modified: Mon, 12 Oct 2026 17:03:03 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9a59dda667c5fcbfa9512c3ada726eeece3ca19c6eb67a3b84144319bf4b7d4`  
		Last Modified: Mon, 12 Oct 2026 17:03:03 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3813b29a4c90e70d2104a3556c7aeb3537ecb2a4cf10b175d10fa1825be83595`  
		Last Modified: Mon, 12 Oct 2026 17:03:04 GMT  
		Size: 3.9 KB (3899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:a59104b9267427846ea0500ad8f829657184471e62370ca5c5c84b6180788dc0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.0 KB (28008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8e3784a6ea7b0722824168c789d489a837c56ce6aceb2cdf6bd6fddfdadea1f`

```dockerfile
```

-	Layers:
	-	`sha256:0a1b31f1ee795d13976eb5a33a185a58e12c88f05aa517a083660fe11649c972`  
		Last Modified: Mon, 12 Oct 2026 17:03:02 GMT  
		Size: 28.0 KB (28008 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:latest`

```console
$ docker pull clickhouse@sha256:0c3783f287d4b959c48b9a489dca90255700d986c938b1e59195a696a0cc8de0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:latest` - linux; amd64

```console
$ docker pull clickhouse@sha256:2e3abd9e7074605ae653252b0bc42c011eb852d1e0110c42ac020df86633d110
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.2 MB (295178851 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7d5ccec3279ce1331744bc6249bfb518849a52d09cbddbe184ed59823b65b67`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:04 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:04 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:06 GMT
ADD file:b0bf3f64519bf10a51e00d4f8ab9c8693620659a0c4a4a5090a9765e754e1d1c in / 
# Thu, 24 Sep 2026 22:24:07 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 17:02:35 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 12 Oct 2026 17:02:35 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 12 Oct 2026 17:02:35 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 12 Oct 2026 17:02:35 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 12 Oct 2026 17:02:35 GMT
ARG REPO_CHANNEL=stable
# Mon, 12 Oct 2026 17:02:35 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 12 Oct 2026 17:02:35 GMT
ARG VERSION=26.9.13.15
# Mon, 12 Oct 2026 17:02:35 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 12 Oct 2026 17:03:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.13.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 12 Oct 2026 17:03:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.13.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 12 Oct 2026 17:03:06 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.13.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 12 Oct 2026 17:03:06 GMT
ENV LANG=en_US.UTF-8
# Mon, 12 Oct 2026 17:03:06 GMT
ENV TZ=UTC
# Mon, 12 Oct 2026 17:03:06 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.13.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 12 Oct 2026 17:03:06 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 12 Oct 2026 17:03:06 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 12 Oct 2026 17:03:06 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 12 Oct 2026 17:03:06 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 12 Oct 2026 17:03:06 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 12 Oct 2026 17:03:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dee44ed0fb84bf09b9f5e83d3d16ecee82a41217c49cd170fbd1205c2d9c283b`  
		Last Modified: Mon, 12 Oct 2026 17:03:32 GMT  
		Size: 7.6 MB (7554239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af9dfa6f5acd9b5f355ae574a01e0046296ae742b239951ca3491872797a4cbb`  
		Last Modified: Mon, 12 Oct 2026 17:03:37 GMT  
		Size: 257.0 MB (257002665 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e52b7e93c64696814de3f522ce429dcde61e833b35c04c00acc3305f58255690`  
		Last Modified: Mon, 12 Oct 2026 17:03:32 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5856e742a26db5d96d208df9b99630719daead7b346087efb8b5799a44879f0`  
		Last Modified: Mon, 12 Oct 2026 17:03:32 GMT  
		Size: 865.8 KB (865752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:265a02db28505703dcc90b8f548547ce810a2331ecb8b901b3cfaf3bb7af55db`  
		Last Modified: Mon, 12 Oct 2026 17:03:33 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bf9c2ef3d4a51f8b1006c9024008b70e287673a8fbdb468b3b67e01915a9b82`  
		Last Modified: Mon, 12 Oct 2026 17:03:33 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60a8f76c796ab78225ee3ef38c5ade539f3af76f9f4a7ce158ed9a326b620783`  
		Last Modified: Mon, 12 Oct 2026 17:03:34 GMT  
		Size: 3.9 KB (3904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:latest` - unknown; unknown

```console
$ docker pull clickhouse@sha256:407ef7316a723bddd5627fe2c58aa10ce5bc46d07140894ae376114d65d93830
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 KB (27796 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:161f2b186c1fd61aca85266ba6825995a3d5c7a0beac6f441f8a6bb8f3ccc097`

```dockerfile
```

-	Layers:
	-	`sha256:46913ac6e252bfb73e531f2882e4c174daa762fe50db21d37c9fcf7655840225`  
		Last Modified: Mon, 12 Oct 2026 17:03:32 GMT  
		Size: 27.8 KB (27796 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:latest` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:fb640e28d3888d4b5e7b1938b2c0858e53f030ff2cbe467ceb42a1f79efcfa1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.5 MB (272477352 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cca33d885e68e0a2fdf66fbd8cd8be5e9e35e532ee80b1e9834c5a5ae4d0e86f`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:49 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:49 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:49 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:51 GMT
ADD file:58bfc1b17a1e2fc6a3ed29355c9baf1c70e13393e0632376cd7d67572c65ba25 in / 
# Thu, 24 Sep 2026 22:24:51 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 17:02:01 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 12 Oct 2026 17:02:01 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 12 Oct 2026 17:02:01 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 12 Oct 2026 17:02:01 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 12 Oct 2026 17:02:01 GMT
ARG REPO_CHANNEL=stable
# Mon, 12 Oct 2026 17:02:01 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 12 Oct 2026 17:02:01 GMT
ARG VERSION=26.9.13.15
# Mon, 12 Oct 2026 17:02:01 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 12 Oct 2026 17:02:38 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.13.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 12 Oct 2026 17:02:38 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.13.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 12 Oct 2026 17:02:39 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.13.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 12 Oct 2026 17:02:39 GMT
ENV LANG=en_US.UTF-8
# Mon, 12 Oct 2026 17:02:39 GMT
ENV TZ=UTC
# Mon, 12 Oct 2026 17:02:39 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.13.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 12 Oct 2026 17:02:39 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 12 Oct 2026 17:02:39 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 12 Oct 2026 17:02:39 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 12 Oct 2026 17:02:39 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 12 Oct 2026 17:02:39 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 12 Oct 2026 17:02:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f758a77578b00eb76cbe833788b6bfb552d7007f6b8b4ade7e53e5d3e565e632`  
		Last Modified: Mon, 12 Oct 2026 17:03:02 GMT  
		Size: 7.5 MB (7534132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dc09cee16b288a87878636e00a4ceed08231c5ab39b9fb0b6575352716215fb`  
		Last Modified: Mon, 12 Oct 2026 17:03:07 GMT  
		Size: 236.4 MB (236388775 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0d6b4ed6afa9693ab0b2f23358c2b73949fef526c1d821d1ec03c63fa751c23`  
		Last Modified: Mon, 12 Oct 2026 17:03:02 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:666e8f8293dee96bcf3c594f7ee6afdb7cee0c4f4fe9f9bc4ccd5859cf471cd3`  
		Last Modified: Mon, 12 Oct 2026 17:03:02 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13d9a17513880a830ac17891bb41f872f195cc9e1f4ef695610ab8a1e05a101d`  
		Last Modified: Mon, 12 Oct 2026 17:03:03 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9a59dda667c5fcbfa9512c3ada726eeece3ca19c6eb67a3b84144319bf4b7d4`  
		Last Modified: Mon, 12 Oct 2026 17:03:03 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3813b29a4c90e70d2104a3556c7aeb3537ecb2a4cf10b175d10fa1825be83595`  
		Last Modified: Mon, 12 Oct 2026 17:03:04 GMT  
		Size: 3.9 KB (3899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:latest` - unknown; unknown

```console
$ docker pull clickhouse@sha256:a59104b9267427846ea0500ad8f829657184471e62370ca5c5c84b6180788dc0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.0 KB (28008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8e3784a6ea7b0722824168c789d489a837c56ce6aceb2cdf6bd6fddfdadea1f`

```dockerfile
```

-	Layers:
	-	`sha256:0a1b31f1ee795d13976eb5a33a185a58e12c88f05aa517a083660fe11649c972`  
		Last Modified: Mon, 12 Oct 2026 17:03:02 GMT  
		Size: 28.0 KB (28008 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:lts`

```console
$ docker pull clickhouse@sha256:77be6e71935b8957645adb34d80e68646b74c90cc260a69cb6150d7895cf2e19
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:lts` - linux; amd64

```console
$ docker pull clickhouse@sha256:acc2627d5025eab3efe0a21bbf0dcefcb88f7c17c907ff8ae9fda165b6487d54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.6 MB (279551313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a13a867bbd9b03e1a677abe927959cd341ac5749cf3cdbaf54f0a33f1dc35ff5`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:04 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:04 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:06 GMT
ADD file:b0bf3f64519bf10a51e00d4f8ab9c8693620659a0c4a4a5090a9765e754e1d1c in / 
# Thu, 24 Sep 2026 22:24:07 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 17:02:09 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 12 Oct 2026 17:02:09 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 12 Oct 2026 17:02:09 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 12 Oct 2026 17:02:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 12 Oct 2026 17:02:09 GMT
ARG REPO_CHANNEL=stable
# Mon, 12 Oct 2026 17:02:09 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 12 Oct 2026 17:02:09 GMT
ARG VERSION=26.8.21.10
# Mon, 12 Oct 2026 17:02:09 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 12 Oct 2026 17:02:40 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.21.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 12 Oct 2026 17:02:40 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.21.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 12 Oct 2026 17:02:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.21.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 12 Oct 2026 17:02:41 GMT
ENV LANG=en_US.UTF-8
# Mon, 12 Oct 2026 17:02:41 GMT
ENV TZ=UTC
# Mon, 12 Oct 2026 17:02:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.21.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 12 Oct 2026 17:02:42 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 12 Oct 2026 17:02:42 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 12 Oct 2026 17:02:42 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 12 Oct 2026 17:02:42 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 12 Oct 2026 17:02:42 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 12 Oct 2026 17:02:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e042fdfbb63f1b6d4f0ae11391cad49f25b964d7036de842f5af54e678103b10`  
		Last Modified: Mon, 12 Oct 2026 17:03:08 GMT  
		Size: 7.6 MB (7554221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8da25d9e30dbc24132066d9cf96868a7483148fc7ac01be48c26036d5ad26a1e`  
		Last Modified: Mon, 12 Oct 2026 17:03:13 GMT  
		Size: 241.4 MB (241375417 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b62d27ad2a2436c34fb7e209779ca3045c53677c5ca58c955d412f5744c102d`  
		Last Modified: Mon, 12 Oct 2026 17:03:08 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc8c27f0bed9aefa35ed2801bd4438b2f4435786feba40f5ac9d780f562d8aa7`  
		Last Modified: Mon, 12 Oct 2026 17:03:08 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fe4d3aa1d0369bb476a25b16f9a8dd66286ad1a9d14bee8573698fb86a28fb4`  
		Last Modified: Mon, 12 Oct 2026 17:03:09 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b4384ac39914900d3e2c58e3921fc1ad2cc773edc8105da26a6ee1158663cae`  
		Last Modified: Mon, 12 Oct 2026 17:03:10 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e72e57cf5fb7505b5ad6f264204fb96800225e1a33cdb5016224c8f534d2f3d`  
		Last Modified: Mon, 12 Oct 2026 17:03:10 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:lts` - unknown; unknown

```console
$ docker pull clickhouse@sha256:eebe5649d163bff83f39cc22534f96d4e3b3be8b9bdba5b5e8d12337ff3d2c8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 KB (27366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ca587eca80c8d4368797ee704359635ef76bda981e36ae3f28cee614ae51556`

```dockerfile
```

-	Layers:
	-	`sha256:07e1a4d3b7799395469fe95111304c8f29d867725956761fb0556a9a442c330f`  
		Last Modified: Mon, 12 Oct 2026 17:03:08 GMT  
		Size: 27.4 KB (27366 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:lts` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:89c98a876fefc6dd5a1ee8ed298a46fa0ab93cf1a606f4ce96297991788f9287
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.6 MB (262614749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:353e2059a26ad3b4629635a4e8cdfc4760c54c743b386c05bf8134d54d3879fd`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:49 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:49 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:49 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:51 GMT
ADD file:58bfc1b17a1e2fc6a3ed29355c9baf1c70e13393e0632376cd7d67572c65ba25 in / 
# Thu, 24 Sep 2026 22:24:51 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 17:02:36 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 12 Oct 2026 17:02:36 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 12 Oct 2026 17:02:36 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 12 Oct 2026 17:02:36 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 12 Oct 2026 17:02:36 GMT
ARG REPO_CHANNEL=stable
# Mon, 12 Oct 2026 17:02:36 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 12 Oct 2026 17:02:36 GMT
ARG VERSION=26.8.21.10
# Mon, 12 Oct 2026 17:02:36 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 12 Oct 2026 17:03:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.21.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 12 Oct 2026 17:03:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.21.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 12 Oct 2026 17:03:18 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.21.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 12 Oct 2026 17:03:18 GMT
ENV LANG=en_US.UTF-8
# Mon, 12 Oct 2026 17:03:18 GMT
ENV TZ=UTC
# Mon, 12 Oct 2026 17:03:18 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.21.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 12 Oct 2026 17:03:18 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 12 Oct 2026 17:03:18 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 12 Oct 2026 17:03:18 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 12 Oct 2026 17:03:18 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 12 Oct 2026 17:03:18 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 12 Oct 2026 17:03:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3df44adbff22a7787c4a1bbbac33c389cc823d9aaffd0f07168574536b0024d3`  
		Last Modified: Mon, 12 Oct 2026 17:03:40 GMT  
		Size: 7.5 MB (7534145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:853b3a44f3f9ecca6d609e396f98f7d7edcf988c34cad6389b0aaf76b04a22d8`  
		Last Modified: Mon, 12 Oct 2026 17:03:45 GMT  
		Size: 226.5 MB (226526418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7901d3621b276e6807d3b2a6df442a9d53d38e987f11d95ee3ca42b56098f6a`  
		Last Modified: Mon, 12 Oct 2026 17:03:40 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2852d5b625a64acdf4c799fa6733cbb5654ee1364b1bfca419b6eeb03f3e3151`  
		Last Modified: Mon, 12 Oct 2026 17:03:40 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad6cc80472dd88cf5ec0d381f16e7c57d08d44fcaa61ad288ae7f307f5b1a60a`  
		Last Modified: Mon, 12 Oct 2026 17:03:41 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3103202bf7c9091daf54f09431408fc9d71c6d4aef4c24884adf89e696dfdff6`  
		Last Modified: Mon, 12 Oct 2026 17:03:41 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c46248d1dedddcd2a8894e7961f9d67a72d4d4aca50ce3e4d971270b994b062`  
		Last Modified: Mon, 12 Oct 2026 17:03:42 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:lts` - unknown; unknown

```console
$ docker pull clickhouse@sha256:c6dcdca05891a3e8b5c1d546c80aedb48dafbb634064c659bd265f5f7c561021
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 KB (27578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1187018d73876fe58e3aaa307e7a9f0b73ea36d081b17541297db64d14e49f2a`

```dockerfile
```

-	Layers:
	-	`sha256:5f56b35827ca3349edc5216bccd073841b2c63badb916e307ebee70e170c73e4`  
		Last Modified: Mon, 12 Oct 2026 17:03:40 GMT  
		Size: 27.6 KB (27578 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:lts-jammy`

```console
$ docker pull clickhouse@sha256:77be6e71935b8957645adb34d80e68646b74c90cc260a69cb6150d7895cf2e19
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:lts-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:acc2627d5025eab3efe0a21bbf0dcefcb88f7c17c907ff8ae9fda165b6487d54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.6 MB (279551313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a13a867bbd9b03e1a677abe927959cd341ac5749cf3cdbaf54f0a33f1dc35ff5`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:04 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:04 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:06 GMT
ADD file:b0bf3f64519bf10a51e00d4f8ab9c8693620659a0c4a4a5090a9765e754e1d1c in / 
# Thu, 24 Sep 2026 22:24:07 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 17:02:09 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 12 Oct 2026 17:02:09 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 12 Oct 2026 17:02:09 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 12 Oct 2026 17:02:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 12 Oct 2026 17:02:09 GMT
ARG REPO_CHANNEL=stable
# Mon, 12 Oct 2026 17:02:09 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 12 Oct 2026 17:02:09 GMT
ARG VERSION=26.8.21.10
# Mon, 12 Oct 2026 17:02:09 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 12 Oct 2026 17:02:40 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.21.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 12 Oct 2026 17:02:40 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.21.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 12 Oct 2026 17:02:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.21.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 12 Oct 2026 17:02:41 GMT
ENV LANG=en_US.UTF-8
# Mon, 12 Oct 2026 17:02:41 GMT
ENV TZ=UTC
# Mon, 12 Oct 2026 17:02:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.21.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 12 Oct 2026 17:02:42 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 12 Oct 2026 17:02:42 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 12 Oct 2026 17:02:42 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 12 Oct 2026 17:02:42 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 12 Oct 2026 17:02:42 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 12 Oct 2026 17:02:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e042fdfbb63f1b6d4f0ae11391cad49f25b964d7036de842f5af54e678103b10`  
		Last Modified: Mon, 12 Oct 2026 17:03:08 GMT  
		Size: 7.6 MB (7554221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8da25d9e30dbc24132066d9cf96868a7483148fc7ac01be48c26036d5ad26a1e`  
		Last Modified: Mon, 12 Oct 2026 17:03:13 GMT  
		Size: 241.4 MB (241375417 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b62d27ad2a2436c34fb7e209779ca3045c53677c5ca58c955d412f5744c102d`  
		Last Modified: Mon, 12 Oct 2026 17:03:08 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc8c27f0bed9aefa35ed2801bd4438b2f4435786feba40f5ac9d780f562d8aa7`  
		Last Modified: Mon, 12 Oct 2026 17:03:08 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fe4d3aa1d0369bb476a25b16f9a8dd66286ad1a9d14bee8573698fb86a28fb4`  
		Last Modified: Mon, 12 Oct 2026 17:03:09 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b4384ac39914900d3e2c58e3921fc1ad2cc773edc8105da26a6ee1158663cae`  
		Last Modified: Mon, 12 Oct 2026 17:03:10 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e72e57cf5fb7505b5ad6f264204fb96800225e1a33cdb5016224c8f534d2f3d`  
		Last Modified: Mon, 12 Oct 2026 17:03:10 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:lts-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:eebe5649d163bff83f39cc22534f96d4e3b3be8b9bdba5b5e8d12337ff3d2c8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 KB (27366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ca587eca80c8d4368797ee704359635ef76bda981e36ae3f28cee614ae51556`

```dockerfile
```

-	Layers:
	-	`sha256:07e1a4d3b7799395469fe95111304c8f29d867725956761fb0556a9a442c330f`  
		Last Modified: Mon, 12 Oct 2026 17:03:08 GMT  
		Size: 27.4 KB (27366 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:lts-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:89c98a876fefc6dd5a1ee8ed298a46fa0ab93cf1a606f4ce96297991788f9287
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.6 MB (262614749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:353e2059a26ad3b4629635a4e8cdfc4760c54c743b386c05bf8134d54d3879fd`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:49 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:49 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:49 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:51 GMT
ADD file:58bfc1b17a1e2fc6a3ed29355c9baf1c70e13393e0632376cd7d67572c65ba25 in / 
# Thu, 24 Sep 2026 22:24:51 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 17:02:36 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 12 Oct 2026 17:02:36 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 12 Oct 2026 17:02:36 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 12 Oct 2026 17:02:36 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 12 Oct 2026 17:02:36 GMT
ARG REPO_CHANNEL=stable
# Mon, 12 Oct 2026 17:02:36 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 12 Oct 2026 17:02:36 GMT
ARG VERSION=26.8.21.10
# Mon, 12 Oct 2026 17:02:36 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 12 Oct 2026 17:03:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.21.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 12 Oct 2026 17:03:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.21.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 12 Oct 2026 17:03:18 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.21.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 12 Oct 2026 17:03:18 GMT
ENV LANG=en_US.UTF-8
# Mon, 12 Oct 2026 17:03:18 GMT
ENV TZ=UTC
# Mon, 12 Oct 2026 17:03:18 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.21.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 12 Oct 2026 17:03:18 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 12 Oct 2026 17:03:18 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 12 Oct 2026 17:03:18 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 12 Oct 2026 17:03:18 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 12 Oct 2026 17:03:18 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 12 Oct 2026 17:03:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3df44adbff22a7787c4a1bbbac33c389cc823d9aaffd0f07168574536b0024d3`  
		Last Modified: Mon, 12 Oct 2026 17:03:40 GMT  
		Size: 7.5 MB (7534145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:853b3a44f3f9ecca6d609e396f98f7d7edcf988c34cad6389b0aaf76b04a22d8`  
		Last Modified: Mon, 12 Oct 2026 17:03:45 GMT  
		Size: 226.5 MB (226526418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7901d3621b276e6807d3b2a6df442a9d53d38e987f11d95ee3ca42b56098f6a`  
		Last Modified: Mon, 12 Oct 2026 17:03:40 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2852d5b625a64acdf4c799fa6733cbb5654ee1364b1bfca419b6eeb03f3e3151`  
		Last Modified: Mon, 12 Oct 2026 17:03:40 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad6cc80472dd88cf5ec0d381f16e7c57d08d44fcaa61ad288ae7f307f5b1a60a`  
		Last Modified: Mon, 12 Oct 2026 17:03:41 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3103202bf7c9091daf54f09431408fc9d71c6d4aef4c24884adf89e696dfdff6`  
		Last Modified: Mon, 12 Oct 2026 17:03:41 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c46248d1dedddcd2a8894e7961f9d67a72d4d4aca50ce3e4d971270b994b062`  
		Last Modified: Mon, 12 Oct 2026 17:03:42 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:lts-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:c6dcdca05891a3e8b5c1d546c80aedb48dafbb634064c659bd265f5f7c561021
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 KB (27578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1187018d73876fe58e3aaa307e7a9f0b73ea36d081b17541297db64d14e49f2a`

```dockerfile
```

-	Layers:
	-	`sha256:5f56b35827ca3349edc5216bccd073841b2c63badb916e307ebee70e170c73e4`  
		Last Modified: Mon, 12 Oct 2026 17:03:40 GMT  
		Size: 27.6 KB (27578 bytes)  
		MIME: application/vnd.in-toto+json
