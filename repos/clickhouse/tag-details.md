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
$ docker pull clickhouse@sha256:badd3bb0d34055bfa521b7b71bbee92aa7ec0025a90f1a1a5ec49c5b8ee0ba90
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.3` - linux; amd64

```console
$ docker pull clickhouse@sha256:22a72c5daad2f6cf4ac34ddea56b996b0ccf1ac2b4d8d0089d6ed60a208359fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.3 MB (265290122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a7875e0123516071a9ff35846742e534aba8e4db7b7194d6ff1d61ea5ac67df`
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
# Fri, 24 Jul 2026 19:14:03 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 24 Jul 2026 19:14:03 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 24 Jul 2026 19:14:03 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 24 Jul 2026 19:14:03 GMT
ARG REPO_CHANNEL=stable
# Fri, 24 Jul 2026 19:14:03 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 24 Jul 2026 19:14:03 GMT
ARG VERSION=26.3.17.56
# Fri, 24 Jul 2026 19:14:03 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 24 Jul 2026 19:14:33 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.56 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 24 Jul 2026 19:14:33 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.56 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 24 Jul 2026 19:14:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.56 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 24 Jul 2026 19:14:34 GMT
ENV LANG=en_US.UTF-8
# Fri, 24 Jul 2026 19:14:34 GMT
ENV TZ=UTC
# Fri, 24 Jul 2026 19:14:35 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.56 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 24 Jul 2026 19:14:35 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 24 Jul 2026 19:14:35 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 24 Jul 2026 19:14:35 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 24 Jul 2026 19:14:35 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 24 Jul 2026 19:14:35 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 24 Jul 2026 19:14:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c46cdea8d8758037ce2a9d67ebd5620876d636d770148605aec925432bfeab72`  
		Last Modified: Fri, 24 Jul 2026 19:15:01 GMT  
		Size: 7.6 MB (7555466 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:086bad9cae51b016b4849070f0d6a536a53273d41b99923f5c3157db1b6eedac`  
		Last Modified: Fri, 24 Jul 2026 19:15:06 GMT  
		Size: 227.1 MB (227125724 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4fdc22f872c58722180ea3fb9889d932ed6dc5baf6be7950cf0eb65ad1c6441`  
		Last Modified: Fri, 24 Jul 2026 19:15:00 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08a8b8a7863d0377609e3a4da80d0374714e86ca141f4fec4bfd1bc36b32e377`  
		Last Modified: Fri, 24 Jul 2026 19:15:00 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e01f75dab53f4e13f530cdb2e805fb31442a82a8b8b362a6d6b119fbd9603b51`  
		Last Modified: Fri, 24 Jul 2026 19:15:01 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abae915ed478842491cb967bc18aa56344b692ccb863003c13847164e7809743`  
		Last Modified: Fri, 24 Jul 2026 19:15:02 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dd6214ce9c19cb760f1435a45e9effcfc6165be5e7740514e48420625221e90`  
		Last Modified: Fri, 24 Jul 2026 19:15:02 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3` - unknown; unknown

```console
$ docker pull clickhouse@sha256:3cfc0f5d44bc1b523f964c41715b85b7bdd1609fe974faf8438ec4ad0b7fd76b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.8 KB (26847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f54d9daabb48e9775ffb630c5e49a40a013a077c70e4cf906b2587a825fbbdbe`

```dockerfile
```

-	Layers:
	-	`sha256:38d922956ad6e447cfc8e79431ecb9205d7655e99246d020c2df3a039ccba475`  
		Last Modified: Fri, 24 Jul 2026 19:15:00 GMT  
		Size: 26.8 KB (26847 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.3` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:fbbcc0f7e30c2e43708e26eb5a2eadc7b03c8f87f1341fea312f254ffc49c908
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.7 MB (246726105 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:725de871e9dc2aa21da9cd7ea97357c4d661b3f5e7a5c1be45005246141d6651`
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
# Fri, 24 Jul 2026 19:13:57 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 24 Jul 2026 19:13:57 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 24 Jul 2026 19:13:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 24 Jul 2026 19:13:57 GMT
ARG REPO_CHANNEL=stable
# Fri, 24 Jul 2026 19:13:57 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 24 Jul 2026 19:13:57 GMT
ARG VERSION=26.3.17.56
# Fri, 24 Jul 2026 19:13:57 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 24 Jul 2026 19:14:25 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.56 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 24 Jul 2026 19:14:25 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.56 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 24 Jul 2026 19:14:27 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.56 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 24 Jul 2026 19:14:27 GMT
ENV LANG=en_US.UTF-8
# Fri, 24 Jul 2026 19:14:27 GMT
ENV TZ=UTC
# Fri, 24 Jul 2026 19:14:27 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.56 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 24 Jul 2026 19:14:27 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 24 Jul 2026 19:14:27 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 24 Jul 2026 19:14:27 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 24 Jul 2026 19:14:27 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 24 Jul 2026 19:14:27 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 24 Jul 2026 19:14:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0575cd3d3c3292f3d43d8d92fe378ac6808c000d4e081641f50e3c2dfc5d30da`  
		Last Modified: Fri, 24 Jul 2026 19:14:49 GMT  
		Size: 7.5 MB (7536658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:637c7bd4457de61ef831d42755a306b894c8d11f1ec791602f6269742aeffb4f`  
		Last Modified: Fri, 24 Jul 2026 19:14:54 GMT  
		Size: 210.7 MB (210706213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e197b85b6b3ec250e4b3def5210076f770cb9370e49279d37e27414aaeb55a41`  
		Last Modified: Fri, 24 Jul 2026 19:14:49 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21b88a570cecd0da71f4cae7b78246c9b0cb8fee8831e48fce13c1d36a14b1cb`  
		Last Modified: Fri, 24 Jul 2026 19:14:49 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f1bda088f7e1b9cccf04b7683734e513a1351d90b894c78c744a3596daec71a`  
		Last Modified: Fri, 24 Jul 2026 19:14:50 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e94321bbdd500082e3998178efc4b36b51753013736f75a90cf4befb63c1223a`  
		Last Modified: Fri, 24 Jul 2026 19:14:50 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ac8ee5ac849a6a4a6dcac5911243c540c0ec519b85686ff340d4e788ed52c02`  
		Last Modified: Fri, 24 Jul 2026 19:14:51 GMT  
		Size: 3.6 KB (3636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3` - unknown; unknown

```console
$ docker pull clickhouse@sha256:a112c8f4a999d2c0523b38318f1fce11a35807e65d2cad262edf865a2af19718
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.1 KB (27059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e98b62631839317fa936706190cf1629a1aee188f9774a3052221fed2bb8db5`

```dockerfile
```

-	Layers:
	-	`sha256:61203bcb7993a0302600f74d10bccd87a301fef194b6a655be37a4e7df1d55ce`  
		Last Modified: Fri, 24 Jul 2026 19:14:48 GMT  
		Size: 27.1 KB (27059 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.3-jammy`

```console
$ docker pull clickhouse@sha256:badd3bb0d34055bfa521b7b71bbee92aa7ec0025a90f1a1a5ec49c5b8ee0ba90
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.3-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:22a72c5daad2f6cf4ac34ddea56b996b0ccf1ac2b4d8d0089d6ed60a208359fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.3 MB (265290122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a7875e0123516071a9ff35846742e534aba8e4db7b7194d6ff1d61ea5ac67df`
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
# Fri, 24 Jul 2026 19:14:03 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 24 Jul 2026 19:14:03 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 24 Jul 2026 19:14:03 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 24 Jul 2026 19:14:03 GMT
ARG REPO_CHANNEL=stable
# Fri, 24 Jul 2026 19:14:03 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 24 Jul 2026 19:14:03 GMT
ARG VERSION=26.3.17.56
# Fri, 24 Jul 2026 19:14:03 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 24 Jul 2026 19:14:33 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.56 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 24 Jul 2026 19:14:33 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.56 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 24 Jul 2026 19:14:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.56 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 24 Jul 2026 19:14:34 GMT
ENV LANG=en_US.UTF-8
# Fri, 24 Jul 2026 19:14:34 GMT
ENV TZ=UTC
# Fri, 24 Jul 2026 19:14:35 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.56 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 24 Jul 2026 19:14:35 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 24 Jul 2026 19:14:35 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 24 Jul 2026 19:14:35 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 24 Jul 2026 19:14:35 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 24 Jul 2026 19:14:35 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 24 Jul 2026 19:14:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c46cdea8d8758037ce2a9d67ebd5620876d636d770148605aec925432bfeab72`  
		Last Modified: Fri, 24 Jul 2026 19:15:01 GMT  
		Size: 7.6 MB (7555466 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:086bad9cae51b016b4849070f0d6a536a53273d41b99923f5c3157db1b6eedac`  
		Last Modified: Fri, 24 Jul 2026 19:15:06 GMT  
		Size: 227.1 MB (227125724 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4fdc22f872c58722180ea3fb9889d932ed6dc5baf6be7950cf0eb65ad1c6441`  
		Last Modified: Fri, 24 Jul 2026 19:15:00 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08a8b8a7863d0377609e3a4da80d0374714e86ca141f4fec4bfd1bc36b32e377`  
		Last Modified: Fri, 24 Jul 2026 19:15:00 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e01f75dab53f4e13f530cdb2e805fb31442a82a8b8b362a6d6b119fbd9603b51`  
		Last Modified: Fri, 24 Jul 2026 19:15:01 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abae915ed478842491cb967bc18aa56344b692ccb863003c13847164e7809743`  
		Last Modified: Fri, 24 Jul 2026 19:15:02 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dd6214ce9c19cb760f1435a45e9effcfc6165be5e7740514e48420625221e90`  
		Last Modified: Fri, 24 Jul 2026 19:15:02 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:3cfc0f5d44bc1b523f964c41715b85b7bdd1609fe974faf8438ec4ad0b7fd76b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.8 KB (26847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f54d9daabb48e9775ffb630c5e49a40a013a077c70e4cf906b2587a825fbbdbe`

```dockerfile
```

-	Layers:
	-	`sha256:38d922956ad6e447cfc8e79431ecb9205d7655e99246d020c2df3a039ccba475`  
		Last Modified: Fri, 24 Jul 2026 19:15:00 GMT  
		Size: 26.8 KB (26847 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.3-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:fbbcc0f7e30c2e43708e26eb5a2eadc7b03c8f87f1341fea312f254ffc49c908
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.7 MB (246726105 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:725de871e9dc2aa21da9cd7ea97357c4d661b3f5e7a5c1be45005246141d6651`
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
# Fri, 24 Jul 2026 19:13:57 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 24 Jul 2026 19:13:57 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 24 Jul 2026 19:13:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 24 Jul 2026 19:13:57 GMT
ARG REPO_CHANNEL=stable
# Fri, 24 Jul 2026 19:13:57 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 24 Jul 2026 19:13:57 GMT
ARG VERSION=26.3.17.56
# Fri, 24 Jul 2026 19:13:57 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 24 Jul 2026 19:14:25 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.56 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 24 Jul 2026 19:14:25 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.56 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 24 Jul 2026 19:14:27 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.56 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 24 Jul 2026 19:14:27 GMT
ENV LANG=en_US.UTF-8
# Fri, 24 Jul 2026 19:14:27 GMT
ENV TZ=UTC
# Fri, 24 Jul 2026 19:14:27 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.56 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 24 Jul 2026 19:14:27 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 24 Jul 2026 19:14:27 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 24 Jul 2026 19:14:27 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 24 Jul 2026 19:14:27 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 24 Jul 2026 19:14:27 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 24 Jul 2026 19:14:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0575cd3d3c3292f3d43d8d92fe378ac6808c000d4e081641f50e3c2dfc5d30da`  
		Last Modified: Fri, 24 Jul 2026 19:14:49 GMT  
		Size: 7.5 MB (7536658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:637c7bd4457de61ef831d42755a306b894c8d11f1ec791602f6269742aeffb4f`  
		Last Modified: Fri, 24 Jul 2026 19:14:54 GMT  
		Size: 210.7 MB (210706213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e197b85b6b3ec250e4b3def5210076f770cb9370e49279d37e27414aaeb55a41`  
		Last Modified: Fri, 24 Jul 2026 19:14:49 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21b88a570cecd0da71f4cae7b78246c9b0cb8fee8831e48fce13c1d36a14b1cb`  
		Last Modified: Fri, 24 Jul 2026 19:14:49 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f1bda088f7e1b9cccf04b7683734e513a1351d90b894c78c744a3596daec71a`  
		Last Modified: Fri, 24 Jul 2026 19:14:50 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e94321bbdd500082e3998178efc4b36b51753013736f75a90cf4befb63c1223a`  
		Last Modified: Fri, 24 Jul 2026 19:14:50 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ac8ee5ac849a6a4a6dcac5911243c540c0ec519b85686ff340d4e788ed52c02`  
		Last Modified: Fri, 24 Jul 2026 19:14:51 GMT  
		Size: 3.6 KB (3636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:a112c8f4a999d2c0523b38318f1fce11a35807e65d2cad262edf865a2af19718
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.1 KB (27059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e98b62631839317fa936706190cf1629a1aee188f9774a3052221fed2bb8db5`

```dockerfile
```

-	Layers:
	-	`sha256:61203bcb7993a0302600f74d10bccd87a301fef194b6a655be37a4e7df1d55ce`  
		Last Modified: Fri, 24 Jul 2026 19:14:48 GMT  
		Size: 27.1 KB (27059 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.3.17`

```console
$ docker pull clickhouse@sha256:badd3bb0d34055bfa521b7b71bbee92aa7ec0025a90f1a1a5ec49c5b8ee0ba90
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.3.17` - linux; amd64

```console
$ docker pull clickhouse@sha256:22a72c5daad2f6cf4ac34ddea56b996b0ccf1ac2b4d8d0089d6ed60a208359fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.3 MB (265290122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a7875e0123516071a9ff35846742e534aba8e4db7b7194d6ff1d61ea5ac67df`
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
# Fri, 24 Jul 2026 19:14:03 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 24 Jul 2026 19:14:03 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 24 Jul 2026 19:14:03 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 24 Jul 2026 19:14:03 GMT
ARG REPO_CHANNEL=stable
# Fri, 24 Jul 2026 19:14:03 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 24 Jul 2026 19:14:03 GMT
ARG VERSION=26.3.17.56
# Fri, 24 Jul 2026 19:14:03 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 24 Jul 2026 19:14:33 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.56 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 24 Jul 2026 19:14:33 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.56 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 24 Jul 2026 19:14:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.56 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 24 Jul 2026 19:14:34 GMT
ENV LANG=en_US.UTF-8
# Fri, 24 Jul 2026 19:14:34 GMT
ENV TZ=UTC
# Fri, 24 Jul 2026 19:14:35 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.56 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 24 Jul 2026 19:14:35 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 24 Jul 2026 19:14:35 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 24 Jul 2026 19:14:35 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 24 Jul 2026 19:14:35 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 24 Jul 2026 19:14:35 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 24 Jul 2026 19:14:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c46cdea8d8758037ce2a9d67ebd5620876d636d770148605aec925432bfeab72`  
		Last Modified: Fri, 24 Jul 2026 19:15:01 GMT  
		Size: 7.6 MB (7555466 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:086bad9cae51b016b4849070f0d6a536a53273d41b99923f5c3157db1b6eedac`  
		Last Modified: Fri, 24 Jul 2026 19:15:06 GMT  
		Size: 227.1 MB (227125724 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4fdc22f872c58722180ea3fb9889d932ed6dc5baf6be7950cf0eb65ad1c6441`  
		Last Modified: Fri, 24 Jul 2026 19:15:00 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08a8b8a7863d0377609e3a4da80d0374714e86ca141f4fec4bfd1bc36b32e377`  
		Last Modified: Fri, 24 Jul 2026 19:15:00 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e01f75dab53f4e13f530cdb2e805fb31442a82a8b8b362a6d6b119fbd9603b51`  
		Last Modified: Fri, 24 Jul 2026 19:15:01 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abae915ed478842491cb967bc18aa56344b692ccb863003c13847164e7809743`  
		Last Modified: Fri, 24 Jul 2026 19:15:02 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dd6214ce9c19cb760f1435a45e9effcfc6165be5e7740514e48420625221e90`  
		Last Modified: Fri, 24 Jul 2026 19:15:02 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.17` - unknown; unknown

```console
$ docker pull clickhouse@sha256:3cfc0f5d44bc1b523f964c41715b85b7bdd1609fe974faf8438ec4ad0b7fd76b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.8 KB (26847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f54d9daabb48e9775ffb630c5e49a40a013a077c70e4cf906b2587a825fbbdbe`

```dockerfile
```

-	Layers:
	-	`sha256:38d922956ad6e447cfc8e79431ecb9205d7655e99246d020c2df3a039ccba475`  
		Last Modified: Fri, 24 Jul 2026 19:15:00 GMT  
		Size: 26.8 KB (26847 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.3.17` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:fbbcc0f7e30c2e43708e26eb5a2eadc7b03c8f87f1341fea312f254ffc49c908
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.7 MB (246726105 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:725de871e9dc2aa21da9cd7ea97357c4d661b3f5e7a5c1be45005246141d6651`
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
# Fri, 24 Jul 2026 19:13:57 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 24 Jul 2026 19:13:57 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 24 Jul 2026 19:13:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 24 Jul 2026 19:13:57 GMT
ARG REPO_CHANNEL=stable
# Fri, 24 Jul 2026 19:13:57 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 24 Jul 2026 19:13:57 GMT
ARG VERSION=26.3.17.56
# Fri, 24 Jul 2026 19:13:57 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 24 Jul 2026 19:14:25 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.56 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 24 Jul 2026 19:14:25 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.56 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 24 Jul 2026 19:14:27 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.56 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 24 Jul 2026 19:14:27 GMT
ENV LANG=en_US.UTF-8
# Fri, 24 Jul 2026 19:14:27 GMT
ENV TZ=UTC
# Fri, 24 Jul 2026 19:14:27 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.56 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 24 Jul 2026 19:14:27 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 24 Jul 2026 19:14:27 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 24 Jul 2026 19:14:27 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 24 Jul 2026 19:14:27 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 24 Jul 2026 19:14:27 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 24 Jul 2026 19:14:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0575cd3d3c3292f3d43d8d92fe378ac6808c000d4e081641f50e3c2dfc5d30da`  
		Last Modified: Fri, 24 Jul 2026 19:14:49 GMT  
		Size: 7.5 MB (7536658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:637c7bd4457de61ef831d42755a306b894c8d11f1ec791602f6269742aeffb4f`  
		Last Modified: Fri, 24 Jul 2026 19:14:54 GMT  
		Size: 210.7 MB (210706213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e197b85b6b3ec250e4b3def5210076f770cb9370e49279d37e27414aaeb55a41`  
		Last Modified: Fri, 24 Jul 2026 19:14:49 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21b88a570cecd0da71f4cae7b78246c9b0cb8fee8831e48fce13c1d36a14b1cb`  
		Last Modified: Fri, 24 Jul 2026 19:14:49 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f1bda088f7e1b9cccf04b7683734e513a1351d90b894c78c744a3596daec71a`  
		Last Modified: Fri, 24 Jul 2026 19:14:50 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e94321bbdd500082e3998178efc4b36b51753013736f75a90cf4befb63c1223a`  
		Last Modified: Fri, 24 Jul 2026 19:14:50 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ac8ee5ac849a6a4a6dcac5911243c540c0ec519b85686ff340d4e788ed52c02`  
		Last Modified: Fri, 24 Jul 2026 19:14:51 GMT  
		Size: 3.6 KB (3636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.17` - unknown; unknown

```console
$ docker pull clickhouse@sha256:a112c8f4a999d2c0523b38318f1fce11a35807e65d2cad262edf865a2af19718
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.1 KB (27059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e98b62631839317fa936706190cf1629a1aee188f9774a3052221fed2bb8db5`

```dockerfile
```

-	Layers:
	-	`sha256:61203bcb7993a0302600f74d10bccd87a301fef194b6a655be37a4e7df1d55ce`  
		Last Modified: Fri, 24 Jul 2026 19:14:48 GMT  
		Size: 27.1 KB (27059 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.3.17-jammy`

```console
$ docker pull clickhouse@sha256:badd3bb0d34055bfa521b7b71bbee92aa7ec0025a90f1a1a5ec49c5b8ee0ba90
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.3.17-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:22a72c5daad2f6cf4ac34ddea56b996b0ccf1ac2b4d8d0089d6ed60a208359fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.3 MB (265290122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a7875e0123516071a9ff35846742e534aba8e4db7b7194d6ff1d61ea5ac67df`
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
# Fri, 24 Jul 2026 19:14:03 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 24 Jul 2026 19:14:03 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 24 Jul 2026 19:14:03 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 24 Jul 2026 19:14:03 GMT
ARG REPO_CHANNEL=stable
# Fri, 24 Jul 2026 19:14:03 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 24 Jul 2026 19:14:03 GMT
ARG VERSION=26.3.17.56
# Fri, 24 Jul 2026 19:14:03 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 24 Jul 2026 19:14:33 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.56 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 24 Jul 2026 19:14:33 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.56 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 24 Jul 2026 19:14:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.56 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 24 Jul 2026 19:14:34 GMT
ENV LANG=en_US.UTF-8
# Fri, 24 Jul 2026 19:14:34 GMT
ENV TZ=UTC
# Fri, 24 Jul 2026 19:14:35 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.56 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 24 Jul 2026 19:14:35 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 24 Jul 2026 19:14:35 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 24 Jul 2026 19:14:35 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 24 Jul 2026 19:14:35 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 24 Jul 2026 19:14:35 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 24 Jul 2026 19:14:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c46cdea8d8758037ce2a9d67ebd5620876d636d770148605aec925432bfeab72`  
		Last Modified: Fri, 24 Jul 2026 19:15:01 GMT  
		Size: 7.6 MB (7555466 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:086bad9cae51b016b4849070f0d6a536a53273d41b99923f5c3157db1b6eedac`  
		Last Modified: Fri, 24 Jul 2026 19:15:06 GMT  
		Size: 227.1 MB (227125724 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4fdc22f872c58722180ea3fb9889d932ed6dc5baf6be7950cf0eb65ad1c6441`  
		Last Modified: Fri, 24 Jul 2026 19:15:00 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08a8b8a7863d0377609e3a4da80d0374714e86ca141f4fec4bfd1bc36b32e377`  
		Last Modified: Fri, 24 Jul 2026 19:15:00 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e01f75dab53f4e13f530cdb2e805fb31442a82a8b8b362a6d6b119fbd9603b51`  
		Last Modified: Fri, 24 Jul 2026 19:15:01 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abae915ed478842491cb967bc18aa56344b692ccb863003c13847164e7809743`  
		Last Modified: Fri, 24 Jul 2026 19:15:02 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dd6214ce9c19cb760f1435a45e9effcfc6165be5e7740514e48420625221e90`  
		Last Modified: Fri, 24 Jul 2026 19:15:02 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.17-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:3cfc0f5d44bc1b523f964c41715b85b7bdd1609fe974faf8438ec4ad0b7fd76b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.8 KB (26847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f54d9daabb48e9775ffb630c5e49a40a013a077c70e4cf906b2587a825fbbdbe`

```dockerfile
```

-	Layers:
	-	`sha256:38d922956ad6e447cfc8e79431ecb9205d7655e99246d020c2df3a039ccba475`  
		Last Modified: Fri, 24 Jul 2026 19:15:00 GMT  
		Size: 26.8 KB (26847 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.3.17-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:fbbcc0f7e30c2e43708e26eb5a2eadc7b03c8f87f1341fea312f254ffc49c908
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.7 MB (246726105 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:725de871e9dc2aa21da9cd7ea97357c4d661b3f5e7a5c1be45005246141d6651`
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
# Fri, 24 Jul 2026 19:13:57 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 24 Jul 2026 19:13:57 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 24 Jul 2026 19:13:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 24 Jul 2026 19:13:57 GMT
ARG REPO_CHANNEL=stable
# Fri, 24 Jul 2026 19:13:57 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 24 Jul 2026 19:13:57 GMT
ARG VERSION=26.3.17.56
# Fri, 24 Jul 2026 19:13:57 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 24 Jul 2026 19:14:25 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.56 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 24 Jul 2026 19:14:25 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.56 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 24 Jul 2026 19:14:27 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.56 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 24 Jul 2026 19:14:27 GMT
ENV LANG=en_US.UTF-8
# Fri, 24 Jul 2026 19:14:27 GMT
ENV TZ=UTC
# Fri, 24 Jul 2026 19:14:27 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.56 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 24 Jul 2026 19:14:27 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 24 Jul 2026 19:14:27 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 24 Jul 2026 19:14:27 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 24 Jul 2026 19:14:27 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 24 Jul 2026 19:14:27 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 24 Jul 2026 19:14:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0575cd3d3c3292f3d43d8d92fe378ac6808c000d4e081641f50e3c2dfc5d30da`  
		Last Modified: Fri, 24 Jul 2026 19:14:49 GMT  
		Size: 7.5 MB (7536658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:637c7bd4457de61ef831d42755a306b894c8d11f1ec791602f6269742aeffb4f`  
		Last Modified: Fri, 24 Jul 2026 19:14:54 GMT  
		Size: 210.7 MB (210706213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e197b85b6b3ec250e4b3def5210076f770cb9370e49279d37e27414aaeb55a41`  
		Last Modified: Fri, 24 Jul 2026 19:14:49 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21b88a570cecd0da71f4cae7b78246c9b0cb8fee8831e48fce13c1d36a14b1cb`  
		Last Modified: Fri, 24 Jul 2026 19:14:49 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f1bda088f7e1b9cccf04b7683734e513a1351d90b894c78c744a3596daec71a`  
		Last Modified: Fri, 24 Jul 2026 19:14:50 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e94321bbdd500082e3998178efc4b36b51753013736f75a90cf4befb63c1223a`  
		Last Modified: Fri, 24 Jul 2026 19:14:50 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ac8ee5ac849a6a4a6dcac5911243c540c0ec519b85686ff340d4e788ed52c02`  
		Last Modified: Fri, 24 Jul 2026 19:14:51 GMT  
		Size: 3.6 KB (3636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.17-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:a112c8f4a999d2c0523b38318f1fce11a35807e65d2cad262edf865a2af19718
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.1 KB (27059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e98b62631839317fa936706190cf1629a1aee188f9774a3052221fed2bb8db5`

```dockerfile
```

-	Layers:
	-	`sha256:61203bcb7993a0302600f74d10bccd87a301fef194b6a655be37a4e7df1d55ce`  
		Last Modified: Fri, 24 Jul 2026 19:14:48 GMT  
		Size: 27.1 KB (27059 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.3.17.56`

```console
$ docker pull clickhouse@sha256:badd3bb0d34055bfa521b7b71bbee92aa7ec0025a90f1a1a5ec49c5b8ee0ba90
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.3.17.56` - linux; amd64

```console
$ docker pull clickhouse@sha256:22a72c5daad2f6cf4ac34ddea56b996b0ccf1ac2b4d8d0089d6ed60a208359fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.3 MB (265290122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a7875e0123516071a9ff35846742e534aba8e4db7b7194d6ff1d61ea5ac67df`
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
# Fri, 24 Jul 2026 19:14:03 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 24 Jul 2026 19:14:03 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 24 Jul 2026 19:14:03 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 24 Jul 2026 19:14:03 GMT
ARG REPO_CHANNEL=stable
# Fri, 24 Jul 2026 19:14:03 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 24 Jul 2026 19:14:03 GMT
ARG VERSION=26.3.17.56
# Fri, 24 Jul 2026 19:14:03 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 24 Jul 2026 19:14:33 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.56 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 24 Jul 2026 19:14:33 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.56 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 24 Jul 2026 19:14:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.56 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 24 Jul 2026 19:14:34 GMT
ENV LANG=en_US.UTF-8
# Fri, 24 Jul 2026 19:14:34 GMT
ENV TZ=UTC
# Fri, 24 Jul 2026 19:14:35 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.56 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 24 Jul 2026 19:14:35 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 24 Jul 2026 19:14:35 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 24 Jul 2026 19:14:35 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 24 Jul 2026 19:14:35 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 24 Jul 2026 19:14:35 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 24 Jul 2026 19:14:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c46cdea8d8758037ce2a9d67ebd5620876d636d770148605aec925432bfeab72`  
		Last Modified: Fri, 24 Jul 2026 19:15:01 GMT  
		Size: 7.6 MB (7555466 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:086bad9cae51b016b4849070f0d6a536a53273d41b99923f5c3157db1b6eedac`  
		Last Modified: Fri, 24 Jul 2026 19:15:06 GMT  
		Size: 227.1 MB (227125724 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4fdc22f872c58722180ea3fb9889d932ed6dc5baf6be7950cf0eb65ad1c6441`  
		Last Modified: Fri, 24 Jul 2026 19:15:00 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08a8b8a7863d0377609e3a4da80d0374714e86ca141f4fec4bfd1bc36b32e377`  
		Last Modified: Fri, 24 Jul 2026 19:15:00 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e01f75dab53f4e13f530cdb2e805fb31442a82a8b8b362a6d6b119fbd9603b51`  
		Last Modified: Fri, 24 Jul 2026 19:15:01 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abae915ed478842491cb967bc18aa56344b692ccb863003c13847164e7809743`  
		Last Modified: Fri, 24 Jul 2026 19:15:02 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dd6214ce9c19cb760f1435a45e9effcfc6165be5e7740514e48420625221e90`  
		Last Modified: Fri, 24 Jul 2026 19:15:02 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.17.56` - unknown; unknown

```console
$ docker pull clickhouse@sha256:3cfc0f5d44bc1b523f964c41715b85b7bdd1609fe974faf8438ec4ad0b7fd76b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.8 KB (26847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f54d9daabb48e9775ffb630c5e49a40a013a077c70e4cf906b2587a825fbbdbe`

```dockerfile
```

-	Layers:
	-	`sha256:38d922956ad6e447cfc8e79431ecb9205d7655e99246d020c2df3a039ccba475`  
		Last Modified: Fri, 24 Jul 2026 19:15:00 GMT  
		Size: 26.8 KB (26847 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.3.17.56` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:fbbcc0f7e30c2e43708e26eb5a2eadc7b03c8f87f1341fea312f254ffc49c908
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.7 MB (246726105 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:725de871e9dc2aa21da9cd7ea97357c4d661b3f5e7a5c1be45005246141d6651`
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
# Fri, 24 Jul 2026 19:13:57 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 24 Jul 2026 19:13:57 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 24 Jul 2026 19:13:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 24 Jul 2026 19:13:57 GMT
ARG REPO_CHANNEL=stable
# Fri, 24 Jul 2026 19:13:57 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 24 Jul 2026 19:13:57 GMT
ARG VERSION=26.3.17.56
# Fri, 24 Jul 2026 19:13:57 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 24 Jul 2026 19:14:25 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.56 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 24 Jul 2026 19:14:25 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.56 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 24 Jul 2026 19:14:27 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.56 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 24 Jul 2026 19:14:27 GMT
ENV LANG=en_US.UTF-8
# Fri, 24 Jul 2026 19:14:27 GMT
ENV TZ=UTC
# Fri, 24 Jul 2026 19:14:27 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.56 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 24 Jul 2026 19:14:27 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 24 Jul 2026 19:14:27 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 24 Jul 2026 19:14:27 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 24 Jul 2026 19:14:27 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 24 Jul 2026 19:14:27 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 24 Jul 2026 19:14:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0575cd3d3c3292f3d43d8d92fe378ac6808c000d4e081641f50e3c2dfc5d30da`  
		Last Modified: Fri, 24 Jul 2026 19:14:49 GMT  
		Size: 7.5 MB (7536658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:637c7bd4457de61ef831d42755a306b894c8d11f1ec791602f6269742aeffb4f`  
		Last Modified: Fri, 24 Jul 2026 19:14:54 GMT  
		Size: 210.7 MB (210706213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e197b85b6b3ec250e4b3def5210076f770cb9370e49279d37e27414aaeb55a41`  
		Last Modified: Fri, 24 Jul 2026 19:14:49 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21b88a570cecd0da71f4cae7b78246c9b0cb8fee8831e48fce13c1d36a14b1cb`  
		Last Modified: Fri, 24 Jul 2026 19:14:49 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f1bda088f7e1b9cccf04b7683734e513a1351d90b894c78c744a3596daec71a`  
		Last Modified: Fri, 24 Jul 2026 19:14:50 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e94321bbdd500082e3998178efc4b36b51753013736f75a90cf4befb63c1223a`  
		Last Modified: Fri, 24 Jul 2026 19:14:50 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ac8ee5ac849a6a4a6dcac5911243c540c0ec519b85686ff340d4e788ed52c02`  
		Last Modified: Fri, 24 Jul 2026 19:14:51 GMT  
		Size: 3.6 KB (3636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.17.56` - unknown; unknown

```console
$ docker pull clickhouse@sha256:a112c8f4a999d2c0523b38318f1fce11a35807e65d2cad262edf865a2af19718
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.1 KB (27059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e98b62631839317fa936706190cf1629a1aee188f9774a3052221fed2bb8db5`

```dockerfile
```

-	Layers:
	-	`sha256:61203bcb7993a0302600f74d10bccd87a301fef194b6a655be37a4e7df1d55ce`  
		Last Modified: Fri, 24 Jul 2026 19:14:48 GMT  
		Size: 27.1 KB (27059 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.3.17.56-jammy`

```console
$ docker pull clickhouse@sha256:badd3bb0d34055bfa521b7b71bbee92aa7ec0025a90f1a1a5ec49c5b8ee0ba90
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.3.17.56-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:22a72c5daad2f6cf4ac34ddea56b996b0ccf1ac2b4d8d0089d6ed60a208359fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.3 MB (265290122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a7875e0123516071a9ff35846742e534aba8e4db7b7194d6ff1d61ea5ac67df`
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
# Fri, 24 Jul 2026 19:14:03 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 24 Jul 2026 19:14:03 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 24 Jul 2026 19:14:03 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 24 Jul 2026 19:14:03 GMT
ARG REPO_CHANNEL=stable
# Fri, 24 Jul 2026 19:14:03 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 24 Jul 2026 19:14:03 GMT
ARG VERSION=26.3.17.56
# Fri, 24 Jul 2026 19:14:03 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 24 Jul 2026 19:14:33 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.56 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 24 Jul 2026 19:14:33 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.56 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 24 Jul 2026 19:14:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.56 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 24 Jul 2026 19:14:34 GMT
ENV LANG=en_US.UTF-8
# Fri, 24 Jul 2026 19:14:34 GMT
ENV TZ=UTC
# Fri, 24 Jul 2026 19:14:35 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.56 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 24 Jul 2026 19:14:35 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 24 Jul 2026 19:14:35 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 24 Jul 2026 19:14:35 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 24 Jul 2026 19:14:35 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 24 Jul 2026 19:14:35 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 24 Jul 2026 19:14:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c46cdea8d8758037ce2a9d67ebd5620876d636d770148605aec925432bfeab72`  
		Last Modified: Fri, 24 Jul 2026 19:15:01 GMT  
		Size: 7.6 MB (7555466 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:086bad9cae51b016b4849070f0d6a536a53273d41b99923f5c3157db1b6eedac`  
		Last Modified: Fri, 24 Jul 2026 19:15:06 GMT  
		Size: 227.1 MB (227125724 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4fdc22f872c58722180ea3fb9889d932ed6dc5baf6be7950cf0eb65ad1c6441`  
		Last Modified: Fri, 24 Jul 2026 19:15:00 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08a8b8a7863d0377609e3a4da80d0374714e86ca141f4fec4bfd1bc36b32e377`  
		Last Modified: Fri, 24 Jul 2026 19:15:00 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e01f75dab53f4e13f530cdb2e805fb31442a82a8b8b362a6d6b119fbd9603b51`  
		Last Modified: Fri, 24 Jul 2026 19:15:01 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abae915ed478842491cb967bc18aa56344b692ccb863003c13847164e7809743`  
		Last Modified: Fri, 24 Jul 2026 19:15:02 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dd6214ce9c19cb760f1435a45e9effcfc6165be5e7740514e48420625221e90`  
		Last Modified: Fri, 24 Jul 2026 19:15:02 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.17.56-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:3cfc0f5d44bc1b523f964c41715b85b7bdd1609fe974faf8438ec4ad0b7fd76b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.8 KB (26847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f54d9daabb48e9775ffb630c5e49a40a013a077c70e4cf906b2587a825fbbdbe`

```dockerfile
```

-	Layers:
	-	`sha256:38d922956ad6e447cfc8e79431ecb9205d7655e99246d020c2df3a039ccba475`  
		Last Modified: Fri, 24 Jul 2026 19:15:00 GMT  
		Size: 26.8 KB (26847 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.3.17.56-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:fbbcc0f7e30c2e43708e26eb5a2eadc7b03c8f87f1341fea312f254ffc49c908
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.7 MB (246726105 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:725de871e9dc2aa21da9cd7ea97357c4d661b3f5e7a5c1be45005246141d6651`
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
# Fri, 24 Jul 2026 19:13:57 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 24 Jul 2026 19:13:57 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 24 Jul 2026 19:13:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 24 Jul 2026 19:13:57 GMT
ARG REPO_CHANNEL=stable
# Fri, 24 Jul 2026 19:13:57 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 24 Jul 2026 19:13:57 GMT
ARG VERSION=26.3.17.56
# Fri, 24 Jul 2026 19:13:57 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 24 Jul 2026 19:14:25 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.56 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 24 Jul 2026 19:14:25 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.56 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 24 Jul 2026 19:14:27 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.56 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 24 Jul 2026 19:14:27 GMT
ENV LANG=en_US.UTF-8
# Fri, 24 Jul 2026 19:14:27 GMT
ENV TZ=UTC
# Fri, 24 Jul 2026 19:14:27 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.56 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 24 Jul 2026 19:14:27 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 24 Jul 2026 19:14:27 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 24 Jul 2026 19:14:27 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 24 Jul 2026 19:14:27 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 24 Jul 2026 19:14:27 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 24 Jul 2026 19:14:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0575cd3d3c3292f3d43d8d92fe378ac6808c000d4e081641f50e3c2dfc5d30da`  
		Last Modified: Fri, 24 Jul 2026 19:14:49 GMT  
		Size: 7.5 MB (7536658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:637c7bd4457de61ef831d42755a306b894c8d11f1ec791602f6269742aeffb4f`  
		Last Modified: Fri, 24 Jul 2026 19:14:54 GMT  
		Size: 210.7 MB (210706213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e197b85b6b3ec250e4b3def5210076f770cb9370e49279d37e27414aaeb55a41`  
		Last Modified: Fri, 24 Jul 2026 19:14:49 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21b88a570cecd0da71f4cae7b78246c9b0cb8fee8831e48fce13c1d36a14b1cb`  
		Last Modified: Fri, 24 Jul 2026 19:14:49 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f1bda088f7e1b9cccf04b7683734e513a1351d90b894c78c744a3596daec71a`  
		Last Modified: Fri, 24 Jul 2026 19:14:50 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e94321bbdd500082e3998178efc4b36b51753013736f75a90cf4befb63c1223a`  
		Last Modified: Fri, 24 Jul 2026 19:14:50 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ac8ee5ac849a6a4a6dcac5911243c540c0ec519b85686ff340d4e788ed52c02`  
		Last Modified: Fri, 24 Jul 2026 19:14:51 GMT  
		Size: 3.6 KB (3636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.17.56-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:a112c8f4a999d2c0523b38318f1fce11a35807e65d2cad262edf865a2af19718
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.1 KB (27059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e98b62631839317fa936706190cf1629a1aee188f9774a3052221fed2bb8db5`

```dockerfile
```

-	Layers:
	-	`sha256:61203bcb7993a0302600f74d10bccd87a301fef194b6a655be37a4e7df1d55ce`  
		Last Modified: Fri, 24 Jul 2026 19:14:48 GMT  
		Size: 27.1 KB (27059 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.5`

```console
$ docker pull clickhouse@sha256:039346676a55ca70ae6ea859bcbd0e45c14df26f2cd2d0f9bdccd94bd3339904
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.5` - linux; amd64

```console
$ docker pull clickhouse@sha256:53c99e9aadc66e70eacf83684c3f599882a7b15df089830d2d1e6985aaa7b649
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.4 MB (261441563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:420aa95a155f683faa27b7db9ebd4aa859dbc465556a18277b62f53a2c52c2ac`
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
# Fri, 24 Jul 2026 19:13:58 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 24 Jul 2026 19:13:58 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 24 Jul 2026 19:13:58 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 24 Jul 2026 19:13:58 GMT
ARG REPO_CHANNEL=stable
# Fri, 24 Jul 2026 19:13:58 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 24 Jul 2026 19:13:58 GMT
ARG VERSION=26.5.6.64
# Fri, 24 Jul 2026 19:13:58 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 24 Jul 2026 19:14:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 24 Jul 2026 19:14:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 24 Jul 2026 19:14:27 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 24 Jul 2026 19:14:27 GMT
ENV LANG=en_US.UTF-8
# Fri, 24 Jul 2026 19:14:27 GMT
ENV TZ=UTC
# Fri, 24 Jul 2026 19:14:28 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 24 Jul 2026 19:14:28 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 24 Jul 2026 19:14:28 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 24 Jul 2026 19:14:28 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 24 Jul 2026 19:14:28 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 24 Jul 2026 19:14:28 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 24 Jul 2026 19:14:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f679fb29ad7ec4e140c5d81379d27bfcd3335d9ccb38c13d097a3e1865c0b49`  
		Last Modified: Fri, 24 Jul 2026 19:14:54 GMT  
		Size: 7.6 MB (7555528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71d6430f91af807c247ecca0e4a222ef26d9c21b1e9137abfa61aa19f5acb0f7`  
		Last Modified: Fri, 24 Jul 2026 19:14:58 GMT  
		Size: 223.3 MB (223277103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55756054e44fda8b1f739492702f03c206e10c11840558ecbc8cb037ac8462d5`  
		Last Modified: Fri, 24 Jul 2026 19:14:53 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c20f7316bae9db4cd6a9a7ce5fff13c5b3ba0fbba909eb8550c7ee17a2ebcb7a`  
		Last Modified: Fri, 24 Jul 2026 19:14:53 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82987ece82e98d97f5e9dc90937566ba48409090f4edcf99ff21a27001006b44`  
		Last Modified: Fri, 24 Jul 2026 19:14:55 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:655d3a4771c6100087c90acfa6e7ce055266717573de1c291242eacdf87a49b6`  
		Last Modified: Fri, 24 Jul 2026 19:14:55 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b7347d2dcf73686b74aee11889e5b28cbc13904bb6c42be6a1ba5977cf59e83`  
		Last Modified: Fri, 24 Jul 2026 19:14:55 GMT  
		Size: 3.6 KB (3639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.5` - unknown; unknown

```console
$ docker pull clickhouse@sha256:ace22fd77da0f51c7566c278a6fb88af3cbf385ca627599785a67bae027e6e27
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88fce77ec235239b377024566516a2add5cb53ca4cab5a7a848c5a65a2554c9e`

```dockerfile
```

-	Layers:
	-	`sha256:45837cb3ec23dba409853b2b428ec652d2d24505d819991c3e31e2f4811a3e73`  
		Last Modified: Fri, 24 Jul 2026 19:14:53 GMT  
		Size: 26.2 KB (26220 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.5` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:126ee248fa157edab4d83aa1a7f869204afe1966deee37be8e48039c4b5b3b8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.1 MB (247123787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3495c520c74ca9010539dd3711bc4371a12128d940941e30ab57dd275539836`
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
# Fri, 24 Jul 2026 19:13:51 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 24 Jul 2026 19:13:51 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 24 Jul 2026 19:13:51 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 24 Jul 2026 19:13:51 GMT
ARG REPO_CHANNEL=stable
# Fri, 24 Jul 2026 19:13:51 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 24 Jul 2026 19:13:51 GMT
ARG VERSION=26.5.6.64
# Fri, 24 Jul 2026 19:13:51 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 24 Jul 2026 19:14:22 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 24 Jul 2026 19:14:23 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 24 Jul 2026 19:14:24 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 24 Jul 2026 19:14:24 GMT
ENV LANG=en_US.UTF-8
# Fri, 24 Jul 2026 19:14:24 GMT
ENV TZ=UTC
# Fri, 24 Jul 2026 19:14:24 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 24 Jul 2026 19:14:24 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 24 Jul 2026 19:14:24 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 24 Jul 2026 19:14:24 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 24 Jul 2026 19:14:24 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 24 Jul 2026 19:14:24 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 24 Jul 2026 19:14:24 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea796d64c2ece9d2f5f7f08221af0037e475d904b840074a587047bbe9070c74`  
		Last Modified: Fri, 24 Jul 2026 19:14:46 GMT  
		Size: 7.5 MB (7536552 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb2a2daaf527f0c8d845733ea24e465a441499a3987c6f2d25e6342f0950a07b`  
		Last Modified: Fri, 24 Jul 2026 19:14:51 GMT  
		Size: 211.1 MB (211103998 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7ce81dde3c20d414ae2235b05de9133e728b4b868895206297f829f3ece84e2`  
		Last Modified: Fri, 24 Jul 2026 19:14:46 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98b44b43e7019555a56e9bbb921cb05fe30ea26e6fb0c32695bff2f6695bde5b`  
		Last Modified: Fri, 24 Jul 2026 19:14:46 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ba8b484f32689bd66a10a59f8df12f7113e8c914279b5dfb5714b8bb6215b95`  
		Last Modified: Fri, 24 Jul 2026 19:14:47 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5742a9f590013260085c6524a5786e3b51996fdd4b47e82160ace8eb418e9ad`  
		Last Modified: Fri, 24 Jul 2026 19:14:48 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6847c9f4dd552b8d8937cf971a690951337372661eadba3352427ae00b280196`  
		Last Modified: Fri, 24 Jul 2026 19:14:48 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.5` - unknown; unknown

```console
$ docker pull clickhouse@sha256:05e9f8dddff87ebbc5f16e2d923d8b725d4fe0a7d252464887f39a4b6f695857
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:819c417b8c41c1c13eb9cb0cbcec63dc498e1f787fc09113aea011cd86cb5b20`

```dockerfile
```

-	Layers:
	-	`sha256:156efb9ee18b931b0f370b88f31dc647b15661ad2cff77bf375e4d4d6679958c`  
		Last Modified: Fri, 24 Jul 2026 19:14:46 GMT  
		Size: 26.4 KB (26408 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.5-jammy`

```console
$ docker pull clickhouse@sha256:039346676a55ca70ae6ea859bcbd0e45c14df26f2cd2d0f9bdccd94bd3339904
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.5-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:53c99e9aadc66e70eacf83684c3f599882a7b15df089830d2d1e6985aaa7b649
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.4 MB (261441563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:420aa95a155f683faa27b7db9ebd4aa859dbc465556a18277b62f53a2c52c2ac`
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
# Fri, 24 Jul 2026 19:13:58 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 24 Jul 2026 19:13:58 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 24 Jul 2026 19:13:58 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 24 Jul 2026 19:13:58 GMT
ARG REPO_CHANNEL=stable
# Fri, 24 Jul 2026 19:13:58 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 24 Jul 2026 19:13:58 GMT
ARG VERSION=26.5.6.64
# Fri, 24 Jul 2026 19:13:58 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 24 Jul 2026 19:14:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 24 Jul 2026 19:14:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 24 Jul 2026 19:14:27 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 24 Jul 2026 19:14:27 GMT
ENV LANG=en_US.UTF-8
# Fri, 24 Jul 2026 19:14:27 GMT
ENV TZ=UTC
# Fri, 24 Jul 2026 19:14:28 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 24 Jul 2026 19:14:28 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 24 Jul 2026 19:14:28 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 24 Jul 2026 19:14:28 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 24 Jul 2026 19:14:28 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 24 Jul 2026 19:14:28 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 24 Jul 2026 19:14:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f679fb29ad7ec4e140c5d81379d27bfcd3335d9ccb38c13d097a3e1865c0b49`  
		Last Modified: Fri, 24 Jul 2026 19:14:54 GMT  
		Size: 7.6 MB (7555528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71d6430f91af807c247ecca0e4a222ef26d9c21b1e9137abfa61aa19f5acb0f7`  
		Last Modified: Fri, 24 Jul 2026 19:14:58 GMT  
		Size: 223.3 MB (223277103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55756054e44fda8b1f739492702f03c206e10c11840558ecbc8cb037ac8462d5`  
		Last Modified: Fri, 24 Jul 2026 19:14:53 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c20f7316bae9db4cd6a9a7ce5fff13c5b3ba0fbba909eb8550c7ee17a2ebcb7a`  
		Last Modified: Fri, 24 Jul 2026 19:14:53 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82987ece82e98d97f5e9dc90937566ba48409090f4edcf99ff21a27001006b44`  
		Last Modified: Fri, 24 Jul 2026 19:14:55 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:655d3a4771c6100087c90acfa6e7ce055266717573de1c291242eacdf87a49b6`  
		Last Modified: Fri, 24 Jul 2026 19:14:55 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b7347d2dcf73686b74aee11889e5b28cbc13904bb6c42be6a1ba5977cf59e83`  
		Last Modified: Fri, 24 Jul 2026 19:14:55 GMT  
		Size: 3.6 KB (3639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.5-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:ace22fd77da0f51c7566c278a6fb88af3cbf385ca627599785a67bae027e6e27
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88fce77ec235239b377024566516a2add5cb53ca4cab5a7a848c5a65a2554c9e`

```dockerfile
```

-	Layers:
	-	`sha256:45837cb3ec23dba409853b2b428ec652d2d24505d819991c3e31e2f4811a3e73`  
		Last Modified: Fri, 24 Jul 2026 19:14:53 GMT  
		Size: 26.2 KB (26220 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.5-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:126ee248fa157edab4d83aa1a7f869204afe1966deee37be8e48039c4b5b3b8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.1 MB (247123787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3495c520c74ca9010539dd3711bc4371a12128d940941e30ab57dd275539836`
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
# Fri, 24 Jul 2026 19:13:51 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 24 Jul 2026 19:13:51 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 24 Jul 2026 19:13:51 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 24 Jul 2026 19:13:51 GMT
ARG REPO_CHANNEL=stable
# Fri, 24 Jul 2026 19:13:51 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 24 Jul 2026 19:13:51 GMT
ARG VERSION=26.5.6.64
# Fri, 24 Jul 2026 19:13:51 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 24 Jul 2026 19:14:22 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 24 Jul 2026 19:14:23 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 24 Jul 2026 19:14:24 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 24 Jul 2026 19:14:24 GMT
ENV LANG=en_US.UTF-8
# Fri, 24 Jul 2026 19:14:24 GMT
ENV TZ=UTC
# Fri, 24 Jul 2026 19:14:24 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 24 Jul 2026 19:14:24 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 24 Jul 2026 19:14:24 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 24 Jul 2026 19:14:24 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 24 Jul 2026 19:14:24 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 24 Jul 2026 19:14:24 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 24 Jul 2026 19:14:24 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea796d64c2ece9d2f5f7f08221af0037e475d904b840074a587047bbe9070c74`  
		Last Modified: Fri, 24 Jul 2026 19:14:46 GMT  
		Size: 7.5 MB (7536552 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb2a2daaf527f0c8d845733ea24e465a441499a3987c6f2d25e6342f0950a07b`  
		Last Modified: Fri, 24 Jul 2026 19:14:51 GMT  
		Size: 211.1 MB (211103998 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7ce81dde3c20d414ae2235b05de9133e728b4b868895206297f829f3ece84e2`  
		Last Modified: Fri, 24 Jul 2026 19:14:46 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98b44b43e7019555a56e9bbb921cb05fe30ea26e6fb0c32695bff2f6695bde5b`  
		Last Modified: Fri, 24 Jul 2026 19:14:46 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ba8b484f32689bd66a10a59f8df12f7113e8c914279b5dfb5714b8bb6215b95`  
		Last Modified: Fri, 24 Jul 2026 19:14:47 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5742a9f590013260085c6524a5786e3b51996fdd4b47e82160ace8eb418e9ad`  
		Last Modified: Fri, 24 Jul 2026 19:14:48 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6847c9f4dd552b8d8937cf971a690951337372661eadba3352427ae00b280196`  
		Last Modified: Fri, 24 Jul 2026 19:14:48 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.5-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:05e9f8dddff87ebbc5f16e2d923d8b725d4fe0a7d252464887f39a4b6f695857
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:819c417b8c41c1c13eb9cb0cbcec63dc498e1f787fc09113aea011cd86cb5b20`

```dockerfile
```

-	Layers:
	-	`sha256:156efb9ee18b931b0f370b88f31dc647b15661ad2cff77bf375e4d4d6679958c`  
		Last Modified: Fri, 24 Jul 2026 19:14:46 GMT  
		Size: 26.4 KB (26408 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.5.6`

```console
$ docker pull clickhouse@sha256:039346676a55ca70ae6ea859bcbd0e45c14df26f2cd2d0f9bdccd94bd3339904
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.5.6` - linux; amd64

```console
$ docker pull clickhouse@sha256:53c99e9aadc66e70eacf83684c3f599882a7b15df089830d2d1e6985aaa7b649
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.4 MB (261441563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:420aa95a155f683faa27b7db9ebd4aa859dbc465556a18277b62f53a2c52c2ac`
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
# Fri, 24 Jul 2026 19:13:58 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 24 Jul 2026 19:13:58 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 24 Jul 2026 19:13:58 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 24 Jul 2026 19:13:58 GMT
ARG REPO_CHANNEL=stable
# Fri, 24 Jul 2026 19:13:58 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 24 Jul 2026 19:13:58 GMT
ARG VERSION=26.5.6.64
# Fri, 24 Jul 2026 19:13:58 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 24 Jul 2026 19:14:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 24 Jul 2026 19:14:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 24 Jul 2026 19:14:27 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 24 Jul 2026 19:14:27 GMT
ENV LANG=en_US.UTF-8
# Fri, 24 Jul 2026 19:14:27 GMT
ENV TZ=UTC
# Fri, 24 Jul 2026 19:14:28 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 24 Jul 2026 19:14:28 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 24 Jul 2026 19:14:28 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 24 Jul 2026 19:14:28 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 24 Jul 2026 19:14:28 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 24 Jul 2026 19:14:28 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 24 Jul 2026 19:14:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f679fb29ad7ec4e140c5d81379d27bfcd3335d9ccb38c13d097a3e1865c0b49`  
		Last Modified: Fri, 24 Jul 2026 19:14:54 GMT  
		Size: 7.6 MB (7555528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71d6430f91af807c247ecca0e4a222ef26d9c21b1e9137abfa61aa19f5acb0f7`  
		Last Modified: Fri, 24 Jul 2026 19:14:58 GMT  
		Size: 223.3 MB (223277103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55756054e44fda8b1f739492702f03c206e10c11840558ecbc8cb037ac8462d5`  
		Last Modified: Fri, 24 Jul 2026 19:14:53 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c20f7316bae9db4cd6a9a7ce5fff13c5b3ba0fbba909eb8550c7ee17a2ebcb7a`  
		Last Modified: Fri, 24 Jul 2026 19:14:53 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82987ece82e98d97f5e9dc90937566ba48409090f4edcf99ff21a27001006b44`  
		Last Modified: Fri, 24 Jul 2026 19:14:55 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:655d3a4771c6100087c90acfa6e7ce055266717573de1c291242eacdf87a49b6`  
		Last Modified: Fri, 24 Jul 2026 19:14:55 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b7347d2dcf73686b74aee11889e5b28cbc13904bb6c42be6a1ba5977cf59e83`  
		Last Modified: Fri, 24 Jul 2026 19:14:55 GMT  
		Size: 3.6 KB (3639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.5.6` - unknown; unknown

```console
$ docker pull clickhouse@sha256:ace22fd77da0f51c7566c278a6fb88af3cbf385ca627599785a67bae027e6e27
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88fce77ec235239b377024566516a2add5cb53ca4cab5a7a848c5a65a2554c9e`

```dockerfile
```

-	Layers:
	-	`sha256:45837cb3ec23dba409853b2b428ec652d2d24505d819991c3e31e2f4811a3e73`  
		Last Modified: Fri, 24 Jul 2026 19:14:53 GMT  
		Size: 26.2 KB (26220 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.5.6` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:126ee248fa157edab4d83aa1a7f869204afe1966deee37be8e48039c4b5b3b8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.1 MB (247123787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3495c520c74ca9010539dd3711bc4371a12128d940941e30ab57dd275539836`
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
# Fri, 24 Jul 2026 19:13:51 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 24 Jul 2026 19:13:51 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 24 Jul 2026 19:13:51 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 24 Jul 2026 19:13:51 GMT
ARG REPO_CHANNEL=stable
# Fri, 24 Jul 2026 19:13:51 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 24 Jul 2026 19:13:51 GMT
ARG VERSION=26.5.6.64
# Fri, 24 Jul 2026 19:13:51 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 24 Jul 2026 19:14:22 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 24 Jul 2026 19:14:23 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 24 Jul 2026 19:14:24 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 24 Jul 2026 19:14:24 GMT
ENV LANG=en_US.UTF-8
# Fri, 24 Jul 2026 19:14:24 GMT
ENV TZ=UTC
# Fri, 24 Jul 2026 19:14:24 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 24 Jul 2026 19:14:24 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 24 Jul 2026 19:14:24 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 24 Jul 2026 19:14:24 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 24 Jul 2026 19:14:24 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 24 Jul 2026 19:14:24 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 24 Jul 2026 19:14:24 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea796d64c2ece9d2f5f7f08221af0037e475d904b840074a587047bbe9070c74`  
		Last Modified: Fri, 24 Jul 2026 19:14:46 GMT  
		Size: 7.5 MB (7536552 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb2a2daaf527f0c8d845733ea24e465a441499a3987c6f2d25e6342f0950a07b`  
		Last Modified: Fri, 24 Jul 2026 19:14:51 GMT  
		Size: 211.1 MB (211103998 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7ce81dde3c20d414ae2235b05de9133e728b4b868895206297f829f3ece84e2`  
		Last Modified: Fri, 24 Jul 2026 19:14:46 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98b44b43e7019555a56e9bbb921cb05fe30ea26e6fb0c32695bff2f6695bde5b`  
		Last Modified: Fri, 24 Jul 2026 19:14:46 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ba8b484f32689bd66a10a59f8df12f7113e8c914279b5dfb5714b8bb6215b95`  
		Last Modified: Fri, 24 Jul 2026 19:14:47 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5742a9f590013260085c6524a5786e3b51996fdd4b47e82160ace8eb418e9ad`  
		Last Modified: Fri, 24 Jul 2026 19:14:48 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6847c9f4dd552b8d8937cf971a690951337372661eadba3352427ae00b280196`  
		Last Modified: Fri, 24 Jul 2026 19:14:48 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.5.6` - unknown; unknown

```console
$ docker pull clickhouse@sha256:05e9f8dddff87ebbc5f16e2d923d8b725d4fe0a7d252464887f39a4b6f695857
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:819c417b8c41c1c13eb9cb0cbcec63dc498e1f787fc09113aea011cd86cb5b20`

```dockerfile
```

-	Layers:
	-	`sha256:156efb9ee18b931b0f370b88f31dc647b15661ad2cff77bf375e4d4d6679958c`  
		Last Modified: Fri, 24 Jul 2026 19:14:46 GMT  
		Size: 26.4 KB (26408 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.5.6-jammy`

```console
$ docker pull clickhouse@sha256:039346676a55ca70ae6ea859bcbd0e45c14df26f2cd2d0f9bdccd94bd3339904
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.5.6-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:53c99e9aadc66e70eacf83684c3f599882a7b15df089830d2d1e6985aaa7b649
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.4 MB (261441563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:420aa95a155f683faa27b7db9ebd4aa859dbc465556a18277b62f53a2c52c2ac`
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
# Fri, 24 Jul 2026 19:13:58 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 24 Jul 2026 19:13:58 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 24 Jul 2026 19:13:58 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 24 Jul 2026 19:13:58 GMT
ARG REPO_CHANNEL=stable
# Fri, 24 Jul 2026 19:13:58 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 24 Jul 2026 19:13:58 GMT
ARG VERSION=26.5.6.64
# Fri, 24 Jul 2026 19:13:58 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 24 Jul 2026 19:14:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 24 Jul 2026 19:14:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 24 Jul 2026 19:14:27 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 24 Jul 2026 19:14:27 GMT
ENV LANG=en_US.UTF-8
# Fri, 24 Jul 2026 19:14:27 GMT
ENV TZ=UTC
# Fri, 24 Jul 2026 19:14:28 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 24 Jul 2026 19:14:28 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 24 Jul 2026 19:14:28 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 24 Jul 2026 19:14:28 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 24 Jul 2026 19:14:28 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 24 Jul 2026 19:14:28 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 24 Jul 2026 19:14:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f679fb29ad7ec4e140c5d81379d27bfcd3335d9ccb38c13d097a3e1865c0b49`  
		Last Modified: Fri, 24 Jul 2026 19:14:54 GMT  
		Size: 7.6 MB (7555528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71d6430f91af807c247ecca0e4a222ef26d9c21b1e9137abfa61aa19f5acb0f7`  
		Last Modified: Fri, 24 Jul 2026 19:14:58 GMT  
		Size: 223.3 MB (223277103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55756054e44fda8b1f739492702f03c206e10c11840558ecbc8cb037ac8462d5`  
		Last Modified: Fri, 24 Jul 2026 19:14:53 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c20f7316bae9db4cd6a9a7ce5fff13c5b3ba0fbba909eb8550c7ee17a2ebcb7a`  
		Last Modified: Fri, 24 Jul 2026 19:14:53 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82987ece82e98d97f5e9dc90937566ba48409090f4edcf99ff21a27001006b44`  
		Last Modified: Fri, 24 Jul 2026 19:14:55 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:655d3a4771c6100087c90acfa6e7ce055266717573de1c291242eacdf87a49b6`  
		Last Modified: Fri, 24 Jul 2026 19:14:55 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b7347d2dcf73686b74aee11889e5b28cbc13904bb6c42be6a1ba5977cf59e83`  
		Last Modified: Fri, 24 Jul 2026 19:14:55 GMT  
		Size: 3.6 KB (3639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.5.6-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:ace22fd77da0f51c7566c278a6fb88af3cbf385ca627599785a67bae027e6e27
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88fce77ec235239b377024566516a2add5cb53ca4cab5a7a848c5a65a2554c9e`

```dockerfile
```

-	Layers:
	-	`sha256:45837cb3ec23dba409853b2b428ec652d2d24505d819991c3e31e2f4811a3e73`  
		Last Modified: Fri, 24 Jul 2026 19:14:53 GMT  
		Size: 26.2 KB (26220 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.5.6-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:126ee248fa157edab4d83aa1a7f869204afe1966deee37be8e48039c4b5b3b8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.1 MB (247123787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3495c520c74ca9010539dd3711bc4371a12128d940941e30ab57dd275539836`
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
# Fri, 24 Jul 2026 19:13:51 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 24 Jul 2026 19:13:51 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 24 Jul 2026 19:13:51 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 24 Jul 2026 19:13:51 GMT
ARG REPO_CHANNEL=stable
# Fri, 24 Jul 2026 19:13:51 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 24 Jul 2026 19:13:51 GMT
ARG VERSION=26.5.6.64
# Fri, 24 Jul 2026 19:13:51 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 24 Jul 2026 19:14:22 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 24 Jul 2026 19:14:23 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 24 Jul 2026 19:14:24 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 24 Jul 2026 19:14:24 GMT
ENV LANG=en_US.UTF-8
# Fri, 24 Jul 2026 19:14:24 GMT
ENV TZ=UTC
# Fri, 24 Jul 2026 19:14:24 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 24 Jul 2026 19:14:24 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 24 Jul 2026 19:14:24 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 24 Jul 2026 19:14:24 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 24 Jul 2026 19:14:24 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 24 Jul 2026 19:14:24 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 24 Jul 2026 19:14:24 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea796d64c2ece9d2f5f7f08221af0037e475d904b840074a587047bbe9070c74`  
		Last Modified: Fri, 24 Jul 2026 19:14:46 GMT  
		Size: 7.5 MB (7536552 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb2a2daaf527f0c8d845733ea24e465a441499a3987c6f2d25e6342f0950a07b`  
		Last Modified: Fri, 24 Jul 2026 19:14:51 GMT  
		Size: 211.1 MB (211103998 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7ce81dde3c20d414ae2235b05de9133e728b4b868895206297f829f3ece84e2`  
		Last Modified: Fri, 24 Jul 2026 19:14:46 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98b44b43e7019555a56e9bbb921cb05fe30ea26e6fb0c32695bff2f6695bde5b`  
		Last Modified: Fri, 24 Jul 2026 19:14:46 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ba8b484f32689bd66a10a59f8df12f7113e8c914279b5dfb5714b8bb6215b95`  
		Last Modified: Fri, 24 Jul 2026 19:14:47 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5742a9f590013260085c6524a5786e3b51996fdd4b47e82160ace8eb418e9ad`  
		Last Modified: Fri, 24 Jul 2026 19:14:48 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6847c9f4dd552b8d8937cf971a690951337372661eadba3352427ae00b280196`  
		Last Modified: Fri, 24 Jul 2026 19:14:48 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.5.6-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:05e9f8dddff87ebbc5f16e2d923d8b725d4fe0a7d252464887f39a4b6f695857
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:819c417b8c41c1c13eb9cb0cbcec63dc498e1f787fc09113aea011cd86cb5b20`

```dockerfile
```

-	Layers:
	-	`sha256:156efb9ee18b931b0f370b88f31dc647b15661ad2cff77bf375e4d4d6679958c`  
		Last Modified: Fri, 24 Jul 2026 19:14:46 GMT  
		Size: 26.4 KB (26408 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.5.6.64`

```console
$ docker pull clickhouse@sha256:039346676a55ca70ae6ea859bcbd0e45c14df26f2cd2d0f9bdccd94bd3339904
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.5.6.64` - linux; amd64

```console
$ docker pull clickhouse@sha256:53c99e9aadc66e70eacf83684c3f599882a7b15df089830d2d1e6985aaa7b649
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.4 MB (261441563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:420aa95a155f683faa27b7db9ebd4aa859dbc465556a18277b62f53a2c52c2ac`
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
# Fri, 24 Jul 2026 19:13:58 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 24 Jul 2026 19:13:58 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 24 Jul 2026 19:13:58 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 24 Jul 2026 19:13:58 GMT
ARG REPO_CHANNEL=stable
# Fri, 24 Jul 2026 19:13:58 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 24 Jul 2026 19:13:58 GMT
ARG VERSION=26.5.6.64
# Fri, 24 Jul 2026 19:13:58 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 24 Jul 2026 19:14:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 24 Jul 2026 19:14:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 24 Jul 2026 19:14:27 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 24 Jul 2026 19:14:27 GMT
ENV LANG=en_US.UTF-8
# Fri, 24 Jul 2026 19:14:27 GMT
ENV TZ=UTC
# Fri, 24 Jul 2026 19:14:28 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 24 Jul 2026 19:14:28 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 24 Jul 2026 19:14:28 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 24 Jul 2026 19:14:28 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 24 Jul 2026 19:14:28 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 24 Jul 2026 19:14:28 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 24 Jul 2026 19:14:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f679fb29ad7ec4e140c5d81379d27bfcd3335d9ccb38c13d097a3e1865c0b49`  
		Last Modified: Fri, 24 Jul 2026 19:14:54 GMT  
		Size: 7.6 MB (7555528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71d6430f91af807c247ecca0e4a222ef26d9c21b1e9137abfa61aa19f5acb0f7`  
		Last Modified: Fri, 24 Jul 2026 19:14:58 GMT  
		Size: 223.3 MB (223277103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55756054e44fda8b1f739492702f03c206e10c11840558ecbc8cb037ac8462d5`  
		Last Modified: Fri, 24 Jul 2026 19:14:53 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c20f7316bae9db4cd6a9a7ce5fff13c5b3ba0fbba909eb8550c7ee17a2ebcb7a`  
		Last Modified: Fri, 24 Jul 2026 19:14:53 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82987ece82e98d97f5e9dc90937566ba48409090f4edcf99ff21a27001006b44`  
		Last Modified: Fri, 24 Jul 2026 19:14:55 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:655d3a4771c6100087c90acfa6e7ce055266717573de1c291242eacdf87a49b6`  
		Last Modified: Fri, 24 Jul 2026 19:14:55 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b7347d2dcf73686b74aee11889e5b28cbc13904bb6c42be6a1ba5977cf59e83`  
		Last Modified: Fri, 24 Jul 2026 19:14:55 GMT  
		Size: 3.6 KB (3639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.5.6.64` - unknown; unknown

```console
$ docker pull clickhouse@sha256:ace22fd77da0f51c7566c278a6fb88af3cbf385ca627599785a67bae027e6e27
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88fce77ec235239b377024566516a2add5cb53ca4cab5a7a848c5a65a2554c9e`

```dockerfile
```

-	Layers:
	-	`sha256:45837cb3ec23dba409853b2b428ec652d2d24505d819991c3e31e2f4811a3e73`  
		Last Modified: Fri, 24 Jul 2026 19:14:53 GMT  
		Size: 26.2 KB (26220 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.5.6.64` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:126ee248fa157edab4d83aa1a7f869204afe1966deee37be8e48039c4b5b3b8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.1 MB (247123787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3495c520c74ca9010539dd3711bc4371a12128d940941e30ab57dd275539836`
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
# Fri, 24 Jul 2026 19:13:51 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 24 Jul 2026 19:13:51 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 24 Jul 2026 19:13:51 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 24 Jul 2026 19:13:51 GMT
ARG REPO_CHANNEL=stable
# Fri, 24 Jul 2026 19:13:51 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 24 Jul 2026 19:13:51 GMT
ARG VERSION=26.5.6.64
# Fri, 24 Jul 2026 19:13:51 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 24 Jul 2026 19:14:22 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 24 Jul 2026 19:14:23 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 24 Jul 2026 19:14:24 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 24 Jul 2026 19:14:24 GMT
ENV LANG=en_US.UTF-8
# Fri, 24 Jul 2026 19:14:24 GMT
ENV TZ=UTC
# Fri, 24 Jul 2026 19:14:24 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 24 Jul 2026 19:14:24 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 24 Jul 2026 19:14:24 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 24 Jul 2026 19:14:24 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 24 Jul 2026 19:14:24 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 24 Jul 2026 19:14:24 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 24 Jul 2026 19:14:24 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea796d64c2ece9d2f5f7f08221af0037e475d904b840074a587047bbe9070c74`  
		Last Modified: Fri, 24 Jul 2026 19:14:46 GMT  
		Size: 7.5 MB (7536552 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb2a2daaf527f0c8d845733ea24e465a441499a3987c6f2d25e6342f0950a07b`  
		Last Modified: Fri, 24 Jul 2026 19:14:51 GMT  
		Size: 211.1 MB (211103998 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7ce81dde3c20d414ae2235b05de9133e728b4b868895206297f829f3ece84e2`  
		Last Modified: Fri, 24 Jul 2026 19:14:46 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98b44b43e7019555a56e9bbb921cb05fe30ea26e6fb0c32695bff2f6695bde5b`  
		Last Modified: Fri, 24 Jul 2026 19:14:46 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ba8b484f32689bd66a10a59f8df12f7113e8c914279b5dfb5714b8bb6215b95`  
		Last Modified: Fri, 24 Jul 2026 19:14:47 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5742a9f590013260085c6524a5786e3b51996fdd4b47e82160ace8eb418e9ad`  
		Last Modified: Fri, 24 Jul 2026 19:14:48 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6847c9f4dd552b8d8937cf971a690951337372661eadba3352427ae00b280196`  
		Last Modified: Fri, 24 Jul 2026 19:14:48 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.5.6.64` - unknown; unknown

```console
$ docker pull clickhouse@sha256:05e9f8dddff87ebbc5f16e2d923d8b725d4fe0a7d252464887f39a4b6f695857
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:819c417b8c41c1c13eb9cb0cbcec63dc498e1f787fc09113aea011cd86cb5b20`

```dockerfile
```

-	Layers:
	-	`sha256:156efb9ee18b931b0f370b88f31dc647b15661ad2cff77bf375e4d4d6679958c`  
		Last Modified: Fri, 24 Jul 2026 19:14:46 GMT  
		Size: 26.4 KB (26408 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.5.6.64-jammy`

```console
$ docker pull clickhouse@sha256:039346676a55ca70ae6ea859bcbd0e45c14df26f2cd2d0f9bdccd94bd3339904
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.5.6.64-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:53c99e9aadc66e70eacf83684c3f599882a7b15df089830d2d1e6985aaa7b649
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.4 MB (261441563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:420aa95a155f683faa27b7db9ebd4aa859dbc465556a18277b62f53a2c52c2ac`
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
# Fri, 24 Jul 2026 19:13:58 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 24 Jul 2026 19:13:58 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 24 Jul 2026 19:13:58 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 24 Jul 2026 19:13:58 GMT
ARG REPO_CHANNEL=stable
# Fri, 24 Jul 2026 19:13:58 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 24 Jul 2026 19:13:58 GMT
ARG VERSION=26.5.6.64
# Fri, 24 Jul 2026 19:13:58 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 24 Jul 2026 19:14:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 24 Jul 2026 19:14:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 24 Jul 2026 19:14:27 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 24 Jul 2026 19:14:27 GMT
ENV LANG=en_US.UTF-8
# Fri, 24 Jul 2026 19:14:27 GMT
ENV TZ=UTC
# Fri, 24 Jul 2026 19:14:28 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 24 Jul 2026 19:14:28 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 24 Jul 2026 19:14:28 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 24 Jul 2026 19:14:28 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 24 Jul 2026 19:14:28 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 24 Jul 2026 19:14:28 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 24 Jul 2026 19:14:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f679fb29ad7ec4e140c5d81379d27bfcd3335d9ccb38c13d097a3e1865c0b49`  
		Last Modified: Fri, 24 Jul 2026 19:14:54 GMT  
		Size: 7.6 MB (7555528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71d6430f91af807c247ecca0e4a222ef26d9c21b1e9137abfa61aa19f5acb0f7`  
		Last Modified: Fri, 24 Jul 2026 19:14:58 GMT  
		Size: 223.3 MB (223277103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55756054e44fda8b1f739492702f03c206e10c11840558ecbc8cb037ac8462d5`  
		Last Modified: Fri, 24 Jul 2026 19:14:53 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c20f7316bae9db4cd6a9a7ce5fff13c5b3ba0fbba909eb8550c7ee17a2ebcb7a`  
		Last Modified: Fri, 24 Jul 2026 19:14:53 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82987ece82e98d97f5e9dc90937566ba48409090f4edcf99ff21a27001006b44`  
		Last Modified: Fri, 24 Jul 2026 19:14:55 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:655d3a4771c6100087c90acfa6e7ce055266717573de1c291242eacdf87a49b6`  
		Last Modified: Fri, 24 Jul 2026 19:14:55 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b7347d2dcf73686b74aee11889e5b28cbc13904bb6c42be6a1ba5977cf59e83`  
		Last Modified: Fri, 24 Jul 2026 19:14:55 GMT  
		Size: 3.6 KB (3639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.5.6.64-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:ace22fd77da0f51c7566c278a6fb88af3cbf385ca627599785a67bae027e6e27
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88fce77ec235239b377024566516a2add5cb53ca4cab5a7a848c5a65a2554c9e`

```dockerfile
```

-	Layers:
	-	`sha256:45837cb3ec23dba409853b2b428ec652d2d24505d819991c3e31e2f4811a3e73`  
		Last Modified: Fri, 24 Jul 2026 19:14:53 GMT  
		Size: 26.2 KB (26220 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.5.6.64-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:126ee248fa157edab4d83aa1a7f869204afe1966deee37be8e48039c4b5b3b8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.1 MB (247123787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3495c520c74ca9010539dd3711bc4371a12128d940941e30ab57dd275539836`
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
# Fri, 24 Jul 2026 19:13:51 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 24 Jul 2026 19:13:51 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 24 Jul 2026 19:13:51 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 24 Jul 2026 19:13:51 GMT
ARG REPO_CHANNEL=stable
# Fri, 24 Jul 2026 19:13:51 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 24 Jul 2026 19:13:51 GMT
ARG VERSION=26.5.6.64
# Fri, 24 Jul 2026 19:13:51 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 24 Jul 2026 19:14:22 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 24 Jul 2026 19:14:23 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 24 Jul 2026 19:14:24 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 24 Jul 2026 19:14:24 GMT
ENV LANG=en_US.UTF-8
# Fri, 24 Jul 2026 19:14:24 GMT
ENV TZ=UTC
# Fri, 24 Jul 2026 19:14:24 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 24 Jul 2026 19:14:24 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 24 Jul 2026 19:14:24 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 24 Jul 2026 19:14:24 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 24 Jul 2026 19:14:24 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 24 Jul 2026 19:14:24 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 24 Jul 2026 19:14:24 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea796d64c2ece9d2f5f7f08221af0037e475d904b840074a587047bbe9070c74`  
		Last Modified: Fri, 24 Jul 2026 19:14:46 GMT  
		Size: 7.5 MB (7536552 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb2a2daaf527f0c8d845733ea24e465a441499a3987c6f2d25e6342f0950a07b`  
		Last Modified: Fri, 24 Jul 2026 19:14:51 GMT  
		Size: 211.1 MB (211103998 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7ce81dde3c20d414ae2235b05de9133e728b4b868895206297f829f3ece84e2`  
		Last Modified: Fri, 24 Jul 2026 19:14:46 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98b44b43e7019555a56e9bbb921cb05fe30ea26e6fb0c32695bff2f6695bde5b`  
		Last Modified: Fri, 24 Jul 2026 19:14:46 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ba8b484f32689bd66a10a59f8df12f7113e8c914279b5dfb5714b8bb6215b95`  
		Last Modified: Fri, 24 Jul 2026 19:14:47 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5742a9f590013260085c6524a5786e3b51996fdd4b47e82160ace8eb418e9ad`  
		Last Modified: Fri, 24 Jul 2026 19:14:48 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6847c9f4dd552b8d8937cf971a690951337372661eadba3352427ae00b280196`  
		Last Modified: Fri, 24 Jul 2026 19:14:48 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.5.6.64-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:05e9f8dddff87ebbc5f16e2d923d8b725d4fe0a7d252464887f39a4b6f695857
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:819c417b8c41c1c13eb9cb0cbcec63dc498e1f787fc09113aea011cd86cb5b20`

```dockerfile
```

-	Layers:
	-	`sha256:156efb9ee18b931b0f370b88f31dc647b15661ad2cff77bf375e4d4d6679958c`  
		Last Modified: Fri, 24 Jul 2026 19:14:46 GMT  
		Size: 26.4 KB (26408 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.6`

```console
$ docker pull clickhouse@sha256:631c99c928f5058c3aa4a5577e1128d938ff6dfe26efc78f87469170a7b95424
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.6` - linux; amd64

```console
$ docker pull clickhouse@sha256:de2cc5e92d076cb5026cf728bc0ce8214a387b428e7bfa38895b70aadd8e44f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.7 MB (276739499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:745b2480593fd56b1cd82654fff0f745c9ab33d1ed326321f238dead65820bfc`
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
# Fri, 24 Jul 2026 19:13:45 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 24 Jul 2026 19:13:45 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 24 Jul 2026 19:13:45 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 24 Jul 2026 19:13:45 GMT
ARG REPO_CHANNEL=stable
# Fri, 24 Jul 2026 19:13:45 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 24 Jul 2026 19:13:45 GMT
ARG VERSION=26.6.2.81
# Fri, 24 Jul 2026 19:13:45 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 24 Jul 2026 19:14:12 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.81 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 24 Jul 2026 19:14:13 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.81 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 24 Jul 2026 19:14:14 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.81 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 24 Jul 2026 19:14:14 GMT
ENV LANG=en_US.UTF-8
# Fri, 24 Jul 2026 19:14:14 GMT
ENV TZ=UTC
# Fri, 24 Jul 2026 19:14:14 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.81 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 24 Jul 2026 19:14:14 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 24 Jul 2026 19:14:14 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 24 Jul 2026 19:14:14 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 24 Jul 2026 19:14:14 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 24 Jul 2026 19:14:14 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 24 Jul 2026 19:14:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:808018f51f86c53fde6bd7ae8cbb938544edde0c242eb9bbb9d6ef53ed8bd64e`  
		Last Modified: Fri, 24 Jul 2026 19:14:40 GMT  
		Size: 7.6 MB (7555502 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09a4de8c8bb48599be7156e39495997bbcdd5f06a39edff71dbbdf098dee1053`  
		Last Modified: Fri, 24 Jul 2026 19:14:45 GMT  
		Size: 238.6 MB (238575061 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a87a45cd6b49df8e67d61f5028c60f7317844fa84cc648cc710eb46882754840`  
		Last Modified: Fri, 24 Jul 2026 19:14:39 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:238486462dedb59c149b23d31b1f8b9a703300e58c70e646d2248519f77c498f`  
		Last Modified: Fri, 24 Jul 2026 19:14:40 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e2aee5d464b95502a1889881b889aced5817feb85d49b330a99ce70fcfced69`  
		Last Modified: Fri, 24 Jul 2026 19:14:41 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b1b2b8705d304c578142f7dac1fdbb734862d94d680cb9e277f34dd3a9ca632`  
		Last Modified: Fri, 24 Jul 2026 19:14:41 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94dce9fa1a2d613376f2a617aa74bce96c75dba0dd2c67b0f3ab19425657c430`  
		Last Modified: Fri, 24 Jul 2026 19:14:41 GMT  
		Size: 3.6 KB (3639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.6` - unknown; unknown

```console
$ docker pull clickhouse@sha256:c0d2b4b3c94406ba36f857b7432866181ee3113eccc0e907a2ad6ac2deac826d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f52723d5a621284c3221e88c4b37f99d414ce8421280d82044e7da6f58b130a`

```dockerfile
```

-	Layers:
	-	`sha256:75fffb79031f810079c316c3dfd9a3d7f0cfbf998b053b068d9dbfabe0b2d1b5`  
		Last Modified: Fri, 24 Jul 2026 19:14:39 GMT  
		Size: 26.2 KB (26219 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.6` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:5dc1b2c96497bc1f268d7236a28b1f750fbdcba95231c5cecfcfa2ff694d3a8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.2 MB (257180197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a493fd0c6952fb747e2037ed7e896846b9526d8e9fbf19fcc286a3a3c43630f7`
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
# Fri, 24 Jul 2026 19:13:38 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 24 Jul 2026 19:13:38 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 24 Jul 2026 19:13:38 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 24 Jul 2026 19:13:38 GMT
ARG REPO_CHANNEL=stable
# Fri, 24 Jul 2026 19:13:38 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 24 Jul 2026 19:13:38 GMT
ARG VERSION=26.6.2.81
# Fri, 24 Jul 2026 19:13:38 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 24 Jul 2026 19:14:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.81 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 24 Jul 2026 19:14:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.81 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 24 Jul 2026 19:14:05 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.81 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 24 Jul 2026 19:14:05 GMT
ENV LANG=en_US.UTF-8
# Fri, 24 Jul 2026 19:14:05 GMT
ENV TZ=UTC
# Fri, 24 Jul 2026 19:14:06 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.81 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 24 Jul 2026 19:14:06 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 24 Jul 2026 19:14:06 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 24 Jul 2026 19:14:06 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 24 Jul 2026 19:14:06 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 24 Jul 2026 19:14:06 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 24 Jul 2026 19:14:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbd9614ecd5d99d48aadfbb287ff66a239b894f6a554d6f0d59fcc1c7206ffd4`  
		Last Modified: Fri, 24 Jul 2026 19:14:28 GMT  
		Size: 7.5 MB (7536628 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f95103dd96463acb81fb4d6bb115963d45ab714cf63160dc2a5aea5799ee9fa1`  
		Last Modified: Fri, 24 Jul 2026 19:14:32 GMT  
		Size: 221.2 MB (221160332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bc741ed351e8cfba42c2f5646ea252088119ae10c8ef76199b6d0a7fdb37470`  
		Last Modified: Fri, 24 Jul 2026 19:14:27 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dd4048441bc26ad5658c6c403a9340687bad59a878a9012b7dd1f2903753a58`  
		Last Modified: Fri, 24 Jul 2026 19:14:28 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3a4d11cc1db46205e72967f888ad3fd395ef28976265cfb2f393e566bcc1182`  
		Last Modified: Fri, 24 Jul 2026 19:14:29 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7937e02bdc1f988271024ee0b8326618dd9020b8490797d5a59a831c73a2f6b0`  
		Last Modified: Fri, 24 Jul 2026 19:14:29 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4e563301ac03e23c7e5368964f1e2bf546f28d38a06b49f3510685721108d37`  
		Last Modified: Fri, 24 Jul 2026 19:14:29 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.6` - unknown; unknown

```console
$ docker pull clickhouse@sha256:1661bc462f39905ae17ce373a6458ed93c3118be700160c29b9b617453631330
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b11a3696e8839f3f878218b112b091738ce6ee60f33a5e6c2fe42653c25f5c27`

```dockerfile
```

-	Layers:
	-	`sha256:df65c9762a2edf45e9465ff5b440a15dda79b0190d240c5f7978d0e854af39b9`  
		Last Modified: Fri, 24 Jul 2026 19:14:27 GMT  
		Size: 26.4 KB (26408 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.6-jammy`

```console
$ docker pull clickhouse@sha256:631c99c928f5058c3aa4a5577e1128d938ff6dfe26efc78f87469170a7b95424
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.6-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:de2cc5e92d076cb5026cf728bc0ce8214a387b428e7bfa38895b70aadd8e44f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.7 MB (276739499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:745b2480593fd56b1cd82654fff0f745c9ab33d1ed326321f238dead65820bfc`
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
# Fri, 24 Jul 2026 19:13:45 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 24 Jul 2026 19:13:45 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 24 Jul 2026 19:13:45 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 24 Jul 2026 19:13:45 GMT
ARG REPO_CHANNEL=stable
# Fri, 24 Jul 2026 19:13:45 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 24 Jul 2026 19:13:45 GMT
ARG VERSION=26.6.2.81
# Fri, 24 Jul 2026 19:13:45 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 24 Jul 2026 19:14:12 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.81 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 24 Jul 2026 19:14:13 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.81 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 24 Jul 2026 19:14:14 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.81 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 24 Jul 2026 19:14:14 GMT
ENV LANG=en_US.UTF-8
# Fri, 24 Jul 2026 19:14:14 GMT
ENV TZ=UTC
# Fri, 24 Jul 2026 19:14:14 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.81 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 24 Jul 2026 19:14:14 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 24 Jul 2026 19:14:14 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 24 Jul 2026 19:14:14 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 24 Jul 2026 19:14:14 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 24 Jul 2026 19:14:14 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 24 Jul 2026 19:14:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:808018f51f86c53fde6bd7ae8cbb938544edde0c242eb9bbb9d6ef53ed8bd64e`  
		Last Modified: Fri, 24 Jul 2026 19:14:40 GMT  
		Size: 7.6 MB (7555502 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09a4de8c8bb48599be7156e39495997bbcdd5f06a39edff71dbbdf098dee1053`  
		Last Modified: Fri, 24 Jul 2026 19:14:45 GMT  
		Size: 238.6 MB (238575061 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a87a45cd6b49df8e67d61f5028c60f7317844fa84cc648cc710eb46882754840`  
		Last Modified: Fri, 24 Jul 2026 19:14:39 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:238486462dedb59c149b23d31b1f8b9a703300e58c70e646d2248519f77c498f`  
		Last Modified: Fri, 24 Jul 2026 19:14:40 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e2aee5d464b95502a1889881b889aced5817feb85d49b330a99ce70fcfced69`  
		Last Modified: Fri, 24 Jul 2026 19:14:41 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b1b2b8705d304c578142f7dac1fdbb734862d94d680cb9e277f34dd3a9ca632`  
		Last Modified: Fri, 24 Jul 2026 19:14:41 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94dce9fa1a2d613376f2a617aa74bce96c75dba0dd2c67b0f3ab19425657c430`  
		Last Modified: Fri, 24 Jul 2026 19:14:41 GMT  
		Size: 3.6 KB (3639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.6-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:c0d2b4b3c94406ba36f857b7432866181ee3113eccc0e907a2ad6ac2deac826d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f52723d5a621284c3221e88c4b37f99d414ce8421280d82044e7da6f58b130a`

```dockerfile
```

-	Layers:
	-	`sha256:75fffb79031f810079c316c3dfd9a3d7f0cfbf998b053b068d9dbfabe0b2d1b5`  
		Last Modified: Fri, 24 Jul 2026 19:14:39 GMT  
		Size: 26.2 KB (26219 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.6-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:5dc1b2c96497bc1f268d7236a28b1f750fbdcba95231c5cecfcfa2ff694d3a8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.2 MB (257180197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a493fd0c6952fb747e2037ed7e896846b9526d8e9fbf19fcc286a3a3c43630f7`
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
# Fri, 24 Jul 2026 19:13:38 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 24 Jul 2026 19:13:38 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 24 Jul 2026 19:13:38 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 24 Jul 2026 19:13:38 GMT
ARG REPO_CHANNEL=stable
# Fri, 24 Jul 2026 19:13:38 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 24 Jul 2026 19:13:38 GMT
ARG VERSION=26.6.2.81
# Fri, 24 Jul 2026 19:13:38 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 24 Jul 2026 19:14:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.81 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 24 Jul 2026 19:14:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.81 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 24 Jul 2026 19:14:05 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.81 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 24 Jul 2026 19:14:05 GMT
ENV LANG=en_US.UTF-8
# Fri, 24 Jul 2026 19:14:05 GMT
ENV TZ=UTC
# Fri, 24 Jul 2026 19:14:06 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.81 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 24 Jul 2026 19:14:06 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 24 Jul 2026 19:14:06 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 24 Jul 2026 19:14:06 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 24 Jul 2026 19:14:06 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 24 Jul 2026 19:14:06 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 24 Jul 2026 19:14:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbd9614ecd5d99d48aadfbb287ff66a239b894f6a554d6f0d59fcc1c7206ffd4`  
		Last Modified: Fri, 24 Jul 2026 19:14:28 GMT  
		Size: 7.5 MB (7536628 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f95103dd96463acb81fb4d6bb115963d45ab714cf63160dc2a5aea5799ee9fa1`  
		Last Modified: Fri, 24 Jul 2026 19:14:32 GMT  
		Size: 221.2 MB (221160332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bc741ed351e8cfba42c2f5646ea252088119ae10c8ef76199b6d0a7fdb37470`  
		Last Modified: Fri, 24 Jul 2026 19:14:27 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dd4048441bc26ad5658c6c403a9340687bad59a878a9012b7dd1f2903753a58`  
		Last Modified: Fri, 24 Jul 2026 19:14:28 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3a4d11cc1db46205e72967f888ad3fd395ef28976265cfb2f393e566bcc1182`  
		Last Modified: Fri, 24 Jul 2026 19:14:29 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7937e02bdc1f988271024ee0b8326618dd9020b8490797d5a59a831c73a2f6b0`  
		Last Modified: Fri, 24 Jul 2026 19:14:29 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4e563301ac03e23c7e5368964f1e2bf546f28d38a06b49f3510685721108d37`  
		Last Modified: Fri, 24 Jul 2026 19:14:29 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.6-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:1661bc462f39905ae17ce373a6458ed93c3118be700160c29b9b617453631330
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b11a3696e8839f3f878218b112b091738ce6ee60f33a5e6c2fe42653c25f5c27`

```dockerfile
```

-	Layers:
	-	`sha256:df65c9762a2edf45e9465ff5b440a15dda79b0190d240c5f7978d0e854af39b9`  
		Last Modified: Fri, 24 Jul 2026 19:14:27 GMT  
		Size: 26.4 KB (26408 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.6.2`

```console
$ docker pull clickhouse@sha256:631c99c928f5058c3aa4a5577e1128d938ff6dfe26efc78f87469170a7b95424
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.6.2` - linux; amd64

```console
$ docker pull clickhouse@sha256:de2cc5e92d076cb5026cf728bc0ce8214a387b428e7bfa38895b70aadd8e44f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.7 MB (276739499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:745b2480593fd56b1cd82654fff0f745c9ab33d1ed326321f238dead65820bfc`
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
# Fri, 24 Jul 2026 19:13:45 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 24 Jul 2026 19:13:45 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 24 Jul 2026 19:13:45 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 24 Jul 2026 19:13:45 GMT
ARG REPO_CHANNEL=stable
# Fri, 24 Jul 2026 19:13:45 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 24 Jul 2026 19:13:45 GMT
ARG VERSION=26.6.2.81
# Fri, 24 Jul 2026 19:13:45 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 24 Jul 2026 19:14:12 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.81 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 24 Jul 2026 19:14:13 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.81 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 24 Jul 2026 19:14:14 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.81 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 24 Jul 2026 19:14:14 GMT
ENV LANG=en_US.UTF-8
# Fri, 24 Jul 2026 19:14:14 GMT
ENV TZ=UTC
# Fri, 24 Jul 2026 19:14:14 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.81 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 24 Jul 2026 19:14:14 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 24 Jul 2026 19:14:14 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 24 Jul 2026 19:14:14 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 24 Jul 2026 19:14:14 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 24 Jul 2026 19:14:14 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 24 Jul 2026 19:14:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:808018f51f86c53fde6bd7ae8cbb938544edde0c242eb9bbb9d6ef53ed8bd64e`  
		Last Modified: Fri, 24 Jul 2026 19:14:40 GMT  
		Size: 7.6 MB (7555502 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09a4de8c8bb48599be7156e39495997bbcdd5f06a39edff71dbbdf098dee1053`  
		Last Modified: Fri, 24 Jul 2026 19:14:45 GMT  
		Size: 238.6 MB (238575061 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a87a45cd6b49df8e67d61f5028c60f7317844fa84cc648cc710eb46882754840`  
		Last Modified: Fri, 24 Jul 2026 19:14:39 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:238486462dedb59c149b23d31b1f8b9a703300e58c70e646d2248519f77c498f`  
		Last Modified: Fri, 24 Jul 2026 19:14:40 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e2aee5d464b95502a1889881b889aced5817feb85d49b330a99ce70fcfced69`  
		Last Modified: Fri, 24 Jul 2026 19:14:41 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b1b2b8705d304c578142f7dac1fdbb734862d94d680cb9e277f34dd3a9ca632`  
		Last Modified: Fri, 24 Jul 2026 19:14:41 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94dce9fa1a2d613376f2a617aa74bce96c75dba0dd2c67b0f3ab19425657c430`  
		Last Modified: Fri, 24 Jul 2026 19:14:41 GMT  
		Size: 3.6 KB (3639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.6.2` - unknown; unknown

```console
$ docker pull clickhouse@sha256:c0d2b4b3c94406ba36f857b7432866181ee3113eccc0e907a2ad6ac2deac826d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f52723d5a621284c3221e88c4b37f99d414ce8421280d82044e7da6f58b130a`

```dockerfile
```

-	Layers:
	-	`sha256:75fffb79031f810079c316c3dfd9a3d7f0cfbf998b053b068d9dbfabe0b2d1b5`  
		Last Modified: Fri, 24 Jul 2026 19:14:39 GMT  
		Size: 26.2 KB (26219 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.6.2` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:5dc1b2c96497bc1f268d7236a28b1f750fbdcba95231c5cecfcfa2ff694d3a8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.2 MB (257180197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a493fd0c6952fb747e2037ed7e896846b9526d8e9fbf19fcc286a3a3c43630f7`
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
# Fri, 24 Jul 2026 19:13:38 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 24 Jul 2026 19:13:38 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 24 Jul 2026 19:13:38 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 24 Jul 2026 19:13:38 GMT
ARG REPO_CHANNEL=stable
# Fri, 24 Jul 2026 19:13:38 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 24 Jul 2026 19:13:38 GMT
ARG VERSION=26.6.2.81
# Fri, 24 Jul 2026 19:13:38 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 24 Jul 2026 19:14:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.81 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 24 Jul 2026 19:14:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.81 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 24 Jul 2026 19:14:05 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.81 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 24 Jul 2026 19:14:05 GMT
ENV LANG=en_US.UTF-8
# Fri, 24 Jul 2026 19:14:05 GMT
ENV TZ=UTC
# Fri, 24 Jul 2026 19:14:06 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.81 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 24 Jul 2026 19:14:06 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 24 Jul 2026 19:14:06 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 24 Jul 2026 19:14:06 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 24 Jul 2026 19:14:06 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 24 Jul 2026 19:14:06 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 24 Jul 2026 19:14:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbd9614ecd5d99d48aadfbb287ff66a239b894f6a554d6f0d59fcc1c7206ffd4`  
		Last Modified: Fri, 24 Jul 2026 19:14:28 GMT  
		Size: 7.5 MB (7536628 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f95103dd96463acb81fb4d6bb115963d45ab714cf63160dc2a5aea5799ee9fa1`  
		Last Modified: Fri, 24 Jul 2026 19:14:32 GMT  
		Size: 221.2 MB (221160332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bc741ed351e8cfba42c2f5646ea252088119ae10c8ef76199b6d0a7fdb37470`  
		Last Modified: Fri, 24 Jul 2026 19:14:27 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dd4048441bc26ad5658c6c403a9340687bad59a878a9012b7dd1f2903753a58`  
		Last Modified: Fri, 24 Jul 2026 19:14:28 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3a4d11cc1db46205e72967f888ad3fd395ef28976265cfb2f393e566bcc1182`  
		Last Modified: Fri, 24 Jul 2026 19:14:29 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7937e02bdc1f988271024ee0b8326618dd9020b8490797d5a59a831c73a2f6b0`  
		Last Modified: Fri, 24 Jul 2026 19:14:29 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4e563301ac03e23c7e5368964f1e2bf546f28d38a06b49f3510685721108d37`  
		Last Modified: Fri, 24 Jul 2026 19:14:29 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.6.2` - unknown; unknown

```console
$ docker pull clickhouse@sha256:1661bc462f39905ae17ce373a6458ed93c3118be700160c29b9b617453631330
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b11a3696e8839f3f878218b112b091738ce6ee60f33a5e6c2fe42653c25f5c27`

```dockerfile
```

-	Layers:
	-	`sha256:df65c9762a2edf45e9465ff5b440a15dda79b0190d240c5f7978d0e854af39b9`  
		Last Modified: Fri, 24 Jul 2026 19:14:27 GMT  
		Size: 26.4 KB (26408 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.6.2-jammy`

```console
$ docker pull clickhouse@sha256:631c99c928f5058c3aa4a5577e1128d938ff6dfe26efc78f87469170a7b95424
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.6.2-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:de2cc5e92d076cb5026cf728bc0ce8214a387b428e7bfa38895b70aadd8e44f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.7 MB (276739499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:745b2480593fd56b1cd82654fff0f745c9ab33d1ed326321f238dead65820bfc`
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
# Fri, 24 Jul 2026 19:13:45 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 24 Jul 2026 19:13:45 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 24 Jul 2026 19:13:45 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 24 Jul 2026 19:13:45 GMT
ARG REPO_CHANNEL=stable
# Fri, 24 Jul 2026 19:13:45 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 24 Jul 2026 19:13:45 GMT
ARG VERSION=26.6.2.81
# Fri, 24 Jul 2026 19:13:45 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 24 Jul 2026 19:14:12 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.81 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 24 Jul 2026 19:14:13 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.81 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 24 Jul 2026 19:14:14 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.81 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 24 Jul 2026 19:14:14 GMT
ENV LANG=en_US.UTF-8
# Fri, 24 Jul 2026 19:14:14 GMT
ENV TZ=UTC
# Fri, 24 Jul 2026 19:14:14 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.81 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 24 Jul 2026 19:14:14 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 24 Jul 2026 19:14:14 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 24 Jul 2026 19:14:14 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 24 Jul 2026 19:14:14 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 24 Jul 2026 19:14:14 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 24 Jul 2026 19:14:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:808018f51f86c53fde6bd7ae8cbb938544edde0c242eb9bbb9d6ef53ed8bd64e`  
		Last Modified: Fri, 24 Jul 2026 19:14:40 GMT  
		Size: 7.6 MB (7555502 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09a4de8c8bb48599be7156e39495997bbcdd5f06a39edff71dbbdf098dee1053`  
		Last Modified: Fri, 24 Jul 2026 19:14:45 GMT  
		Size: 238.6 MB (238575061 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a87a45cd6b49df8e67d61f5028c60f7317844fa84cc648cc710eb46882754840`  
		Last Modified: Fri, 24 Jul 2026 19:14:39 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:238486462dedb59c149b23d31b1f8b9a703300e58c70e646d2248519f77c498f`  
		Last Modified: Fri, 24 Jul 2026 19:14:40 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e2aee5d464b95502a1889881b889aced5817feb85d49b330a99ce70fcfced69`  
		Last Modified: Fri, 24 Jul 2026 19:14:41 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b1b2b8705d304c578142f7dac1fdbb734862d94d680cb9e277f34dd3a9ca632`  
		Last Modified: Fri, 24 Jul 2026 19:14:41 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94dce9fa1a2d613376f2a617aa74bce96c75dba0dd2c67b0f3ab19425657c430`  
		Last Modified: Fri, 24 Jul 2026 19:14:41 GMT  
		Size: 3.6 KB (3639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.6.2-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:c0d2b4b3c94406ba36f857b7432866181ee3113eccc0e907a2ad6ac2deac826d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f52723d5a621284c3221e88c4b37f99d414ce8421280d82044e7da6f58b130a`

```dockerfile
```

-	Layers:
	-	`sha256:75fffb79031f810079c316c3dfd9a3d7f0cfbf998b053b068d9dbfabe0b2d1b5`  
		Last Modified: Fri, 24 Jul 2026 19:14:39 GMT  
		Size: 26.2 KB (26219 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.6.2-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:5dc1b2c96497bc1f268d7236a28b1f750fbdcba95231c5cecfcfa2ff694d3a8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.2 MB (257180197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a493fd0c6952fb747e2037ed7e896846b9526d8e9fbf19fcc286a3a3c43630f7`
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
# Fri, 24 Jul 2026 19:13:38 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 24 Jul 2026 19:13:38 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 24 Jul 2026 19:13:38 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 24 Jul 2026 19:13:38 GMT
ARG REPO_CHANNEL=stable
# Fri, 24 Jul 2026 19:13:38 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 24 Jul 2026 19:13:38 GMT
ARG VERSION=26.6.2.81
# Fri, 24 Jul 2026 19:13:38 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 24 Jul 2026 19:14:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.81 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 24 Jul 2026 19:14:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.81 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 24 Jul 2026 19:14:05 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.81 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 24 Jul 2026 19:14:05 GMT
ENV LANG=en_US.UTF-8
# Fri, 24 Jul 2026 19:14:05 GMT
ENV TZ=UTC
# Fri, 24 Jul 2026 19:14:06 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.81 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 24 Jul 2026 19:14:06 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 24 Jul 2026 19:14:06 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 24 Jul 2026 19:14:06 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 24 Jul 2026 19:14:06 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 24 Jul 2026 19:14:06 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 24 Jul 2026 19:14:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbd9614ecd5d99d48aadfbb287ff66a239b894f6a554d6f0d59fcc1c7206ffd4`  
		Last Modified: Fri, 24 Jul 2026 19:14:28 GMT  
		Size: 7.5 MB (7536628 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f95103dd96463acb81fb4d6bb115963d45ab714cf63160dc2a5aea5799ee9fa1`  
		Last Modified: Fri, 24 Jul 2026 19:14:32 GMT  
		Size: 221.2 MB (221160332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bc741ed351e8cfba42c2f5646ea252088119ae10c8ef76199b6d0a7fdb37470`  
		Last Modified: Fri, 24 Jul 2026 19:14:27 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dd4048441bc26ad5658c6c403a9340687bad59a878a9012b7dd1f2903753a58`  
		Last Modified: Fri, 24 Jul 2026 19:14:28 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3a4d11cc1db46205e72967f888ad3fd395ef28976265cfb2f393e566bcc1182`  
		Last Modified: Fri, 24 Jul 2026 19:14:29 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7937e02bdc1f988271024ee0b8326618dd9020b8490797d5a59a831c73a2f6b0`  
		Last Modified: Fri, 24 Jul 2026 19:14:29 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4e563301ac03e23c7e5368964f1e2bf546f28d38a06b49f3510685721108d37`  
		Last Modified: Fri, 24 Jul 2026 19:14:29 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.6.2-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:1661bc462f39905ae17ce373a6458ed93c3118be700160c29b9b617453631330
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b11a3696e8839f3f878218b112b091738ce6ee60f33a5e6c2fe42653c25f5c27`

```dockerfile
```

-	Layers:
	-	`sha256:df65c9762a2edf45e9465ff5b440a15dda79b0190d240c5f7978d0e854af39b9`  
		Last Modified: Fri, 24 Jul 2026 19:14:27 GMT  
		Size: 26.4 KB (26408 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.6.2.81`

```console
$ docker pull clickhouse@sha256:631c99c928f5058c3aa4a5577e1128d938ff6dfe26efc78f87469170a7b95424
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.6.2.81` - linux; amd64

```console
$ docker pull clickhouse@sha256:de2cc5e92d076cb5026cf728bc0ce8214a387b428e7bfa38895b70aadd8e44f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.7 MB (276739499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:745b2480593fd56b1cd82654fff0f745c9ab33d1ed326321f238dead65820bfc`
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
# Fri, 24 Jul 2026 19:13:45 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 24 Jul 2026 19:13:45 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 24 Jul 2026 19:13:45 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 24 Jul 2026 19:13:45 GMT
ARG REPO_CHANNEL=stable
# Fri, 24 Jul 2026 19:13:45 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 24 Jul 2026 19:13:45 GMT
ARG VERSION=26.6.2.81
# Fri, 24 Jul 2026 19:13:45 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 24 Jul 2026 19:14:12 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.81 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 24 Jul 2026 19:14:13 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.81 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 24 Jul 2026 19:14:14 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.81 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 24 Jul 2026 19:14:14 GMT
ENV LANG=en_US.UTF-8
# Fri, 24 Jul 2026 19:14:14 GMT
ENV TZ=UTC
# Fri, 24 Jul 2026 19:14:14 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.81 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 24 Jul 2026 19:14:14 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 24 Jul 2026 19:14:14 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 24 Jul 2026 19:14:14 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 24 Jul 2026 19:14:14 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 24 Jul 2026 19:14:14 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 24 Jul 2026 19:14:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:808018f51f86c53fde6bd7ae8cbb938544edde0c242eb9bbb9d6ef53ed8bd64e`  
		Last Modified: Fri, 24 Jul 2026 19:14:40 GMT  
		Size: 7.6 MB (7555502 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09a4de8c8bb48599be7156e39495997bbcdd5f06a39edff71dbbdf098dee1053`  
		Last Modified: Fri, 24 Jul 2026 19:14:45 GMT  
		Size: 238.6 MB (238575061 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a87a45cd6b49df8e67d61f5028c60f7317844fa84cc648cc710eb46882754840`  
		Last Modified: Fri, 24 Jul 2026 19:14:39 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:238486462dedb59c149b23d31b1f8b9a703300e58c70e646d2248519f77c498f`  
		Last Modified: Fri, 24 Jul 2026 19:14:40 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e2aee5d464b95502a1889881b889aced5817feb85d49b330a99ce70fcfced69`  
		Last Modified: Fri, 24 Jul 2026 19:14:41 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b1b2b8705d304c578142f7dac1fdbb734862d94d680cb9e277f34dd3a9ca632`  
		Last Modified: Fri, 24 Jul 2026 19:14:41 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94dce9fa1a2d613376f2a617aa74bce96c75dba0dd2c67b0f3ab19425657c430`  
		Last Modified: Fri, 24 Jul 2026 19:14:41 GMT  
		Size: 3.6 KB (3639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.6.2.81` - unknown; unknown

```console
$ docker pull clickhouse@sha256:c0d2b4b3c94406ba36f857b7432866181ee3113eccc0e907a2ad6ac2deac826d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f52723d5a621284c3221e88c4b37f99d414ce8421280d82044e7da6f58b130a`

```dockerfile
```

-	Layers:
	-	`sha256:75fffb79031f810079c316c3dfd9a3d7f0cfbf998b053b068d9dbfabe0b2d1b5`  
		Last Modified: Fri, 24 Jul 2026 19:14:39 GMT  
		Size: 26.2 KB (26219 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.6.2.81` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:5dc1b2c96497bc1f268d7236a28b1f750fbdcba95231c5cecfcfa2ff694d3a8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.2 MB (257180197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a493fd0c6952fb747e2037ed7e896846b9526d8e9fbf19fcc286a3a3c43630f7`
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
# Fri, 24 Jul 2026 19:13:38 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 24 Jul 2026 19:13:38 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 24 Jul 2026 19:13:38 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 24 Jul 2026 19:13:38 GMT
ARG REPO_CHANNEL=stable
# Fri, 24 Jul 2026 19:13:38 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 24 Jul 2026 19:13:38 GMT
ARG VERSION=26.6.2.81
# Fri, 24 Jul 2026 19:13:38 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 24 Jul 2026 19:14:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.81 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 24 Jul 2026 19:14:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.81 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 24 Jul 2026 19:14:05 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.81 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 24 Jul 2026 19:14:05 GMT
ENV LANG=en_US.UTF-8
# Fri, 24 Jul 2026 19:14:05 GMT
ENV TZ=UTC
# Fri, 24 Jul 2026 19:14:06 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.81 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 24 Jul 2026 19:14:06 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 24 Jul 2026 19:14:06 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 24 Jul 2026 19:14:06 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 24 Jul 2026 19:14:06 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 24 Jul 2026 19:14:06 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 24 Jul 2026 19:14:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbd9614ecd5d99d48aadfbb287ff66a239b894f6a554d6f0d59fcc1c7206ffd4`  
		Last Modified: Fri, 24 Jul 2026 19:14:28 GMT  
		Size: 7.5 MB (7536628 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f95103dd96463acb81fb4d6bb115963d45ab714cf63160dc2a5aea5799ee9fa1`  
		Last Modified: Fri, 24 Jul 2026 19:14:32 GMT  
		Size: 221.2 MB (221160332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bc741ed351e8cfba42c2f5646ea252088119ae10c8ef76199b6d0a7fdb37470`  
		Last Modified: Fri, 24 Jul 2026 19:14:27 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dd4048441bc26ad5658c6c403a9340687bad59a878a9012b7dd1f2903753a58`  
		Last Modified: Fri, 24 Jul 2026 19:14:28 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3a4d11cc1db46205e72967f888ad3fd395ef28976265cfb2f393e566bcc1182`  
		Last Modified: Fri, 24 Jul 2026 19:14:29 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7937e02bdc1f988271024ee0b8326618dd9020b8490797d5a59a831c73a2f6b0`  
		Last Modified: Fri, 24 Jul 2026 19:14:29 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4e563301ac03e23c7e5368964f1e2bf546f28d38a06b49f3510685721108d37`  
		Last Modified: Fri, 24 Jul 2026 19:14:29 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.6.2.81` - unknown; unknown

```console
$ docker pull clickhouse@sha256:1661bc462f39905ae17ce373a6458ed93c3118be700160c29b9b617453631330
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b11a3696e8839f3f878218b112b091738ce6ee60f33a5e6c2fe42653c25f5c27`

```dockerfile
```

-	Layers:
	-	`sha256:df65c9762a2edf45e9465ff5b440a15dda79b0190d240c5f7978d0e854af39b9`  
		Last Modified: Fri, 24 Jul 2026 19:14:27 GMT  
		Size: 26.4 KB (26408 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.6.2.81-jammy`

```console
$ docker pull clickhouse@sha256:631c99c928f5058c3aa4a5577e1128d938ff6dfe26efc78f87469170a7b95424
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.6.2.81-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:de2cc5e92d076cb5026cf728bc0ce8214a387b428e7bfa38895b70aadd8e44f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.7 MB (276739499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:745b2480593fd56b1cd82654fff0f745c9ab33d1ed326321f238dead65820bfc`
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
# Fri, 24 Jul 2026 19:13:45 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 24 Jul 2026 19:13:45 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 24 Jul 2026 19:13:45 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 24 Jul 2026 19:13:45 GMT
ARG REPO_CHANNEL=stable
# Fri, 24 Jul 2026 19:13:45 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 24 Jul 2026 19:13:45 GMT
ARG VERSION=26.6.2.81
# Fri, 24 Jul 2026 19:13:45 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 24 Jul 2026 19:14:12 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.81 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 24 Jul 2026 19:14:13 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.81 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 24 Jul 2026 19:14:14 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.81 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 24 Jul 2026 19:14:14 GMT
ENV LANG=en_US.UTF-8
# Fri, 24 Jul 2026 19:14:14 GMT
ENV TZ=UTC
# Fri, 24 Jul 2026 19:14:14 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.81 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 24 Jul 2026 19:14:14 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 24 Jul 2026 19:14:14 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 24 Jul 2026 19:14:14 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 24 Jul 2026 19:14:14 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 24 Jul 2026 19:14:14 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 24 Jul 2026 19:14:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:808018f51f86c53fde6bd7ae8cbb938544edde0c242eb9bbb9d6ef53ed8bd64e`  
		Last Modified: Fri, 24 Jul 2026 19:14:40 GMT  
		Size: 7.6 MB (7555502 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09a4de8c8bb48599be7156e39495997bbcdd5f06a39edff71dbbdf098dee1053`  
		Last Modified: Fri, 24 Jul 2026 19:14:45 GMT  
		Size: 238.6 MB (238575061 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a87a45cd6b49df8e67d61f5028c60f7317844fa84cc648cc710eb46882754840`  
		Last Modified: Fri, 24 Jul 2026 19:14:39 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:238486462dedb59c149b23d31b1f8b9a703300e58c70e646d2248519f77c498f`  
		Last Modified: Fri, 24 Jul 2026 19:14:40 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e2aee5d464b95502a1889881b889aced5817feb85d49b330a99ce70fcfced69`  
		Last Modified: Fri, 24 Jul 2026 19:14:41 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b1b2b8705d304c578142f7dac1fdbb734862d94d680cb9e277f34dd3a9ca632`  
		Last Modified: Fri, 24 Jul 2026 19:14:41 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94dce9fa1a2d613376f2a617aa74bce96c75dba0dd2c67b0f3ab19425657c430`  
		Last Modified: Fri, 24 Jul 2026 19:14:41 GMT  
		Size: 3.6 KB (3639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.6.2.81-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:c0d2b4b3c94406ba36f857b7432866181ee3113eccc0e907a2ad6ac2deac826d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f52723d5a621284c3221e88c4b37f99d414ce8421280d82044e7da6f58b130a`

```dockerfile
```

-	Layers:
	-	`sha256:75fffb79031f810079c316c3dfd9a3d7f0cfbf998b053b068d9dbfabe0b2d1b5`  
		Last Modified: Fri, 24 Jul 2026 19:14:39 GMT  
		Size: 26.2 KB (26219 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.6.2.81-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:5dc1b2c96497bc1f268d7236a28b1f750fbdcba95231c5cecfcfa2ff694d3a8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.2 MB (257180197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a493fd0c6952fb747e2037ed7e896846b9526d8e9fbf19fcc286a3a3c43630f7`
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
# Fri, 24 Jul 2026 19:13:38 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 24 Jul 2026 19:13:38 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 24 Jul 2026 19:13:38 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 24 Jul 2026 19:13:38 GMT
ARG REPO_CHANNEL=stable
# Fri, 24 Jul 2026 19:13:38 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 24 Jul 2026 19:13:38 GMT
ARG VERSION=26.6.2.81
# Fri, 24 Jul 2026 19:13:38 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 24 Jul 2026 19:14:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.81 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 24 Jul 2026 19:14:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.81 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 24 Jul 2026 19:14:05 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.81 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 24 Jul 2026 19:14:05 GMT
ENV LANG=en_US.UTF-8
# Fri, 24 Jul 2026 19:14:05 GMT
ENV TZ=UTC
# Fri, 24 Jul 2026 19:14:06 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.81 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 24 Jul 2026 19:14:06 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 24 Jul 2026 19:14:06 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 24 Jul 2026 19:14:06 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 24 Jul 2026 19:14:06 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 24 Jul 2026 19:14:06 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 24 Jul 2026 19:14:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbd9614ecd5d99d48aadfbb287ff66a239b894f6a554d6f0d59fcc1c7206ffd4`  
		Last Modified: Fri, 24 Jul 2026 19:14:28 GMT  
		Size: 7.5 MB (7536628 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f95103dd96463acb81fb4d6bb115963d45ab714cf63160dc2a5aea5799ee9fa1`  
		Last Modified: Fri, 24 Jul 2026 19:14:32 GMT  
		Size: 221.2 MB (221160332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bc741ed351e8cfba42c2f5646ea252088119ae10c8ef76199b6d0a7fdb37470`  
		Last Modified: Fri, 24 Jul 2026 19:14:27 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dd4048441bc26ad5658c6c403a9340687bad59a878a9012b7dd1f2903753a58`  
		Last Modified: Fri, 24 Jul 2026 19:14:28 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3a4d11cc1db46205e72967f888ad3fd395ef28976265cfb2f393e566bcc1182`  
		Last Modified: Fri, 24 Jul 2026 19:14:29 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7937e02bdc1f988271024ee0b8326618dd9020b8490797d5a59a831c73a2f6b0`  
		Last Modified: Fri, 24 Jul 2026 19:14:29 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4e563301ac03e23c7e5368964f1e2bf546f28d38a06b49f3510685721108d37`  
		Last Modified: Fri, 24 Jul 2026 19:14:29 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.6.2.81-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:1661bc462f39905ae17ce373a6458ed93c3118be700160c29b9b617453631330
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b11a3696e8839f3f878218b112b091738ce6ee60f33a5e6c2fe42653c25f5c27`

```dockerfile
```

-	Layers:
	-	`sha256:df65c9762a2edf45e9465ff5b440a15dda79b0190d240c5f7978d0e854af39b9`  
		Last Modified: Fri, 24 Jul 2026 19:14:27 GMT  
		Size: 26.4 KB (26408 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.7`

```console
$ docker pull clickhouse@sha256:0045f3adaf0eb86c8c8629cc1572370b0514f28e804be09f1db0c8ca7730e3cf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.7` - linux; amd64

```console
$ docker pull clickhouse@sha256:876d2c45bbf175e7a28d9c976e30a971a4af43f7d0cefcea85404f2f8abe7091
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.6 MB (265608044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85d72d0bda54f383fb36492b0dd6d111a0e89298fe30a916f1e7d29d42eed46a`
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
# Fri, 24 Jul 2026 19:12:45 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 24 Jul 2026 19:12:45 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 24 Jul 2026 19:12:45 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 24 Jul 2026 19:12:45 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 24 Jul 2026 19:12:45 GMT
ARG REPO_CHANNEL=stable
# Fri, 24 Jul 2026 19:12:45 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 24 Jul 2026 19:12:45 GMT
ARG VERSION=26.7.1.1315
# Fri, 24 Jul 2026 19:12:45 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 24 Jul 2026 19:13:14 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.1.1315 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 24 Jul 2026 19:13:14 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.1.1315 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 24 Jul 2026 19:13:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.1.1315 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 24 Jul 2026 19:13:16 GMT
ENV LANG=en_US.UTF-8
# Fri, 24 Jul 2026 19:13:16 GMT
ENV TZ=UTC
# Fri, 24 Jul 2026 19:13:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.1.1315 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 24 Jul 2026 19:13:16 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 24 Jul 2026 19:13:16 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 24 Jul 2026 19:13:16 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 24 Jul 2026 19:13:16 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 24 Jul 2026 19:13:16 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 24 Jul 2026 19:13:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1ebb38a34e782ff0aa0e62db9c29e51ed8ae2055ff6ed06b38f8573bdeee1ea`  
		Last Modified: Fri, 24 Jul 2026 19:13:42 GMT  
		Size: 7.6 MB (7555530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be4716f336a834ba9a327b5284681f118e0e6f82877fb9763d295fb8413c6041`  
		Last Modified: Fri, 24 Jul 2026 19:13:47 GMT  
		Size: 227.4 MB (227443583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d7be5dcf55e0bda67bec96e2e966ca508bff867b6cc7a9c58892ba9d454718a`  
		Last Modified: Fri, 24 Jul 2026 19:13:42 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b011f477a122155376230f8d1d84344f4b19e01013d52d49c69063ad88f8437`  
		Last Modified: Fri, 24 Jul 2026 19:13:42 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed82990358ba1f639b0ef0a04394bbc1d1493345fb3286f2d37ac84a798c8d16`  
		Last Modified: Fri, 24 Jul 2026 19:13:43 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46eb56544a2fe619f0757460df263966e75467f565aff598d75ce410895cc473`  
		Last Modified: Fri, 24 Jul 2026 19:13:43 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dde2b35ede82314485b937c19a503a3ae2632c5e713c2fbd99b8581c602c4b78`  
		Last Modified: Fri, 24 Jul 2026 19:13:44 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7` - unknown; unknown

```console
$ docker pull clickhouse@sha256:16d4efc0cbd36fa425e9c6298462ead5ab7464560250c5fe97f62c256e543255
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 KB (27371 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e7a71dbfb467a56f9c7dd965d86e26fefebd597638513f740f2175c02f45493`

```dockerfile
```

-	Layers:
	-	`sha256:5b4656cb382c09d8f77f5b4f843ea271fba9b3d83a021b15f4db0582cffe091f`  
		Last Modified: Fri, 24 Jul 2026 19:13:42 GMT  
		Size: 27.4 KB (27371 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.7` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:0be2338c2b852ddc18ee42f1ef2789427aaa4718005c01ce2f8a461817dd8797
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.9 MB (248909904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbfb1296b647cfc4ece7f60aa2692aa90d5b31f2faa44711aecfdb73b88e8ade`
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
# Fri, 24 Jul 2026 19:12:43 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 24 Jul 2026 19:12:43 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 24 Jul 2026 19:12:43 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 24 Jul 2026 19:12:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 24 Jul 2026 19:12:43 GMT
ARG REPO_CHANNEL=stable
# Fri, 24 Jul 2026 19:12:43 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 24 Jul 2026 19:12:43 GMT
ARG VERSION=26.7.1.1315
# Fri, 24 Jul 2026 19:12:43 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 24 Jul 2026 19:13:12 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.1.1315 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 24 Jul 2026 19:13:12 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.1.1315 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 24 Jul 2026 19:13:13 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.1.1315 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 24 Jul 2026 19:13:13 GMT
ENV LANG=en_US.UTF-8
# Fri, 24 Jul 2026 19:13:13 GMT
ENV TZ=UTC
# Fri, 24 Jul 2026 19:13:13 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.1.1315 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 24 Jul 2026 19:13:13 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 24 Jul 2026 19:13:13 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 24 Jul 2026 19:13:13 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 24 Jul 2026 19:13:13 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 24 Jul 2026 19:13:13 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 24 Jul 2026 19:13:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0daf26873cf5dc09f145f96bda91c1587f393697dd865e90071f7b0501e11fb`  
		Last Modified: Fri, 24 Jul 2026 19:13:36 GMT  
		Size: 7.5 MB (7536586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f82704ebb5fb46df91e4ce9403d1b061fab2a1d09f6bdcf3229dffdb410e1628`  
		Last Modified: Fri, 24 Jul 2026 19:13:40 GMT  
		Size: 212.9 MB (212890079 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d36ef216dc0715b5dce952671b8dbf1c372ba00a67ffaae5bd898020a9ec9470`  
		Last Modified: Fri, 24 Jul 2026 19:13:35 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d94f31eb9e8a098d95fa1cc3459821972081c32e0c3671bbf1c8a11c2e3910d`  
		Last Modified: Fri, 24 Jul 2026 19:13:36 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22ff86bf74e79e78c414641cf2f35b0bd0a7816c7b56bee8292e40ae50b2a718`  
		Last Modified: Fri, 24 Jul 2026 19:13:37 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5936f93099bec76e9f5d65c30b3a8602434d9c698b3cd5e2be894780550a30b6`  
		Last Modified: Fri, 24 Jul 2026 19:13:37 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba6dbe3b67277ce8a3525a762daafab629fc188839bab5ee25d42b99bf9b4222`  
		Last Modified: Fri, 24 Jul 2026 19:13:37 GMT  
		Size: 3.6 KB (3639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7` - unknown; unknown

```console
$ docker pull clickhouse@sha256:2e8dd04a442ef43fede4bd18765ccb4b6883c12ffe605c9212b761224d0d93b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 KB (27583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:344c49beacf1a27c570673ec4999e2552783b972239ed946ad658860d1c62205`

```dockerfile
```

-	Layers:
	-	`sha256:c1ab2fef18875685ff96d998f988a92ab0d46d3d8493a0efe065b521ca29adf1`  
		Last Modified: Fri, 24 Jul 2026 19:13:35 GMT  
		Size: 27.6 KB (27583 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.7-jammy`

```console
$ docker pull clickhouse@sha256:0045f3adaf0eb86c8c8629cc1572370b0514f28e804be09f1db0c8ca7730e3cf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.7-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:876d2c45bbf175e7a28d9c976e30a971a4af43f7d0cefcea85404f2f8abe7091
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.6 MB (265608044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85d72d0bda54f383fb36492b0dd6d111a0e89298fe30a916f1e7d29d42eed46a`
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
# Fri, 24 Jul 2026 19:12:45 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 24 Jul 2026 19:12:45 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 24 Jul 2026 19:12:45 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 24 Jul 2026 19:12:45 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 24 Jul 2026 19:12:45 GMT
ARG REPO_CHANNEL=stable
# Fri, 24 Jul 2026 19:12:45 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 24 Jul 2026 19:12:45 GMT
ARG VERSION=26.7.1.1315
# Fri, 24 Jul 2026 19:12:45 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 24 Jul 2026 19:13:14 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.1.1315 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 24 Jul 2026 19:13:14 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.1.1315 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 24 Jul 2026 19:13:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.1.1315 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 24 Jul 2026 19:13:16 GMT
ENV LANG=en_US.UTF-8
# Fri, 24 Jul 2026 19:13:16 GMT
ENV TZ=UTC
# Fri, 24 Jul 2026 19:13:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.1.1315 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 24 Jul 2026 19:13:16 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 24 Jul 2026 19:13:16 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 24 Jul 2026 19:13:16 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 24 Jul 2026 19:13:16 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 24 Jul 2026 19:13:16 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 24 Jul 2026 19:13:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1ebb38a34e782ff0aa0e62db9c29e51ed8ae2055ff6ed06b38f8573bdeee1ea`  
		Last Modified: Fri, 24 Jul 2026 19:13:42 GMT  
		Size: 7.6 MB (7555530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be4716f336a834ba9a327b5284681f118e0e6f82877fb9763d295fb8413c6041`  
		Last Modified: Fri, 24 Jul 2026 19:13:47 GMT  
		Size: 227.4 MB (227443583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d7be5dcf55e0bda67bec96e2e966ca508bff867b6cc7a9c58892ba9d454718a`  
		Last Modified: Fri, 24 Jul 2026 19:13:42 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b011f477a122155376230f8d1d84344f4b19e01013d52d49c69063ad88f8437`  
		Last Modified: Fri, 24 Jul 2026 19:13:42 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed82990358ba1f639b0ef0a04394bbc1d1493345fb3286f2d37ac84a798c8d16`  
		Last Modified: Fri, 24 Jul 2026 19:13:43 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46eb56544a2fe619f0757460df263966e75467f565aff598d75ce410895cc473`  
		Last Modified: Fri, 24 Jul 2026 19:13:43 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dde2b35ede82314485b937c19a503a3ae2632c5e713c2fbd99b8581c602c4b78`  
		Last Modified: Fri, 24 Jul 2026 19:13:44 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:16d4efc0cbd36fa425e9c6298462ead5ab7464560250c5fe97f62c256e543255
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 KB (27371 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e7a71dbfb467a56f9c7dd965d86e26fefebd597638513f740f2175c02f45493`

```dockerfile
```

-	Layers:
	-	`sha256:5b4656cb382c09d8f77f5b4f843ea271fba9b3d83a021b15f4db0582cffe091f`  
		Last Modified: Fri, 24 Jul 2026 19:13:42 GMT  
		Size: 27.4 KB (27371 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.7-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:0be2338c2b852ddc18ee42f1ef2789427aaa4718005c01ce2f8a461817dd8797
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.9 MB (248909904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbfb1296b647cfc4ece7f60aa2692aa90d5b31f2faa44711aecfdb73b88e8ade`
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
# Fri, 24 Jul 2026 19:12:43 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 24 Jul 2026 19:12:43 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 24 Jul 2026 19:12:43 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 24 Jul 2026 19:12:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 24 Jul 2026 19:12:43 GMT
ARG REPO_CHANNEL=stable
# Fri, 24 Jul 2026 19:12:43 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 24 Jul 2026 19:12:43 GMT
ARG VERSION=26.7.1.1315
# Fri, 24 Jul 2026 19:12:43 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 24 Jul 2026 19:13:12 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.1.1315 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 24 Jul 2026 19:13:12 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.1.1315 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 24 Jul 2026 19:13:13 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.1.1315 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 24 Jul 2026 19:13:13 GMT
ENV LANG=en_US.UTF-8
# Fri, 24 Jul 2026 19:13:13 GMT
ENV TZ=UTC
# Fri, 24 Jul 2026 19:13:13 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.1.1315 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 24 Jul 2026 19:13:13 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 24 Jul 2026 19:13:13 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 24 Jul 2026 19:13:13 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 24 Jul 2026 19:13:13 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 24 Jul 2026 19:13:13 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 24 Jul 2026 19:13:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0daf26873cf5dc09f145f96bda91c1587f393697dd865e90071f7b0501e11fb`  
		Last Modified: Fri, 24 Jul 2026 19:13:36 GMT  
		Size: 7.5 MB (7536586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f82704ebb5fb46df91e4ce9403d1b061fab2a1d09f6bdcf3229dffdb410e1628`  
		Last Modified: Fri, 24 Jul 2026 19:13:40 GMT  
		Size: 212.9 MB (212890079 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d36ef216dc0715b5dce952671b8dbf1c372ba00a67ffaae5bd898020a9ec9470`  
		Last Modified: Fri, 24 Jul 2026 19:13:35 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d94f31eb9e8a098d95fa1cc3459821972081c32e0c3671bbf1c8a11c2e3910d`  
		Last Modified: Fri, 24 Jul 2026 19:13:36 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22ff86bf74e79e78c414641cf2f35b0bd0a7816c7b56bee8292e40ae50b2a718`  
		Last Modified: Fri, 24 Jul 2026 19:13:37 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5936f93099bec76e9f5d65c30b3a8602434d9c698b3cd5e2be894780550a30b6`  
		Last Modified: Fri, 24 Jul 2026 19:13:37 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba6dbe3b67277ce8a3525a762daafab629fc188839bab5ee25d42b99bf9b4222`  
		Last Modified: Fri, 24 Jul 2026 19:13:37 GMT  
		Size: 3.6 KB (3639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:2e8dd04a442ef43fede4bd18765ccb4b6883c12ffe605c9212b761224d0d93b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 KB (27583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:344c49beacf1a27c570673ec4999e2552783b972239ed946ad658860d1c62205`

```dockerfile
```

-	Layers:
	-	`sha256:c1ab2fef18875685ff96d998f988a92ab0d46d3d8493a0efe065b521ca29adf1`  
		Last Modified: Fri, 24 Jul 2026 19:13:35 GMT  
		Size: 27.6 KB (27583 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.7.1`

```console
$ docker pull clickhouse@sha256:0045f3adaf0eb86c8c8629cc1572370b0514f28e804be09f1db0c8ca7730e3cf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.7.1` - linux; amd64

```console
$ docker pull clickhouse@sha256:876d2c45bbf175e7a28d9c976e30a971a4af43f7d0cefcea85404f2f8abe7091
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.6 MB (265608044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85d72d0bda54f383fb36492b0dd6d111a0e89298fe30a916f1e7d29d42eed46a`
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
# Fri, 24 Jul 2026 19:12:45 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 24 Jul 2026 19:12:45 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 24 Jul 2026 19:12:45 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 24 Jul 2026 19:12:45 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 24 Jul 2026 19:12:45 GMT
ARG REPO_CHANNEL=stable
# Fri, 24 Jul 2026 19:12:45 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 24 Jul 2026 19:12:45 GMT
ARG VERSION=26.7.1.1315
# Fri, 24 Jul 2026 19:12:45 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 24 Jul 2026 19:13:14 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.1.1315 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 24 Jul 2026 19:13:14 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.1.1315 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 24 Jul 2026 19:13:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.1.1315 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 24 Jul 2026 19:13:16 GMT
ENV LANG=en_US.UTF-8
# Fri, 24 Jul 2026 19:13:16 GMT
ENV TZ=UTC
# Fri, 24 Jul 2026 19:13:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.1.1315 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 24 Jul 2026 19:13:16 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 24 Jul 2026 19:13:16 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 24 Jul 2026 19:13:16 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 24 Jul 2026 19:13:16 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 24 Jul 2026 19:13:16 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 24 Jul 2026 19:13:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1ebb38a34e782ff0aa0e62db9c29e51ed8ae2055ff6ed06b38f8573bdeee1ea`  
		Last Modified: Fri, 24 Jul 2026 19:13:42 GMT  
		Size: 7.6 MB (7555530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be4716f336a834ba9a327b5284681f118e0e6f82877fb9763d295fb8413c6041`  
		Last Modified: Fri, 24 Jul 2026 19:13:47 GMT  
		Size: 227.4 MB (227443583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d7be5dcf55e0bda67bec96e2e966ca508bff867b6cc7a9c58892ba9d454718a`  
		Last Modified: Fri, 24 Jul 2026 19:13:42 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b011f477a122155376230f8d1d84344f4b19e01013d52d49c69063ad88f8437`  
		Last Modified: Fri, 24 Jul 2026 19:13:42 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed82990358ba1f639b0ef0a04394bbc1d1493345fb3286f2d37ac84a798c8d16`  
		Last Modified: Fri, 24 Jul 2026 19:13:43 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46eb56544a2fe619f0757460df263966e75467f565aff598d75ce410895cc473`  
		Last Modified: Fri, 24 Jul 2026 19:13:43 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dde2b35ede82314485b937c19a503a3ae2632c5e713c2fbd99b8581c602c4b78`  
		Last Modified: Fri, 24 Jul 2026 19:13:44 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7.1` - unknown; unknown

```console
$ docker pull clickhouse@sha256:16d4efc0cbd36fa425e9c6298462ead5ab7464560250c5fe97f62c256e543255
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 KB (27371 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e7a71dbfb467a56f9c7dd965d86e26fefebd597638513f740f2175c02f45493`

```dockerfile
```

-	Layers:
	-	`sha256:5b4656cb382c09d8f77f5b4f843ea271fba9b3d83a021b15f4db0582cffe091f`  
		Last Modified: Fri, 24 Jul 2026 19:13:42 GMT  
		Size: 27.4 KB (27371 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.7.1` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:0be2338c2b852ddc18ee42f1ef2789427aaa4718005c01ce2f8a461817dd8797
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.9 MB (248909904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbfb1296b647cfc4ece7f60aa2692aa90d5b31f2faa44711aecfdb73b88e8ade`
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
# Fri, 24 Jul 2026 19:12:43 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 24 Jul 2026 19:12:43 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 24 Jul 2026 19:12:43 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 24 Jul 2026 19:12:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 24 Jul 2026 19:12:43 GMT
ARG REPO_CHANNEL=stable
# Fri, 24 Jul 2026 19:12:43 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 24 Jul 2026 19:12:43 GMT
ARG VERSION=26.7.1.1315
# Fri, 24 Jul 2026 19:12:43 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 24 Jul 2026 19:13:12 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.1.1315 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 24 Jul 2026 19:13:12 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.1.1315 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 24 Jul 2026 19:13:13 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.1.1315 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 24 Jul 2026 19:13:13 GMT
ENV LANG=en_US.UTF-8
# Fri, 24 Jul 2026 19:13:13 GMT
ENV TZ=UTC
# Fri, 24 Jul 2026 19:13:13 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.1.1315 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 24 Jul 2026 19:13:13 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 24 Jul 2026 19:13:13 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 24 Jul 2026 19:13:13 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 24 Jul 2026 19:13:13 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 24 Jul 2026 19:13:13 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 24 Jul 2026 19:13:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0daf26873cf5dc09f145f96bda91c1587f393697dd865e90071f7b0501e11fb`  
		Last Modified: Fri, 24 Jul 2026 19:13:36 GMT  
		Size: 7.5 MB (7536586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f82704ebb5fb46df91e4ce9403d1b061fab2a1d09f6bdcf3229dffdb410e1628`  
		Last Modified: Fri, 24 Jul 2026 19:13:40 GMT  
		Size: 212.9 MB (212890079 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d36ef216dc0715b5dce952671b8dbf1c372ba00a67ffaae5bd898020a9ec9470`  
		Last Modified: Fri, 24 Jul 2026 19:13:35 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d94f31eb9e8a098d95fa1cc3459821972081c32e0c3671bbf1c8a11c2e3910d`  
		Last Modified: Fri, 24 Jul 2026 19:13:36 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22ff86bf74e79e78c414641cf2f35b0bd0a7816c7b56bee8292e40ae50b2a718`  
		Last Modified: Fri, 24 Jul 2026 19:13:37 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5936f93099bec76e9f5d65c30b3a8602434d9c698b3cd5e2be894780550a30b6`  
		Last Modified: Fri, 24 Jul 2026 19:13:37 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba6dbe3b67277ce8a3525a762daafab629fc188839bab5ee25d42b99bf9b4222`  
		Last Modified: Fri, 24 Jul 2026 19:13:37 GMT  
		Size: 3.6 KB (3639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7.1` - unknown; unknown

```console
$ docker pull clickhouse@sha256:2e8dd04a442ef43fede4bd18765ccb4b6883c12ffe605c9212b761224d0d93b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 KB (27583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:344c49beacf1a27c570673ec4999e2552783b972239ed946ad658860d1c62205`

```dockerfile
```

-	Layers:
	-	`sha256:c1ab2fef18875685ff96d998f988a92ab0d46d3d8493a0efe065b521ca29adf1`  
		Last Modified: Fri, 24 Jul 2026 19:13:35 GMT  
		Size: 27.6 KB (27583 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.7.1-jammy`

```console
$ docker pull clickhouse@sha256:0045f3adaf0eb86c8c8629cc1572370b0514f28e804be09f1db0c8ca7730e3cf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.7.1-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:876d2c45bbf175e7a28d9c976e30a971a4af43f7d0cefcea85404f2f8abe7091
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.6 MB (265608044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85d72d0bda54f383fb36492b0dd6d111a0e89298fe30a916f1e7d29d42eed46a`
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
# Fri, 24 Jul 2026 19:12:45 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 24 Jul 2026 19:12:45 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 24 Jul 2026 19:12:45 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 24 Jul 2026 19:12:45 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 24 Jul 2026 19:12:45 GMT
ARG REPO_CHANNEL=stable
# Fri, 24 Jul 2026 19:12:45 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 24 Jul 2026 19:12:45 GMT
ARG VERSION=26.7.1.1315
# Fri, 24 Jul 2026 19:12:45 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 24 Jul 2026 19:13:14 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.1.1315 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 24 Jul 2026 19:13:14 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.1.1315 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 24 Jul 2026 19:13:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.1.1315 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 24 Jul 2026 19:13:16 GMT
ENV LANG=en_US.UTF-8
# Fri, 24 Jul 2026 19:13:16 GMT
ENV TZ=UTC
# Fri, 24 Jul 2026 19:13:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.1.1315 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 24 Jul 2026 19:13:16 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 24 Jul 2026 19:13:16 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 24 Jul 2026 19:13:16 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 24 Jul 2026 19:13:16 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 24 Jul 2026 19:13:16 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 24 Jul 2026 19:13:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1ebb38a34e782ff0aa0e62db9c29e51ed8ae2055ff6ed06b38f8573bdeee1ea`  
		Last Modified: Fri, 24 Jul 2026 19:13:42 GMT  
		Size: 7.6 MB (7555530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be4716f336a834ba9a327b5284681f118e0e6f82877fb9763d295fb8413c6041`  
		Last Modified: Fri, 24 Jul 2026 19:13:47 GMT  
		Size: 227.4 MB (227443583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d7be5dcf55e0bda67bec96e2e966ca508bff867b6cc7a9c58892ba9d454718a`  
		Last Modified: Fri, 24 Jul 2026 19:13:42 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b011f477a122155376230f8d1d84344f4b19e01013d52d49c69063ad88f8437`  
		Last Modified: Fri, 24 Jul 2026 19:13:42 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed82990358ba1f639b0ef0a04394bbc1d1493345fb3286f2d37ac84a798c8d16`  
		Last Modified: Fri, 24 Jul 2026 19:13:43 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46eb56544a2fe619f0757460df263966e75467f565aff598d75ce410895cc473`  
		Last Modified: Fri, 24 Jul 2026 19:13:43 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dde2b35ede82314485b937c19a503a3ae2632c5e713c2fbd99b8581c602c4b78`  
		Last Modified: Fri, 24 Jul 2026 19:13:44 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7.1-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:16d4efc0cbd36fa425e9c6298462ead5ab7464560250c5fe97f62c256e543255
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 KB (27371 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e7a71dbfb467a56f9c7dd965d86e26fefebd597638513f740f2175c02f45493`

```dockerfile
```

-	Layers:
	-	`sha256:5b4656cb382c09d8f77f5b4f843ea271fba9b3d83a021b15f4db0582cffe091f`  
		Last Modified: Fri, 24 Jul 2026 19:13:42 GMT  
		Size: 27.4 KB (27371 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.7.1-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:0be2338c2b852ddc18ee42f1ef2789427aaa4718005c01ce2f8a461817dd8797
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.9 MB (248909904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbfb1296b647cfc4ece7f60aa2692aa90d5b31f2faa44711aecfdb73b88e8ade`
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
# Fri, 24 Jul 2026 19:12:43 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 24 Jul 2026 19:12:43 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 24 Jul 2026 19:12:43 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 24 Jul 2026 19:12:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 24 Jul 2026 19:12:43 GMT
ARG REPO_CHANNEL=stable
# Fri, 24 Jul 2026 19:12:43 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 24 Jul 2026 19:12:43 GMT
ARG VERSION=26.7.1.1315
# Fri, 24 Jul 2026 19:12:43 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 24 Jul 2026 19:13:12 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.1.1315 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 24 Jul 2026 19:13:12 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.1.1315 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 24 Jul 2026 19:13:13 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.1.1315 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 24 Jul 2026 19:13:13 GMT
ENV LANG=en_US.UTF-8
# Fri, 24 Jul 2026 19:13:13 GMT
ENV TZ=UTC
# Fri, 24 Jul 2026 19:13:13 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.1.1315 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 24 Jul 2026 19:13:13 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 24 Jul 2026 19:13:13 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 24 Jul 2026 19:13:13 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 24 Jul 2026 19:13:13 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 24 Jul 2026 19:13:13 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 24 Jul 2026 19:13:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0daf26873cf5dc09f145f96bda91c1587f393697dd865e90071f7b0501e11fb`  
		Last Modified: Fri, 24 Jul 2026 19:13:36 GMT  
		Size: 7.5 MB (7536586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f82704ebb5fb46df91e4ce9403d1b061fab2a1d09f6bdcf3229dffdb410e1628`  
		Last Modified: Fri, 24 Jul 2026 19:13:40 GMT  
		Size: 212.9 MB (212890079 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d36ef216dc0715b5dce952671b8dbf1c372ba00a67ffaae5bd898020a9ec9470`  
		Last Modified: Fri, 24 Jul 2026 19:13:35 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d94f31eb9e8a098d95fa1cc3459821972081c32e0c3671bbf1c8a11c2e3910d`  
		Last Modified: Fri, 24 Jul 2026 19:13:36 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22ff86bf74e79e78c414641cf2f35b0bd0a7816c7b56bee8292e40ae50b2a718`  
		Last Modified: Fri, 24 Jul 2026 19:13:37 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5936f93099bec76e9f5d65c30b3a8602434d9c698b3cd5e2be894780550a30b6`  
		Last Modified: Fri, 24 Jul 2026 19:13:37 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba6dbe3b67277ce8a3525a762daafab629fc188839bab5ee25d42b99bf9b4222`  
		Last Modified: Fri, 24 Jul 2026 19:13:37 GMT  
		Size: 3.6 KB (3639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7.1-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:2e8dd04a442ef43fede4bd18765ccb4b6883c12ffe605c9212b761224d0d93b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 KB (27583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:344c49beacf1a27c570673ec4999e2552783b972239ed946ad658860d1c62205`

```dockerfile
```

-	Layers:
	-	`sha256:c1ab2fef18875685ff96d998f988a92ab0d46d3d8493a0efe065b521ca29adf1`  
		Last Modified: Fri, 24 Jul 2026 19:13:35 GMT  
		Size: 27.6 KB (27583 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.7.1.1315`

```console
$ docker pull clickhouse@sha256:0045f3adaf0eb86c8c8629cc1572370b0514f28e804be09f1db0c8ca7730e3cf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.7.1.1315` - linux; amd64

```console
$ docker pull clickhouse@sha256:876d2c45bbf175e7a28d9c976e30a971a4af43f7d0cefcea85404f2f8abe7091
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.6 MB (265608044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85d72d0bda54f383fb36492b0dd6d111a0e89298fe30a916f1e7d29d42eed46a`
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
# Fri, 24 Jul 2026 19:12:45 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 24 Jul 2026 19:12:45 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 24 Jul 2026 19:12:45 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 24 Jul 2026 19:12:45 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 24 Jul 2026 19:12:45 GMT
ARG REPO_CHANNEL=stable
# Fri, 24 Jul 2026 19:12:45 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 24 Jul 2026 19:12:45 GMT
ARG VERSION=26.7.1.1315
# Fri, 24 Jul 2026 19:12:45 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 24 Jul 2026 19:13:14 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.1.1315 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 24 Jul 2026 19:13:14 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.1.1315 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 24 Jul 2026 19:13:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.1.1315 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 24 Jul 2026 19:13:16 GMT
ENV LANG=en_US.UTF-8
# Fri, 24 Jul 2026 19:13:16 GMT
ENV TZ=UTC
# Fri, 24 Jul 2026 19:13:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.1.1315 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 24 Jul 2026 19:13:16 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 24 Jul 2026 19:13:16 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 24 Jul 2026 19:13:16 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 24 Jul 2026 19:13:16 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 24 Jul 2026 19:13:16 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 24 Jul 2026 19:13:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1ebb38a34e782ff0aa0e62db9c29e51ed8ae2055ff6ed06b38f8573bdeee1ea`  
		Last Modified: Fri, 24 Jul 2026 19:13:42 GMT  
		Size: 7.6 MB (7555530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be4716f336a834ba9a327b5284681f118e0e6f82877fb9763d295fb8413c6041`  
		Last Modified: Fri, 24 Jul 2026 19:13:47 GMT  
		Size: 227.4 MB (227443583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d7be5dcf55e0bda67bec96e2e966ca508bff867b6cc7a9c58892ba9d454718a`  
		Last Modified: Fri, 24 Jul 2026 19:13:42 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b011f477a122155376230f8d1d84344f4b19e01013d52d49c69063ad88f8437`  
		Last Modified: Fri, 24 Jul 2026 19:13:42 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed82990358ba1f639b0ef0a04394bbc1d1493345fb3286f2d37ac84a798c8d16`  
		Last Modified: Fri, 24 Jul 2026 19:13:43 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46eb56544a2fe619f0757460df263966e75467f565aff598d75ce410895cc473`  
		Last Modified: Fri, 24 Jul 2026 19:13:43 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dde2b35ede82314485b937c19a503a3ae2632c5e713c2fbd99b8581c602c4b78`  
		Last Modified: Fri, 24 Jul 2026 19:13:44 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7.1.1315` - unknown; unknown

```console
$ docker pull clickhouse@sha256:16d4efc0cbd36fa425e9c6298462ead5ab7464560250c5fe97f62c256e543255
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 KB (27371 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e7a71dbfb467a56f9c7dd965d86e26fefebd597638513f740f2175c02f45493`

```dockerfile
```

-	Layers:
	-	`sha256:5b4656cb382c09d8f77f5b4f843ea271fba9b3d83a021b15f4db0582cffe091f`  
		Last Modified: Fri, 24 Jul 2026 19:13:42 GMT  
		Size: 27.4 KB (27371 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.7.1.1315` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:0be2338c2b852ddc18ee42f1ef2789427aaa4718005c01ce2f8a461817dd8797
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.9 MB (248909904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbfb1296b647cfc4ece7f60aa2692aa90d5b31f2faa44711aecfdb73b88e8ade`
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
# Fri, 24 Jul 2026 19:12:43 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 24 Jul 2026 19:12:43 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 24 Jul 2026 19:12:43 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 24 Jul 2026 19:12:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 24 Jul 2026 19:12:43 GMT
ARG REPO_CHANNEL=stable
# Fri, 24 Jul 2026 19:12:43 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 24 Jul 2026 19:12:43 GMT
ARG VERSION=26.7.1.1315
# Fri, 24 Jul 2026 19:12:43 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 24 Jul 2026 19:13:12 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.1.1315 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 24 Jul 2026 19:13:12 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.1.1315 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 24 Jul 2026 19:13:13 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.1.1315 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 24 Jul 2026 19:13:13 GMT
ENV LANG=en_US.UTF-8
# Fri, 24 Jul 2026 19:13:13 GMT
ENV TZ=UTC
# Fri, 24 Jul 2026 19:13:13 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.1.1315 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 24 Jul 2026 19:13:13 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 24 Jul 2026 19:13:13 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 24 Jul 2026 19:13:13 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 24 Jul 2026 19:13:13 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 24 Jul 2026 19:13:13 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 24 Jul 2026 19:13:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0daf26873cf5dc09f145f96bda91c1587f393697dd865e90071f7b0501e11fb`  
		Last Modified: Fri, 24 Jul 2026 19:13:36 GMT  
		Size: 7.5 MB (7536586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f82704ebb5fb46df91e4ce9403d1b061fab2a1d09f6bdcf3229dffdb410e1628`  
		Last Modified: Fri, 24 Jul 2026 19:13:40 GMT  
		Size: 212.9 MB (212890079 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d36ef216dc0715b5dce952671b8dbf1c372ba00a67ffaae5bd898020a9ec9470`  
		Last Modified: Fri, 24 Jul 2026 19:13:35 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d94f31eb9e8a098d95fa1cc3459821972081c32e0c3671bbf1c8a11c2e3910d`  
		Last Modified: Fri, 24 Jul 2026 19:13:36 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22ff86bf74e79e78c414641cf2f35b0bd0a7816c7b56bee8292e40ae50b2a718`  
		Last Modified: Fri, 24 Jul 2026 19:13:37 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5936f93099bec76e9f5d65c30b3a8602434d9c698b3cd5e2be894780550a30b6`  
		Last Modified: Fri, 24 Jul 2026 19:13:37 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba6dbe3b67277ce8a3525a762daafab629fc188839bab5ee25d42b99bf9b4222`  
		Last Modified: Fri, 24 Jul 2026 19:13:37 GMT  
		Size: 3.6 KB (3639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7.1.1315` - unknown; unknown

```console
$ docker pull clickhouse@sha256:2e8dd04a442ef43fede4bd18765ccb4b6883c12ffe605c9212b761224d0d93b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 KB (27583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:344c49beacf1a27c570673ec4999e2552783b972239ed946ad658860d1c62205`

```dockerfile
```

-	Layers:
	-	`sha256:c1ab2fef18875685ff96d998f988a92ab0d46d3d8493a0efe065b521ca29adf1`  
		Last Modified: Fri, 24 Jul 2026 19:13:35 GMT  
		Size: 27.6 KB (27583 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.7.1.1315-jammy`

```console
$ docker pull clickhouse@sha256:0045f3adaf0eb86c8c8629cc1572370b0514f28e804be09f1db0c8ca7730e3cf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.7.1.1315-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:876d2c45bbf175e7a28d9c976e30a971a4af43f7d0cefcea85404f2f8abe7091
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.6 MB (265608044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85d72d0bda54f383fb36492b0dd6d111a0e89298fe30a916f1e7d29d42eed46a`
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
# Fri, 24 Jul 2026 19:12:45 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 24 Jul 2026 19:12:45 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 24 Jul 2026 19:12:45 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 24 Jul 2026 19:12:45 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 24 Jul 2026 19:12:45 GMT
ARG REPO_CHANNEL=stable
# Fri, 24 Jul 2026 19:12:45 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 24 Jul 2026 19:12:45 GMT
ARG VERSION=26.7.1.1315
# Fri, 24 Jul 2026 19:12:45 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 24 Jul 2026 19:13:14 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.1.1315 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 24 Jul 2026 19:13:14 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.1.1315 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 24 Jul 2026 19:13:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.1.1315 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 24 Jul 2026 19:13:16 GMT
ENV LANG=en_US.UTF-8
# Fri, 24 Jul 2026 19:13:16 GMT
ENV TZ=UTC
# Fri, 24 Jul 2026 19:13:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.1.1315 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 24 Jul 2026 19:13:16 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 24 Jul 2026 19:13:16 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 24 Jul 2026 19:13:16 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 24 Jul 2026 19:13:16 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 24 Jul 2026 19:13:16 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 24 Jul 2026 19:13:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1ebb38a34e782ff0aa0e62db9c29e51ed8ae2055ff6ed06b38f8573bdeee1ea`  
		Last Modified: Fri, 24 Jul 2026 19:13:42 GMT  
		Size: 7.6 MB (7555530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be4716f336a834ba9a327b5284681f118e0e6f82877fb9763d295fb8413c6041`  
		Last Modified: Fri, 24 Jul 2026 19:13:47 GMT  
		Size: 227.4 MB (227443583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d7be5dcf55e0bda67bec96e2e966ca508bff867b6cc7a9c58892ba9d454718a`  
		Last Modified: Fri, 24 Jul 2026 19:13:42 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b011f477a122155376230f8d1d84344f4b19e01013d52d49c69063ad88f8437`  
		Last Modified: Fri, 24 Jul 2026 19:13:42 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed82990358ba1f639b0ef0a04394bbc1d1493345fb3286f2d37ac84a798c8d16`  
		Last Modified: Fri, 24 Jul 2026 19:13:43 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46eb56544a2fe619f0757460df263966e75467f565aff598d75ce410895cc473`  
		Last Modified: Fri, 24 Jul 2026 19:13:43 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dde2b35ede82314485b937c19a503a3ae2632c5e713c2fbd99b8581c602c4b78`  
		Last Modified: Fri, 24 Jul 2026 19:13:44 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7.1.1315-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:16d4efc0cbd36fa425e9c6298462ead5ab7464560250c5fe97f62c256e543255
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 KB (27371 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e7a71dbfb467a56f9c7dd965d86e26fefebd597638513f740f2175c02f45493`

```dockerfile
```

-	Layers:
	-	`sha256:5b4656cb382c09d8f77f5b4f843ea271fba9b3d83a021b15f4db0582cffe091f`  
		Last Modified: Fri, 24 Jul 2026 19:13:42 GMT  
		Size: 27.4 KB (27371 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.7.1.1315-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:0be2338c2b852ddc18ee42f1ef2789427aaa4718005c01ce2f8a461817dd8797
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.9 MB (248909904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbfb1296b647cfc4ece7f60aa2692aa90d5b31f2faa44711aecfdb73b88e8ade`
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
# Fri, 24 Jul 2026 19:12:43 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 24 Jul 2026 19:12:43 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 24 Jul 2026 19:12:43 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 24 Jul 2026 19:12:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 24 Jul 2026 19:12:43 GMT
ARG REPO_CHANNEL=stable
# Fri, 24 Jul 2026 19:12:43 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 24 Jul 2026 19:12:43 GMT
ARG VERSION=26.7.1.1315
# Fri, 24 Jul 2026 19:12:43 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 24 Jul 2026 19:13:12 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.1.1315 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 24 Jul 2026 19:13:12 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.1.1315 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 24 Jul 2026 19:13:13 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.1.1315 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 24 Jul 2026 19:13:13 GMT
ENV LANG=en_US.UTF-8
# Fri, 24 Jul 2026 19:13:13 GMT
ENV TZ=UTC
# Fri, 24 Jul 2026 19:13:13 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.1.1315 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 24 Jul 2026 19:13:13 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 24 Jul 2026 19:13:13 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 24 Jul 2026 19:13:13 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 24 Jul 2026 19:13:13 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 24 Jul 2026 19:13:13 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 24 Jul 2026 19:13:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0daf26873cf5dc09f145f96bda91c1587f393697dd865e90071f7b0501e11fb`  
		Last Modified: Fri, 24 Jul 2026 19:13:36 GMT  
		Size: 7.5 MB (7536586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f82704ebb5fb46df91e4ce9403d1b061fab2a1d09f6bdcf3229dffdb410e1628`  
		Last Modified: Fri, 24 Jul 2026 19:13:40 GMT  
		Size: 212.9 MB (212890079 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d36ef216dc0715b5dce952671b8dbf1c372ba00a67ffaae5bd898020a9ec9470`  
		Last Modified: Fri, 24 Jul 2026 19:13:35 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d94f31eb9e8a098d95fa1cc3459821972081c32e0c3671bbf1c8a11c2e3910d`  
		Last Modified: Fri, 24 Jul 2026 19:13:36 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22ff86bf74e79e78c414641cf2f35b0bd0a7816c7b56bee8292e40ae50b2a718`  
		Last Modified: Fri, 24 Jul 2026 19:13:37 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5936f93099bec76e9f5d65c30b3a8602434d9c698b3cd5e2be894780550a30b6`  
		Last Modified: Fri, 24 Jul 2026 19:13:37 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba6dbe3b67277ce8a3525a762daafab629fc188839bab5ee25d42b99bf9b4222`  
		Last Modified: Fri, 24 Jul 2026 19:13:37 GMT  
		Size: 3.6 KB (3639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7.1.1315-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:2e8dd04a442ef43fede4bd18765ccb4b6883c12ffe605c9212b761224d0d93b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 KB (27583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:344c49beacf1a27c570673ec4999e2552783b972239ed946ad658860d1c62205`

```dockerfile
```

-	Layers:
	-	`sha256:c1ab2fef18875685ff96d998f988a92ab0d46d3d8493a0efe065b521ca29adf1`  
		Last Modified: Fri, 24 Jul 2026 19:13:35 GMT  
		Size: 27.6 KB (27583 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:jammy`

```console
$ docker pull clickhouse@sha256:0045f3adaf0eb86c8c8629cc1572370b0514f28e804be09f1db0c8ca7730e3cf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:876d2c45bbf175e7a28d9c976e30a971a4af43f7d0cefcea85404f2f8abe7091
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.6 MB (265608044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85d72d0bda54f383fb36492b0dd6d111a0e89298fe30a916f1e7d29d42eed46a`
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
# Fri, 24 Jul 2026 19:12:45 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 24 Jul 2026 19:12:45 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 24 Jul 2026 19:12:45 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 24 Jul 2026 19:12:45 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 24 Jul 2026 19:12:45 GMT
ARG REPO_CHANNEL=stable
# Fri, 24 Jul 2026 19:12:45 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 24 Jul 2026 19:12:45 GMT
ARG VERSION=26.7.1.1315
# Fri, 24 Jul 2026 19:12:45 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 24 Jul 2026 19:13:14 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.1.1315 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 24 Jul 2026 19:13:14 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.1.1315 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 24 Jul 2026 19:13:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.1.1315 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 24 Jul 2026 19:13:16 GMT
ENV LANG=en_US.UTF-8
# Fri, 24 Jul 2026 19:13:16 GMT
ENV TZ=UTC
# Fri, 24 Jul 2026 19:13:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.1.1315 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 24 Jul 2026 19:13:16 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 24 Jul 2026 19:13:16 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 24 Jul 2026 19:13:16 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 24 Jul 2026 19:13:16 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 24 Jul 2026 19:13:16 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 24 Jul 2026 19:13:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1ebb38a34e782ff0aa0e62db9c29e51ed8ae2055ff6ed06b38f8573bdeee1ea`  
		Last Modified: Fri, 24 Jul 2026 19:13:42 GMT  
		Size: 7.6 MB (7555530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be4716f336a834ba9a327b5284681f118e0e6f82877fb9763d295fb8413c6041`  
		Last Modified: Fri, 24 Jul 2026 19:13:47 GMT  
		Size: 227.4 MB (227443583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d7be5dcf55e0bda67bec96e2e966ca508bff867b6cc7a9c58892ba9d454718a`  
		Last Modified: Fri, 24 Jul 2026 19:13:42 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b011f477a122155376230f8d1d84344f4b19e01013d52d49c69063ad88f8437`  
		Last Modified: Fri, 24 Jul 2026 19:13:42 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed82990358ba1f639b0ef0a04394bbc1d1493345fb3286f2d37ac84a798c8d16`  
		Last Modified: Fri, 24 Jul 2026 19:13:43 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46eb56544a2fe619f0757460df263966e75467f565aff598d75ce410895cc473`  
		Last Modified: Fri, 24 Jul 2026 19:13:43 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dde2b35ede82314485b937c19a503a3ae2632c5e713c2fbd99b8581c602c4b78`  
		Last Modified: Fri, 24 Jul 2026 19:13:44 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:16d4efc0cbd36fa425e9c6298462ead5ab7464560250c5fe97f62c256e543255
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 KB (27371 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e7a71dbfb467a56f9c7dd965d86e26fefebd597638513f740f2175c02f45493`

```dockerfile
```

-	Layers:
	-	`sha256:5b4656cb382c09d8f77f5b4f843ea271fba9b3d83a021b15f4db0582cffe091f`  
		Last Modified: Fri, 24 Jul 2026 19:13:42 GMT  
		Size: 27.4 KB (27371 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:0be2338c2b852ddc18ee42f1ef2789427aaa4718005c01ce2f8a461817dd8797
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.9 MB (248909904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbfb1296b647cfc4ece7f60aa2692aa90d5b31f2faa44711aecfdb73b88e8ade`
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
# Fri, 24 Jul 2026 19:12:43 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 24 Jul 2026 19:12:43 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 24 Jul 2026 19:12:43 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 24 Jul 2026 19:12:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 24 Jul 2026 19:12:43 GMT
ARG REPO_CHANNEL=stable
# Fri, 24 Jul 2026 19:12:43 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 24 Jul 2026 19:12:43 GMT
ARG VERSION=26.7.1.1315
# Fri, 24 Jul 2026 19:12:43 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 24 Jul 2026 19:13:12 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.1.1315 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 24 Jul 2026 19:13:12 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.1.1315 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 24 Jul 2026 19:13:13 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.1.1315 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 24 Jul 2026 19:13:13 GMT
ENV LANG=en_US.UTF-8
# Fri, 24 Jul 2026 19:13:13 GMT
ENV TZ=UTC
# Fri, 24 Jul 2026 19:13:13 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.1.1315 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 24 Jul 2026 19:13:13 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 24 Jul 2026 19:13:13 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 24 Jul 2026 19:13:13 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 24 Jul 2026 19:13:13 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 24 Jul 2026 19:13:13 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 24 Jul 2026 19:13:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0daf26873cf5dc09f145f96bda91c1587f393697dd865e90071f7b0501e11fb`  
		Last Modified: Fri, 24 Jul 2026 19:13:36 GMT  
		Size: 7.5 MB (7536586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f82704ebb5fb46df91e4ce9403d1b061fab2a1d09f6bdcf3229dffdb410e1628`  
		Last Modified: Fri, 24 Jul 2026 19:13:40 GMT  
		Size: 212.9 MB (212890079 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d36ef216dc0715b5dce952671b8dbf1c372ba00a67ffaae5bd898020a9ec9470`  
		Last Modified: Fri, 24 Jul 2026 19:13:35 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d94f31eb9e8a098d95fa1cc3459821972081c32e0c3671bbf1c8a11c2e3910d`  
		Last Modified: Fri, 24 Jul 2026 19:13:36 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22ff86bf74e79e78c414641cf2f35b0bd0a7816c7b56bee8292e40ae50b2a718`  
		Last Modified: Fri, 24 Jul 2026 19:13:37 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5936f93099bec76e9f5d65c30b3a8602434d9c698b3cd5e2be894780550a30b6`  
		Last Modified: Fri, 24 Jul 2026 19:13:37 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba6dbe3b67277ce8a3525a762daafab629fc188839bab5ee25d42b99bf9b4222`  
		Last Modified: Fri, 24 Jul 2026 19:13:37 GMT  
		Size: 3.6 KB (3639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:2e8dd04a442ef43fede4bd18765ccb4b6883c12ffe605c9212b761224d0d93b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 KB (27583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:344c49beacf1a27c570673ec4999e2552783b972239ed946ad658860d1c62205`

```dockerfile
```

-	Layers:
	-	`sha256:c1ab2fef18875685ff96d998f988a92ab0d46d3d8493a0efe065b521ca29adf1`  
		Last Modified: Fri, 24 Jul 2026 19:13:35 GMT  
		Size: 27.6 KB (27583 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:latest`

```console
$ docker pull clickhouse@sha256:0045f3adaf0eb86c8c8629cc1572370b0514f28e804be09f1db0c8ca7730e3cf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:latest` - linux; amd64

```console
$ docker pull clickhouse@sha256:876d2c45bbf175e7a28d9c976e30a971a4af43f7d0cefcea85404f2f8abe7091
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.6 MB (265608044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85d72d0bda54f383fb36492b0dd6d111a0e89298fe30a916f1e7d29d42eed46a`
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
# Fri, 24 Jul 2026 19:12:45 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 24 Jul 2026 19:12:45 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 24 Jul 2026 19:12:45 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 24 Jul 2026 19:12:45 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 24 Jul 2026 19:12:45 GMT
ARG REPO_CHANNEL=stable
# Fri, 24 Jul 2026 19:12:45 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 24 Jul 2026 19:12:45 GMT
ARG VERSION=26.7.1.1315
# Fri, 24 Jul 2026 19:12:45 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 24 Jul 2026 19:13:14 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.1.1315 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 24 Jul 2026 19:13:14 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.1.1315 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 24 Jul 2026 19:13:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.1.1315 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 24 Jul 2026 19:13:16 GMT
ENV LANG=en_US.UTF-8
# Fri, 24 Jul 2026 19:13:16 GMT
ENV TZ=UTC
# Fri, 24 Jul 2026 19:13:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.1.1315 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 24 Jul 2026 19:13:16 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 24 Jul 2026 19:13:16 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 24 Jul 2026 19:13:16 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 24 Jul 2026 19:13:16 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 24 Jul 2026 19:13:16 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 24 Jul 2026 19:13:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1ebb38a34e782ff0aa0e62db9c29e51ed8ae2055ff6ed06b38f8573bdeee1ea`  
		Last Modified: Fri, 24 Jul 2026 19:13:42 GMT  
		Size: 7.6 MB (7555530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be4716f336a834ba9a327b5284681f118e0e6f82877fb9763d295fb8413c6041`  
		Last Modified: Fri, 24 Jul 2026 19:13:47 GMT  
		Size: 227.4 MB (227443583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d7be5dcf55e0bda67bec96e2e966ca508bff867b6cc7a9c58892ba9d454718a`  
		Last Modified: Fri, 24 Jul 2026 19:13:42 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b011f477a122155376230f8d1d84344f4b19e01013d52d49c69063ad88f8437`  
		Last Modified: Fri, 24 Jul 2026 19:13:42 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed82990358ba1f639b0ef0a04394bbc1d1493345fb3286f2d37ac84a798c8d16`  
		Last Modified: Fri, 24 Jul 2026 19:13:43 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46eb56544a2fe619f0757460df263966e75467f565aff598d75ce410895cc473`  
		Last Modified: Fri, 24 Jul 2026 19:13:43 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dde2b35ede82314485b937c19a503a3ae2632c5e713c2fbd99b8581c602c4b78`  
		Last Modified: Fri, 24 Jul 2026 19:13:44 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:latest` - unknown; unknown

```console
$ docker pull clickhouse@sha256:16d4efc0cbd36fa425e9c6298462ead5ab7464560250c5fe97f62c256e543255
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 KB (27371 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e7a71dbfb467a56f9c7dd965d86e26fefebd597638513f740f2175c02f45493`

```dockerfile
```

-	Layers:
	-	`sha256:5b4656cb382c09d8f77f5b4f843ea271fba9b3d83a021b15f4db0582cffe091f`  
		Last Modified: Fri, 24 Jul 2026 19:13:42 GMT  
		Size: 27.4 KB (27371 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:latest` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:0be2338c2b852ddc18ee42f1ef2789427aaa4718005c01ce2f8a461817dd8797
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.9 MB (248909904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbfb1296b647cfc4ece7f60aa2692aa90d5b31f2faa44711aecfdb73b88e8ade`
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
# Fri, 24 Jul 2026 19:12:43 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 24 Jul 2026 19:12:43 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 24 Jul 2026 19:12:43 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 24 Jul 2026 19:12:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 24 Jul 2026 19:12:43 GMT
ARG REPO_CHANNEL=stable
# Fri, 24 Jul 2026 19:12:43 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 24 Jul 2026 19:12:43 GMT
ARG VERSION=26.7.1.1315
# Fri, 24 Jul 2026 19:12:43 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 24 Jul 2026 19:13:12 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.1.1315 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 24 Jul 2026 19:13:12 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.1.1315 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 24 Jul 2026 19:13:13 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.1.1315 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 24 Jul 2026 19:13:13 GMT
ENV LANG=en_US.UTF-8
# Fri, 24 Jul 2026 19:13:13 GMT
ENV TZ=UTC
# Fri, 24 Jul 2026 19:13:13 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.1.1315 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 24 Jul 2026 19:13:13 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 24 Jul 2026 19:13:13 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 24 Jul 2026 19:13:13 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 24 Jul 2026 19:13:13 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 24 Jul 2026 19:13:13 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 24 Jul 2026 19:13:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0daf26873cf5dc09f145f96bda91c1587f393697dd865e90071f7b0501e11fb`  
		Last Modified: Fri, 24 Jul 2026 19:13:36 GMT  
		Size: 7.5 MB (7536586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f82704ebb5fb46df91e4ce9403d1b061fab2a1d09f6bdcf3229dffdb410e1628`  
		Last Modified: Fri, 24 Jul 2026 19:13:40 GMT  
		Size: 212.9 MB (212890079 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d36ef216dc0715b5dce952671b8dbf1c372ba00a67ffaae5bd898020a9ec9470`  
		Last Modified: Fri, 24 Jul 2026 19:13:35 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d94f31eb9e8a098d95fa1cc3459821972081c32e0c3671bbf1c8a11c2e3910d`  
		Last Modified: Fri, 24 Jul 2026 19:13:36 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22ff86bf74e79e78c414641cf2f35b0bd0a7816c7b56bee8292e40ae50b2a718`  
		Last Modified: Fri, 24 Jul 2026 19:13:37 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5936f93099bec76e9f5d65c30b3a8602434d9c698b3cd5e2be894780550a30b6`  
		Last Modified: Fri, 24 Jul 2026 19:13:37 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba6dbe3b67277ce8a3525a762daafab629fc188839bab5ee25d42b99bf9b4222`  
		Last Modified: Fri, 24 Jul 2026 19:13:37 GMT  
		Size: 3.6 KB (3639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:latest` - unknown; unknown

```console
$ docker pull clickhouse@sha256:2e8dd04a442ef43fede4bd18765ccb4b6883c12ffe605c9212b761224d0d93b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 KB (27583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:344c49beacf1a27c570673ec4999e2552783b972239ed946ad658860d1c62205`

```dockerfile
```

-	Layers:
	-	`sha256:c1ab2fef18875685ff96d998f988a92ab0d46d3d8493a0efe065b521ca29adf1`  
		Last Modified: Fri, 24 Jul 2026 19:13:35 GMT  
		Size: 27.6 KB (27583 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:lts`

```console
$ docker pull clickhouse@sha256:badd3bb0d34055bfa521b7b71bbee92aa7ec0025a90f1a1a5ec49c5b8ee0ba90
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:lts` - linux; amd64

```console
$ docker pull clickhouse@sha256:22a72c5daad2f6cf4ac34ddea56b996b0ccf1ac2b4d8d0089d6ed60a208359fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.3 MB (265290122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a7875e0123516071a9ff35846742e534aba8e4db7b7194d6ff1d61ea5ac67df`
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
# Fri, 24 Jul 2026 19:14:03 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 24 Jul 2026 19:14:03 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 24 Jul 2026 19:14:03 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 24 Jul 2026 19:14:03 GMT
ARG REPO_CHANNEL=stable
# Fri, 24 Jul 2026 19:14:03 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 24 Jul 2026 19:14:03 GMT
ARG VERSION=26.3.17.56
# Fri, 24 Jul 2026 19:14:03 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 24 Jul 2026 19:14:33 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.56 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 24 Jul 2026 19:14:33 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.56 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 24 Jul 2026 19:14:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.56 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 24 Jul 2026 19:14:34 GMT
ENV LANG=en_US.UTF-8
# Fri, 24 Jul 2026 19:14:34 GMT
ENV TZ=UTC
# Fri, 24 Jul 2026 19:14:35 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.56 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 24 Jul 2026 19:14:35 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 24 Jul 2026 19:14:35 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 24 Jul 2026 19:14:35 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 24 Jul 2026 19:14:35 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 24 Jul 2026 19:14:35 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 24 Jul 2026 19:14:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c46cdea8d8758037ce2a9d67ebd5620876d636d770148605aec925432bfeab72`  
		Last Modified: Fri, 24 Jul 2026 19:15:01 GMT  
		Size: 7.6 MB (7555466 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:086bad9cae51b016b4849070f0d6a536a53273d41b99923f5c3157db1b6eedac`  
		Last Modified: Fri, 24 Jul 2026 19:15:06 GMT  
		Size: 227.1 MB (227125724 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4fdc22f872c58722180ea3fb9889d932ed6dc5baf6be7950cf0eb65ad1c6441`  
		Last Modified: Fri, 24 Jul 2026 19:15:00 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08a8b8a7863d0377609e3a4da80d0374714e86ca141f4fec4bfd1bc36b32e377`  
		Last Modified: Fri, 24 Jul 2026 19:15:00 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e01f75dab53f4e13f530cdb2e805fb31442a82a8b8b362a6d6b119fbd9603b51`  
		Last Modified: Fri, 24 Jul 2026 19:15:01 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abae915ed478842491cb967bc18aa56344b692ccb863003c13847164e7809743`  
		Last Modified: Fri, 24 Jul 2026 19:15:02 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dd6214ce9c19cb760f1435a45e9effcfc6165be5e7740514e48420625221e90`  
		Last Modified: Fri, 24 Jul 2026 19:15:02 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:lts` - unknown; unknown

```console
$ docker pull clickhouse@sha256:3cfc0f5d44bc1b523f964c41715b85b7bdd1609fe974faf8438ec4ad0b7fd76b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.8 KB (26847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f54d9daabb48e9775ffb630c5e49a40a013a077c70e4cf906b2587a825fbbdbe`

```dockerfile
```

-	Layers:
	-	`sha256:38d922956ad6e447cfc8e79431ecb9205d7655e99246d020c2df3a039ccba475`  
		Last Modified: Fri, 24 Jul 2026 19:15:00 GMT  
		Size: 26.8 KB (26847 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:lts` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:fbbcc0f7e30c2e43708e26eb5a2eadc7b03c8f87f1341fea312f254ffc49c908
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.7 MB (246726105 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:725de871e9dc2aa21da9cd7ea97357c4d661b3f5e7a5c1be45005246141d6651`
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
# Fri, 24 Jul 2026 19:13:57 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 24 Jul 2026 19:13:57 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 24 Jul 2026 19:13:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 24 Jul 2026 19:13:57 GMT
ARG REPO_CHANNEL=stable
# Fri, 24 Jul 2026 19:13:57 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 24 Jul 2026 19:13:57 GMT
ARG VERSION=26.3.17.56
# Fri, 24 Jul 2026 19:13:57 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 24 Jul 2026 19:14:25 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.56 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 24 Jul 2026 19:14:25 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.56 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 24 Jul 2026 19:14:27 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.56 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 24 Jul 2026 19:14:27 GMT
ENV LANG=en_US.UTF-8
# Fri, 24 Jul 2026 19:14:27 GMT
ENV TZ=UTC
# Fri, 24 Jul 2026 19:14:27 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.56 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 24 Jul 2026 19:14:27 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 24 Jul 2026 19:14:27 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 24 Jul 2026 19:14:27 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 24 Jul 2026 19:14:27 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 24 Jul 2026 19:14:27 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 24 Jul 2026 19:14:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0575cd3d3c3292f3d43d8d92fe378ac6808c000d4e081641f50e3c2dfc5d30da`  
		Last Modified: Fri, 24 Jul 2026 19:14:49 GMT  
		Size: 7.5 MB (7536658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:637c7bd4457de61ef831d42755a306b894c8d11f1ec791602f6269742aeffb4f`  
		Last Modified: Fri, 24 Jul 2026 19:14:54 GMT  
		Size: 210.7 MB (210706213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e197b85b6b3ec250e4b3def5210076f770cb9370e49279d37e27414aaeb55a41`  
		Last Modified: Fri, 24 Jul 2026 19:14:49 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21b88a570cecd0da71f4cae7b78246c9b0cb8fee8831e48fce13c1d36a14b1cb`  
		Last Modified: Fri, 24 Jul 2026 19:14:49 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f1bda088f7e1b9cccf04b7683734e513a1351d90b894c78c744a3596daec71a`  
		Last Modified: Fri, 24 Jul 2026 19:14:50 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e94321bbdd500082e3998178efc4b36b51753013736f75a90cf4befb63c1223a`  
		Last Modified: Fri, 24 Jul 2026 19:14:50 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ac8ee5ac849a6a4a6dcac5911243c540c0ec519b85686ff340d4e788ed52c02`  
		Last Modified: Fri, 24 Jul 2026 19:14:51 GMT  
		Size: 3.6 KB (3636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:lts` - unknown; unknown

```console
$ docker pull clickhouse@sha256:a112c8f4a999d2c0523b38318f1fce11a35807e65d2cad262edf865a2af19718
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.1 KB (27059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e98b62631839317fa936706190cf1629a1aee188f9774a3052221fed2bb8db5`

```dockerfile
```

-	Layers:
	-	`sha256:61203bcb7993a0302600f74d10bccd87a301fef194b6a655be37a4e7df1d55ce`  
		Last Modified: Fri, 24 Jul 2026 19:14:48 GMT  
		Size: 27.1 KB (27059 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:lts-jammy`

```console
$ docker pull clickhouse@sha256:badd3bb0d34055bfa521b7b71bbee92aa7ec0025a90f1a1a5ec49c5b8ee0ba90
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:lts-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:22a72c5daad2f6cf4ac34ddea56b996b0ccf1ac2b4d8d0089d6ed60a208359fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.3 MB (265290122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a7875e0123516071a9ff35846742e534aba8e4db7b7194d6ff1d61ea5ac67df`
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
# Fri, 24 Jul 2026 19:14:03 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 24 Jul 2026 19:14:03 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 24 Jul 2026 19:14:03 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 24 Jul 2026 19:14:03 GMT
ARG REPO_CHANNEL=stable
# Fri, 24 Jul 2026 19:14:03 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 24 Jul 2026 19:14:03 GMT
ARG VERSION=26.3.17.56
# Fri, 24 Jul 2026 19:14:03 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 24 Jul 2026 19:14:33 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.56 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 24 Jul 2026 19:14:33 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.56 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 24 Jul 2026 19:14:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.56 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 24 Jul 2026 19:14:34 GMT
ENV LANG=en_US.UTF-8
# Fri, 24 Jul 2026 19:14:34 GMT
ENV TZ=UTC
# Fri, 24 Jul 2026 19:14:35 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.56 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 24 Jul 2026 19:14:35 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 24 Jul 2026 19:14:35 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 24 Jul 2026 19:14:35 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 24 Jul 2026 19:14:35 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 24 Jul 2026 19:14:35 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 24 Jul 2026 19:14:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c46cdea8d8758037ce2a9d67ebd5620876d636d770148605aec925432bfeab72`  
		Last Modified: Fri, 24 Jul 2026 19:15:01 GMT  
		Size: 7.6 MB (7555466 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:086bad9cae51b016b4849070f0d6a536a53273d41b99923f5c3157db1b6eedac`  
		Last Modified: Fri, 24 Jul 2026 19:15:06 GMT  
		Size: 227.1 MB (227125724 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4fdc22f872c58722180ea3fb9889d932ed6dc5baf6be7950cf0eb65ad1c6441`  
		Last Modified: Fri, 24 Jul 2026 19:15:00 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08a8b8a7863d0377609e3a4da80d0374714e86ca141f4fec4bfd1bc36b32e377`  
		Last Modified: Fri, 24 Jul 2026 19:15:00 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e01f75dab53f4e13f530cdb2e805fb31442a82a8b8b362a6d6b119fbd9603b51`  
		Last Modified: Fri, 24 Jul 2026 19:15:01 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abae915ed478842491cb967bc18aa56344b692ccb863003c13847164e7809743`  
		Last Modified: Fri, 24 Jul 2026 19:15:02 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dd6214ce9c19cb760f1435a45e9effcfc6165be5e7740514e48420625221e90`  
		Last Modified: Fri, 24 Jul 2026 19:15:02 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:lts-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:3cfc0f5d44bc1b523f964c41715b85b7bdd1609fe974faf8438ec4ad0b7fd76b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.8 KB (26847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f54d9daabb48e9775ffb630c5e49a40a013a077c70e4cf906b2587a825fbbdbe`

```dockerfile
```

-	Layers:
	-	`sha256:38d922956ad6e447cfc8e79431ecb9205d7655e99246d020c2df3a039ccba475`  
		Last Modified: Fri, 24 Jul 2026 19:15:00 GMT  
		Size: 26.8 KB (26847 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:lts-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:fbbcc0f7e30c2e43708e26eb5a2eadc7b03c8f87f1341fea312f254ffc49c908
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.7 MB (246726105 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:725de871e9dc2aa21da9cd7ea97357c4d661b3f5e7a5c1be45005246141d6651`
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
# Fri, 24 Jul 2026 19:13:57 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 24 Jul 2026 19:13:57 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 24 Jul 2026 19:13:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 24 Jul 2026 19:13:57 GMT
ARG REPO_CHANNEL=stable
# Fri, 24 Jul 2026 19:13:57 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 24 Jul 2026 19:13:57 GMT
ARG VERSION=26.3.17.56
# Fri, 24 Jul 2026 19:13:57 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 24 Jul 2026 19:14:25 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.56 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 24 Jul 2026 19:14:25 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.56 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 24 Jul 2026 19:14:27 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.56 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 24 Jul 2026 19:14:27 GMT
ENV LANG=en_US.UTF-8
# Fri, 24 Jul 2026 19:14:27 GMT
ENV TZ=UTC
# Fri, 24 Jul 2026 19:14:27 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.56 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 24 Jul 2026 19:14:27 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 24 Jul 2026 19:14:27 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 24 Jul 2026 19:14:27 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 24 Jul 2026 19:14:27 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 24 Jul 2026 19:14:27 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 24 Jul 2026 19:14:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0575cd3d3c3292f3d43d8d92fe378ac6808c000d4e081641f50e3c2dfc5d30da`  
		Last Modified: Fri, 24 Jul 2026 19:14:49 GMT  
		Size: 7.5 MB (7536658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:637c7bd4457de61ef831d42755a306b894c8d11f1ec791602f6269742aeffb4f`  
		Last Modified: Fri, 24 Jul 2026 19:14:54 GMT  
		Size: 210.7 MB (210706213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e197b85b6b3ec250e4b3def5210076f770cb9370e49279d37e27414aaeb55a41`  
		Last Modified: Fri, 24 Jul 2026 19:14:49 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21b88a570cecd0da71f4cae7b78246c9b0cb8fee8831e48fce13c1d36a14b1cb`  
		Last Modified: Fri, 24 Jul 2026 19:14:49 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f1bda088f7e1b9cccf04b7683734e513a1351d90b894c78c744a3596daec71a`  
		Last Modified: Fri, 24 Jul 2026 19:14:50 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e94321bbdd500082e3998178efc4b36b51753013736f75a90cf4befb63c1223a`  
		Last Modified: Fri, 24 Jul 2026 19:14:50 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ac8ee5ac849a6a4a6dcac5911243c540c0ec519b85686ff340d4e788ed52c02`  
		Last Modified: Fri, 24 Jul 2026 19:14:51 GMT  
		Size: 3.6 KB (3636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:lts-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:a112c8f4a999d2c0523b38318f1fce11a35807e65d2cad262edf865a2af19718
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.1 KB (27059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e98b62631839317fa936706190cf1629a1aee188f9774a3052221fed2bb8db5`

```dockerfile
```

-	Layers:
	-	`sha256:61203bcb7993a0302600f74d10bccd87a301fef194b6a655be37a4e7df1d55ce`  
		Last Modified: Fri, 24 Jul 2026 19:14:48 GMT  
		Size: 27.1 KB (27059 bytes)  
		MIME: application/vnd.in-toto+json
