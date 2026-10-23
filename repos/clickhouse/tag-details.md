<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `clickhouse`

-	[`clickhouse:26.3`](#clickhouse263)
-	[`clickhouse:26.3-jammy`](#clickhouse263-jammy)
-	[`clickhouse:26.3.59`](#clickhouse26359)
-	[`clickhouse:26.3.59-jammy`](#clickhouse26359-jammy)
-	[`clickhouse:26.3.59.10`](#clickhouse2635910)
-	[`clickhouse:26.3.59.10-jammy`](#clickhouse2635910-jammy)
-	[`clickhouse:26.7`](#clickhouse267)
-	[`clickhouse:26.7-jammy`](#clickhouse267-jammy)
-	[`clickhouse:26.7.37`](#clickhouse26737)
-	[`clickhouse:26.7.37-jammy`](#clickhouse26737-jammy)
-	[`clickhouse:26.7.37.6`](#clickhouse267376)
-	[`clickhouse:26.7.37.6-jammy`](#clickhouse267376-jammy)
-	[`clickhouse:26.8`](#clickhouse268)
-	[`clickhouse:26.8-jammy`](#clickhouse268-jammy)
-	[`clickhouse:26.8.34`](#clickhouse26834)
-	[`clickhouse:26.8.34-jammy`](#clickhouse26834-jammy)
-	[`clickhouse:26.8.34.13`](#clickhouse2683413)
-	[`clickhouse:26.8.34.13-jammy`](#clickhouse2683413-jammy)
-	[`clickhouse:26.9`](#clickhouse269)
-	[`clickhouse:26.9-jammy`](#clickhouse269-jammy)
-	[`clickhouse:26.9.25`](#clickhouse26925)
-	[`clickhouse:26.9.25-jammy`](#clickhouse26925-jammy)
-	[`clickhouse:26.9.25.15`](#clickhouse2692515)
-	[`clickhouse:26.9.25.15-jammy`](#clickhouse2692515-jammy)
-	[`clickhouse:jammy`](#clickhousejammy)
-	[`clickhouse:latest`](#clickhouselatest)
-	[`clickhouse:lts`](#clickhouselts)
-	[`clickhouse:lts-jammy`](#clickhouselts-jammy)

## `clickhouse:26.3`

```console
$ docker pull clickhouse@sha256:74ea7dc439d751248b2691a3d865af36ea5f2f16f28e0e6e2c8061224be147dd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.3` - linux; amd64

```console
$ docker pull clickhouse@sha256:fd22a488877d311b00d07de1fe0f61b2eaf46e75eb1ebf8d9dae8c69692fcbd5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.0 MB (266982820 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f7cde339ccb8c4a656d9d7a51cf25d6ed5307b30fe60c49daebc0c4efcbffb9`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 02 Oct 2026 10:21:04 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:21:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:21:04 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:21:06 GMT
ADD file:b6c410e935243e5623135210c34358091e8af5ff14851cb0f67195733b55d391 in / 
# Fri, 02 Oct 2026 10:21:06 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:12:27 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Sat, 17 Oct 2026 00:12:27 GMT
ARG apt_archive=http://archive.ubuntu.com
# Sat, 17 Oct 2026 00:12:27 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Sat, 17 Oct 2026 00:12:27 GMT
ARG REPO_CHANNEL=stable
# Sat, 17 Oct 2026 00:12:27 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Sat, 17 Oct 2026 00:12:27 GMT
ARG VERSION=26.3.52.9
# Sat, 17 Oct 2026 00:12:27 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Sat, 17 Oct 2026 00:12:59 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.52.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Sat, 17 Oct 2026 00:12:59 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.52.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Sat, 17 Oct 2026 00:13:01 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.52.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Sat, 17 Oct 2026 00:13:01 GMT
ENV LANG=en_US.UTF-8
# Sat, 17 Oct 2026 00:13:01 GMT
ENV TZ=UTC
# Sat, 17 Oct 2026 00:13:01 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.52.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Sat, 17 Oct 2026 00:13:01 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Sat, 17 Oct 2026 00:13:01 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Sat, 17 Oct 2026 00:13:01 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Sat, 17 Oct 2026 00:13:01 GMT
VOLUME [/var/lib/clickhouse]
# Sat, 17 Oct 2026 00:13:01 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Sat, 17 Oct 2026 00:13:01 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:cf1a5487baaf7d71eb78fd0888933c6cdecb40e59edb896511aa0ef4a896031e`  
		Last Modified: Fri, 02 Oct 2026 11:08:26 GMT  
		Size: 29.8 MB (29752476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:691e33a4a6f7c74fe94f834115f543b33c9c001e7ec3e74dcb841c16c33646ac`  
		Last Modified: Sat, 17 Oct 2026 00:13:27 GMT  
		Size: 7.6 MB (7556514 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d7fac07acb2535bec95300d74365ebee54471e302af3884909f4650c12304cd`  
		Last Modified: Sat, 17 Oct 2026 00:13:31 GMT  
		Size: 228.8 MB (228803779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13148c286a7796206f8cf1266a08d6b0e92877af7bb0b801bd86e291a6fd3661`  
		Last Modified: Sat, 17 Oct 2026 00:13:26 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86363126e68f641d5f912fbf43f5f02a8adb093079114611865059781ee7fa7f`  
		Last Modified: Sat, 17 Oct 2026 00:13:27 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4ac87567302eefc33632685485dab6d31c2413850cd05b9bc692155870c0a76`  
		Last Modified: Sat, 17 Oct 2026 00:13:28 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86e61f558e6e68cb6b44787e79ed940f7039fe834215dcd81850a69bc0747b92`  
		Last Modified: Sat, 17 Oct 2026 00:13:28 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce5f8b0b94919f99e44f07f053e1627db4f07cd49fbba8a77f433470bc7b4ff7`  
		Last Modified: Sat, 17 Oct 2026 00:13:28 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3` - unknown; unknown

```console
$ docker pull clickhouse@sha256:3f11c87b06602016d356c629041ffbc55f13a14ade006245631c7656f315dbc5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:679b102c617aa5251c1a2a7b6dc18471188f2d07e48542c7ffc8bb7127c68063`

```dockerfile
```

-	Layers:
	-	`sha256:8b450c3dd978df62186bd14e2ba00d85621b433e8f68c6c56f6ab10d28f17786`  
		Last Modified: Sat, 17 Oct 2026 00:13:26 GMT  
		Size: 26.2 KB (26224 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.3` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:322aa4afd8ed0fe694b276c7d7a1237427133ed93a51936f2cdd77969d23eb6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.7 MB (248665123 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2360b1722462f56e64aa1d4536a8432b805bf46f6fb660e0eb2c45675c254c6`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 02 Oct 2026 10:22:44 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:22:44 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:22:44 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:22:46 GMT
ADD file:1e8b3941ec802b3e9a687b06bf141aa99b460bda277875ad29712897c6622f25 in / 
# Fri, 02 Oct 2026 10:22:46 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:12:20 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Sat, 17 Oct 2026 00:12:20 GMT
ARG apt_archive=http://archive.ubuntu.com
# Sat, 17 Oct 2026 00:12:20 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Sat, 17 Oct 2026 00:12:20 GMT
ARG REPO_CHANNEL=stable
# Sat, 17 Oct 2026 00:12:20 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Sat, 17 Oct 2026 00:12:20 GMT
ARG VERSION=26.3.52.9
# Sat, 17 Oct 2026 00:12:20 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Sat, 17 Oct 2026 00:12:50 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.52.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Sat, 17 Oct 2026 00:12:50 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.52.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Sat, 17 Oct 2026 00:12:52 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.52.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Sat, 17 Oct 2026 00:12:52 GMT
ENV LANG=en_US.UTF-8
# Sat, 17 Oct 2026 00:12:52 GMT
ENV TZ=UTC
# Sat, 17 Oct 2026 00:12:52 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.52.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Sat, 17 Oct 2026 00:12:52 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Sat, 17 Oct 2026 00:12:52 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Sat, 17 Oct 2026 00:12:52 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Sat, 17 Oct 2026 00:12:52 GMT
VOLUME [/var/lib/clickhouse]
# Sat, 17 Oct 2026 00:12:52 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Sat, 17 Oct 2026 00:12:52 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2908c4fa36d87b4ba1206721a9efe744e0e9b35d1437148222276c744aa6efa0`  
		Last Modified: Fri, 02 Oct 2026 11:08:32 GMT  
		Size: 27.7 MB (27684723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28d9c01e90e1e0bbd0a582b4c2dfe93af6b29b717adb3bbeefb134802bae9916`  
		Last Modified: Sat, 17 Oct 2026 00:13:14 GMT  
		Size: 7.5 MB (7536552 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dce1a873ba76d192fdf36ee65a0e62f38a550f95a64662406c0b0de0fd6415fa`  
		Last Modified: Sat, 17 Oct 2026 00:13:18 GMT  
		Size: 212.6 MB (212573794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1f71076316e882014ae2846275d5e231c3bd6c4317fcaa58d3272e90737b0de`  
		Last Modified: Sat, 17 Oct 2026 00:13:13 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b94fd3d7b804bce1cdd735d1de4ae1f45598c2e200e88d6c538761fe3749fdb`  
		Last Modified: Sat, 17 Oct 2026 00:13:13 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0b41e08ad9e0d83a46353c9ba796e9157944e8350f66cd70ff8e56450ecc889`  
		Last Modified: Sat, 17 Oct 2026 00:13:14 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e07854de29ed52514b7a05ac5375ea6371cff6ee220e6bf18d16f23272ced6b5`  
		Last Modified: Sat, 17 Oct 2026 00:13:15 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4838ba4d209ca657bc00b808ece42b8a24e71972900b7b9604cb659f26cdc112`  
		Last Modified: Sat, 17 Oct 2026 00:13:15 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3` - unknown; unknown

```console
$ docker pull clickhouse@sha256:24282d319240cfaaa9277d8bfaa3adc52928ed4cf8b7cb86c4ffd3e7745ce9ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06be61ad87fa617917dee00d74c80f5e8c5974eee118a34f3da3757a08bd9ada`

```dockerfile
```

-	Layers:
	-	`sha256:8f829f6db5f662d8e2abd549a2ab5e9288e5bc85aca893716d2252c0fa70ba7b`  
		Last Modified: Sat, 17 Oct 2026 00:13:13 GMT  
		Size: 26.4 KB (26411 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.3-jammy`

```console
$ docker pull clickhouse@sha256:74ea7dc439d751248b2691a3d865af36ea5f2f16f28e0e6e2c8061224be147dd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.3-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:fd22a488877d311b00d07de1fe0f61b2eaf46e75eb1ebf8d9dae8c69692fcbd5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.0 MB (266982820 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f7cde339ccb8c4a656d9d7a51cf25d6ed5307b30fe60c49daebc0c4efcbffb9`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 02 Oct 2026 10:21:04 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:21:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:21:04 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:21:06 GMT
ADD file:b6c410e935243e5623135210c34358091e8af5ff14851cb0f67195733b55d391 in / 
# Fri, 02 Oct 2026 10:21:06 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:12:27 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Sat, 17 Oct 2026 00:12:27 GMT
ARG apt_archive=http://archive.ubuntu.com
# Sat, 17 Oct 2026 00:12:27 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Sat, 17 Oct 2026 00:12:27 GMT
ARG REPO_CHANNEL=stable
# Sat, 17 Oct 2026 00:12:27 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Sat, 17 Oct 2026 00:12:27 GMT
ARG VERSION=26.3.52.9
# Sat, 17 Oct 2026 00:12:27 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Sat, 17 Oct 2026 00:12:59 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.52.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Sat, 17 Oct 2026 00:12:59 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.52.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Sat, 17 Oct 2026 00:13:01 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.52.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Sat, 17 Oct 2026 00:13:01 GMT
ENV LANG=en_US.UTF-8
# Sat, 17 Oct 2026 00:13:01 GMT
ENV TZ=UTC
# Sat, 17 Oct 2026 00:13:01 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.52.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Sat, 17 Oct 2026 00:13:01 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Sat, 17 Oct 2026 00:13:01 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Sat, 17 Oct 2026 00:13:01 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Sat, 17 Oct 2026 00:13:01 GMT
VOLUME [/var/lib/clickhouse]
# Sat, 17 Oct 2026 00:13:01 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Sat, 17 Oct 2026 00:13:01 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:cf1a5487baaf7d71eb78fd0888933c6cdecb40e59edb896511aa0ef4a896031e`  
		Last Modified: Fri, 02 Oct 2026 11:08:26 GMT  
		Size: 29.8 MB (29752476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:691e33a4a6f7c74fe94f834115f543b33c9c001e7ec3e74dcb841c16c33646ac`  
		Last Modified: Sat, 17 Oct 2026 00:13:27 GMT  
		Size: 7.6 MB (7556514 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d7fac07acb2535bec95300d74365ebee54471e302af3884909f4650c12304cd`  
		Last Modified: Sat, 17 Oct 2026 00:13:31 GMT  
		Size: 228.8 MB (228803779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13148c286a7796206f8cf1266a08d6b0e92877af7bb0b801bd86e291a6fd3661`  
		Last Modified: Sat, 17 Oct 2026 00:13:26 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86363126e68f641d5f912fbf43f5f02a8adb093079114611865059781ee7fa7f`  
		Last Modified: Sat, 17 Oct 2026 00:13:27 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4ac87567302eefc33632685485dab6d31c2413850cd05b9bc692155870c0a76`  
		Last Modified: Sat, 17 Oct 2026 00:13:28 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86e61f558e6e68cb6b44787e79ed940f7039fe834215dcd81850a69bc0747b92`  
		Last Modified: Sat, 17 Oct 2026 00:13:28 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce5f8b0b94919f99e44f07f053e1627db4f07cd49fbba8a77f433470bc7b4ff7`  
		Last Modified: Sat, 17 Oct 2026 00:13:28 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:3f11c87b06602016d356c629041ffbc55f13a14ade006245631c7656f315dbc5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:679b102c617aa5251c1a2a7b6dc18471188f2d07e48542c7ffc8bb7127c68063`

```dockerfile
```

-	Layers:
	-	`sha256:8b450c3dd978df62186bd14e2ba00d85621b433e8f68c6c56f6ab10d28f17786`  
		Last Modified: Sat, 17 Oct 2026 00:13:26 GMT  
		Size: 26.2 KB (26224 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.3-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:322aa4afd8ed0fe694b276c7d7a1237427133ed93a51936f2cdd77969d23eb6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.7 MB (248665123 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2360b1722462f56e64aa1d4536a8432b805bf46f6fb660e0eb2c45675c254c6`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 02 Oct 2026 10:22:44 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:22:44 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:22:44 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:22:46 GMT
ADD file:1e8b3941ec802b3e9a687b06bf141aa99b460bda277875ad29712897c6622f25 in / 
# Fri, 02 Oct 2026 10:22:46 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:12:20 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Sat, 17 Oct 2026 00:12:20 GMT
ARG apt_archive=http://archive.ubuntu.com
# Sat, 17 Oct 2026 00:12:20 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Sat, 17 Oct 2026 00:12:20 GMT
ARG REPO_CHANNEL=stable
# Sat, 17 Oct 2026 00:12:20 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Sat, 17 Oct 2026 00:12:20 GMT
ARG VERSION=26.3.52.9
# Sat, 17 Oct 2026 00:12:20 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Sat, 17 Oct 2026 00:12:50 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.52.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Sat, 17 Oct 2026 00:12:50 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.52.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Sat, 17 Oct 2026 00:12:52 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.52.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Sat, 17 Oct 2026 00:12:52 GMT
ENV LANG=en_US.UTF-8
# Sat, 17 Oct 2026 00:12:52 GMT
ENV TZ=UTC
# Sat, 17 Oct 2026 00:12:52 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.52.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Sat, 17 Oct 2026 00:12:52 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Sat, 17 Oct 2026 00:12:52 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Sat, 17 Oct 2026 00:12:52 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Sat, 17 Oct 2026 00:12:52 GMT
VOLUME [/var/lib/clickhouse]
# Sat, 17 Oct 2026 00:12:52 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Sat, 17 Oct 2026 00:12:52 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2908c4fa36d87b4ba1206721a9efe744e0e9b35d1437148222276c744aa6efa0`  
		Last Modified: Fri, 02 Oct 2026 11:08:32 GMT  
		Size: 27.7 MB (27684723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28d9c01e90e1e0bbd0a582b4c2dfe93af6b29b717adb3bbeefb134802bae9916`  
		Last Modified: Sat, 17 Oct 2026 00:13:14 GMT  
		Size: 7.5 MB (7536552 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dce1a873ba76d192fdf36ee65a0e62f38a550f95a64662406c0b0de0fd6415fa`  
		Last Modified: Sat, 17 Oct 2026 00:13:18 GMT  
		Size: 212.6 MB (212573794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1f71076316e882014ae2846275d5e231c3bd6c4317fcaa58d3272e90737b0de`  
		Last Modified: Sat, 17 Oct 2026 00:13:13 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b94fd3d7b804bce1cdd735d1de4ae1f45598c2e200e88d6c538761fe3749fdb`  
		Last Modified: Sat, 17 Oct 2026 00:13:13 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0b41e08ad9e0d83a46353c9ba796e9157944e8350f66cd70ff8e56450ecc889`  
		Last Modified: Sat, 17 Oct 2026 00:13:14 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e07854de29ed52514b7a05ac5375ea6371cff6ee220e6bf18d16f23272ced6b5`  
		Last Modified: Sat, 17 Oct 2026 00:13:15 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4838ba4d209ca657bc00b808ece42b8a24e71972900b7b9604cb659f26cdc112`  
		Last Modified: Sat, 17 Oct 2026 00:13:15 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:24282d319240cfaaa9277d8bfaa3adc52928ed4cf8b7cb86c4ffd3e7745ce9ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06be61ad87fa617917dee00d74c80f5e8c5974eee118a34f3da3757a08bd9ada`

```dockerfile
```

-	Layers:
	-	`sha256:8f829f6db5f662d8e2abd549a2ab5e9288e5bc85aca893716d2252c0fa70ba7b`  
		Last Modified: Sat, 17 Oct 2026 00:13:13 GMT  
		Size: 26.4 KB (26411 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.3.59`

**does not exist** (yet?)

## `clickhouse:26.3.59-jammy`

**does not exist** (yet?)

## `clickhouse:26.3.59.10`

**does not exist** (yet?)

## `clickhouse:26.3.59.10-jammy`

**does not exist** (yet?)

## `clickhouse:26.7`

```console
$ docker pull clickhouse@sha256:5d589e73ac09de2956631174cedac20ab9b2f22d4b75666c46538e776df67bac
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.7` - linux; amd64

```console
$ docker pull clickhouse@sha256:d822ac697c6ccfe044765a9955a0b96ae7fcd19b177f44f22ac08286d35a704a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.4 MB (268369124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:836f79dfa0d6a681359a8e7bb94406b1d4e155f39aa355833c30b411957fde37`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 02 Oct 2026 10:21:04 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:21:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:21:04 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:21:06 GMT
ADD file:b6c410e935243e5623135210c34358091e8af5ff14851cb0f67195733b55d391 in / 
# Fri, 02 Oct 2026 10:21:06 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:12:40 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Sat, 17 Oct 2026 00:12:40 GMT
ARG apt_archive=http://archive.ubuntu.com
# Sat, 17 Oct 2026 00:12:40 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Sat, 17 Oct 2026 00:12:40 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Sat, 17 Oct 2026 00:12:40 GMT
ARG REPO_CHANNEL=stable
# Sat, 17 Oct 2026 00:12:40 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Sat, 17 Oct 2026 00:12:40 GMT
ARG VERSION=26.7.31.12
# Sat, 17 Oct 2026 00:12:40 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Sat, 17 Oct 2026 00:13:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.31.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Sat, 17 Oct 2026 00:13:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.31.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Sat, 17 Oct 2026 00:13:17 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.31.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Sat, 17 Oct 2026 00:13:17 GMT
ENV LANG=en_US.UTF-8
# Sat, 17 Oct 2026 00:13:17 GMT
ENV TZ=UTC
# Sat, 17 Oct 2026 00:13:17 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.31.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Sat, 17 Oct 2026 00:13:17 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Sat, 17 Oct 2026 00:13:17 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Sat, 17 Oct 2026 00:13:17 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Sat, 17 Oct 2026 00:13:17 GMT
VOLUME [/var/lib/clickhouse]
# Sat, 17 Oct 2026 00:13:17 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Sat, 17 Oct 2026 00:13:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:cf1a5487baaf7d71eb78fd0888933c6cdecb40e59edb896511aa0ef4a896031e`  
		Last Modified: Fri, 02 Oct 2026 11:08:26 GMT  
		Size: 29.8 MB (29752476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:391ab4580369d684e8e079d8cebb22e7002f3dba4f0703a4dd52fe724a91363c`  
		Last Modified: Sat, 17 Oct 2026 00:13:44 GMT  
		Size: 7.6 MB (7556543 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c811eb3157a9437541c37d4440764e591c5356cb17b455c208d454f92d5dbedd`  
		Last Modified: Sat, 17 Oct 2026 00:13:47 GMT  
		Size: 230.2 MB (230190052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f841986c9e5059a70537bc5173fa9422c1ecfecf3d7e53e787425ae45aa9f0b`  
		Last Modified: Sat, 17 Oct 2026 00:13:43 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:368370851580979e2aa3ac7dc03469f8d89c44864e579c5782b5889edca50332`  
		Last Modified: Sat, 17 Oct 2026 00:13:43 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:575d3402aba049055a436f222942e07f740ea9b6323a5736e78aa6544327e656`  
		Last Modified: Sat, 17 Oct 2026 00:13:44 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6920a138fcdd03e707c267d66348214b73356c152126194edf31d6ec157ff04a`  
		Last Modified: Sat, 17 Oct 2026 00:13:45 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd8eda58741279b101ba859493ec84ebb4621a480fd1e028affaeb31deccc03c`  
		Last Modified: Sat, 17 Oct 2026 00:13:45 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7` - unknown; unknown

```console
$ docker pull clickhouse@sha256:b9124140f2273f8394c81f3a555d82145cff7e0c4f5b7f142eb1a070c2986add
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.8 KB (26754 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bdd6d948e91617e695a04db746e05034a47a5b91c3637509f795d8fe6918e06`

```dockerfile
```

-	Layers:
	-	`sha256:292480a5aa53b1b4baee159bcea0bcf99ec2c0a29f486c542aa68f191d83fb82`  
		Last Modified: Sat, 17 Oct 2026 00:13:43 GMT  
		Size: 26.8 KB (26754 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.7` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:e5a57ea2073b7cd90282713bb85488967f70114291cb90fd63892a4938405916
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.7 MB (251719492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb90e72554374bc8ba02fd45296535e07eb4f21bfdf27a034d10f1d42e164e13`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 02 Oct 2026 10:22:44 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:22:44 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:22:44 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:22:46 GMT
ADD file:1e8b3941ec802b3e9a687b06bf141aa99b460bda277875ad29712897c6622f25 in / 
# Fri, 02 Oct 2026 10:22:46 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:12:22 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Sat, 17 Oct 2026 00:12:22 GMT
ARG apt_archive=http://archive.ubuntu.com
# Sat, 17 Oct 2026 00:12:22 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Sat, 17 Oct 2026 00:12:22 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Sat, 17 Oct 2026 00:12:22 GMT
ARG REPO_CHANNEL=stable
# Sat, 17 Oct 2026 00:12:22 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Sat, 17 Oct 2026 00:12:22 GMT
ARG VERSION=26.7.31.12
# Sat, 17 Oct 2026 00:12:22 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Sat, 17 Oct 2026 00:12:54 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.31.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Sat, 17 Oct 2026 00:12:54 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.31.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Sat, 17 Oct 2026 00:12:55 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.31.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Sat, 17 Oct 2026 00:12:55 GMT
ENV LANG=en_US.UTF-8
# Sat, 17 Oct 2026 00:12:55 GMT
ENV TZ=UTC
# Sat, 17 Oct 2026 00:12:55 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.31.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Sat, 17 Oct 2026 00:12:55 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Sat, 17 Oct 2026 00:12:55 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Sat, 17 Oct 2026 00:12:55 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Sat, 17 Oct 2026 00:12:55 GMT
VOLUME [/var/lib/clickhouse]
# Sat, 17 Oct 2026 00:12:55 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Sat, 17 Oct 2026 00:12:55 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2908c4fa36d87b4ba1206721a9efe744e0e9b35d1437148222276c744aa6efa0`  
		Last Modified: Fri, 02 Oct 2026 11:08:32 GMT  
		Size: 27.7 MB (27684723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1a5cd1de6da86b80753d0f93fe5a75c687f8d484036fa7631877b2b68247033`  
		Last Modified: Sat, 17 Oct 2026 00:13:18 GMT  
		Size: 7.5 MB (7536474 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aeeed8dd05fbc88d1a98837f6332512ffa542d7bcfabf17430c8736b05b2337c`  
		Last Modified: Sat, 17 Oct 2026 00:13:22 GMT  
		Size: 215.6 MB (215628242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c7dbf95792db81bf6ba8835b598f74c141c042265708ec7cc665f1f40ce645c`  
		Last Modified: Sat, 17 Oct 2026 00:13:17 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:914389cccd7ad3736651b6435803356cdd284d127b34d8fdf78d4133a4c858bf`  
		Last Modified: Sat, 17 Oct 2026 00:13:17 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e764a70af498d7086ae383a7158bfefdee89d1f2d03698389a2981a612dac0e8`  
		Last Modified: Sat, 17 Oct 2026 00:13:18 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df06c7a39987d3cf883dd30eb52842213270c85637cc4a1edf5494a4649e24ed`  
		Last Modified: Sat, 17 Oct 2026 00:13:19 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e19cd74ad5e6334806de75034995adc5e21a78169b3f004f9d73cc271841b8c0`  
		Last Modified: Sat, 17 Oct 2026 00:13:19 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7` - unknown; unknown

```console
$ docker pull clickhouse@sha256:760a6f8a6e65c38d0cdabaf9227337cbde5ecba61f51bf05fcca31522a30a5d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.9 KB (26942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b77991ad3907090f7fd8586008e71851604971736419d88a4fc203b2af6c456`

```dockerfile
```

-	Layers:
	-	`sha256:986127edb4d62737cbd34b021e918d4b05fc4c5133bb22c3ae4c51a63c490308`  
		Last Modified: Sat, 17 Oct 2026 00:13:17 GMT  
		Size: 26.9 KB (26942 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.7-jammy`

```console
$ docker pull clickhouse@sha256:5d589e73ac09de2956631174cedac20ab9b2f22d4b75666c46538e776df67bac
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.7-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:d822ac697c6ccfe044765a9955a0b96ae7fcd19b177f44f22ac08286d35a704a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.4 MB (268369124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:836f79dfa0d6a681359a8e7bb94406b1d4e155f39aa355833c30b411957fde37`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 02 Oct 2026 10:21:04 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:21:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:21:04 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:21:06 GMT
ADD file:b6c410e935243e5623135210c34358091e8af5ff14851cb0f67195733b55d391 in / 
# Fri, 02 Oct 2026 10:21:06 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:12:40 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Sat, 17 Oct 2026 00:12:40 GMT
ARG apt_archive=http://archive.ubuntu.com
# Sat, 17 Oct 2026 00:12:40 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Sat, 17 Oct 2026 00:12:40 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Sat, 17 Oct 2026 00:12:40 GMT
ARG REPO_CHANNEL=stable
# Sat, 17 Oct 2026 00:12:40 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Sat, 17 Oct 2026 00:12:40 GMT
ARG VERSION=26.7.31.12
# Sat, 17 Oct 2026 00:12:40 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Sat, 17 Oct 2026 00:13:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.31.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Sat, 17 Oct 2026 00:13:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.31.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Sat, 17 Oct 2026 00:13:17 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.31.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Sat, 17 Oct 2026 00:13:17 GMT
ENV LANG=en_US.UTF-8
# Sat, 17 Oct 2026 00:13:17 GMT
ENV TZ=UTC
# Sat, 17 Oct 2026 00:13:17 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.31.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Sat, 17 Oct 2026 00:13:17 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Sat, 17 Oct 2026 00:13:17 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Sat, 17 Oct 2026 00:13:17 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Sat, 17 Oct 2026 00:13:17 GMT
VOLUME [/var/lib/clickhouse]
# Sat, 17 Oct 2026 00:13:17 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Sat, 17 Oct 2026 00:13:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:cf1a5487baaf7d71eb78fd0888933c6cdecb40e59edb896511aa0ef4a896031e`  
		Last Modified: Fri, 02 Oct 2026 11:08:26 GMT  
		Size: 29.8 MB (29752476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:391ab4580369d684e8e079d8cebb22e7002f3dba4f0703a4dd52fe724a91363c`  
		Last Modified: Sat, 17 Oct 2026 00:13:44 GMT  
		Size: 7.6 MB (7556543 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c811eb3157a9437541c37d4440764e591c5356cb17b455c208d454f92d5dbedd`  
		Last Modified: Sat, 17 Oct 2026 00:13:47 GMT  
		Size: 230.2 MB (230190052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f841986c9e5059a70537bc5173fa9422c1ecfecf3d7e53e787425ae45aa9f0b`  
		Last Modified: Sat, 17 Oct 2026 00:13:43 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:368370851580979e2aa3ac7dc03469f8d89c44864e579c5782b5889edca50332`  
		Last Modified: Sat, 17 Oct 2026 00:13:43 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:575d3402aba049055a436f222942e07f740ea9b6323a5736e78aa6544327e656`  
		Last Modified: Sat, 17 Oct 2026 00:13:44 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6920a138fcdd03e707c267d66348214b73356c152126194edf31d6ec157ff04a`  
		Last Modified: Sat, 17 Oct 2026 00:13:45 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd8eda58741279b101ba859493ec84ebb4621a480fd1e028affaeb31deccc03c`  
		Last Modified: Sat, 17 Oct 2026 00:13:45 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:b9124140f2273f8394c81f3a555d82145cff7e0c4f5b7f142eb1a070c2986add
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.8 KB (26754 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bdd6d948e91617e695a04db746e05034a47a5b91c3637509f795d8fe6918e06`

```dockerfile
```

-	Layers:
	-	`sha256:292480a5aa53b1b4baee159bcea0bcf99ec2c0a29f486c542aa68f191d83fb82`  
		Last Modified: Sat, 17 Oct 2026 00:13:43 GMT  
		Size: 26.8 KB (26754 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.7-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:e5a57ea2073b7cd90282713bb85488967f70114291cb90fd63892a4938405916
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.7 MB (251719492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb90e72554374bc8ba02fd45296535e07eb4f21bfdf27a034d10f1d42e164e13`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 02 Oct 2026 10:22:44 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:22:44 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:22:44 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:22:46 GMT
ADD file:1e8b3941ec802b3e9a687b06bf141aa99b460bda277875ad29712897c6622f25 in / 
# Fri, 02 Oct 2026 10:22:46 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:12:22 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Sat, 17 Oct 2026 00:12:22 GMT
ARG apt_archive=http://archive.ubuntu.com
# Sat, 17 Oct 2026 00:12:22 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Sat, 17 Oct 2026 00:12:22 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Sat, 17 Oct 2026 00:12:22 GMT
ARG REPO_CHANNEL=stable
# Sat, 17 Oct 2026 00:12:22 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Sat, 17 Oct 2026 00:12:22 GMT
ARG VERSION=26.7.31.12
# Sat, 17 Oct 2026 00:12:22 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Sat, 17 Oct 2026 00:12:54 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.31.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Sat, 17 Oct 2026 00:12:54 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.31.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Sat, 17 Oct 2026 00:12:55 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.31.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Sat, 17 Oct 2026 00:12:55 GMT
ENV LANG=en_US.UTF-8
# Sat, 17 Oct 2026 00:12:55 GMT
ENV TZ=UTC
# Sat, 17 Oct 2026 00:12:55 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.31.12 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Sat, 17 Oct 2026 00:12:55 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Sat, 17 Oct 2026 00:12:55 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Sat, 17 Oct 2026 00:12:55 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Sat, 17 Oct 2026 00:12:55 GMT
VOLUME [/var/lib/clickhouse]
# Sat, 17 Oct 2026 00:12:55 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Sat, 17 Oct 2026 00:12:55 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2908c4fa36d87b4ba1206721a9efe744e0e9b35d1437148222276c744aa6efa0`  
		Last Modified: Fri, 02 Oct 2026 11:08:32 GMT  
		Size: 27.7 MB (27684723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1a5cd1de6da86b80753d0f93fe5a75c687f8d484036fa7631877b2b68247033`  
		Last Modified: Sat, 17 Oct 2026 00:13:18 GMT  
		Size: 7.5 MB (7536474 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aeeed8dd05fbc88d1a98837f6332512ffa542d7bcfabf17430c8736b05b2337c`  
		Last Modified: Sat, 17 Oct 2026 00:13:22 GMT  
		Size: 215.6 MB (215628242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c7dbf95792db81bf6ba8835b598f74c141c042265708ec7cc665f1f40ce645c`  
		Last Modified: Sat, 17 Oct 2026 00:13:17 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:914389cccd7ad3736651b6435803356cdd284d127b34d8fdf78d4133a4c858bf`  
		Last Modified: Sat, 17 Oct 2026 00:13:17 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e764a70af498d7086ae383a7158bfefdee89d1f2d03698389a2981a612dac0e8`  
		Last Modified: Sat, 17 Oct 2026 00:13:18 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df06c7a39987d3cf883dd30eb52842213270c85637cc4a1edf5494a4649e24ed`  
		Last Modified: Sat, 17 Oct 2026 00:13:19 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e19cd74ad5e6334806de75034995adc5e21a78169b3f004f9d73cc271841b8c0`  
		Last Modified: Sat, 17 Oct 2026 00:13:19 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:760a6f8a6e65c38d0cdabaf9227337cbde5ecba61f51bf05fcca31522a30a5d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.9 KB (26942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b77991ad3907090f7fd8586008e71851604971736419d88a4fc203b2af6c456`

```dockerfile
```

-	Layers:
	-	`sha256:986127edb4d62737cbd34b021e918d4b05fc4c5133bb22c3ae4c51a63c490308`  
		Last Modified: Sat, 17 Oct 2026 00:13:17 GMT  
		Size: 26.9 KB (26942 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.7.37`

**does not exist** (yet?)

## `clickhouse:26.7.37-jammy`

**does not exist** (yet?)

## `clickhouse:26.7.37.6`

**does not exist** (yet?)

## `clickhouse:26.7.37.6-jammy`

**does not exist** (yet?)

## `clickhouse:26.8`

```console
$ docker pull clickhouse@sha256:caa00dbfff2eaf3e2537c93c5167d7ff38a943a2986e0625d1977d90b78d0109
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.8` - linux; amd64

```console
$ docker pull clickhouse@sha256:04469b1c0ccd2b118c22a6ffb543d15e750d7f366be1da65f702c905a2fab6b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.7 MB (279720761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4dc632cafd00a648afcfa19436e57344c3ade6202449b50622877729996656a`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 02 Oct 2026 10:21:04 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:21:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:21:04 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:21:06 GMT
ADD file:b6c410e935243e5623135210c34358091e8af5ff14851cb0f67195733b55d391 in / 
# Fri, 02 Oct 2026 10:21:06 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:12:08 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Sat, 17 Oct 2026 00:12:08 GMT
ARG apt_archive=http://archive.ubuntu.com
# Sat, 17 Oct 2026 00:12:08 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Sat, 17 Oct 2026 00:12:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Sat, 17 Oct 2026 00:12:08 GMT
ARG REPO_CHANNEL=stable
# Sat, 17 Oct 2026 00:12:08 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Sat, 17 Oct 2026 00:12:08 GMT
ARG VERSION=26.8.28.14
# Sat, 17 Oct 2026 00:12:08 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Sat, 17 Oct 2026 00:12:40 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.28.14 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Sat, 17 Oct 2026 00:12:40 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.28.14 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Sat, 17 Oct 2026 00:12:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.28.14 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Sat, 17 Oct 2026 00:12:41 GMT
ENV LANG=en_US.UTF-8
# Sat, 17 Oct 2026 00:12:41 GMT
ENV TZ=UTC
# Sat, 17 Oct 2026 00:12:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.28.14 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Sat, 17 Oct 2026 00:12:41 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Sat, 17 Oct 2026 00:12:41 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Sat, 17 Oct 2026 00:12:41 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Sat, 17 Oct 2026 00:12:41 GMT
VOLUME [/var/lib/clickhouse]
# Sat, 17 Oct 2026 00:12:41 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Sat, 17 Oct 2026 00:12:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:cf1a5487baaf7d71eb78fd0888933c6cdecb40e59edb896511aa0ef4a896031e`  
		Last Modified: Fri, 02 Oct 2026 11:08:26 GMT  
		Size: 29.8 MB (29752476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bafe8aba567e8b17028e2cec8be12d47ead77cadc95bbd97c78d352e373461a4`  
		Last Modified: Sat, 17 Oct 2026 00:13:07 GMT  
		Size: 7.6 MB (7556522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1528e4083cf0fac764711ddc2812eb2cd527a481cd08bd61f9ee43d08687abe`  
		Last Modified: Sat, 17 Oct 2026 00:13:11 GMT  
		Size: 241.5 MB (241541712 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf0df57fbbf28c2d9260966bd9aec729ea45d02050542a54d7d138a2335e32b1`  
		Last Modified: Sat, 17 Oct 2026 00:13:07 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb494e93e248fa9919cdda8eb53ef51fba1fd36f3659bda2ec970f6bea89ef8e`  
		Last Modified: Sat, 17 Oct 2026 00:13:07 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c5fc5bfc78aa87a7aba2d29f49b71a107ee4a14f5a9436899df5d4c1bc2040d`  
		Last Modified: Sat, 17 Oct 2026 00:13:08 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8b2a7cdeba446b82074d92dd2c57367721c9601a466df8dd04743ff3a1fb46d`  
		Last Modified: Sat, 17 Oct 2026 00:13:08 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e360127aa007f3090e0f208ac159b07c67270ee3fa46041b551c908c65b6ac7`  
		Last Modified: Sat, 17 Oct 2026 00:13:09 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8` - unknown; unknown

```console
$ docker pull clickhouse@sha256:9fbe0332c79471eba582177b1d792c9f00f8d2d6ede78a6143fac9307d9f87a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 KB (27366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7217cee86dd6c843f5da9f88a7fb248a5fc1b0e4ba9b5128e0e75c794072ac0c`

```dockerfile
```

-	Layers:
	-	`sha256:d2a39ccf20e930df270307c5c2694a69db42d7e93b7e8a0b9ad088458424bbe1`  
		Last Modified: Sat, 17 Oct 2026 00:13:07 GMT  
		Size: 27.4 KB (27366 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.8` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:ecda2be415929e60b2bc52ae0b5f9959f0455e64f351c4d1a041b3a5e4a32117
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.7 MB (262731625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9caeb22daa9415663d8280c1067ac2ecebc66ef7163bab7e23cab4dabfdbfa90`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 02 Oct 2026 10:22:44 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:22:44 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:22:44 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:22:46 GMT
ADD file:1e8b3941ec802b3e9a687b06bf141aa99b460bda277875ad29712897c6622f25 in / 
# Fri, 02 Oct 2026 10:22:46 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:12:21 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Sat, 17 Oct 2026 00:12:21 GMT
ARG apt_archive=http://archive.ubuntu.com
# Sat, 17 Oct 2026 00:12:21 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Sat, 17 Oct 2026 00:12:21 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Sat, 17 Oct 2026 00:12:21 GMT
ARG REPO_CHANNEL=stable
# Sat, 17 Oct 2026 00:12:21 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Sat, 17 Oct 2026 00:12:21 GMT
ARG VERSION=26.8.28.14
# Sat, 17 Oct 2026 00:12:21 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Sat, 17 Oct 2026 00:12:50 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.28.14 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Sat, 17 Oct 2026 00:12:50 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.28.14 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Sat, 17 Oct 2026 00:12:51 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.28.14 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Sat, 17 Oct 2026 00:12:51 GMT
ENV LANG=en_US.UTF-8
# Sat, 17 Oct 2026 00:12:51 GMT
ENV TZ=UTC
# Sat, 17 Oct 2026 00:12:52 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.28.14 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Sat, 17 Oct 2026 00:12:52 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Sat, 17 Oct 2026 00:12:52 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Sat, 17 Oct 2026 00:12:52 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Sat, 17 Oct 2026 00:12:52 GMT
VOLUME [/var/lib/clickhouse]
# Sat, 17 Oct 2026 00:12:52 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Sat, 17 Oct 2026 00:12:52 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2908c4fa36d87b4ba1206721a9efe744e0e9b35d1437148222276c744aa6efa0`  
		Last Modified: Fri, 02 Oct 2026 11:08:32 GMT  
		Size: 27.7 MB (27684723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41a7727cea245628427ae50ba9caec2a3195f720d50f3618b63a999d8ed09723`  
		Last Modified: Sat, 17 Oct 2026 00:13:14 GMT  
		Size: 7.5 MB (7536529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a84e1f71ce4b55ecad391eaf105e616aa2d6a3ad5982bd870b3679818667efd`  
		Last Modified: Sat, 17 Oct 2026 00:13:18 GMT  
		Size: 226.6 MB (226640320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1f71076316e882014ae2846275d5e231c3bd6c4317fcaa58d3272e90737b0de`  
		Last Modified: Sat, 17 Oct 2026 00:13:13 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89f2d230aa985cc9afd997ff1b68a333bcc380559d765c013d32850774d3c682`  
		Last Modified: Sat, 17 Oct 2026 00:13:14 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9856e092a73a751e91e7f6f6a947a7539c4049063670e7e59249f438445eea2d`  
		Last Modified: Sat, 17 Oct 2026 00:13:15 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95319c5f685ae280da26718ae9ade3106d368fefe97685e42e111b597ec4d64d`  
		Last Modified: Sat, 17 Oct 2026 00:13:15 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14cc2b9fbd2233c0593850f7cc070d24b2fbfdc6be69695824cdaadf45a03211`  
		Last Modified: Sat, 17 Oct 2026 00:13:15 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8` - unknown; unknown

```console
$ docker pull clickhouse@sha256:0bf56aa73cd5bee846d3cb4a578125b6d5a5a3c4a551174d89836ee0be6f0957
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 KB (27578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2ee3beba21b4866ecc0a997b36d2b7838abe34f86e524f4191f8599989e7d7f`

```dockerfile
```

-	Layers:
	-	`sha256:55d2a3d017b4545f63897bf911d49e05ccf764c1f946e4437502bec1894a030f`  
		Last Modified: Sat, 17 Oct 2026 00:13:14 GMT  
		Size: 27.6 KB (27578 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.8-jammy`

```console
$ docker pull clickhouse@sha256:caa00dbfff2eaf3e2537c93c5167d7ff38a943a2986e0625d1977d90b78d0109
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.8-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:04469b1c0ccd2b118c22a6ffb543d15e750d7f366be1da65f702c905a2fab6b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.7 MB (279720761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4dc632cafd00a648afcfa19436e57344c3ade6202449b50622877729996656a`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 02 Oct 2026 10:21:04 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:21:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:21:04 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:21:06 GMT
ADD file:b6c410e935243e5623135210c34358091e8af5ff14851cb0f67195733b55d391 in / 
# Fri, 02 Oct 2026 10:21:06 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:12:08 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Sat, 17 Oct 2026 00:12:08 GMT
ARG apt_archive=http://archive.ubuntu.com
# Sat, 17 Oct 2026 00:12:08 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Sat, 17 Oct 2026 00:12:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Sat, 17 Oct 2026 00:12:08 GMT
ARG REPO_CHANNEL=stable
# Sat, 17 Oct 2026 00:12:08 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Sat, 17 Oct 2026 00:12:08 GMT
ARG VERSION=26.8.28.14
# Sat, 17 Oct 2026 00:12:08 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Sat, 17 Oct 2026 00:12:40 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.28.14 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Sat, 17 Oct 2026 00:12:40 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.28.14 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Sat, 17 Oct 2026 00:12:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.28.14 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Sat, 17 Oct 2026 00:12:41 GMT
ENV LANG=en_US.UTF-8
# Sat, 17 Oct 2026 00:12:41 GMT
ENV TZ=UTC
# Sat, 17 Oct 2026 00:12:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.28.14 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Sat, 17 Oct 2026 00:12:41 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Sat, 17 Oct 2026 00:12:41 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Sat, 17 Oct 2026 00:12:41 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Sat, 17 Oct 2026 00:12:41 GMT
VOLUME [/var/lib/clickhouse]
# Sat, 17 Oct 2026 00:12:41 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Sat, 17 Oct 2026 00:12:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:cf1a5487baaf7d71eb78fd0888933c6cdecb40e59edb896511aa0ef4a896031e`  
		Last Modified: Fri, 02 Oct 2026 11:08:26 GMT  
		Size: 29.8 MB (29752476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bafe8aba567e8b17028e2cec8be12d47ead77cadc95bbd97c78d352e373461a4`  
		Last Modified: Sat, 17 Oct 2026 00:13:07 GMT  
		Size: 7.6 MB (7556522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1528e4083cf0fac764711ddc2812eb2cd527a481cd08bd61f9ee43d08687abe`  
		Last Modified: Sat, 17 Oct 2026 00:13:11 GMT  
		Size: 241.5 MB (241541712 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf0df57fbbf28c2d9260966bd9aec729ea45d02050542a54d7d138a2335e32b1`  
		Last Modified: Sat, 17 Oct 2026 00:13:07 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb494e93e248fa9919cdda8eb53ef51fba1fd36f3659bda2ec970f6bea89ef8e`  
		Last Modified: Sat, 17 Oct 2026 00:13:07 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c5fc5bfc78aa87a7aba2d29f49b71a107ee4a14f5a9436899df5d4c1bc2040d`  
		Last Modified: Sat, 17 Oct 2026 00:13:08 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8b2a7cdeba446b82074d92dd2c57367721c9601a466df8dd04743ff3a1fb46d`  
		Last Modified: Sat, 17 Oct 2026 00:13:08 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e360127aa007f3090e0f208ac159b07c67270ee3fa46041b551c908c65b6ac7`  
		Last Modified: Sat, 17 Oct 2026 00:13:09 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:9fbe0332c79471eba582177b1d792c9f00f8d2d6ede78a6143fac9307d9f87a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 KB (27366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7217cee86dd6c843f5da9f88a7fb248a5fc1b0e4ba9b5128e0e75c794072ac0c`

```dockerfile
```

-	Layers:
	-	`sha256:d2a39ccf20e930df270307c5c2694a69db42d7e93b7e8a0b9ad088458424bbe1`  
		Last Modified: Sat, 17 Oct 2026 00:13:07 GMT  
		Size: 27.4 KB (27366 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.8-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:ecda2be415929e60b2bc52ae0b5f9959f0455e64f351c4d1a041b3a5e4a32117
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.7 MB (262731625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9caeb22daa9415663d8280c1067ac2ecebc66ef7163bab7e23cab4dabfdbfa90`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 02 Oct 2026 10:22:44 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:22:44 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:22:44 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:22:46 GMT
ADD file:1e8b3941ec802b3e9a687b06bf141aa99b460bda277875ad29712897c6622f25 in / 
# Fri, 02 Oct 2026 10:22:46 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:12:21 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Sat, 17 Oct 2026 00:12:21 GMT
ARG apt_archive=http://archive.ubuntu.com
# Sat, 17 Oct 2026 00:12:21 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Sat, 17 Oct 2026 00:12:21 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Sat, 17 Oct 2026 00:12:21 GMT
ARG REPO_CHANNEL=stable
# Sat, 17 Oct 2026 00:12:21 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Sat, 17 Oct 2026 00:12:21 GMT
ARG VERSION=26.8.28.14
# Sat, 17 Oct 2026 00:12:21 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Sat, 17 Oct 2026 00:12:50 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.28.14 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Sat, 17 Oct 2026 00:12:50 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.28.14 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Sat, 17 Oct 2026 00:12:51 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.28.14 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Sat, 17 Oct 2026 00:12:51 GMT
ENV LANG=en_US.UTF-8
# Sat, 17 Oct 2026 00:12:51 GMT
ENV TZ=UTC
# Sat, 17 Oct 2026 00:12:52 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.28.14 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Sat, 17 Oct 2026 00:12:52 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Sat, 17 Oct 2026 00:12:52 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Sat, 17 Oct 2026 00:12:52 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Sat, 17 Oct 2026 00:12:52 GMT
VOLUME [/var/lib/clickhouse]
# Sat, 17 Oct 2026 00:12:52 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Sat, 17 Oct 2026 00:12:52 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2908c4fa36d87b4ba1206721a9efe744e0e9b35d1437148222276c744aa6efa0`  
		Last Modified: Fri, 02 Oct 2026 11:08:32 GMT  
		Size: 27.7 MB (27684723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41a7727cea245628427ae50ba9caec2a3195f720d50f3618b63a999d8ed09723`  
		Last Modified: Sat, 17 Oct 2026 00:13:14 GMT  
		Size: 7.5 MB (7536529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a84e1f71ce4b55ecad391eaf105e616aa2d6a3ad5982bd870b3679818667efd`  
		Last Modified: Sat, 17 Oct 2026 00:13:18 GMT  
		Size: 226.6 MB (226640320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1f71076316e882014ae2846275d5e231c3bd6c4317fcaa58d3272e90737b0de`  
		Last Modified: Sat, 17 Oct 2026 00:13:13 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89f2d230aa985cc9afd997ff1b68a333bcc380559d765c013d32850774d3c682`  
		Last Modified: Sat, 17 Oct 2026 00:13:14 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9856e092a73a751e91e7f6f6a947a7539c4049063670e7e59249f438445eea2d`  
		Last Modified: Sat, 17 Oct 2026 00:13:15 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95319c5f685ae280da26718ae9ade3106d368fefe97685e42e111b597ec4d64d`  
		Last Modified: Sat, 17 Oct 2026 00:13:15 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14cc2b9fbd2233c0593850f7cc070d24b2fbfdc6be69695824cdaadf45a03211`  
		Last Modified: Sat, 17 Oct 2026 00:13:15 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:0bf56aa73cd5bee846d3cb4a578125b6d5a5a3c4a551174d89836ee0be6f0957
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 KB (27578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2ee3beba21b4866ecc0a997b36d2b7838abe34f86e524f4191f8599989e7d7f`

```dockerfile
```

-	Layers:
	-	`sha256:55d2a3d017b4545f63897bf911d49e05ccf764c1f946e4437502bec1894a030f`  
		Last Modified: Sat, 17 Oct 2026 00:13:14 GMT  
		Size: 27.6 KB (27578 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.8.34`

**does not exist** (yet?)

## `clickhouse:26.8.34-jammy`

**does not exist** (yet?)

## `clickhouse:26.8.34.13`

**does not exist** (yet?)

## `clickhouse:26.8.34.13-jammy`

**does not exist** (yet?)

## `clickhouse:26.9`

```console
$ docker pull clickhouse@sha256:9d011643a674d4434e447c34a4ce7375e6eeb408e8e8eafa06bce3d048ce659d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.9` - linux; amd64

```console
$ docker pull clickhouse@sha256:1f174d4eba1e0a270f6996a8181c058963b2dc2e337d348ee71a35a07f997cf5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.2 MB (295200913 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1aee778070dd8204cc73275f985aaae1a58df060f413b24ba43e1f443d980419`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 02 Oct 2026 10:21:04 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:21:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:21:04 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:21:06 GMT
ADD file:b6c410e935243e5623135210c34358091e8af5ff14851cb0f67195733b55d391 in / 
# Fri, 02 Oct 2026 10:21:06 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:12:04 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Sat, 17 Oct 2026 00:12:04 GMT
ARG apt_archive=http://archive.ubuntu.com
# Sat, 17 Oct 2026 00:12:04 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Sat, 17 Oct 2026 00:12:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Sat, 17 Oct 2026 00:12:04 GMT
ARG REPO_CHANNEL=stable
# Sat, 17 Oct 2026 00:12:04 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Sat, 17 Oct 2026 00:12:04 GMT
ARG VERSION=26.9.19.9
# Sat, 17 Oct 2026 00:12:04 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Sat, 17 Oct 2026 00:12:32 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.19.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Sat, 17 Oct 2026 00:12:33 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.19.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Sat, 17 Oct 2026 00:12:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.19.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Sat, 17 Oct 2026 00:12:34 GMT
ENV LANG=en_US.UTF-8
# Sat, 17 Oct 2026 00:12:34 GMT
ENV TZ=UTC
# Sat, 17 Oct 2026 00:12:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.19.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Sat, 17 Oct 2026 00:12:34 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Sat, 17 Oct 2026 00:12:34 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Sat, 17 Oct 2026 00:12:34 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Sat, 17 Oct 2026 00:12:34 GMT
VOLUME [/var/lib/clickhouse]
# Sat, 17 Oct 2026 00:12:34 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Sat, 17 Oct 2026 00:12:34 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:cf1a5487baaf7d71eb78fd0888933c6cdecb40e59edb896511aa0ef4a896031e`  
		Last Modified: Fri, 02 Oct 2026 11:08:26 GMT  
		Size: 29.8 MB (29752476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:401ce129e82d537c91edc5cbb93fc354eb4c1151131169905aaea3832f215b95`  
		Last Modified: Sat, 17 Oct 2026 00:13:00 GMT  
		Size: 7.6 MB (7556534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e5048fe34aa536066c298053c61fda0ad7dac867decd253b6426297c5a4af45`  
		Last Modified: Sat, 17 Oct 2026 00:13:05 GMT  
		Size: 257.0 MB (257021586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c863d8ee75416470fc0784ec97a2cfcb91d810d62f87443c96ecafe09d2c0db1`  
		Last Modified: Sat, 17 Oct 2026 00:13:00 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe952a35408f1218aae09b38fa7e2f123b054bcb886c169165b3570d9833646a`  
		Last Modified: Sat, 17 Oct 2026 00:13:00 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8104d855edc10de38589d42773aa283d92b5e12e0866608c3f6316aae08bb3c3`  
		Last Modified: Sat, 17 Oct 2026 00:13:01 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f225f70c411bf5f39855179855dfaad99cff8dca35cc9f69ba10c214e0d3e226`  
		Last Modified: Sat, 17 Oct 2026 00:13:01 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:711dbc3a5c46605b9bbecfbb644d2abe396b5dd52db8682755630b3b90e3f3bb`  
		Last Modified: Sat, 17 Oct 2026 00:13:01 GMT  
		Size: 3.9 KB (3903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9` - unknown; unknown

```console
$ docker pull clickhouse@sha256:b782874e749e29049e1451800f8f3b813eabcd1bb8da657bed1859f2c152ccf8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 KB (27782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbb3d2b70c443f82ec3685d5d9f861671580c8079b91978b3ad8e0336ccbce51`

```dockerfile
```

-	Layers:
	-	`sha256:049c7e4fdfd36ddb515b1f0dc99cd2978e50a6e90eee66139e6bd65eb9ec6019`  
		Last Modified: Sat, 17 Oct 2026 00:12:59 GMT  
		Size: 27.8 KB (27782 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.9` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:18872c5cb4be3a85fd62441a5f74cb1b14a4f1ecefe5f711d2fefde96e08fb58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.5 MB (272512345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8075767a9c0b11b6fdbdbfafb6cb780987b0a2f1f10d2c93e3ef9a81b9130877`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 02 Oct 2026 10:22:44 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:22:44 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:22:44 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:22:46 GMT
ADD file:1e8b3941ec802b3e9a687b06bf141aa99b460bda277875ad29712897c6622f25 in / 
# Fri, 02 Oct 2026 10:22:46 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:12:19 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Sat, 17 Oct 2026 00:12:19 GMT
ARG apt_archive=http://archive.ubuntu.com
# Sat, 17 Oct 2026 00:12:19 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Sat, 17 Oct 2026 00:12:19 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Sat, 17 Oct 2026 00:12:19 GMT
ARG REPO_CHANNEL=stable
# Sat, 17 Oct 2026 00:12:19 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Sat, 17 Oct 2026 00:12:19 GMT
ARG VERSION=26.9.19.9
# Sat, 17 Oct 2026 00:12:19 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Sat, 17 Oct 2026 00:12:52 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.19.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Sat, 17 Oct 2026 00:12:52 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.19.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Sat, 17 Oct 2026 00:12:54 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.19.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Sat, 17 Oct 2026 00:12:54 GMT
ENV LANG=en_US.UTF-8
# Sat, 17 Oct 2026 00:12:54 GMT
ENV TZ=UTC
# Sat, 17 Oct 2026 00:12:54 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.19.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Sat, 17 Oct 2026 00:12:54 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Sat, 17 Oct 2026 00:12:54 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Sat, 17 Oct 2026 00:12:54 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Sat, 17 Oct 2026 00:12:54 GMT
VOLUME [/var/lib/clickhouse]
# Sat, 17 Oct 2026 00:12:54 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Sat, 17 Oct 2026 00:12:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2908c4fa36d87b4ba1206721a9efe744e0e9b35d1437148222276c744aa6efa0`  
		Last Modified: Fri, 02 Oct 2026 11:08:32 GMT  
		Size: 27.7 MB (27684723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d80e67fb1e8c4adf686dfcb6199dd533f5b41e6dd0ec4b71a8ead80598090ff`  
		Last Modified: Sat, 17 Oct 2026 00:13:17 GMT  
		Size: 7.5 MB (7536514 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3731deeaa74f2a8d3f1f04b0c4b3528ec076e57dedf099bf7ce3b1e681f6b9b4`  
		Last Modified: Sat, 17 Oct 2026 00:13:22 GMT  
		Size: 236.4 MB (236420787 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95ca61ca96b187e2bb2689da6a0e48f65fb210a6d717f98224c804d6be3ffae5`  
		Last Modified: Sat, 17 Oct 2026 00:13:17 GMT  
		Size: 188.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:340d67c2da09581f062482578a73bc1bfbbfd8847a13687ae22adbf4aa147254`  
		Last Modified: Sat, 17 Oct 2026 00:13:17 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb0cf16cab223ddc47c45c503a2312429fc8a0179c18020066c4a3d72d32b2c8`  
		Last Modified: Sat, 17 Oct 2026 00:13:18 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d7c4076c120f39ed7574f4a9845508d83d865640f62f18491182bd81c35fb3b`  
		Last Modified: Sat, 17 Oct 2026 00:13:18 GMT  
		Size: 365.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc2ee26b92f5dea3cfd6a587f12e03477224777ad6ce26cbdd3c41b50b30d18f`  
		Last Modified: Sat, 17 Oct 2026 00:13:19 GMT  
		Size: 3.9 KB (3903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9` - unknown; unknown

```console
$ docker pull clickhouse@sha256:8f1660611d8aab9f6bd74a8d25bb2c1fee52b44312778ef189c81399b3171eac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.0 KB (27994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94d74f592fba782273374d2082a688dfa55426d71a17ce1f1c558afbac3d6237`

```dockerfile
```

-	Layers:
	-	`sha256:988a91d3addd77d49fdc5c23b72703416d06d63e26b43c5b399cd0c848845e44`  
		Last Modified: Sat, 17 Oct 2026 00:13:17 GMT  
		Size: 28.0 KB (27994 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.9-jammy`

```console
$ docker pull clickhouse@sha256:9d011643a674d4434e447c34a4ce7375e6eeb408e8e8eafa06bce3d048ce659d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.9-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:1f174d4eba1e0a270f6996a8181c058963b2dc2e337d348ee71a35a07f997cf5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.2 MB (295200913 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1aee778070dd8204cc73275f985aaae1a58df060f413b24ba43e1f443d980419`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 02 Oct 2026 10:21:04 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:21:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:21:04 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:21:06 GMT
ADD file:b6c410e935243e5623135210c34358091e8af5ff14851cb0f67195733b55d391 in / 
# Fri, 02 Oct 2026 10:21:06 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:12:04 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Sat, 17 Oct 2026 00:12:04 GMT
ARG apt_archive=http://archive.ubuntu.com
# Sat, 17 Oct 2026 00:12:04 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Sat, 17 Oct 2026 00:12:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Sat, 17 Oct 2026 00:12:04 GMT
ARG REPO_CHANNEL=stable
# Sat, 17 Oct 2026 00:12:04 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Sat, 17 Oct 2026 00:12:04 GMT
ARG VERSION=26.9.19.9
# Sat, 17 Oct 2026 00:12:04 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Sat, 17 Oct 2026 00:12:32 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.19.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Sat, 17 Oct 2026 00:12:33 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.19.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Sat, 17 Oct 2026 00:12:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.19.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Sat, 17 Oct 2026 00:12:34 GMT
ENV LANG=en_US.UTF-8
# Sat, 17 Oct 2026 00:12:34 GMT
ENV TZ=UTC
# Sat, 17 Oct 2026 00:12:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.19.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Sat, 17 Oct 2026 00:12:34 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Sat, 17 Oct 2026 00:12:34 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Sat, 17 Oct 2026 00:12:34 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Sat, 17 Oct 2026 00:12:34 GMT
VOLUME [/var/lib/clickhouse]
# Sat, 17 Oct 2026 00:12:34 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Sat, 17 Oct 2026 00:12:34 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:cf1a5487baaf7d71eb78fd0888933c6cdecb40e59edb896511aa0ef4a896031e`  
		Last Modified: Fri, 02 Oct 2026 11:08:26 GMT  
		Size: 29.8 MB (29752476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:401ce129e82d537c91edc5cbb93fc354eb4c1151131169905aaea3832f215b95`  
		Last Modified: Sat, 17 Oct 2026 00:13:00 GMT  
		Size: 7.6 MB (7556534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e5048fe34aa536066c298053c61fda0ad7dac867decd253b6426297c5a4af45`  
		Last Modified: Sat, 17 Oct 2026 00:13:05 GMT  
		Size: 257.0 MB (257021586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c863d8ee75416470fc0784ec97a2cfcb91d810d62f87443c96ecafe09d2c0db1`  
		Last Modified: Sat, 17 Oct 2026 00:13:00 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe952a35408f1218aae09b38fa7e2f123b054bcb886c169165b3570d9833646a`  
		Last Modified: Sat, 17 Oct 2026 00:13:00 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8104d855edc10de38589d42773aa283d92b5e12e0866608c3f6316aae08bb3c3`  
		Last Modified: Sat, 17 Oct 2026 00:13:01 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f225f70c411bf5f39855179855dfaad99cff8dca35cc9f69ba10c214e0d3e226`  
		Last Modified: Sat, 17 Oct 2026 00:13:01 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:711dbc3a5c46605b9bbecfbb644d2abe396b5dd52db8682755630b3b90e3f3bb`  
		Last Modified: Sat, 17 Oct 2026 00:13:01 GMT  
		Size: 3.9 KB (3903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:b782874e749e29049e1451800f8f3b813eabcd1bb8da657bed1859f2c152ccf8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 KB (27782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbb3d2b70c443f82ec3685d5d9f861671580c8079b91978b3ad8e0336ccbce51`

```dockerfile
```

-	Layers:
	-	`sha256:049c7e4fdfd36ddb515b1f0dc99cd2978e50a6e90eee66139e6bd65eb9ec6019`  
		Last Modified: Sat, 17 Oct 2026 00:12:59 GMT  
		Size: 27.8 KB (27782 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.9-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:18872c5cb4be3a85fd62441a5f74cb1b14a4f1ecefe5f711d2fefde96e08fb58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.5 MB (272512345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8075767a9c0b11b6fdbdbfafb6cb780987b0a2f1f10d2c93e3ef9a81b9130877`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 02 Oct 2026 10:22:44 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:22:44 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:22:44 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:22:46 GMT
ADD file:1e8b3941ec802b3e9a687b06bf141aa99b460bda277875ad29712897c6622f25 in / 
# Fri, 02 Oct 2026 10:22:46 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:12:19 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Sat, 17 Oct 2026 00:12:19 GMT
ARG apt_archive=http://archive.ubuntu.com
# Sat, 17 Oct 2026 00:12:19 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Sat, 17 Oct 2026 00:12:19 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Sat, 17 Oct 2026 00:12:19 GMT
ARG REPO_CHANNEL=stable
# Sat, 17 Oct 2026 00:12:19 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Sat, 17 Oct 2026 00:12:19 GMT
ARG VERSION=26.9.19.9
# Sat, 17 Oct 2026 00:12:19 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Sat, 17 Oct 2026 00:12:52 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.19.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Sat, 17 Oct 2026 00:12:52 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.19.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Sat, 17 Oct 2026 00:12:54 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.19.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Sat, 17 Oct 2026 00:12:54 GMT
ENV LANG=en_US.UTF-8
# Sat, 17 Oct 2026 00:12:54 GMT
ENV TZ=UTC
# Sat, 17 Oct 2026 00:12:54 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.19.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Sat, 17 Oct 2026 00:12:54 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Sat, 17 Oct 2026 00:12:54 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Sat, 17 Oct 2026 00:12:54 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Sat, 17 Oct 2026 00:12:54 GMT
VOLUME [/var/lib/clickhouse]
# Sat, 17 Oct 2026 00:12:54 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Sat, 17 Oct 2026 00:12:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2908c4fa36d87b4ba1206721a9efe744e0e9b35d1437148222276c744aa6efa0`  
		Last Modified: Fri, 02 Oct 2026 11:08:32 GMT  
		Size: 27.7 MB (27684723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d80e67fb1e8c4adf686dfcb6199dd533f5b41e6dd0ec4b71a8ead80598090ff`  
		Last Modified: Sat, 17 Oct 2026 00:13:17 GMT  
		Size: 7.5 MB (7536514 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3731deeaa74f2a8d3f1f04b0c4b3528ec076e57dedf099bf7ce3b1e681f6b9b4`  
		Last Modified: Sat, 17 Oct 2026 00:13:22 GMT  
		Size: 236.4 MB (236420787 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95ca61ca96b187e2bb2689da6a0e48f65fb210a6d717f98224c804d6be3ffae5`  
		Last Modified: Sat, 17 Oct 2026 00:13:17 GMT  
		Size: 188.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:340d67c2da09581f062482578a73bc1bfbbfd8847a13687ae22adbf4aa147254`  
		Last Modified: Sat, 17 Oct 2026 00:13:17 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb0cf16cab223ddc47c45c503a2312429fc8a0179c18020066c4a3d72d32b2c8`  
		Last Modified: Sat, 17 Oct 2026 00:13:18 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d7c4076c120f39ed7574f4a9845508d83d865640f62f18491182bd81c35fb3b`  
		Last Modified: Sat, 17 Oct 2026 00:13:18 GMT  
		Size: 365.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc2ee26b92f5dea3cfd6a587f12e03477224777ad6ce26cbdd3c41b50b30d18f`  
		Last Modified: Sat, 17 Oct 2026 00:13:19 GMT  
		Size: 3.9 KB (3903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:8f1660611d8aab9f6bd74a8d25bb2c1fee52b44312778ef189c81399b3171eac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.0 KB (27994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94d74f592fba782273374d2082a688dfa55426d71a17ce1f1c558afbac3d6237`

```dockerfile
```

-	Layers:
	-	`sha256:988a91d3addd77d49fdc5c23b72703416d06d63e26b43c5b399cd0c848845e44`  
		Last Modified: Sat, 17 Oct 2026 00:13:17 GMT  
		Size: 28.0 KB (27994 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.9.25`

**does not exist** (yet?)

## `clickhouse:26.9.25-jammy`

**does not exist** (yet?)

## `clickhouse:26.9.25.15`

**does not exist** (yet?)

## `clickhouse:26.9.25.15-jammy`

**does not exist** (yet?)

## `clickhouse:jammy`

```console
$ docker pull clickhouse@sha256:9d011643a674d4434e447c34a4ce7375e6eeb408e8e8eafa06bce3d048ce659d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:1f174d4eba1e0a270f6996a8181c058963b2dc2e337d348ee71a35a07f997cf5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.2 MB (295200913 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1aee778070dd8204cc73275f985aaae1a58df060f413b24ba43e1f443d980419`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 02 Oct 2026 10:21:04 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:21:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:21:04 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:21:06 GMT
ADD file:b6c410e935243e5623135210c34358091e8af5ff14851cb0f67195733b55d391 in / 
# Fri, 02 Oct 2026 10:21:06 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:12:04 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Sat, 17 Oct 2026 00:12:04 GMT
ARG apt_archive=http://archive.ubuntu.com
# Sat, 17 Oct 2026 00:12:04 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Sat, 17 Oct 2026 00:12:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Sat, 17 Oct 2026 00:12:04 GMT
ARG REPO_CHANNEL=stable
# Sat, 17 Oct 2026 00:12:04 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Sat, 17 Oct 2026 00:12:04 GMT
ARG VERSION=26.9.19.9
# Sat, 17 Oct 2026 00:12:04 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Sat, 17 Oct 2026 00:12:32 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.19.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Sat, 17 Oct 2026 00:12:33 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.19.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Sat, 17 Oct 2026 00:12:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.19.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Sat, 17 Oct 2026 00:12:34 GMT
ENV LANG=en_US.UTF-8
# Sat, 17 Oct 2026 00:12:34 GMT
ENV TZ=UTC
# Sat, 17 Oct 2026 00:12:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.19.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Sat, 17 Oct 2026 00:12:34 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Sat, 17 Oct 2026 00:12:34 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Sat, 17 Oct 2026 00:12:34 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Sat, 17 Oct 2026 00:12:34 GMT
VOLUME [/var/lib/clickhouse]
# Sat, 17 Oct 2026 00:12:34 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Sat, 17 Oct 2026 00:12:34 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:cf1a5487baaf7d71eb78fd0888933c6cdecb40e59edb896511aa0ef4a896031e`  
		Last Modified: Fri, 02 Oct 2026 11:08:26 GMT  
		Size: 29.8 MB (29752476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:401ce129e82d537c91edc5cbb93fc354eb4c1151131169905aaea3832f215b95`  
		Last Modified: Sat, 17 Oct 2026 00:13:00 GMT  
		Size: 7.6 MB (7556534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e5048fe34aa536066c298053c61fda0ad7dac867decd253b6426297c5a4af45`  
		Last Modified: Sat, 17 Oct 2026 00:13:05 GMT  
		Size: 257.0 MB (257021586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c863d8ee75416470fc0784ec97a2cfcb91d810d62f87443c96ecafe09d2c0db1`  
		Last Modified: Sat, 17 Oct 2026 00:13:00 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe952a35408f1218aae09b38fa7e2f123b054bcb886c169165b3570d9833646a`  
		Last Modified: Sat, 17 Oct 2026 00:13:00 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8104d855edc10de38589d42773aa283d92b5e12e0866608c3f6316aae08bb3c3`  
		Last Modified: Sat, 17 Oct 2026 00:13:01 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f225f70c411bf5f39855179855dfaad99cff8dca35cc9f69ba10c214e0d3e226`  
		Last Modified: Sat, 17 Oct 2026 00:13:01 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:711dbc3a5c46605b9bbecfbb644d2abe396b5dd52db8682755630b3b90e3f3bb`  
		Last Modified: Sat, 17 Oct 2026 00:13:01 GMT  
		Size: 3.9 KB (3903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:b782874e749e29049e1451800f8f3b813eabcd1bb8da657bed1859f2c152ccf8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 KB (27782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbb3d2b70c443f82ec3685d5d9f861671580c8079b91978b3ad8e0336ccbce51`

```dockerfile
```

-	Layers:
	-	`sha256:049c7e4fdfd36ddb515b1f0dc99cd2978e50a6e90eee66139e6bd65eb9ec6019`  
		Last Modified: Sat, 17 Oct 2026 00:12:59 GMT  
		Size: 27.8 KB (27782 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:18872c5cb4be3a85fd62441a5f74cb1b14a4f1ecefe5f711d2fefde96e08fb58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.5 MB (272512345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8075767a9c0b11b6fdbdbfafb6cb780987b0a2f1f10d2c93e3ef9a81b9130877`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 02 Oct 2026 10:22:44 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:22:44 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:22:44 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:22:46 GMT
ADD file:1e8b3941ec802b3e9a687b06bf141aa99b460bda277875ad29712897c6622f25 in / 
# Fri, 02 Oct 2026 10:22:46 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:12:19 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Sat, 17 Oct 2026 00:12:19 GMT
ARG apt_archive=http://archive.ubuntu.com
# Sat, 17 Oct 2026 00:12:19 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Sat, 17 Oct 2026 00:12:19 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Sat, 17 Oct 2026 00:12:19 GMT
ARG REPO_CHANNEL=stable
# Sat, 17 Oct 2026 00:12:19 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Sat, 17 Oct 2026 00:12:19 GMT
ARG VERSION=26.9.19.9
# Sat, 17 Oct 2026 00:12:19 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Sat, 17 Oct 2026 00:12:52 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.19.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Sat, 17 Oct 2026 00:12:52 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.19.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Sat, 17 Oct 2026 00:12:54 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.19.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Sat, 17 Oct 2026 00:12:54 GMT
ENV LANG=en_US.UTF-8
# Sat, 17 Oct 2026 00:12:54 GMT
ENV TZ=UTC
# Sat, 17 Oct 2026 00:12:54 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.19.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Sat, 17 Oct 2026 00:12:54 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Sat, 17 Oct 2026 00:12:54 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Sat, 17 Oct 2026 00:12:54 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Sat, 17 Oct 2026 00:12:54 GMT
VOLUME [/var/lib/clickhouse]
# Sat, 17 Oct 2026 00:12:54 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Sat, 17 Oct 2026 00:12:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2908c4fa36d87b4ba1206721a9efe744e0e9b35d1437148222276c744aa6efa0`  
		Last Modified: Fri, 02 Oct 2026 11:08:32 GMT  
		Size: 27.7 MB (27684723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d80e67fb1e8c4adf686dfcb6199dd533f5b41e6dd0ec4b71a8ead80598090ff`  
		Last Modified: Sat, 17 Oct 2026 00:13:17 GMT  
		Size: 7.5 MB (7536514 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3731deeaa74f2a8d3f1f04b0c4b3528ec076e57dedf099bf7ce3b1e681f6b9b4`  
		Last Modified: Sat, 17 Oct 2026 00:13:22 GMT  
		Size: 236.4 MB (236420787 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95ca61ca96b187e2bb2689da6a0e48f65fb210a6d717f98224c804d6be3ffae5`  
		Last Modified: Sat, 17 Oct 2026 00:13:17 GMT  
		Size: 188.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:340d67c2da09581f062482578a73bc1bfbbfd8847a13687ae22adbf4aa147254`  
		Last Modified: Sat, 17 Oct 2026 00:13:17 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb0cf16cab223ddc47c45c503a2312429fc8a0179c18020066c4a3d72d32b2c8`  
		Last Modified: Sat, 17 Oct 2026 00:13:18 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d7c4076c120f39ed7574f4a9845508d83d865640f62f18491182bd81c35fb3b`  
		Last Modified: Sat, 17 Oct 2026 00:13:18 GMT  
		Size: 365.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc2ee26b92f5dea3cfd6a587f12e03477224777ad6ce26cbdd3c41b50b30d18f`  
		Last Modified: Sat, 17 Oct 2026 00:13:19 GMT  
		Size: 3.9 KB (3903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:8f1660611d8aab9f6bd74a8d25bb2c1fee52b44312778ef189c81399b3171eac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.0 KB (27994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94d74f592fba782273374d2082a688dfa55426d71a17ce1f1c558afbac3d6237`

```dockerfile
```

-	Layers:
	-	`sha256:988a91d3addd77d49fdc5c23b72703416d06d63e26b43c5b399cd0c848845e44`  
		Last Modified: Sat, 17 Oct 2026 00:13:17 GMT  
		Size: 28.0 KB (27994 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:latest`

```console
$ docker pull clickhouse@sha256:9d011643a674d4434e447c34a4ce7375e6eeb408e8e8eafa06bce3d048ce659d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:latest` - linux; amd64

```console
$ docker pull clickhouse@sha256:1f174d4eba1e0a270f6996a8181c058963b2dc2e337d348ee71a35a07f997cf5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.2 MB (295200913 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1aee778070dd8204cc73275f985aaae1a58df060f413b24ba43e1f443d980419`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 02 Oct 2026 10:21:04 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:21:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:21:04 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:21:06 GMT
ADD file:b6c410e935243e5623135210c34358091e8af5ff14851cb0f67195733b55d391 in / 
# Fri, 02 Oct 2026 10:21:06 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:12:04 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Sat, 17 Oct 2026 00:12:04 GMT
ARG apt_archive=http://archive.ubuntu.com
# Sat, 17 Oct 2026 00:12:04 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Sat, 17 Oct 2026 00:12:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Sat, 17 Oct 2026 00:12:04 GMT
ARG REPO_CHANNEL=stable
# Sat, 17 Oct 2026 00:12:04 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Sat, 17 Oct 2026 00:12:04 GMT
ARG VERSION=26.9.19.9
# Sat, 17 Oct 2026 00:12:04 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Sat, 17 Oct 2026 00:12:32 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.19.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Sat, 17 Oct 2026 00:12:33 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.19.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Sat, 17 Oct 2026 00:12:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.19.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Sat, 17 Oct 2026 00:12:34 GMT
ENV LANG=en_US.UTF-8
# Sat, 17 Oct 2026 00:12:34 GMT
ENV TZ=UTC
# Sat, 17 Oct 2026 00:12:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.19.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Sat, 17 Oct 2026 00:12:34 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Sat, 17 Oct 2026 00:12:34 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Sat, 17 Oct 2026 00:12:34 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Sat, 17 Oct 2026 00:12:34 GMT
VOLUME [/var/lib/clickhouse]
# Sat, 17 Oct 2026 00:12:34 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Sat, 17 Oct 2026 00:12:34 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:cf1a5487baaf7d71eb78fd0888933c6cdecb40e59edb896511aa0ef4a896031e`  
		Last Modified: Fri, 02 Oct 2026 11:08:26 GMT  
		Size: 29.8 MB (29752476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:401ce129e82d537c91edc5cbb93fc354eb4c1151131169905aaea3832f215b95`  
		Last Modified: Sat, 17 Oct 2026 00:13:00 GMT  
		Size: 7.6 MB (7556534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e5048fe34aa536066c298053c61fda0ad7dac867decd253b6426297c5a4af45`  
		Last Modified: Sat, 17 Oct 2026 00:13:05 GMT  
		Size: 257.0 MB (257021586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c863d8ee75416470fc0784ec97a2cfcb91d810d62f87443c96ecafe09d2c0db1`  
		Last Modified: Sat, 17 Oct 2026 00:13:00 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe952a35408f1218aae09b38fa7e2f123b054bcb886c169165b3570d9833646a`  
		Last Modified: Sat, 17 Oct 2026 00:13:00 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8104d855edc10de38589d42773aa283d92b5e12e0866608c3f6316aae08bb3c3`  
		Last Modified: Sat, 17 Oct 2026 00:13:01 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f225f70c411bf5f39855179855dfaad99cff8dca35cc9f69ba10c214e0d3e226`  
		Last Modified: Sat, 17 Oct 2026 00:13:01 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:711dbc3a5c46605b9bbecfbb644d2abe396b5dd52db8682755630b3b90e3f3bb`  
		Last Modified: Sat, 17 Oct 2026 00:13:01 GMT  
		Size: 3.9 KB (3903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:latest` - unknown; unknown

```console
$ docker pull clickhouse@sha256:b782874e749e29049e1451800f8f3b813eabcd1bb8da657bed1859f2c152ccf8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 KB (27782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbb3d2b70c443f82ec3685d5d9f861671580c8079b91978b3ad8e0336ccbce51`

```dockerfile
```

-	Layers:
	-	`sha256:049c7e4fdfd36ddb515b1f0dc99cd2978e50a6e90eee66139e6bd65eb9ec6019`  
		Last Modified: Sat, 17 Oct 2026 00:12:59 GMT  
		Size: 27.8 KB (27782 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:latest` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:18872c5cb4be3a85fd62441a5f74cb1b14a4f1ecefe5f711d2fefde96e08fb58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.5 MB (272512345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8075767a9c0b11b6fdbdbfafb6cb780987b0a2f1f10d2c93e3ef9a81b9130877`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 02 Oct 2026 10:22:44 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:22:44 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:22:44 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:22:46 GMT
ADD file:1e8b3941ec802b3e9a687b06bf141aa99b460bda277875ad29712897c6622f25 in / 
# Fri, 02 Oct 2026 10:22:46 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:12:19 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Sat, 17 Oct 2026 00:12:19 GMT
ARG apt_archive=http://archive.ubuntu.com
# Sat, 17 Oct 2026 00:12:19 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Sat, 17 Oct 2026 00:12:19 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Sat, 17 Oct 2026 00:12:19 GMT
ARG REPO_CHANNEL=stable
# Sat, 17 Oct 2026 00:12:19 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Sat, 17 Oct 2026 00:12:19 GMT
ARG VERSION=26.9.19.9
# Sat, 17 Oct 2026 00:12:19 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Sat, 17 Oct 2026 00:12:52 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.19.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Sat, 17 Oct 2026 00:12:52 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.19.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Sat, 17 Oct 2026 00:12:54 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.19.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Sat, 17 Oct 2026 00:12:54 GMT
ENV LANG=en_US.UTF-8
# Sat, 17 Oct 2026 00:12:54 GMT
ENV TZ=UTC
# Sat, 17 Oct 2026 00:12:54 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.19.9 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Sat, 17 Oct 2026 00:12:54 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Sat, 17 Oct 2026 00:12:54 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Sat, 17 Oct 2026 00:12:54 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Sat, 17 Oct 2026 00:12:54 GMT
VOLUME [/var/lib/clickhouse]
# Sat, 17 Oct 2026 00:12:54 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Sat, 17 Oct 2026 00:12:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2908c4fa36d87b4ba1206721a9efe744e0e9b35d1437148222276c744aa6efa0`  
		Last Modified: Fri, 02 Oct 2026 11:08:32 GMT  
		Size: 27.7 MB (27684723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d80e67fb1e8c4adf686dfcb6199dd533f5b41e6dd0ec4b71a8ead80598090ff`  
		Last Modified: Sat, 17 Oct 2026 00:13:17 GMT  
		Size: 7.5 MB (7536514 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3731deeaa74f2a8d3f1f04b0c4b3528ec076e57dedf099bf7ce3b1e681f6b9b4`  
		Last Modified: Sat, 17 Oct 2026 00:13:22 GMT  
		Size: 236.4 MB (236420787 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95ca61ca96b187e2bb2689da6a0e48f65fb210a6d717f98224c804d6be3ffae5`  
		Last Modified: Sat, 17 Oct 2026 00:13:17 GMT  
		Size: 188.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:340d67c2da09581f062482578a73bc1bfbbfd8847a13687ae22adbf4aa147254`  
		Last Modified: Sat, 17 Oct 2026 00:13:17 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb0cf16cab223ddc47c45c503a2312429fc8a0179c18020066c4a3d72d32b2c8`  
		Last Modified: Sat, 17 Oct 2026 00:13:18 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d7c4076c120f39ed7574f4a9845508d83d865640f62f18491182bd81c35fb3b`  
		Last Modified: Sat, 17 Oct 2026 00:13:18 GMT  
		Size: 365.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc2ee26b92f5dea3cfd6a587f12e03477224777ad6ce26cbdd3c41b50b30d18f`  
		Last Modified: Sat, 17 Oct 2026 00:13:19 GMT  
		Size: 3.9 KB (3903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:latest` - unknown; unknown

```console
$ docker pull clickhouse@sha256:8f1660611d8aab9f6bd74a8d25bb2c1fee52b44312778ef189c81399b3171eac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.0 KB (27994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94d74f592fba782273374d2082a688dfa55426d71a17ce1f1c558afbac3d6237`

```dockerfile
```

-	Layers:
	-	`sha256:988a91d3addd77d49fdc5c23b72703416d06d63e26b43c5b399cd0c848845e44`  
		Last Modified: Sat, 17 Oct 2026 00:13:17 GMT  
		Size: 28.0 KB (27994 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:lts`

```console
$ docker pull clickhouse@sha256:caa00dbfff2eaf3e2537c93c5167d7ff38a943a2986e0625d1977d90b78d0109
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:lts` - linux; amd64

```console
$ docker pull clickhouse@sha256:04469b1c0ccd2b118c22a6ffb543d15e750d7f366be1da65f702c905a2fab6b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.7 MB (279720761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4dc632cafd00a648afcfa19436e57344c3ade6202449b50622877729996656a`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 02 Oct 2026 10:21:04 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:21:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:21:04 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:21:06 GMT
ADD file:b6c410e935243e5623135210c34358091e8af5ff14851cb0f67195733b55d391 in / 
# Fri, 02 Oct 2026 10:21:06 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:12:08 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Sat, 17 Oct 2026 00:12:08 GMT
ARG apt_archive=http://archive.ubuntu.com
# Sat, 17 Oct 2026 00:12:08 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Sat, 17 Oct 2026 00:12:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Sat, 17 Oct 2026 00:12:08 GMT
ARG REPO_CHANNEL=stable
# Sat, 17 Oct 2026 00:12:08 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Sat, 17 Oct 2026 00:12:08 GMT
ARG VERSION=26.8.28.14
# Sat, 17 Oct 2026 00:12:08 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Sat, 17 Oct 2026 00:12:40 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.28.14 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Sat, 17 Oct 2026 00:12:40 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.28.14 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Sat, 17 Oct 2026 00:12:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.28.14 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Sat, 17 Oct 2026 00:12:41 GMT
ENV LANG=en_US.UTF-8
# Sat, 17 Oct 2026 00:12:41 GMT
ENV TZ=UTC
# Sat, 17 Oct 2026 00:12:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.28.14 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Sat, 17 Oct 2026 00:12:41 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Sat, 17 Oct 2026 00:12:41 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Sat, 17 Oct 2026 00:12:41 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Sat, 17 Oct 2026 00:12:41 GMT
VOLUME [/var/lib/clickhouse]
# Sat, 17 Oct 2026 00:12:41 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Sat, 17 Oct 2026 00:12:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:cf1a5487baaf7d71eb78fd0888933c6cdecb40e59edb896511aa0ef4a896031e`  
		Last Modified: Fri, 02 Oct 2026 11:08:26 GMT  
		Size: 29.8 MB (29752476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bafe8aba567e8b17028e2cec8be12d47ead77cadc95bbd97c78d352e373461a4`  
		Last Modified: Sat, 17 Oct 2026 00:13:07 GMT  
		Size: 7.6 MB (7556522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1528e4083cf0fac764711ddc2812eb2cd527a481cd08bd61f9ee43d08687abe`  
		Last Modified: Sat, 17 Oct 2026 00:13:11 GMT  
		Size: 241.5 MB (241541712 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf0df57fbbf28c2d9260966bd9aec729ea45d02050542a54d7d138a2335e32b1`  
		Last Modified: Sat, 17 Oct 2026 00:13:07 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb494e93e248fa9919cdda8eb53ef51fba1fd36f3659bda2ec970f6bea89ef8e`  
		Last Modified: Sat, 17 Oct 2026 00:13:07 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c5fc5bfc78aa87a7aba2d29f49b71a107ee4a14f5a9436899df5d4c1bc2040d`  
		Last Modified: Sat, 17 Oct 2026 00:13:08 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8b2a7cdeba446b82074d92dd2c57367721c9601a466df8dd04743ff3a1fb46d`  
		Last Modified: Sat, 17 Oct 2026 00:13:08 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e360127aa007f3090e0f208ac159b07c67270ee3fa46041b551c908c65b6ac7`  
		Last Modified: Sat, 17 Oct 2026 00:13:09 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:lts` - unknown; unknown

```console
$ docker pull clickhouse@sha256:9fbe0332c79471eba582177b1d792c9f00f8d2d6ede78a6143fac9307d9f87a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 KB (27366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7217cee86dd6c843f5da9f88a7fb248a5fc1b0e4ba9b5128e0e75c794072ac0c`

```dockerfile
```

-	Layers:
	-	`sha256:d2a39ccf20e930df270307c5c2694a69db42d7e93b7e8a0b9ad088458424bbe1`  
		Last Modified: Sat, 17 Oct 2026 00:13:07 GMT  
		Size: 27.4 KB (27366 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:lts` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:ecda2be415929e60b2bc52ae0b5f9959f0455e64f351c4d1a041b3a5e4a32117
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.7 MB (262731625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9caeb22daa9415663d8280c1067ac2ecebc66ef7163bab7e23cab4dabfdbfa90`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 02 Oct 2026 10:22:44 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:22:44 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:22:44 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:22:46 GMT
ADD file:1e8b3941ec802b3e9a687b06bf141aa99b460bda277875ad29712897c6622f25 in / 
# Fri, 02 Oct 2026 10:22:46 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:12:21 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Sat, 17 Oct 2026 00:12:21 GMT
ARG apt_archive=http://archive.ubuntu.com
# Sat, 17 Oct 2026 00:12:21 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Sat, 17 Oct 2026 00:12:21 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Sat, 17 Oct 2026 00:12:21 GMT
ARG REPO_CHANNEL=stable
# Sat, 17 Oct 2026 00:12:21 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Sat, 17 Oct 2026 00:12:21 GMT
ARG VERSION=26.8.28.14
# Sat, 17 Oct 2026 00:12:21 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Sat, 17 Oct 2026 00:12:50 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.28.14 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Sat, 17 Oct 2026 00:12:50 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.28.14 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Sat, 17 Oct 2026 00:12:51 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.28.14 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Sat, 17 Oct 2026 00:12:51 GMT
ENV LANG=en_US.UTF-8
# Sat, 17 Oct 2026 00:12:51 GMT
ENV TZ=UTC
# Sat, 17 Oct 2026 00:12:52 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.28.14 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Sat, 17 Oct 2026 00:12:52 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Sat, 17 Oct 2026 00:12:52 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Sat, 17 Oct 2026 00:12:52 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Sat, 17 Oct 2026 00:12:52 GMT
VOLUME [/var/lib/clickhouse]
# Sat, 17 Oct 2026 00:12:52 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Sat, 17 Oct 2026 00:12:52 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2908c4fa36d87b4ba1206721a9efe744e0e9b35d1437148222276c744aa6efa0`  
		Last Modified: Fri, 02 Oct 2026 11:08:32 GMT  
		Size: 27.7 MB (27684723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41a7727cea245628427ae50ba9caec2a3195f720d50f3618b63a999d8ed09723`  
		Last Modified: Sat, 17 Oct 2026 00:13:14 GMT  
		Size: 7.5 MB (7536529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a84e1f71ce4b55ecad391eaf105e616aa2d6a3ad5982bd870b3679818667efd`  
		Last Modified: Sat, 17 Oct 2026 00:13:18 GMT  
		Size: 226.6 MB (226640320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1f71076316e882014ae2846275d5e231c3bd6c4317fcaa58d3272e90737b0de`  
		Last Modified: Sat, 17 Oct 2026 00:13:13 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89f2d230aa985cc9afd997ff1b68a333bcc380559d765c013d32850774d3c682`  
		Last Modified: Sat, 17 Oct 2026 00:13:14 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9856e092a73a751e91e7f6f6a947a7539c4049063670e7e59249f438445eea2d`  
		Last Modified: Sat, 17 Oct 2026 00:13:15 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95319c5f685ae280da26718ae9ade3106d368fefe97685e42e111b597ec4d64d`  
		Last Modified: Sat, 17 Oct 2026 00:13:15 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14cc2b9fbd2233c0593850f7cc070d24b2fbfdc6be69695824cdaadf45a03211`  
		Last Modified: Sat, 17 Oct 2026 00:13:15 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:lts` - unknown; unknown

```console
$ docker pull clickhouse@sha256:0bf56aa73cd5bee846d3cb4a578125b6d5a5a3c4a551174d89836ee0be6f0957
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 KB (27578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2ee3beba21b4866ecc0a997b36d2b7838abe34f86e524f4191f8599989e7d7f`

```dockerfile
```

-	Layers:
	-	`sha256:55d2a3d017b4545f63897bf911d49e05ccf764c1f946e4437502bec1894a030f`  
		Last Modified: Sat, 17 Oct 2026 00:13:14 GMT  
		Size: 27.6 KB (27578 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:lts-jammy`

```console
$ docker pull clickhouse@sha256:caa00dbfff2eaf3e2537c93c5167d7ff38a943a2986e0625d1977d90b78d0109
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:lts-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:04469b1c0ccd2b118c22a6ffb543d15e750d7f366be1da65f702c905a2fab6b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.7 MB (279720761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4dc632cafd00a648afcfa19436e57344c3ade6202449b50622877729996656a`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 02 Oct 2026 10:21:04 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:21:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:21:04 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:21:06 GMT
ADD file:b6c410e935243e5623135210c34358091e8af5ff14851cb0f67195733b55d391 in / 
# Fri, 02 Oct 2026 10:21:06 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:12:08 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Sat, 17 Oct 2026 00:12:08 GMT
ARG apt_archive=http://archive.ubuntu.com
# Sat, 17 Oct 2026 00:12:08 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Sat, 17 Oct 2026 00:12:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Sat, 17 Oct 2026 00:12:08 GMT
ARG REPO_CHANNEL=stable
# Sat, 17 Oct 2026 00:12:08 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Sat, 17 Oct 2026 00:12:08 GMT
ARG VERSION=26.8.28.14
# Sat, 17 Oct 2026 00:12:08 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Sat, 17 Oct 2026 00:12:40 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.28.14 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Sat, 17 Oct 2026 00:12:40 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.28.14 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Sat, 17 Oct 2026 00:12:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.28.14 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Sat, 17 Oct 2026 00:12:41 GMT
ENV LANG=en_US.UTF-8
# Sat, 17 Oct 2026 00:12:41 GMT
ENV TZ=UTC
# Sat, 17 Oct 2026 00:12:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.28.14 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Sat, 17 Oct 2026 00:12:41 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Sat, 17 Oct 2026 00:12:41 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Sat, 17 Oct 2026 00:12:41 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Sat, 17 Oct 2026 00:12:41 GMT
VOLUME [/var/lib/clickhouse]
# Sat, 17 Oct 2026 00:12:41 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Sat, 17 Oct 2026 00:12:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:cf1a5487baaf7d71eb78fd0888933c6cdecb40e59edb896511aa0ef4a896031e`  
		Last Modified: Fri, 02 Oct 2026 11:08:26 GMT  
		Size: 29.8 MB (29752476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bafe8aba567e8b17028e2cec8be12d47ead77cadc95bbd97c78d352e373461a4`  
		Last Modified: Sat, 17 Oct 2026 00:13:07 GMT  
		Size: 7.6 MB (7556522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1528e4083cf0fac764711ddc2812eb2cd527a481cd08bd61f9ee43d08687abe`  
		Last Modified: Sat, 17 Oct 2026 00:13:11 GMT  
		Size: 241.5 MB (241541712 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf0df57fbbf28c2d9260966bd9aec729ea45d02050542a54d7d138a2335e32b1`  
		Last Modified: Sat, 17 Oct 2026 00:13:07 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb494e93e248fa9919cdda8eb53ef51fba1fd36f3659bda2ec970f6bea89ef8e`  
		Last Modified: Sat, 17 Oct 2026 00:13:07 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c5fc5bfc78aa87a7aba2d29f49b71a107ee4a14f5a9436899df5d4c1bc2040d`  
		Last Modified: Sat, 17 Oct 2026 00:13:08 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8b2a7cdeba446b82074d92dd2c57367721c9601a466df8dd04743ff3a1fb46d`  
		Last Modified: Sat, 17 Oct 2026 00:13:08 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e360127aa007f3090e0f208ac159b07c67270ee3fa46041b551c908c65b6ac7`  
		Last Modified: Sat, 17 Oct 2026 00:13:09 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:lts-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:9fbe0332c79471eba582177b1d792c9f00f8d2d6ede78a6143fac9307d9f87a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 KB (27366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7217cee86dd6c843f5da9f88a7fb248a5fc1b0e4ba9b5128e0e75c794072ac0c`

```dockerfile
```

-	Layers:
	-	`sha256:d2a39ccf20e930df270307c5c2694a69db42d7e93b7e8a0b9ad088458424bbe1`  
		Last Modified: Sat, 17 Oct 2026 00:13:07 GMT  
		Size: 27.4 KB (27366 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:lts-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:ecda2be415929e60b2bc52ae0b5f9959f0455e64f351c4d1a041b3a5e4a32117
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.7 MB (262731625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9caeb22daa9415663d8280c1067ac2ecebc66ef7163bab7e23cab4dabfdbfa90`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 02 Oct 2026 10:22:44 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:22:44 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:22:44 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:22:46 GMT
ADD file:1e8b3941ec802b3e9a687b06bf141aa99b460bda277875ad29712897c6622f25 in / 
# Fri, 02 Oct 2026 10:22:46 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:12:21 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Sat, 17 Oct 2026 00:12:21 GMT
ARG apt_archive=http://archive.ubuntu.com
# Sat, 17 Oct 2026 00:12:21 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Sat, 17 Oct 2026 00:12:21 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Sat, 17 Oct 2026 00:12:21 GMT
ARG REPO_CHANNEL=stable
# Sat, 17 Oct 2026 00:12:21 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Sat, 17 Oct 2026 00:12:21 GMT
ARG VERSION=26.8.28.14
# Sat, 17 Oct 2026 00:12:21 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Sat, 17 Oct 2026 00:12:50 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.28.14 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Sat, 17 Oct 2026 00:12:50 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.28.14 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Sat, 17 Oct 2026 00:12:51 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.28.14 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Sat, 17 Oct 2026 00:12:51 GMT
ENV LANG=en_US.UTF-8
# Sat, 17 Oct 2026 00:12:51 GMT
ENV TZ=UTC
# Sat, 17 Oct 2026 00:12:52 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.28.14 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Sat, 17 Oct 2026 00:12:52 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Sat, 17 Oct 2026 00:12:52 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Sat, 17 Oct 2026 00:12:52 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Sat, 17 Oct 2026 00:12:52 GMT
VOLUME [/var/lib/clickhouse]
# Sat, 17 Oct 2026 00:12:52 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Sat, 17 Oct 2026 00:12:52 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2908c4fa36d87b4ba1206721a9efe744e0e9b35d1437148222276c744aa6efa0`  
		Last Modified: Fri, 02 Oct 2026 11:08:32 GMT  
		Size: 27.7 MB (27684723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41a7727cea245628427ae50ba9caec2a3195f720d50f3618b63a999d8ed09723`  
		Last Modified: Sat, 17 Oct 2026 00:13:14 GMT  
		Size: 7.5 MB (7536529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a84e1f71ce4b55ecad391eaf105e616aa2d6a3ad5982bd870b3679818667efd`  
		Last Modified: Sat, 17 Oct 2026 00:13:18 GMT  
		Size: 226.6 MB (226640320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1f71076316e882014ae2846275d5e231c3bd6c4317fcaa58d3272e90737b0de`  
		Last Modified: Sat, 17 Oct 2026 00:13:13 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89f2d230aa985cc9afd997ff1b68a333bcc380559d765c013d32850774d3c682`  
		Last Modified: Sat, 17 Oct 2026 00:13:14 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9856e092a73a751e91e7f6f6a947a7539c4049063670e7e59249f438445eea2d`  
		Last Modified: Sat, 17 Oct 2026 00:13:15 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95319c5f685ae280da26718ae9ade3106d368fefe97685e42e111b597ec4d64d`  
		Last Modified: Sat, 17 Oct 2026 00:13:15 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14cc2b9fbd2233c0593850f7cc070d24b2fbfdc6be69695824cdaadf45a03211`  
		Last Modified: Sat, 17 Oct 2026 00:13:15 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:lts-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:0bf56aa73cd5bee846d3cb4a578125b6d5a5a3c4a551174d89836ee0be6f0957
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 KB (27578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2ee3beba21b4866ecc0a997b36d2b7838abe34f86e524f4191f8599989e7d7f`

```dockerfile
```

-	Layers:
	-	`sha256:55d2a3d017b4545f63897bf911d49e05ccf764c1f946e4437502bec1894a030f`  
		Last Modified: Sat, 17 Oct 2026 00:13:14 GMT  
		Size: 27.6 KB (27578 bytes)  
		MIME: application/vnd.in-toto+json
