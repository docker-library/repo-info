<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `clickhouse`

-	[`clickhouse:25.8`](#clickhouse258)
-	[`clickhouse:25.8-jammy`](#clickhouse258-jammy)
-	[`clickhouse:25.8.28`](#clickhouse25828)
-	[`clickhouse:25.8.28-jammy`](#clickhouse25828-jammy)
-	[`clickhouse:25.8.28.1`](#clickhouse258281)
-	[`clickhouse:25.8.28.1-jammy`](#clickhouse258281-jammy)
-	[`clickhouse:26.3`](#clickhouse263)
-	[`clickhouse:26.3-jammy`](#clickhouse263-jammy)
-	[`clickhouse:26.3.17`](#clickhouse26317)
-	[`clickhouse:26.3.17-jammy`](#clickhouse26317-jammy)
-	[`clickhouse:26.3.17.56`](#clickhouse2631756)
-	[`clickhouse:26.3.17.56-jammy`](#clickhouse2631756-jammy)
-	[`clickhouse:26.5`](#clickhouse265)
-	[`clickhouse:26.5-jammy`](#clickhouse265-jammy)
-	[`clickhouse:26.5.6`](#clickhouse2656)
-	[`clickhouse:26.5.6-jammy`](#clickhouse2656-jammy)
-	[`clickhouse:26.5.6.64`](#clickhouse265664)
-	[`clickhouse:26.5.6.64-jammy`](#clickhouse265664-jammy)
-	[`clickhouse:26.6`](#clickhouse266)
-	[`clickhouse:26.6-jammy`](#clickhouse266-jammy)
-	[`clickhouse:26.6.2`](#clickhouse2662)
-	[`clickhouse:26.6.2-jammy`](#clickhouse2662-jammy)
-	[`clickhouse:26.6.2.81`](#clickhouse266281)
-	[`clickhouse:26.6.2.81-jammy`](#clickhouse266281-jammy)
-	[`clickhouse:26.7`](#clickhouse267)
-	[`clickhouse:26.7-jammy`](#clickhouse267-jammy)
-	[`clickhouse:26.7.1`](#clickhouse2671)
-	[`clickhouse:26.7.1-jammy`](#clickhouse2671-jammy)
-	[`clickhouse:26.7.1.1315`](#clickhouse26711315)
-	[`clickhouse:26.7.1.1315-jammy`](#clickhouse26711315-jammy)
-	[`clickhouse:jammy`](#clickhousejammy)
-	[`clickhouse:latest`](#clickhouselatest)
-	[`clickhouse:lts`](#clickhouselts)
-	[`clickhouse:lts-jammy`](#clickhouselts-jammy)

## `clickhouse:25.8`

```console
$ docker pull clickhouse@sha256:ea72c2ca1487386451e43525f7e5455811b62095914d8dd4775b1cda6c09d2e3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:25.8` - linux; amd64

```console
$ docker pull clickhouse@sha256:f9526288b74d20131d7ae4a5a570e01744f42c560b78ea8b1c23fd69dd2eecf1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.9 MB (229907084 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:326995f7e7ab061f6dd64d53e7feb357e9f594f484c6619fd7c8f6f90e9956de`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 29 Jun 2026 11:07:30 GMT
ARG RELEASE
# Mon, 29 Jun 2026 11:07:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 11:07:30 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 11:07:32 GMT
ADD file:c5143b228eb55f19ed4d3b653ad68ec7afe54ded0247e090ce3afb9e5484adfb in / 
# Mon, 29 Jun 2026 11:07:32 GMT
CMD ["/bin/bash"]
# Fri, 10 Jul 2026 16:33:26 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 10 Jul 2026 16:33:26 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 10 Jul 2026 16:33:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 10 Jul 2026 16:33:26 GMT
ARG REPO_CHANNEL=stable
# Fri, 10 Jul 2026 16:33:26 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 10 Jul 2026 16:33:26 GMT
ARG VERSION=25.8.28.1
# Fri, 10 Jul 2026 16:33:26 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 10 Jul 2026 16:34:51 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.28.1 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 10 Jul 2026 16:34:52 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.28.1 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 10 Jul 2026 16:34:53 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.28.1 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 10 Jul 2026 16:34:53 GMT
ENV LANG=en_US.UTF-8
# Fri, 10 Jul 2026 16:34:53 GMT
ENV TZ=UTC
# Fri, 10 Jul 2026 16:34:53 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.28.1 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 10 Jul 2026 16:34:53 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 10 Jul 2026 16:34:53 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 10 Jul 2026 16:34:53 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 10 Jul 2026 16:34:53 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 10 Jul 2026 16:34:53 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 10 Jul 2026 16:34:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c8ace8171461ee6e8597e24882c580984e3b840aed836cf9709dfad9f339a1a`  
		Last Modified: Fri, 10 Jul 2026 16:34:16 GMT  
		Size: 7.6 MB (7555061 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7692e2b3f14352a96bcdde6807efccd6b1fc51b31fb9d71cab878b8a2d7c2cb4`  
		Last Modified: Fri, 10 Jul 2026 16:35:16 GMT  
		Size: 191.7 MB (191743120 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a92541a1e287ce758a0f4c025fcf9da551851ae32809375bcc9d301046cf9cad`  
		Last Modified: Fri, 10 Jul 2026 16:35:12 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3077924af0817836b87c997e66f1f34c7d72d9079357015850127041c5f48b17`  
		Last Modified: Fri, 10 Jul 2026 16:35:12 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94c6e788aecd1d9ed9695d8c06ef2ee43d05f4b77ec7bdd977786894e4a99fce`  
		Last Modified: Fri, 10 Jul 2026 16:35:12 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:505c80986f8b7aa26d9190e34b0a180cbf26dd239b10363f62b2aab000852df1`  
		Last Modified: Fri, 10 Jul 2026 16:35:13 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3118b7171b8f9e4f15554181fcdd59e0a5d5d805de4a2c51527c661db18a5a3a`  
		Last Modified: Fri, 10 Jul 2026 16:35:13 GMT  
		Size: 3.6 KB (3611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:25.8` - unknown; unknown

```console
$ docker pull clickhouse@sha256:611d246073f60ce79d9bbf850dddc2d7d8d264d065bf82461d813ce93039c83f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c62af49f60c375998881f3730958456ff6ed14dce8388628c789a9ccd9b413b`

```dockerfile
```

-	Layers:
	-	`sha256:d82c0ea1cdbd55db61e0bf3531d1d70442cccd8fb5c36615cbf8f69477167852`  
		Last Modified: Fri, 10 Jul 2026 16:35:12 GMT  
		Size: 26.2 KB (26224 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:25.8` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:fe1d614aef703cbf9e3c53a21b7ec1b0d9b5a6eaeec8860204585fc7ef8ad103
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.9 MB (214886589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6c6f4be1c9be88e83d2cdae22ff00c98ddafd72396d478a205a302930363e32`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 29 Jun 2026 10:38:39 GMT
ARG RELEASE
# Mon, 29 Jun 2026 10:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 10:38:39 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 10:38:42 GMT
ADD file:a517741c956f6a7e4b7cb0efd9bc418ce3cc54eb49b5314080ff606a7430ac2a in / 
# Mon, 29 Jun 2026 10:38:42 GMT
CMD ["/bin/bash"]
# Fri, 10 Jul 2026 16:33:29 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 10 Jul 2026 16:33:29 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 10 Jul 2026 16:33:29 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 10 Jul 2026 16:33:29 GMT
ARG REPO_CHANNEL=stable
# Fri, 10 Jul 2026 16:33:29 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 10 Jul 2026 16:33:29 GMT
ARG VERSION=25.8.28.1
# Fri, 10 Jul 2026 16:33:29 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 10 Jul 2026 16:34:59 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.28.1 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 10 Jul 2026 16:34:59 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.28.1 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 10 Jul 2026 16:35:00 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.28.1 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 10 Jul 2026 16:35:00 GMT
ENV LANG=en_US.UTF-8
# Fri, 10 Jul 2026 16:35:00 GMT
ENV TZ=UTC
# Fri, 10 Jul 2026 16:35:00 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.28.1 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 10 Jul 2026 16:35:00 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 10 Jul 2026 16:35:00 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 10 Jul 2026 16:35:00 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 10 Jul 2026 16:35:00 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 10 Jul 2026 16:35:00 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 10 Jul 2026 16:35:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a55a87281a4b47d12b0d2409ac68b7728238327eda38d2c9d3304327aa5a0fc`  
		Last Modified: Fri, 10 Jul 2026 16:34:20 GMT  
		Size: 7.5 MB (7535373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b75fd55b34f4141f49ac3ae1a205222450933aa48bcaaa0654cc5116f246b586`  
		Last Modified: Fri, 10 Jul 2026 16:35:23 GMT  
		Size: 178.9 MB (178868004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cae4500f53b4df4245e5452d83b2d2e4f59f67563baf9908ab4ae402764b155b`  
		Last Modified: Fri, 10 Jul 2026 16:35:19 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c6b7ebc809ca29d70b7b0267e6d5a9ac4ccd2d3ac60e419bf6a07943ef3e5b3`  
		Last Modified: Fri, 10 Jul 2026 16:35:19 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c5b381d741f02b28a9da3c48fa274b7be31b6b00a730a521dcd9268df140b1f`  
		Last Modified: Fri, 10 Jul 2026 16:35:19 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65b81305f8f0ba406a2bb9e57744f3dd8ccb0c416301f91f508062c46fb63ce5`  
		Last Modified: Fri, 10 Jul 2026 16:35:20 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:056efe6e6322d38fa26b12efcbdc349db508cb1fd93044937618fb3cff226626`  
		Last Modified: Fri, 10 Jul 2026 16:35:20 GMT  
		Size: 3.6 KB (3611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:25.8` - unknown; unknown

```console
$ docker pull clickhouse@sha256:3426c236551681ed6e13121bdc909e01ddc04c82997c11d168a1df08cef7c0a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:382df93528af7fb9fd5894531340a6d983ca8315920f77345bf825c783d53c4f`

```dockerfile
```

-	Layers:
	-	`sha256:6733e8f8915b4e8b0c5f4b12a530837bc00d9dd299d98061f2a312c70fe1698d`  
		Last Modified: Fri, 10 Jul 2026 16:35:19 GMT  
		Size: 26.4 KB (26412 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:25.8-jammy`

```console
$ docker pull clickhouse@sha256:ea72c2ca1487386451e43525f7e5455811b62095914d8dd4775b1cda6c09d2e3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:25.8-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:f9526288b74d20131d7ae4a5a570e01744f42c560b78ea8b1c23fd69dd2eecf1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.9 MB (229907084 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:326995f7e7ab061f6dd64d53e7feb357e9f594f484c6619fd7c8f6f90e9956de`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 29 Jun 2026 11:07:30 GMT
ARG RELEASE
# Mon, 29 Jun 2026 11:07:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 11:07:30 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 11:07:32 GMT
ADD file:c5143b228eb55f19ed4d3b653ad68ec7afe54ded0247e090ce3afb9e5484adfb in / 
# Mon, 29 Jun 2026 11:07:32 GMT
CMD ["/bin/bash"]
# Fri, 10 Jul 2026 16:33:26 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 10 Jul 2026 16:33:26 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 10 Jul 2026 16:33:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 10 Jul 2026 16:33:26 GMT
ARG REPO_CHANNEL=stable
# Fri, 10 Jul 2026 16:33:26 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 10 Jul 2026 16:33:26 GMT
ARG VERSION=25.8.28.1
# Fri, 10 Jul 2026 16:33:26 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 10 Jul 2026 16:34:51 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.28.1 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 10 Jul 2026 16:34:52 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.28.1 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 10 Jul 2026 16:34:53 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.28.1 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 10 Jul 2026 16:34:53 GMT
ENV LANG=en_US.UTF-8
# Fri, 10 Jul 2026 16:34:53 GMT
ENV TZ=UTC
# Fri, 10 Jul 2026 16:34:53 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.28.1 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 10 Jul 2026 16:34:53 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 10 Jul 2026 16:34:53 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 10 Jul 2026 16:34:53 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 10 Jul 2026 16:34:53 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 10 Jul 2026 16:34:53 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 10 Jul 2026 16:34:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c8ace8171461ee6e8597e24882c580984e3b840aed836cf9709dfad9f339a1a`  
		Last Modified: Fri, 10 Jul 2026 16:34:16 GMT  
		Size: 7.6 MB (7555061 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7692e2b3f14352a96bcdde6807efccd6b1fc51b31fb9d71cab878b8a2d7c2cb4`  
		Last Modified: Fri, 10 Jul 2026 16:35:16 GMT  
		Size: 191.7 MB (191743120 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a92541a1e287ce758a0f4c025fcf9da551851ae32809375bcc9d301046cf9cad`  
		Last Modified: Fri, 10 Jul 2026 16:35:12 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3077924af0817836b87c997e66f1f34c7d72d9079357015850127041c5f48b17`  
		Last Modified: Fri, 10 Jul 2026 16:35:12 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94c6e788aecd1d9ed9695d8c06ef2ee43d05f4b77ec7bdd977786894e4a99fce`  
		Last Modified: Fri, 10 Jul 2026 16:35:12 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:505c80986f8b7aa26d9190e34b0a180cbf26dd239b10363f62b2aab000852df1`  
		Last Modified: Fri, 10 Jul 2026 16:35:13 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3118b7171b8f9e4f15554181fcdd59e0a5d5d805de4a2c51527c661db18a5a3a`  
		Last Modified: Fri, 10 Jul 2026 16:35:13 GMT  
		Size: 3.6 KB (3611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:25.8-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:611d246073f60ce79d9bbf850dddc2d7d8d264d065bf82461d813ce93039c83f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c62af49f60c375998881f3730958456ff6ed14dce8388628c789a9ccd9b413b`

```dockerfile
```

-	Layers:
	-	`sha256:d82c0ea1cdbd55db61e0bf3531d1d70442cccd8fb5c36615cbf8f69477167852`  
		Last Modified: Fri, 10 Jul 2026 16:35:12 GMT  
		Size: 26.2 KB (26224 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:25.8-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:fe1d614aef703cbf9e3c53a21b7ec1b0d9b5a6eaeec8860204585fc7ef8ad103
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.9 MB (214886589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6c6f4be1c9be88e83d2cdae22ff00c98ddafd72396d478a205a302930363e32`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 29 Jun 2026 10:38:39 GMT
ARG RELEASE
# Mon, 29 Jun 2026 10:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 10:38:39 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 10:38:42 GMT
ADD file:a517741c956f6a7e4b7cb0efd9bc418ce3cc54eb49b5314080ff606a7430ac2a in / 
# Mon, 29 Jun 2026 10:38:42 GMT
CMD ["/bin/bash"]
# Fri, 10 Jul 2026 16:33:29 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 10 Jul 2026 16:33:29 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 10 Jul 2026 16:33:29 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 10 Jul 2026 16:33:29 GMT
ARG REPO_CHANNEL=stable
# Fri, 10 Jul 2026 16:33:29 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 10 Jul 2026 16:33:29 GMT
ARG VERSION=25.8.28.1
# Fri, 10 Jul 2026 16:33:29 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 10 Jul 2026 16:34:59 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.28.1 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 10 Jul 2026 16:34:59 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.28.1 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 10 Jul 2026 16:35:00 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.28.1 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 10 Jul 2026 16:35:00 GMT
ENV LANG=en_US.UTF-8
# Fri, 10 Jul 2026 16:35:00 GMT
ENV TZ=UTC
# Fri, 10 Jul 2026 16:35:00 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.28.1 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 10 Jul 2026 16:35:00 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 10 Jul 2026 16:35:00 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 10 Jul 2026 16:35:00 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 10 Jul 2026 16:35:00 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 10 Jul 2026 16:35:00 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 10 Jul 2026 16:35:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a55a87281a4b47d12b0d2409ac68b7728238327eda38d2c9d3304327aa5a0fc`  
		Last Modified: Fri, 10 Jul 2026 16:34:20 GMT  
		Size: 7.5 MB (7535373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b75fd55b34f4141f49ac3ae1a205222450933aa48bcaaa0654cc5116f246b586`  
		Last Modified: Fri, 10 Jul 2026 16:35:23 GMT  
		Size: 178.9 MB (178868004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cae4500f53b4df4245e5452d83b2d2e4f59f67563baf9908ab4ae402764b155b`  
		Last Modified: Fri, 10 Jul 2026 16:35:19 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c6b7ebc809ca29d70b7b0267e6d5a9ac4ccd2d3ac60e419bf6a07943ef3e5b3`  
		Last Modified: Fri, 10 Jul 2026 16:35:19 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c5b381d741f02b28a9da3c48fa274b7be31b6b00a730a521dcd9268df140b1f`  
		Last Modified: Fri, 10 Jul 2026 16:35:19 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65b81305f8f0ba406a2bb9e57744f3dd8ccb0c416301f91f508062c46fb63ce5`  
		Last Modified: Fri, 10 Jul 2026 16:35:20 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:056efe6e6322d38fa26b12efcbdc349db508cb1fd93044937618fb3cff226626`  
		Last Modified: Fri, 10 Jul 2026 16:35:20 GMT  
		Size: 3.6 KB (3611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:25.8-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:3426c236551681ed6e13121bdc909e01ddc04c82997c11d168a1df08cef7c0a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:382df93528af7fb9fd5894531340a6d983ca8315920f77345bf825c783d53c4f`

```dockerfile
```

-	Layers:
	-	`sha256:6733e8f8915b4e8b0c5f4b12a530837bc00d9dd299d98061f2a312c70fe1698d`  
		Last Modified: Fri, 10 Jul 2026 16:35:19 GMT  
		Size: 26.4 KB (26412 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:25.8.28`

```console
$ docker pull clickhouse@sha256:ea72c2ca1487386451e43525f7e5455811b62095914d8dd4775b1cda6c09d2e3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:25.8.28` - linux; amd64

```console
$ docker pull clickhouse@sha256:f9526288b74d20131d7ae4a5a570e01744f42c560b78ea8b1c23fd69dd2eecf1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.9 MB (229907084 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:326995f7e7ab061f6dd64d53e7feb357e9f594f484c6619fd7c8f6f90e9956de`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 29 Jun 2026 11:07:30 GMT
ARG RELEASE
# Mon, 29 Jun 2026 11:07:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 11:07:30 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 11:07:32 GMT
ADD file:c5143b228eb55f19ed4d3b653ad68ec7afe54ded0247e090ce3afb9e5484adfb in / 
# Mon, 29 Jun 2026 11:07:32 GMT
CMD ["/bin/bash"]
# Fri, 10 Jul 2026 16:33:26 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 10 Jul 2026 16:33:26 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 10 Jul 2026 16:33:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 10 Jul 2026 16:33:26 GMT
ARG REPO_CHANNEL=stable
# Fri, 10 Jul 2026 16:33:26 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 10 Jul 2026 16:33:26 GMT
ARG VERSION=25.8.28.1
# Fri, 10 Jul 2026 16:33:26 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 10 Jul 2026 16:34:51 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.28.1 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 10 Jul 2026 16:34:52 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.28.1 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 10 Jul 2026 16:34:53 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.28.1 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 10 Jul 2026 16:34:53 GMT
ENV LANG=en_US.UTF-8
# Fri, 10 Jul 2026 16:34:53 GMT
ENV TZ=UTC
# Fri, 10 Jul 2026 16:34:53 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.28.1 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 10 Jul 2026 16:34:53 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 10 Jul 2026 16:34:53 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 10 Jul 2026 16:34:53 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 10 Jul 2026 16:34:53 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 10 Jul 2026 16:34:53 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 10 Jul 2026 16:34:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c8ace8171461ee6e8597e24882c580984e3b840aed836cf9709dfad9f339a1a`  
		Last Modified: Fri, 10 Jul 2026 16:34:16 GMT  
		Size: 7.6 MB (7555061 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7692e2b3f14352a96bcdde6807efccd6b1fc51b31fb9d71cab878b8a2d7c2cb4`  
		Last Modified: Fri, 10 Jul 2026 16:35:16 GMT  
		Size: 191.7 MB (191743120 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a92541a1e287ce758a0f4c025fcf9da551851ae32809375bcc9d301046cf9cad`  
		Last Modified: Fri, 10 Jul 2026 16:35:12 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3077924af0817836b87c997e66f1f34c7d72d9079357015850127041c5f48b17`  
		Last Modified: Fri, 10 Jul 2026 16:35:12 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94c6e788aecd1d9ed9695d8c06ef2ee43d05f4b77ec7bdd977786894e4a99fce`  
		Last Modified: Fri, 10 Jul 2026 16:35:12 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:505c80986f8b7aa26d9190e34b0a180cbf26dd239b10363f62b2aab000852df1`  
		Last Modified: Fri, 10 Jul 2026 16:35:13 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3118b7171b8f9e4f15554181fcdd59e0a5d5d805de4a2c51527c661db18a5a3a`  
		Last Modified: Fri, 10 Jul 2026 16:35:13 GMT  
		Size: 3.6 KB (3611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:25.8.28` - unknown; unknown

```console
$ docker pull clickhouse@sha256:611d246073f60ce79d9bbf850dddc2d7d8d264d065bf82461d813ce93039c83f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c62af49f60c375998881f3730958456ff6ed14dce8388628c789a9ccd9b413b`

```dockerfile
```

-	Layers:
	-	`sha256:d82c0ea1cdbd55db61e0bf3531d1d70442cccd8fb5c36615cbf8f69477167852`  
		Last Modified: Fri, 10 Jul 2026 16:35:12 GMT  
		Size: 26.2 KB (26224 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:25.8.28` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:fe1d614aef703cbf9e3c53a21b7ec1b0d9b5a6eaeec8860204585fc7ef8ad103
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.9 MB (214886589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6c6f4be1c9be88e83d2cdae22ff00c98ddafd72396d478a205a302930363e32`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 29 Jun 2026 10:38:39 GMT
ARG RELEASE
# Mon, 29 Jun 2026 10:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 10:38:39 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 10:38:42 GMT
ADD file:a517741c956f6a7e4b7cb0efd9bc418ce3cc54eb49b5314080ff606a7430ac2a in / 
# Mon, 29 Jun 2026 10:38:42 GMT
CMD ["/bin/bash"]
# Fri, 10 Jul 2026 16:33:29 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 10 Jul 2026 16:33:29 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 10 Jul 2026 16:33:29 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 10 Jul 2026 16:33:29 GMT
ARG REPO_CHANNEL=stable
# Fri, 10 Jul 2026 16:33:29 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 10 Jul 2026 16:33:29 GMT
ARG VERSION=25.8.28.1
# Fri, 10 Jul 2026 16:33:29 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 10 Jul 2026 16:34:59 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.28.1 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 10 Jul 2026 16:34:59 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.28.1 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 10 Jul 2026 16:35:00 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.28.1 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 10 Jul 2026 16:35:00 GMT
ENV LANG=en_US.UTF-8
# Fri, 10 Jul 2026 16:35:00 GMT
ENV TZ=UTC
# Fri, 10 Jul 2026 16:35:00 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.28.1 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 10 Jul 2026 16:35:00 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 10 Jul 2026 16:35:00 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 10 Jul 2026 16:35:00 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 10 Jul 2026 16:35:00 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 10 Jul 2026 16:35:00 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 10 Jul 2026 16:35:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a55a87281a4b47d12b0d2409ac68b7728238327eda38d2c9d3304327aa5a0fc`  
		Last Modified: Fri, 10 Jul 2026 16:34:20 GMT  
		Size: 7.5 MB (7535373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b75fd55b34f4141f49ac3ae1a205222450933aa48bcaaa0654cc5116f246b586`  
		Last Modified: Fri, 10 Jul 2026 16:35:23 GMT  
		Size: 178.9 MB (178868004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cae4500f53b4df4245e5452d83b2d2e4f59f67563baf9908ab4ae402764b155b`  
		Last Modified: Fri, 10 Jul 2026 16:35:19 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c6b7ebc809ca29d70b7b0267e6d5a9ac4ccd2d3ac60e419bf6a07943ef3e5b3`  
		Last Modified: Fri, 10 Jul 2026 16:35:19 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c5b381d741f02b28a9da3c48fa274b7be31b6b00a730a521dcd9268df140b1f`  
		Last Modified: Fri, 10 Jul 2026 16:35:19 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65b81305f8f0ba406a2bb9e57744f3dd8ccb0c416301f91f508062c46fb63ce5`  
		Last Modified: Fri, 10 Jul 2026 16:35:20 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:056efe6e6322d38fa26b12efcbdc349db508cb1fd93044937618fb3cff226626`  
		Last Modified: Fri, 10 Jul 2026 16:35:20 GMT  
		Size: 3.6 KB (3611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:25.8.28` - unknown; unknown

```console
$ docker pull clickhouse@sha256:3426c236551681ed6e13121bdc909e01ddc04c82997c11d168a1df08cef7c0a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:382df93528af7fb9fd5894531340a6d983ca8315920f77345bf825c783d53c4f`

```dockerfile
```

-	Layers:
	-	`sha256:6733e8f8915b4e8b0c5f4b12a530837bc00d9dd299d98061f2a312c70fe1698d`  
		Last Modified: Fri, 10 Jul 2026 16:35:19 GMT  
		Size: 26.4 KB (26412 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:25.8.28-jammy`

```console
$ docker pull clickhouse@sha256:ea72c2ca1487386451e43525f7e5455811b62095914d8dd4775b1cda6c09d2e3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:25.8.28-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:f9526288b74d20131d7ae4a5a570e01744f42c560b78ea8b1c23fd69dd2eecf1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.9 MB (229907084 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:326995f7e7ab061f6dd64d53e7feb357e9f594f484c6619fd7c8f6f90e9956de`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 29 Jun 2026 11:07:30 GMT
ARG RELEASE
# Mon, 29 Jun 2026 11:07:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 11:07:30 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 11:07:32 GMT
ADD file:c5143b228eb55f19ed4d3b653ad68ec7afe54ded0247e090ce3afb9e5484adfb in / 
# Mon, 29 Jun 2026 11:07:32 GMT
CMD ["/bin/bash"]
# Fri, 10 Jul 2026 16:33:26 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 10 Jul 2026 16:33:26 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 10 Jul 2026 16:33:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 10 Jul 2026 16:33:26 GMT
ARG REPO_CHANNEL=stable
# Fri, 10 Jul 2026 16:33:26 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 10 Jul 2026 16:33:26 GMT
ARG VERSION=25.8.28.1
# Fri, 10 Jul 2026 16:33:26 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 10 Jul 2026 16:34:51 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.28.1 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 10 Jul 2026 16:34:52 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.28.1 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 10 Jul 2026 16:34:53 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.28.1 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 10 Jul 2026 16:34:53 GMT
ENV LANG=en_US.UTF-8
# Fri, 10 Jul 2026 16:34:53 GMT
ENV TZ=UTC
# Fri, 10 Jul 2026 16:34:53 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.28.1 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 10 Jul 2026 16:34:53 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 10 Jul 2026 16:34:53 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 10 Jul 2026 16:34:53 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 10 Jul 2026 16:34:53 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 10 Jul 2026 16:34:53 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 10 Jul 2026 16:34:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c8ace8171461ee6e8597e24882c580984e3b840aed836cf9709dfad9f339a1a`  
		Last Modified: Fri, 10 Jul 2026 16:34:16 GMT  
		Size: 7.6 MB (7555061 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7692e2b3f14352a96bcdde6807efccd6b1fc51b31fb9d71cab878b8a2d7c2cb4`  
		Last Modified: Fri, 10 Jul 2026 16:35:16 GMT  
		Size: 191.7 MB (191743120 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a92541a1e287ce758a0f4c025fcf9da551851ae32809375bcc9d301046cf9cad`  
		Last Modified: Fri, 10 Jul 2026 16:35:12 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3077924af0817836b87c997e66f1f34c7d72d9079357015850127041c5f48b17`  
		Last Modified: Fri, 10 Jul 2026 16:35:12 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94c6e788aecd1d9ed9695d8c06ef2ee43d05f4b77ec7bdd977786894e4a99fce`  
		Last Modified: Fri, 10 Jul 2026 16:35:12 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:505c80986f8b7aa26d9190e34b0a180cbf26dd239b10363f62b2aab000852df1`  
		Last Modified: Fri, 10 Jul 2026 16:35:13 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3118b7171b8f9e4f15554181fcdd59e0a5d5d805de4a2c51527c661db18a5a3a`  
		Last Modified: Fri, 10 Jul 2026 16:35:13 GMT  
		Size: 3.6 KB (3611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:25.8.28-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:611d246073f60ce79d9bbf850dddc2d7d8d264d065bf82461d813ce93039c83f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c62af49f60c375998881f3730958456ff6ed14dce8388628c789a9ccd9b413b`

```dockerfile
```

-	Layers:
	-	`sha256:d82c0ea1cdbd55db61e0bf3531d1d70442cccd8fb5c36615cbf8f69477167852`  
		Last Modified: Fri, 10 Jul 2026 16:35:12 GMT  
		Size: 26.2 KB (26224 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:25.8.28-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:fe1d614aef703cbf9e3c53a21b7ec1b0d9b5a6eaeec8860204585fc7ef8ad103
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.9 MB (214886589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6c6f4be1c9be88e83d2cdae22ff00c98ddafd72396d478a205a302930363e32`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 29 Jun 2026 10:38:39 GMT
ARG RELEASE
# Mon, 29 Jun 2026 10:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 10:38:39 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 10:38:42 GMT
ADD file:a517741c956f6a7e4b7cb0efd9bc418ce3cc54eb49b5314080ff606a7430ac2a in / 
# Mon, 29 Jun 2026 10:38:42 GMT
CMD ["/bin/bash"]
# Fri, 10 Jul 2026 16:33:29 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 10 Jul 2026 16:33:29 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 10 Jul 2026 16:33:29 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 10 Jul 2026 16:33:29 GMT
ARG REPO_CHANNEL=stable
# Fri, 10 Jul 2026 16:33:29 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 10 Jul 2026 16:33:29 GMT
ARG VERSION=25.8.28.1
# Fri, 10 Jul 2026 16:33:29 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 10 Jul 2026 16:34:59 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.28.1 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 10 Jul 2026 16:34:59 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.28.1 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 10 Jul 2026 16:35:00 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.28.1 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 10 Jul 2026 16:35:00 GMT
ENV LANG=en_US.UTF-8
# Fri, 10 Jul 2026 16:35:00 GMT
ENV TZ=UTC
# Fri, 10 Jul 2026 16:35:00 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.28.1 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 10 Jul 2026 16:35:00 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 10 Jul 2026 16:35:00 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 10 Jul 2026 16:35:00 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 10 Jul 2026 16:35:00 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 10 Jul 2026 16:35:00 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 10 Jul 2026 16:35:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a55a87281a4b47d12b0d2409ac68b7728238327eda38d2c9d3304327aa5a0fc`  
		Last Modified: Fri, 10 Jul 2026 16:34:20 GMT  
		Size: 7.5 MB (7535373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b75fd55b34f4141f49ac3ae1a205222450933aa48bcaaa0654cc5116f246b586`  
		Last Modified: Fri, 10 Jul 2026 16:35:23 GMT  
		Size: 178.9 MB (178868004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cae4500f53b4df4245e5452d83b2d2e4f59f67563baf9908ab4ae402764b155b`  
		Last Modified: Fri, 10 Jul 2026 16:35:19 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c6b7ebc809ca29d70b7b0267e6d5a9ac4ccd2d3ac60e419bf6a07943ef3e5b3`  
		Last Modified: Fri, 10 Jul 2026 16:35:19 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c5b381d741f02b28a9da3c48fa274b7be31b6b00a730a521dcd9268df140b1f`  
		Last Modified: Fri, 10 Jul 2026 16:35:19 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65b81305f8f0ba406a2bb9e57744f3dd8ccb0c416301f91f508062c46fb63ce5`  
		Last Modified: Fri, 10 Jul 2026 16:35:20 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:056efe6e6322d38fa26b12efcbdc349db508cb1fd93044937618fb3cff226626`  
		Last Modified: Fri, 10 Jul 2026 16:35:20 GMT  
		Size: 3.6 KB (3611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:25.8.28-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:3426c236551681ed6e13121bdc909e01ddc04c82997c11d168a1df08cef7c0a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:382df93528af7fb9fd5894531340a6d983ca8315920f77345bf825c783d53c4f`

```dockerfile
```

-	Layers:
	-	`sha256:6733e8f8915b4e8b0c5f4b12a530837bc00d9dd299d98061f2a312c70fe1698d`  
		Last Modified: Fri, 10 Jul 2026 16:35:19 GMT  
		Size: 26.4 KB (26412 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:25.8.28.1`

```console
$ docker pull clickhouse@sha256:ea72c2ca1487386451e43525f7e5455811b62095914d8dd4775b1cda6c09d2e3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:25.8.28.1` - linux; amd64

```console
$ docker pull clickhouse@sha256:f9526288b74d20131d7ae4a5a570e01744f42c560b78ea8b1c23fd69dd2eecf1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.9 MB (229907084 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:326995f7e7ab061f6dd64d53e7feb357e9f594f484c6619fd7c8f6f90e9956de`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 29 Jun 2026 11:07:30 GMT
ARG RELEASE
# Mon, 29 Jun 2026 11:07:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 11:07:30 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 11:07:32 GMT
ADD file:c5143b228eb55f19ed4d3b653ad68ec7afe54ded0247e090ce3afb9e5484adfb in / 
# Mon, 29 Jun 2026 11:07:32 GMT
CMD ["/bin/bash"]
# Fri, 10 Jul 2026 16:33:26 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 10 Jul 2026 16:33:26 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 10 Jul 2026 16:33:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 10 Jul 2026 16:33:26 GMT
ARG REPO_CHANNEL=stable
# Fri, 10 Jul 2026 16:33:26 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 10 Jul 2026 16:33:26 GMT
ARG VERSION=25.8.28.1
# Fri, 10 Jul 2026 16:33:26 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 10 Jul 2026 16:34:51 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.28.1 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 10 Jul 2026 16:34:52 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.28.1 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 10 Jul 2026 16:34:53 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.28.1 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 10 Jul 2026 16:34:53 GMT
ENV LANG=en_US.UTF-8
# Fri, 10 Jul 2026 16:34:53 GMT
ENV TZ=UTC
# Fri, 10 Jul 2026 16:34:53 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.28.1 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 10 Jul 2026 16:34:53 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 10 Jul 2026 16:34:53 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 10 Jul 2026 16:34:53 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 10 Jul 2026 16:34:53 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 10 Jul 2026 16:34:53 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 10 Jul 2026 16:34:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c8ace8171461ee6e8597e24882c580984e3b840aed836cf9709dfad9f339a1a`  
		Last Modified: Fri, 10 Jul 2026 16:34:16 GMT  
		Size: 7.6 MB (7555061 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7692e2b3f14352a96bcdde6807efccd6b1fc51b31fb9d71cab878b8a2d7c2cb4`  
		Last Modified: Fri, 10 Jul 2026 16:35:16 GMT  
		Size: 191.7 MB (191743120 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a92541a1e287ce758a0f4c025fcf9da551851ae32809375bcc9d301046cf9cad`  
		Last Modified: Fri, 10 Jul 2026 16:35:12 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3077924af0817836b87c997e66f1f34c7d72d9079357015850127041c5f48b17`  
		Last Modified: Fri, 10 Jul 2026 16:35:12 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94c6e788aecd1d9ed9695d8c06ef2ee43d05f4b77ec7bdd977786894e4a99fce`  
		Last Modified: Fri, 10 Jul 2026 16:35:12 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:505c80986f8b7aa26d9190e34b0a180cbf26dd239b10363f62b2aab000852df1`  
		Last Modified: Fri, 10 Jul 2026 16:35:13 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3118b7171b8f9e4f15554181fcdd59e0a5d5d805de4a2c51527c661db18a5a3a`  
		Last Modified: Fri, 10 Jul 2026 16:35:13 GMT  
		Size: 3.6 KB (3611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:25.8.28.1` - unknown; unknown

```console
$ docker pull clickhouse@sha256:611d246073f60ce79d9bbf850dddc2d7d8d264d065bf82461d813ce93039c83f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c62af49f60c375998881f3730958456ff6ed14dce8388628c789a9ccd9b413b`

```dockerfile
```

-	Layers:
	-	`sha256:d82c0ea1cdbd55db61e0bf3531d1d70442cccd8fb5c36615cbf8f69477167852`  
		Last Modified: Fri, 10 Jul 2026 16:35:12 GMT  
		Size: 26.2 KB (26224 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:25.8.28.1` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:fe1d614aef703cbf9e3c53a21b7ec1b0d9b5a6eaeec8860204585fc7ef8ad103
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.9 MB (214886589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6c6f4be1c9be88e83d2cdae22ff00c98ddafd72396d478a205a302930363e32`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 29 Jun 2026 10:38:39 GMT
ARG RELEASE
# Mon, 29 Jun 2026 10:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 10:38:39 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 10:38:42 GMT
ADD file:a517741c956f6a7e4b7cb0efd9bc418ce3cc54eb49b5314080ff606a7430ac2a in / 
# Mon, 29 Jun 2026 10:38:42 GMT
CMD ["/bin/bash"]
# Fri, 10 Jul 2026 16:33:29 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 10 Jul 2026 16:33:29 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 10 Jul 2026 16:33:29 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 10 Jul 2026 16:33:29 GMT
ARG REPO_CHANNEL=stable
# Fri, 10 Jul 2026 16:33:29 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 10 Jul 2026 16:33:29 GMT
ARG VERSION=25.8.28.1
# Fri, 10 Jul 2026 16:33:29 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 10 Jul 2026 16:34:59 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.28.1 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 10 Jul 2026 16:34:59 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.28.1 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 10 Jul 2026 16:35:00 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.28.1 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 10 Jul 2026 16:35:00 GMT
ENV LANG=en_US.UTF-8
# Fri, 10 Jul 2026 16:35:00 GMT
ENV TZ=UTC
# Fri, 10 Jul 2026 16:35:00 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.28.1 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 10 Jul 2026 16:35:00 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 10 Jul 2026 16:35:00 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 10 Jul 2026 16:35:00 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 10 Jul 2026 16:35:00 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 10 Jul 2026 16:35:00 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 10 Jul 2026 16:35:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a55a87281a4b47d12b0d2409ac68b7728238327eda38d2c9d3304327aa5a0fc`  
		Last Modified: Fri, 10 Jul 2026 16:34:20 GMT  
		Size: 7.5 MB (7535373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b75fd55b34f4141f49ac3ae1a205222450933aa48bcaaa0654cc5116f246b586`  
		Last Modified: Fri, 10 Jul 2026 16:35:23 GMT  
		Size: 178.9 MB (178868004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cae4500f53b4df4245e5452d83b2d2e4f59f67563baf9908ab4ae402764b155b`  
		Last Modified: Fri, 10 Jul 2026 16:35:19 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c6b7ebc809ca29d70b7b0267e6d5a9ac4ccd2d3ac60e419bf6a07943ef3e5b3`  
		Last Modified: Fri, 10 Jul 2026 16:35:19 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c5b381d741f02b28a9da3c48fa274b7be31b6b00a730a521dcd9268df140b1f`  
		Last Modified: Fri, 10 Jul 2026 16:35:19 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65b81305f8f0ba406a2bb9e57744f3dd8ccb0c416301f91f508062c46fb63ce5`  
		Last Modified: Fri, 10 Jul 2026 16:35:20 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:056efe6e6322d38fa26b12efcbdc349db508cb1fd93044937618fb3cff226626`  
		Last Modified: Fri, 10 Jul 2026 16:35:20 GMT  
		Size: 3.6 KB (3611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:25.8.28.1` - unknown; unknown

```console
$ docker pull clickhouse@sha256:3426c236551681ed6e13121bdc909e01ddc04c82997c11d168a1df08cef7c0a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:382df93528af7fb9fd5894531340a6d983ca8315920f77345bf825c783d53c4f`

```dockerfile
```

-	Layers:
	-	`sha256:6733e8f8915b4e8b0c5f4b12a530837bc00d9dd299d98061f2a312c70fe1698d`  
		Last Modified: Fri, 10 Jul 2026 16:35:19 GMT  
		Size: 26.4 KB (26412 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:25.8.28.1-jammy`

```console
$ docker pull clickhouse@sha256:ea72c2ca1487386451e43525f7e5455811b62095914d8dd4775b1cda6c09d2e3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:25.8.28.1-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:f9526288b74d20131d7ae4a5a570e01744f42c560b78ea8b1c23fd69dd2eecf1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.9 MB (229907084 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:326995f7e7ab061f6dd64d53e7feb357e9f594f484c6619fd7c8f6f90e9956de`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 29 Jun 2026 11:07:30 GMT
ARG RELEASE
# Mon, 29 Jun 2026 11:07:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 11:07:30 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 11:07:32 GMT
ADD file:c5143b228eb55f19ed4d3b653ad68ec7afe54ded0247e090ce3afb9e5484adfb in / 
# Mon, 29 Jun 2026 11:07:32 GMT
CMD ["/bin/bash"]
# Fri, 10 Jul 2026 16:33:26 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 10 Jul 2026 16:33:26 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 10 Jul 2026 16:33:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 10 Jul 2026 16:33:26 GMT
ARG REPO_CHANNEL=stable
# Fri, 10 Jul 2026 16:33:26 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 10 Jul 2026 16:33:26 GMT
ARG VERSION=25.8.28.1
# Fri, 10 Jul 2026 16:33:26 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 10 Jul 2026 16:34:51 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.28.1 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 10 Jul 2026 16:34:52 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.28.1 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 10 Jul 2026 16:34:53 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.28.1 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 10 Jul 2026 16:34:53 GMT
ENV LANG=en_US.UTF-8
# Fri, 10 Jul 2026 16:34:53 GMT
ENV TZ=UTC
# Fri, 10 Jul 2026 16:34:53 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.28.1 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 10 Jul 2026 16:34:53 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 10 Jul 2026 16:34:53 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 10 Jul 2026 16:34:53 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 10 Jul 2026 16:34:53 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 10 Jul 2026 16:34:53 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 10 Jul 2026 16:34:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c8ace8171461ee6e8597e24882c580984e3b840aed836cf9709dfad9f339a1a`  
		Last Modified: Fri, 10 Jul 2026 16:34:16 GMT  
		Size: 7.6 MB (7555061 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7692e2b3f14352a96bcdde6807efccd6b1fc51b31fb9d71cab878b8a2d7c2cb4`  
		Last Modified: Fri, 10 Jul 2026 16:35:16 GMT  
		Size: 191.7 MB (191743120 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a92541a1e287ce758a0f4c025fcf9da551851ae32809375bcc9d301046cf9cad`  
		Last Modified: Fri, 10 Jul 2026 16:35:12 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3077924af0817836b87c997e66f1f34c7d72d9079357015850127041c5f48b17`  
		Last Modified: Fri, 10 Jul 2026 16:35:12 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94c6e788aecd1d9ed9695d8c06ef2ee43d05f4b77ec7bdd977786894e4a99fce`  
		Last Modified: Fri, 10 Jul 2026 16:35:12 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:505c80986f8b7aa26d9190e34b0a180cbf26dd239b10363f62b2aab000852df1`  
		Last Modified: Fri, 10 Jul 2026 16:35:13 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3118b7171b8f9e4f15554181fcdd59e0a5d5d805de4a2c51527c661db18a5a3a`  
		Last Modified: Fri, 10 Jul 2026 16:35:13 GMT  
		Size: 3.6 KB (3611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:25.8.28.1-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:611d246073f60ce79d9bbf850dddc2d7d8d264d065bf82461d813ce93039c83f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c62af49f60c375998881f3730958456ff6ed14dce8388628c789a9ccd9b413b`

```dockerfile
```

-	Layers:
	-	`sha256:d82c0ea1cdbd55db61e0bf3531d1d70442cccd8fb5c36615cbf8f69477167852`  
		Last Modified: Fri, 10 Jul 2026 16:35:12 GMT  
		Size: 26.2 KB (26224 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:25.8.28.1-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:fe1d614aef703cbf9e3c53a21b7ec1b0d9b5a6eaeec8860204585fc7ef8ad103
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.9 MB (214886589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6c6f4be1c9be88e83d2cdae22ff00c98ddafd72396d478a205a302930363e32`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 29 Jun 2026 10:38:39 GMT
ARG RELEASE
# Mon, 29 Jun 2026 10:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 10:38:39 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 10:38:42 GMT
ADD file:a517741c956f6a7e4b7cb0efd9bc418ce3cc54eb49b5314080ff606a7430ac2a in / 
# Mon, 29 Jun 2026 10:38:42 GMT
CMD ["/bin/bash"]
# Fri, 10 Jul 2026 16:33:29 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 10 Jul 2026 16:33:29 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 10 Jul 2026 16:33:29 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 10 Jul 2026 16:33:29 GMT
ARG REPO_CHANNEL=stable
# Fri, 10 Jul 2026 16:33:29 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 10 Jul 2026 16:33:29 GMT
ARG VERSION=25.8.28.1
# Fri, 10 Jul 2026 16:33:29 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 10 Jul 2026 16:34:59 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.28.1 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 10 Jul 2026 16:34:59 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.28.1 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 10 Jul 2026 16:35:00 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.28.1 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 10 Jul 2026 16:35:00 GMT
ENV LANG=en_US.UTF-8
# Fri, 10 Jul 2026 16:35:00 GMT
ENV TZ=UTC
# Fri, 10 Jul 2026 16:35:00 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.28.1 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 10 Jul 2026 16:35:00 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 10 Jul 2026 16:35:00 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 10 Jul 2026 16:35:00 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 10 Jul 2026 16:35:00 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 10 Jul 2026 16:35:00 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 10 Jul 2026 16:35:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a55a87281a4b47d12b0d2409ac68b7728238327eda38d2c9d3304327aa5a0fc`  
		Last Modified: Fri, 10 Jul 2026 16:34:20 GMT  
		Size: 7.5 MB (7535373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b75fd55b34f4141f49ac3ae1a205222450933aa48bcaaa0654cc5116f246b586`  
		Last Modified: Fri, 10 Jul 2026 16:35:23 GMT  
		Size: 178.9 MB (178868004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cae4500f53b4df4245e5452d83b2d2e4f59f67563baf9908ab4ae402764b155b`  
		Last Modified: Fri, 10 Jul 2026 16:35:19 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c6b7ebc809ca29d70b7b0267e6d5a9ac4ccd2d3ac60e419bf6a07943ef3e5b3`  
		Last Modified: Fri, 10 Jul 2026 16:35:19 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c5b381d741f02b28a9da3c48fa274b7be31b6b00a730a521dcd9268df140b1f`  
		Last Modified: Fri, 10 Jul 2026 16:35:19 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65b81305f8f0ba406a2bb9e57744f3dd8ccb0c416301f91f508062c46fb63ce5`  
		Last Modified: Fri, 10 Jul 2026 16:35:20 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:056efe6e6322d38fa26b12efcbdc349db508cb1fd93044937618fb3cff226626`  
		Last Modified: Fri, 10 Jul 2026 16:35:20 GMT  
		Size: 3.6 KB (3611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:25.8.28.1-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:3426c236551681ed6e13121bdc909e01ddc04c82997c11d168a1df08cef7c0a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:382df93528af7fb9fd5894531340a6d983ca8315920f77345bf825c783d53c4f`

```dockerfile
```

-	Layers:
	-	`sha256:6733e8f8915b4e8b0c5f4b12a530837bc00d9dd299d98061f2a312c70fe1698d`  
		Last Modified: Fri, 10 Jul 2026 16:35:19 GMT  
		Size: 26.4 KB (26412 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.3`

```console
$ docker pull clickhouse@sha256:158dcce6f6fdc59309650aad6b79484abf4eed07d4e0bdba31d732e64b5a25fb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.3` - linux; amd64

```console
$ docker pull clickhouse@sha256:f67d87f4b7c36e8a1063b60564408e4310e8126ef57ea86182647d052683dbd8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.2 MB (265234016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d39bb389e6bec89557ebdd5578bc8318dd35e511f41e5b610efea5cf544bb0e5`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 29 Jun 2026 11:07:30 GMT
ARG RELEASE
# Mon, 29 Jun 2026 11:07:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 11:07:30 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 11:07:32 GMT
ADD file:c5143b228eb55f19ed4d3b653ad68ec7afe54ded0247e090ce3afb9e5484adfb in / 
# Mon, 29 Jun 2026 11:07:32 GMT
CMD ["/bin/bash"]
# Fri, 10 Jul 2026 16:33:26 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 10 Jul 2026 16:33:26 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 10 Jul 2026 16:33:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 10 Jul 2026 16:33:26 GMT
ARG REPO_CHANNEL=stable
# Fri, 10 Jul 2026 16:33:26 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 10 Jul 2026 16:33:26 GMT
ARG VERSION=26.3.17.4
# Fri, 10 Jul 2026 16:33:26 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 10 Jul 2026 16:33:51 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 10 Jul 2026 16:33:51 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 10 Jul 2026 16:33:52 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 10 Jul 2026 16:33:52 GMT
ENV LANG=en_US.UTF-8
# Fri, 10 Jul 2026 16:33:52 GMT
ENV TZ=UTC
# Fri, 10 Jul 2026 16:33:52 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 10 Jul 2026 16:33:52 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 10 Jul 2026 16:33:52 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 10 Jul 2026 16:33:52 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 10 Jul 2026 16:33:52 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 10 Jul 2026 16:33:52 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 10 Jul 2026 16:33:52 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c8ace8171461ee6e8597e24882c580984e3b840aed836cf9709dfad9f339a1a`  
		Last Modified: Fri, 10 Jul 2026 16:34:16 GMT  
		Size: 7.6 MB (7555061 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9679546494284c2192cda65a8dd6b12c58e16f51fa1fc0eb5175ff127c33e154`  
		Last Modified: Fri, 10 Jul 2026 16:34:20 GMT  
		Size: 227.1 MB (227070027 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cdb15a0361385b8f4c92ff4afc5eb77eb6228abe8adb653a609f5312bd23047`  
		Last Modified: Fri, 10 Jul 2026 16:34:15 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c73fe396fbb0d0458782fc1d5601dc690bb5da7fb31380f64342ebd67dc49d29`  
		Last Modified: Fri, 10 Jul 2026 16:34:15 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f89b40032f79de65b1d13b1cbfc7f0aba90ec3c941e83a7ae7fb3d4f1b3b12af`  
		Last Modified: Fri, 10 Jul 2026 16:34:17 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23bf2255348850a9b76810f04968d7006830b58e86099a663318c6dd966012c3`  
		Last Modified: Fri, 10 Jul 2026 16:34:17 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76e55c168bd11208975069062def6f4e41bca70eca1674381852753b7cbef37c`  
		Last Modified: Fri, 10 Jul 2026 16:34:17 GMT  
		Size: 3.6 KB (3636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3` - unknown; unknown

```console
$ docker pull clickhouse@sha256:8e4c0560fe209de486a2c24bbf16c86a6bfba877fd35e188b501fb4d0bc1b043
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.8 KB (26836 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c4cb60180416c69b6a25411d9fb5383d4d2754cfe7980f8b780f9276f0f8572`

```dockerfile
```

-	Layers:
	-	`sha256:24da2815fe36f472d5df244c5b1bb49db0322a3105a465cfdd11bde9f1dffba4`  
		Last Modified: Fri, 10 Jul 2026 16:34:15 GMT  
		Size: 26.8 KB (26836 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.3` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:97f53af2bd3d28a81ba756f2320930d792d211a524bd25b202024f0405d419b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.6 MB (246638453 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e425d48e447ddb9df4090ec6b9c437c5e86c2bd36b6423bb6f262bdf3b331e1`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 29 Jun 2026 10:38:39 GMT
ARG RELEASE
# Mon, 29 Jun 2026 10:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 10:38:39 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 10:38:42 GMT
ADD file:a517741c956f6a7e4b7cb0efd9bc418ce3cc54eb49b5314080ff606a7430ac2a in / 
# Mon, 29 Jun 2026 10:38:42 GMT
CMD ["/bin/bash"]
# Fri, 10 Jul 2026 16:33:29 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 10 Jul 2026 16:33:29 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 10 Jul 2026 16:33:29 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 10 Jul 2026 16:33:29 GMT
ARG REPO_CHANNEL=stable
# Fri, 10 Jul 2026 16:33:29 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 10 Jul 2026 16:33:29 GMT
ARG VERSION=26.3.17.4
# Fri, 10 Jul 2026 16:33:29 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 10 Jul 2026 16:33:56 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 10 Jul 2026 16:33:56 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 10 Jul 2026 16:33:58 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 10 Jul 2026 16:33:58 GMT
ENV LANG=en_US.UTF-8
# Fri, 10 Jul 2026 16:33:58 GMT
ENV TZ=UTC
# Fri, 10 Jul 2026 16:33:58 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 10 Jul 2026 16:33:58 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 10 Jul 2026 16:33:58 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 10 Jul 2026 16:33:58 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 10 Jul 2026 16:33:58 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 10 Jul 2026 16:33:58 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 10 Jul 2026 16:33:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a55a87281a4b47d12b0d2409ac68b7728238327eda38d2c9d3304327aa5a0fc`  
		Last Modified: Fri, 10 Jul 2026 16:34:20 GMT  
		Size: 7.5 MB (7535373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43c1aabdff71614acecf2fe7ffc8745792357992c69c21c3585f9926c42e8ed3`  
		Last Modified: Fri, 10 Jul 2026 16:34:24 GMT  
		Size: 210.6 MB (210619843 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3beec95af8acd0142c3068b9410ba853c975f3d9c16a8f3544f2b8c4ed4641e6`  
		Last Modified: Fri, 10 Jul 2026 16:34:19 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fd71286b08f839a35978d40b4781c60f6fa611439f87c87f6a0b25f9215b431`  
		Last Modified: Fri, 10 Jul 2026 16:34:19 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:999829a9d4afcf962e82a0bd2b5ff1fee6f7ed1a2a69740bb332b45314b64ddb`  
		Last Modified: Fri, 10 Jul 2026 16:34:21 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcad809299c8f5479a3e519c1e5f53bf48c1d670d72540deb6c40330cd1d1091`  
		Last Modified: Fri, 10 Jul 2026 16:34:21 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b8d1b43e4a1de94c665407106cf66ce11d3e0c1c9fb4efb5e551c94c95a90b8`  
		Last Modified: Fri, 10 Jul 2026 16:34:21 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3` - unknown; unknown

```console
$ docker pull clickhouse@sha256:3c18e76d1655c8ac6d9aa15a15c523e826457818a99a734ab6ccbd2c40e2c974
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.0 KB (27047 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5109881b143132e09d978bfd374d7c52f211e6e2d888c5771d507803ea0f7bf0`

```dockerfile
```

-	Layers:
	-	`sha256:bdad4dc9b0983dee805dec9df9826f1ca21401c30667ab4539d5405ee6735189`  
		Last Modified: Fri, 10 Jul 2026 16:34:19 GMT  
		Size: 27.0 KB (27047 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.3-jammy`

```console
$ docker pull clickhouse@sha256:158dcce6f6fdc59309650aad6b79484abf4eed07d4e0bdba31d732e64b5a25fb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.3-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:f67d87f4b7c36e8a1063b60564408e4310e8126ef57ea86182647d052683dbd8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.2 MB (265234016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d39bb389e6bec89557ebdd5578bc8318dd35e511f41e5b610efea5cf544bb0e5`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 29 Jun 2026 11:07:30 GMT
ARG RELEASE
# Mon, 29 Jun 2026 11:07:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 11:07:30 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 11:07:32 GMT
ADD file:c5143b228eb55f19ed4d3b653ad68ec7afe54ded0247e090ce3afb9e5484adfb in / 
# Mon, 29 Jun 2026 11:07:32 GMT
CMD ["/bin/bash"]
# Fri, 10 Jul 2026 16:33:26 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 10 Jul 2026 16:33:26 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 10 Jul 2026 16:33:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 10 Jul 2026 16:33:26 GMT
ARG REPO_CHANNEL=stable
# Fri, 10 Jul 2026 16:33:26 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 10 Jul 2026 16:33:26 GMT
ARG VERSION=26.3.17.4
# Fri, 10 Jul 2026 16:33:26 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 10 Jul 2026 16:33:51 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 10 Jul 2026 16:33:51 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 10 Jul 2026 16:33:52 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 10 Jul 2026 16:33:52 GMT
ENV LANG=en_US.UTF-8
# Fri, 10 Jul 2026 16:33:52 GMT
ENV TZ=UTC
# Fri, 10 Jul 2026 16:33:52 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 10 Jul 2026 16:33:52 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 10 Jul 2026 16:33:52 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 10 Jul 2026 16:33:52 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 10 Jul 2026 16:33:52 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 10 Jul 2026 16:33:52 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 10 Jul 2026 16:33:52 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c8ace8171461ee6e8597e24882c580984e3b840aed836cf9709dfad9f339a1a`  
		Last Modified: Fri, 10 Jul 2026 16:34:16 GMT  
		Size: 7.6 MB (7555061 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9679546494284c2192cda65a8dd6b12c58e16f51fa1fc0eb5175ff127c33e154`  
		Last Modified: Fri, 10 Jul 2026 16:34:20 GMT  
		Size: 227.1 MB (227070027 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cdb15a0361385b8f4c92ff4afc5eb77eb6228abe8adb653a609f5312bd23047`  
		Last Modified: Fri, 10 Jul 2026 16:34:15 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c73fe396fbb0d0458782fc1d5601dc690bb5da7fb31380f64342ebd67dc49d29`  
		Last Modified: Fri, 10 Jul 2026 16:34:15 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f89b40032f79de65b1d13b1cbfc7f0aba90ec3c941e83a7ae7fb3d4f1b3b12af`  
		Last Modified: Fri, 10 Jul 2026 16:34:17 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23bf2255348850a9b76810f04968d7006830b58e86099a663318c6dd966012c3`  
		Last Modified: Fri, 10 Jul 2026 16:34:17 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76e55c168bd11208975069062def6f4e41bca70eca1674381852753b7cbef37c`  
		Last Modified: Fri, 10 Jul 2026 16:34:17 GMT  
		Size: 3.6 KB (3636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:8e4c0560fe209de486a2c24bbf16c86a6bfba877fd35e188b501fb4d0bc1b043
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.8 KB (26836 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c4cb60180416c69b6a25411d9fb5383d4d2754cfe7980f8b780f9276f0f8572`

```dockerfile
```

-	Layers:
	-	`sha256:24da2815fe36f472d5df244c5b1bb49db0322a3105a465cfdd11bde9f1dffba4`  
		Last Modified: Fri, 10 Jul 2026 16:34:15 GMT  
		Size: 26.8 KB (26836 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.3-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:97f53af2bd3d28a81ba756f2320930d792d211a524bd25b202024f0405d419b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.6 MB (246638453 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e425d48e447ddb9df4090ec6b9c437c5e86c2bd36b6423bb6f262bdf3b331e1`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 29 Jun 2026 10:38:39 GMT
ARG RELEASE
# Mon, 29 Jun 2026 10:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 10:38:39 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 10:38:42 GMT
ADD file:a517741c956f6a7e4b7cb0efd9bc418ce3cc54eb49b5314080ff606a7430ac2a in / 
# Mon, 29 Jun 2026 10:38:42 GMT
CMD ["/bin/bash"]
# Fri, 10 Jul 2026 16:33:29 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 10 Jul 2026 16:33:29 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 10 Jul 2026 16:33:29 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 10 Jul 2026 16:33:29 GMT
ARG REPO_CHANNEL=stable
# Fri, 10 Jul 2026 16:33:29 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 10 Jul 2026 16:33:29 GMT
ARG VERSION=26.3.17.4
# Fri, 10 Jul 2026 16:33:29 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 10 Jul 2026 16:33:56 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 10 Jul 2026 16:33:56 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 10 Jul 2026 16:33:58 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 10 Jul 2026 16:33:58 GMT
ENV LANG=en_US.UTF-8
# Fri, 10 Jul 2026 16:33:58 GMT
ENV TZ=UTC
# Fri, 10 Jul 2026 16:33:58 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 10 Jul 2026 16:33:58 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 10 Jul 2026 16:33:58 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 10 Jul 2026 16:33:58 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 10 Jul 2026 16:33:58 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 10 Jul 2026 16:33:58 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 10 Jul 2026 16:33:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a55a87281a4b47d12b0d2409ac68b7728238327eda38d2c9d3304327aa5a0fc`  
		Last Modified: Fri, 10 Jul 2026 16:34:20 GMT  
		Size: 7.5 MB (7535373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43c1aabdff71614acecf2fe7ffc8745792357992c69c21c3585f9926c42e8ed3`  
		Last Modified: Fri, 10 Jul 2026 16:34:24 GMT  
		Size: 210.6 MB (210619843 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3beec95af8acd0142c3068b9410ba853c975f3d9c16a8f3544f2b8c4ed4641e6`  
		Last Modified: Fri, 10 Jul 2026 16:34:19 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fd71286b08f839a35978d40b4781c60f6fa611439f87c87f6a0b25f9215b431`  
		Last Modified: Fri, 10 Jul 2026 16:34:19 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:999829a9d4afcf962e82a0bd2b5ff1fee6f7ed1a2a69740bb332b45314b64ddb`  
		Last Modified: Fri, 10 Jul 2026 16:34:21 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcad809299c8f5479a3e519c1e5f53bf48c1d670d72540deb6c40330cd1d1091`  
		Last Modified: Fri, 10 Jul 2026 16:34:21 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b8d1b43e4a1de94c665407106cf66ce11d3e0c1c9fb4efb5e551c94c95a90b8`  
		Last Modified: Fri, 10 Jul 2026 16:34:21 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:3c18e76d1655c8ac6d9aa15a15c523e826457818a99a734ab6ccbd2c40e2c974
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.0 KB (27047 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5109881b143132e09d978bfd374d7c52f211e6e2d888c5771d507803ea0f7bf0`

```dockerfile
```

-	Layers:
	-	`sha256:bdad4dc9b0983dee805dec9df9826f1ca21401c30667ab4539d5405ee6735189`  
		Last Modified: Fri, 10 Jul 2026 16:34:19 GMT  
		Size: 27.0 KB (27047 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.3.17`

```console
$ docker pull clickhouse@sha256:158dcce6f6fdc59309650aad6b79484abf4eed07d4e0bdba31d732e64b5a25fb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.3.17` - linux; amd64

```console
$ docker pull clickhouse@sha256:f67d87f4b7c36e8a1063b60564408e4310e8126ef57ea86182647d052683dbd8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.2 MB (265234016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d39bb389e6bec89557ebdd5578bc8318dd35e511f41e5b610efea5cf544bb0e5`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 29 Jun 2026 11:07:30 GMT
ARG RELEASE
# Mon, 29 Jun 2026 11:07:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 11:07:30 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 11:07:32 GMT
ADD file:c5143b228eb55f19ed4d3b653ad68ec7afe54ded0247e090ce3afb9e5484adfb in / 
# Mon, 29 Jun 2026 11:07:32 GMT
CMD ["/bin/bash"]
# Fri, 10 Jul 2026 16:33:26 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 10 Jul 2026 16:33:26 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 10 Jul 2026 16:33:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 10 Jul 2026 16:33:26 GMT
ARG REPO_CHANNEL=stable
# Fri, 10 Jul 2026 16:33:26 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 10 Jul 2026 16:33:26 GMT
ARG VERSION=26.3.17.4
# Fri, 10 Jul 2026 16:33:26 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 10 Jul 2026 16:33:51 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 10 Jul 2026 16:33:51 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 10 Jul 2026 16:33:52 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 10 Jul 2026 16:33:52 GMT
ENV LANG=en_US.UTF-8
# Fri, 10 Jul 2026 16:33:52 GMT
ENV TZ=UTC
# Fri, 10 Jul 2026 16:33:52 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 10 Jul 2026 16:33:52 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 10 Jul 2026 16:33:52 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 10 Jul 2026 16:33:52 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 10 Jul 2026 16:33:52 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 10 Jul 2026 16:33:52 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 10 Jul 2026 16:33:52 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c8ace8171461ee6e8597e24882c580984e3b840aed836cf9709dfad9f339a1a`  
		Last Modified: Fri, 10 Jul 2026 16:34:16 GMT  
		Size: 7.6 MB (7555061 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9679546494284c2192cda65a8dd6b12c58e16f51fa1fc0eb5175ff127c33e154`  
		Last Modified: Fri, 10 Jul 2026 16:34:20 GMT  
		Size: 227.1 MB (227070027 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cdb15a0361385b8f4c92ff4afc5eb77eb6228abe8adb653a609f5312bd23047`  
		Last Modified: Fri, 10 Jul 2026 16:34:15 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c73fe396fbb0d0458782fc1d5601dc690bb5da7fb31380f64342ebd67dc49d29`  
		Last Modified: Fri, 10 Jul 2026 16:34:15 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f89b40032f79de65b1d13b1cbfc7f0aba90ec3c941e83a7ae7fb3d4f1b3b12af`  
		Last Modified: Fri, 10 Jul 2026 16:34:17 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23bf2255348850a9b76810f04968d7006830b58e86099a663318c6dd966012c3`  
		Last Modified: Fri, 10 Jul 2026 16:34:17 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76e55c168bd11208975069062def6f4e41bca70eca1674381852753b7cbef37c`  
		Last Modified: Fri, 10 Jul 2026 16:34:17 GMT  
		Size: 3.6 KB (3636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.17` - unknown; unknown

```console
$ docker pull clickhouse@sha256:8e4c0560fe209de486a2c24bbf16c86a6bfba877fd35e188b501fb4d0bc1b043
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.8 KB (26836 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c4cb60180416c69b6a25411d9fb5383d4d2754cfe7980f8b780f9276f0f8572`

```dockerfile
```

-	Layers:
	-	`sha256:24da2815fe36f472d5df244c5b1bb49db0322a3105a465cfdd11bde9f1dffba4`  
		Last Modified: Fri, 10 Jul 2026 16:34:15 GMT  
		Size: 26.8 KB (26836 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.3.17` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:97f53af2bd3d28a81ba756f2320930d792d211a524bd25b202024f0405d419b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.6 MB (246638453 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e425d48e447ddb9df4090ec6b9c437c5e86c2bd36b6423bb6f262bdf3b331e1`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 29 Jun 2026 10:38:39 GMT
ARG RELEASE
# Mon, 29 Jun 2026 10:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 10:38:39 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 10:38:42 GMT
ADD file:a517741c956f6a7e4b7cb0efd9bc418ce3cc54eb49b5314080ff606a7430ac2a in / 
# Mon, 29 Jun 2026 10:38:42 GMT
CMD ["/bin/bash"]
# Fri, 10 Jul 2026 16:33:29 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 10 Jul 2026 16:33:29 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 10 Jul 2026 16:33:29 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 10 Jul 2026 16:33:29 GMT
ARG REPO_CHANNEL=stable
# Fri, 10 Jul 2026 16:33:29 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 10 Jul 2026 16:33:29 GMT
ARG VERSION=26.3.17.4
# Fri, 10 Jul 2026 16:33:29 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 10 Jul 2026 16:33:56 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 10 Jul 2026 16:33:56 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 10 Jul 2026 16:33:58 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 10 Jul 2026 16:33:58 GMT
ENV LANG=en_US.UTF-8
# Fri, 10 Jul 2026 16:33:58 GMT
ENV TZ=UTC
# Fri, 10 Jul 2026 16:33:58 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 10 Jul 2026 16:33:58 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 10 Jul 2026 16:33:58 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 10 Jul 2026 16:33:58 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 10 Jul 2026 16:33:58 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 10 Jul 2026 16:33:58 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 10 Jul 2026 16:33:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a55a87281a4b47d12b0d2409ac68b7728238327eda38d2c9d3304327aa5a0fc`  
		Last Modified: Fri, 10 Jul 2026 16:34:20 GMT  
		Size: 7.5 MB (7535373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43c1aabdff71614acecf2fe7ffc8745792357992c69c21c3585f9926c42e8ed3`  
		Last Modified: Fri, 10 Jul 2026 16:34:24 GMT  
		Size: 210.6 MB (210619843 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3beec95af8acd0142c3068b9410ba853c975f3d9c16a8f3544f2b8c4ed4641e6`  
		Last Modified: Fri, 10 Jul 2026 16:34:19 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fd71286b08f839a35978d40b4781c60f6fa611439f87c87f6a0b25f9215b431`  
		Last Modified: Fri, 10 Jul 2026 16:34:19 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:999829a9d4afcf962e82a0bd2b5ff1fee6f7ed1a2a69740bb332b45314b64ddb`  
		Last Modified: Fri, 10 Jul 2026 16:34:21 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcad809299c8f5479a3e519c1e5f53bf48c1d670d72540deb6c40330cd1d1091`  
		Last Modified: Fri, 10 Jul 2026 16:34:21 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b8d1b43e4a1de94c665407106cf66ce11d3e0c1c9fb4efb5e551c94c95a90b8`  
		Last Modified: Fri, 10 Jul 2026 16:34:21 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.17` - unknown; unknown

```console
$ docker pull clickhouse@sha256:3c18e76d1655c8ac6d9aa15a15c523e826457818a99a734ab6ccbd2c40e2c974
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.0 KB (27047 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5109881b143132e09d978bfd374d7c52f211e6e2d888c5771d507803ea0f7bf0`

```dockerfile
```

-	Layers:
	-	`sha256:bdad4dc9b0983dee805dec9df9826f1ca21401c30667ab4539d5405ee6735189`  
		Last Modified: Fri, 10 Jul 2026 16:34:19 GMT  
		Size: 27.0 KB (27047 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.3.17-jammy`

```console
$ docker pull clickhouse@sha256:158dcce6f6fdc59309650aad6b79484abf4eed07d4e0bdba31d732e64b5a25fb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.3.17-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:f67d87f4b7c36e8a1063b60564408e4310e8126ef57ea86182647d052683dbd8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.2 MB (265234016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d39bb389e6bec89557ebdd5578bc8318dd35e511f41e5b610efea5cf544bb0e5`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 29 Jun 2026 11:07:30 GMT
ARG RELEASE
# Mon, 29 Jun 2026 11:07:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 11:07:30 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 11:07:32 GMT
ADD file:c5143b228eb55f19ed4d3b653ad68ec7afe54ded0247e090ce3afb9e5484adfb in / 
# Mon, 29 Jun 2026 11:07:32 GMT
CMD ["/bin/bash"]
# Fri, 10 Jul 2026 16:33:26 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 10 Jul 2026 16:33:26 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 10 Jul 2026 16:33:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 10 Jul 2026 16:33:26 GMT
ARG REPO_CHANNEL=stable
# Fri, 10 Jul 2026 16:33:26 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 10 Jul 2026 16:33:26 GMT
ARG VERSION=26.3.17.4
# Fri, 10 Jul 2026 16:33:26 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 10 Jul 2026 16:33:51 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 10 Jul 2026 16:33:51 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 10 Jul 2026 16:33:52 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 10 Jul 2026 16:33:52 GMT
ENV LANG=en_US.UTF-8
# Fri, 10 Jul 2026 16:33:52 GMT
ENV TZ=UTC
# Fri, 10 Jul 2026 16:33:52 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 10 Jul 2026 16:33:52 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 10 Jul 2026 16:33:52 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 10 Jul 2026 16:33:52 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 10 Jul 2026 16:33:52 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 10 Jul 2026 16:33:52 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 10 Jul 2026 16:33:52 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c8ace8171461ee6e8597e24882c580984e3b840aed836cf9709dfad9f339a1a`  
		Last Modified: Fri, 10 Jul 2026 16:34:16 GMT  
		Size: 7.6 MB (7555061 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9679546494284c2192cda65a8dd6b12c58e16f51fa1fc0eb5175ff127c33e154`  
		Last Modified: Fri, 10 Jul 2026 16:34:20 GMT  
		Size: 227.1 MB (227070027 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cdb15a0361385b8f4c92ff4afc5eb77eb6228abe8adb653a609f5312bd23047`  
		Last Modified: Fri, 10 Jul 2026 16:34:15 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c73fe396fbb0d0458782fc1d5601dc690bb5da7fb31380f64342ebd67dc49d29`  
		Last Modified: Fri, 10 Jul 2026 16:34:15 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f89b40032f79de65b1d13b1cbfc7f0aba90ec3c941e83a7ae7fb3d4f1b3b12af`  
		Last Modified: Fri, 10 Jul 2026 16:34:17 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23bf2255348850a9b76810f04968d7006830b58e86099a663318c6dd966012c3`  
		Last Modified: Fri, 10 Jul 2026 16:34:17 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76e55c168bd11208975069062def6f4e41bca70eca1674381852753b7cbef37c`  
		Last Modified: Fri, 10 Jul 2026 16:34:17 GMT  
		Size: 3.6 KB (3636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.17-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:8e4c0560fe209de486a2c24bbf16c86a6bfba877fd35e188b501fb4d0bc1b043
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.8 KB (26836 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c4cb60180416c69b6a25411d9fb5383d4d2754cfe7980f8b780f9276f0f8572`

```dockerfile
```

-	Layers:
	-	`sha256:24da2815fe36f472d5df244c5b1bb49db0322a3105a465cfdd11bde9f1dffba4`  
		Last Modified: Fri, 10 Jul 2026 16:34:15 GMT  
		Size: 26.8 KB (26836 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.3.17-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:97f53af2bd3d28a81ba756f2320930d792d211a524bd25b202024f0405d419b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.6 MB (246638453 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e425d48e447ddb9df4090ec6b9c437c5e86c2bd36b6423bb6f262bdf3b331e1`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 29 Jun 2026 10:38:39 GMT
ARG RELEASE
# Mon, 29 Jun 2026 10:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 10:38:39 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 10:38:42 GMT
ADD file:a517741c956f6a7e4b7cb0efd9bc418ce3cc54eb49b5314080ff606a7430ac2a in / 
# Mon, 29 Jun 2026 10:38:42 GMT
CMD ["/bin/bash"]
# Fri, 10 Jul 2026 16:33:29 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 10 Jul 2026 16:33:29 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 10 Jul 2026 16:33:29 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 10 Jul 2026 16:33:29 GMT
ARG REPO_CHANNEL=stable
# Fri, 10 Jul 2026 16:33:29 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 10 Jul 2026 16:33:29 GMT
ARG VERSION=26.3.17.4
# Fri, 10 Jul 2026 16:33:29 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 10 Jul 2026 16:33:56 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 10 Jul 2026 16:33:56 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 10 Jul 2026 16:33:58 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 10 Jul 2026 16:33:58 GMT
ENV LANG=en_US.UTF-8
# Fri, 10 Jul 2026 16:33:58 GMT
ENV TZ=UTC
# Fri, 10 Jul 2026 16:33:58 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 10 Jul 2026 16:33:58 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 10 Jul 2026 16:33:58 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 10 Jul 2026 16:33:58 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 10 Jul 2026 16:33:58 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 10 Jul 2026 16:33:58 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 10 Jul 2026 16:33:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a55a87281a4b47d12b0d2409ac68b7728238327eda38d2c9d3304327aa5a0fc`  
		Last Modified: Fri, 10 Jul 2026 16:34:20 GMT  
		Size: 7.5 MB (7535373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43c1aabdff71614acecf2fe7ffc8745792357992c69c21c3585f9926c42e8ed3`  
		Last Modified: Fri, 10 Jul 2026 16:34:24 GMT  
		Size: 210.6 MB (210619843 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3beec95af8acd0142c3068b9410ba853c975f3d9c16a8f3544f2b8c4ed4641e6`  
		Last Modified: Fri, 10 Jul 2026 16:34:19 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fd71286b08f839a35978d40b4781c60f6fa611439f87c87f6a0b25f9215b431`  
		Last Modified: Fri, 10 Jul 2026 16:34:19 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:999829a9d4afcf962e82a0bd2b5ff1fee6f7ed1a2a69740bb332b45314b64ddb`  
		Last Modified: Fri, 10 Jul 2026 16:34:21 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcad809299c8f5479a3e519c1e5f53bf48c1d670d72540deb6c40330cd1d1091`  
		Last Modified: Fri, 10 Jul 2026 16:34:21 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b8d1b43e4a1de94c665407106cf66ce11d3e0c1c9fb4efb5e551c94c95a90b8`  
		Last Modified: Fri, 10 Jul 2026 16:34:21 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.17-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:3c18e76d1655c8ac6d9aa15a15c523e826457818a99a734ab6ccbd2c40e2c974
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.0 KB (27047 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5109881b143132e09d978bfd374d7c52f211e6e2d888c5771d507803ea0f7bf0`

```dockerfile
```

-	Layers:
	-	`sha256:bdad4dc9b0983dee805dec9df9826f1ca21401c30667ab4539d5405ee6735189`  
		Last Modified: Fri, 10 Jul 2026 16:34:19 GMT  
		Size: 27.0 KB (27047 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.3.17.56`

**does not exist** (yet?)

## `clickhouse:26.3.17.56-jammy`

**does not exist** (yet?)

## `clickhouse:26.5`

```console
$ docker pull clickhouse@sha256:709afe0ea57d8ae72d44c272ecd61b507e1aea476f657016fc0d94f2a6da449d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.5` - linux; amd64

```console
$ docker pull clickhouse@sha256:d2f07245503057da6fec1f21fc59fee761898befc3d57b3dc0bddd0eb20afb89
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.4 MB (261400111 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fde38c6c549dbe540d2f38ddc72968971dadbd62b2aa024ccc78e674531ceebc`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 29 Jun 2026 11:07:30 GMT
ARG RELEASE
# Mon, 29 Jun 2026 11:07:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 11:07:30 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 11:07:32 GMT
ADD file:c5143b228eb55f19ed4d3b653ad68ec7afe54ded0247e090ce3afb9e5484adfb in / 
# Mon, 29 Jun 2026 11:07:32 GMT
CMD ["/bin/bash"]
# Fri, 10 Jul 2026 16:33:28 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 10 Jul 2026 16:33:28 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 10 Jul 2026 16:33:28 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 10 Jul 2026 16:33:28 GMT
ARG REPO_CHANNEL=stable
# Fri, 10 Jul 2026 16:33:28 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 10 Jul 2026 16:33:28 GMT
ARG VERSION=26.5.5.8
# Fri, 10 Jul 2026 16:33:28 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 10 Jul 2026 16:33:56 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.5.8 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 10 Jul 2026 16:33:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.5.8 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 10 Jul 2026 16:33:58 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.5.8 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 10 Jul 2026 16:33:58 GMT
ENV LANG=en_US.UTF-8
# Fri, 10 Jul 2026 16:33:58 GMT
ENV TZ=UTC
# Fri, 10 Jul 2026 16:33:58 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.5.8 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 10 Jul 2026 16:33:58 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 10 Jul 2026 16:33:58 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 10 Jul 2026 16:33:58 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 10 Jul 2026 16:33:58 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 10 Jul 2026 16:33:58 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 10 Jul 2026 16:33:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e157edf0dcc932526cd59f7b0586cbde117d6147ae1efe04868aeb4ad3b6eece`  
		Last Modified: Fri, 10 Jul 2026 16:34:21 GMT  
		Size: 7.6 MB (7555009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4abec04979fcbc4cd2c2bb5d37e0125ebdb20ce59e74e9406ab0edd4d656b16d`  
		Last Modified: Fri, 10 Jul 2026 16:34:25 GMT  
		Size: 223.2 MB (223236169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddeb76a8062cec8e7f38ae5cdedd7d09f7fa8275ee353b9956af566cc508b351`  
		Last Modified: Fri, 10 Jul 2026 16:34:20 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:430f5f9838230ac4f707cb211f877c03c6e095bc67b0267718749458ff15f676`  
		Last Modified: Fri, 10 Jul 2026 16:34:20 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:999829a9d4afcf962e82a0bd2b5ff1fee6f7ed1a2a69740bb332b45314b64ddb`  
		Last Modified: Fri, 10 Jul 2026 16:34:21 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2c9618c1f0b3904546a41fcc0fec5a8ca57d56e9caa94fc31f55b51805f9c23`  
		Last Modified: Fri, 10 Jul 2026 16:34:22 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:761bc9ffbe9fdf560c6d0ce0b7d436cd4652091c04bb363c934cea16607b6e36`  
		Last Modified: Fri, 10 Jul 2026 16:34:22 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.5` - unknown; unknown

```console
$ docker pull clickhouse@sha256:ecf23c9ee1c49ae385a9b238e0370da79f405109f96e48a19e599c064d6f7c3e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6a934b3a6ea1c308f153e5e0d173147b7518bd49f994ea38c8980dd3470e6dc`

```dockerfile
```

-	Layers:
	-	`sha256:5d3833ae03dc7db5ca0b63e3bf822493eff4dd9e5d72fdc2f9e7a9e30ec04a86`  
		Last Modified: Fri, 10 Jul 2026 16:34:20 GMT  
		Size: 26.2 KB (26205 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.5` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:7e7d852ab23e7acdf91fa6d65d70bc59d8a60a3e5952e0deb1f6229ba6ed418a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.2 MB (247208128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ab591297b0d19315ca664b7a6dc446d037dbcbe261d5eb251a668d0beace6a8`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 29 Jun 2026 10:38:39 GMT
ARG RELEASE
# Mon, 29 Jun 2026 10:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 10:38:39 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 10:38:42 GMT
ADD file:a517741c956f6a7e4b7cb0efd9bc418ce3cc54eb49b5314080ff606a7430ac2a in / 
# Mon, 29 Jun 2026 10:38:42 GMT
CMD ["/bin/bash"]
# Fri, 10 Jul 2026 16:33:30 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 10 Jul 2026 16:33:30 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 10 Jul 2026 16:33:30 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 10 Jul 2026 16:33:30 GMT
ARG REPO_CHANNEL=stable
# Fri, 10 Jul 2026 16:33:30 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 10 Jul 2026 16:33:30 GMT
ARG VERSION=26.5.5.8
# Fri, 10 Jul 2026 16:33:30 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 10 Jul 2026 16:35:00 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.5.8 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 10 Jul 2026 16:35:00 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.5.8 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 10 Jul 2026 16:35:02 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.5.8 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 10 Jul 2026 16:35:02 GMT
ENV LANG=en_US.UTF-8
# Fri, 10 Jul 2026 16:35:02 GMT
ENV TZ=UTC
# Fri, 10 Jul 2026 16:35:02 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.5.8 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 10 Jul 2026 16:35:02 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 10 Jul 2026 16:35:02 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 10 Jul 2026 16:35:02 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 10 Jul 2026 16:35:02 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 10 Jul 2026 16:35:02 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 10 Jul 2026 16:35:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6d36a389f6fa466262a1f9eaa5d832224becc68ebdccb466293fa93f9db6a44`  
		Last Modified: Fri, 10 Jul 2026 16:35:25 GMT  
		Size: 7.5 MB (7535360 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b24f171aeae099bc4d918df83e4c993a3a3a792f25bac61e9dfb7bac8dc892f`  
		Last Modified: Fri, 10 Jul 2026 16:35:28 GMT  
		Size: 211.2 MB (211189529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5121a0cac3b4bfa6889f5bfd62e2601772e8a476a42c9bdfc6039c5382b8bbd7`  
		Last Modified: Fri, 10 Jul 2026 16:35:24 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c42e80b364f6bfbab2b87cf87f8f828c9ef0752064036c834362f2383d7e0b1`  
		Last Modified: Fri, 10 Jul 2026 16:35:24 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa42f57b5c9ea056b677810589cce523d07e971c84e15b9fa861255097f02744`  
		Last Modified: Fri, 10 Jul 2026 16:35:25 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d647417fb50ad235ea750fad5a41858ce1b86d2b8e11c1e66f496c316f2094e1`  
		Last Modified: Fri, 10 Jul 2026 16:35:26 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5db53e8c92f6b3ed14e471af4929559ca4b44a9abc59da753ec6e4f4641967cc`  
		Last Modified: Fri, 10 Jul 2026 16:35:26 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.5` - unknown; unknown

```console
$ docker pull clickhouse@sha256:6a941d8923dc0082aaed009921329442103d62eef31abe4b428cc797ecf182f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d18cecc71cce097db54b57f5da7cb5fdf4fc71f02cf489b30964d0483fa7e613`

```dockerfile
```

-	Layers:
	-	`sha256:6f1540b1004e3a919fce4b80741ac97cb7f1b6b423886f539f513b145bdfda6e`  
		Last Modified: Fri, 10 Jul 2026 16:35:24 GMT  
		Size: 26.4 KB (26391 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.5-jammy`

```console
$ docker pull clickhouse@sha256:709afe0ea57d8ae72d44c272ecd61b507e1aea476f657016fc0d94f2a6da449d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.5-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:d2f07245503057da6fec1f21fc59fee761898befc3d57b3dc0bddd0eb20afb89
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.4 MB (261400111 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fde38c6c549dbe540d2f38ddc72968971dadbd62b2aa024ccc78e674531ceebc`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 29 Jun 2026 11:07:30 GMT
ARG RELEASE
# Mon, 29 Jun 2026 11:07:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 11:07:30 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 11:07:32 GMT
ADD file:c5143b228eb55f19ed4d3b653ad68ec7afe54ded0247e090ce3afb9e5484adfb in / 
# Mon, 29 Jun 2026 11:07:32 GMT
CMD ["/bin/bash"]
# Fri, 10 Jul 2026 16:33:28 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 10 Jul 2026 16:33:28 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 10 Jul 2026 16:33:28 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 10 Jul 2026 16:33:28 GMT
ARG REPO_CHANNEL=stable
# Fri, 10 Jul 2026 16:33:28 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 10 Jul 2026 16:33:28 GMT
ARG VERSION=26.5.5.8
# Fri, 10 Jul 2026 16:33:28 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 10 Jul 2026 16:33:56 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.5.8 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 10 Jul 2026 16:33:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.5.8 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 10 Jul 2026 16:33:58 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.5.8 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 10 Jul 2026 16:33:58 GMT
ENV LANG=en_US.UTF-8
# Fri, 10 Jul 2026 16:33:58 GMT
ENV TZ=UTC
# Fri, 10 Jul 2026 16:33:58 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.5.8 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 10 Jul 2026 16:33:58 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 10 Jul 2026 16:33:58 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 10 Jul 2026 16:33:58 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 10 Jul 2026 16:33:58 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 10 Jul 2026 16:33:58 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 10 Jul 2026 16:33:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e157edf0dcc932526cd59f7b0586cbde117d6147ae1efe04868aeb4ad3b6eece`  
		Last Modified: Fri, 10 Jul 2026 16:34:21 GMT  
		Size: 7.6 MB (7555009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4abec04979fcbc4cd2c2bb5d37e0125ebdb20ce59e74e9406ab0edd4d656b16d`  
		Last Modified: Fri, 10 Jul 2026 16:34:25 GMT  
		Size: 223.2 MB (223236169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddeb76a8062cec8e7f38ae5cdedd7d09f7fa8275ee353b9956af566cc508b351`  
		Last Modified: Fri, 10 Jul 2026 16:34:20 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:430f5f9838230ac4f707cb211f877c03c6e095bc67b0267718749458ff15f676`  
		Last Modified: Fri, 10 Jul 2026 16:34:20 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:999829a9d4afcf962e82a0bd2b5ff1fee6f7ed1a2a69740bb332b45314b64ddb`  
		Last Modified: Fri, 10 Jul 2026 16:34:21 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2c9618c1f0b3904546a41fcc0fec5a8ca57d56e9caa94fc31f55b51805f9c23`  
		Last Modified: Fri, 10 Jul 2026 16:34:22 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:761bc9ffbe9fdf560c6d0ce0b7d436cd4652091c04bb363c934cea16607b6e36`  
		Last Modified: Fri, 10 Jul 2026 16:34:22 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.5-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:ecf23c9ee1c49ae385a9b238e0370da79f405109f96e48a19e599c064d6f7c3e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6a934b3a6ea1c308f153e5e0d173147b7518bd49f994ea38c8980dd3470e6dc`

```dockerfile
```

-	Layers:
	-	`sha256:5d3833ae03dc7db5ca0b63e3bf822493eff4dd9e5d72fdc2f9e7a9e30ec04a86`  
		Last Modified: Fri, 10 Jul 2026 16:34:20 GMT  
		Size: 26.2 KB (26205 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.5-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:7e7d852ab23e7acdf91fa6d65d70bc59d8a60a3e5952e0deb1f6229ba6ed418a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.2 MB (247208128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ab591297b0d19315ca664b7a6dc446d037dbcbe261d5eb251a668d0beace6a8`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 29 Jun 2026 10:38:39 GMT
ARG RELEASE
# Mon, 29 Jun 2026 10:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 10:38:39 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 10:38:42 GMT
ADD file:a517741c956f6a7e4b7cb0efd9bc418ce3cc54eb49b5314080ff606a7430ac2a in / 
# Mon, 29 Jun 2026 10:38:42 GMT
CMD ["/bin/bash"]
# Fri, 10 Jul 2026 16:33:30 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 10 Jul 2026 16:33:30 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 10 Jul 2026 16:33:30 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 10 Jul 2026 16:33:30 GMT
ARG REPO_CHANNEL=stable
# Fri, 10 Jul 2026 16:33:30 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 10 Jul 2026 16:33:30 GMT
ARG VERSION=26.5.5.8
# Fri, 10 Jul 2026 16:33:30 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 10 Jul 2026 16:35:00 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.5.8 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 10 Jul 2026 16:35:00 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.5.8 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 10 Jul 2026 16:35:02 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.5.8 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 10 Jul 2026 16:35:02 GMT
ENV LANG=en_US.UTF-8
# Fri, 10 Jul 2026 16:35:02 GMT
ENV TZ=UTC
# Fri, 10 Jul 2026 16:35:02 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.5.8 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 10 Jul 2026 16:35:02 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 10 Jul 2026 16:35:02 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 10 Jul 2026 16:35:02 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 10 Jul 2026 16:35:02 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 10 Jul 2026 16:35:02 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 10 Jul 2026 16:35:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6d36a389f6fa466262a1f9eaa5d832224becc68ebdccb466293fa93f9db6a44`  
		Last Modified: Fri, 10 Jul 2026 16:35:25 GMT  
		Size: 7.5 MB (7535360 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b24f171aeae099bc4d918df83e4c993a3a3a792f25bac61e9dfb7bac8dc892f`  
		Last Modified: Fri, 10 Jul 2026 16:35:28 GMT  
		Size: 211.2 MB (211189529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5121a0cac3b4bfa6889f5bfd62e2601772e8a476a42c9bdfc6039c5382b8bbd7`  
		Last Modified: Fri, 10 Jul 2026 16:35:24 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c42e80b364f6bfbab2b87cf87f8f828c9ef0752064036c834362f2383d7e0b1`  
		Last Modified: Fri, 10 Jul 2026 16:35:24 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa42f57b5c9ea056b677810589cce523d07e971c84e15b9fa861255097f02744`  
		Last Modified: Fri, 10 Jul 2026 16:35:25 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d647417fb50ad235ea750fad5a41858ce1b86d2b8e11c1e66f496c316f2094e1`  
		Last Modified: Fri, 10 Jul 2026 16:35:26 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5db53e8c92f6b3ed14e471af4929559ca4b44a9abc59da753ec6e4f4641967cc`  
		Last Modified: Fri, 10 Jul 2026 16:35:26 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.5-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:6a941d8923dc0082aaed009921329442103d62eef31abe4b428cc797ecf182f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d18cecc71cce097db54b57f5da7cb5fdf4fc71f02cf489b30964d0483fa7e613`

```dockerfile
```

-	Layers:
	-	`sha256:6f1540b1004e3a919fce4b80741ac97cb7f1b6b423886f539f513b145bdfda6e`  
		Last Modified: Fri, 10 Jul 2026 16:35:24 GMT  
		Size: 26.4 KB (26391 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.5.6`

**does not exist** (yet?)

## `clickhouse:26.5.6-jammy`

**does not exist** (yet?)

## `clickhouse:26.5.6.64`

**does not exist** (yet?)

## `clickhouse:26.5.6.64-jammy`

**does not exist** (yet?)

## `clickhouse:26.6`

```console
$ docker pull clickhouse@sha256:308fb4af22355d3777ecb11e263e0b9bfa67fb9015d5d06fd8cc9046a3c2842f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.6` - linux; amd64

```console
$ docker pull clickhouse@sha256:c24ab165cadf34c735d8ac169f2896886400da9a3b34a68484b937e043159209
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.6 MB (276607984 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a98f8708ce8413eccc79327548b367940eba081f18104f34795361d2d5c89a7`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 29 Jun 2026 11:07:30 GMT
ARG RELEASE
# Mon, 29 Jun 2026 11:07:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 11:07:30 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 11:07:32 GMT
ADD file:c5143b228eb55f19ed4d3b653ad68ec7afe54ded0247e090ce3afb9e5484adfb in / 
# Mon, 29 Jun 2026 11:07:32 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:12:05 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Thu, 02 Jul 2026 02:12:05 GMT
ARG apt_archive=http://archive.ubuntu.com
# Thu, 02 Jul 2026 02:12:05 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Thu, 02 Jul 2026 02:12:05 GMT
ARG REPO_CHANNEL=stable
# Thu, 02 Jul 2026 02:12:05 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Thu, 02 Jul 2026 02:12:05 GMT
ARG VERSION=26.6.1.1193
# Thu, 02 Jul 2026 02:12:05 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Thu, 02 Jul 2026 02:12:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.1.1193 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.1.1193 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.1.1193 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
ENV LANG=en_US.UTF-8
# Thu, 02 Jul 2026 02:12:43 GMT
ENV TZ=UTC
# Thu, 02 Jul 2026 02:12:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.1.1193 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Thu, 02 Jul 2026 02:12:43 GMT
VOLUME [/var/lib/clickhouse]
# Thu, 02 Jul 2026 02:12:43 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Thu, 02 Jul 2026 02:12:43 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:240123d56cd594a5f91fa7a3cdc82c13a602c044d71ad955b12136c3974bb388`  
		Last Modified: Thu, 02 Jul 2026 02:13:10 GMT  
		Size: 7.6 MB (7555085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2da96b77e64ef0b7ece256b11e4e4ec476a530970efcecbf807ac00914138978`  
		Last Modified: Thu, 02 Jul 2026 02:13:15 GMT  
		Size: 238.4 MB (238443966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32ea252b6f84a26c755ed64813083022ef666f87e39852c447a7a8cf270381ec`  
		Last Modified: Thu, 02 Jul 2026 02:13:09 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60e051c415a29f198fc6572f636ac9ce27963f486d0882929fe471394a36661a`  
		Last Modified: Thu, 02 Jul 2026 02:13:09 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ada355b6b74ed6f7608c2fa8f08a2ecc5ca062a0997707415bf0d90b7534ff8`  
		Last Modified: Thu, 02 Jul 2026 02:13:06 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:923c95ac0df35d0d40c22487c9aef3d7d138617b8e621aeb3149b9d6df7dbb20`  
		Last Modified: Thu, 02 Jul 2026 02:13:11 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b9f33d4b78a368c770a3f1d2adbd0310e4f3db7cc8062ea2413dff58377c19b`  
		Last Modified: Thu, 02 Jul 2026 02:13:11 GMT  
		Size: 3.6 KB (3639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.6` - unknown; unknown

```console
$ docker pull clickhouse@sha256:a1eaefdc4b3e82cd923be61abdd49f2e6e80131813c6d040d90f527bb2321f68
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.9 KB (26852 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7901e2e850de81b240901dc067afac807e3b2a2fa424dc2797a5e91129f98446`

```dockerfile
```

-	Layers:
	-	`sha256:39dfec3524723233746b0296e627343ce39567b45b8af9e531218e9469042c3e`  
		Last Modified: Thu, 02 Jul 2026 02:13:09 GMT  
		Size: 26.9 KB (26852 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.6` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:ecbb3f1ead73fb5aaf9b76d71b039009154fa3edd4a798d348cada2512bfb8ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.1 MB (257080022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6655bf7bf81f1bba4742afe93c64fe0d8d36e5e6e3f4d7a4339582f8e15d8e88`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 29 Jun 2026 10:38:39 GMT
ARG RELEASE
# Mon, 29 Jun 2026 10:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 10:38:39 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 10:38:42 GMT
ADD file:a517741c956f6a7e4b7cb0efd9bc418ce3cc54eb49b5314080ff606a7430ac2a in / 
# Mon, 29 Jun 2026 10:38:42 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:11:52 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Thu, 02 Jul 2026 02:11:52 GMT
ARG apt_archive=http://archive.ubuntu.com
# Thu, 02 Jul 2026 02:11:52 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Thu, 02 Jul 2026 02:11:52 GMT
ARG REPO_CHANNEL=stable
# Thu, 02 Jul 2026 02:11:52 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Thu, 02 Jul 2026 02:11:52 GMT
ARG VERSION=26.6.1.1193
# Thu, 02 Jul 2026 02:11:52 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Thu, 02 Jul 2026 02:12:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.1.1193 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.1.1193 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:18 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.1.1193 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Thu, 02 Jul 2026 02:12:18 GMT
ENV LANG=en_US.UTF-8
# Thu, 02 Jul 2026 02:12:18 GMT
ENV TZ=UTC
# Thu, 02 Jul 2026 02:12:18 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.1.1193 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 02 Jul 2026 02:12:18 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Thu, 02 Jul 2026 02:12:18 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:12:18 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Thu, 02 Jul 2026 02:12:18 GMT
VOLUME [/var/lib/clickhouse]
# Thu, 02 Jul 2026 02:12:18 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Thu, 02 Jul 2026 02:12:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:812062f085a5648d677b56cc158a59571fe93413a17a91c195f2d7fb3dc39fbf`  
		Last Modified: Thu, 02 Jul 2026 02:12:41 GMT  
		Size: 7.5 MB (7535393 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bbc4217cf48cb34e7781ae9f6da78acd0789940e0bd8b468ad5693c62de5639`  
		Last Modified: Thu, 02 Jul 2026 02:12:47 GMT  
		Size: 221.1 MB (221061389 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85f1bf98ea97e5f41f9b8fad5a1150bcd1cc28d5c4d12a7dc8d4796cba9230cb`  
		Last Modified: Thu, 02 Jul 2026 02:12:41 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbbf889cd5000ec5b22f3169e7f43d6c62c2e203929d5aa7e0c495ba63e063d9`  
		Last Modified: Thu, 02 Jul 2026 02:12:41 GMT  
		Size: 865.8 KB (865752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd26bbfbef1231f932fdc9ce59e188ccb3c69e88e79b8b882affe684c9c7443a`  
		Last Modified: Thu, 02 Jul 2026 02:12:43 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef6c2cc2f2b901a2445c804b9b3ea9517b69a6e6088f73d854e060a26c614958`  
		Last Modified: Thu, 02 Jul 2026 02:12:43 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4250599c74766acde19d9c4c5213e3657af2a1b759a61665d089d212f770f789`  
		Last Modified: Thu, 02 Jul 2026 02:12:43 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.6` - unknown; unknown

```console
$ docker pull clickhouse@sha256:235a0424021eab115558d24bd7f12ebf563c1e4d0665bbf73b1527e6448eb186
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.1 KB (27064 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb82c6a9c269cf1e94282942870612ab4050de4224f48b1b972220dda51f7829`

```dockerfile
```

-	Layers:
	-	`sha256:b453c805909f1176e21dc69dc24149da928f7b6b74e4ac994cafd551bfdc50cf`  
		Last Modified: Thu, 02 Jul 2026 02:12:41 GMT  
		Size: 27.1 KB (27064 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.6-jammy`

```console
$ docker pull clickhouse@sha256:308fb4af22355d3777ecb11e263e0b9bfa67fb9015d5d06fd8cc9046a3c2842f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.6-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:c24ab165cadf34c735d8ac169f2896886400da9a3b34a68484b937e043159209
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.6 MB (276607984 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a98f8708ce8413eccc79327548b367940eba081f18104f34795361d2d5c89a7`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 29 Jun 2026 11:07:30 GMT
ARG RELEASE
# Mon, 29 Jun 2026 11:07:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 11:07:30 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 11:07:32 GMT
ADD file:c5143b228eb55f19ed4d3b653ad68ec7afe54ded0247e090ce3afb9e5484adfb in / 
# Mon, 29 Jun 2026 11:07:32 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:12:05 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Thu, 02 Jul 2026 02:12:05 GMT
ARG apt_archive=http://archive.ubuntu.com
# Thu, 02 Jul 2026 02:12:05 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Thu, 02 Jul 2026 02:12:05 GMT
ARG REPO_CHANNEL=stable
# Thu, 02 Jul 2026 02:12:05 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Thu, 02 Jul 2026 02:12:05 GMT
ARG VERSION=26.6.1.1193
# Thu, 02 Jul 2026 02:12:05 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Thu, 02 Jul 2026 02:12:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.1.1193 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.1.1193 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.1.1193 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
ENV LANG=en_US.UTF-8
# Thu, 02 Jul 2026 02:12:43 GMT
ENV TZ=UTC
# Thu, 02 Jul 2026 02:12:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.1.1193 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Thu, 02 Jul 2026 02:12:43 GMT
VOLUME [/var/lib/clickhouse]
# Thu, 02 Jul 2026 02:12:43 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Thu, 02 Jul 2026 02:12:43 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:240123d56cd594a5f91fa7a3cdc82c13a602c044d71ad955b12136c3974bb388`  
		Last Modified: Thu, 02 Jul 2026 02:13:10 GMT  
		Size: 7.6 MB (7555085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2da96b77e64ef0b7ece256b11e4e4ec476a530970efcecbf807ac00914138978`  
		Last Modified: Thu, 02 Jul 2026 02:13:15 GMT  
		Size: 238.4 MB (238443966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32ea252b6f84a26c755ed64813083022ef666f87e39852c447a7a8cf270381ec`  
		Last Modified: Thu, 02 Jul 2026 02:13:09 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60e051c415a29f198fc6572f636ac9ce27963f486d0882929fe471394a36661a`  
		Last Modified: Thu, 02 Jul 2026 02:13:09 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ada355b6b74ed6f7608c2fa8f08a2ecc5ca062a0997707415bf0d90b7534ff8`  
		Last Modified: Thu, 02 Jul 2026 02:13:06 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:923c95ac0df35d0d40c22487c9aef3d7d138617b8e621aeb3149b9d6df7dbb20`  
		Last Modified: Thu, 02 Jul 2026 02:13:11 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b9f33d4b78a368c770a3f1d2adbd0310e4f3db7cc8062ea2413dff58377c19b`  
		Last Modified: Thu, 02 Jul 2026 02:13:11 GMT  
		Size: 3.6 KB (3639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.6-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:a1eaefdc4b3e82cd923be61abdd49f2e6e80131813c6d040d90f527bb2321f68
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.9 KB (26852 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7901e2e850de81b240901dc067afac807e3b2a2fa424dc2797a5e91129f98446`

```dockerfile
```

-	Layers:
	-	`sha256:39dfec3524723233746b0296e627343ce39567b45b8af9e531218e9469042c3e`  
		Last Modified: Thu, 02 Jul 2026 02:13:09 GMT  
		Size: 26.9 KB (26852 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.6-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:ecbb3f1ead73fb5aaf9b76d71b039009154fa3edd4a798d348cada2512bfb8ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.1 MB (257080022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6655bf7bf81f1bba4742afe93c64fe0d8d36e5e6e3f4d7a4339582f8e15d8e88`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 29 Jun 2026 10:38:39 GMT
ARG RELEASE
# Mon, 29 Jun 2026 10:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 10:38:39 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 10:38:42 GMT
ADD file:a517741c956f6a7e4b7cb0efd9bc418ce3cc54eb49b5314080ff606a7430ac2a in / 
# Mon, 29 Jun 2026 10:38:42 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:11:52 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Thu, 02 Jul 2026 02:11:52 GMT
ARG apt_archive=http://archive.ubuntu.com
# Thu, 02 Jul 2026 02:11:52 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Thu, 02 Jul 2026 02:11:52 GMT
ARG REPO_CHANNEL=stable
# Thu, 02 Jul 2026 02:11:52 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Thu, 02 Jul 2026 02:11:52 GMT
ARG VERSION=26.6.1.1193
# Thu, 02 Jul 2026 02:11:52 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Thu, 02 Jul 2026 02:12:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.1.1193 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.1.1193 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:18 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.1.1193 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Thu, 02 Jul 2026 02:12:18 GMT
ENV LANG=en_US.UTF-8
# Thu, 02 Jul 2026 02:12:18 GMT
ENV TZ=UTC
# Thu, 02 Jul 2026 02:12:18 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.1.1193 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 02 Jul 2026 02:12:18 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Thu, 02 Jul 2026 02:12:18 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:12:18 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Thu, 02 Jul 2026 02:12:18 GMT
VOLUME [/var/lib/clickhouse]
# Thu, 02 Jul 2026 02:12:18 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Thu, 02 Jul 2026 02:12:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:812062f085a5648d677b56cc158a59571fe93413a17a91c195f2d7fb3dc39fbf`  
		Last Modified: Thu, 02 Jul 2026 02:12:41 GMT  
		Size: 7.5 MB (7535393 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bbc4217cf48cb34e7781ae9f6da78acd0789940e0bd8b468ad5693c62de5639`  
		Last Modified: Thu, 02 Jul 2026 02:12:47 GMT  
		Size: 221.1 MB (221061389 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85f1bf98ea97e5f41f9b8fad5a1150bcd1cc28d5c4d12a7dc8d4796cba9230cb`  
		Last Modified: Thu, 02 Jul 2026 02:12:41 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbbf889cd5000ec5b22f3169e7f43d6c62c2e203929d5aa7e0c495ba63e063d9`  
		Last Modified: Thu, 02 Jul 2026 02:12:41 GMT  
		Size: 865.8 KB (865752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd26bbfbef1231f932fdc9ce59e188ccb3c69e88e79b8b882affe684c9c7443a`  
		Last Modified: Thu, 02 Jul 2026 02:12:43 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef6c2cc2f2b901a2445c804b9b3ea9517b69a6e6088f73d854e060a26c614958`  
		Last Modified: Thu, 02 Jul 2026 02:12:43 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4250599c74766acde19d9c4c5213e3657af2a1b759a61665d089d212f770f789`  
		Last Modified: Thu, 02 Jul 2026 02:12:43 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.6-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:235a0424021eab115558d24bd7f12ebf563c1e4d0665bbf73b1527e6448eb186
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.1 KB (27064 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb82c6a9c269cf1e94282942870612ab4050de4224f48b1b972220dda51f7829`

```dockerfile
```

-	Layers:
	-	`sha256:b453c805909f1176e21dc69dc24149da928f7b6b74e4ac994cafd551bfdc50cf`  
		Last Modified: Thu, 02 Jul 2026 02:12:41 GMT  
		Size: 27.1 KB (27064 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.6.2`

**does not exist** (yet?)

## `clickhouse:26.6.2-jammy`

**does not exist** (yet?)

## `clickhouse:26.6.2.81`

**does not exist** (yet?)

## `clickhouse:26.6.2.81-jammy`

**does not exist** (yet?)

## `clickhouse:26.7`

**does not exist** (yet?)

## `clickhouse:26.7-jammy`

**does not exist** (yet?)

## `clickhouse:26.7.1`

**does not exist** (yet?)

## `clickhouse:26.7.1-jammy`

**does not exist** (yet?)

## `clickhouse:26.7.1.1315`

**does not exist** (yet?)

## `clickhouse:26.7.1.1315-jammy`

**does not exist** (yet?)

## `clickhouse:jammy`

```console
$ docker pull clickhouse@sha256:308fb4af22355d3777ecb11e263e0b9bfa67fb9015d5d06fd8cc9046a3c2842f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:c24ab165cadf34c735d8ac169f2896886400da9a3b34a68484b937e043159209
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.6 MB (276607984 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a98f8708ce8413eccc79327548b367940eba081f18104f34795361d2d5c89a7`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 29 Jun 2026 11:07:30 GMT
ARG RELEASE
# Mon, 29 Jun 2026 11:07:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 11:07:30 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 11:07:32 GMT
ADD file:c5143b228eb55f19ed4d3b653ad68ec7afe54ded0247e090ce3afb9e5484adfb in / 
# Mon, 29 Jun 2026 11:07:32 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:12:05 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Thu, 02 Jul 2026 02:12:05 GMT
ARG apt_archive=http://archive.ubuntu.com
# Thu, 02 Jul 2026 02:12:05 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Thu, 02 Jul 2026 02:12:05 GMT
ARG REPO_CHANNEL=stable
# Thu, 02 Jul 2026 02:12:05 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Thu, 02 Jul 2026 02:12:05 GMT
ARG VERSION=26.6.1.1193
# Thu, 02 Jul 2026 02:12:05 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Thu, 02 Jul 2026 02:12:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.1.1193 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.1.1193 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.1.1193 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
ENV LANG=en_US.UTF-8
# Thu, 02 Jul 2026 02:12:43 GMT
ENV TZ=UTC
# Thu, 02 Jul 2026 02:12:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.1.1193 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Thu, 02 Jul 2026 02:12:43 GMT
VOLUME [/var/lib/clickhouse]
# Thu, 02 Jul 2026 02:12:43 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Thu, 02 Jul 2026 02:12:43 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:240123d56cd594a5f91fa7a3cdc82c13a602c044d71ad955b12136c3974bb388`  
		Last Modified: Thu, 02 Jul 2026 02:13:10 GMT  
		Size: 7.6 MB (7555085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2da96b77e64ef0b7ece256b11e4e4ec476a530970efcecbf807ac00914138978`  
		Last Modified: Thu, 02 Jul 2026 02:13:15 GMT  
		Size: 238.4 MB (238443966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32ea252b6f84a26c755ed64813083022ef666f87e39852c447a7a8cf270381ec`  
		Last Modified: Thu, 02 Jul 2026 02:13:09 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60e051c415a29f198fc6572f636ac9ce27963f486d0882929fe471394a36661a`  
		Last Modified: Thu, 02 Jul 2026 02:13:09 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ada355b6b74ed6f7608c2fa8f08a2ecc5ca062a0997707415bf0d90b7534ff8`  
		Last Modified: Thu, 02 Jul 2026 02:13:06 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:923c95ac0df35d0d40c22487c9aef3d7d138617b8e621aeb3149b9d6df7dbb20`  
		Last Modified: Thu, 02 Jul 2026 02:13:11 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b9f33d4b78a368c770a3f1d2adbd0310e4f3db7cc8062ea2413dff58377c19b`  
		Last Modified: Thu, 02 Jul 2026 02:13:11 GMT  
		Size: 3.6 KB (3639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:a1eaefdc4b3e82cd923be61abdd49f2e6e80131813c6d040d90f527bb2321f68
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.9 KB (26852 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7901e2e850de81b240901dc067afac807e3b2a2fa424dc2797a5e91129f98446`

```dockerfile
```

-	Layers:
	-	`sha256:39dfec3524723233746b0296e627343ce39567b45b8af9e531218e9469042c3e`  
		Last Modified: Thu, 02 Jul 2026 02:13:09 GMT  
		Size: 26.9 KB (26852 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:ecbb3f1ead73fb5aaf9b76d71b039009154fa3edd4a798d348cada2512bfb8ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.1 MB (257080022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6655bf7bf81f1bba4742afe93c64fe0d8d36e5e6e3f4d7a4339582f8e15d8e88`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 29 Jun 2026 10:38:39 GMT
ARG RELEASE
# Mon, 29 Jun 2026 10:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 10:38:39 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 10:38:42 GMT
ADD file:a517741c956f6a7e4b7cb0efd9bc418ce3cc54eb49b5314080ff606a7430ac2a in / 
# Mon, 29 Jun 2026 10:38:42 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:11:52 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Thu, 02 Jul 2026 02:11:52 GMT
ARG apt_archive=http://archive.ubuntu.com
# Thu, 02 Jul 2026 02:11:52 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Thu, 02 Jul 2026 02:11:52 GMT
ARG REPO_CHANNEL=stable
# Thu, 02 Jul 2026 02:11:52 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Thu, 02 Jul 2026 02:11:52 GMT
ARG VERSION=26.6.1.1193
# Thu, 02 Jul 2026 02:11:52 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Thu, 02 Jul 2026 02:12:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.1.1193 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.1.1193 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:18 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.1.1193 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Thu, 02 Jul 2026 02:12:18 GMT
ENV LANG=en_US.UTF-8
# Thu, 02 Jul 2026 02:12:18 GMT
ENV TZ=UTC
# Thu, 02 Jul 2026 02:12:18 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.1.1193 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 02 Jul 2026 02:12:18 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Thu, 02 Jul 2026 02:12:18 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:12:18 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Thu, 02 Jul 2026 02:12:18 GMT
VOLUME [/var/lib/clickhouse]
# Thu, 02 Jul 2026 02:12:18 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Thu, 02 Jul 2026 02:12:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:812062f085a5648d677b56cc158a59571fe93413a17a91c195f2d7fb3dc39fbf`  
		Last Modified: Thu, 02 Jul 2026 02:12:41 GMT  
		Size: 7.5 MB (7535393 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bbc4217cf48cb34e7781ae9f6da78acd0789940e0bd8b468ad5693c62de5639`  
		Last Modified: Thu, 02 Jul 2026 02:12:47 GMT  
		Size: 221.1 MB (221061389 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85f1bf98ea97e5f41f9b8fad5a1150bcd1cc28d5c4d12a7dc8d4796cba9230cb`  
		Last Modified: Thu, 02 Jul 2026 02:12:41 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbbf889cd5000ec5b22f3169e7f43d6c62c2e203929d5aa7e0c495ba63e063d9`  
		Last Modified: Thu, 02 Jul 2026 02:12:41 GMT  
		Size: 865.8 KB (865752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd26bbfbef1231f932fdc9ce59e188ccb3c69e88e79b8b882affe684c9c7443a`  
		Last Modified: Thu, 02 Jul 2026 02:12:43 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef6c2cc2f2b901a2445c804b9b3ea9517b69a6e6088f73d854e060a26c614958`  
		Last Modified: Thu, 02 Jul 2026 02:12:43 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4250599c74766acde19d9c4c5213e3657af2a1b759a61665d089d212f770f789`  
		Last Modified: Thu, 02 Jul 2026 02:12:43 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:235a0424021eab115558d24bd7f12ebf563c1e4d0665bbf73b1527e6448eb186
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.1 KB (27064 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb82c6a9c269cf1e94282942870612ab4050de4224f48b1b972220dda51f7829`

```dockerfile
```

-	Layers:
	-	`sha256:b453c805909f1176e21dc69dc24149da928f7b6b74e4ac994cafd551bfdc50cf`  
		Last Modified: Thu, 02 Jul 2026 02:12:41 GMT  
		Size: 27.1 KB (27064 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:latest`

```console
$ docker pull clickhouse@sha256:308fb4af22355d3777ecb11e263e0b9bfa67fb9015d5d06fd8cc9046a3c2842f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:latest` - linux; amd64

```console
$ docker pull clickhouse@sha256:c24ab165cadf34c735d8ac169f2896886400da9a3b34a68484b937e043159209
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.6 MB (276607984 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a98f8708ce8413eccc79327548b367940eba081f18104f34795361d2d5c89a7`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 29 Jun 2026 11:07:30 GMT
ARG RELEASE
# Mon, 29 Jun 2026 11:07:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 11:07:30 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 11:07:32 GMT
ADD file:c5143b228eb55f19ed4d3b653ad68ec7afe54ded0247e090ce3afb9e5484adfb in / 
# Mon, 29 Jun 2026 11:07:32 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:12:05 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Thu, 02 Jul 2026 02:12:05 GMT
ARG apt_archive=http://archive.ubuntu.com
# Thu, 02 Jul 2026 02:12:05 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Thu, 02 Jul 2026 02:12:05 GMT
ARG REPO_CHANNEL=stable
# Thu, 02 Jul 2026 02:12:05 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Thu, 02 Jul 2026 02:12:05 GMT
ARG VERSION=26.6.1.1193
# Thu, 02 Jul 2026 02:12:05 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Thu, 02 Jul 2026 02:12:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.1.1193 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.1.1193 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.1.1193 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
ENV LANG=en_US.UTF-8
# Thu, 02 Jul 2026 02:12:43 GMT
ENV TZ=UTC
# Thu, 02 Jul 2026 02:12:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.1.1193 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:12:43 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Thu, 02 Jul 2026 02:12:43 GMT
VOLUME [/var/lib/clickhouse]
# Thu, 02 Jul 2026 02:12:43 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Thu, 02 Jul 2026 02:12:43 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:240123d56cd594a5f91fa7a3cdc82c13a602c044d71ad955b12136c3974bb388`  
		Last Modified: Thu, 02 Jul 2026 02:13:10 GMT  
		Size: 7.6 MB (7555085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2da96b77e64ef0b7ece256b11e4e4ec476a530970efcecbf807ac00914138978`  
		Last Modified: Thu, 02 Jul 2026 02:13:15 GMT  
		Size: 238.4 MB (238443966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32ea252b6f84a26c755ed64813083022ef666f87e39852c447a7a8cf270381ec`  
		Last Modified: Thu, 02 Jul 2026 02:13:09 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60e051c415a29f198fc6572f636ac9ce27963f486d0882929fe471394a36661a`  
		Last Modified: Thu, 02 Jul 2026 02:13:09 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ada355b6b74ed6f7608c2fa8f08a2ecc5ca062a0997707415bf0d90b7534ff8`  
		Last Modified: Thu, 02 Jul 2026 02:13:06 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:923c95ac0df35d0d40c22487c9aef3d7d138617b8e621aeb3149b9d6df7dbb20`  
		Last Modified: Thu, 02 Jul 2026 02:13:11 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b9f33d4b78a368c770a3f1d2adbd0310e4f3db7cc8062ea2413dff58377c19b`  
		Last Modified: Thu, 02 Jul 2026 02:13:11 GMT  
		Size: 3.6 KB (3639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:latest` - unknown; unknown

```console
$ docker pull clickhouse@sha256:a1eaefdc4b3e82cd923be61abdd49f2e6e80131813c6d040d90f527bb2321f68
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.9 KB (26852 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7901e2e850de81b240901dc067afac807e3b2a2fa424dc2797a5e91129f98446`

```dockerfile
```

-	Layers:
	-	`sha256:39dfec3524723233746b0296e627343ce39567b45b8af9e531218e9469042c3e`  
		Last Modified: Thu, 02 Jul 2026 02:13:09 GMT  
		Size: 26.9 KB (26852 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:latest` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:ecbb3f1ead73fb5aaf9b76d71b039009154fa3edd4a798d348cada2512bfb8ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.1 MB (257080022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6655bf7bf81f1bba4742afe93c64fe0d8d36e5e6e3f4d7a4339582f8e15d8e88`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 29 Jun 2026 10:38:39 GMT
ARG RELEASE
# Mon, 29 Jun 2026 10:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 10:38:39 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 10:38:42 GMT
ADD file:a517741c956f6a7e4b7cb0efd9bc418ce3cc54eb49b5314080ff606a7430ac2a in / 
# Mon, 29 Jun 2026 10:38:42 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:11:52 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Thu, 02 Jul 2026 02:11:52 GMT
ARG apt_archive=http://archive.ubuntu.com
# Thu, 02 Jul 2026 02:11:52 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Thu, 02 Jul 2026 02:11:52 GMT
ARG REPO_CHANNEL=stable
# Thu, 02 Jul 2026 02:11:52 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Thu, 02 Jul 2026 02:11:52 GMT
ARG VERSION=26.6.1.1193
# Thu, 02 Jul 2026 02:11:52 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Thu, 02 Jul 2026 02:12:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.1.1193 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.1.1193 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Thu, 02 Jul 2026 02:12:18 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.1.1193 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Thu, 02 Jul 2026 02:12:18 GMT
ENV LANG=en_US.UTF-8
# Thu, 02 Jul 2026 02:12:18 GMT
ENV TZ=UTC
# Thu, 02 Jul 2026 02:12:18 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.1.1193 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 02 Jul 2026 02:12:18 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Thu, 02 Jul 2026 02:12:18 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:12:18 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Thu, 02 Jul 2026 02:12:18 GMT
VOLUME [/var/lib/clickhouse]
# Thu, 02 Jul 2026 02:12:18 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Thu, 02 Jul 2026 02:12:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:812062f085a5648d677b56cc158a59571fe93413a17a91c195f2d7fb3dc39fbf`  
		Last Modified: Thu, 02 Jul 2026 02:12:41 GMT  
		Size: 7.5 MB (7535393 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bbc4217cf48cb34e7781ae9f6da78acd0789940e0bd8b468ad5693c62de5639`  
		Last Modified: Thu, 02 Jul 2026 02:12:47 GMT  
		Size: 221.1 MB (221061389 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85f1bf98ea97e5f41f9b8fad5a1150bcd1cc28d5c4d12a7dc8d4796cba9230cb`  
		Last Modified: Thu, 02 Jul 2026 02:12:41 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbbf889cd5000ec5b22f3169e7f43d6c62c2e203929d5aa7e0c495ba63e063d9`  
		Last Modified: Thu, 02 Jul 2026 02:12:41 GMT  
		Size: 865.8 KB (865752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd26bbfbef1231f932fdc9ce59e188ccb3c69e88e79b8b882affe684c9c7443a`  
		Last Modified: Thu, 02 Jul 2026 02:12:43 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef6c2cc2f2b901a2445c804b9b3ea9517b69a6e6088f73d854e060a26c614958`  
		Last Modified: Thu, 02 Jul 2026 02:12:43 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4250599c74766acde19d9c4c5213e3657af2a1b759a61665d089d212f770f789`  
		Last Modified: Thu, 02 Jul 2026 02:12:43 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:latest` - unknown; unknown

```console
$ docker pull clickhouse@sha256:235a0424021eab115558d24bd7f12ebf563c1e4d0665bbf73b1527e6448eb186
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.1 KB (27064 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb82c6a9c269cf1e94282942870612ab4050de4224f48b1b972220dda51f7829`

```dockerfile
```

-	Layers:
	-	`sha256:b453c805909f1176e21dc69dc24149da928f7b6b74e4ac994cafd551bfdc50cf`  
		Last Modified: Thu, 02 Jul 2026 02:12:41 GMT  
		Size: 27.1 KB (27064 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:lts`

```console
$ docker pull clickhouse@sha256:158dcce6f6fdc59309650aad6b79484abf4eed07d4e0bdba31d732e64b5a25fb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:lts` - linux; amd64

```console
$ docker pull clickhouse@sha256:f67d87f4b7c36e8a1063b60564408e4310e8126ef57ea86182647d052683dbd8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.2 MB (265234016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d39bb389e6bec89557ebdd5578bc8318dd35e511f41e5b610efea5cf544bb0e5`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 29 Jun 2026 11:07:30 GMT
ARG RELEASE
# Mon, 29 Jun 2026 11:07:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 11:07:30 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 11:07:32 GMT
ADD file:c5143b228eb55f19ed4d3b653ad68ec7afe54ded0247e090ce3afb9e5484adfb in / 
# Mon, 29 Jun 2026 11:07:32 GMT
CMD ["/bin/bash"]
# Fri, 10 Jul 2026 16:33:26 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 10 Jul 2026 16:33:26 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 10 Jul 2026 16:33:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 10 Jul 2026 16:33:26 GMT
ARG REPO_CHANNEL=stable
# Fri, 10 Jul 2026 16:33:26 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 10 Jul 2026 16:33:26 GMT
ARG VERSION=26.3.17.4
# Fri, 10 Jul 2026 16:33:26 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 10 Jul 2026 16:33:51 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 10 Jul 2026 16:33:51 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 10 Jul 2026 16:33:52 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 10 Jul 2026 16:33:52 GMT
ENV LANG=en_US.UTF-8
# Fri, 10 Jul 2026 16:33:52 GMT
ENV TZ=UTC
# Fri, 10 Jul 2026 16:33:52 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 10 Jul 2026 16:33:52 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 10 Jul 2026 16:33:52 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 10 Jul 2026 16:33:52 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 10 Jul 2026 16:33:52 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 10 Jul 2026 16:33:52 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 10 Jul 2026 16:33:52 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c8ace8171461ee6e8597e24882c580984e3b840aed836cf9709dfad9f339a1a`  
		Last Modified: Fri, 10 Jul 2026 16:34:16 GMT  
		Size: 7.6 MB (7555061 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9679546494284c2192cda65a8dd6b12c58e16f51fa1fc0eb5175ff127c33e154`  
		Last Modified: Fri, 10 Jul 2026 16:34:20 GMT  
		Size: 227.1 MB (227070027 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cdb15a0361385b8f4c92ff4afc5eb77eb6228abe8adb653a609f5312bd23047`  
		Last Modified: Fri, 10 Jul 2026 16:34:15 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c73fe396fbb0d0458782fc1d5601dc690bb5da7fb31380f64342ebd67dc49d29`  
		Last Modified: Fri, 10 Jul 2026 16:34:15 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f89b40032f79de65b1d13b1cbfc7f0aba90ec3c941e83a7ae7fb3d4f1b3b12af`  
		Last Modified: Fri, 10 Jul 2026 16:34:17 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23bf2255348850a9b76810f04968d7006830b58e86099a663318c6dd966012c3`  
		Last Modified: Fri, 10 Jul 2026 16:34:17 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76e55c168bd11208975069062def6f4e41bca70eca1674381852753b7cbef37c`  
		Last Modified: Fri, 10 Jul 2026 16:34:17 GMT  
		Size: 3.6 KB (3636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:lts` - unknown; unknown

```console
$ docker pull clickhouse@sha256:8e4c0560fe209de486a2c24bbf16c86a6bfba877fd35e188b501fb4d0bc1b043
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.8 KB (26836 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c4cb60180416c69b6a25411d9fb5383d4d2754cfe7980f8b780f9276f0f8572`

```dockerfile
```

-	Layers:
	-	`sha256:24da2815fe36f472d5df244c5b1bb49db0322a3105a465cfdd11bde9f1dffba4`  
		Last Modified: Fri, 10 Jul 2026 16:34:15 GMT  
		Size: 26.8 KB (26836 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:lts` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:97f53af2bd3d28a81ba756f2320930d792d211a524bd25b202024f0405d419b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.6 MB (246638453 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e425d48e447ddb9df4090ec6b9c437c5e86c2bd36b6423bb6f262bdf3b331e1`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 29 Jun 2026 10:38:39 GMT
ARG RELEASE
# Mon, 29 Jun 2026 10:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 10:38:39 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 10:38:42 GMT
ADD file:a517741c956f6a7e4b7cb0efd9bc418ce3cc54eb49b5314080ff606a7430ac2a in / 
# Mon, 29 Jun 2026 10:38:42 GMT
CMD ["/bin/bash"]
# Fri, 10 Jul 2026 16:33:29 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 10 Jul 2026 16:33:29 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 10 Jul 2026 16:33:29 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 10 Jul 2026 16:33:29 GMT
ARG REPO_CHANNEL=stable
# Fri, 10 Jul 2026 16:33:29 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 10 Jul 2026 16:33:29 GMT
ARG VERSION=26.3.17.4
# Fri, 10 Jul 2026 16:33:29 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 10 Jul 2026 16:33:56 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 10 Jul 2026 16:33:56 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 10 Jul 2026 16:33:58 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 10 Jul 2026 16:33:58 GMT
ENV LANG=en_US.UTF-8
# Fri, 10 Jul 2026 16:33:58 GMT
ENV TZ=UTC
# Fri, 10 Jul 2026 16:33:58 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 10 Jul 2026 16:33:58 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 10 Jul 2026 16:33:58 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 10 Jul 2026 16:33:58 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 10 Jul 2026 16:33:58 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 10 Jul 2026 16:33:58 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 10 Jul 2026 16:33:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a55a87281a4b47d12b0d2409ac68b7728238327eda38d2c9d3304327aa5a0fc`  
		Last Modified: Fri, 10 Jul 2026 16:34:20 GMT  
		Size: 7.5 MB (7535373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43c1aabdff71614acecf2fe7ffc8745792357992c69c21c3585f9926c42e8ed3`  
		Last Modified: Fri, 10 Jul 2026 16:34:24 GMT  
		Size: 210.6 MB (210619843 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3beec95af8acd0142c3068b9410ba853c975f3d9c16a8f3544f2b8c4ed4641e6`  
		Last Modified: Fri, 10 Jul 2026 16:34:19 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fd71286b08f839a35978d40b4781c60f6fa611439f87c87f6a0b25f9215b431`  
		Last Modified: Fri, 10 Jul 2026 16:34:19 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:999829a9d4afcf962e82a0bd2b5ff1fee6f7ed1a2a69740bb332b45314b64ddb`  
		Last Modified: Fri, 10 Jul 2026 16:34:21 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcad809299c8f5479a3e519c1e5f53bf48c1d670d72540deb6c40330cd1d1091`  
		Last Modified: Fri, 10 Jul 2026 16:34:21 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b8d1b43e4a1de94c665407106cf66ce11d3e0c1c9fb4efb5e551c94c95a90b8`  
		Last Modified: Fri, 10 Jul 2026 16:34:21 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:lts` - unknown; unknown

```console
$ docker pull clickhouse@sha256:3c18e76d1655c8ac6d9aa15a15c523e826457818a99a734ab6ccbd2c40e2c974
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.0 KB (27047 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5109881b143132e09d978bfd374d7c52f211e6e2d888c5771d507803ea0f7bf0`

```dockerfile
```

-	Layers:
	-	`sha256:bdad4dc9b0983dee805dec9df9826f1ca21401c30667ab4539d5405ee6735189`  
		Last Modified: Fri, 10 Jul 2026 16:34:19 GMT  
		Size: 27.0 KB (27047 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:lts-jammy`

```console
$ docker pull clickhouse@sha256:158dcce6f6fdc59309650aad6b79484abf4eed07d4e0bdba31d732e64b5a25fb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:lts-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:f67d87f4b7c36e8a1063b60564408e4310e8126ef57ea86182647d052683dbd8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.2 MB (265234016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d39bb389e6bec89557ebdd5578bc8318dd35e511f41e5b610efea5cf544bb0e5`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 29 Jun 2026 11:07:30 GMT
ARG RELEASE
# Mon, 29 Jun 2026 11:07:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 11:07:30 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 11:07:32 GMT
ADD file:c5143b228eb55f19ed4d3b653ad68ec7afe54ded0247e090ce3afb9e5484adfb in / 
# Mon, 29 Jun 2026 11:07:32 GMT
CMD ["/bin/bash"]
# Fri, 10 Jul 2026 16:33:26 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 10 Jul 2026 16:33:26 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 10 Jul 2026 16:33:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 10 Jul 2026 16:33:26 GMT
ARG REPO_CHANNEL=stable
# Fri, 10 Jul 2026 16:33:26 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 10 Jul 2026 16:33:26 GMT
ARG VERSION=26.3.17.4
# Fri, 10 Jul 2026 16:33:26 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 10 Jul 2026 16:33:51 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 10 Jul 2026 16:33:51 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 10 Jul 2026 16:33:52 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 10 Jul 2026 16:33:52 GMT
ENV LANG=en_US.UTF-8
# Fri, 10 Jul 2026 16:33:52 GMT
ENV TZ=UTC
# Fri, 10 Jul 2026 16:33:52 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 10 Jul 2026 16:33:52 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 10 Jul 2026 16:33:52 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 10 Jul 2026 16:33:52 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 10 Jul 2026 16:33:52 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 10 Jul 2026 16:33:52 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 10 Jul 2026 16:33:52 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c8ace8171461ee6e8597e24882c580984e3b840aed836cf9709dfad9f339a1a`  
		Last Modified: Fri, 10 Jul 2026 16:34:16 GMT  
		Size: 7.6 MB (7555061 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9679546494284c2192cda65a8dd6b12c58e16f51fa1fc0eb5175ff127c33e154`  
		Last Modified: Fri, 10 Jul 2026 16:34:20 GMT  
		Size: 227.1 MB (227070027 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cdb15a0361385b8f4c92ff4afc5eb77eb6228abe8adb653a609f5312bd23047`  
		Last Modified: Fri, 10 Jul 2026 16:34:15 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c73fe396fbb0d0458782fc1d5601dc690bb5da7fb31380f64342ebd67dc49d29`  
		Last Modified: Fri, 10 Jul 2026 16:34:15 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f89b40032f79de65b1d13b1cbfc7f0aba90ec3c941e83a7ae7fb3d4f1b3b12af`  
		Last Modified: Fri, 10 Jul 2026 16:34:17 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23bf2255348850a9b76810f04968d7006830b58e86099a663318c6dd966012c3`  
		Last Modified: Fri, 10 Jul 2026 16:34:17 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76e55c168bd11208975069062def6f4e41bca70eca1674381852753b7cbef37c`  
		Last Modified: Fri, 10 Jul 2026 16:34:17 GMT  
		Size: 3.6 KB (3636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:lts-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:8e4c0560fe209de486a2c24bbf16c86a6bfba877fd35e188b501fb4d0bc1b043
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.8 KB (26836 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c4cb60180416c69b6a25411d9fb5383d4d2754cfe7980f8b780f9276f0f8572`

```dockerfile
```

-	Layers:
	-	`sha256:24da2815fe36f472d5df244c5b1bb49db0322a3105a465cfdd11bde9f1dffba4`  
		Last Modified: Fri, 10 Jul 2026 16:34:15 GMT  
		Size: 26.8 KB (26836 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:lts-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:97f53af2bd3d28a81ba756f2320930d792d211a524bd25b202024f0405d419b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.6 MB (246638453 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e425d48e447ddb9df4090ec6b9c437c5e86c2bd36b6423bb6f262bdf3b331e1`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 29 Jun 2026 10:38:39 GMT
ARG RELEASE
# Mon, 29 Jun 2026 10:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 10:38:39 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 10:38:42 GMT
ADD file:a517741c956f6a7e4b7cb0efd9bc418ce3cc54eb49b5314080ff606a7430ac2a in / 
# Mon, 29 Jun 2026 10:38:42 GMT
CMD ["/bin/bash"]
# Fri, 10 Jul 2026 16:33:29 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 10 Jul 2026 16:33:29 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 10 Jul 2026 16:33:29 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 10 Jul 2026 16:33:29 GMT
ARG REPO_CHANNEL=stable
# Fri, 10 Jul 2026 16:33:29 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 10 Jul 2026 16:33:29 GMT
ARG VERSION=26.3.17.4
# Fri, 10 Jul 2026 16:33:29 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 10 Jul 2026 16:33:56 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 10 Jul 2026 16:33:56 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 10 Jul 2026 16:33:58 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 10 Jul 2026 16:33:58 GMT
ENV LANG=en_US.UTF-8
# Fri, 10 Jul 2026 16:33:58 GMT
ENV TZ=UTC
# Fri, 10 Jul 2026 16:33:58 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 10 Jul 2026 16:33:58 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 10 Jul 2026 16:33:58 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 10 Jul 2026 16:33:58 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 10 Jul 2026 16:33:58 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 10 Jul 2026 16:33:58 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 10 Jul 2026 16:33:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a55a87281a4b47d12b0d2409ac68b7728238327eda38d2c9d3304327aa5a0fc`  
		Last Modified: Fri, 10 Jul 2026 16:34:20 GMT  
		Size: 7.5 MB (7535373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43c1aabdff71614acecf2fe7ffc8745792357992c69c21c3585f9926c42e8ed3`  
		Last Modified: Fri, 10 Jul 2026 16:34:24 GMT  
		Size: 210.6 MB (210619843 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3beec95af8acd0142c3068b9410ba853c975f3d9c16a8f3544f2b8c4ed4641e6`  
		Last Modified: Fri, 10 Jul 2026 16:34:19 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fd71286b08f839a35978d40b4781c60f6fa611439f87c87f6a0b25f9215b431`  
		Last Modified: Fri, 10 Jul 2026 16:34:19 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:999829a9d4afcf962e82a0bd2b5ff1fee6f7ed1a2a69740bb332b45314b64ddb`  
		Last Modified: Fri, 10 Jul 2026 16:34:21 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcad809299c8f5479a3e519c1e5f53bf48c1d670d72540deb6c40330cd1d1091`  
		Last Modified: Fri, 10 Jul 2026 16:34:21 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b8d1b43e4a1de94c665407106cf66ce11d3e0c1c9fb4efb5e551c94c95a90b8`  
		Last Modified: Fri, 10 Jul 2026 16:34:21 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:lts-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:3c18e76d1655c8ac6d9aa15a15c523e826457818a99a734ab6ccbd2c40e2c974
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.0 KB (27047 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5109881b143132e09d978bfd374d7c52f211e6e2d888c5771d507803ea0f7bf0`

```dockerfile
```

-	Layers:
	-	`sha256:bdad4dc9b0983dee805dec9df9826f1ca21401c30667ab4539d5405ee6735189`  
		Last Modified: Fri, 10 Jul 2026 16:34:19 GMT  
		Size: 27.0 KB (27047 bytes)  
		MIME: application/vnd.in-toto+json
