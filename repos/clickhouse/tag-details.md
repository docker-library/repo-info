<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `clickhouse`

-	[`clickhouse:25.8`](#clickhouse258)
-	[`clickhouse:25.8-jammy`](#clickhouse258-jammy)
-	[`clickhouse:25.8.29`](#clickhouse25829)
-	[`clickhouse:25.8.29-jammy`](#clickhouse25829-jammy)
-	[`clickhouse:25.8.29.51`](#clickhouse2582951)
-	[`clickhouse:25.8.29.51-jammy`](#clickhouse2582951-jammy)
-	[`clickhouse:26.3`](#clickhouse263)
-	[`clickhouse:26.3-jammy`](#clickhouse263-jammy)
-	[`clickhouse:26.3.17`](#clickhouse26317)
-	[`clickhouse:26.3.17-jammy`](#clickhouse26317-jammy)
-	[`clickhouse:26.3.17.110`](#clickhouse26317110)
-	[`clickhouse:26.3.17.110-jammy`](#clickhouse26317110-jammy)
-	[`clickhouse:26.5`](#clickhouse265)
-	[`clickhouse:26.5-jammy`](#clickhouse265-jammy)
-	[`clickhouse:26.5.6`](#clickhouse2656)
-	[`clickhouse:26.5.6-jammy`](#clickhouse2656-jammy)
-	[`clickhouse:26.5.6.113`](#clickhouse2656113)
-	[`clickhouse:26.5.6.113-jammy`](#clickhouse2656113-jammy)
-	[`clickhouse:26.6`](#clickhouse266)
-	[`clickhouse:26.6-jammy`](#clickhouse266-jammy)
-	[`clickhouse:26.6.2`](#clickhouse2662)
-	[`clickhouse:26.6.2-jammy`](#clickhouse2662-jammy)
-	[`clickhouse:26.6.2.160`](#clickhouse2662160)
-	[`clickhouse:26.6.2.160-jammy`](#clickhouse2662160-jammy)
-	[`clickhouse:26.7`](#clickhouse267)
-	[`clickhouse:26.7-jammy`](#clickhouse267-jammy)
-	[`clickhouse:26.7.3`](#clickhouse2673)
-	[`clickhouse:26.7.3-jammy`](#clickhouse2673-jammy)
-	[`clickhouse:26.7.3.19`](#clickhouse267319)
-	[`clickhouse:26.7.3.19-jammy`](#clickhouse267319-jammy)
-	[`clickhouse:jammy`](#clickhousejammy)
-	[`clickhouse:latest`](#clickhouselatest)
-	[`clickhouse:lts`](#clickhouselts)
-	[`clickhouse:lts-jammy`](#clickhouselts-jammy)

## `clickhouse:25.8`

```console
$ docker pull clickhouse@sha256:0966657518e3a70152e94906e3a500c82162c8e2c23a6ffbec31eabfe494b5c2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:25.8` - linux; amd64

```console
$ docker pull clickhouse@sha256:af2499e550ec44e34ba209766b04984b86db1e79215d94aa80bce3c4b7862aa1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.3 MB (230274210 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28b629649789a7ceb39b73e948c56018a208d003b3f978fe42c01882e8ced370`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:09 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:09 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:12 GMT
ADD file:799f4e238d67485cc109d93512f4fe6f75bafc26a3476772191154125e52201d in / 
# Mon, 10 Aug 2026 17:38:12 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:10:39 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 18 Aug 2026 01:10:39 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 18 Aug 2026 01:10:39 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 18 Aug 2026 01:10:39 GMT
ARG REPO_CHANNEL=stable
# Tue, 18 Aug 2026 01:10:39 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 18 Aug 2026 01:10:39 GMT
ARG VERSION=25.8.29.51
# Tue, 18 Aug 2026 01:10:39 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 18 Aug 2026 01:11:07 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.29.51 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:11:07 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.29.51 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:11:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.29.51 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 18 Aug 2026 01:11:08 GMT
ENV LANG=en_US.UTF-8
# Tue, 18 Aug 2026 01:11:08 GMT
ENV TZ=UTC
# Tue, 18 Aug 2026 01:11:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.29.51 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 18 Aug 2026 01:11:08 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 18 Aug 2026 01:11:08 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 18 Aug 2026 01:11:08 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 18 Aug 2026 01:11:08 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 18 Aug 2026 01:11:08 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 18 Aug 2026 01:11:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cd09ec2b98be327725d440858a3ac7fc821902bf3c05b2db8a4bef3b9276d79`  
		Last Modified: Tue, 18 Aug 2026 01:11:30 GMT  
		Size: 7.6 MB (7553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6983b0c23fc8d8dd5e54f0316f96b5788eebd34c94e83e32d95fad34689fa1f5`  
		Last Modified: Tue, 18 Aug 2026 01:11:34 GMT  
		Size: 192.1 MB (192113793 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7f45d90bbbf8c9d5392756491a7654feee3adb86f890129a167b695fcbd3b06`  
		Last Modified: Tue, 18 Aug 2026 01:11:30 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2db2118e7eb5fe22e936959fdd3bb58ecdcd5eb4bd53fa77ba542deeee84a480`  
		Last Modified: Tue, 18 Aug 2026 01:11:30 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e5f946feb7b2981ba830a9bdf608887e7b0ef382846f2539e64865fa8235913`  
		Last Modified: Tue, 18 Aug 2026 01:11:31 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9eaa77e879f3b67eedbcd311a161bbfb13a4bfa0c58d6be8885a24fbec7ef377`  
		Last Modified: Tue, 18 Aug 2026 01:11:31 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85c196c18dfbe1d0f13b08b5599f87bbdee86493edacdf594308b8789da4e701`  
		Last Modified: Tue, 18 Aug 2026 01:11:31 GMT  
		Size: 3.6 KB (3611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:25.8` - unknown; unknown

```console
$ docker pull clickhouse@sha256:2eb38e9730ac3d7e14151adc89ed3659818e81be2a9adcf3c4ee7f793dfd8d1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26234 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4807571627093de0d45df2a329c816509acb2590d53838a9d09d71aab373ee0d`

```dockerfile
```

-	Layers:
	-	`sha256:4fde6cf63650f8d67e0005c93bc6588245d6cbbf5915c1f6535f2b039abd3697`  
		Last Modified: Tue, 18 Aug 2026 01:11:30 GMT  
		Size: 26.2 KB (26234 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:25.8` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:50b4320d524bfa59a43caa324b06a12216d95e6079032e8146e91d97a738efb7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.2 MB (215151435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fcfeb316b27c916e9e4947bc184d4630a1a76b074b09a3887b779d26fdd34b6`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:35 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:35 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:37 GMT
ADD file:c4ec32d39509d0c1acf2ddbb89cdc1fb3ceeae66ef80238f2ba7df53758fb44a in / 
# Mon, 10 Aug 2026 17:38:38 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:10:48 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 18 Aug 2026 01:10:48 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 18 Aug 2026 01:10:48 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 18 Aug 2026 01:10:48 GMT
ARG REPO_CHANNEL=stable
# Tue, 18 Aug 2026 01:10:48 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 18 Aug 2026 01:10:48 GMT
ARG VERSION=25.8.29.51
# Tue, 18 Aug 2026 01:10:48 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 18 Aug 2026 01:11:22 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.29.51 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:11:22 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.29.51 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:11:23 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.29.51 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 18 Aug 2026 01:11:23 GMT
ENV LANG=en_US.UTF-8
# Tue, 18 Aug 2026 01:11:23 GMT
ENV TZ=UTC
# Tue, 18 Aug 2026 01:11:23 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.29.51 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 18 Aug 2026 01:11:23 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 18 Aug 2026 01:11:23 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 18 Aug 2026 01:11:23 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 18 Aug 2026 01:11:23 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 18 Aug 2026 01:11:23 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 18 Aug 2026 01:11:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e766ba30ec9421dd13111659e2817b9e871599d194e2779798f6484dc1c3ab8a`  
		Last Modified: Tue, 18 Aug 2026 01:11:42 GMT  
		Size: 7.5 MB (7533673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b68378530f69e401718e39d2cdf7913675fb10cea6ef37128c23fa33bf5c7672`  
		Last Modified: Tue, 18 Aug 2026 01:11:46 GMT  
		Size: 179.1 MB (179127285 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c90fc140e8ca5ef9ce9305e23a654f2566d53c28a5f471447310fe91b22a649`  
		Last Modified: Tue, 18 Aug 2026 01:11:42 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fa976d4191391ed7c8a100ac33ed8ea6da50b25f2b42c8590b79e8b041abadf`  
		Last Modified: Tue, 18 Aug 2026 01:11:42 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c471ea0269ad0c8ed4edd6c7f289864bc55c8c7561c8b9c816a99196379324e`  
		Last Modified: Tue, 18 Aug 2026 01:11:43 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:701705c51ee3c889360e86902d25f8e375b92df5b85a51d150be6e324ef856e2`  
		Last Modified: Tue, 18 Aug 2026 01:11:43 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3292a751626a7a66c5cded84e2bceec519f638b957c51f38e0d35216bc73b82c`  
		Last Modified: Tue, 18 Aug 2026 01:11:44 GMT  
		Size: 3.6 KB (3611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:25.8` - unknown; unknown

```console
$ docker pull clickhouse@sha256:b76e6c20f7cb88905abcda8370a21ae6440ef9d5ef06fceac736bb4ddf064f24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3330e517ed6e617de68009d7849ecfb01157d0389a05d629bb0fd3edf6047357`

```dockerfile
```

-	Layers:
	-	`sha256:f0e787882fb677be2efa2ca6ffc4457f555e8d0e02e8cda2038bb4ef472fcfc8`  
		Last Modified: Tue, 18 Aug 2026 01:11:42 GMT  
		Size: 26.4 KB (26423 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:25.8-jammy`

```console
$ docker pull clickhouse@sha256:0966657518e3a70152e94906e3a500c82162c8e2c23a6ffbec31eabfe494b5c2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:25.8-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:af2499e550ec44e34ba209766b04984b86db1e79215d94aa80bce3c4b7862aa1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.3 MB (230274210 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28b629649789a7ceb39b73e948c56018a208d003b3f978fe42c01882e8ced370`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:09 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:09 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:12 GMT
ADD file:799f4e238d67485cc109d93512f4fe6f75bafc26a3476772191154125e52201d in / 
# Mon, 10 Aug 2026 17:38:12 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:10:39 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 18 Aug 2026 01:10:39 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 18 Aug 2026 01:10:39 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 18 Aug 2026 01:10:39 GMT
ARG REPO_CHANNEL=stable
# Tue, 18 Aug 2026 01:10:39 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 18 Aug 2026 01:10:39 GMT
ARG VERSION=25.8.29.51
# Tue, 18 Aug 2026 01:10:39 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 18 Aug 2026 01:11:07 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.29.51 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:11:07 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.29.51 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:11:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.29.51 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 18 Aug 2026 01:11:08 GMT
ENV LANG=en_US.UTF-8
# Tue, 18 Aug 2026 01:11:08 GMT
ENV TZ=UTC
# Tue, 18 Aug 2026 01:11:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.29.51 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 18 Aug 2026 01:11:08 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 18 Aug 2026 01:11:08 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 18 Aug 2026 01:11:08 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 18 Aug 2026 01:11:08 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 18 Aug 2026 01:11:08 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 18 Aug 2026 01:11:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cd09ec2b98be327725d440858a3ac7fc821902bf3c05b2db8a4bef3b9276d79`  
		Last Modified: Tue, 18 Aug 2026 01:11:30 GMT  
		Size: 7.6 MB (7553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6983b0c23fc8d8dd5e54f0316f96b5788eebd34c94e83e32d95fad34689fa1f5`  
		Last Modified: Tue, 18 Aug 2026 01:11:34 GMT  
		Size: 192.1 MB (192113793 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7f45d90bbbf8c9d5392756491a7654feee3adb86f890129a167b695fcbd3b06`  
		Last Modified: Tue, 18 Aug 2026 01:11:30 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2db2118e7eb5fe22e936959fdd3bb58ecdcd5eb4bd53fa77ba542deeee84a480`  
		Last Modified: Tue, 18 Aug 2026 01:11:30 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e5f946feb7b2981ba830a9bdf608887e7b0ef382846f2539e64865fa8235913`  
		Last Modified: Tue, 18 Aug 2026 01:11:31 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9eaa77e879f3b67eedbcd311a161bbfb13a4bfa0c58d6be8885a24fbec7ef377`  
		Last Modified: Tue, 18 Aug 2026 01:11:31 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85c196c18dfbe1d0f13b08b5599f87bbdee86493edacdf594308b8789da4e701`  
		Last Modified: Tue, 18 Aug 2026 01:11:31 GMT  
		Size: 3.6 KB (3611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:25.8-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:2eb38e9730ac3d7e14151adc89ed3659818e81be2a9adcf3c4ee7f793dfd8d1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26234 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4807571627093de0d45df2a329c816509acb2590d53838a9d09d71aab373ee0d`

```dockerfile
```

-	Layers:
	-	`sha256:4fde6cf63650f8d67e0005c93bc6588245d6cbbf5915c1f6535f2b039abd3697`  
		Last Modified: Tue, 18 Aug 2026 01:11:30 GMT  
		Size: 26.2 KB (26234 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:25.8-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:50b4320d524bfa59a43caa324b06a12216d95e6079032e8146e91d97a738efb7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.2 MB (215151435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fcfeb316b27c916e9e4947bc184d4630a1a76b074b09a3887b779d26fdd34b6`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:35 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:35 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:37 GMT
ADD file:c4ec32d39509d0c1acf2ddbb89cdc1fb3ceeae66ef80238f2ba7df53758fb44a in / 
# Mon, 10 Aug 2026 17:38:38 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:10:48 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 18 Aug 2026 01:10:48 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 18 Aug 2026 01:10:48 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 18 Aug 2026 01:10:48 GMT
ARG REPO_CHANNEL=stable
# Tue, 18 Aug 2026 01:10:48 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 18 Aug 2026 01:10:48 GMT
ARG VERSION=25.8.29.51
# Tue, 18 Aug 2026 01:10:48 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 18 Aug 2026 01:11:22 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.29.51 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:11:22 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.29.51 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:11:23 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.29.51 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 18 Aug 2026 01:11:23 GMT
ENV LANG=en_US.UTF-8
# Tue, 18 Aug 2026 01:11:23 GMT
ENV TZ=UTC
# Tue, 18 Aug 2026 01:11:23 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.29.51 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 18 Aug 2026 01:11:23 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 18 Aug 2026 01:11:23 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 18 Aug 2026 01:11:23 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 18 Aug 2026 01:11:23 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 18 Aug 2026 01:11:23 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 18 Aug 2026 01:11:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e766ba30ec9421dd13111659e2817b9e871599d194e2779798f6484dc1c3ab8a`  
		Last Modified: Tue, 18 Aug 2026 01:11:42 GMT  
		Size: 7.5 MB (7533673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b68378530f69e401718e39d2cdf7913675fb10cea6ef37128c23fa33bf5c7672`  
		Last Modified: Tue, 18 Aug 2026 01:11:46 GMT  
		Size: 179.1 MB (179127285 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c90fc140e8ca5ef9ce9305e23a654f2566d53c28a5f471447310fe91b22a649`  
		Last Modified: Tue, 18 Aug 2026 01:11:42 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fa976d4191391ed7c8a100ac33ed8ea6da50b25f2b42c8590b79e8b041abadf`  
		Last Modified: Tue, 18 Aug 2026 01:11:42 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c471ea0269ad0c8ed4edd6c7f289864bc55c8c7561c8b9c816a99196379324e`  
		Last Modified: Tue, 18 Aug 2026 01:11:43 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:701705c51ee3c889360e86902d25f8e375b92df5b85a51d150be6e324ef856e2`  
		Last Modified: Tue, 18 Aug 2026 01:11:43 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3292a751626a7a66c5cded84e2bceec519f638b957c51f38e0d35216bc73b82c`  
		Last Modified: Tue, 18 Aug 2026 01:11:44 GMT  
		Size: 3.6 KB (3611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:25.8-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:b76e6c20f7cb88905abcda8370a21ae6440ef9d5ef06fceac736bb4ddf064f24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3330e517ed6e617de68009d7849ecfb01157d0389a05d629bb0fd3edf6047357`

```dockerfile
```

-	Layers:
	-	`sha256:f0e787882fb677be2efa2ca6ffc4457f555e8d0e02e8cda2038bb4ef472fcfc8`  
		Last Modified: Tue, 18 Aug 2026 01:11:42 GMT  
		Size: 26.4 KB (26423 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:25.8.29`

```console
$ docker pull clickhouse@sha256:0966657518e3a70152e94906e3a500c82162c8e2c23a6ffbec31eabfe494b5c2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:25.8.29` - linux; amd64

```console
$ docker pull clickhouse@sha256:af2499e550ec44e34ba209766b04984b86db1e79215d94aa80bce3c4b7862aa1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.3 MB (230274210 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28b629649789a7ceb39b73e948c56018a208d003b3f978fe42c01882e8ced370`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:09 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:09 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:12 GMT
ADD file:799f4e238d67485cc109d93512f4fe6f75bafc26a3476772191154125e52201d in / 
# Mon, 10 Aug 2026 17:38:12 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:10:39 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 18 Aug 2026 01:10:39 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 18 Aug 2026 01:10:39 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 18 Aug 2026 01:10:39 GMT
ARG REPO_CHANNEL=stable
# Tue, 18 Aug 2026 01:10:39 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 18 Aug 2026 01:10:39 GMT
ARG VERSION=25.8.29.51
# Tue, 18 Aug 2026 01:10:39 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 18 Aug 2026 01:11:07 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.29.51 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:11:07 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.29.51 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:11:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.29.51 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 18 Aug 2026 01:11:08 GMT
ENV LANG=en_US.UTF-8
# Tue, 18 Aug 2026 01:11:08 GMT
ENV TZ=UTC
# Tue, 18 Aug 2026 01:11:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.29.51 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 18 Aug 2026 01:11:08 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 18 Aug 2026 01:11:08 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 18 Aug 2026 01:11:08 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 18 Aug 2026 01:11:08 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 18 Aug 2026 01:11:08 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 18 Aug 2026 01:11:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cd09ec2b98be327725d440858a3ac7fc821902bf3c05b2db8a4bef3b9276d79`  
		Last Modified: Tue, 18 Aug 2026 01:11:30 GMT  
		Size: 7.6 MB (7553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6983b0c23fc8d8dd5e54f0316f96b5788eebd34c94e83e32d95fad34689fa1f5`  
		Last Modified: Tue, 18 Aug 2026 01:11:34 GMT  
		Size: 192.1 MB (192113793 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7f45d90bbbf8c9d5392756491a7654feee3adb86f890129a167b695fcbd3b06`  
		Last Modified: Tue, 18 Aug 2026 01:11:30 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2db2118e7eb5fe22e936959fdd3bb58ecdcd5eb4bd53fa77ba542deeee84a480`  
		Last Modified: Tue, 18 Aug 2026 01:11:30 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e5f946feb7b2981ba830a9bdf608887e7b0ef382846f2539e64865fa8235913`  
		Last Modified: Tue, 18 Aug 2026 01:11:31 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9eaa77e879f3b67eedbcd311a161bbfb13a4bfa0c58d6be8885a24fbec7ef377`  
		Last Modified: Tue, 18 Aug 2026 01:11:31 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85c196c18dfbe1d0f13b08b5599f87bbdee86493edacdf594308b8789da4e701`  
		Last Modified: Tue, 18 Aug 2026 01:11:31 GMT  
		Size: 3.6 KB (3611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:25.8.29` - unknown; unknown

```console
$ docker pull clickhouse@sha256:2eb38e9730ac3d7e14151adc89ed3659818e81be2a9adcf3c4ee7f793dfd8d1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26234 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4807571627093de0d45df2a329c816509acb2590d53838a9d09d71aab373ee0d`

```dockerfile
```

-	Layers:
	-	`sha256:4fde6cf63650f8d67e0005c93bc6588245d6cbbf5915c1f6535f2b039abd3697`  
		Last Modified: Tue, 18 Aug 2026 01:11:30 GMT  
		Size: 26.2 KB (26234 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:25.8.29` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:50b4320d524bfa59a43caa324b06a12216d95e6079032e8146e91d97a738efb7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.2 MB (215151435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fcfeb316b27c916e9e4947bc184d4630a1a76b074b09a3887b779d26fdd34b6`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:35 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:35 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:37 GMT
ADD file:c4ec32d39509d0c1acf2ddbb89cdc1fb3ceeae66ef80238f2ba7df53758fb44a in / 
# Mon, 10 Aug 2026 17:38:38 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:10:48 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 18 Aug 2026 01:10:48 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 18 Aug 2026 01:10:48 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 18 Aug 2026 01:10:48 GMT
ARG REPO_CHANNEL=stable
# Tue, 18 Aug 2026 01:10:48 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 18 Aug 2026 01:10:48 GMT
ARG VERSION=25.8.29.51
# Tue, 18 Aug 2026 01:10:48 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 18 Aug 2026 01:11:22 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.29.51 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:11:22 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.29.51 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:11:23 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.29.51 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 18 Aug 2026 01:11:23 GMT
ENV LANG=en_US.UTF-8
# Tue, 18 Aug 2026 01:11:23 GMT
ENV TZ=UTC
# Tue, 18 Aug 2026 01:11:23 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.29.51 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 18 Aug 2026 01:11:23 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 18 Aug 2026 01:11:23 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 18 Aug 2026 01:11:23 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 18 Aug 2026 01:11:23 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 18 Aug 2026 01:11:23 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 18 Aug 2026 01:11:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e766ba30ec9421dd13111659e2817b9e871599d194e2779798f6484dc1c3ab8a`  
		Last Modified: Tue, 18 Aug 2026 01:11:42 GMT  
		Size: 7.5 MB (7533673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b68378530f69e401718e39d2cdf7913675fb10cea6ef37128c23fa33bf5c7672`  
		Last Modified: Tue, 18 Aug 2026 01:11:46 GMT  
		Size: 179.1 MB (179127285 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c90fc140e8ca5ef9ce9305e23a654f2566d53c28a5f471447310fe91b22a649`  
		Last Modified: Tue, 18 Aug 2026 01:11:42 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fa976d4191391ed7c8a100ac33ed8ea6da50b25f2b42c8590b79e8b041abadf`  
		Last Modified: Tue, 18 Aug 2026 01:11:42 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c471ea0269ad0c8ed4edd6c7f289864bc55c8c7561c8b9c816a99196379324e`  
		Last Modified: Tue, 18 Aug 2026 01:11:43 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:701705c51ee3c889360e86902d25f8e375b92df5b85a51d150be6e324ef856e2`  
		Last Modified: Tue, 18 Aug 2026 01:11:43 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3292a751626a7a66c5cded84e2bceec519f638b957c51f38e0d35216bc73b82c`  
		Last Modified: Tue, 18 Aug 2026 01:11:44 GMT  
		Size: 3.6 KB (3611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:25.8.29` - unknown; unknown

```console
$ docker pull clickhouse@sha256:b76e6c20f7cb88905abcda8370a21ae6440ef9d5ef06fceac736bb4ddf064f24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3330e517ed6e617de68009d7849ecfb01157d0389a05d629bb0fd3edf6047357`

```dockerfile
```

-	Layers:
	-	`sha256:f0e787882fb677be2efa2ca6ffc4457f555e8d0e02e8cda2038bb4ef472fcfc8`  
		Last Modified: Tue, 18 Aug 2026 01:11:42 GMT  
		Size: 26.4 KB (26423 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:25.8.29-jammy`

```console
$ docker pull clickhouse@sha256:0966657518e3a70152e94906e3a500c82162c8e2c23a6ffbec31eabfe494b5c2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:25.8.29-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:af2499e550ec44e34ba209766b04984b86db1e79215d94aa80bce3c4b7862aa1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.3 MB (230274210 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28b629649789a7ceb39b73e948c56018a208d003b3f978fe42c01882e8ced370`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:09 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:09 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:12 GMT
ADD file:799f4e238d67485cc109d93512f4fe6f75bafc26a3476772191154125e52201d in / 
# Mon, 10 Aug 2026 17:38:12 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:10:39 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 18 Aug 2026 01:10:39 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 18 Aug 2026 01:10:39 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 18 Aug 2026 01:10:39 GMT
ARG REPO_CHANNEL=stable
# Tue, 18 Aug 2026 01:10:39 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 18 Aug 2026 01:10:39 GMT
ARG VERSION=25.8.29.51
# Tue, 18 Aug 2026 01:10:39 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 18 Aug 2026 01:11:07 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.29.51 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:11:07 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.29.51 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:11:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.29.51 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 18 Aug 2026 01:11:08 GMT
ENV LANG=en_US.UTF-8
# Tue, 18 Aug 2026 01:11:08 GMT
ENV TZ=UTC
# Tue, 18 Aug 2026 01:11:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.29.51 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 18 Aug 2026 01:11:08 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 18 Aug 2026 01:11:08 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 18 Aug 2026 01:11:08 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 18 Aug 2026 01:11:08 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 18 Aug 2026 01:11:08 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 18 Aug 2026 01:11:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cd09ec2b98be327725d440858a3ac7fc821902bf3c05b2db8a4bef3b9276d79`  
		Last Modified: Tue, 18 Aug 2026 01:11:30 GMT  
		Size: 7.6 MB (7553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6983b0c23fc8d8dd5e54f0316f96b5788eebd34c94e83e32d95fad34689fa1f5`  
		Last Modified: Tue, 18 Aug 2026 01:11:34 GMT  
		Size: 192.1 MB (192113793 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7f45d90bbbf8c9d5392756491a7654feee3adb86f890129a167b695fcbd3b06`  
		Last Modified: Tue, 18 Aug 2026 01:11:30 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2db2118e7eb5fe22e936959fdd3bb58ecdcd5eb4bd53fa77ba542deeee84a480`  
		Last Modified: Tue, 18 Aug 2026 01:11:30 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e5f946feb7b2981ba830a9bdf608887e7b0ef382846f2539e64865fa8235913`  
		Last Modified: Tue, 18 Aug 2026 01:11:31 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9eaa77e879f3b67eedbcd311a161bbfb13a4bfa0c58d6be8885a24fbec7ef377`  
		Last Modified: Tue, 18 Aug 2026 01:11:31 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85c196c18dfbe1d0f13b08b5599f87bbdee86493edacdf594308b8789da4e701`  
		Last Modified: Tue, 18 Aug 2026 01:11:31 GMT  
		Size: 3.6 KB (3611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:25.8.29-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:2eb38e9730ac3d7e14151adc89ed3659818e81be2a9adcf3c4ee7f793dfd8d1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26234 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4807571627093de0d45df2a329c816509acb2590d53838a9d09d71aab373ee0d`

```dockerfile
```

-	Layers:
	-	`sha256:4fde6cf63650f8d67e0005c93bc6588245d6cbbf5915c1f6535f2b039abd3697`  
		Last Modified: Tue, 18 Aug 2026 01:11:30 GMT  
		Size: 26.2 KB (26234 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:25.8.29-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:50b4320d524bfa59a43caa324b06a12216d95e6079032e8146e91d97a738efb7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.2 MB (215151435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fcfeb316b27c916e9e4947bc184d4630a1a76b074b09a3887b779d26fdd34b6`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:35 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:35 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:37 GMT
ADD file:c4ec32d39509d0c1acf2ddbb89cdc1fb3ceeae66ef80238f2ba7df53758fb44a in / 
# Mon, 10 Aug 2026 17:38:38 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:10:48 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 18 Aug 2026 01:10:48 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 18 Aug 2026 01:10:48 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 18 Aug 2026 01:10:48 GMT
ARG REPO_CHANNEL=stable
# Tue, 18 Aug 2026 01:10:48 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 18 Aug 2026 01:10:48 GMT
ARG VERSION=25.8.29.51
# Tue, 18 Aug 2026 01:10:48 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 18 Aug 2026 01:11:22 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.29.51 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:11:22 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.29.51 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:11:23 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.29.51 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 18 Aug 2026 01:11:23 GMT
ENV LANG=en_US.UTF-8
# Tue, 18 Aug 2026 01:11:23 GMT
ENV TZ=UTC
# Tue, 18 Aug 2026 01:11:23 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.29.51 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 18 Aug 2026 01:11:23 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 18 Aug 2026 01:11:23 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 18 Aug 2026 01:11:23 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 18 Aug 2026 01:11:23 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 18 Aug 2026 01:11:23 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 18 Aug 2026 01:11:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e766ba30ec9421dd13111659e2817b9e871599d194e2779798f6484dc1c3ab8a`  
		Last Modified: Tue, 18 Aug 2026 01:11:42 GMT  
		Size: 7.5 MB (7533673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b68378530f69e401718e39d2cdf7913675fb10cea6ef37128c23fa33bf5c7672`  
		Last Modified: Tue, 18 Aug 2026 01:11:46 GMT  
		Size: 179.1 MB (179127285 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c90fc140e8ca5ef9ce9305e23a654f2566d53c28a5f471447310fe91b22a649`  
		Last Modified: Tue, 18 Aug 2026 01:11:42 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fa976d4191391ed7c8a100ac33ed8ea6da50b25f2b42c8590b79e8b041abadf`  
		Last Modified: Tue, 18 Aug 2026 01:11:42 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c471ea0269ad0c8ed4edd6c7f289864bc55c8c7561c8b9c816a99196379324e`  
		Last Modified: Tue, 18 Aug 2026 01:11:43 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:701705c51ee3c889360e86902d25f8e375b92df5b85a51d150be6e324ef856e2`  
		Last Modified: Tue, 18 Aug 2026 01:11:43 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3292a751626a7a66c5cded84e2bceec519f638b957c51f38e0d35216bc73b82c`  
		Last Modified: Tue, 18 Aug 2026 01:11:44 GMT  
		Size: 3.6 KB (3611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:25.8.29-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:b76e6c20f7cb88905abcda8370a21ae6440ef9d5ef06fceac736bb4ddf064f24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3330e517ed6e617de68009d7849ecfb01157d0389a05d629bb0fd3edf6047357`

```dockerfile
```

-	Layers:
	-	`sha256:f0e787882fb677be2efa2ca6ffc4457f555e8d0e02e8cda2038bb4ef472fcfc8`  
		Last Modified: Tue, 18 Aug 2026 01:11:42 GMT  
		Size: 26.4 KB (26423 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:25.8.29.51`

```console
$ docker pull clickhouse@sha256:0966657518e3a70152e94906e3a500c82162c8e2c23a6ffbec31eabfe494b5c2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:25.8.29.51` - linux; amd64

```console
$ docker pull clickhouse@sha256:af2499e550ec44e34ba209766b04984b86db1e79215d94aa80bce3c4b7862aa1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.3 MB (230274210 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28b629649789a7ceb39b73e948c56018a208d003b3f978fe42c01882e8ced370`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:09 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:09 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:12 GMT
ADD file:799f4e238d67485cc109d93512f4fe6f75bafc26a3476772191154125e52201d in / 
# Mon, 10 Aug 2026 17:38:12 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:10:39 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 18 Aug 2026 01:10:39 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 18 Aug 2026 01:10:39 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 18 Aug 2026 01:10:39 GMT
ARG REPO_CHANNEL=stable
# Tue, 18 Aug 2026 01:10:39 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 18 Aug 2026 01:10:39 GMT
ARG VERSION=25.8.29.51
# Tue, 18 Aug 2026 01:10:39 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 18 Aug 2026 01:11:07 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.29.51 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:11:07 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.29.51 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:11:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.29.51 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 18 Aug 2026 01:11:08 GMT
ENV LANG=en_US.UTF-8
# Tue, 18 Aug 2026 01:11:08 GMT
ENV TZ=UTC
# Tue, 18 Aug 2026 01:11:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.29.51 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 18 Aug 2026 01:11:08 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 18 Aug 2026 01:11:08 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 18 Aug 2026 01:11:08 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 18 Aug 2026 01:11:08 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 18 Aug 2026 01:11:08 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 18 Aug 2026 01:11:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cd09ec2b98be327725d440858a3ac7fc821902bf3c05b2db8a4bef3b9276d79`  
		Last Modified: Tue, 18 Aug 2026 01:11:30 GMT  
		Size: 7.6 MB (7553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6983b0c23fc8d8dd5e54f0316f96b5788eebd34c94e83e32d95fad34689fa1f5`  
		Last Modified: Tue, 18 Aug 2026 01:11:34 GMT  
		Size: 192.1 MB (192113793 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7f45d90bbbf8c9d5392756491a7654feee3adb86f890129a167b695fcbd3b06`  
		Last Modified: Tue, 18 Aug 2026 01:11:30 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2db2118e7eb5fe22e936959fdd3bb58ecdcd5eb4bd53fa77ba542deeee84a480`  
		Last Modified: Tue, 18 Aug 2026 01:11:30 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e5f946feb7b2981ba830a9bdf608887e7b0ef382846f2539e64865fa8235913`  
		Last Modified: Tue, 18 Aug 2026 01:11:31 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9eaa77e879f3b67eedbcd311a161bbfb13a4bfa0c58d6be8885a24fbec7ef377`  
		Last Modified: Tue, 18 Aug 2026 01:11:31 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85c196c18dfbe1d0f13b08b5599f87bbdee86493edacdf594308b8789da4e701`  
		Last Modified: Tue, 18 Aug 2026 01:11:31 GMT  
		Size: 3.6 KB (3611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:25.8.29.51` - unknown; unknown

```console
$ docker pull clickhouse@sha256:2eb38e9730ac3d7e14151adc89ed3659818e81be2a9adcf3c4ee7f793dfd8d1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26234 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4807571627093de0d45df2a329c816509acb2590d53838a9d09d71aab373ee0d`

```dockerfile
```

-	Layers:
	-	`sha256:4fde6cf63650f8d67e0005c93bc6588245d6cbbf5915c1f6535f2b039abd3697`  
		Last Modified: Tue, 18 Aug 2026 01:11:30 GMT  
		Size: 26.2 KB (26234 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:25.8.29.51` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:50b4320d524bfa59a43caa324b06a12216d95e6079032e8146e91d97a738efb7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.2 MB (215151435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fcfeb316b27c916e9e4947bc184d4630a1a76b074b09a3887b779d26fdd34b6`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:35 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:35 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:37 GMT
ADD file:c4ec32d39509d0c1acf2ddbb89cdc1fb3ceeae66ef80238f2ba7df53758fb44a in / 
# Mon, 10 Aug 2026 17:38:38 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:10:48 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 18 Aug 2026 01:10:48 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 18 Aug 2026 01:10:48 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 18 Aug 2026 01:10:48 GMT
ARG REPO_CHANNEL=stable
# Tue, 18 Aug 2026 01:10:48 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 18 Aug 2026 01:10:48 GMT
ARG VERSION=25.8.29.51
# Tue, 18 Aug 2026 01:10:48 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 18 Aug 2026 01:11:22 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.29.51 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:11:22 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.29.51 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:11:23 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.29.51 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 18 Aug 2026 01:11:23 GMT
ENV LANG=en_US.UTF-8
# Tue, 18 Aug 2026 01:11:23 GMT
ENV TZ=UTC
# Tue, 18 Aug 2026 01:11:23 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.29.51 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 18 Aug 2026 01:11:23 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 18 Aug 2026 01:11:23 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 18 Aug 2026 01:11:23 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 18 Aug 2026 01:11:23 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 18 Aug 2026 01:11:23 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 18 Aug 2026 01:11:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e766ba30ec9421dd13111659e2817b9e871599d194e2779798f6484dc1c3ab8a`  
		Last Modified: Tue, 18 Aug 2026 01:11:42 GMT  
		Size: 7.5 MB (7533673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b68378530f69e401718e39d2cdf7913675fb10cea6ef37128c23fa33bf5c7672`  
		Last Modified: Tue, 18 Aug 2026 01:11:46 GMT  
		Size: 179.1 MB (179127285 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c90fc140e8ca5ef9ce9305e23a654f2566d53c28a5f471447310fe91b22a649`  
		Last Modified: Tue, 18 Aug 2026 01:11:42 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fa976d4191391ed7c8a100ac33ed8ea6da50b25f2b42c8590b79e8b041abadf`  
		Last Modified: Tue, 18 Aug 2026 01:11:42 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c471ea0269ad0c8ed4edd6c7f289864bc55c8c7561c8b9c816a99196379324e`  
		Last Modified: Tue, 18 Aug 2026 01:11:43 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:701705c51ee3c889360e86902d25f8e375b92df5b85a51d150be6e324ef856e2`  
		Last Modified: Tue, 18 Aug 2026 01:11:43 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3292a751626a7a66c5cded84e2bceec519f638b957c51f38e0d35216bc73b82c`  
		Last Modified: Tue, 18 Aug 2026 01:11:44 GMT  
		Size: 3.6 KB (3611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:25.8.29.51` - unknown; unknown

```console
$ docker pull clickhouse@sha256:b76e6c20f7cb88905abcda8370a21ae6440ef9d5ef06fceac736bb4ddf064f24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3330e517ed6e617de68009d7849ecfb01157d0389a05d629bb0fd3edf6047357`

```dockerfile
```

-	Layers:
	-	`sha256:f0e787882fb677be2efa2ca6ffc4457f555e8d0e02e8cda2038bb4ef472fcfc8`  
		Last Modified: Tue, 18 Aug 2026 01:11:42 GMT  
		Size: 26.4 KB (26423 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:25.8.29.51-jammy`

```console
$ docker pull clickhouse@sha256:0966657518e3a70152e94906e3a500c82162c8e2c23a6ffbec31eabfe494b5c2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:25.8.29.51-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:af2499e550ec44e34ba209766b04984b86db1e79215d94aa80bce3c4b7862aa1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.3 MB (230274210 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28b629649789a7ceb39b73e948c56018a208d003b3f978fe42c01882e8ced370`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:09 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:09 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:12 GMT
ADD file:799f4e238d67485cc109d93512f4fe6f75bafc26a3476772191154125e52201d in / 
# Mon, 10 Aug 2026 17:38:12 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:10:39 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 18 Aug 2026 01:10:39 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 18 Aug 2026 01:10:39 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 18 Aug 2026 01:10:39 GMT
ARG REPO_CHANNEL=stable
# Tue, 18 Aug 2026 01:10:39 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 18 Aug 2026 01:10:39 GMT
ARG VERSION=25.8.29.51
# Tue, 18 Aug 2026 01:10:39 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 18 Aug 2026 01:11:07 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.29.51 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:11:07 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.29.51 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:11:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.29.51 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 18 Aug 2026 01:11:08 GMT
ENV LANG=en_US.UTF-8
# Tue, 18 Aug 2026 01:11:08 GMT
ENV TZ=UTC
# Tue, 18 Aug 2026 01:11:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.29.51 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 18 Aug 2026 01:11:08 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 18 Aug 2026 01:11:08 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 18 Aug 2026 01:11:08 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 18 Aug 2026 01:11:08 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 18 Aug 2026 01:11:08 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 18 Aug 2026 01:11:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cd09ec2b98be327725d440858a3ac7fc821902bf3c05b2db8a4bef3b9276d79`  
		Last Modified: Tue, 18 Aug 2026 01:11:30 GMT  
		Size: 7.6 MB (7553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6983b0c23fc8d8dd5e54f0316f96b5788eebd34c94e83e32d95fad34689fa1f5`  
		Last Modified: Tue, 18 Aug 2026 01:11:34 GMT  
		Size: 192.1 MB (192113793 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7f45d90bbbf8c9d5392756491a7654feee3adb86f890129a167b695fcbd3b06`  
		Last Modified: Tue, 18 Aug 2026 01:11:30 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2db2118e7eb5fe22e936959fdd3bb58ecdcd5eb4bd53fa77ba542deeee84a480`  
		Last Modified: Tue, 18 Aug 2026 01:11:30 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e5f946feb7b2981ba830a9bdf608887e7b0ef382846f2539e64865fa8235913`  
		Last Modified: Tue, 18 Aug 2026 01:11:31 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9eaa77e879f3b67eedbcd311a161bbfb13a4bfa0c58d6be8885a24fbec7ef377`  
		Last Modified: Tue, 18 Aug 2026 01:11:31 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85c196c18dfbe1d0f13b08b5599f87bbdee86493edacdf594308b8789da4e701`  
		Last Modified: Tue, 18 Aug 2026 01:11:31 GMT  
		Size: 3.6 KB (3611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:25.8.29.51-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:2eb38e9730ac3d7e14151adc89ed3659818e81be2a9adcf3c4ee7f793dfd8d1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26234 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4807571627093de0d45df2a329c816509acb2590d53838a9d09d71aab373ee0d`

```dockerfile
```

-	Layers:
	-	`sha256:4fde6cf63650f8d67e0005c93bc6588245d6cbbf5915c1f6535f2b039abd3697`  
		Last Modified: Tue, 18 Aug 2026 01:11:30 GMT  
		Size: 26.2 KB (26234 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:25.8.29.51-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:50b4320d524bfa59a43caa324b06a12216d95e6079032e8146e91d97a738efb7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.2 MB (215151435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fcfeb316b27c916e9e4947bc184d4630a1a76b074b09a3887b779d26fdd34b6`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:35 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:35 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:37 GMT
ADD file:c4ec32d39509d0c1acf2ddbb89cdc1fb3ceeae66ef80238f2ba7df53758fb44a in / 
# Mon, 10 Aug 2026 17:38:38 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:10:48 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 18 Aug 2026 01:10:48 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 18 Aug 2026 01:10:48 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 18 Aug 2026 01:10:48 GMT
ARG REPO_CHANNEL=stable
# Tue, 18 Aug 2026 01:10:48 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 18 Aug 2026 01:10:48 GMT
ARG VERSION=25.8.29.51
# Tue, 18 Aug 2026 01:10:48 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 18 Aug 2026 01:11:22 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.29.51 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:11:22 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.29.51 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:11:23 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.29.51 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 18 Aug 2026 01:11:23 GMT
ENV LANG=en_US.UTF-8
# Tue, 18 Aug 2026 01:11:23 GMT
ENV TZ=UTC
# Tue, 18 Aug 2026 01:11:23 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.29.51 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 18 Aug 2026 01:11:23 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 18 Aug 2026 01:11:23 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 18 Aug 2026 01:11:23 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 18 Aug 2026 01:11:23 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 18 Aug 2026 01:11:23 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 18 Aug 2026 01:11:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e766ba30ec9421dd13111659e2817b9e871599d194e2779798f6484dc1c3ab8a`  
		Last Modified: Tue, 18 Aug 2026 01:11:42 GMT  
		Size: 7.5 MB (7533673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b68378530f69e401718e39d2cdf7913675fb10cea6ef37128c23fa33bf5c7672`  
		Last Modified: Tue, 18 Aug 2026 01:11:46 GMT  
		Size: 179.1 MB (179127285 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c90fc140e8ca5ef9ce9305e23a654f2566d53c28a5f471447310fe91b22a649`  
		Last Modified: Tue, 18 Aug 2026 01:11:42 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fa976d4191391ed7c8a100ac33ed8ea6da50b25f2b42c8590b79e8b041abadf`  
		Last Modified: Tue, 18 Aug 2026 01:11:42 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c471ea0269ad0c8ed4edd6c7f289864bc55c8c7561c8b9c816a99196379324e`  
		Last Modified: Tue, 18 Aug 2026 01:11:43 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:701705c51ee3c889360e86902d25f8e375b92df5b85a51d150be6e324ef856e2`  
		Last Modified: Tue, 18 Aug 2026 01:11:43 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3292a751626a7a66c5cded84e2bceec519f638b957c51f38e0d35216bc73b82c`  
		Last Modified: Tue, 18 Aug 2026 01:11:44 GMT  
		Size: 3.6 KB (3611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:25.8.29.51-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:b76e6c20f7cb88905abcda8370a21ae6440ef9d5ef06fceac736bb4ddf064f24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3330e517ed6e617de68009d7849ecfb01157d0389a05d629bb0fd3edf6047357`

```dockerfile
```

-	Layers:
	-	`sha256:f0e787882fb677be2efa2ca6ffc4457f555e8d0e02e8cda2038bb4ef472fcfc8`  
		Last Modified: Tue, 18 Aug 2026 01:11:42 GMT  
		Size: 26.4 KB (26423 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.3`

```console
$ docker pull clickhouse@sha256:27a93a375287894e8be4e9720c01d39ec5b862a241cfe73bb634472db9d6a75f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.3` - linux; amd64

```console
$ docker pull clickhouse@sha256:50be38ac177482e5b57e700964f3ad2f78528a8ee2619d4bc109907ecf3fe4a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.5 MB (265493031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2d51636384c362f424a59231f93024c3aec6d8032b028e5f9feeac17e775c22`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:09 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:09 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:12 GMT
ADD file:799f4e238d67485cc109d93512f4fe6f75bafc26a3476772191154125e52201d in / 
# Mon, 10 Aug 2026 17:38:12 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:10:28 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 18 Aug 2026 01:10:28 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 18 Aug 2026 01:10:28 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 18 Aug 2026 01:10:28 GMT
ARG REPO_CHANNEL=stable
# Tue, 18 Aug 2026 01:10:28 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 18 Aug 2026 01:10:28 GMT
ARG VERSION=26.3.17.110
# Tue, 18 Aug 2026 01:10:28 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 18 Aug 2026 01:10:53 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:10:54 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:10:55 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 18 Aug 2026 01:10:55 GMT
ENV LANG=en_US.UTF-8
# Tue, 18 Aug 2026 01:10:55 GMT
ENV TZ=UTC
# Tue, 18 Aug 2026 01:10:55 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 18 Aug 2026 01:10:55 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 18 Aug 2026 01:10:55 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 18 Aug 2026 01:10:55 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 18 Aug 2026 01:10:55 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 18 Aug 2026 01:10:55 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 18 Aug 2026 01:10:55 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c007a967a77ef4ae4896ca1fa6286f934255694ffeef8def2610ebeae1871a45`  
		Last Modified: Tue, 18 Aug 2026 01:11:17 GMT  
		Size: 7.6 MB (7553497 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cc87778a5d1bbb55721e8001d30836754a58503f9e1c1c538356a96beba8b58`  
		Last Modified: Tue, 18 Aug 2026 01:11:21 GMT  
		Size: 227.3 MB (227332541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf6b2533179b8ad4fa379a9ebb94d47e68bea33d34e047f3d49de84e513ad6e9`  
		Last Modified: Tue, 18 Aug 2026 01:11:17 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8a2fe23e3cfab7bb9cfe001498d449f031d5ba03ab66bdafff5a01d46bec7bd`  
		Last Modified: Tue, 18 Aug 2026 01:11:17 GMT  
		Size: 865.7 KB (865748 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42d2f330cdc4ece828cfdb71294f8e31b341b1a876e87394fe5be77ec54087ce`  
		Last Modified: Tue, 18 Aug 2026 01:11:18 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9189511d45f7506a77b25f2c245623821682462cea3d3d38ab2bac3202aa56e4`  
		Last Modified: Tue, 18 Aug 2026 01:11:18 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e053ffcdeee9a8dd99ebce9bb1c9d1c230dd21b3dbb48d476a6bfe955fca5b38`  
		Last Modified: Tue, 18 Aug 2026 01:11:18 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3` - unknown; unknown

```console
$ docker pull clickhouse@sha256:924a5f58088353a2d12baeb0ea9771d6811fd7f536b02236da8efb178d1a55d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.9 KB (26858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50356986ff0eb4a0373dde05199e575d8c2b6c6c194b57650826dc3f614dc7dc`

```dockerfile
```

-	Layers:
	-	`sha256:fa30235cad1a80bf99a18bf4538df0035530d23a7c83d8fc4bc57846de035a4e`  
		Last Modified: Tue, 18 Aug 2026 01:11:17 GMT  
		Size: 26.9 KB (26858 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.3` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:c9b49ee2abe5b0f457f9a05ea291fc6efc1006dd1771cc787df4f3eb6b536ca0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.8 MB (246812524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60dc437ed8faaca4b2c35b5318681310601794107a9323acd9ec1a9774628085`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:35 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:35 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:37 GMT
ADD file:c4ec32d39509d0c1acf2ddbb89cdc1fb3ceeae66ef80238f2ba7df53758fb44a in / 
# Mon, 10 Aug 2026 17:38:38 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:10:42 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 18 Aug 2026 01:10:42 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 18 Aug 2026 01:10:42 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 18 Aug 2026 01:10:42 GMT
ARG REPO_CHANNEL=stable
# Tue, 18 Aug 2026 01:10:42 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 18 Aug 2026 01:10:42 GMT
ARG VERSION=26.3.17.110
# Tue, 18 Aug 2026 01:10:42 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 18 Aug 2026 01:11:15 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:11:15 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:11:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 18 Aug 2026 01:11:16 GMT
ENV LANG=en_US.UTF-8
# Tue, 18 Aug 2026 01:11:16 GMT
ENV TZ=UTC
# Tue, 18 Aug 2026 01:11:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 18 Aug 2026 01:11:16 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 18 Aug 2026 01:11:16 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 18 Aug 2026 01:11:16 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 18 Aug 2026 01:11:16 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 18 Aug 2026 01:11:16 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 18 Aug 2026 01:11:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d5f1ff18801439ad32a21f50c3e5a40e29586dea76fb9a7ded54ef3dd1528ff`  
		Last Modified: Tue, 18 Aug 2026 01:11:39 GMT  
		Size: 7.5 MB (7533635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7854a2decae9770a9479b0f4edc0c7e8c4c774008c153e76ded0a4b27ebbd03c`  
		Last Modified: Tue, 18 Aug 2026 01:11:45 GMT  
		Size: 210.8 MB (210788390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47773b2525a17cc1082287d8a6628a18913c3aa9785f976f51002e1d1a39377f`  
		Last Modified: Tue, 18 Aug 2026 01:11:39 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4420e94d73693bdf28051cad5331606b68149a042f9d282069a965dfeaf4425`  
		Last Modified: Tue, 18 Aug 2026 01:11:39 GMT  
		Size: 865.7 KB (865748 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea01dd8041db9500791f414bb246a2d3fcbab5bad76e46def340a1dc6218e153`  
		Last Modified: Tue, 18 Aug 2026 01:11:40 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90ab0a97bfe0578b3d0ab9f0a813633dddd5c75f4b76581e84b02a4d34ced2f9`  
		Last Modified: Tue, 18 Aug 2026 01:11:40 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e9411c8916a808e9a89328db5a5d6e679d4430b2bbf43e233116756bfd35462`  
		Last Modified: Tue, 18 Aug 2026 01:11:40 GMT  
		Size: 3.6 KB (3636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3` - unknown; unknown

```console
$ docker pull clickhouse@sha256:04b553d85bf39f5862a439f4007a51a8bc3c8466a630b62ae9a4230fbf37b9f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.1 KB (27070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2036bb22bbc9d1a1313008ed809a95e15e231405e25c08bb861b9a36c3859b70`

```dockerfile
```

-	Layers:
	-	`sha256:eb52f045a67c4d0e69ece241667279de99489c338abce0b03d389784b9819e60`  
		Last Modified: Tue, 18 Aug 2026 01:11:38 GMT  
		Size: 27.1 KB (27070 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.3-jammy`

```console
$ docker pull clickhouse@sha256:27a93a375287894e8be4e9720c01d39ec5b862a241cfe73bb634472db9d6a75f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.3-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:50be38ac177482e5b57e700964f3ad2f78528a8ee2619d4bc109907ecf3fe4a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.5 MB (265493031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2d51636384c362f424a59231f93024c3aec6d8032b028e5f9feeac17e775c22`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:09 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:09 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:12 GMT
ADD file:799f4e238d67485cc109d93512f4fe6f75bafc26a3476772191154125e52201d in / 
# Mon, 10 Aug 2026 17:38:12 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:10:28 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 18 Aug 2026 01:10:28 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 18 Aug 2026 01:10:28 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 18 Aug 2026 01:10:28 GMT
ARG REPO_CHANNEL=stable
# Tue, 18 Aug 2026 01:10:28 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 18 Aug 2026 01:10:28 GMT
ARG VERSION=26.3.17.110
# Tue, 18 Aug 2026 01:10:28 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 18 Aug 2026 01:10:53 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:10:54 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:10:55 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 18 Aug 2026 01:10:55 GMT
ENV LANG=en_US.UTF-8
# Tue, 18 Aug 2026 01:10:55 GMT
ENV TZ=UTC
# Tue, 18 Aug 2026 01:10:55 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 18 Aug 2026 01:10:55 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 18 Aug 2026 01:10:55 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 18 Aug 2026 01:10:55 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 18 Aug 2026 01:10:55 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 18 Aug 2026 01:10:55 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 18 Aug 2026 01:10:55 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c007a967a77ef4ae4896ca1fa6286f934255694ffeef8def2610ebeae1871a45`  
		Last Modified: Tue, 18 Aug 2026 01:11:17 GMT  
		Size: 7.6 MB (7553497 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cc87778a5d1bbb55721e8001d30836754a58503f9e1c1c538356a96beba8b58`  
		Last Modified: Tue, 18 Aug 2026 01:11:21 GMT  
		Size: 227.3 MB (227332541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf6b2533179b8ad4fa379a9ebb94d47e68bea33d34e047f3d49de84e513ad6e9`  
		Last Modified: Tue, 18 Aug 2026 01:11:17 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8a2fe23e3cfab7bb9cfe001498d449f031d5ba03ab66bdafff5a01d46bec7bd`  
		Last Modified: Tue, 18 Aug 2026 01:11:17 GMT  
		Size: 865.7 KB (865748 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42d2f330cdc4ece828cfdb71294f8e31b341b1a876e87394fe5be77ec54087ce`  
		Last Modified: Tue, 18 Aug 2026 01:11:18 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9189511d45f7506a77b25f2c245623821682462cea3d3d38ab2bac3202aa56e4`  
		Last Modified: Tue, 18 Aug 2026 01:11:18 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e053ffcdeee9a8dd99ebce9bb1c9d1c230dd21b3dbb48d476a6bfe955fca5b38`  
		Last Modified: Tue, 18 Aug 2026 01:11:18 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:924a5f58088353a2d12baeb0ea9771d6811fd7f536b02236da8efb178d1a55d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.9 KB (26858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50356986ff0eb4a0373dde05199e575d8c2b6c6c194b57650826dc3f614dc7dc`

```dockerfile
```

-	Layers:
	-	`sha256:fa30235cad1a80bf99a18bf4538df0035530d23a7c83d8fc4bc57846de035a4e`  
		Last Modified: Tue, 18 Aug 2026 01:11:17 GMT  
		Size: 26.9 KB (26858 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.3-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:c9b49ee2abe5b0f457f9a05ea291fc6efc1006dd1771cc787df4f3eb6b536ca0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.8 MB (246812524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60dc437ed8faaca4b2c35b5318681310601794107a9323acd9ec1a9774628085`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:35 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:35 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:37 GMT
ADD file:c4ec32d39509d0c1acf2ddbb89cdc1fb3ceeae66ef80238f2ba7df53758fb44a in / 
# Mon, 10 Aug 2026 17:38:38 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:10:42 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 18 Aug 2026 01:10:42 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 18 Aug 2026 01:10:42 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 18 Aug 2026 01:10:42 GMT
ARG REPO_CHANNEL=stable
# Tue, 18 Aug 2026 01:10:42 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 18 Aug 2026 01:10:42 GMT
ARG VERSION=26.3.17.110
# Tue, 18 Aug 2026 01:10:42 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 18 Aug 2026 01:11:15 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:11:15 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:11:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 18 Aug 2026 01:11:16 GMT
ENV LANG=en_US.UTF-8
# Tue, 18 Aug 2026 01:11:16 GMT
ENV TZ=UTC
# Tue, 18 Aug 2026 01:11:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 18 Aug 2026 01:11:16 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 18 Aug 2026 01:11:16 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 18 Aug 2026 01:11:16 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 18 Aug 2026 01:11:16 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 18 Aug 2026 01:11:16 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 18 Aug 2026 01:11:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d5f1ff18801439ad32a21f50c3e5a40e29586dea76fb9a7ded54ef3dd1528ff`  
		Last Modified: Tue, 18 Aug 2026 01:11:39 GMT  
		Size: 7.5 MB (7533635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7854a2decae9770a9479b0f4edc0c7e8c4c774008c153e76ded0a4b27ebbd03c`  
		Last Modified: Tue, 18 Aug 2026 01:11:45 GMT  
		Size: 210.8 MB (210788390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47773b2525a17cc1082287d8a6628a18913c3aa9785f976f51002e1d1a39377f`  
		Last Modified: Tue, 18 Aug 2026 01:11:39 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4420e94d73693bdf28051cad5331606b68149a042f9d282069a965dfeaf4425`  
		Last Modified: Tue, 18 Aug 2026 01:11:39 GMT  
		Size: 865.7 KB (865748 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea01dd8041db9500791f414bb246a2d3fcbab5bad76e46def340a1dc6218e153`  
		Last Modified: Tue, 18 Aug 2026 01:11:40 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90ab0a97bfe0578b3d0ab9f0a813633dddd5c75f4b76581e84b02a4d34ced2f9`  
		Last Modified: Tue, 18 Aug 2026 01:11:40 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e9411c8916a808e9a89328db5a5d6e679d4430b2bbf43e233116756bfd35462`  
		Last Modified: Tue, 18 Aug 2026 01:11:40 GMT  
		Size: 3.6 KB (3636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:04b553d85bf39f5862a439f4007a51a8bc3c8466a630b62ae9a4230fbf37b9f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.1 KB (27070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2036bb22bbc9d1a1313008ed809a95e15e231405e25c08bb861b9a36c3859b70`

```dockerfile
```

-	Layers:
	-	`sha256:eb52f045a67c4d0e69ece241667279de99489c338abce0b03d389784b9819e60`  
		Last Modified: Tue, 18 Aug 2026 01:11:38 GMT  
		Size: 27.1 KB (27070 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.3.17`

```console
$ docker pull clickhouse@sha256:27a93a375287894e8be4e9720c01d39ec5b862a241cfe73bb634472db9d6a75f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.3.17` - linux; amd64

```console
$ docker pull clickhouse@sha256:50be38ac177482e5b57e700964f3ad2f78528a8ee2619d4bc109907ecf3fe4a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.5 MB (265493031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2d51636384c362f424a59231f93024c3aec6d8032b028e5f9feeac17e775c22`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:09 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:09 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:12 GMT
ADD file:799f4e238d67485cc109d93512f4fe6f75bafc26a3476772191154125e52201d in / 
# Mon, 10 Aug 2026 17:38:12 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:10:28 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 18 Aug 2026 01:10:28 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 18 Aug 2026 01:10:28 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 18 Aug 2026 01:10:28 GMT
ARG REPO_CHANNEL=stable
# Tue, 18 Aug 2026 01:10:28 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 18 Aug 2026 01:10:28 GMT
ARG VERSION=26.3.17.110
# Tue, 18 Aug 2026 01:10:28 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 18 Aug 2026 01:10:53 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:10:54 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:10:55 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 18 Aug 2026 01:10:55 GMT
ENV LANG=en_US.UTF-8
# Tue, 18 Aug 2026 01:10:55 GMT
ENV TZ=UTC
# Tue, 18 Aug 2026 01:10:55 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 18 Aug 2026 01:10:55 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 18 Aug 2026 01:10:55 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 18 Aug 2026 01:10:55 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 18 Aug 2026 01:10:55 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 18 Aug 2026 01:10:55 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 18 Aug 2026 01:10:55 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c007a967a77ef4ae4896ca1fa6286f934255694ffeef8def2610ebeae1871a45`  
		Last Modified: Tue, 18 Aug 2026 01:11:17 GMT  
		Size: 7.6 MB (7553497 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cc87778a5d1bbb55721e8001d30836754a58503f9e1c1c538356a96beba8b58`  
		Last Modified: Tue, 18 Aug 2026 01:11:21 GMT  
		Size: 227.3 MB (227332541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf6b2533179b8ad4fa379a9ebb94d47e68bea33d34e047f3d49de84e513ad6e9`  
		Last Modified: Tue, 18 Aug 2026 01:11:17 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8a2fe23e3cfab7bb9cfe001498d449f031d5ba03ab66bdafff5a01d46bec7bd`  
		Last Modified: Tue, 18 Aug 2026 01:11:17 GMT  
		Size: 865.7 KB (865748 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42d2f330cdc4ece828cfdb71294f8e31b341b1a876e87394fe5be77ec54087ce`  
		Last Modified: Tue, 18 Aug 2026 01:11:18 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9189511d45f7506a77b25f2c245623821682462cea3d3d38ab2bac3202aa56e4`  
		Last Modified: Tue, 18 Aug 2026 01:11:18 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e053ffcdeee9a8dd99ebce9bb1c9d1c230dd21b3dbb48d476a6bfe955fca5b38`  
		Last Modified: Tue, 18 Aug 2026 01:11:18 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.17` - unknown; unknown

```console
$ docker pull clickhouse@sha256:924a5f58088353a2d12baeb0ea9771d6811fd7f536b02236da8efb178d1a55d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.9 KB (26858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50356986ff0eb4a0373dde05199e575d8c2b6c6c194b57650826dc3f614dc7dc`

```dockerfile
```

-	Layers:
	-	`sha256:fa30235cad1a80bf99a18bf4538df0035530d23a7c83d8fc4bc57846de035a4e`  
		Last Modified: Tue, 18 Aug 2026 01:11:17 GMT  
		Size: 26.9 KB (26858 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.3.17` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:c9b49ee2abe5b0f457f9a05ea291fc6efc1006dd1771cc787df4f3eb6b536ca0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.8 MB (246812524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60dc437ed8faaca4b2c35b5318681310601794107a9323acd9ec1a9774628085`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:35 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:35 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:37 GMT
ADD file:c4ec32d39509d0c1acf2ddbb89cdc1fb3ceeae66ef80238f2ba7df53758fb44a in / 
# Mon, 10 Aug 2026 17:38:38 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:10:42 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 18 Aug 2026 01:10:42 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 18 Aug 2026 01:10:42 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 18 Aug 2026 01:10:42 GMT
ARG REPO_CHANNEL=stable
# Tue, 18 Aug 2026 01:10:42 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 18 Aug 2026 01:10:42 GMT
ARG VERSION=26.3.17.110
# Tue, 18 Aug 2026 01:10:42 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 18 Aug 2026 01:11:15 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:11:15 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:11:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 18 Aug 2026 01:11:16 GMT
ENV LANG=en_US.UTF-8
# Tue, 18 Aug 2026 01:11:16 GMT
ENV TZ=UTC
# Tue, 18 Aug 2026 01:11:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 18 Aug 2026 01:11:16 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 18 Aug 2026 01:11:16 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 18 Aug 2026 01:11:16 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 18 Aug 2026 01:11:16 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 18 Aug 2026 01:11:16 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 18 Aug 2026 01:11:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d5f1ff18801439ad32a21f50c3e5a40e29586dea76fb9a7ded54ef3dd1528ff`  
		Last Modified: Tue, 18 Aug 2026 01:11:39 GMT  
		Size: 7.5 MB (7533635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7854a2decae9770a9479b0f4edc0c7e8c4c774008c153e76ded0a4b27ebbd03c`  
		Last Modified: Tue, 18 Aug 2026 01:11:45 GMT  
		Size: 210.8 MB (210788390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47773b2525a17cc1082287d8a6628a18913c3aa9785f976f51002e1d1a39377f`  
		Last Modified: Tue, 18 Aug 2026 01:11:39 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4420e94d73693bdf28051cad5331606b68149a042f9d282069a965dfeaf4425`  
		Last Modified: Tue, 18 Aug 2026 01:11:39 GMT  
		Size: 865.7 KB (865748 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea01dd8041db9500791f414bb246a2d3fcbab5bad76e46def340a1dc6218e153`  
		Last Modified: Tue, 18 Aug 2026 01:11:40 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90ab0a97bfe0578b3d0ab9f0a813633dddd5c75f4b76581e84b02a4d34ced2f9`  
		Last Modified: Tue, 18 Aug 2026 01:11:40 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e9411c8916a808e9a89328db5a5d6e679d4430b2bbf43e233116756bfd35462`  
		Last Modified: Tue, 18 Aug 2026 01:11:40 GMT  
		Size: 3.6 KB (3636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.17` - unknown; unknown

```console
$ docker pull clickhouse@sha256:04b553d85bf39f5862a439f4007a51a8bc3c8466a630b62ae9a4230fbf37b9f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.1 KB (27070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2036bb22bbc9d1a1313008ed809a95e15e231405e25c08bb861b9a36c3859b70`

```dockerfile
```

-	Layers:
	-	`sha256:eb52f045a67c4d0e69ece241667279de99489c338abce0b03d389784b9819e60`  
		Last Modified: Tue, 18 Aug 2026 01:11:38 GMT  
		Size: 27.1 KB (27070 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.3.17-jammy`

```console
$ docker pull clickhouse@sha256:27a93a375287894e8be4e9720c01d39ec5b862a241cfe73bb634472db9d6a75f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.3.17-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:50be38ac177482e5b57e700964f3ad2f78528a8ee2619d4bc109907ecf3fe4a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.5 MB (265493031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2d51636384c362f424a59231f93024c3aec6d8032b028e5f9feeac17e775c22`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:09 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:09 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:12 GMT
ADD file:799f4e238d67485cc109d93512f4fe6f75bafc26a3476772191154125e52201d in / 
# Mon, 10 Aug 2026 17:38:12 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:10:28 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 18 Aug 2026 01:10:28 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 18 Aug 2026 01:10:28 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 18 Aug 2026 01:10:28 GMT
ARG REPO_CHANNEL=stable
# Tue, 18 Aug 2026 01:10:28 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 18 Aug 2026 01:10:28 GMT
ARG VERSION=26.3.17.110
# Tue, 18 Aug 2026 01:10:28 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 18 Aug 2026 01:10:53 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:10:54 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:10:55 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 18 Aug 2026 01:10:55 GMT
ENV LANG=en_US.UTF-8
# Tue, 18 Aug 2026 01:10:55 GMT
ENV TZ=UTC
# Tue, 18 Aug 2026 01:10:55 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 18 Aug 2026 01:10:55 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 18 Aug 2026 01:10:55 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 18 Aug 2026 01:10:55 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 18 Aug 2026 01:10:55 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 18 Aug 2026 01:10:55 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 18 Aug 2026 01:10:55 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c007a967a77ef4ae4896ca1fa6286f934255694ffeef8def2610ebeae1871a45`  
		Last Modified: Tue, 18 Aug 2026 01:11:17 GMT  
		Size: 7.6 MB (7553497 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cc87778a5d1bbb55721e8001d30836754a58503f9e1c1c538356a96beba8b58`  
		Last Modified: Tue, 18 Aug 2026 01:11:21 GMT  
		Size: 227.3 MB (227332541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf6b2533179b8ad4fa379a9ebb94d47e68bea33d34e047f3d49de84e513ad6e9`  
		Last Modified: Tue, 18 Aug 2026 01:11:17 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8a2fe23e3cfab7bb9cfe001498d449f031d5ba03ab66bdafff5a01d46bec7bd`  
		Last Modified: Tue, 18 Aug 2026 01:11:17 GMT  
		Size: 865.7 KB (865748 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42d2f330cdc4ece828cfdb71294f8e31b341b1a876e87394fe5be77ec54087ce`  
		Last Modified: Tue, 18 Aug 2026 01:11:18 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9189511d45f7506a77b25f2c245623821682462cea3d3d38ab2bac3202aa56e4`  
		Last Modified: Tue, 18 Aug 2026 01:11:18 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e053ffcdeee9a8dd99ebce9bb1c9d1c230dd21b3dbb48d476a6bfe955fca5b38`  
		Last Modified: Tue, 18 Aug 2026 01:11:18 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.17-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:924a5f58088353a2d12baeb0ea9771d6811fd7f536b02236da8efb178d1a55d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.9 KB (26858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50356986ff0eb4a0373dde05199e575d8c2b6c6c194b57650826dc3f614dc7dc`

```dockerfile
```

-	Layers:
	-	`sha256:fa30235cad1a80bf99a18bf4538df0035530d23a7c83d8fc4bc57846de035a4e`  
		Last Modified: Tue, 18 Aug 2026 01:11:17 GMT  
		Size: 26.9 KB (26858 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.3.17-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:c9b49ee2abe5b0f457f9a05ea291fc6efc1006dd1771cc787df4f3eb6b536ca0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.8 MB (246812524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60dc437ed8faaca4b2c35b5318681310601794107a9323acd9ec1a9774628085`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:35 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:35 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:37 GMT
ADD file:c4ec32d39509d0c1acf2ddbb89cdc1fb3ceeae66ef80238f2ba7df53758fb44a in / 
# Mon, 10 Aug 2026 17:38:38 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:10:42 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 18 Aug 2026 01:10:42 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 18 Aug 2026 01:10:42 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 18 Aug 2026 01:10:42 GMT
ARG REPO_CHANNEL=stable
# Tue, 18 Aug 2026 01:10:42 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 18 Aug 2026 01:10:42 GMT
ARG VERSION=26.3.17.110
# Tue, 18 Aug 2026 01:10:42 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 18 Aug 2026 01:11:15 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:11:15 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:11:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 18 Aug 2026 01:11:16 GMT
ENV LANG=en_US.UTF-8
# Tue, 18 Aug 2026 01:11:16 GMT
ENV TZ=UTC
# Tue, 18 Aug 2026 01:11:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 18 Aug 2026 01:11:16 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 18 Aug 2026 01:11:16 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 18 Aug 2026 01:11:16 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 18 Aug 2026 01:11:16 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 18 Aug 2026 01:11:16 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 18 Aug 2026 01:11:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d5f1ff18801439ad32a21f50c3e5a40e29586dea76fb9a7ded54ef3dd1528ff`  
		Last Modified: Tue, 18 Aug 2026 01:11:39 GMT  
		Size: 7.5 MB (7533635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7854a2decae9770a9479b0f4edc0c7e8c4c774008c153e76ded0a4b27ebbd03c`  
		Last Modified: Tue, 18 Aug 2026 01:11:45 GMT  
		Size: 210.8 MB (210788390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47773b2525a17cc1082287d8a6628a18913c3aa9785f976f51002e1d1a39377f`  
		Last Modified: Tue, 18 Aug 2026 01:11:39 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4420e94d73693bdf28051cad5331606b68149a042f9d282069a965dfeaf4425`  
		Last Modified: Tue, 18 Aug 2026 01:11:39 GMT  
		Size: 865.7 KB (865748 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea01dd8041db9500791f414bb246a2d3fcbab5bad76e46def340a1dc6218e153`  
		Last Modified: Tue, 18 Aug 2026 01:11:40 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90ab0a97bfe0578b3d0ab9f0a813633dddd5c75f4b76581e84b02a4d34ced2f9`  
		Last Modified: Tue, 18 Aug 2026 01:11:40 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e9411c8916a808e9a89328db5a5d6e679d4430b2bbf43e233116756bfd35462`  
		Last Modified: Tue, 18 Aug 2026 01:11:40 GMT  
		Size: 3.6 KB (3636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.17-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:04b553d85bf39f5862a439f4007a51a8bc3c8466a630b62ae9a4230fbf37b9f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.1 KB (27070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2036bb22bbc9d1a1313008ed809a95e15e231405e25c08bb861b9a36c3859b70`

```dockerfile
```

-	Layers:
	-	`sha256:eb52f045a67c4d0e69ece241667279de99489c338abce0b03d389784b9819e60`  
		Last Modified: Tue, 18 Aug 2026 01:11:38 GMT  
		Size: 27.1 KB (27070 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.3.17.110`

```console
$ docker pull clickhouse@sha256:27a93a375287894e8be4e9720c01d39ec5b862a241cfe73bb634472db9d6a75f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.3.17.110` - linux; amd64

```console
$ docker pull clickhouse@sha256:50be38ac177482e5b57e700964f3ad2f78528a8ee2619d4bc109907ecf3fe4a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.5 MB (265493031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2d51636384c362f424a59231f93024c3aec6d8032b028e5f9feeac17e775c22`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:09 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:09 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:12 GMT
ADD file:799f4e238d67485cc109d93512f4fe6f75bafc26a3476772191154125e52201d in / 
# Mon, 10 Aug 2026 17:38:12 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:10:28 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 18 Aug 2026 01:10:28 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 18 Aug 2026 01:10:28 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 18 Aug 2026 01:10:28 GMT
ARG REPO_CHANNEL=stable
# Tue, 18 Aug 2026 01:10:28 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 18 Aug 2026 01:10:28 GMT
ARG VERSION=26.3.17.110
# Tue, 18 Aug 2026 01:10:28 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 18 Aug 2026 01:10:53 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:10:54 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:10:55 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 18 Aug 2026 01:10:55 GMT
ENV LANG=en_US.UTF-8
# Tue, 18 Aug 2026 01:10:55 GMT
ENV TZ=UTC
# Tue, 18 Aug 2026 01:10:55 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 18 Aug 2026 01:10:55 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 18 Aug 2026 01:10:55 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 18 Aug 2026 01:10:55 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 18 Aug 2026 01:10:55 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 18 Aug 2026 01:10:55 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 18 Aug 2026 01:10:55 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c007a967a77ef4ae4896ca1fa6286f934255694ffeef8def2610ebeae1871a45`  
		Last Modified: Tue, 18 Aug 2026 01:11:17 GMT  
		Size: 7.6 MB (7553497 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cc87778a5d1bbb55721e8001d30836754a58503f9e1c1c538356a96beba8b58`  
		Last Modified: Tue, 18 Aug 2026 01:11:21 GMT  
		Size: 227.3 MB (227332541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf6b2533179b8ad4fa379a9ebb94d47e68bea33d34e047f3d49de84e513ad6e9`  
		Last Modified: Tue, 18 Aug 2026 01:11:17 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8a2fe23e3cfab7bb9cfe001498d449f031d5ba03ab66bdafff5a01d46bec7bd`  
		Last Modified: Tue, 18 Aug 2026 01:11:17 GMT  
		Size: 865.7 KB (865748 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42d2f330cdc4ece828cfdb71294f8e31b341b1a876e87394fe5be77ec54087ce`  
		Last Modified: Tue, 18 Aug 2026 01:11:18 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9189511d45f7506a77b25f2c245623821682462cea3d3d38ab2bac3202aa56e4`  
		Last Modified: Tue, 18 Aug 2026 01:11:18 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e053ffcdeee9a8dd99ebce9bb1c9d1c230dd21b3dbb48d476a6bfe955fca5b38`  
		Last Modified: Tue, 18 Aug 2026 01:11:18 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.17.110` - unknown; unknown

```console
$ docker pull clickhouse@sha256:924a5f58088353a2d12baeb0ea9771d6811fd7f536b02236da8efb178d1a55d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.9 KB (26858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50356986ff0eb4a0373dde05199e575d8c2b6c6c194b57650826dc3f614dc7dc`

```dockerfile
```

-	Layers:
	-	`sha256:fa30235cad1a80bf99a18bf4538df0035530d23a7c83d8fc4bc57846de035a4e`  
		Last Modified: Tue, 18 Aug 2026 01:11:17 GMT  
		Size: 26.9 KB (26858 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.3.17.110` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:c9b49ee2abe5b0f457f9a05ea291fc6efc1006dd1771cc787df4f3eb6b536ca0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.8 MB (246812524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60dc437ed8faaca4b2c35b5318681310601794107a9323acd9ec1a9774628085`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:35 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:35 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:37 GMT
ADD file:c4ec32d39509d0c1acf2ddbb89cdc1fb3ceeae66ef80238f2ba7df53758fb44a in / 
# Mon, 10 Aug 2026 17:38:38 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:10:42 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 18 Aug 2026 01:10:42 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 18 Aug 2026 01:10:42 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 18 Aug 2026 01:10:42 GMT
ARG REPO_CHANNEL=stable
# Tue, 18 Aug 2026 01:10:42 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 18 Aug 2026 01:10:42 GMT
ARG VERSION=26.3.17.110
# Tue, 18 Aug 2026 01:10:42 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 18 Aug 2026 01:11:15 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:11:15 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:11:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 18 Aug 2026 01:11:16 GMT
ENV LANG=en_US.UTF-8
# Tue, 18 Aug 2026 01:11:16 GMT
ENV TZ=UTC
# Tue, 18 Aug 2026 01:11:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 18 Aug 2026 01:11:16 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 18 Aug 2026 01:11:16 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 18 Aug 2026 01:11:16 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 18 Aug 2026 01:11:16 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 18 Aug 2026 01:11:16 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 18 Aug 2026 01:11:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d5f1ff18801439ad32a21f50c3e5a40e29586dea76fb9a7ded54ef3dd1528ff`  
		Last Modified: Tue, 18 Aug 2026 01:11:39 GMT  
		Size: 7.5 MB (7533635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7854a2decae9770a9479b0f4edc0c7e8c4c774008c153e76ded0a4b27ebbd03c`  
		Last Modified: Tue, 18 Aug 2026 01:11:45 GMT  
		Size: 210.8 MB (210788390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47773b2525a17cc1082287d8a6628a18913c3aa9785f976f51002e1d1a39377f`  
		Last Modified: Tue, 18 Aug 2026 01:11:39 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4420e94d73693bdf28051cad5331606b68149a042f9d282069a965dfeaf4425`  
		Last Modified: Tue, 18 Aug 2026 01:11:39 GMT  
		Size: 865.7 KB (865748 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea01dd8041db9500791f414bb246a2d3fcbab5bad76e46def340a1dc6218e153`  
		Last Modified: Tue, 18 Aug 2026 01:11:40 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90ab0a97bfe0578b3d0ab9f0a813633dddd5c75f4b76581e84b02a4d34ced2f9`  
		Last Modified: Tue, 18 Aug 2026 01:11:40 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e9411c8916a808e9a89328db5a5d6e679d4430b2bbf43e233116756bfd35462`  
		Last Modified: Tue, 18 Aug 2026 01:11:40 GMT  
		Size: 3.6 KB (3636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.17.110` - unknown; unknown

```console
$ docker pull clickhouse@sha256:04b553d85bf39f5862a439f4007a51a8bc3c8466a630b62ae9a4230fbf37b9f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.1 KB (27070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2036bb22bbc9d1a1313008ed809a95e15e231405e25c08bb861b9a36c3859b70`

```dockerfile
```

-	Layers:
	-	`sha256:eb52f045a67c4d0e69ece241667279de99489c338abce0b03d389784b9819e60`  
		Last Modified: Tue, 18 Aug 2026 01:11:38 GMT  
		Size: 27.1 KB (27070 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.3.17.110-jammy`

```console
$ docker pull clickhouse@sha256:27a93a375287894e8be4e9720c01d39ec5b862a241cfe73bb634472db9d6a75f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.3.17.110-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:50be38ac177482e5b57e700964f3ad2f78528a8ee2619d4bc109907ecf3fe4a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.5 MB (265493031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2d51636384c362f424a59231f93024c3aec6d8032b028e5f9feeac17e775c22`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:09 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:09 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:12 GMT
ADD file:799f4e238d67485cc109d93512f4fe6f75bafc26a3476772191154125e52201d in / 
# Mon, 10 Aug 2026 17:38:12 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:10:28 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 18 Aug 2026 01:10:28 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 18 Aug 2026 01:10:28 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 18 Aug 2026 01:10:28 GMT
ARG REPO_CHANNEL=stable
# Tue, 18 Aug 2026 01:10:28 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 18 Aug 2026 01:10:28 GMT
ARG VERSION=26.3.17.110
# Tue, 18 Aug 2026 01:10:28 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 18 Aug 2026 01:10:53 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:10:54 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:10:55 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 18 Aug 2026 01:10:55 GMT
ENV LANG=en_US.UTF-8
# Tue, 18 Aug 2026 01:10:55 GMT
ENV TZ=UTC
# Tue, 18 Aug 2026 01:10:55 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 18 Aug 2026 01:10:55 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 18 Aug 2026 01:10:55 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 18 Aug 2026 01:10:55 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 18 Aug 2026 01:10:55 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 18 Aug 2026 01:10:55 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 18 Aug 2026 01:10:55 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c007a967a77ef4ae4896ca1fa6286f934255694ffeef8def2610ebeae1871a45`  
		Last Modified: Tue, 18 Aug 2026 01:11:17 GMT  
		Size: 7.6 MB (7553497 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cc87778a5d1bbb55721e8001d30836754a58503f9e1c1c538356a96beba8b58`  
		Last Modified: Tue, 18 Aug 2026 01:11:21 GMT  
		Size: 227.3 MB (227332541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf6b2533179b8ad4fa379a9ebb94d47e68bea33d34e047f3d49de84e513ad6e9`  
		Last Modified: Tue, 18 Aug 2026 01:11:17 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8a2fe23e3cfab7bb9cfe001498d449f031d5ba03ab66bdafff5a01d46bec7bd`  
		Last Modified: Tue, 18 Aug 2026 01:11:17 GMT  
		Size: 865.7 KB (865748 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42d2f330cdc4ece828cfdb71294f8e31b341b1a876e87394fe5be77ec54087ce`  
		Last Modified: Tue, 18 Aug 2026 01:11:18 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9189511d45f7506a77b25f2c245623821682462cea3d3d38ab2bac3202aa56e4`  
		Last Modified: Tue, 18 Aug 2026 01:11:18 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e053ffcdeee9a8dd99ebce9bb1c9d1c230dd21b3dbb48d476a6bfe955fca5b38`  
		Last Modified: Tue, 18 Aug 2026 01:11:18 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.17.110-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:924a5f58088353a2d12baeb0ea9771d6811fd7f536b02236da8efb178d1a55d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.9 KB (26858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50356986ff0eb4a0373dde05199e575d8c2b6c6c194b57650826dc3f614dc7dc`

```dockerfile
```

-	Layers:
	-	`sha256:fa30235cad1a80bf99a18bf4538df0035530d23a7c83d8fc4bc57846de035a4e`  
		Last Modified: Tue, 18 Aug 2026 01:11:17 GMT  
		Size: 26.9 KB (26858 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.3.17.110-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:c9b49ee2abe5b0f457f9a05ea291fc6efc1006dd1771cc787df4f3eb6b536ca0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.8 MB (246812524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60dc437ed8faaca4b2c35b5318681310601794107a9323acd9ec1a9774628085`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:35 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:35 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:37 GMT
ADD file:c4ec32d39509d0c1acf2ddbb89cdc1fb3ceeae66ef80238f2ba7df53758fb44a in / 
# Mon, 10 Aug 2026 17:38:38 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:10:42 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 18 Aug 2026 01:10:42 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 18 Aug 2026 01:10:42 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 18 Aug 2026 01:10:42 GMT
ARG REPO_CHANNEL=stable
# Tue, 18 Aug 2026 01:10:42 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 18 Aug 2026 01:10:42 GMT
ARG VERSION=26.3.17.110
# Tue, 18 Aug 2026 01:10:42 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 18 Aug 2026 01:11:15 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:11:15 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:11:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 18 Aug 2026 01:11:16 GMT
ENV LANG=en_US.UTF-8
# Tue, 18 Aug 2026 01:11:16 GMT
ENV TZ=UTC
# Tue, 18 Aug 2026 01:11:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 18 Aug 2026 01:11:16 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 18 Aug 2026 01:11:16 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 18 Aug 2026 01:11:16 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 18 Aug 2026 01:11:16 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 18 Aug 2026 01:11:16 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 18 Aug 2026 01:11:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d5f1ff18801439ad32a21f50c3e5a40e29586dea76fb9a7ded54ef3dd1528ff`  
		Last Modified: Tue, 18 Aug 2026 01:11:39 GMT  
		Size: 7.5 MB (7533635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7854a2decae9770a9479b0f4edc0c7e8c4c774008c153e76ded0a4b27ebbd03c`  
		Last Modified: Tue, 18 Aug 2026 01:11:45 GMT  
		Size: 210.8 MB (210788390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47773b2525a17cc1082287d8a6628a18913c3aa9785f976f51002e1d1a39377f`  
		Last Modified: Tue, 18 Aug 2026 01:11:39 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4420e94d73693bdf28051cad5331606b68149a042f9d282069a965dfeaf4425`  
		Last Modified: Tue, 18 Aug 2026 01:11:39 GMT  
		Size: 865.7 KB (865748 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea01dd8041db9500791f414bb246a2d3fcbab5bad76e46def340a1dc6218e153`  
		Last Modified: Tue, 18 Aug 2026 01:11:40 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90ab0a97bfe0578b3d0ab9f0a813633dddd5c75f4b76581e84b02a4d34ced2f9`  
		Last Modified: Tue, 18 Aug 2026 01:11:40 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e9411c8916a808e9a89328db5a5d6e679d4430b2bbf43e233116756bfd35462`  
		Last Modified: Tue, 18 Aug 2026 01:11:40 GMT  
		Size: 3.6 KB (3636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.17.110-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:04b553d85bf39f5862a439f4007a51a8bc3c8466a630b62ae9a4230fbf37b9f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.1 KB (27070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2036bb22bbc9d1a1313008ed809a95e15e231405e25c08bb861b9a36c3859b70`

```dockerfile
```

-	Layers:
	-	`sha256:eb52f045a67c4d0e69ece241667279de99489c338abce0b03d389784b9819e60`  
		Last Modified: Tue, 18 Aug 2026 01:11:38 GMT  
		Size: 27.1 KB (27070 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.5`

```console
$ docker pull clickhouse@sha256:8115774462c10839bdddd7376c04e21478f224457b4ead54e9d22aafa3c17e37
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.5` - linux; amd64

```console
$ docker pull clickhouse@sha256:74106c1d95ad23dc79144cb95c24813f52e845c9bdfd8031d498e45b1d2e50e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.6 MB (261609965 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c19596673e188701d2194201bd91f4c20cec6d34a4d58fa2a0f839446150e41c`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:09 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:09 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:12 GMT
ADD file:799f4e238d67485cc109d93512f4fe6f75bafc26a3476772191154125e52201d in / 
# Mon, 10 Aug 2026 17:38:12 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:10:30 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 18 Aug 2026 01:10:30 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 18 Aug 2026 01:10:30 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 18 Aug 2026 01:10:30 GMT
ARG REPO_CHANNEL=stable
# Tue, 18 Aug 2026 01:10:30 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 18 Aug 2026 01:10:30 GMT
ARG VERSION=26.5.6.113
# Tue, 18 Aug 2026 01:10:30 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 18 Aug 2026 01:10:59 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.113 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:10:59 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.113 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:11:00 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.113 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 18 Aug 2026 01:11:00 GMT
ENV LANG=en_US.UTF-8
# Tue, 18 Aug 2026 01:11:00 GMT
ENV TZ=UTC
# Tue, 18 Aug 2026 01:11:00 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.113 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 18 Aug 2026 01:11:00 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 18 Aug 2026 01:11:00 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 18 Aug 2026 01:11:00 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 18 Aug 2026 01:11:00 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 18 Aug 2026 01:11:00 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 18 Aug 2026 01:11:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f04b8c60098aa894401953f37e6651de6e04c65d8db6233839ff4dfd3d8dbc93`  
		Last Modified: Tue, 18 Aug 2026 01:11:23 GMT  
		Size: 7.6 MB (7553568 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:180c1c02c21c0ce77d1fd46d78ecf8e27bc4aff82351571f1597f74355201d21`  
		Last Modified: Tue, 18 Aug 2026 01:11:28 GMT  
		Size: 223.4 MB (223449404 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bb5ec3e0f25ebaa1af0208d178e5e75de90596824d0c0f0111ab5ce87c6f9e1`  
		Last Modified: Tue, 18 Aug 2026 01:11:23 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a268ee87f46e546be3045491bc55a77aff08eed64b194672fdf09e75fe15345`  
		Last Modified: Tue, 18 Aug 2026 01:11:23 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:821c805867d0ab430d5e3feb9ea605e49be7467002f5a744c8fbc691e47ef0be`  
		Last Modified: Tue, 18 Aug 2026 01:11:24 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30a75c8d0fa4303906bdf8b93679e82692736fabd3333f3fb987eb47cbd30bce`  
		Last Modified: Tue, 18 Aug 2026 01:11:24 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ae1da4184f72cb0b8c597255726044a34ff67801e45b9bba6d7bc3b96f74ba9`  
		Last Modified: Tue, 18 Aug 2026 01:11:25 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.5` - unknown; unknown

```console
$ docker pull clickhouse@sha256:bd12f27fa4883f9144ca019038a1ac286106e9f856e6dd48e970302300e545be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ecad96fc918c4ca8e122a0534307f16212acc6ab2a9e318dd8ac558e9e1a2e1`

```dockerfile
```

-	Layers:
	-	`sha256:7f3433db72a42c408092b28d4f29ad8583853a749b83980d9ad9f4b552ae20b3`  
		Last Modified: Tue, 18 Aug 2026 01:11:23 GMT  
		Size: 26.2 KB (26231 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.5` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:3b50560c2140449b7422f02d5ea455de4357c60d8d760d60aed0a84841455f65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.3 MB (247268084 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5405f3e71afdddfa8b112dd7c6fa1a618863e743f5eec411db91b71a58619d59`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:35 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:35 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:37 GMT
ADD file:c4ec32d39509d0c1acf2ddbb89cdc1fb3ceeae66ef80238f2ba7df53758fb44a in / 
# Mon, 10 Aug 2026 17:38:38 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:10:36 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 18 Aug 2026 01:10:36 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 18 Aug 2026 01:10:36 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 18 Aug 2026 01:10:36 GMT
ARG REPO_CHANNEL=stable
# Tue, 18 Aug 2026 01:10:36 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 18 Aug 2026 01:10:36 GMT
ARG VERSION=26.5.6.113
# Tue, 18 Aug 2026 01:10:36 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 18 Aug 2026 01:11:10 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.113 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:11:10 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.113 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:11:11 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.113 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 18 Aug 2026 01:11:11 GMT
ENV LANG=en_US.UTF-8
# Tue, 18 Aug 2026 01:11:11 GMT
ENV TZ=UTC
# Tue, 18 Aug 2026 01:11:11 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.113 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 18 Aug 2026 01:11:11 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 18 Aug 2026 01:11:11 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 18 Aug 2026 01:11:11 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 18 Aug 2026 01:11:11 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 18 Aug 2026 01:11:11 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 18 Aug 2026 01:11:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c792b2cd4878f18c9bf034ad133a06559648063b6de7b5fb9c7a51b1abaf8efc`  
		Last Modified: Tue, 18 Aug 2026 01:11:34 GMT  
		Size: 7.5 MB (7533741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acd3186491f653917cfb5053f77d0123391433a5b7342c3db35d3fcb6240e9cc`  
		Last Modified: Tue, 18 Aug 2026 01:11:37 GMT  
		Size: 211.2 MB (211243840 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:109e55c820e6c4d9ae860caa2be2d9d67ef100dfb91543420715d3dc3a30832e`  
		Last Modified: Tue, 18 Aug 2026 01:11:33 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d259c73944dc5506723342fe2e1fa8c0103da19339c9c3c05dc3972c22bef9c2`  
		Last Modified: Tue, 18 Aug 2026 01:11:34 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:741c0718c36d7ee2c6f70b635dd8bc7e7a47bf6e5dd0e2fafef20242bdb2f843`  
		Last Modified: Tue, 18 Aug 2026 01:11:34 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a23ef851b16127367118a06633764caf8908623800689b091ff0670b0fc492b5`  
		Last Modified: Tue, 18 Aug 2026 01:11:35 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53aca20264c92b7b31be93515ecd191505db5359b6448874e255270cb7ef1594`  
		Last Modified: Tue, 18 Aug 2026 01:11:35 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.5` - unknown; unknown

```console
$ docker pull clickhouse@sha256:403be5e14df95116e04e8bad0ee7a09bbfe303cbfdd7fc7bf33247840478a70f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26418 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:525036e9e3c65fdf2b66100e98d7efc8a623191fa2880f93a0b5dc50bb1aa795`

```dockerfile
```

-	Layers:
	-	`sha256:811b7b43bf7106995ff8881f4966fdb3a2ddd94b0e708d0f3dcb32f03bba0129`  
		Last Modified: Tue, 18 Aug 2026 01:11:33 GMT  
		Size: 26.4 KB (26418 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.5-jammy`

```console
$ docker pull clickhouse@sha256:8115774462c10839bdddd7376c04e21478f224457b4ead54e9d22aafa3c17e37
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.5-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:74106c1d95ad23dc79144cb95c24813f52e845c9bdfd8031d498e45b1d2e50e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.6 MB (261609965 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c19596673e188701d2194201bd91f4c20cec6d34a4d58fa2a0f839446150e41c`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:09 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:09 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:12 GMT
ADD file:799f4e238d67485cc109d93512f4fe6f75bafc26a3476772191154125e52201d in / 
# Mon, 10 Aug 2026 17:38:12 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:10:30 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 18 Aug 2026 01:10:30 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 18 Aug 2026 01:10:30 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 18 Aug 2026 01:10:30 GMT
ARG REPO_CHANNEL=stable
# Tue, 18 Aug 2026 01:10:30 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 18 Aug 2026 01:10:30 GMT
ARG VERSION=26.5.6.113
# Tue, 18 Aug 2026 01:10:30 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 18 Aug 2026 01:10:59 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.113 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:10:59 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.113 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:11:00 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.113 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 18 Aug 2026 01:11:00 GMT
ENV LANG=en_US.UTF-8
# Tue, 18 Aug 2026 01:11:00 GMT
ENV TZ=UTC
# Tue, 18 Aug 2026 01:11:00 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.113 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 18 Aug 2026 01:11:00 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 18 Aug 2026 01:11:00 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 18 Aug 2026 01:11:00 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 18 Aug 2026 01:11:00 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 18 Aug 2026 01:11:00 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 18 Aug 2026 01:11:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f04b8c60098aa894401953f37e6651de6e04c65d8db6233839ff4dfd3d8dbc93`  
		Last Modified: Tue, 18 Aug 2026 01:11:23 GMT  
		Size: 7.6 MB (7553568 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:180c1c02c21c0ce77d1fd46d78ecf8e27bc4aff82351571f1597f74355201d21`  
		Last Modified: Tue, 18 Aug 2026 01:11:28 GMT  
		Size: 223.4 MB (223449404 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bb5ec3e0f25ebaa1af0208d178e5e75de90596824d0c0f0111ab5ce87c6f9e1`  
		Last Modified: Tue, 18 Aug 2026 01:11:23 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a268ee87f46e546be3045491bc55a77aff08eed64b194672fdf09e75fe15345`  
		Last Modified: Tue, 18 Aug 2026 01:11:23 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:821c805867d0ab430d5e3feb9ea605e49be7467002f5a744c8fbc691e47ef0be`  
		Last Modified: Tue, 18 Aug 2026 01:11:24 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30a75c8d0fa4303906bdf8b93679e82692736fabd3333f3fb987eb47cbd30bce`  
		Last Modified: Tue, 18 Aug 2026 01:11:24 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ae1da4184f72cb0b8c597255726044a34ff67801e45b9bba6d7bc3b96f74ba9`  
		Last Modified: Tue, 18 Aug 2026 01:11:25 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.5-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:bd12f27fa4883f9144ca019038a1ac286106e9f856e6dd48e970302300e545be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ecad96fc918c4ca8e122a0534307f16212acc6ab2a9e318dd8ac558e9e1a2e1`

```dockerfile
```

-	Layers:
	-	`sha256:7f3433db72a42c408092b28d4f29ad8583853a749b83980d9ad9f4b552ae20b3`  
		Last Modified: Tue, 18 Aug 2026 01:11:23 GMT  
		Size: 26.2 KB (26231 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.5-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:3b50560c2140449b7422f02d5ea455de4357c60d8d760d60aed0a84841455f65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.3 MB (247268084 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5405f3e71afdddfa8b112dd7c6fa1a618863e743f5eec411db91b71a58619d59`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:35 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:35 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:37 GMT
ADD file:c4ec32d39509d0c1acf2ddbb89cdc1fb3ceeae66ef80238f2ba7df53758fb44a in / 
# Mon, 10 Aug 2026 17:38:38 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:10:36 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 18 Aug 2026 01:10:36 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 18 Aug 2026 01:10:36 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 18 Aug 2026 01:10:36 GMT
ARG REPO_CHANNEL=stable
# Tue, 18 Aug 2026 01:10:36 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 18 Aug 2026 01:10:36 GMT
ARG VERSION=26.5.6.113
# Tue, 18 Aug 2026 01:10:36 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 18 Aug 2026 01:11:10 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.113 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:11:10 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.113 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:11:11 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.113 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 18 Aug 2026 01:11:11 GMT
ENV LANG=en_US.UTF-8
# Tue, 18 Aug 2026 01:11:11 GMT
ENV TZ=UTC
# Tue, 18 Aug 2026 01:11:11 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.113 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 18 Aug 2026 01:11:11 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 18 Aug 2026 01:11:11 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 18 Aug 2026 01:11:11 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 18 Aug 2026 01:11:11 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 18 Aug 2026 01:11:11 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 18 Aug 2026 01:11:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c792b2cd4878f18c9bf034ad133a06559648063b6de7b5fb9c7a51b1abaf8efc`  
		Last Modified: Tue, 18 Aug 2026 01:11:34 GMT  
		Size: 7.5 MB (7533741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acd3186491f653917cfb5053f77d0123391433a5b7342c3db35d3fcb6240e9cc`  
		Last Modified: Tue, 18 Aug 2026 01:11:37 GMT  
		Size: 211.2 MB (211243840 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:109e55c820e6c4d9ae860caa2be2d9d67ef100dfb91543420715d3dc3a30832e`  
		Last Modified: Tue, 18 Aug 2026 01:11:33 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d259c73944dc5506723342fe2e1fa8c0103da19339c9c3c05dc3972c22bef9c2`  
		Last Modified: Tue, 18 Aug 2026 01:11:34 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:741c0718c36d7ee2c6f70b635dd8bc7e7a47bf6e5dd0e2fafef20242bdb2f843`  
		Last Modified: Tue, 18 Aug 2026 01:11:34 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a23ef851b16127367118a06633764caf8908623800689b091ff0670b0fc492b5`  
		Last Modified: Tue, 18 Aug 2026 01:11:35 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53aca20264c92b7b31be93515ecd191505db5359b6448874e255270cb7ef1594`  
		Last Modified: Tue, 18 Aug 2026 01:11:35 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.5-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:403be5e14df95116e04e8bad0ee7a09bbfe303cbfdd7fc7bf33247840478a70f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26418 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:525036e9e3c65fdf2b66100e98d7efc8a623191fa2880f93a0b5dc50bb1aa795`

```dockerfile
```

-	Layers:
	-	`sha256:811b7b43bf7106995ff8881f4966fdb3a2ddd94b0e708d0f3dcb32f03bba0129`  
		Last Modified: Tue, 18 Aug 2026 01:11:33 GMT  
		Size: 26.4 KB (26418 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.5.6`

```console
$ docker pull clickhouse@sha256:8115774462c10839bdddd7376c04e21478f224457b4ead54e9d22aafa3c17e37
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.5.6` - linux; amd64

```console
$ docker pull clickhouse@sha256:74106c1d95ad23dc79144cb95c24813f52e845c9bdfd8031d498e45b1d2e50e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.6 MB (261609965 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c19596673e188701d2194201bd91f4c20cec6d34a4d58fa2a0f839446150e41c`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:09 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:09 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:12 GMT
ADD file:799f4e238d67485cc109d93512f4fe6f75bafc26a3476772191154125e52201d in / 
# Mon, 10 Aug 2026 17:38:12 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:10:30 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 18 Aug 2026 01:10:30 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 18 Aug 2026 01:10:30 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 18 Aug 2026 01:10:30 GMT
ARG REPO_CHANNEL=stable
# Tue, 18 Aug 2026 01:10:30 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 18 Aug 2026 01:10:30 GMT
ARG VERSION=26.5.6.113
# Tue, 18 Aug 2026 01:10:30 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 18 Aug 2026 01:10:59 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.113 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:10:59 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.113 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:11:00 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.113 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 18 Aug 2026 01:11:00 GMT
ENV LANG=en_US.UTF-8
# Tue, 18 Aug 2026 01:11:00 GMT
ENV TZ=UTC
# Tue, 18 Aug 2026 01:11:00 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.113 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 18 Aug 2026 01:11:00 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 18 Aug 2026 01:11:00 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 18 Aug 2026 01:11:00 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 18 Aug 2026 01:11:00 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 18 Aug 2026 01:11:00 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 18 Aug 2026 01:11:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f04b8c60098aa894401953f37e6651de6e04c65d8db6233839ff4dfd3d8dbc93`  
		Last Modified: Tue, 18 Aug 2026 01:11:23 GMT  
		Size: 7.6 MB (7553568 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:180c1c02c21c0ce77d1fd46d78ecf8e27bc4aff82351571f1597f74355201d21`  
		Last Modified: Tue, 18 Aug 2026 01:11:28 GMT  
		Size: 223.4 MB (223449404 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bb5ec3e0f25ebaa1af0208d178e5e75de90596824d0c0f0111ab5ce87c6f9e1`  
		Last Modified: Tue, 18 Aug 2026 01:11:23 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a268ee87f46e546be3045491bc55a77aff08eed64b194672fdf09e75fe15345`  
		Last Modified: Tue, 18 Aug 2026 01:11:23 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:821c805867d0ab430d5e3feb9ea605e49be7467002f5a744c8fbc691e47ef0be`  
		Last Modified: Tue, 18 Aug 2026 01:11:24 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30a75c8d0fa4303906bdf8b93679e82692736fabd3333f3fb987eb47cbd30bce`  
		Last Modified: Tue, 18 Aug 2026 01:11:24 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ae1da4184f72cb0b8c597255726044a34ff67801e45b9bba6d7bc3b96f74ba9`  
		Last Modified: Tue, 18 Aug 2026 01:11:25 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.5.6` - unknown; unknown

```console
$ docker pull clickhouse@sha256:bd12f27fa4883f9144ca019038a1ac286106e9f856e6dd48e970302300e545be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ecad96fc918c4ca8e122a0534307f16212acc6ab2a9e318dd8ac558e9e1a2e1`

```dockerfile
```

-	Layers:
	-	`sha256:7f3433db72a42c408092b28d4f29ad8583853a749b83980d9ad9f4b552ae20b3`  
		Last Modified: Tue, 18 Aug 2026 01:11:23 GMT  
		Size: 26.2 KB (26231 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.5.6` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:3b50560c2140449b7422f02d5ea455de4357c60d8d760d60aed0a84841455f65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.3 MB (247268084 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5405f3e71afdddfa8b112dd7c6fa1a618863e743f5eec411db91b71a58619d59`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:35 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:35 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:37 GMT
ADD file:c4ec32d39509d0c1acf2ddbb89cdc1fb3ceeae66ef80238f2ba7df53758fb44a in / 
# Mon, 10 Aug 2026 17:38:38 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:10:36 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 18 Aug 2026 01:10:36 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 18 Aug 2026 01:10:36 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 18 Aug 2026 01:10:36 GMT
ARG REPO_CHANNEL=stable
# Tue, 18 Aug 2026 01:10:36 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 18 Aug 2026 01:10:36 GMT
ARG VERSION=26.5.6.113
# Tue, 18 Aug 2026 01:10:36 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 18 Aug 2026 01:11:10 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.113 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:11:10 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.113 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:11:11 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.113 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 18 Aug 2026 01:11:11 GMT
ENV LANG=en_US.UTF-8
# Tue, 18 Aug 2026 01:11:11 GMT
ENV TZ=UTC
# Tue, 18 Aug 2026 01:11:11 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.113 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 18 Aug 2026 01:11:11 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 18 Aug 2026 01:11:11 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 18 Aug 2026 01:11:11 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 18 Aug 2026 01:11:11 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 18 Aug 2026 01:11:11 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 18 Aug 2026 01:11:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c792b2cd4878f18c9bf034ad133a06559648063b6de7b5fb9c7a51b1abaf8efc`  
		Last Modified: Tue, 18 Aug 2026 01:11:34 GMT  
		Size: 7.5 MB (7533741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acd3186491f653917cfb5053f77d0123391433a5b7342c3db35d3fcb6240e9cc`  
		Last Modified: Tue, 18 Aug 2026 01:11:37 GMT  
		Size: 211.2 MB (211243840 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:109e55c820e6c4d9ae860caa2be2d9d67ef100dfb91543420715d3dc3a30832e`  
		Last Modified: Tue, 18 Aug 2026 01:11:33 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d259c73944dc5506723342fe2e1fa8c0103da19339c9c3c05dc3972c22bef9c2`  
		Last Modified: Tue, 18 Aug 2026 01:11:34 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:741c0718c36d7ee2c6f70b635dd8bc7e7a47bf6e5dd0e2fafef20242bdb2f843`  
		Last Modified: Tue, 18 Aug 2026 01:11:34 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a23ef851b16127367118a06633764caf8908623800689b091ff0670b0fc492b5`  
		Last Modified: Tue, 18 Aug 2026 01:11:35 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53aca20264c92b7b31be93515ecd191505db5359b6448874e255270cb7ef1594`  
		Last Modified: Tue, 18 Aug 2026 01:11:35 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.5.6` - unknown; unknown

```console
$ docker pull clickhouse@sha256:403be5e14df95116e04e8bad0ee7a09bbfe303cbfdd7fc7bf33247840478a70f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26418 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:525036e9e3c65fdf2b66100e98d7efc8a623191fa2880f93a0b5dc50bb1aa795`

```dockerfile
```

-	Layers:
	-	`sha256:811b7b43bf7106995ff8881f4966fdb3a2ddd94b0e708d0f3dcb32f03bba0129`  
		Last Modified: Tue, 18 Aug 2026 01:11:33 GMT  
		Size: 26.4 KB (26418 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.5.6-jammy`

```console
$ docker pull clickhouse@sha256:8115774462c10839bdddd7376c04e21478f224457b4ead54e9d22aafa3c17e37
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.5.6-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:74106c1d95ad23dc79144cb95c24813f52e845c9bdfd8031d498e45b1d2e50e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.6 MB (261609965 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c19596673e188701d2194201bd91f4c20cec6d34a4d58fa2a0f839446150e41c`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:09 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:09 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:12 GMT
ADD file:799f4e238d67485cc109d93512f4fe6f75bafc26a3476772191154125e52201d in / 
# Mon, 10 Aug 2026 17:38:12 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:10:30 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 18 Aug 2026 01:10:30 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 18 Aug 2026 01:10:30 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 18 Aug 2026 01:10:30 GMT
ARG REPO_CHANNEL=stable
# Tue, 18 Aug 2026 01:10:30 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 18 Aug 2026 01:10:30 GMT
ARG VERSION=26.5.6.113
# Tue, 18 Aug 2026 01:10:30 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 18 Aug 2026 01:10:59 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.113 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:10:59 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.113 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:11:00 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.113 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 18 Aug 2026 01:11:00 GMT
ENV LANG=en_US.UTF-8
# Tue, 18 Aug 2026 01:11:00 GMT
ENV TZ=UTC
# Tue, 18 Aug 2026 01:11:00 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.113 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 18 Aug 2026 01:11:00 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 18 Aug 2026 01:11:00 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 18 Aug 2026 01:11:00 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 18 Aug 2026 01:11:00 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 18 Aug 2026 01:11:00 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 18 Aug 2026 01:11:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f04b8c60098aa894401953f37e6651de6e04c65d8db6233839ff4dfd3d8dbc93`  
		Last Modified: Tue, 18 Aug 2026 01:11:23 GMT  
		Size: 7.6 MB (7553568 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:180c1c02c21c0ce77d1fd46d78ecf8e27bc4aff82351571f1597f74355201d21`  
		Last Modified: Tue, 18 Aug 2026 01:11:28 GMT  
		Size: 223.4 MB (223449404 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bb5ec3e0f25ebaa1af0208d178e5e75de90596824d0c0f0111ab5ce87c6f9e1`  
		Last Modified: Tue, 18 Aug 2026 01:11:23 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a268ee87f46e546be3045491bc55a77aff08eed64b194672fdf09e75fe15345`  
		Last Modified: Tue, 18 Aug 2026 01:11:23 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:821c805867d0ab430d5e3feb9ea605e49be7467002f5a744c8fbc691e47ef0be`  
		Last Modified: Tue, 18 Aug 2026 01:11:24 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30a75c8d0fa4303906bdf8b93679e82692736fabd3333f3fb987eb47cbd30bce`  
		Last Modified: Tue, 18 Aug 2026 01:11:24 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ae1da4184f72cb0b8c597255726044a34ff67801e45b9bba6d7bc3b96f74ba9`  
		Last Modified: Tue, 18 Aug 2026 01:11:25 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.5.6-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:bd12f27fa4883f9144ca019038a1ac286106e9f856e6dd48e970302300e545be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ecad96fc918c4ca8e122a0534307f16212acc6ab2a9e318dd8ac558e9e1a2e1`

```dockerfile
```

-	Layers:
	-	`sha256:7f3433db72a42c408092b28d4f29ad8583853a749b83980d9ad9f4b552ae20b3`  
		Last Modified: Tue, 18 Aug 2026 01:11:23 GMT  
		Size: 26.2 KB (26231 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.5.6-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:3b50560c2140449b7422f02d5ea455de4357c60d8d760d60aed0a84841455f65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.3 MB (247268084 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5405f3e71afdddfa8b112dd7c6fa1a618863e743f5eec411db91b71a58619d59`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:35 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:35 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:37 GMT
ADD file:c4ec32d39509d0c1acf2ddbb89cdc1fb3ceeae66ef80238f2ba7df53758fb44a in / 
# Mon, 10 Aug 2026 17:38:38 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:10:36 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 18 Aug 2026 01:10:36 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 18 Aug 2026 01:10:36 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 18 Aug 2026 01:10:36 GMT
ARG REPO_CHANNEL=stable
# Tue, 18 Aug 2026 01:10:36 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 18 Aug 2026 01:10:36 GMT
ARG VERSION=26.5.6.113
# Tue, 18 Aug 2026 01:10:36 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 18 Aug 2026 01:11:10 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.113 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:11:10 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.113 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:11:11 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.113 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 18 Aug 2026 01:11:11 GMT
ENV LANG=en_US.UTF-8
# Tue, 18 Aug 2026 01:11:11 GMT
ENV TZ=UTC
# Tue, 18 Aug 2026 01:11:11 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.113 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 18 Aug 2026 01:11:11 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 18 Aug 2026 01:11:11 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 18 Aug 2026 01:11:11 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 18 Aug 2026 01:11:11 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 18 Aug 2026 01:11:11 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 18 Aug 2026 01:11:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c792b2cd4878f18c9bf034ad133a06559648063b6de7b5fb9c7a51b1abaf8efc`  
		Last Modified: Tue, 18 Aug 2026 01:11:34 GMT  
		Size: 7.5 MB (7533741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acd3186491f653917cfb5053f77d0123391433a5b7342c3db35d3fcb6240e9cc`  
		Last Modified: Tue, 18 Aug 2026 01:11:37 GMT  
		Size: 211.2 MB (211243840 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:109e55c820e6c4d9ae860caa2be2d9d67ef100dfb91543420715d3dc3a30832e`  
		Last Modified: Tue, 18 Aug 2026 01:11:33 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d259c73944dc5506723342fe2e1fa8c0103da19339c9c3c05dc3972c22bef9c2`  
		Last Modified: Tue, 18 Aug 2026 01:11:34 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:741c0718c36d7ee2c6f70b635dd8bc7e7a47bf6e5dd0e2fafef20242bdb2f843`  
		Last Modified: Tue, 18 Aug 2026 01:11:34 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a23ef851b16127367118a06633764caf8908623800689b091ff0670b0fc492b5`  
		Last Modified: Tue, 18 Aug 2026 01:11:35 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53aca20264c92b7b31be93515ecd191505db5359b6448874e255270cb7ef1594`  
		Last Modified: Tue, 18 Aug 2026 01:11:35 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.5.6-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:403be5e14df95116e04e8bad0ee7a09bbfe303cbfdd7fc7bf33247840478a70f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26418 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:525036e9e3c65fdf2b66100e98d7efc8a623191fa2880f93a0b5dc50bb1aa795`

```dockerfile
```

-	Layers:
	-	`sha256:811b7b43bf7106995ff8881f4966fdb3a2ddd94b0e708d0f3dcb32f03bba0129`  
		Last Modified: Tue, 18 Aug 2026 01:11:33 GMT  
		Size: 26.4 KB (26418 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.5.6.113`

```console
$ docker pull clickhouse@sha256:8115774462c10839bdddd7376c04e21478f224457b4ead54e9d22aafa3c17e37
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.5.6.113` - linux; amd64

```console
$ docker pull clickhouse@sha256:74106c1d95ad23dc79144cb95c24813f52e845c9bdfd8031d498e45b1d2e50e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.6 MB (261609965 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c19596673e188701d2194201bd91f4c20cec6d34a4d58fa2a0f839446150e41c`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:09 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:09 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:12 GMT
ADD file:799f4e238d67485cc109d93512f4fe6f75bafc26a3476772191154125e52201d in / 
# Mon, 10 Aug 2026 17:38:12 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:10:30 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 18 Aug 2026 01:10:30 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 18 Aug 2026 01:10:30 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 18 Aug 2026 01:10:30 GMT
ARG REPO_CHANNEL=stable
# Tue, 18 Aug 2026 01:10:30 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 18 Aug 2026 01:10:30 GMT
ARG VERSION=26.5.6.113
# Tue, 18 Aug 2026 01:10:30 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 18 Aug 2026 01:10:59 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.113 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:10:59 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.113 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:11:00 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.113 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 18 Aug 2026 01:11:00 GMT
ENV LANG=en_US.UTF-8
# Tue, 18 Aug 2026 01:11:00 GMT
ENV TZ=UTC
# Tue, 18 Aug 2026 01:11:00 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.113 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 18 Aug 2026 01:11:00 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 18 Aug 2026 01:11:00 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 18 Aug 2026 01:11:00 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 18 Aug 2026 01:11:00 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 18 Aug 2026 01:11:00 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 18 Aug 2026 01:11:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f04b8c60098aa894401953f37e6651de6e04c65d8db6233839ff4dfd3d8dbc93`  
		Last Modified: Tue, 18 Aug 2026 01:11:23 GMT  
		Size: 7.6 MB (7553568 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:180c1c02c21c0ce77d1fd46d78ecf8e27bc4aff82351571f1597f74355201d21`  
		Last Modified: Tue, 18 Aug 2026 01:11:28 GMT  
		Size: 223.4 MB (223449404 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bb5ec3e0f25ebaa1af0208d178e5e75de90596824d0c0f0111ab5ce87c6f9e1`  
		Last Modified: Tue, 18 Aug 2026 01:11:23 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a268ee87f46e546be3045491bc55a77aff08eed64b194672fdf09e75fe15345`  
		Last Modified: Tue, 18 Aug 2026 01:11:23 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:821c805867d0ab430d5e3feb9ea605e49be7467002f5a744c8fbc691e47ef0be`  
		Last Modified: Tue, 18 Aug 2026 01:11:24 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30a75c8d0fa4303906bdf8b93679e82692736fabd3333f3fb987eb47cbd30bce`  
		Last Modified: Tue, 18 Aug 2026 01:11:24 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ae1da4184f72cb0b8c597255726044a34ff67801e45b9bba6d7bc3b96f74ba9`  
		Last Modified: Tue, 18 Aug 2026 01:11:25 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.5.6.113` - unknown; unknown

```console
$ docker pull clickhouse@sha256:bd12f27fa4883f9144ca019038a1ac286106e9f856e6dd48e970302300e545be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ecad96fc918c4ca8e122a0534307f16212acc6ab2a9e318dd8ac558e9e1a2e1`

```dockerfile
```

-	Layers:
	-	`sha256:7f3433db72a42c408092b28d4f29ad8583853a749b83980d9ad9f4b552ae20b3`  
		Last Modified: Tue, 18 Aug 2026 01:11:23 GMT  
		Size: 26.2 KB (26231 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.5.6.113` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:3b50560c2140449b7422f02d5ea455de4357c60d8d760d60aed0a84841455f65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.3 MB (247268084 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5405f3e71afdddfa8b112dd7c6fa1a618863e743f5eec411db91b71a58619d59`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:35 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:35 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:37 GMT
ADD file:c4ec32d39509d0c1acf2ddbb89cdc1fb3ceeae66ef80238f2ba7df53758fb44a in / 
# Mon, 10 Aug 2026 17:38:38 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:10:36 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 18 Aug 2026 01:10:36 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 18 Aug 2026 01:10:36 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 18 Aug 2026 01:10:36 GMT
ARG REPO_CHANNEL=stable
# Tue, 18 Aug 2026 01:10:36 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 18 Aug 2026 01:10:36 GMT
ARG VERSION=26.5.6.113
# Tue, 18 Aug 2026 01:10:36 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 18 Aug 2026 01:11:10 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.113 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:11:10 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.113 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:11:11 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.113 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 18 Aug 2026 01:11:11 GMT
ENV LANG=en_US.UTF-8
# Tue, 18 Aug 2026 01:11:11 GMT
ENV TZ=UTC
# Tue, 18 Aug 2026 01:11:11 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.113 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 18 Aug 2026 01:11:11 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 18 Aug 2026 01:11:11 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 18 Aug 2026 01:11:11 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 18 Aug 2026 01:11:11 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 18 Aug 2026 01:11:11 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 18 Aug 2026 01:11:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c792b2cd4878f18c9bf034ad133a06559648063b6de7b5fb9c7a51b1abaf8efc`  
		Last Modified: Tue, 18 Aug 2026 01:11:34 GMT  
		Size: 7.5 MB (7533741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acd3186491f653917cfb5053f77d0123391433a5b7342c3db35d3fcb6240e9cc`  
		Last Modified: Tue, 18 Aug 2026 01:11:37 GMT  
		Size: 211.2 MB (211243840 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:109e55c820e6c4d9ae860caa2be2d9d67ef100dfb91543420715d3dc3a30832e`  
		Last Modified: Tue, 18 Aug 2026 01:11:33 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d259c73944dc5506723342fe2e1fa8c0103da19339c9c3c05dc3972c22bef9c2`  
		Last Modified: Tue, 18 Aug 2026 01:11:34 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:741c0718c36d7ee2c6f70b635dd8bc7e7a47bf6e5dd0e2fafef20242bdb2f843`  
		Last Modified: Tue, 18 Aug 2026 01:11:34 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a23ef851b16127367118a06633764caf8908623800689b091ff0670b0fc492b5`  
		Last Modified: Tue, 18 Aug 2026 01:11:35 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53aca20264c92b7b31be93515ecd191505db5359b6448874e255270cb7ef1594`  
		Last Modified: Tue, 18 Aug 2026 01:11:35 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.5.6.113` - unknown; unknown

```console
$ docker pull clickhouse@sha256:403be5e14df95116e04e8bad0ee7a09bbfe303cbfdd7fc7bf33247840478a70f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26418 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:525036e9e3c65fdf2b66100e98d7efc8a623191fa2880f93a0b5dc50bb1aa795`

```dockerfile
```

-	Layers:
	-	`sha256:811b7b43bf7106995ff8881f4966fdb3a2ddd94b0e708d0f3dcb32f03bba0129`  
		Last Modified: Tue, 18 Aug 2026 01:11:33 GMT  
		Size: 26.4 KB (26418 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.5.6.113-jammy`

```console
$ docker pull clickhouse@sha256:8115774462c10839bdddd7376c04e21478f224457b4ead54e9d22aafa3c17e37
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.5.6.113-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:74106c1d95ad23dc79144cb95c24813f52e845c9bdfd8031d498e45b1d2e50e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.6 MB (261609965 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c19596673e188701d2194201bd91f4c20cec6d34a4d58fa2a0f839446150e41c`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:09 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:09 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:12 GMT
ADD file:799f4e238d67485cc109d93512f4fe6f75bafc26a3476772191154125e52201d in / 
# Mon, 10 Aug 2026 17:38:12 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:10:30 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 18 Aug 2026 01:10:30 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 18 Aug 2026 01:10:30 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 18 Aug 2026 01:10:30 GMT
ARG REPO_CHANNEL=stable
# Tue, 18 Aug 2026 01:10:30 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 18 Aug 2026 01:10:30 GMT
ARG VERSION=26.5.6.113
# Tue, 18 Aug 2026 01:10:30 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 18 Aug 2026 01:10:59 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.113 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:10:59 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.113 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:11:00 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.113 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 18 Aug 2026 01:11:00 GMT
ENV LANG=en_US.UTF-8
# Tue, 18 Aug 2026 01:11:00 GMT
ENV TZ=UTC
# Tue, 18 Aug 2026 01:11:00 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.113 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 18 Aug 2026 01:11:00 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 18 Aug 2026 01:11:00 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 18 Aug 2026 01:11:00 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 18 Aug 2026 01:11:00 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 18 Aug 2026 01:11:00 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 18 Aug 2026 01:11:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f04b8c60098aa894401953f37e6651de6e04c65d8db6233839ff4dfd3d8dbc93`  
		Last Modified: Tue, 18 Aug 2026 01:11:23 GMT  
		Size: 7.6 MB (7553568 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:180c1c02c21c0ce77d1fd46d78ecf8e27bc4aff82351571f1597f74355201d21`  
		Last Modified: Tue, 18 Aug 2026 01:11:28 GMT  
		Size: 223.4 MB (223449404 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bb5ec3e0f25ebaa1af0208d178e5e75de90596824d0c0f0111ab5ce87c6f9e1`  
		Last Modified: Tue, 18 Aug 2026 01:11:23 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a268ee87f46e546be3045491bc55a77aff08eed64b194672fdf09e75fe15345`  
		Last Modified: Tue, 18 Aug 2026 01:11:23 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:821c805867d0ab430d5e3feb9ea605e49be7467002f5a744c8fbc691e47ef0be`  
		Last Modified: Tue, 18 Aug 2026 01:11:24 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30a75c8d0fa4303906bdf8b93679e82692736fabd3333f3fb987eb47cbd30bce`  
		Last Modified: Tue, 18 Aug 2026 01:11:24 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ae1da4184f72cb0b8c597255726044a34ff67801e45b9bba6d7bc3b96f74ba9`  
		Last Modified: Tue, 18 Aug 2026 01:11:25 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.5.6.113-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:bd12f27fa4883f9144ca019038a1ac286106e9f856e6dd48e970302300e545be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ecad96fc918c4ca8e122a0534307f16212acc6ab2a9e318dd8ac558e9e1a2e1`

```dockerfile
```

-	Layers:
	-	`sha256:7f3433db72a42c408092b28d4f29ad8583853a749b83980d9ad9f4b552ae20b3`  
		Last Modified: Tue, 18 Aug 2026 01:11:23 GMT  
		Size: 26.2 KB (26231 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.5.6.113-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:3b50560c2140449b7422f02d5ea455de4357c60d8d760d60aed0a84841455f65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.3 MB (247268084 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5405f3e71afdddfa8b112dd7c6fa1a618863e743f5eec411db91b71a58619d59`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:35 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:35 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:37 GMT
ADD file:c4ec32d39509d0c1acf2ddbb89cdc1fb3ceeae66ef80238f2ba7df53758fb44a in / 
# Mon, 10 Aug 2026 17:38:38 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:10:36 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 18 Aug 2026 01:10:36 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 18 Aug 2026 01:10:36 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 18 Aug 2026 01:10:36 GMT
ARG REPO_CHANNEL=stable
# Tue, 18 Aug 2026 01:10:36 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 18 Aug 2026 01:10:36 GMT
ARG VERSION=26.5.6.113
# Tue, 18 Aug 2026 01:10:36 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 18 Aug 2026 01:11:10 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.113 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:11:10 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.113 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:11:11 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.113 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 18 Aug 2026 01:11:11 GMT
ENV LANG=en_US.UTF-8
# Tue, 18 Aug 2026 01:11:11 GMT
ENV TZ=UTC
# Tue, 18 Aug 2026 01:11:11 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.113 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 18 Aug 2026 01:11:11 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 18 Aug 2026 01:11:11 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 18 Aug 2026 01:11:11 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 18 Aug 2026 01:11:11 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 18 Aug 2026 01:11:11 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 18 Aug 2026 01:11:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c792b2cd4878f18c9bf034ad133a06559648063b6de7b5fb9c7a51b1abaf8efc`  
		Last Modified: Tue, 18 Aug 2026 01:11:34 GMT  
		Size: 7.5 MB (7533741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acd3186491f653917cfb5053f77d0123391433a5b7342c3db35d3fcb6240e9cc`  
		Last Modified: Tue, 18 Aug 2026 01:11:37 GMT  
		Size: 211.2 MB (211243840 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:109e55c820e6c4d9ae860caa2be2d9d67ef100dfb91543420715d3dc3a30832e`  
		Last Modified: Tue, 18 Aug 2026 01:11:33 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d259c73944dc5506723342fe2e1fa8c0103da19339c9c3c05dc3972c22bef9c2`  
		Last Modified: Tue, 18 Aug 2026 01:11:34 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:741c0718c36d7ee2c6f70b635dd8bc7e7a47bf6e5dd0e2fafef20242bdb2f843`  
		Last Modified: Tue, 18 Aug 2026 01:11:34 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a23ef851b16127367118a06633764caf8908623800689b091ff0670b0fc492b5`  
		Last Modified: Tue, 18 Aug 2026 01:11:35 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53aca20264c92b7b31be93515ecd191505db5359b6448874e255270cb7ef1594`  
		Last Modified: Tue, 18 Aug 2026 01:11:35 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.5.6.113-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:403be5e14df95116e04e8bad0ee7a09bbfe303cbfdd7fc7bf33247840478a70f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26418 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:525036e9e3c65fdf2b66100e98d7efc8a623191fa2880f93a0b5dc50bb1aa795`

```dockerfile
```

-	Layers:
	-	`sha256:811b7b43bf7106995ff8881f4966fdb3a2ddd94b0e708d0f3dcb32f03bba0129`  
		Last Modified: Tue, 18 Aug 2026 01:11:33 GMT  
		Size: 26.4 KB (26418 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.6`

```console
$ docker pull clickhouse@sha256:6199e663010044667252c21f6b759c053319f57a19fa69263ac6ad82cdf4608f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.6` - linux; amd64

```console
$ docker pull clickhouse@sha256:1d390242e992785c7d115f353282168c118428e9ff152d6e86a926645815990a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.9 MB (276863484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccc67f0d14b2c8086af59c7b82cbe8aec3b9d7942d9e183bd78bfa384955ef26`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:09 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:09 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:12 GMT
ADD file:799f4e238d67485cc109d93512f4fe6f75bafc26a3476772191154125e52201d in / 
# Mon, 10 Aug 2026 17:38:12 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:10:19 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 18 Aug 2026 01:10:19 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 18 Aug 2026 01:10:19 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 18 Aug 2026 01:10:19 GMT
ARG REPO_CHANNEL=stable
# Tue, 18 Aug 2026 01:10:19 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 18 Aug 2026 01:10:19 GMT
ARG VERSION=26.6.2.160
# Tue, 18 Aug 2026 01:10:19 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 18 Aug 2026 01:10:55 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.160 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:10:56 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.160 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:10:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.160 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 18 Aug 2026 01:10:57 GMT
ENV LANG=en_US.UTF-8
# Tue, 18 Aug 2026 01:10:57 GMT
ENV TZ=UTC
# Tue, 18 Aug 2026 01:10:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.160 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 18 Aug 2026 01:10:57 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 18 Aug 2026 01:10:57 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 18 Aug 2026 01:10:57 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 18 Aug 2026 01:10:57 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 18 Aug 2026 01:10:57 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 18 Aug 2026 01:10:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd98820453db8ca817abd5549276f15852022251faa54b796c497b2e68764e36`  
		Last Modified: Tue, 18 Aug 2026 01:11:23 GMT  
		Size: 7.6 MB (7553493 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8aa49a43312e8448431ed4a2e76669a38c881987ea1a5a3d055aebbf6bd197e`  
		Last Modified: Tue, 18 Aug 2026 01:11:28 GMT  
		Size: 238.7 MB (238702996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6776c8be47ee5667235027b6e9896f503472373be2f01a1aaa7343c1779a447`  
		Last Modified: Tue, 18 Aug 2026 01:11:23 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51c175bee4dfe7b7180fd295a927c28e5cfa827789b6e40d7a005ae446f8b4ae`  
		Last Modified: Tue, 18 Aug 2026 01:11:23 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01cc3920a88f6983e2d104b645819d885601fe1d94ea6c897e41a2aff180454b`  
		Last Modified: Tue, 18 Aug 2026 01:11:20 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b819830301d996d13adb2a5140b1363b79d2a1a345e4a4797f4c874a7e1114dc`  
		Last Modified: Tue, 18 Aug 2026 01:11:25 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb2f5507f4160c700ee3a189d57a4e40aa97bbbf0e61b129dbead07ce182e623`  
		Last Modified: Tue, 18 Aug 2026 01:11:25 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.6` - unknown; unknown

```console
$ docker pull clickhouse@sha256:c7887fffbf0ad3a5ede47ced26945e5d43a48eff3236e95c761fa0089773b9aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58a9e19aa6d3c70fe865396f1cd760014476f78b07b481296a3ef46c943a7c2e`

```dockerfile
```

-	Layers:
	-	`sha256:dfbaa5989f08f7a6d38a9698fd9c3da1e0c08e6b028ca6233f6bbd9c3febda68`  
		Last Modified: Tue, 18 Aug 2026 01:11:23 GMT  
		Size: 26.2 KB (26231 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.6` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:6d95144679ec5e2c50ab66537b77ec3ed4d60d1a800777ce4f400119ab3f1e79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.4 MB (257374540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6d82c54533c21e194779ddc7aa46545d796a89f80db6ac58232215c0841b7e7`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:35 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:35 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:37 GMT
ADD file:c4ec32d39509d0c1acf2ddbb89cdc1fb3ceeae66ef80238f2ba7df53758fb44a in / 
# Mon, 10 Aug 2026 17:38:38 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:10:31 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 18 Aug 2026 01:10:31 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 18 Aug 2026 01:10:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 18 Aug 2026 01:10:31 GMT
ARG REPO_CHANNEL=stable
# Tue, 18 Aug 2026 01:10:31 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 18 Aug 2026 01:10:31 GMT
ARG VERSION=26.6.2.160
# Tue, 18 Aug 2026 01:10:31 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 18 Aug 2026 01:11:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.160 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:11:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.160 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:11:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.160 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 18 Aug 2026 01:11:09 GMT
ENV LANG=en_US.UTF-8
# Tue, 18 Aug 2026 01:11:09 GMT
ENV TZ=UTC
# Tue, 18 Aug 2026 01:11:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.160 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 18 Aug 2026 01:11:09 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 18 Aug 2026 01:11:09 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 18 Aug 2026 01:11:09 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 18 Aug 2026 01:11:09 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 18 Aug 2026 01:11:09 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 18 Aug 2026 01:11:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b090697edd6b50897d3d39765728a0a62efb36c776d34de9b4a1182fc4a3aa0`  
		Last Modified: Tue, 18 Aug 2026 01:11:32 GMT  
		Size: 7.5 MB (7533659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58e21078714a3b2f9c272e2513b66bfd06ee36775078e79c34fcd9ebce3fc63a`  
		Last Modified: Tue, 18 Aug 2026 01:11:36 GMT  
		Size: 221.4 MB (221350379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:611d5320c86de384b1d98d771d2763373569e98362d4da6155e2668bcb5ac8e7`  
		Last Modified: Tue, 18 Aug 2026 01:11:31 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8de5b4c8e9d4fbd062345ee6eddc10c210b2b6f0d1d6fc81053fc376afd2bc89`  
		Last Modified: Tue, 18 Aug 2026 01:11:31 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fcae25e330cdb8d3e91622194fd986a81400ace67f078ecd453cd2d99e47ca3`  
		Last Modified: Tue, 18 Aug 2026 01:11:32 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef7b61473fced67d0088df5ba3e96c4d671ba4a347736a84f305164d8831b29e`  
		Last Modified: Tue, 18 Aug 2026 01:11:32 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0896b5e324ee13fc0d5952a6f482f3c6250bf169d4af9bb1a92bfd7ab16bd41a`  
		Last Modified: Tue, 18 Aug 2026 01:11:33 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.6` - unknown; unknown

```console
$ docker pull clickhouse@sha256:929af380d081a4607ccb1da6d81bd56b297256227368c754617f13fda058a3e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b89bcdb873aef0a75b2c700ce5452d321373f1425e77c4fe34ef7b96dd474820`

```dockerfile
```

-	Layers:
	-	`sha256:d9b3fd373c5803eefbb3db76bce71199ab5631e81c993dcd3aa901f87819adef`  
		Last Modified: Tue, 18 Aug 2026 01:11:31 GMT  
		Size: 26.4 KB (26419 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.6-jammy`

```console
$ docker pull clickhouse@sha256:6199e663010044667252c21f6b759c053319f57a19fa69263ac6ad82cdf4608f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.6-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:1d390242e992785c7d115f353282168c118428e9ff152d6e86a926645815990a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.9 MB (276863484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccc67f0d14b2c8086af59c7b82cbe8aec3b9d7942d9e183bd78bfa384955ef26`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:09 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:09 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:12 GMT
ADD file:799f4e238d67485cc109d93512f4fe6f75bafc26a3476772191154125e52201d in / 
# Mon, 10 Aug 2026 17:38:12 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:10:19 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 18 Aug 2026 01:10:19 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 18 Aug 2026 01:10:19 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 18 Aug 2026 01:10:19 GMT
ARG REPO_CHANNEL=stable
# Tue, 18 Aug 2026 01:10:19 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 18 Aug 2026 01:10:19 GMT
ARG VERSION=26.6.2.160
# Tue, 18 Aug 2026 01:10:19 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 18 Aug 2026 01:10:55 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.160 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:10:56 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.160 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:10:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.160 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 18 Aug 2026 01:10:57 GMT
ENV LANG=en_US.UTF-8
# Tue, 18 Aug 2026 01:10:57 GMT
ENV TZ=UTC
# Tue, 18 Aug 2026 01:10:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.160 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 18 Aug 2026 01:10:57 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 18 Aug 2026 01:10:57 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 18 Aug 2026 01:10:57 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 18 Aug 2026 01:10:57 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 18 Aug 2026 01:10:57 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 18 Aug 2026 01:10:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd98820453db8ca817abd5549276f15852022251faa54b796c497b2e68764e36`  
		Last Modified: Tue, 18 Aug 2026 01:11:23 GMT  
		Size: 7.6 MB (7553493 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8aa49a43312e8448431ed4a2e76669a38c881987ea1a5a3d055aebbf6bd197e`  
		Last Modified: Tue, 18 Aug 2026 01:11:28 GMT  
		Size: 238.7 MB (238702996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6776c8be47ee5667235027b6e9896f503472373be2f01a1aaa7343c1779a447`  
		Last Modified: Tue, 18 Aug 2026 01:11:23 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51c175bee4dfe7b7180fd295a927c28e5cfa827789b6e40d7a005ae446f8b4ae`  
		Last Modified: Tue, 18 Aug 2026 01:11:23 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01cc3920a88f6983e2d104b645819d885601fe1d94ea6c897e41a2aff180454b`  
		Last Modified: Tue, 18 Aug 2026 01:11:20 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b819830301d996d13adb2a5140b1363b79d2a1a345e4a4797f4c874a7e1114dc`  
		Last Modified: Tue, 18 Aug 2026 01:11:25 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb2f5507f4160c700ee3a189d57a4e40aa97bbbf0e61b129dbead07ce182e623`  
		Last Modified: Tue, 18 Aug 2026 01:11:25 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.6-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:c7887fffbf0ad3a5ede47ced26945e5d43a48eff3236e95c761fa0089773b9aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58a9e19aa6d3c70fe865396f1cd760014476f78b07b481296a3ef46c943a7c2e`

```dockerfile
```

-	Layers:
	-	`sha256:dfbaa5989f08f7a6d38a9698fd9c3da1e0c08e6b028ca6233f6bbd9c3febda68`  
		Last Modified: Tue, 18 Aug 2026 01:11:23 GMT  
		Size: 26.2 KB (26231 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.6-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:6d95144679ec5e2c50ab66537b77ec3ed4d60d1a800777ce4f400119ab3f1e79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.4 MB (257374540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6d82c54533c21e194779ddc7aa46545d796a89f80db6ac58232215c0841b7e7`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:35 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:35 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:37 GMT
ADD file:c4ec32d39509d0c1acf2ddbb89cdc1fb3ceeae66ef80238f2ba7df53758fb44a in / 
# Mon, 10 Aug 2026 17:38:38 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:10:31 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 18 Aug 2026 01:10:31 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 18 Aug 2026 01:10:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 18 Aug 2026 01:10:31 GMT
ARG REPO_CHANNEL=stable
# Tue, 18 Aug 2026 01:10:31 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 18 Aug 2026 01:10:31 GMT
ARG VERSION=26.6.2.160
# Tue, 18 Aug 2026 01:10:31 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 18 Aug 2026 01:11:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.160 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:11:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.160 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:11:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.160 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 18 Aug 2026 01:11:09 GMT
ENV LANG=en_US.UTF-8
# Tue, 18 Aug 2026 01:11:09 GMT
ENV TZ=UTC
# Tue, 18 Aug 2026 01:11:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.160 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 18 Aug 2026 01:11:09 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 18 Aug 2026 01:11:09 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 18 Aug 2026 01:11:09 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 18 Aug 2026 01:11:09 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 18 Aug 2026 01:11:09 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 18 Aug 2026 01:11:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b090697edd6b50897d3d39765728a0a62efb36c776d34de9b4a1182fc4a3aa0`  
		Last Modified: Tue, 18 Aug 2026 01:11:32 GMT  
		Size: 7.5 MB (7533659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58e21078714a3b2f9c272e2513b66bfd06ee36775078e79c34fcd9ebce3fc63a`  
		Last Modified: Tue, 18 Aug 2026 01:11:36 GMT  
		Size: 221.4 MB (221350379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:611d5320c86de384b1d98d771d2763373569e98362d4da6155e2668bcb5ac8e7`  
		Last Modified: Tue, 18 Aug 2026 01:11:31 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8de5b4c8e9d4fbd062345ee6eddc10c210b2b6f0d1d6fc81053fc376afd2bc89`  
		Last Modified: Tue, 18 Aug 2026 01:11:31 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fcae25e330cdb8d3e91622194fd986a81400ace67f078ecd453cd2d99e47ca3`  
		Last Modified: Tue, 18 Aug 2026 01:11:32 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef7b61473fced67d0088df5ba3e96c4d671ba4a347736a84f305164d8831b29e`  
		Last Modified: Tue, 18 Aug 2026 01:11:32 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0896b5e324ee13fc0d5952a6f482f3c6250bf169d4af9bb1a92bfd7ab16bd41a`  
		Last Modified: Tue, 18 Aug 2026 01:11:33 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.6-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:929af380d081a4607ccb1da6d81bd56b297256227368c754617f13fda058a3e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b89bcdb873aef0a75b2c700ce5452d321373f1425e77c4fe34ef7b96dd474820`

```dockerfile
```

-	Layers:
	-	`sha256:d9b3fd373c5803eefbb3db76bce71199ab5631e81c993dcd3aa901f87819adef`  
		Last Modified: Tue, 18 Aug 2026 01:11:31 GMT  
		Size: 26.4 KB (26419 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.6.2`

```console
$ docker pull clickhouse@sha256:6199e663010044667252c21f6b759c053319f57a19fa69263ac6ad82cdf4608f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.6.2` - linux; amd64

```console
$ docker pull clickhouse@sha256:1d390242e992785c7d115f353282168c118428e9ff152d6e86a926645815990a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.9 MB (276863484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccc67f0d14b2c8086af59c7b82cbe8aec3b9d7942d9e183bd78bfa384955ef26`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:09 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:09 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:12 GMT
ADD file:799f4e238d67485cc109d93512f4fe6f75bafc26a3476772191154125e52201d in / 
# Mon, 10 Aug 2026 17:38:12 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:10:19 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 18 Aug 2026 01:10:19 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 18 Aug 2026 01:10:19 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 18 Aug 2026 01:10:19 GMT
ARG REPO_CHANNEL=stable
# Tue, 18 Aug 2026 01:10:19 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 18 Aug 2026 01:10:19 GMT
ARG VERSION=26.6.2.160
# Tue, 18 Aug 2026 01:10:19 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 18 Aug 2026 01:10:55 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.160 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:10:56 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.160 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:10:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.160 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 18 Aug 2026 01:10:57 GMT
ENV LANG=en_US.UTF-8
# Tue, 18 Aug 2026 01:10:57 GMT
ENV TZ=UTC
# Tue, 18 Aug 2026 01:10:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.160 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 18 Aug 2026 01:10:57 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 18 Aug 2026 01:10:57 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 18 Aug 2026 01:10:57 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 18 Aug 2026 01:10:57 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 18 Aug 2026 01:10:57 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 18 Aug 2026 01:10:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd98820453db8ca817abd5549276f15852022251faa54b796c497b2e68764e36`  
		Last Modified: Tue, 18 Aug 2026 01:11:23 GMT  
		Size: 7.6 MB (7553493 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8aa49a43312e8448431ed4a2e76669a38c881987ea1a5a3d055aebbf6bd197e`  
		Last Modified: Tue, 18 Aug 2026 01:11:28 GMT  
		Size: 238.7 MB (238702996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6776c8be47ee5667235027b6e9896f503472373be2f01a1aaa7343c1779a447`  
		Last Modified: Tue, 18 Aug 2026 01:11:23 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51c175bee4dfe7b7180fd295a927c28e5cfa827789b6e40d7a005ae446f8b4ae`  
		Last Modified: Tue, 18 Aug 2026 01:11:23 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01cc3920a88f6983e2d104b645819d885601fe1d94ea6c897e41a2aff180454b`  
		Last Modified: Tue, 18 Aug 2026 01:11:20 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b819830301d996d13adb2a5140b1363b79d2a1a345e4a4797f4c874a7e1114dc`  
		Last Modified: Tue, 18 Aug 2026 01:11:25 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb2f5507f4160c700ee3a189d57a4e40aa97bbbf0e61b129dbead07ce182e623`  
		Last Modified: Tue, 18 Aug 2026 01:11:25 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.6.2` - unknown; unknown

```console
$ docker pull clickhouse@sha256:c7887fffbf0ad3a5ede47ced26945e5d43a48eff3236e95c761fa0089773b9aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58a9e19aa6d3c70fe865396f1cd760014476f78b07b481296a3ef46c943a7c2e`

```dockerfile
```

-	Layers:
	-	`sha256:dfbaa5989f08f7a6d38a9698fd9c3da1e0c08e6b028ca6233f6bbd9c3febda68`  
		Last Modified: Tue, 18 Aug 2026 01:11:23 GMT  
		Size: 26.2 KB (26231 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.6.2` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:6d95144679ec5e2c50ab66537b77ec3ed4d60d1a800777ce4f400119ab3f1e79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.4 MB (257374540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6d82c54533c21e194779ddc7aa46545d796a89f80db6ac58232215c0841b7e7`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:35 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:35 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:37 GMT
ADD file:c4ec32d39509d0c1acf2ddbb89cdc1fb3ceeae66ef80238f2ba7df53758fb44a in / 
# Mon, 10 Aug 2026 17:38:38 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:10:31 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 18 Aug 2026 01:10:31 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 18 Aug 2026 01:10:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 18 Aug 2026 01:10:31 GMT
ARG REPO_CHANNEL=stable
# Tue, 18 Aug 2026 01:10:31 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 18 Aug 2026 01:10:31 GMT
ARG VERSION=26.6.2.160
# Tue, 18 Aug 2026 01:10:31 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 18 Aug 2026 01:11:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.160 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:11:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.160 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:11:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.160 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 18 Aug 2026 01:11:09 GMT
ENV LANG=en_US.UTF-8
# Tue, 18 Aug 2026 01:11:09 GMT
ENV TZ=UTC
# Tue, 18 Aug 2026 01:11:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.160 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 18 Aug 2026 01:11:09 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 18 Aug 2026 01:11:09 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 18 Aug 2026 01:11:09 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 18 Aug 2026 01:11:09 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 18 Aug 2026 01:11:09 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 18 Aug 2026 01:11:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b090697edd6b50897d3d39765728a0a62efb36c776d34de9b4a1182fc4a3aa0`  
		Last Modified: Tue, 18 Aug 2026 01:11:32 GMT  
		Size: 7.5 MB (7533659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58e21078714a3b2f9c272e2513b66bfd06ee36775078e79c34fcd9ebce3fc63a`  
		Last Modified: Tue, 18 Aug 2026 01:11:36 GMT  
		Size: 221.4 MB (221350379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:611d5320c86de384b1d98d771d2763373569e98362d4da6155e2668bcb5ac8e7`  
		Last Modified: Tue, 18 Aug 2026 01:11:31 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8de5b4c8e9d4fbd062345ee6eddc10c210b2b6f0d1d6fc81053fc376afd2bc89`  
		Last Modified: Tue, 18 Aug 2026 01:11:31 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fcae25e330cdb8d3e91622194fd986a81400ace67f078ecd453cd2d99e47ca3`  
		Last Modified: Tue, 18 Aug 2026 01:11:32 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef7b61473fced67d0088df5ba3e96c4d671ba4a347736a84f305164d8831b29e`  
		Last Modified: Tue, 18 Aug 2026 01:11:32 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0896b5e324ee13fc0d5952a6f482f3c6250bf169d4af9bb1a92bfd7ab16bd41a`  
		Last Modified: Tue, 18 Aug 2026 01:11:33 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.6.2` - unknown; unknown

```console
$ docker pull clickhouse@sha256:929af380d081a4607ccb1da6d81bd56b297256227368c754617f13fda058a3e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b89bcdb873aef0a75b2c700ce5452d321373f1425e77c4fe34ef7b96dd474820`

```dockerfile
```

-	Layers:
	-	`sha256:d9b3fd373c5803eefbb3db76bce71199ab5631e81c993dcd3aa901f87819adef`  
		Last Modified: Tue, 18 Aug 2026 01:11:31 GMT  
		Size: 26.4 KB (26419 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.6.2-jammy`

```console
$ docker pull clickhouse@sha256:6199e663010044667252c21f6b759c053319f57a19fa69263ac6ad82cdf4608f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.6.2-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:1d390242e992785c7d115f353282168c118428e9ff152d6e86a926645815990a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.9 MB (276863484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccc67f0d14b2c8086af59c7b82cbe8aec3b9d7942d9e183bd78bfa384955ef26`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:09 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:09 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:12 GMT
ADD file:799f4e238d67485cc109d93512f4fe6f75bafc26a3476772191154125e52201d in / 
# Mon, 10 Aug 2026 17:38:12 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:10:19 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 18 Aug 2026 01:10:19 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 18 Aug 2026 01:10:19 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 18 Aug 2026 01:10:19 GMT
ARG REPO_CHANNEL=stable
# Tue, 18 Aug 2026 01:10:19 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 18 Aug 2026 01:10:19 GMT
ARG VERSION=26.6.2.160
# Tue, 18 Aug 2026 01:10:19 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 18 Aug 2026 01:10:55 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.160 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:10:56 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.160 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:10:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.160 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 18 Aug 2026 01:10:57 GMT
ENV LANG=en_US.UTF-8
# Tue, 18 Aug 2026 01:10:57 GMT
ENV TZ=UTC
# Tue, 18 Aug 2026 01:10:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.160 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 18 Aug 2026 01:10:57 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 18 Aug 2026 01:10:57 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 18 Aug 2026 01:10:57 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 18 Aug 2026 01:10:57 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 18 Aug 2026 01:10:57 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 18 Aug 2026 01:10:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd98820453db8ca817abd5549276f15852022251faa54b796c497b2e68764e36`  
		Last Modified: Tue, 18 Aug 2026 01:11:23 GMT  
		Size: 7.6 MB (7553493 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8aa49a43312e8448431ed4a2e76669a38c881987ea1a5a3d055aebbf6bd197e`  
		Last Modified: Tue, 18 Aug 2026 01:11:28 GMT  
		Size: 238.7 MB (238702996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6776c8be47ee5667235027b6e9896f503472373be2f01a1aaa7343c1779a447`  
		Last Modified: Tue, 18 Aug 2026 01:11:23 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51c175bee4dfe7b7180fd295a927c28e5cfa827789b6e40d7a005ae446f8b4ae`  
		Last Modified: Tue, 18 Aug 2026 01:11:23 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01cc3920a88f6983e2d104b645819d885601fe1d94ea6c897e41a2aff180454b`  
		Last Modified: Tue, 18 Aug 2026 01:11:20 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b819830301d996d13adb2a5140b1363b79d2a1a345e4a4797f4c874a7e1114dc`  
		Last Modified: Tue, 18 Aug 2026 01:11:25 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb2f5507f4160c700ee3a189d57a4e40aa97bbbf0e61b129dbead07ce182e623`  
		Last Modified: Tue, 18 Aug 2026 01:11:25 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.6.2-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:c7887fffbf0ad3a5ede47ced26945e5d43a48eff3236e95c761fa0089773b9aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58a9e19aa6d3c70fe865396f1cd760014476f78b07b481296a3ef46c943a7c2e`

```dockerfile
```

-	Layers:
	-	`sha256:dfbaa5989f08f7a6d38a9698fd9c3da1e0c08e6b028ca6233f6bbd9c3febda68`  
		Last Modified: Tue, 18 Aug 2026 01:11:23 GMT  
		Size: 26.2 KB (26231 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.6.2-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:6d95144679ec5e2c50ab66537b77ec3ed4d60d1a800777ce4f400119ab3f1e79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.4 MB (257374540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6d82c54533c21e194779ddc7aa46545d796a89f80db6ac58232215c0841b7e7`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:35 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:35 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:37 GMT
ADD file:c4ec32d39509d0c1acf2ddbb89cdc1fb3ceeae66ef80238f2ba7df53758fb44a in / 
# Mon, 10 Aug 2026 17:38:38 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:10:31 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 18 Aug 2026 01:10:31 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 18 Aug 2026 01:10:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 18 Aug 2026 01:10:31 GMT
ARG REPO_CHANNEL=stable
# Tue, 18 Aug 2026 01:10:31 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 18 Aug 2026 01:10:31 GMT
ARG VERSION=26.6.2.160
# Tue, 18 Aug 2026 01:10:31 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 18 Aug 2026 01:11:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.160 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:11:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.160 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:11:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.160 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 18 Aug 2026 01:11:09 GMT
ENV LANG=en_US.UTF-8
# Tue, 18 Aug 2026 01:11:09 GMT
ENV TZ=UTC
# Tue, 18 Aug 2026 01:11:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.160 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 18 Aug 2026 01:11:09 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 18 Aug 2026 01:11:09 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 18 Aug 2026 01:11:09 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 18 Aug 2026 01:11:09 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 18 Aug 2026 01:11:09 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 18 Aug 2026 01:11:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b090697edd6b50897d3d39765728a0a62efb36c776d34de9b4a1182fc4a3aa0`  
		Last Modified: Tue, 18 Aug 2026 01:11:32 GMT  
		Size: 7.5 MB (7533659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58e21078714a3b2f9c272e2513b66bfd06ee36775078e79c34fcd9ebce3fc63a`  
		Last Modified: Tue, 18 Aug 2026 01:11:36 GMT  
		Size: 221.4 MB (221350379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:611d5320c86de384b1d98d771d2763373569e98362d4da6155e2668bcb5ac8e7`  
		Last Modified: Tue, 18 Aug 2026 01:11:31 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8de5b4c8e9d4fbd062345ee6eddc10c210b2b6f0d1d6fc81053fc376afd2bc89`  
		Last Modified: Tue, 18 Aug 2026 01:11:31 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fcae25e330cdb8d3e91622194fd986a81400ace67f078ecd453cd2d99e47ca3`  
		Last Modified: Tue, 18 Aug 2026 01:11:32 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef7b61473fced67d0088df5ba3e96c4d671ba4a347736a84f305164d8831b29e`  
		Last Modified: Tue, 18 Aug 2026 01:11:32 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0896b5e324ee13fc0d5952a6f482f3c6250bf169d4af9bb1a92bfd7ab16bd41a`  
		Last Modified: Tue, 18 Aug 2026 01:11:33 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.6.2-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:929af380d081a4607ccb1da6d81bd56b297256227368c754617f13fda058a3e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b89bcdb873aef0a75b2c700ce5452d321373f1425e77c4fe34ef7b96dd474820`

```dockerfile
```

-	Layers:
	-	`sha256:d9b3fd373c5803eefbb3db76bce71199ab5631e81c993dcd3aa901f87819adef`  
		Last Modified: Tue, 18 Aug 2026 01:11:31 GMT  
		Size: 26.4 KB (26419 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.6.2.160`

```console
$ docker pull clickhouse@sha256:6199e663010044667252c21f6b759c053319f57a19fa69263ac6ad82cdf4608f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.6.2.160` - linux; amd64

```console
$ docker pull clickhouse@sha256:1d390242e992785c7d115f353282168c118428e9ff152d6e86a926645815990a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.9 MB (276863484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccc67f0d14b2c8086af59c7b82cbe8aec3b9d7942d9e183bd78bfa384955ef26`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:09 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:09 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:12 GMT
ADD file:799f4e238d67485cc109d93512f4fe6f75bafc26a3476772191154125e52201d in / 
# Mon, 10 Aug 2026 17:38:12 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:10:19 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 18 Aug 2026 01:10:19 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 18 Aug 2026 01:10:19 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 18 Aug 2026 01:10:19 GMT
ARG REPO_CHANNEL=stable
# Tue, 18 Aug 2026 01:10:19 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 18 Aug 2026 01:10:19 GMT
ARG VERSION=26.6.2.160
# Tue, 18 Aug 2026 01:10:19 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 18 Aug 2026 01:10:55 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.160 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:10:56 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.160 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:10:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.160 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 18 Aug 2026 01:10:57 GMT
ENV LANG=en_US.UTF-8
# Tue, 18 Aug 2026 01:10:57 GMT
ENV TZ=UTC
# Tue, 18 Aug 2026 01:10:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.160 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 18 Aug 2026 01:10:57 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 18 Aug 2026 01:10:57 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 18 Aug 2026 01:10:57 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 18 Aug 2026 01:10:57 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 18 Aug 2026 01:10:57 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 18 Aug 2026 01:10:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd98820453db8ca817abd5549276f15852022251faa54b796c497b2e68764e36`  
		Last Modified: Tue, 18 Aug 2026 01:11:23 GMT  
		Size: 7.6 MB (7553493 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8aa49a43312e8448431ed4a2e76669a38c881987ea1a5a3d055aebbf6bd197e`  
		Last Modified: Tue, 18 Aug 2026 01:11:28 GMT  
		Size: 238.7 MB (238702996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6776c8be47ee5667235027b6e9896f503472373be2f01a1aaa7343c1779a447`  
		Last Modified: Tue, 18 Aug 2026 01:11:23 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51c175bee4dfe7b7180fd295a927c28e5cfa827789b6e40d7a005ae446f8b4ae`  
		Last Modified: Tue, 18 Aug 2026 01:11:23 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01cc3920a88f6983e2d104b645819d885601fe1d94ea6c897e41a2aff180454b`  
		Last Modified: Tue, 18 Aug 2026 01:11:20 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b819830301d996d13adb2a5140b1363b79d2a1a345e4a4797f4c874a7e1114dc`  
		Last Modified: Tue, 18 Aug 2026 01:11:25 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb2f5507f4160c700ee3a189d57a4e40aa97bbbf0e61b129dbead07ce182e623`  
		Last Modified: Tue, 18 Aug 2026 01:11:25 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.6.2.160` - unknown; unknown

```console
$ docker pull clickhouse@sha256:c7887fffbf0ad3a5ede47ced26945e5d43a48eff3236e95c761fa0089773b9aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58a9e19aa6d3c70fe865396f1cd760014476f78b07b481296a3ef46c943a7c2e`

```dockerfile
```

-	Layers:
	-	`sha256:dfbaa5989f08f7a6d38a9698fd9c3da1e0c08e6b028ca6233f6bbd9c3febda68`  
		Last Modified: Tue, 18 Aug 2026 01:11:23 GMT  
		Size: 26.2 KB (26231 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.6.2.160` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:6d95144679ec5e2c50ab66537b77ec3ed4d60d1a800777ce4f400119ab3f1e79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.4 MB (257374540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6d82c54533c21e194779ddc7aa46545d796a89f80db6ac58232215c0841b7e7`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:35 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:35 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:37 GMT
ADD file:c4ec32d39509d0c1acf2ddbb89cdc1fb3ceeae66ef80238f2ba7df53758fb44a in / 
# Mon, 10 Aug 2026 17:38:38 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:10:31 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 18 Aug 2026 01:10:31 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 18 Aug 2026 01:10:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 18 Aug 2026 01:10:31 GMT
ARG REPO_CHANNEL=stable
# Tue, 18 Aug 2026 01:10:31 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 18 Aug 2026 01:10:31 GMT
ARG VERSION=26.6.2.160
# Tue, 18 Aug 2026 01:10:31 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 18 Aug 2026 01:11:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.160 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:11:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.160 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:11:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.160 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 18 Aug 2026 01:11:09 GMT
ENV LANG=en_US.UTF-8
# Tue, 18 Aug 2026 01:11:09 GMT
ENV TZ=UTC
# Tue, 18 Aug 2026 01:11:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.160 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 18 Aug 2026 01:11:09 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 18 Aug 2026 01:11:09 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 18 Aug 2026 01:11:09 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 18 Aug 2026 01:11:09 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 18 Aug 2026 01:11:09 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 18 Aug 2026 01:11:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b090697edd6b50897d3d39765728a0a62efb36c776d34de9b4a1182fc4a3aa0`  
		Last Modified: Tue, 18 Aug 2026 01:11:32 GMT  
		Size: 7.5 MB (7533659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58e21078714a3b2f9c272e2513b66bfd06ee36775078e79c34fcd9ebce3fc63a`  
		Last Modified: Tue, 18 Aug 2026 01:11:36 GMT  
		Size: 221.4 MB (221350379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:611d5320c86de384b1d98d771d2763373569e98362d4da6155e2668bcb5ac8e7`  
		Last Modified: Tue, 18 Aug 2026 01:11:31 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8de5b4c8e9d4fbd062345ee6eddc10c210b2b6f0d1d6fc81053fc376afd2bc89`  
		Last Modified: Tue, 18 Aug 2026 01:11:31 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fcae25e330cdb8d3e91622194fd986a81400ace67f078ecd453cd2d99e47ca3`  
		Last Modified: Tue, 18 Aug 2026 01:11:32 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef7b61473fced67d0088df5ba3e96c4d671ba4a347736a84f305164d8831b29e`  
		Last Modified: Tue, 18 Aug 2026 01:11:32 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0896b5e324ee13fc0d5952a6f482f3c6250bf169d4af9bb1a92bfd7ab16bd41a`  
		Last Modified: Tue, 18 Aug 2026 01:11:33 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.6.2.160` - unknown; unknown

```console
$ docker pull clickhouse@sha256:929af380d081a4607ccb1da6d81bd56b297256227368c754617f13fda058a3e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b89bcdb873aef0a75b2c700ce5452d321373f1425e77c4fe34ef7b96dd474820`

```dockerfile
```

-	Layers:
	-	`sha256:d9b3fd373c5803eefbb3db76bce71199ab5631e81c993dcd3aa901f87819adef`  
		Last Modified: Tue, 18 Aug 2026 01:11:31 GMT  
		Size: 26.4 KB (26419 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.6.2.160-jammy`

```console
$ docker pull clickhouse@sha256:6199e663010044667252c21f6b759c053319f57a19fa69263ac6ad82cdf4608f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.6.2.160-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:1d390242e992785c7d115f353282168c118428e9ff152d6e86a926645815990a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.9 MB (276863484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccc67f0d14b2c8086af59c7b82cbe8aec3b9d7942d9e183bd78bfa384955ef26`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:09 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:09 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:12 GMT
ADD file:799f4e238d67485cc109d93512f4fe6f75bafc26a3476772191154125e52201d in / 
# Mon, 10 Aug 2026 17:38:12 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:10:19 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 18 Aug 2026 01:10:19 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 18 Aug 2026 01:10:19 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 18 Aug 2026 01:10:19 GMT
ARG REPO_CHANNEL=stable
# Tue, 18 Aug 2026 01:10:19 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 18 Aug 2026 01:10:19 GMT
ARG VERSION=26.6.2.160
# Tue, 18 Aug 2026 01:10:19 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 18 Aug 2026 01:10:55 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.160 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:10:56 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.160 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:10:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.160 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 18 Aug 2026 01:10:57 GMT
ENV LANG=en_US.UTF-8
# Tue, 18 Aug 2026 01:10:57 GMT
ENV TZ=UTC
# Tue, 18 Aug 2026 01:10:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.160 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 18 Aug 2026 01:10:57 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 18 Aug 2026 01:10:57 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 18 Aug 2026 01:10:57 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 18 Aug 2026 01:10:57 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 18 Aug 2026 01:10:57 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 18 Aug 2026 01:10:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd98820453db8ca817abd5549276f15852022251faa54b796c497b2e68764e36`  
		Last Modified: Tue, 18 Aug 2026 01:11:23 GMT  
		Size: 7.6 MB (7553493 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8aa49a43312e8448431ed4a2e76669a38c881987ea1a5a3d055aebbf6bd197e`  
		Last Modified: Tue, 18 Aug 2026 01:11:28 GMT  
		Size: 238.7 MB (238702996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6776c8be47ee5667235027b6e9896f503472373be2f01a1aaa7343c1779a447`  
		Last Modified: Tue, 18 Aug 2026 01:11:23 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51c175bee4dfe7b7180fd295a927c28e5cfa827789b6e40d7a005ae446f8b4ae`  
		Last Modified: Tue, 18 Aug 2026 01:11:23 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01cc3920a88f6983e2d104b645819d885601fe1d94ea6c897e41a2aff180454b`  
		Last Modified: Tue, 18 Aug 2026 01:11:20 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b819830301d996d13adb2a5140b1363b79d2a1a345e4a4797f4c874a7e1114dc`  
		Last Modified: Tue, 18 Aug 2026 01:11:25 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb2f5507f4160c700ee3a189d57a4e40aa97bbbf0e61b129dbead07ce182e623`  
		Last Modified: Tue, 18 Aug 2026 01:11:25 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.6.2.160-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:c7887fffbf0ad3a5ede47ced26945e5d43a48eff3236e95c761fa0089773b9aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58a9e19aa6d3c70fe865396f1cd760014476f78b07b481296a3ef46c943a7c2e`

```dockerfile
```

-	Layers:
	-	`sha256:dfbaa5989f08f7a6d38a9698fd9c3da1e0c08e6b028ca6233f6bbd9c3febda68`  
		Last Modified: Tue, 18 Aug 2026 01:11:23 GMT  
		Size: 26.2 KB (26231 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.6.2.160-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:6d95144679ec5e2c50ab66537b77ec3ed4d60d1a800777ce4f400119ab3f1e79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.4 MB (257374540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6d82c54533c21e194779ddc7aa46545d796a89f80db6ac58232215c0841b7e7`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:35 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:35 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:37 GMT
ADD file:c4ec32d39509d0c1acf2ddbb89cdc1fb3ceeae66ef80238f2ba7df53758fb44a in / 
# Mon, 10 Aug 2026 17:38:38 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:10:31 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 18 Aug 2026 01:10:31 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 18 Aug 2026 01:10:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 18 Aug 2026 01:10:31 GMT
ARG REPO_CHANNEL=stable
# Tue, 18 Aug 2026 01:10:31 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 18 Aug 2026 01:10:31 GMT
ARG VERSION=26.6.2.160
# Tue, 18 Aug 2026 01:10:31 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 18 Aug 2026 01:11:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.160 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:11:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.160 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:11:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.160 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 18 Aug 2026 01:11:09 GMT
ENV LANG=en_US.UTF-8
# Tue, 18 Aug 2026 01:11:09 GMT
ENV TZ=UTC
# Tue, 18 Aug 2026 01:11:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.160 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 18 Aug 2026 01:11:09 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 18 Aug 2026 01:11:09 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 18 Aug 2026 01:11:09 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 18 Aug 2026 01:11:09 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 18 Aug 2026 01:11:09 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 18 Aug 2026 01:11:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b090697edd6b50897d3d39765728a0a62efb36c776d34de9b4a1182fc4a3aa0`  
		Last Modified: Tue, 18 Aug 2026 01:11:32 GMT  
		Size: 7.5 MB (7533659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58e21078714a3b2f9c272e2513b66bfd06ee36775078e79c34fcd9ebce3fc63a`  
		Last Modified: Tue, 18 Aug 2026 01:11:36 GMT  
		Size: 221.4 MB (221350379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:611d5320c86de384b1d98d771d2763373569e98362d4da6155e2668bcb5ac8e7`  
		Last Modified: Tue, 18 Aug 2026 01:11:31 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8de5b4c8e9d4fbd062345ee6eddc10c210b2b6f0d1d6fc81053fc376afd2bc89`  
		Last Modified: Tue, 18 Aug 2026 01:11:31 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fcae25e330cdb8d3e91622194fd986a81400ace67f078ecd453cd2d99e47ca3`  
		Last Modified: Tue, 18 Aug 2026 01:11:32 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef7b61473fced67d0088df5ba3e96c4d671ba4a347736a84f305164d8831b29e`  
		Last Modified: Tue, 18 Aug 2026 01:11:32 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0896b5e324ee13fc0d5952a6f482f3c6250bf169d4af9bb1a92bfd7ab16bd41a`  
		Last Modified: Tue, 18 Aug 2026 01:11:33 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.6.2.160-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:929af380d081a4607ccb1da6d81bd56b297256227368c754617f13fda058a3e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b89bcdb873aef0a75b2c700ce5452d321373f1425e77c4fe34ef7b96dd474820`

```dockerfile
```

-	Layers:
	-	`sha256:d9b3fd373c5803eefbb3db76bce71199ab5631e81c993dcd3aa901f87819adef`  
		Last Modified: Tue, 18 Aug 2026 01:11:31 GMT  
		Size: 26.4 KB (26419 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.7`

```console
$ docker pull clickhouse@sha256:93fe28df2f9224a02072b8d84dc2d2930ad6b063f9758f3c3650f9f7c44a7c26
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.7` - linux; amd64

```console
$ docker pull clickhouse@sha256:3164f01fbf7e9db703b75d8ca2d9e53e6bc965dd8bd954ff2f20b8b2d4cba2c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.8 MB (266804123 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92c7d5321dea0b779b2ff37e7de2c1fc208a251d1da27f8c9b454abe3ce59452`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:09 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:09 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:12 GMT
ADD file:799f4e238d67485cc109d93512f4fe6f75bafc26a3476772191154125e52201d in / 
# Mon, 10 Aug 2026 17:38:12 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:10:14 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 18 Aug 2026 01:10:14 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 18 Aug 2026 01:10:14 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Tue, 18 Aug 2026 01:10:14 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 18 Aug 2026 01:10:14 GMT
ARG REPO_CHANNEL=stable
# Tue, 18 Aug 2026 01:10:14 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 18 Aug 2026 01:10:14 GMT
ARG VERSION=26.7.3.19
# Tue, 18 Aug 2026 01:10:14 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 18 Aug 2026 01:10:40 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:10:40 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:10:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 18 Aug 2026 01:10:41 GMT
ENV LANG=en_US.UTF-8
# Tue, 18 Aug 2026 01:10:41 GMT
ENV TZ=UTC
# Tue, 18 Aug 2026 01:10:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 18 Aug 2026 01:10:41 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 18 Aug 2026 01:10:41 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 18 Aug 2026 01:10:41 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 18 Aug 2026 01:10:41 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 18 Aug 2026 01:10:41 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 18 Aug 2026 01:10:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:364a5646d9943486d6a3a484357c9b3d73f0db63fd9bc57b9d84a07fd2d15010`  
		Last Modified: Tue, 18 Aug 2026 01:11:07 GMT  
		Size: 7.6 MB (7553472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e7fb975c42629215870c63bc071d31541d627e7fdc9b365bd6693dd128529df`  
		Last Modified: Tue, 18 Aug 2026 01:11:12 GMT  
		Size: 228.6 MB (228643657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a838dd7d1c14ec2d3e877ba3c7f024f26c60081f6dbfec703a17d0ae29ce9a1e`  
		Last Modified: Tue, 18 Aug 2026 01:11:07 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26b1878f24863aaf8035e0e9851c2a5bdbd309f4a5abb779cb6df515bb7da5a0`  
		Last Modified: Tue, 18 Aug 2026 01:11:07 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a5a74b45f914cf7f050312ae054ded0214962938c0a6555da87634df4cdacb5`  
		Last Modified: Tue, 18 Aug 2026 01:11:09 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa110213f4cfbd5177e8cd30ba747751492061eb8db2f2b49ad76c862d4bc7e8`  
		Last Modified: Tue, 18 Aug 2026 01:11:08 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:443779f1a06806b01c46a4456b44e38d73028b63cfadf79c886e1364286472a2`  
		Last Modified: Tue, 18 Aug 2026 01:11:08 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7` - unknown; unknown

```console
$ docker pull clickhouse@sha256:456aaf8c34756678b1b14575f7dfa8a42ea51dd8742dd9554750a0ee16213b61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.3 KB (27345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f98e32dc80770c0519d1eb717c251961e968cf0862a48774bd48eab614e94fe6`

```dockerfile
```

-	Layers:
	-	`sha256:edf9a39f484d42ab747ea23d5269ed7f06d81557c9ec8ad20e80f2d843b6e568`  
		Last Modified: Tue, 18 Aug 2026 01:11:07 GMT  
		Size: 27.3 KB (27345 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.7` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:1412627f3eb5297b8500ba471f68e47bc176e7a0a82ee0a38e490bdcad5c128c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.1 MB (250118159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfb744431d30ee395762836485ccb105b3a7b1307a7ed7f0c7d90b110bc967d1`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:35 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:35 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:37 GMT
ADD file:c4ec32d39509d0c1acf2ddbb89cdc1fb3ceeae66ef80238f2ba7df53758fb44a in / 
# Mon, 10 Aug 2026 17:38:38 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:10:26 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 18 Aug 2026 01:10:26 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 18 Aug 2026 01:10:26 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Tue, 18 Aug 2026 01:10:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 18 Aug 2026 01:10:26 GMT
ARG REPO_CHANNEL=stable
# Tue, 18 Aug 2026 01:10:26 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 18 Aug 2026 01:10:26 GMT
ARG VERSION=26.7.3.19
# Tue, 18 Aug 2026 01:10:26 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 18 Aug 2026 01:10:55 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:10:55 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:10:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 18 Aug 2026 01:10:57 GMT
ENV LANG=en_US.UTF-8
# Tue, 18 Aug 2026 01:10:57 GMT
ENV TZ=UTC
# Tue, 18 Aug 2026 01:10:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 18 Aug 2026 01:10:57 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 18 Aug 2026 01:10:57 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 18 Aug 2026 01:10:57 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 18 Aug 2026 01:10:57 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 18 Aug 2026 01:10:57 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 18 Aug 2026 01:10:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d46aa16f473c7923ebd97071da74de6ce711ff2d54cba1a35bab9e2107987a2`  
		Last Modified: Tue, 18 Aug 2026 01:11:19 GMT  
		Size: 7.5 MB (7533554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f577ae10908c94fbbccaa9246fef22868acf9e517f8456ce2b78db43cfc1554`  
		Last Modified: Tue, 18 Aug 2026 01:11:23 GMT  
		Size: 214.1 MB (214094100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a09e640922e79ba0b8c268cdfcd79d547c046e371834ef0204875a9dfef8273`  
		Last Modified: Tue, 18 Aug 2026 01:11:19 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa3cf20e767d3a2015c2bc9ffa0967227f41d30063bede23079ef0f646ed2188`  
		Last Modified: Tue, 18 Aug 2026 01:11:19 GMT  
		Size: 865.8 KB (865752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01cc3920a88f6983e2d104b645819d885601fe1d94ea6c897e41a2aff180454b`  
		Last Modified: Tue, 18 Aug 2026 01:11:20 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a571a1f085ce514244058f843720522607019421a4d63ecacae6251ded4a359`  
		Last Modified: Tue, 18 Aug 2026 01:11:20 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a31dbbbd3f455769ce13821c4f97f2a5e21af0a8ee38779fdd472d51642d3375`  
		Last Modified: Tue, 18 Aug 2026 01:11:20 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7` - unknown; unknown

```console
$ docker pull clickhouse@sha256:267792f4f12702e9ac28ca61126728ee7c109c802154001273c0a4bb824ec220
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 KB (27557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65be8f102cb41cfb294fca1d317f9b7ce46009cbc68bef0ae30a50dc96145930`

```dockerfile
```

-	Layers:
	-	`sha256:172eaa9c3af40a01dd504848acb83425b21774431373659fca2eb80a3b1ec3ab`  
		Last Modified: Tue, 18 Aug 2026 01:11:19 GMT  
		Size: 27.6 KB (27557 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.7-jammy`

```console
$ docker pull clickhouse@sha256:93fe28df2f9224a02072b8d84dc2d2930ad6b063f9758f3c3650f9f7c44a7c26
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.7-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:3164f01fbf7e9db703b75d8ca2d9e53e6bc965dd8bd954ff2f20b8b2d4cba2c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.8 MB (266804123 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92c7d5321dea0b779b2ff37e7de2c1fc208a251d1da27f8c9b454abe3ce59452`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:09 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:09 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:12 GMT
ADD file:799f4e238d67485cc109d93512f4fe6f75bafc26a3476772191154125e52201d in / 
# Mon, 10 Aug 2026 17:38:12 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:10:14 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 18 Aug 2026 01:10:14 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 18 Aug 2026 01:10:14 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Tue, 18 Aug 2026 01:10:14 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 18 Aug 2026 01:10:14 GMT
ARG REPO_CHANNEL=stable
# Tue, 18 Aug 2026 01:10:14 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 18 Aug 2026 01:10:14 GMT
ARG VERSION=26.7.3.19
# Tue, 18 Aug 2026 01:10:14 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 18 Aug 2026 01:10:40 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:10:40 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:10:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 18 Aug 2026 01:10:41 GMT
ENV LANG=en_US.UTF-8
# Tue, 18 Aug 2026 01:10:41 GMT
ENV TZ=UTC
# Tue, 18 Aug 2026 01:10:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 18 Aug 2026 01:10:41 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 18 Aug 2026 01:10:41 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 18 Aug 2026 01:10:41 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 18 Aug 2026 01:10:41 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 18 Aug 2026 01:10:41 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 18 Aug 2026 01:10:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:364a5646d9943486d6a3a484357c9b3d73f0db63fd9bc57b9d84a07fd2d15010`  
		Last Modified: Tue, 18 Aug 2026 01:11:07 GMT  
		Size: 7.6 MB (7553472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e7fb975c42629215870c63bc071d31541d627e7fdc9b365bd6693dd128529df`  
		Last Modified: Tue, 18 Aug 2026 01:11:12 GMT  
		Size: 228.6 MB (228643657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a838dd7d1c14ec2d3e877ba3c7f024f26c60081f6dbfec703a17d0ae29ce9a1e`  
		Last Modified: Tue, 18 Aug 2026 01:11:07 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26b1878f24863aaf8035e0e9851c2a5bdbd309f4a5abb779cb6df515bb7da5a0`  
		Last Modified: Tue, 18 Aug 2026 01:11:07 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a5a74b45f914cf7f050312ae054ded0214962938c0a6555da87634df4cdacb5`  
		Last Modified: Tue, 18 Aug 2026 01:11:09 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa110213f4cfbd5177e8cd30ba747751492061eb8db2f2b49ad76c862d4bc7e8`  
		Last Modified: Tue, 18 Aug 2026 01:11:08 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:443779f1a06806b01c46a4456b44e38d73028b63cfadf79c886e1364286472a2`  
		Last Modified: Tue, 18 Aug 2026 01:11:08 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:456aaf8c34756678b1b14575f7dfa8a42ea51dd8742dd9554750a0ee16213b61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.3 KB (27345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f98e32dc80770c0519d1eb717c251961e968cf0862a48774bd48eab614e94fe6`

```dockerfile
```

-	Layers:
	-	`sha256:edf9a39f484d42ab747ea23d5269ed7f06d81557c9ec8ad20e80f2d843b6e568`  
		Last Modified: Tue, 18 Aug 2026 01:11:07 GMT  
		Size: 27.3 KB (27345 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.7-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:1412627f3eb5297b8500ba471f68e47bc176e7a0a82ee0a38e490bdcad5c128c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.1 MB (250118159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfb744431d30ee395762836485ccb105b3a7b1307a7ed7f0c7d90b110bc967d1`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:35 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:35 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:37 GMT
ADD file:c4ec32d39509d0c1acf2ddbb89cdc1fb3ceeae66ef80238f2ba7df53758fb44a in / 
# Mon, 10 Aug 2026 17:38:38 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:10:26 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 18 Aug 2026 01:10:26 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 18 Aug 2026 01:10:26 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Tue, 18 Aug 2026 01:10:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 18 Aug 2026 01:10:26 GMT
ARG REPO_CHANNEL=stable
# Tue, 18 Aug 2026 01:10:26 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 18 Aug 2026 01:10:26 GMT
ARG VERSION=26.7.3.19
# Tue, 18 Aug 2026 01:10:26 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 18 Aug 2026 01:10:55 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:10:55 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:10:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 18 Aug 2026 01:10:57 GMT
ENV LANG=en_US.UTF-8
# Tue, 18 Aug 2026 01:10:57 GMT
ENV TZ=UTC
# Tue, 18 Aug 2026 01:10:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 18 Aug 2026 01:10:57 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 18 Aug 2026 01:10:57 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 18 Aug 2026 01:10:57 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 18 Aug 2026 01:10:57 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 18 Aug 2026 01:10:57 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 18 Aug 2026 01:10:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d46aa16f473c7923ebd97071da74de6ce711ff2d54cba1a35bab9e2107987a2`  
		Last Modified: Tue, 18 Aug 2026 01:11:19 GMT  
		Size: 7.5 MB (7533554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f577ae10908c94fbbccaa9246fef22868acf9e517f8456ce2b78db43cfc1554`  
		Last Modified: Tue, 18 Aug 2026 01:11:23 GMT  
		Size: 214.1 MB (214094100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a09e640922e79ba0b8c268cdfcd79d547c046e371834ef0204875a9dfef8273`  
		Last Modified: Tue, 18 Aug 2026 01:11:19 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa3cf20e767d3a2015c2bc9ffa0967227f41d30063bede23079ef0f646ed2188`  
		Last Modified: Tue, 18 Aug 2026 01:11:19 GMT  
		Size: 865.8 KB (865752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01cc3920a88f6983e2d104b645819d885601fe1d94ea6c897e41a2aff180454b`  
		Last Modified: Tue, 18 Aug 2026 01:11:20 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a571a1f085ce514244058f843720522607019421a4d63ecacae6251ded4a359`  
		Last Modified: Tue, 18 Aug 2026 01:11:20 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a31dbbbd3f455769ce13821c4f97f2a5e21af0a8ee38779fdd472d51642d3375`  
		Last Modified: Tue, 18 Aug 2026 01:11:20 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:267792f4f12702e9ac28ca61126728ee7c109c802154001273c0a4bb824ec220
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 KB (27557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65be8f102cb41cfb294fca1d317f9b7ce46009cbc68bef0ae30a50dc96145930`

```dockerfile
```

-	Layers:
	-	`sha256:172eaa9c3af40a01dd504848acb83425b21774431373659fca2eb80a3b1ec3ab`  
		Last Modified: Tue, 18 Aug 2026 01:11:19 GMT  
		Size: 27.6 KB (27557 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.7.3`

```console
$ docker pull clickhouse@sha256:93fe28df2f9224a02072b8d84dc2d2930ad6b063f9758f3c3650f9f7c44a7c26
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.7.3` - linux; amd64

```console
$ docker pull clickhouse@sha256:3164f01fbf7e9db703b75d8ca2d9e53e6bc965dd8bd954ff2f20b8b2d4cba2c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.8 MB (266804123 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92c7d5321dea0b779b2ff37e7de2c1fc208a251d1da27f8c9b454abe3ce59452`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:09 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:09 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:12 GMT
ADD file:799f4e238d67485cc109d93512f4fe6f75bafc26a3476772191154125e52201d in / 
# Mon, 10 Aug 2026 17:38:12 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:10:14 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 18 Aug 2026 01:10:14 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 18 Aug 2026 01:10:14 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Tue, 18 Aug 2026 01:10:14 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 18 Aug 2026 01:10:14 GMT
ARG REPO_CHANNEL=stable
# Tue, 18 Aug 2026 01:10:14 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 18 Aug 2026 01:10:14 GMT
ARG VERSION=26.7.3.19
# Tue, 18 Aug 2026 01:10:14 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 18 Aug 2026 01:10:40 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:10:40 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:10:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 18 Aug 2026 01:10:41 GMT
ENV LANG=en_US.UTF-8
# Tue, 18 Aug 2026 01:10:41 GMT
ENV TZ=UTC
# Tue, 18 Aug 2026 01:10:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 18 Aug 2026 01:10:41 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 18 Aug 2026 01:10:41 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 18 Aug 2026 01:10:41 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 18 Aug 2026 01:10:41 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 18 Aug 2026 01:10:41 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 18 Aug 2026 01:10:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:364a5646d9943486d6a3a484357c9b3d73f0db63fd9bc57b9d84a07fd2d15010`  
		Last Modified: Tue, 18 Aug 2026 01:11:07 GMT  
		Size: 7.6 MB (7553472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e7fb975c42629215870c63bc071d31541d627e7fdc9b365bd6693dd128529df`  
		Last Modified: Tue, 18 Aug 2026 01:11:12 GMT  
		Size: 228.6 MB (228643657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a838dd7d1c14ec2d3e877ba3c7f024f26c60081f6dbfec703a17d0ae29ce9a1e`  
		Last Modified: Tue, 18 Aug 2026 01:11:07 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26b1878f24863aaf8035e0e9851c2a5bdbd309f4a5abb779cb6df515bb7da5a0`  
		Last Modified: Tue, 18 Aug 2026 01:11:07 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a5a74b45f914cf7f050312ae054ded0214962938c0a6555da87634df4cdacb5`  
		Last Modified: Tue, 18 Aug 2026 01:11:09 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa110213f4cfbd5177e8cd30ba747751492061eb8db2f2b49ad76c862d4bc7e8`  
		Last Modified: Tue, 18 Aug 2026 01:11:08 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:443779f1a06806b01c46a4456b44e38d73028b63cfadf79c886e1364286472a2`  
		Last Modified: Tue, 18 Aug 2026 01:11:08 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7.3` - unknown; unknown

```console
$ docker pull clickhouse@sha256:456aaf8c34756678b1b14575f7dfa8a42ea51dd8742dd9554750a0ee16213b61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.3 KB (27345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f98e32dc80770c0519d1eb717c251961e968cf0862a48774bd48eab614e94fe6`

```dockerfile
```

-	Layers:
	-	`sha256:edf9a39f484d42ab747ea23d5269ed7f06d81557c9ec8ad20e80f2d843b6e568`  
		Last Modified: Tue, 18 Aug 2026 01:11:07 GMT  
		Size: 27.3 KB (27345 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.7.3` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:1412627f3eb5297b8500ba471f68e47bc176e7a0a82ee0a38e490bdcad5c128c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.1 MB (250118159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfb744431d30ee395762836485ccb105b3a7b1307a7ed7f0c7d90b110bc967d1`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:35 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:35 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:37 GMT
ADD file:c4ec32d39509d0c1acf2ddbb89cdc1fb3ceeae66ef80238f2ba7df53758fb44a in / 
# Mon, 10 Aug 2026 17:38:38 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:10:26 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 18 Aug 2026 01:10:26 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 18 Aug 2026 01:10:26 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Tue, 18 Aug 2026 01:10:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 18 Aug 2026 01:10:26 GMT
ARG REPO_CHANNEL=stable
# Tue, 18 Aug 2026 01:10:26 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 18 Aug 2026 01:10:26 GMT
ARG VERSION=26.7.3.19
# Tue, 18 Aug 2026 01:10:26 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 18 Aug 2026 01:10:55 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:10:55 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:10:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 18 Aug 2026 01:10:57 GMT
ENV LANG=en_US.UTF-8
# Tue, 18 Aug 2026 01:10:57 GMT
ENV TZ=UTC
# Tue, 18 Aug 2026 01:10:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 18 Aug 2026 01:10:57 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 18 Aug 2026 01:10:57 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 18 Aug 2026 01:10:57 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 18 Aug 2026 01:10:57 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 18 Aug 2026 01:10:57 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 18 Aug 2026 01:10:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d46aa16f473c7923ebd97071da74de6ce711ff2d54cba1a35bab9e2107987a2`  
		Last Modified: Tue, 18 Aug 2026 01:11:19 GMT  
		Size: 7.5 MB (7533554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f577ae10908c94fbbccaa9246fef22868acf9e517f8456ce2b78db43cfc1554`  
		Last Modified: Tue, 18 Aug 2026 01:11:23 GMT  
		Size: 214.1 MB (214094100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a09e640922e79ba0b8c268cdfcd79d547c046e371834ef0204875a9dfef8273`  
		Last Modified: Tue, 18 Aug 2026 01:11:19 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa3cf20e767d3a2015c2bc9ffa0967227f41d30063bede23079ef0f646ed2188`  
		Last Modified: Tue, 18 Aug 2026 01:11:19 GMT  
		Size: 865.8 KB (865752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01cc3920a88f6983e2d104b645819d885601fe1d94ea6c897e41a2aff180454b`  
		Last Modified: Tue, 18 Aug 2026 01:11:20 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a571a1f085ce514244058f843720522607019421a4d63ecacae6251ded4a359`  
		Last Modified: Tue, 18 Aug 2026 01:11:20 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a31dbbbd3f455769ce13821c4f97f2a5e21af0a8ee38779fdd472d51642d3375`  
		Last Modified: Tue, 18 Aug 2026 01:11:20 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7.3` - unknown; unknown

```console
$ docker pull clickhouse@sha256:267792f4f12702e9ac28ca61126728ee7c109c802154001273c0a4bb824ec220
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 KB (27557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65be8f102cb41cfb294fca1d317f9b7ce46009cbc68bef0ae30a50dc96145930`

```dockerfile
```

-	Layers:
	-	`sha256:172eaa9c3af40a01dd504848acb83425b21774431373659fca2eb80a3b1ec3ab`  
		Last Modified: Tue, 18 Aug 2026 01:11:19 GMT  
		Size: 27.6 KB (27557 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.7.3-jammy`

```console
$ docker pull clickhouse@sha256:93fe28df2f9224a02072b8d84dc2d2930ad6b063f9758f3c3650f9f7c44a7c26
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.7.3-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:3164f01fbf7e9db703b75d8ca2d9e53e6bc965dd8bd954ff2f20b8b2d4cba2c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.8 MB (266804123 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92c7d5321dea0b779b2ff37e7de2c1fc208a251d1da27f8c9b454abe3ce59452`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:09 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:09 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:12 GMT
ADD file:799f4e238d67485cc109d93512f4fe6f75bafc26a3476772191154125e52201d in / 
# Mon, 10 Aug 2026 17:38:12 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:10:14 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 18 Aug 2026 01:10:14 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 18 Aug 2026 01:10:14 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Tue, 18 Aug 2026 01:10:14 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 18 Aug 2026 01:10:14 GMT
ARG REPO_CHANNEL=stable
# Tue, 18 Aug 2026 01:10:14 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 18 Aug 2026 01:10:14 GMT
ARG VERSION=26.7.3.19
# Tue, 18 Aug 2026 01:10:14 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 18 Aug 2026 01:10:40 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:10:40 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:10:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 18 Aug 2026 01:10:41 GMT
ENV LANG=en_US.UTF-8
# Tue, 18 Aug 2026 01:10:41 GMT
ENV TZ=UTC
# Tue, 18 Aug 2026 01:10:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 18 Aug 2026 01:10:41 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 18 Aug 2026 01:10:41 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 18 Aug 2026 01:10:41 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 18 Aug 2026 01:10:41 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 18 Aug 2026 01:10:41 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 18 Aug 2026 01:10:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:364a5646d9943486d6a3a484357c9b3d73f0db63fd9bc57b9d84a07fd2d15010`  
		Last Modified: Tue, 18 Aug 2026 01:11:07 GMT  
		Size: 7.6 MB (7553472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e7fb975c42629215870c63bc071d31541d627e7fdc9b365bd6693dd128529df`  
		Last Modified: Tue, 18 Aug 2026 01:11:12 GMT  
		Size: 228.6 MB (228643657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a838dd7d1c14ec2d3e877ba3c7f024f26c60081f6dbfec703a17d0ae29ce9a1e`  
		Last Modified: Tue, 18 Aug 2026 01:11:07 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26b1878f24863aaf8035e0e9851c2a5bdbd309f4a5abb779cb6df515bb7da5a0`  
		Last Modified: Tue, 18 Aug 2026 01:11:07 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a5a74b45f914cf7f050312ae054ded0214962938c0a6555da87634df4cdacb5`  
		Last Modified: Tue, 18 Aug 2026 01:11:09 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa110213f4cfbd5177e8cd30ba747751492061eb8db2f2b49ad76c862d4bc7e8`  
		Last Modified: Tue, 18 Aug 2026 01:11:08 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:443779f1a06806b01c46a4456b44e38d73028b63cfadf79c886e1364286472a2`  
		Last Modified: Tue, 18 Aug 2026 01:11:08 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7.3-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:456aaf8c34756678b1b14575f7dfa8a42ea51dd8742dd9554750a0ee16213b61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.3 KB (27345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f98e32dc80770c0519d1eb717c251961e968cf0862a48774bd48eab614e94fe6`

```dockerfile
```

-	Layers:
	-	`sha256:edf9a39f484d42ab747ea23d5269ed7f06d81557c9ec8ad20e80f2d843b6e568`  
		Last Modified: Tue, 18 Aug 2026 01:11:07 GMT  
		Size: 27.3 KB (27345 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.7.3-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:1412627f3eb5297b8500ba471f68e47bc176e7a0a82ee0a38e490bdcad5c128c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.1 MB (250118159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfb744431d30ee395762836485ccb105b3a7b1307a7ed7f0c7d90b110bc967d1`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:35 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:35 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:37 GMT
ADD file:c4ec32d39509d0c1acf2ddbb89cdc1fb3ceeae66ef80238f2ba7df53758fb44a in / 
# Mon, 10 Aug 2026 17:38:38 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:10:26 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 18 Aug 2026 01:10:26 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 18 Aug 2026 01:10:26 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Tue, 18 Aug 2026 01:10:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 18 Aug 2026 01:10:26 GMT
ARG REPO_CHANNEL=stable
# Tue, 18 Aug 2026 01:10:26 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 18 Aug 2026 01:10:26 GMT
ARG VERSION=26.7.3.19
# Tue, 18 Aug 2026 01:10:26 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 18 Aug 2026 01:10:55 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:10:55 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:10:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 18 Aug 2026 01:10:57 GMT
ENV LANG=en_US.UTF-8
# Tue, 18 Aug 2026 01:10:57 GMT
ENV TZ=UTC
# Tue, 18 Aug 2026 01:10:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 18 Aug 2026 01:10:57 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 18 Aug 2026 01:10:57 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 18 Aug 2026 01:10:57 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 18 Aug 2026 01:10:57 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 18 Aug 2026 01:10:57 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 18 Aug 2026 01:10:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d46aa16f473c7923ebd97071da74de6ce711ff2d54cba1a35bab9e2107987a2`  
		Last Modified: Tue, 18 Aug 2026 01:11:19 GMT  
		Size: 7.5 MB (7533554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f577ae10908c94fbbccaa9246fef22868acf9e517f8456ce2b78db43cfc1554`  
		Last Modified: Tue, 18 Aug 2026 01:11:23 GMT  
		Size: 214.1 MB (214094100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a09e640922e79ba0b8c268cdfcd79d547c046e371834ef0204875a9dfef8273`  
		Last Modified: Tue, 18 Aug 2026 01:11:19 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa3cf20e767d3a2015c2bc9ffa0967227f41d30063bede23079ef0f646ed2188`  
		Last Modified: Tue, 18 Aug 2026 01:11:19 GMT  
		Size: 865.8 KB (865752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01cc3920a88f6983e2d104b645819d885601fe1d94ea6c897e41a2aff180454b`  
		Last Modified: Tue, 18 Aug 2026 01:11:20 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a571a1f085ce514244058f843720522607019421a4d63ecacae6251ded4a359`  
		Last Modified: Tue, 18 Aug 2026 01:11:20 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a31dbbbd3f455769ce13821c4f97f2a5e21af0a8ee38779fdd472d51642d3375`  
		Last Modified: Tue, 18 Aug 2026 01:11:20 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7.3-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:267792f4f12702e9ac28ca61126728ee7c109c802154001273c0a4bb824ec220
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 KB (27557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65be8f102cb41cfb294fca1d317f9b7ce46009cbc68bef0ae30a50dc96145930`

```dockerfile
```

-	Layers:
	-	`sha256:172eaa9c3af40a01dd504848acb83425b21774431373659fca2eb80a3b1ec3ab`  
		Last Modified: Tue, 18 Aug 2026 01:11:19 GMT  
		Size: 27.6 KB (27557 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.7.3.19`

```console
$ docker pull clickhouse@sha256:93fe28df2f9224a02072b8d84dc2d2930ad6b063f9758f3c3650f9f7c44a7c26
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.7.3.19` - linux; amd64

```console
$ docker pull clickhouse@sha256:3164f01fbf7e9db703b75d8ca2d9e53e6bc965dd8bd954ff2f20b8b2d4cba2c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.8 MB (266804123 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92c7d5321dea0b779b2ff37e7de2c1fc208a251d1da27f8c9b454abe3ce59452`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:09 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:09 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:12 GMT
ADD file:799f4e238d67485cc109d93512f4fe6f75bafc26a3476772191154125e52201d in / 
# Mon, 10 Aug 2026 17:38:12 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:10:14 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 18 Aug 2026 01:10:14 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 18 Aug 2026 01:10:14 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Tue, 18 Aug 2026 01:10:14 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 18 Aug 2026 01:10:14 GMT
ARG REPO_CHANNEL=stable
# Tue, 18 Aug 2026 01:10:14 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 18 Aug 2026 01:10:14 GMT
ARG VERSION=26.7.3.19
# Tue, 18 Aug 2026 01:10:14 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 18 Aug 2026 01:10:40 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:10:40 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:10:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 18 Aug 2026 01:10:41 GMT
ENV LANG=en_US.UTF-8
# Tue, 18 Aug 2026 01:10:41 GMT
ENV TZ=UTC
# Tue, 18 Aug 2026 01:10:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 18 Aug 2026 01:10:41 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 18 Aug 2026 01:10:41 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 18 Aug 2026 01:10:41 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 18 Aug 2026 01:10:41 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 18 Aug 2026 01:10:41 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 18 Aug 2026 01:10:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:364a5646d9943486d6a3a484357c9b3d73f0db63fd9bc57b9d84a07fd2d15010`  
		Last Modified: Tue, 18 Aug 2026 01:11:07 GMT  
		Size: 7.6 MB (7553472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e7fb975c42629215870c63bc071d31541d627e7fdc9b365bd6693dd128529df`  
		Last Modified: Tue, 18 Aug 2026 01:11:12 GMT  
		Size: 228.6 MB (228643657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a838dd7d1c14ec2d3e877ba3c7f024f26c60081f6dbfec703a17d0ae29ce9a1e`  
		Last Modified: Tue, 18 Aug 2026 01:11:07 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26b1878f24863aaf8035e0e9851c2a5bdbd309f4a5abb779cb6df515bb7da5a0`  
		Last Modified: Tue, 18 Aug 2026 01:11:07 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a5a74b45f914cf7f050312ae054ded0214962938c0a6555da87634df4cdacb5`  
		Last Modified: Tue, 18 Aug 2026 01:11:09 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa110213f4cfbd5177e8cd30ba747751492061eb8db2f2b49ad76c862d4bc7e8`  
		Last Modified: Tue, 18 Aug 2026 01:11:08 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:443779f1a06806b01c46a4456b44e38d73028b63cfadf79c886e1364286472a2`  
		Last Modified: Tue, 18 Aug 2026 01:11:08 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7.3.19` - unknown; unknown

```console
$ docker pull clickhouse@sha256:456aaf8c34756678b1b14575f7dfa8a42ea51dd8742dd9554750a0ee16213b61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.3 KB (27345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f98e32dc80770c0519d1eb717c251961e968cf0862a48774bd48eab614e94fe6`

```dockerfile
```

-	Layers:
	-	`sha256:edf9a39f484d42ab747ea23d5269ed7f06d81557c9ec8ad20e80f2d843b6e568`  
		Last Modified: Tue, 18 Aug 2026 01:11:07 GMT  
		Size: 27.3 KB (27345 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.7.3.19` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:1412627f3eb5297b8500ba471f68e47bc176e7a0a82ee0a38e490bdcad5c128c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.1 MB (250118159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfb744431d30ee395762836485ccb105b3a7b1307a7ed7f0c7d90b110bc967d1`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:35 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:35 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:37 GMT
ADD file:c4ec32d39509d0c1acf2ddbb89cdc1fb3ceeae66ef80238f2ba7df53758fb44a in / 
# Mon, 10 Aug 2026 17:38:38 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:10:26 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 18 Aug 2026 01:10:26 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 18 Aug 2026 01:10:26 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Tue, 18 Aug 2026 01:10:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 18 Aug 2026 01:10:26 GMT
ARG REPO_CHANNEL=stable
# Tue, 18 Aug 2026 01:10:26 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 18 Aug 2026 01:10:26 GMT
ARG VERSION=26.7.3.19
# Tue, 18 Aug 2026 01:10:26 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 18 Aug 2026 01:10:55 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:10:55 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:10:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 18 Aug 2026 01:10:57 GMT
ENV LANG=en_US.UTF-8
# Tue, 18 Aug 2026 01:10:57 GMT
ENV TZ=UTC
# Tue, 18 Aug 2026 01:10:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 18 Aug 2026 01:10:57 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 18 Aug 2026 01:10:57 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 18 Aug 2026 01:10:57 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 18 Aug 2026 01:10:57 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 18 Aug 2026 01:10:57 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 18 Aug 2026 01:10:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d46aa16f473c7923ebd97071da74de6ce711ff2d54cba1a35bab9e2107987a2`  
		Last Modified: Tue, 18 Aug 2026 01:11:19 GMT  
		Size: 7.5 MB (7533554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f577ae10908c94fbbccaa9246fef22868acf9e517f8456ce2b78db43cfc1554`  
		Last Modified: Tue, 18 Aug 2026 01:11:23 GMT  
		Size: 214.1 MB (214094100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a09e640922e79ba0b8c268cdfcd79d547c046e371834ef0204875a9dfef8273`  
		Last Modified: Tue, 18 Aug 2026 01:11:19 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa3cf20e767d3a2015c2bc9ffa0967227f41d30063bede23079ef0f646ed2188`  
		Last Modified: Tue, 18 Aug 2026 01:11:19 GMT  
		Size: 865.8 KB (865752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01cc3920a88f6983e2d104b645819d885601fe1d94ea6c897e41a2aff180454b`  
		Last Modified: Tue, 18 Aug 2026 01:11:20 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a571a1f085ce514244058f843720522607019421a4d63ecacae6251ded4a359`  
		Last Modified: Tue, 18 Aug 2026 01:11:20 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a31dbbbd3f455769ce13821c4f97f2a5e21af0a8ee38779fdd472d51642d3375`  
		Last Modified: Tue, 18 Aug 2026 01:11:20 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7.3.19` - unknown; unknown

```console
$ docker pull clickhouse@sha256:267792f4f12702e9ac28ca61126728ee7c109c802154001273c0a4bb824ec220
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 KB (27557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65be8f102cb41cfb294fca1d317f9b7ce46009cbc68bef0ae30a50dc96145930`

```dockerfile
```

-	Layers:
	-	`sha256:172eaa9c3af40a01dd504848acb83425b21774431373659fca2eb80a3b1ec3ab`  
		Last Modified: Tue, 18 Aug 2026 01:11:19 GMT  
		Size: 27.6 KB (27557 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.7.3.19-jammy`

```console
$ docker pull clickhouse@sha256:93fe28df2f9224a02072b8d84dc2d2930ad6b063f9758f3c3650f9f7c44a7c26
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.7.3.19-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:3164f01fbf7e9db703b75d8ca2d9e53e6bc965dd8bd954ff2f20b8b2d4cba2c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.8 MB (266804123 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92c7d5321dea0b779b2ff37e7de2c1fc208a251d1da27f8c9b454abe3ce59452`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:09 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:09 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:12 GMT
ADD file:799f4e238d67485cc109d93512f4fe6f75bafc26a3476772191154125e52201d in / 
# Mon, 10 Aug 2026 17:38:12 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:10:14 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 18 Aug 2026 01:10:14 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 18 Aug 2026 01:10:14 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Tue, 18 Aug 2026 01:10:14 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 18 Aug 2026 01:10:14 GMT
ARG REPO_CHANNEL=stable
# Tue, 18 Aug 2026 01:10:14 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 18 Aug 2026 01:10:14 GMT
ARG VERSION=26.7.3.19
# Tue, 18 Aug 2026 01:10:14 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 18 Aug 2026 01:10:40 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:10:40 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:10:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 18 Aug 2026 01:10:41 GMT
ENV LANG=en_US.UTF-8
# Tue, 18 Aug 2026 01:10:41 GMT
ENV TZ=UTC
# Tue, 18 Aug 2026 01:10:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 18 Aug 2026 01:10:41 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 18 Aug 2026 01:10:41 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 18 Aug 2026 01:10:41 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 18 Aug 2026 01:10:41 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 18 Aug 2026 01:10:41 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 18 Aug 2026 01:10:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:364a5646d9943486d6a3a484357c9b3d73f0db63fd9bc57b9d84a07fd2d15010`  
		Last Modified: Tue, 18 Aug 2026 01:11:07 GMT  
		Size: 7.6 MB (7553472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e7fb975c42629215870c63bc071d31541d627e7fdc9b365bd6693dd128529df`  
		Last Modified: Tue, 18 Aug 2026 01:11:12 GMT  
		Size: 228.6 MB (228643657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a838dd7d1c14ec2d3e877ba3c7f024f26c60081f6dbfec703a17d0ae29ce9a1e`  
		Last Modified: Tue, 18 Aug 2026 01:11:07 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26b1878f24863aaf8035e0e9851c2a5bdbd309f4a5abb779cb6df515bb7da5a0`  
		Last Modified: Tue, 18 Aug 2026 01:11:07 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a5a74b45f914cf7f050312ae054ded0214962938c0a6555da87634df4cdacb5`  
		Last Modified: Tue, 18 Aug 2026 01:11:09 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa110213f4cfbd5177e8cd30ba747751492061eb8db2f2b49ad76c862d4bc7e8`  
		Last Modified: Tue, 18 Aug 2026 01:11:08 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:443779f1a06806b01c46a4456b44e38d73028b63cfadf79c886e1364286472a2`  
		Last Modified: Tue, 18 Aug 2026 01:11:08 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7.3.19-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:456aaf8c34756678b1b14575f7dfa8a42ea51dd8742dd9554750a0ee16213b61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.3 KB (27345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f98e32dc80770c0519d1eb717c251961e968cf0862a48774bd48eab614e94fe6`

```dockerfile
```

-	Layers:
	-	`sha256:edf9a39f484d42ab747ea23d5269ed7f06d81557c9ec8ad20e80f2d843b6e568`  
		Last Modified: Tue, 18 Aug 2026 01:11:07 GMT  
		Size: 27.3 KB (27345 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.7.3.19-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:1412627f3eb5297b8500ba471f68e47bc176e7a0a82ee0a38e490bdcad5c128c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.1 MB (250118159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfb744431d30ee395762836485ccb105b3a7b1307a7ed7f0c7d90b110bc967d1`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:35 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:35 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:37 GMT
ADD file:c4ec32d39509d0c1acf2ddbb89cdc1fb3ceeae66ef80238f2ba7df53758fb44a in / 
# Mon, 10 Aug 2026 17:38:38 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:10:26 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 18 Aug 2026 01:10:26 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 18 Aug 2026 01:10:26 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Tue, 18 Aug 2026 01:10:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 18 Aug 2026 01:10:26 GMT
ARG REPO_CHANNEL=stable
# Tue, 18 Aug 2026 01:10:26 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 18 Aug 2026 01:10:26 GMT
ARG VERSION=26.7.3.19
# Tue, 18 Aug 2026 01:10:26 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 18 Aug 2026 01:10:55 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:10:55 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:10:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 18 Aug 2026 01:10:57 GMT
ENV LANG=en_US.UTF-8
# Tue, 18 Aug 2026 01:10:57 GMT
ENV TZ=UTC
# Tue, 18 Aug 2026 01:10:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 18 Aug 2026 01:10:57 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 18 Aug 2026 01:10:57 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 18 Aug 2026 01:10:57 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 18 Aug 2026 01:10:57 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 18 Aug 2026 01:10:57 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 18 Aug 2026 01:10:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d46aa16f473c7923ebd97071da74de6ce711ff2d54cba1a35bab9e2107987a2`  
		Last Modified: Tue, 18 Aug 2026 01:11:19 GMT  
		Size: 7.5 MB (7533554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f577ae10908c94fbbccaa9246fef22868acf9e517f8456ce2b78db43cfc1554`  
		Last Modified: Tue, 18 Aug 2026 01:11:23 GMT  
		Size: 214.1 MB (214094100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a09e640922e79ba0b8c268cdfcd79d547c046e371834ef0204875a9dfef8273`  
		Last Modified: Tue, 18 Aug 2026 01:11:19 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa3cf20e767d3a2015c2bc9ffa0967227f41d30063bede23079ef0f646ed2188`  
		Last Modified: Tue, 18 Aug 2026 01:11:19 GMT  
		Size: 865.8 KB (865752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01cc3920a88f6983e2d104b645819d885601fe1d94ea6c897e41a2aff180454b`  
		Last Modified: Tue, 18 Aug 2026 01:11:20 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a571a1f085ce514244058f843720522607019421a4d63ecacae6251ded4a359`  
		Last Modified: Tue, 18 Aug 2026 01:11:20 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a31dbbbd3f455769ce13821c4f97f2a5e21af0a8ee38779fdd472d51642d3375`  
		Last Modified: Tue, 18 Aug 2026 01:11:20 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7.3.19-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:267792f4f12702e9ac28ca61126728ee7c109c802154001273c0a4bb824ec220
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 KB (27557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65be8f102cb41cfb294fca1d317f9b7ce46009cbc68bef0ae30a50dc96145930`

```dockerfile
```

-	Layers:
	-	`sha256:172eaa9c3af40a01dd504848acb83425b21774431373659fca2eb80a3b1ec3ab`  
		Last Modified: Tue, 18 Aug 2026 01:11:19 GMT  
		Size: 27.6 KB (27557 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:jammy`

```console
$ docker pull clickhouse@sha256:93fe28df2f9224a02072b8d84dc2d2930ad6b063f9758f3c3650f9f7c44a7c26
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:3164f01fbf7e9db703b75d8ca2d9e53e6bc965dd8bd954ff2f20b8b2d4cba2c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.8 MB (266804123 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92c7d5321dea0b779b2ff37e7de2c1fc208a251d1da27f8c9b454abe3ce59452`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:09 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:09 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:12 GMT
ADD file:799f4e238d67485cc109d93512f4fe6f75bafc26a3476772191154125e52201d in / 
# Mon, 10 Aug 2026 17:38:12 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:10:14 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 18 Aug 2026 01:10:14 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 18 Aug 2026 01:10:14 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Tue, 18 Aug 2026 01:10:14 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 18 Aug 2026 01:10:14 GMT
ARG REPO_CHANNEL=stable
# Tue, 18 Aug 2026 01:10:14 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 18 Aug 2026 01:10:14 GMT
ARG VERSION=26.7.3.19
# Tue, 18 Aug 2026 01:10:14 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 18 Aug 2026 01:10:40 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:10:40 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:10:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 18 Aug 2026 01:10:41 GMT
ENV LANG=en_US.UTF-8
# Tue, 18 Aug 2026 01:10:41 GMT
ENV TZ=UTC
# Tue, 18 Aug 2026 01:10:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 18 Aug 2026 01:10:41 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 18 Aug 2026 01:10:41 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 18 Aug 2026 01:10:41 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 18 Aug 2026 01:10:41 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 18 Aug 2026 01:10:41 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 18 Aug 2026 01:10:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:364a5646d9943486d6a3a484357c9b3d73f0db63fd9bc57b9d84a07fd2d15010`  
		Last Modified: Tue, 18 Aug 2026 01:11:07 GMT  
		Size: 7.6 MB (7553472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e7fb975c42629215870c63bc071d31541d627e7fdc9b365bd6693dd128529df`  
		Last Modified: Tue, 18 Aug 2026 01:11:12 GMT  
		Size: 228.6 MB (228643657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a838dd7d1c14ec2d3e877ba3c7f024f26c60081f6dbfec703a17d0ae29ce9a1e`  
		Last Modified: Tue, 18 Aug 2026 01:11:07 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26b1878f24863aaf8035e0e9851c2a5bdbd309f4a5abb779cb6df515bb7da5a0`  
		Last Modified: Tue, 18 Aug 2026 01:11:07 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a5a74b45f914cf7f050312ae054ded0214962938c0a6555da87634df4cdacb5`  
		Last Modified: Tue, 18 Aug 2026 01:11:09 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa110213f4cfbd5177e8cd30ba747751492061eb8db2f2b49ad76c862d4bc7e8`  
		Last Modified: Tue, 18 Aug 2026 01:11:08 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:443779f1a06806b01c46a4456b44e38d73028b63cfadf79c886e1364286472a2`  
		Last Modified: Tue, 18 Aug 2026 01:11:08 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:456aaf8c34756678b1b14575f7dfa8a42ea51dd8742dd9554750a0ee16213b61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.3 KB (27345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f98e32dc80770c0519d1eb717c251961e968cf0862a48774bd48eab614e94fe6`

```dockerfile
```

-	Layers:
	-	`sha256:edf9a39f484d42ab747ea23d5269ed7f06d81557c9ec8ad20e80f2d843b6e568`  
		Last Modified: Tue, 18 Aug 2026 01:11:07 GMT  
		Size: 27.3 KB (27345 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:1412627f3eb5297b8500ba471f68e47bc176e7a0a82ee0a38e490bdcad5c128c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.1 MB (250118159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfb744431d30ee395762836485ccb105b3a7b1307a7ed7f0c7d90b110bc967d1`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:35 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:35 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:37 GMT
ADD file:c4ec32d39509d0c1acf2ddbb89cdc1fb3ceeae66ef80238f2ba7df53758fb44a in / 
# Mon, 10 Aug 2026 17:38:38 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:10:26 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 18 Aug 2026 01:10:26 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 18 Aug 2026 01:10:26 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Tue, 18 Aug 2026 01:10:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 18 Aug 2026 01:10:26 GMT
ARG REPO_CHANNEL=stable
# Tue, 18 Aug 2026 01:10:26 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 18 Aug 2026 01:10:26 GMT
ARG VERSION=26.7.3.19
# Tue, 18 Aug 2026 01:10:26 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 18 Aug 2026 01:10:55 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:10:55 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:10:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 18 Aug 2026 01:10:57 GMT
ENV LANG=en_US.UTF-8
# Tue, 18 Aug 2026 01:10:57 GMT
ENV TZ=UTC
# Tue, 18 Aug 2026 01:10:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 18 Aug 2026 01:10:57 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 18 Aug 2026 01:10:57 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 18 Aug 2026 01:10:57 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 18 Aug 2026 01:10:57 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 18 Aug 2026 01:10:57 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 18 Aug 2026 01:10:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d46aa16f473c7923ebd97071da74de6ce711ff2d54cba1a35bab9e2107987a2`  
		Last Modified: Tue, 18 Aug 2026 01:11:19 GMT  
		Size: 7.5 MB (7533554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f577ae10908c94fbbccaa9246fef22868acf9e517f8456ce2b78db43cfc1554`  
		Last Modified: Tue, 18 Aug 2026 01:11:23 GMT  
		Size: 214.1 MB (214094100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a09e640922e79ba0b8c268cdfcd79d547c046e371834ef0204875a9dfef8273`  
		Last Modified: Tue, 18 Aug 2026 01:11:19 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa3cf20e767d3a2015c2bc9ffa0967227f41d30063bede23079ef0f646ed2188`  
		Last Modified: Tue, 18 Aug 2026 01:11:19 GMT  
		Size: 865.8 KB (865752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01cc3920a88f6983e2d104b645819d885601fe1d94ea6c897e41a2aff180454b`  
		Last Modified: Tue, 18 Aug 2026 01:11:20 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a571a1f085ce514244058f843720522607019421a4d63ecacae6251ded4a359`  
		Last Modified: Tue, 18 Aug 2026 01:11:20 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a31dbbbd3f455769ce13821c4f97f2a5e21af0a8ee38779fdd472d51642d3375`  
		Last Modified: Tue, 18 Aug 2026 01:11:20 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:267792f4f12702e9ac28ca61126728ee7c109c802154001273c0a4bb824ec220
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 KB (27557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65be8f102cb41cfb294fca1d317f9b7ce46009cbc68bef0ae30a50dc96145930`

```dockerfile
```

-	Layers:
	-	`sha256:172eaa9c3af40a01dd504848acb83425b21774431373659fca2eb80a3b1ec3ab`  
		Last Modified: Tue, 18 Aug 2026 01:11:19 GMT  
		Size: 27.6 KB (27557 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:latest`

```console
$ docker pull clickhouse@sha256:93fe28df2f9224a02072b8d84dc2d2930ad6b063f9758f3c3650f9f7c44a7c26
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:latest` - linux; amd64

```console
$ docker pull clickhouse@sha256:3164f01fbf7e9db703b75d8ca2d9e53e6bc965dd8bd954ff2f20b8b2d4cba2c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.8 MB (266804123 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92c7d5321dea0b779b2ff37e7de2c1fc208a251d1da27f8c9b454abe3ce59452`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:09 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:09 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:12 GMT
ADD file:799f4e238d67485cc109d93512f4fe6f75bafc26a3476772191154125e52201d in / 
# Mon, 10 Aug 2026 17:38:12 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:10:14 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 18 Aug 2026 01:10:14 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 18 Aug 2026 01:10:14 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Tue, 18 Aug 2026 01:10:14 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 18 Aug 2026 01:10:14 GMT
ARG REPO_CHANNEL=stable
# Tue, 18 Aug 2026 01:10:14 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 18 Aug 2026 01:10:14 GMT
ARG VERSION=26.7.3.19
# Tue, 18 Aug 2026 01:10:14 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 18 Aug 2026 01:10:40 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:10:40 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:10:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 18 Aug 2026 01:10:41 GMT
ENV LANG=en_US.UTF-8
# Tue, 18 Aug 2026 01:10:41 GMT
ENV TZ=UTC
# Tue, 18 Aug 2026 01:10:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 18 Aug 2026 01:10:41 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 18 Aug 2026 01:10:41 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 18 Aug 2026 01:10:41 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 18 Aug 2026 01:10:41 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 18 Aug 2026 01:10:41 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 18 Aug 2026 01:10:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:364a5646d9943486d6a3a484357c9b3d73f0db63fd9bc57b9d84a07fd2d15010`  
		Last Modified: Tue, 18 Aug 2026 01:11:07 GMT  
		Size: 7.6 MB (7553472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e7fb975c42629215870c63bc071d31541d627e7fdc9b365bd6693dd128529df`  
		Last Modified: Tue, 18 Aug 2026 01:11:12 GMT  
		Size: 228.6 MB (228643657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a838dd7d1c14ec2d3e877ba3c7f024f26c60081f6dbfec703a17d0ae29ce9a1e`  
		Last Modified: Tue, 18 Aug 2026 01:11:07 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26b1878f24863aaf8035e0e9851c2a5bdbd309f4a5abb779cb6df515bb7da5a0`  
		Last Modified: Tue, 18 Aug 2026 01:11:07 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a5a74b45f914cf7f050312ae054ded0214962938c0a6555da87634df4cdacb5`  
		Last Modified: Tue, 18 Aug 2026 01:11:09 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa110213f4cfbd5177e8cd30ba747751492061eb8db2f2b49ad76c862d4bc7e8`  
		Last Modified: Tue, 18 Aug 2026 01:11:08 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:443779f1a06806b01c46a4456b44e38d73028b63cfadf79c886e1364286472a2`  
		Last Modified: Tue, 18 Aug 2026 01:11:08 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:latest` - unknown; unknown

```console
$ docker pull clickhouse@sha256:456aaf8c34756678b1b14575f7dfa8a42ea51dd8742dd9554750a0ee16213b61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.3 KB (27345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f98e32dc80770c0519d1eb717c251961e968cf0862a48774bd48eab614e94fe6`

```dockerfile
```

-	Layers:
	-	`sha256:edf9a39f484d42ab747ea23d5269ed7f06d81557c9ec8ad20e80f2d843b6e568`  
		Last Modified: Tue, 18 Aug 2026 01:11:07 GMT  
		Size: 27.3 KB (27345 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:latest` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:1412627f3eb5297b8500ba471f68e47bc176e7a0a82ee0a38e490bdcad5c128c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.1 MB (250118159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfb744431d30ee395762836485ccb105b3a7b1307a7ed7f0c7d90b110bc967d1`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:35 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:35 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:37 GMT
ADD file:c4ec32d39509d0c1acf2ddbb89cdc1fb3ceeae66ef80238f2ba7df53758fb44a in / 
# Mon, 10 Aug 2026 17:38:38 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:10:26 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 18 Aug 2026 01:10:26 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 18 Aug 2026 01:10:26 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Tue, 18 Aug 2026 01:10:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 18 Aug 2026 01:10:26 GMT
ARG REPO_CHANNEL=stable
# Tue, 18 Aug 2026 01:10:26 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 18 Aug 2026 01:10:26 GMT
ARG VERSION=26.7.3.19
# Tue, 18 Aug 2026 01:10:26 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 18 Aug 2026 01:10:55 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:10:55 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:10:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 18 Aug 2026 01:10:57 GMT
ENV LANG=en_US.UTF-8
# Tue, 18 Aug 2026 01:10:57 GMT
ENV TZ=UTC
# Tue, 18 Aug 2026 01:10:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 18 Aug 2026 01:10:57 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 18 Aug 2026 01:10:57 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 18 Aug 2026 01:10:57 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 18 Aug 2026 01:10:57 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 18 Aug 2026 01:10:57 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 18 Aug 2026 01:10:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d46aa16f473c7923ebd97071da74de6ce711ff2d54cba1a35bab9e2107987a2`  
		Last Modified: Tue, 18 Aug 2026 01:11:19 GMT  
		Size: 7.5 MB (7533554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f577ae10908c94fbbccaa9246fef22868acf9e517f8456ce2b78db43cfc1554`  
		Last Modified: Tue, 18 Aug 2026 01:11:23 GMT  
		Size: 214.1 MB (214094100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a09e640922e79ba0b8c268cdfcd79d547c046e371834ef0204875a9dfef8273`  
		Last Modified: Tue, 18 Aug 2026 01:11:19 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa3cf20e767d3a2015c2bc9ffa0967227f41d30063bede23079ef0f646ed2188`  
		Last Modified: Tue, 18 Aug 2026 01:11:19 GMT  
		Size: 865.8 KB (865752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01cc3920a88f6983e2d104b645819d885601fe1d94ea6c897e41a2aff180454b`  
		Last Modified: Tue, 18 Aug 2026 01:11:20 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a571a1f085ce514244058f843720522607019421a4d63ecacae6251ded4a359`  
		Last Modified: Tue, 18 Aug 2026 01:11:20 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a31dbbbd3f455769ce13821c4f97f2a5e21af0a8ee38779fdd472d51642d3375`  
		Last Modified: Tue, 18 Aug 2026 01:11:20 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:latest` - unknown; unknown

```console
$ docker pull clickhouse@sha256:267792f4f12702e9ac28ca61126728ee7c109c802154001273c0a4bb824ec220
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 KB (27557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65be8f102cb41cfb294fca1d317f9b7ce46009cbc68bef0ae30a50dc96145930`

```dockerfile
```

-	Layers:
	-	`sha256:172eaa9c3af40a01dd504848acb83425b21774431373659fca2eb80a3b1ec3ab`  
		Last Modified: Tue, 18 Aug 2026 01:11:19 GMT  
		Size: 27.6 KB (27557 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:lts`

```console
$ docker pull clickhouse@sha256:27a93a375287894e8be4e9720c01d39ec5b862a241cfe73bb634472db9d6a75f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:lts` - linux; amd64

```console
$ docker pull clickhouse@sha256:50be38ac177482e5b57e700964f3ad2f78528a8ee2619d4bc109907ecf3fe4a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.5 MB (265493031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2d51636384c362f424a59231f93024c3aec6d8032b028e5f9feeac17e775c22`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:09 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:09 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:12 GMT
ADD file:799f4e238d67485cc109d93512f4fe6f75bafc26a3476772191154125e52201d in / 
# Mon, 10 Aug 2026 17:38:12 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:10:28 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 18 Aug 2026 01:10:28 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 18 Aug 2026 01:10:28 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 18 Aug 2026 01:10:28 GMT
ARG REPO_CHANNEL=stable
# Tue, 18 Aug 2026 01:10:28 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 18 Aug 2026 01:10:28 GMT
ARG VERSION=26.3.17.110
# Tue, 18 Aug 2026 01:10:28 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 18 Aug 2026 01:10:53 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:10:54 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:10:55 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 18 Aug 2026 01:10:55 GMT
ENV LANG=en_US.UTF-8
# Tue, 18 Aug 2026 01:10:55 GMT
ENV TZ=UTC
# Tue, 18 Aug 2026 01:10:55 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 18 Aug 2026 01:10:55 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 18 Aug 2026 01:10:55 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 18 Aug 2026 01:10:55 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 18 Aug 2026 01:10:55 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 18 Aug 2026 01:10:55 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 18 Aug 2026 01:10:55 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c007a967a77ef4ae4896ca1fa6286f934255694ffeef8def2610ebeae1871a45`  
		Last Modified: Tue, 18 Aug 2026 01:11:17 GMT  
		Size: 7.6 MB (7553497 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cc87778a5d1bbb55721e8001d30836754a58503f9e1c1c538356a96beba8b58`  
		Last Modified: Tue, 18 Aug 2026 01:11:21 GMT  
		Size: 227.3 MB (227332541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf6b2533179b8ad4fa379a9ebb94d47e68bea33d34e047f3d49de84e513ad6e9`  
		Last Modified: Tue, 18 Aug 2026 01:11:17 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8a2fe23e3cfab7bb9cfe001498d449f031d5ba03ab66bdafff5a01d46bec7bd`  
		Last Modified: Tue, 18 Aug 2026 01:11:17 GMT  
		Size: 865.7 KB (865748 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42d2f330cdc4ece828cfdb71294f8e31b341b1a876e87394fe5be77ec54087ce`  
		Last Modified: Tue, 18 Aug 2026 01:11:18 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9189511d45f7506a77b25f2c245623821682462cea3d3d38ab2bac3202aa56e4`  
		Last Modified: Tue, 18 Aug 2026 01:11:18 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e053ffcdeee9a8dd99ebce9bb1c9d1c230dd21b3dbb48d476a6bfe955fca5b38`  
		Last Modified: Tue, 18 Aug 2026 01:11:18 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:lts` - unknown; unknown

```console
$ docker pull clickhouse@sha256:924a5f58088353a2d12baeb0ea9771d6811fd7f536b02236da8efb178d1a55d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.9 KB (26858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50356986ff0eb4a0373dde05199e575d8c2b6c6c194b57650826dc3f614dc7dc`

```dockerfile
```

-	Layers:
	-	`sha256:fa30235cad1a80bf99a18bf4538df0035530d23a7c83d8fc4bc57846de035a4e`  
		Last Modified: Tue, 18 Aug 2026 01:11:17 GMT  
		Size: 26.9 KB (26858 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:lts` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:c9b49ee2abe5b0f457f9a05ea291fc6efc1006dd1771cc787df4f3eb6b536ca0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.8 MB (246812524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60dc437ed8faaca4b2c35b5318681310601794107a9323acd9ec1a9774628085`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:35 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:35 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:37 GMT
ADD file:c4ec32d39509d0c1acf2ddbb89cdc1fb3ceeae66ef80238f2ba7df53758fb44a in / 
# Mon, 10 Aug 2026 17:38:38 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:10:42 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 18 Aug 2026 01:10:42 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 18 Aug 2026 01:10:42 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 18 Aug 2026 01:10:42 GMT
ARG REPO_CHANNEL=stable
# Tue, 18 Aug 2026 01:10:42 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 18 Aug 2026 01:10:42 GMT
ARG VERSION=26.3.17.110
# Tue, 18 Aug 2026 01:10:42 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 18 Aug 2026 01:11:15 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:11:15 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:11:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 18 Aug 2026 01:11:16 GMT
ENV LANG=en_US.UTF-8
# Tue, 18 Aug 2026 01:11:16 GMT
ENV TZ=UTC
# Tue, 18 Aug 2026 01:11:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 18 Aug 2026 01:11:16 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 18 Aug 2026 01:11:16 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 18 Aug 2026 01:11:16 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 18 Aug 2026 01:11:16 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 18 Aug 2026 01:11:16 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 18 Aug 2026 01:11:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d5f1ff18801439ad32a21f50c3e5a40e29586dea76fb9a7ded54ef3dd1528ff`  
		Last Modified: Tue, 18 Aug 2026 01:11:39 GMT  
		Size: 7.5 MB (7533635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7854a2decae9770a9479b0f4edc0c7e8c4c774008c153e76ded0a4b27ebbd03c`  
		Last Modified: Tue, 18 Aug 2026 01:11:45 GMT  
		Size: 210.8 MB (210788390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47773b2525a17cc1082287d8a6628a18913c3aa9785f976f51002e1d1a39377f`  
		Last Modified: Tue, 18 Aug 2026 01:11:39 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4420e94d73693bdf28051cad5331606b68149a042f9d282069a965dfeaf4425`  
		Last Modified: Tue, 18 Aug 2026 01:11:39 GMT  
		Size: 865.7 KB (865748 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea01dd8041db9500791f414bb246a2d3fcbab5bad76e46def340a1dc6218e153`  
		Last Modified: Tue, 18 Aug 2026 01:11:40 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90ab0a97bfe0578b3d0ab9f0a813633dddd5c75f4b76581e84b02a4d34ced2f9`  
		Last Modified: Tue, 18 Aug 2026 01:11:40 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e9411c8916a808e9a89328db5a5d6e679d4430b2bbf43e233116756bfd35462`  
		Last Modified: Tue, 18 Aug 2026 01:11:40 GMT  
		Size: 3.6 KB (3636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:lts` - unknown; unknown

```console
$ docker pull clickhouse@sha256:04b553d85bf39f5862a439f4007a51a8bc3c8466a630b62ae9a4230fbf37b9f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.1 KB (27070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2036bb22bbc9d1a1313008ed809a95e15e231405e25c08bb861b9a36c3859b70`

```dockerfile
```

-	Layers:
	-	`sha256:eb52f045a67c4d0e69ece241667279de99489c338abce0b03d389784b9819e60`  
		Last Modified: Tue, 18 Aug 2026 01:11:38 GMT  
		Size: 27.1 KB (27070 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:lts-jammy`

```console
$ docker pull clickhouse@sha256:27a93a375287894e8be4e9720c01d39ec5b862a241cfe73bb634472db9d6a75f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:lts-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:50be38ac177482e5b57e700964f3ad2f78528a8ee2619d4bc109907ecf3fe4a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.5 MB (265493031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2d51636384c362f424a59231f93024c3aec6d8032b028e5f9feeac17e775c22`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:09 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:09 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:12 GMT
ADD file:799f4e238d67485cc109d93512f4fe6f75bafc26a3476772191154125e52201d in / 
# Mon, 10 Aug 2026 17:38:12 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:10:28 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 18 Aug 2026 01:10:28 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 18 Aug 2026 01:10:28 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 18 Aug 2026 01:10:28 GMT
ARG REPO_CHANNEL=stable
# Tue, 18 Aug 2026 01:10:28 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 18 Aug 2026 01:10:28 GMT
ARG VERSION=26.3.17.110
# Tue, 18 Aug 2026 01:10:28 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 18 Aug 2026 01:10:53 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:10:54 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:10:55 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 18 Aug 2026 01:10:55 GMT
ENV LANG=en_US.UTF-8
# Tue, 18 Aug 2026 01:10:55 GMT
ENV TZ=UTC
# Tue, 18 Aug 2026 01:10:55 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 18 Aug 2026 01:10:55 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 18 Aug 2026 01:10:55 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 18 Aug 2026 01:10:55 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 18 Aug 2026 01:10:55 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 18 Aug 2026 01:10:55 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 18 Aug 2026 01:10:55 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c007a967a77ef4ae4896ca1fa6286f934255694ffeef8def2610ebeae1871a45`  
		Last Modified: Tue, 18 Aug 2026 01:11:17 GMT  
		Size: 7.6 MB (7553497 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cc87778a5d1bbb55721e8001d30836754a58503f9e1c1c538356a96beba8b58`  
		Last Modified: Tue, 18 Aug 2026 01:11:21 GMT  
		Size: 227.3 MB (227332541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf6b2533179b8ad4fa379a9ebb94d47e68bea33d34e047f3d49de84e513ad6e9`  
		Last Modified: Tue, 18 Aug 2026 01:11:17 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8a2fe23e3cfab7bb9cfe001498d449f031d5ba03ab66bdafff5a01d46bec7bd`  
		Last Modified: Tue, 18 Aug 2026 01:11:17 GMT  
		Size: 865.7 KB (865748 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42d2f330cdc4ece828cfdb71294f8e31b341b1a876e87394fe5be77ec54087ce`  
		Last Modified: Tue, 18 Aug 2026 01:11:18 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9189511d45f7506a77b25f2c245623821682462cea3d3d38ab2bac3202aa56e4`  
		Last Modified: Tue, 18 Aug 2026 01:11:18 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e053ffcdeee9a8dd99ebce9bb1c9d1c230dd21b3dbb48d476a6bfe955fca5b38`  
		Last Modified: Tue, 18 Aug 2026 01:11:18 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:lts-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:924a5f58088353a2d12baeb0ea9771d6811fd7f536b02236da8efb178d1a55d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.9 KB (26858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50356986ff0eb4a0373dde05199e575d8c2b6c6c194b57650826dc3f614dc7dc`

```dockerfile
```

-	Layers:
	-	`sha256:fa30235cad1a80bf99a18bf4538df0035530d23a7c83d8fc4bc57846de035a4e`  
		Last Modified: Tue, 18 Aug 2026 01:11:17 GMT  
		Size: 26.9 KB (26858 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:lts-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:c9b49ee2abe5b0f457f9a05ea291fc6efc1006dd1771cc787df4f3eb6b536ca0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.8 MB (246812524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60dc437ed8faaca4b2c35b5318681310601794107a9323acd9ec1a9774628085`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:35 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:35 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:37 GMT
ADD file:c4ec32d39509d0c1acf2ddbb89cdc1fb3ceeae66ef80238f2ba7df53758fb44a in / 
# Mon, 10 Aug 2026 17:38:38 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:10:42 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Tue, 18 Aug 2026 01:10:42 GMT
ARG apt_archive=http://archive.ubuntu.com
# Tue, 18 Aug 2026 01:10:42 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Tue, 18 Aug 2026 01:10:42 GMT
ARG REPO_CHANNEL=stable
# Tue, 18 Aug 2026 01:10:42 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Tue, 18 Aug 2026 01:10:42 GMT
ARG VERSION=26.3.17.110
# Tue, 18 Aug 2026 01:10:42 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Tue, 18 Aug 2026 01:11:15 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:11:15 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Tue, 18 Aug 2026 01:11:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Tue, 18 Aug 2026 01:11:16 GMT
ENV LANG=en_US.UTF-8
# Tue, 18 Aug 2026 01:11:16 GMT
ENV TZ=UTC
# Tue, 18 Aug 2026 01:11:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 18 Aug 2026 01:11:16 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Tue, 18 Aug 2026 01:11:16 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 18 Aug 2026 01:11:16 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Tue, 18 Aug 2026 01:11:16 GMT
VOLUME [/var/lib/clickhouse]
# Tue, 18 Aug 2026 01:11:16 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Tue, 18 Aug 2026 01:11:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d5f1ff18801439ad32a21f50c3e5a40e29586dea76fb9a7ded54ef3dd1528ff`  
		Last Modified: Tue, 18 Aug 2026 01:11:39 GMT  
		Size: 7.5 MB (7533635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7854a2decae9770a9479b0f4edc0c7e8c4c774008c153e76ded0a4b27ebbd03c`  
		Last Modified: Tue, 18 Aug 2026 01:11:45 GMT  
		Size: 210.8 MB (210788390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47773b2525a17cc1082287d8a6628a18913c3aa9785f976f51002e1d1a39377f`  
		Last Modified: Tue, 18 Aug 2026 01:11:39 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4420e94d73693bdf28051cad5331606b68149a042f9d282069a965dfeaf4425`  
		Last Modified: Tue, 18 Aug 2026 01:11:39 GMT  
		Size: 865.7 KB (865748 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea01dd8041db9500791f414bb246a2d3fcbab5bad76e46def340a1dc6218e153`  
		Last Modified: Tue, 18 Aug 2026 01:11:40 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90ab0a97bfe0578b3d0ab9f0a813633dddd5c75f4b76581e84b02a4d34ced2f9`  
		Last Modified: Tue, 18 Aug 2026 01:11:40 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e9411c8916a808e9a89328db5a5d6e679d4430b2bbf43e233116756bfd35462`  
		Last Modified: Tue, 18 Aug 2026 01:11:40 GMT  
		Size: 3.6 KB (3636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:lts-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:04b553d85bf39f5862a439f4007a51a8bc3c8466a630b62ae9a4230fbf37b9f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.1 KB (27070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2036bb22bbc9d1a1313008ed809a95e15e231405e25c08bb861b9a36c3859b70`

```dockerfile
```

-	Layers:
	-	`sha256:eb52f045a67c4d0e69ece241667279de99489c338abce0b03d389784b9819e60`  
		Last Modified: Tue, 18 Aug 2026 01:11:38 GMT  
		Size: 27.1 KB (27070 bytes)  
		MIME: application/vnd.in-toto+json
