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
$ docker pull clickhouse@sha256:c3de35f82cc1f710b57c410109a742fb15143d6080603f21b058eabdec23b124
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.3` - linux; amd64

```console
$ docker pull clickhouse@sha256:c56b6f15b956ac3dfbbd04a64094875da35414e36d54ace06d2e5247dfa26dfd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.0 MB (267017494 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43f95c868865e39ec323e29782dbfbe8bb83d3ff9aab8255eaf6e2a04117009b`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:42 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:42 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:42 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:44 GMT
ADD file:ba52f9eec2a5a7de74e9a460017725370755c2d4814dd746bde7507601befb53 in / 
# Sun, 25 Oct 2026 20:10:44 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:02:52 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 26 Oct 2026 23:02:52 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 26 Oct 2026 23:02:52 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 26 Oct 2026 23:02:52 GMT
ARG REPO_CHANNEL=stable
# Mon, 26 Oct 2026 23:02:52 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 26 Oct 2026 23:02:52 GMT
ARG VERSION=26.3.59.10
# Mon, 26 Oct 2026 23:02:52 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 26 Oct 2026 23:03:23 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.59.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 26 Oct 2026 23:03:23 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.59.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 26 Oct 2026 23:03:24 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.59.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 26 Oct 2026 23:03:24 GMT
ENV LANG=en_US.UTF-8
# Mon, 26 Oct 2026 23:03:24 GMT
ENV TZ=UTC
# Mon, 26 Oct 2026 23:03:25 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.59.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 26 Oct 2026 23:03:25 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 26 Oct 2026 23:03:25 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:03:25 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 26 Oct 2026 23:03:25 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 26 Oct 2026 23:03:25 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 26 Oct 2026 23:03:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a347ddc50521a86008fe3e0adafc4d4391032ee95ec1dc62c0c377902b6be6f`  
		Last Modified: Mon, 26 Oct 2026 23:03:51 GMT  
		Size: 7.6 MB (7550933 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae6bae5a2a9dcc2676831b01292e776d3b0d5803413a4add9dffe6cc966fd999`  
		Last Modified: Mon, 26 Oct 2026 23:03:55 GMT  
		Size: 228.8 MB (228844023 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3906e7e775c9e25386d8c82f5725bcbce5b921156ee99168bedd071c2e3044d`  
		Last Modified: Mon, 26 Oct 2026 23:03:50 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fc43cf224eb5e55ff08877090c07054485b9937de451faaf2479e80e04722bd`  
		Last Modified: Mon, 26 Oct 2026 23:03:50 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:631e770f37d6b73a7269d6711f852000e4e8ada260417b01e76adf5978429d85`  
		Last Modified: Mon, 26 Oct 2026 23:03:52 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d541829b8d9d76371b2a9b2a11cec15615972868fcc114f615c348b6368a10d`  
		Last Modified: Mon, 26 Oct 2026 23:03:52 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0582807c94a25d4b5e1384989ec5a50b3114d2e30de13092217e21c302e19c4d`  
		Last Modified: Mon, 26 Oct 2026 23:03:52 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3` - unknown; unknown

```console
$ docker pull clickhouse@sha256:96196e73d71cd0cf0f3f861fad8739b2a736e940f03bc31ed88ca148ae98c78c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ddfd1411c4b34c6fb2a639f426a716c7231ddf102acd24ffec41f109926f93ae`

```dockerfile
```

-	Layers:
	-	`sha256:58891fbdc5a8676ab174449094f47fe97aaa5f28038820a41e342603a4552303`  
		Last Modified: Mon, 26 Oct 2026 23:03:50 GMT  
		Size: 26.2 KB (26235 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.3` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:4a5b9ea250422d0345a1438d691dd44a77bdbbbf99e4ddc766e6759695ce7031
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.7 MB (248690903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7bbeb21c187e6499f1375a8b8a2b42e4eb58e6ee93f6bc0766f2c989b116099`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:50 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:50 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:50 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:52 GMT
ADD file:6efa877f019ce1c165e045c546c059568465dad040d65f7797e1bbbf530bed3e in / 
# Sun, 25 Oct 2026 20:10:53 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:08:50 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 26 Oct 2026 23:08:50 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 26 Oct 2026 23:08:50 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 26 Oct 2026 23:08:50 GMT
ARG REPO_CHANNEL=stable
# Mon, 26 Oct 2026 23:08:50 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 26 Oct 2026 23:08:50 GMT
ARG VERSION=26.3.59.10
# Mon, 26 Oct 2026 23:08:50 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 26 Oct 2026 23:09:25 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.59.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 26 Oct 2026 23:09:25 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.59.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 26 Oct 2026 23:09:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.59.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 26 Oct 2026 23:09:26 GMT
ENV LANG=en_US.UTF-8
# Mon, 26 Oct 2026 23:09:26 GMT
ENV TZ=UTC
# Mon, 26 Oct 2026 23:09:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.59.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 26 Oct 2026 23:09:26 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 26 Oct 2026 23:09:26 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:09:26 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 26 Oct 2026 23:09:26 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 26 Oct 2026 23:09:26 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 26 Oct 2026 23:09:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:771eed73ee82c7916df197c0fd7ef3ac4eedcb9a6318b10d2652948c6c4ca08f`  
		Last Modified: Sun, 25 Oct 2026 20:45:27 GMT  
		Size: 27.7 MB (27684607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4c3556bf101d5fd3a8efbfd82904b3cf492ee84e144d6fb6acbcbc0a5246b8c`  
		Last Modified: Mon, 26 Oct 2026 23:09:48 GMT  
		Size: 7.5 MB (7533865 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59dd4ec6fb5b071e2748d1f924f5706be8f591c75706399ce033ee995358e52c`  
		Last Modified: Mon, 26 Oct 2026 23:09:52 GMT  
		Size: 212.6 MB (212602379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e50a1c0ce591f6f9f4001493d4099b9610af6f45af1aaa95a6ae230441f6c6e4`  
		Last Modified: Mon, 26 Oct 2026 23:09:48 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0248fcc5b7f9e3eb562111fd5d6a83b0adece83dfe4fb8c986f61f4721bcabf2`  
		Last Modified: Mon, 26 Oct 2026 23:09:48 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79cae59e9d25cd619901cefc9fc37a724c4419df8321317141b99c14caa1bf21`  
		Last Modified: Mon, 26 Oct 2026 23:09:49 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eea3f6bb79461ab4f1dcc5d97e70df95f175f4a5a1de51fe1cd21f2c379bc2f5`  
		Last Modified: Mon, 26 Oct 2026 23:09:49 GMT  
		Size: 365.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de7686c031af57cd800dd84269d8f7a5a86b01bcca7783675604d65d7c3efad1`  
		Last Modified: Mon, 26 Oct 2026 23:09:49 GMT  
		Size: 3.6 KB (3636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3` - unknown; unknown

```console
$ docker pull clickhouse@sha256:38e75440cad16ae8c0bdc5880a4b9e90c27d980617ff5f4528b29c79a5d0be13
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8db09552cc9926b81ae0a93662c17946b4df137c5f7637c5d92be9067c232632`

```dockerfile
```

-	Layers:
	-	`sha256:f6b03ece7eea1ec2499bbad5eca0453bf7a21a39f3dee7148c0960a93309ca02`  
		Last Modified: Mon, 26 Oct 2026 23:09:48 GMT  
		Size: 26.4 KB (26423 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.3-jammy`

```console
$ docker pull clickhouse@sha256:c3de35f82cc1f710b57c410109a742fb15143d6080603f21b058eabdec23b124
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.3-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:c56b6f15b956ac3dfbbd04a64094875da35414e36d54ace06d2e5247dfa26dfd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.0 MB (267017494 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43f95c868865e39ec323e29782dbfbe8bb83d3ff9aab8255eaf6e2a04117009b`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:42 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:42 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:42 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:44 GMT
ADD file:ba52f9eec2a5a7de74e9a460017725370755c2d4814dd746bde7507601befb53 in / 
# Sun, 25 Oct 2026 20:10:44 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:02:52 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 26 Oct 2026 23:02:52 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 26 Oct 2026 23:02:52 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 26 Oct 2026 23:02:52 GMT
ARG REPO_CHANNEL=stable
# Mon, 26 Oct 2026 23:02:52 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 26 Oct 2026 23:02:52 GMT
ARG VERSION=26.3.59.10
# Mon, 26 Oct 2026 23:02:52 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 26 Oct 2026 23:03:23 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.59.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 26 Oct 2026 23:03:23 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.59.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 26 Oct 2026 23:03:24 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.59.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 26 Oct 2026 23:03:24 GMT
ENV LANG=en_US.UTF-8
# Mon, 26 Oct 2026 23:03:24 GMT
ENV TZ=UTC
# Mon, 26 Oct 2026 23:03:25 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.59.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 26 Oct 2026 23:03:25 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 26 Oct 2026 23:03:25 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:03:25 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 26 Oct 2026 23:03:25 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 26 Oct 2026 23:03:25 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 26 Oct 2026 23:03:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a347ddc50521a86008fe3e0adafc4d4391032ee95ec1dc62c0c377902b6be6f`  
		Last Modified: Mon, 26 Oct 2026 23:03:51 GMT  
		Size: 7.6 MB (7550933 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae6bae5a2a9dcc2676831b01292e776d3b0d5803413a4add9dffe6cc966fd999`  
		Last Modified: Mon, 26 Oct 2026 23:03:55 GMT  
		Size: 228.8 MB (228844023 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3906e7e775c9e25386d8c82f5725bcbce5b921156ee99168bedd071c2e3044d`  
		Last Modified: Mon, 26 Oct 2026 23:03:50 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fc43cf224eb5e55ff08877090c07054485b9937de451faaf2479e80e04722bd`  
		Last Modified: Mon, 26 Oct 2026 23:03:50 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:631e770f37d6b73a7269d6711f852000e4e8ada260417b01e76adf5978429d85`  
		Last Modified: Mon, 26 Oct 2026 23:03:52 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d541829b8d9d76371b2a9b2a11cec15615972868fcc114f615c348b6368a10d`  
		Last Modified: Mon, 26 Oct 2026 23:03:52 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0582807c94a25d4b5e1384989ec5a50b3114d2e30de13092217e21c302e19c4d`  
		Last Modified: Mon, 26 Oct 2026 23:03:52 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:96196e73d71cd0cf0f3f861fad8739b2a736e940f03bc31ed88ca148ae98c78c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ddfd1411c4b34c6fb2a639f426a716c7231ddf102acd24ffec41f109926f93ae`

```dockerfile
```

-	Layers:
	-	`sha256:58891fbdc5a8676ab174449094f47fe97aaa5f28038820a41e342603a4552303`  
		Last Modified: Mon, 26 Oct 2026 23:03:50 GMT  
		Size: 26.2 KB (26235 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.3-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:4a5b9ea250422d0345a1438d691dd44a77bdbbbf99e4ddc766e6759695ce7031
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.7 MB (248690903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7bbeb21c187e6499f1375a8b8a2b42e4eb58e6ee93f6bc0766f2c989b116099`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:50 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:50 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:50 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:52 GMT
ADD file:6efa877f019ce1c165e045c546c059568465dad040d65f7797e1bbbf530bed3e in / 
# Sun, 25 Oct 2026 20:10:53 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:08:50 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 26 Oct 2026 23:08:50 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 26 Oct 2026 23:08:50 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 26 Oct 2026 23:08:50 GMT
ARG REPO_CHANNEL=stable
# Mon, 26 Oct 2026 23:08:50 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 26 Oct 2026 23:08:50 GMT
ARG VERSION=26.3.59.10
# Mon, 26 Oct 2026 23:08:50 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 26 Oct 2026 23:09:25 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.59.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 26 Oct 2026 23:09:25 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.59.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 26 Oct 2026 23:09:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.59.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 26 Oct 2026 23:09:26 GMT
ENV LANG=en_US.UTF-8
# Mon, 26 Oct 2026 23:09:26 GMT
ENV TZ=UTC
# Mon, 26 Oct 2026 23:09:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.59.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 26 Oct 2026 23:09:26 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 26 Oct 2026 23:09:26 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:09:26 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 26 Oct 2026 23:09:26 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 26 Oct 2026 23:09:26 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 26 Oct 2026 23:09:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:771eed73ee82c7916df197c0fd7ef3ac4eedcb9a6318b10d2652948c6c4ca08f`  
		Last Modified: Sun, 25 Oct 2026 20:45:27 GMT  
		Size: 27.7 MB (27684607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4c3556bf101d5fd3a8efbfd82904b3cf492ee84e144d6fb6acbcbc0a5246b8c`  
		Last Modified: Mon, 26 Oct 2026 23:09:48 GMT  
		Size: 7.5 MB (7533865 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59dd4ec6fb5b071e2748d1f924f5706be8f591c75706399ce033ee995358e52c`  
		Last Modified: Mon, 26 Oct 2026 23:09:52 GMT  
		Size: 212.6 MB (212602379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e50a1c0ce591f6f9f4001493d4099b9610af6f45af1aaa95a6ae230441f6c6e4`  
		Last Modified: Mon, 26 Oct 2026 23:09:48 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0248fcc5b7f9e3eb562111fd5d6a83b0adece83dfe4fb8c986f61f4721bcabf2`  
		Last Modified: Mon, 26 Oct 2026 23:09:48 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79cae59e9d25cd619901cefc9fc37a724c4419df8321317141b99c14caa1bf21`  
		Last Modified: Mon, 26 Oct 2026 23:09:49 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eea3f6bb79461ab4f1dcc5d97e70df95f175f4a5a1de51fe1cd21f2c379bc2f5`  
		Last Modified: Mon, 26 Oct 2026 23:09:49 GMT  
		Size: 365.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de7686c031af57cd800dd84269d8f7a5a86b01bcca7783675604d65d7c3efad1`  
		Last Modified: Mon, 26 Oct 2026 23:09:49 GMT  
		Size: 3.6 KB (3636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:38e75440cad16ae8c0bdc5880a4b9e90c27d980617ff5f4528b29c79a5d0be13
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8db09552cc9926b81ae0a93662c17946b4df137c5f7637c5d92be9067c232632`

```dockerfile
```

-	Layers:
	-	`sha256:f6b03ece7eea1ec2499bbad5eca0453bf7a21a39f3dee7148c0960a93309ca02`  
		Last Modified: Mon, 26 Oct 2026 23:09:48 GMT  
		Size: 26.4 KB (26423 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.3.59`

```console
$ docker pull clickhouse@sha256:c3de35f82cc1f710b57c410109a742fb15143d6080603f21b058eabdec23b124
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.3.59` - linux; amd64

```console
$ docker pull clickhouse@sha256:c56b6f15b956ac3dfbbd04a64094875da35414e36d54ace06d2e5247dfa26dfd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.0 MB (267017494 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43f95c868865e39ec323e29782dbfbe8bb83d3ff9aab8255eaf6e2a04117009b`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:42 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:42 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:42 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:44 GMT
ADD file:ba52f9eec2a5a7de74e9a460017725370755c2d4814dd746bde7507601befb53 in / 
# Sun, 25 Oct 2026 20:10:44 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:02:52 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 26 Oct 2026 23:02:52 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 26 Oct 2026 23:02:52 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 26 Oct 2026 23:02:52 GMT
ARG REPO_CHANNEL=stable
# Mon, 26 Oct 2026 23:02:52 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 26 Oct 2026 23:02:52 GMT
ARG VERSION=26.3.59.10
# Mon, 26 Oct 2026 23:02:52 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 26 Oct 2026 23:03:23 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.59.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 26 Oct 2026 23:03:23 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.59.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 26 Oct 2026 23:03:24 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.59.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 26 Oct 2026 23:03:24 GMT
ENV LANG=en_US.UTF-8
# Mon, 26 Oct 2026 23:03:24 GMT
ENV TZ=UTC
# Mon, 26 Oct 2026 23:03:25 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.59.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 26 Oct 2026 23:03:25 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 26 Oct 2026 23:03:25 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:03:25 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 26 Oct 2026 23:03:25 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 26 Oct 2026 23:03:25 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 26 Oct 2026 23:03:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a347ddc50521a86008fe3e0adafc4d4391032ee95ec1dc62c0c377902b6be6f`  
		Last Modified: Mon, 26 Oct 2026 23:03:51 GMT  
		Size: 7.6 MB (7550933 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae6bae5a2a9dcc2676831b01292e776d3b0d5803413a4add9dffe6cc966fd999`  
		Last Modified: Mon, 26 Oct 2026 23:03:55 GMT  
		Size: 228.8 MB (228844023 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3906e7e775c9e25386d8c82f5725bcbce5b921156ee99168bedd071c2e3044d`  
		Last Modified: Mon, 26 Oct 2026 23:03:50 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fc43cf224eb5e55ff08877090c07054485b9937de451faaf2479e80e04722bd`  
		Last Modified: Mon, 26 Oct 2026 23:03:50 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:631e770f37d6b73a7269d6711f852000e4e8ada260417b01e76adf5978429d85`  
		Last Modified: Mon, 26 Oct 2026 23:03:52 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d541829b8d9d76371b2a9b2a11cec15615972868fcc114f615c348b6368a10d`  
		Last Modified: Mon, 26 Oct 2026 23:03:52 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0582807c94a25d4b5e1384989ec5a50b3114d2e30de13092217e21c302e19c4d`  
		Last Modified: Mon, 26 Oct 2026 23:03:52 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.59` - unknown; unknown

```console
$ docker pull clickhouse@sha256:96196e73d71cd0cf0f3f861fad8739b2a736e940f03bc31ed88ca148ae98c78c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ddfd1411c4b34c6fb2a639f426a716c7231ddf102acd24ffec41f109926f93ae`

```dockerfile
```

-	Layers:
	-	`sha256:58891fbdc5a8676ab174449094f47fe97aaa5f28038820a41e342603a4552303`  
		Last Modified: Mon, 26 Oct 2026 23:03:50 GMT  
		Size: 26.2 KB (26235 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.3.59` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:4a5b9ea250422d0345a1438d691dd44a77bdbbbf99e4ddc766e6759695ce7031
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.7 MB (248690903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7bbeb21c187e6499f1375a8b8a2b42e4eb58e6ee93f6bc0766f2c989b116099`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:50 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:50 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:50 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:52 GMT
ADD file:6efa877f019ce1c165e045c546c059568465dad040d65f7797e1bbbf530bed3e in / 
# Sun, 25 Oct 2026 20:10:53 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:08:50 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 26 Oct 2026 23:08:50 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 26 Oct 2026 23:08:50 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 26 Oct 2026 23:08:50 GMT
ARG REPO_CHANNEL=stable
# Mon, 26 Oct 2026 23:08:50 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 26 Oct 2026 23:08:50 GMT
ARG VERSION=26.3.59.10
# Mon, 26 Oct 2026 23:08:50 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 26 Oct 2026 23:09:25 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.59.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 26 Oct 2026 23:09:25 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.59.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 26 Oct 2026 23:09:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.59.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 26 Oct 2026 23:09:26 GMT
ENV LANG=en_US.UTF-8
# Mon, 26 Oct 2026 23:09:26 GMT
ENV TZ=UTC
# Mon, 26 Oct 2026 23:09:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.59.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 26 Oct 2026 23:09:26 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 26 Oct 2026 23:09:26 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:09:26 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 26 Oct 2026 23:09:26 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 26 Oct 2026 23:09:26 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 26 Oct 2026 23:09:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:771eed73ee82c7916df197c0fd7ef3ac4eedcb9a6318b10d2652948c6c4ca08f`  
		Last Modified: Sun, 25 Oct 2026 20:45:27 GMT  
		Size: 27.7 MB (27684607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4c3556bf101d5fd3a8efbfd82904b3cf492ee84e144d6fb6acbcbc0a5246b8c`  
		Last Modified: Mon, 26 Oct 2026 23:09:48 GMT  
		Size: 7.5 MB (7533865 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59dd4ec6fb5b071e2748d1f924f5706be8f591c75706399ce033ee995358e52c`  
		Last Modified: Mon, 26 Oct 2026 23:09:52 GMT  
		Size: 212.6 MB (212602379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e50a1c0ce591f6f9f4001493d4099b9610af6f45af1aaa95a6ae230441f6c6e4`  
		Last Modified: Mon, 26 Oct 2026 23:09:48 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0248fcc5b7f9e3eb562111fd5d6a83b0adece83dfe4fb8c986f61f4721bcabf2`  
		Last Modified: Mon, 26 Oct 2026 23:09:48 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79cae59e9d25cd619901cefc9fc37a724c4419df8321317141b99c14caa1bf21`  
		Last Modified: Mon, 26 Oct 2026 23:09:49 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eea3f6bb79461ab4f1dcc5d97e70df95f175f4a5a1de51fe1cd21f2c379bc2f5`  
		Last Modified: Mon, 26 Oct 2026 23:09:49 GMT  
		Size: 365.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de7686c031af57cd800dd84269d8f7a5a86b01bcca7783675604d65d7c3efad1`  
		Last Modified: Mon, 26 Oct 2026 23:09:49 GMT  
		Size: 3.6 KB (3636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.59` - unknown; unknown

```console
$ docker pull clickhouse@sha256:38e75440cad16ae8c0bdc5880a4b9e90c27d980617ff5f4528b29c79a5d0be13
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8db09552cc9926b81ae0a93662c17946b4df137c5f7637c5d92be9067c232632`

```dockerfile
```

-	Layers:
	-	`sha256:f6b03ece7eea1ec2499bbad5eca0453bf7a21a39f3dee7148c0960a93309ca02`  
		Last Modified: Mon, 26 Oct 2026 23:09:48 GMT  
		Size: 26.4 KB (26423 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.3.59-jammy`

```console
$ docker pull clickhouse@sha256:c3de35f82cc1f710b57c410109a742fb15143d6080603f21b058eabdec23b124
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.3.59-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:c56b6f15b956ac3dfbbd04a64094875da35414e36d54ace06d2e5247dfa26dfd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.0 MB (267017494 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43f95c868865e39ec323e29782dbfbe8bb83d3ff9aab8255eaf6e2a04117009b`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:42 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:42 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:42 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:44 GMT
ADD file:ba52f9eec2a5a7de74e9a460017725370755c2d4814dd746bde7507601befb53 in / 
# Sun, 25 Oct 2026 20:10:44 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:02:52 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 26 Oct 2026 23:02:52 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 26 Oct 2026 23:02:52 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 26 Oct 2026 23:02:52 GMT
ARG REPO_CHANNEL=stable
# Mon, 26 Oct 2026 23:02:52 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 26 Oct 2026 23:02:52 GMT
ARG VERSION=26.3.59.10
# Mon, 26 Oct 2026 23:02:52 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 26 Oct 2026 23:03:23 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.59.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 26 Oct 2026 23:03:23 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.59.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 26 Oct 2026 23:03:24 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.59.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 26 Oct 2026 23:03:24 GMT
ENV LANG=en_US.UTF-8
# Mon, 26 Oct 2026 23:03:24 GMT
ENV TZ=UTC
# Mon, 26 Oct 2026 23:03:25 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.59.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 26 Oct 2026 23:03:25 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 26 Oct 2026 23:03:25 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:03:25 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 26 Oct 2026 23:03:25 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 26 Oct 2026 23:03:25 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 26 Oct 2026 23:03:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a347ddc50521a86008fe3e0adafc4d4391032ee95ec1dc62c0c377902b6be6f`  
		Last Modified: Mon, 26 Oct 2026 23:03:51 GMT  
		Size: 7.6 MB (7550933 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae6bae5a2a9dcc2676831b01292e776d3b0d5803413a4add9dffe6cc966fd999`  
		Last Modified: Mon, 26 Oct 2026 23:03:55 GMT  
		Size: 228.8 MB (228844023 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3906e7e775c9e25386d8c82f5725bcbce5b921156ee99168bedd071c2e3044d`  
		Last Modified: Mon, 26 Oct 2026 23:03:50 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fc43cf224eb5e55ff08877090c07054485b9937de451faaf2479e80e04722bd`  
		Last Modified: Mon, 26 Oct 2026 23:03:50 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:631e770f37d6b73a7269d6711f852000e4e8ada260417b01e76adf5978429d85`  
		Last Modified: Mon, 26 Oct 2026 23:03:52 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d541829b8d9d76371b2a9b2a11cec15615972868fcc114f615c348b6368a10d`  
		Last Modified: Mon, 26 Oct 2026 23:03:52 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0582807c94a25d4b5e1384989ec5a50b3114d2e30de13092217e21c302e19c4d`  
		Last Modified: Mon, 26 Oct 2026 23:03:52 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.59-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:96196e73d71cd0cf0f3f861fad8739b2a736e940f03bc31ed88ca148ae98c78c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ddfd1411c4b34c6fb2a639f426a716c7231ddf102acd24ffec41f109926f93ae`

```dockerfile
```

-	Layers:
	-	`sha256:58891fbdc5a8676ab174449094f47fe97aaa5f28038820a41e342603a4552303`  
		Last Modified: Mon, 26 Oct 2026 23:03:50 GMT  
		Size: 26.2 KB (26235 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.3.59-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:4a5b9ea250422d0345a1438d691dd44a77bdbbbf99e4ddc766e6759695ce7031
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.7 MB (248690903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7bbeb21c187e6499f1375a8b8a2b42e4eb58e6ee93f6bc0766f2c989b116099`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:50 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:50 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:50 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:52 GMT
ADD file:6efa877f019ce1c165e045c546c059568465dad040d65f7797e1bbbf530bed3e in / 
# Sun, 25 Oct 2026 20:10:53 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:08:50 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 26 Oct 2026 23:08:50 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 26 Oct 2026 23:08:50 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 26 Oct 2026 23:08:50 GMT
ARG REPO_CHANNEL=stable
# Mon, 26 Oct 2026 23:08:50 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 26 Oct 2026 23:08:50 GMT
ARG VERSION=26.3.59.10
# Mon, 26 Oct 2026 23:08:50 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 26 Oct 2026 23:09:25 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.59.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 26 Oct 2026 23:09:25 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.59.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 26 Oct 2026 23:09:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.59.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 26 Oct 2026 23:09:26 GMT
ENV LANG=en_US.UTF-8
# Mon, 26 Oct 2026 23:09:26 GMT
ENV TZ=UTC
# Mon, 26 Oct 2026 23:09:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.59.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 26 Oct 2026 23:09:26 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 26 Oct 2026 23:09:26 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:09:26 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 26 Oct 2026 23:09:26 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 26 Oct 2026 23:09:26 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 26 Oct 2026 23:09:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:771eed73ee82c7916df197c0fd7ef3ac4eedcb9a6318b10d2652948c6c4ca08f`  
		Last Modified: Sun, 25 Oct 2026 20:45:27 GMT  
		Size: 27.7 MB (27684607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4c3556bf101d5fd3a8efbfd82904b3cf492ee84e144d6fb6acbcbc0a5246b8c`  
		Last Modified: Mon, 26 Oct 2026 23:09:48 GMT  
		Size: 7.5 MB (7533865 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59dd4ec6fb5b071e2748d1f924f5706be8f591c75706399ce033ee995358e52c`  
		Last Modified: Mon, 26 Oct 2026 23:09:52 GMT  
		Size: 212.6 MB (212602379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e50a1c0ce591f6f9f4001493d4099b9610af6f45af1aaa95a6ae230441f6c6e4`  
		Last Modified: Mon, 26 Oct 2026 23:09:48 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0248fcc5b7f9e3eb562111fd5d6a83b0adece83dfe4fb8c986f61f4721bcabf2`  
		Last Modified: Mon, 26 Oct 2026 23:09:48 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79cae59e9d25cd619901cefc9fc37a724c4419df8321317141b99c14caa1bf21`  
		Last Modified: Mon, 26 Oct 2026 23:09:49 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eea3f6bb79461ab4f1dcc5d97e70df95f175f4a5a1de51fe1cd21f2c379bc2f5`  
		Last Modified: Mon, 26 Oct 2026 23:09:49 GMT  
		Size: 365.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de7686c031af57cd800dd84269d8f7a5a86b01bcca7783675604d65d7c3efad1`  
		Last Modified: Mon, 26 Oct 2026 23:09:49 GMT  
		Size: 3.6 KB (3636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.59-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:38e75440cad16ae8c0bdc5880a4b9e90c27d980617ff5f4528b29c79a5d0be13
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8db09552cc9926b81ae0a93662c17946b4df137c5f7637c5d92be9067c232632`

```dockerfile
```

-	Layers:
	-	`sha256:f6b03ece7eea1ec2499bbad5eca0453bf7a21a39f3dee7148c0960a93309ca02`  
		Last Modified: Mon, 26 Oct 2026 23:09:48 GMT  
		Size: 26.4 KB (26423 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.3.59.10`

```console
$ docker pull clickhouse@sha256:c3de35f82cc1f710b57c410109a742fb15143d6080603f21b058eabdec23b124
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.3.59.10` - linux; amd64

```console
$ docker pull clickhouse@sha256:c56b6f15b956ac3dfbbd04a64094875da35414e36d54ace06d2e5247dfa26dfd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.0 MB (267017494 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43f95c868865e39ec323e29782dbfbe8bb83d3ff9aab8255eaf6e2a04117009b`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:42 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:42 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:42 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:44 GMT
ADD file:ba52f9eec2a5a7de74e9a460017725370755c2d4814dd746bde7507601befb53 in / 
# Sun, 25 Oct 2026 20:10:44 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:02:52 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 26 Oct 2026 23:02:52 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 26 Oct 2026 23:02:52 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 26 Oct 2026 23:02:52 GMT
ARG REPO_CHANNEL=stable
# Mon, 26 Oct 2026 23:02:52 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 26 Oct 2026 23:02:52 GMT
ARG VERSION=26.3.59.10
# Mon, 26 Oct 2026 23:02:52 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 26 Oct 2026 23:03:23 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.59.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 26 Oct 2026 23:03:23 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.59.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 26 Oct 2026 23:03:24 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.59.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 26 Oct 2026 23:03:24 GMT
ENV LANG=en_US.UTF-8
# Mon, 26 Oct 2026 23:03:24 GMT
ENV TZ=UTC
# Mon, 26 Oct 2026 23:03:25 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.59.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 26 Oct 2026 23:03:25 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 26 Oct 2026 23:03:25 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:03:25 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 26 Oct 2026 23:03:25 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 26 Oct 2026 23:03:25 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 26 Oct 2026 23:03:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a347ddc50521a86008fe3e0adafc4d4391032ee95ec1dc62c0c377902b6be6f`  
		Last Modified: Mon, 26 Oct 2026 23:03:51 GMT  
		Size: 7.6 MB (7550933 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae6bae5a2a9dcc2676831b01292e776d3b0d5803413a4add9dffe6cc966fd999`  
		Last Modified: Mon, 26 Oct 2026 23:03:55 GMT  
		Size: 228.8 MB (228844023 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3906e7e775c9e25386d8c82f5725bcbce5b921156ee99168bedd071c2e3044d`  
		Last Modified: Mon, 26 Oct 2026 23:03:50 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fc43cf224eb5e55ff08877090c07054485b9937de451faaf2479e80e04722bd`  
		Last Modified: Mon, 26 Oct 2026 23:03:50 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:631e770f37d6b73a7269d6711f852000e4e8ada260417b01e76adf5978429d85`  
		Last Modified: Mon, 26 Oct 2026 23:03:52 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d541829b8d9d76371b2a9b2a11cec15615972868fcc114f615c348b6368a10d`  
		Last Modified: Mon, 26 Oct 2026 23:03:52 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0582807c94a25d4b5e1384989ec5a50b3114d2e30de13092217e21c302e19c4d`  
		Last Modified: Mon, 26 Oct 2026 23:03:52 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.59.10` - unknown; unknown

```console
$ docker pull clickhouse@sha256:96196e73d71cd0cf0f3f861fad8739b2a736e940f03bc31ed88ca148ae98c78c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ddfd1411c4b34c6fb2a639f426a716c7231ddf102acd24ffec41f109926f93ae`

```dockerfile
```

-	Layers:
	-	`sha256:58891fbdc5a8676ab174449094f47fe97aaa5f28038820a41e342603a4552303`  
		Last Modified: Mon, 26 Oct 2026 23:03:50 GMT  
		Size: 26.2 KB (26235 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.3.59.10` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:4a5b9ea250422d0345a1438d691dd44a77bdbbbf99e4ddc766e6759695ce7031
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.7 MB (248690903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7bbeb21c187e6499f1375a8b8a2b42e4eb58e6ee93f6bc0766f2c989b116099`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:50 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:50 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:50 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:52 GMT
ADD file:6efa877f019ce1c165e045c546c059568465dad040d65f7797e1bbbf530bed3e in / 
# Sun, 25 Oct 2026 20:10:53 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:08:50 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 26 Oct 2026 23:08:50 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 26 Oct 2026 23:08:50 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 26 Oct 2026 23:08:50 GMT
ARG REPO_CHANNEL=stable
# Mon, 26 Oct 2026 23:08:50 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 26 Oct 2026 23:08:50 GMT
ARG VERSION=26.3.59.10
# Mon, 26 Oct 2026 23:08:50 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 26 Oct 2026 23:09:25 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.59.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 26 Oct 2026 23:09:25 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.59.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 26 Oct 2026 23:09:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.59.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 26 Oct 2026 23:09:26 GMT
ENV LANG=en_US.UTF-8
# Mon, 26 Oct 2026 23:09:26 GMT
ENV TZ=UTC
# Mon, 26 Oct 2026 23:09:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.59.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 26 Oct 2026 23:09:26 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 26 Oct 2026 23:09:26 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:09:26 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 26 Oct 2026 23:09:26 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 26 Oct 2026 23:09:26 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 26 Oct 2026 23:09:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:771eed73ee82c7916df197c0fd7ef3ac4eedcb9a6318b10d2652948c6c4ca08f`  
		Last Modified: Sun, 25 Oct 2026 20:45:27 GMT  
		Size: 27.7 MB (27684607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4c3556bf101d5fd3a8efbfd82904b3cf492ee84e144d6fb6acbcbc0a5246b8c`  
		Last Modified: Mon, 26 Oct 2026 23:09:48 GMT  
		Size: 7.5 MB (7533865 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59dd4ec6fb5b071e2748d1f924f5706be8f591c75706399ce033ee995358e52c`  
		Last Modified: Mon, 26 Oct 2026 23:09:52 GMT  
		Size: 212.6 MB (212602379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e50a1c0ce591f6f9f4001493d4099b9610af6f45af1aaa95a6ae230441f6c6e4`  
		Last Modified: Mon, 26 Oct 2026 23:09:48 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0248fcc5b7f9e3eb562111fd5d6a83b0adece83dfe4fb8c986f61f4721bcabf2`  
		Last Modified: Mon, 26 Oct 2026 23:09:48 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79cae59e9d25cd619901cefc9fc37a724c4419df8321317141b99c14caa1bf21`  
		Last Modified: Mon, 26 Oct 2026 23:09:49 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eea3f6bb79461ab4f1dcc5d97e70df95f175f4a5a1de51fe1cd21f2c379bc2f5`  
		Last Modified: Mon, 26 Oct 2026 23:09:49 GMT  
		Size: 365.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de7686c031af57cd800dd84269d8f7a5a86b01bcca7783675604d65d7c3efad1`  
		Last Modified: Mon, 26 Oct 2026 23:09:49 GMT  
		Size: 3.6 KB (3636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.59.10` - unknown; unknown

```console
$ docker pull clickhouse@sha256:38e75440cad16ae8c0bdc5880a4b9e90c27d980617ff5f4528b29c79a5d0be13
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8db09552cc9926b81ae0a93662c17946b4df137c5f7637c5d92be9067c232632`

```dockerfile
```

-	Layers:
	-	`sha256:f6b03ece7eea1ec2499bbad5eca0453bf7a21a39f3dee7148c0960a93309ca02`  
		Last Modified: Mon, 26 Oct 2026 23:09:48 GMT  
		Size: 26.4 KB (26423 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.3.59.10-jammy`

```console
$ docker pull clickhouse@sha256:c3de35f82cc1f710b57c410109a742fb15143d6080603f21b058eabdec23b124
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.3.59.10-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:c56b6f15b956ac3dfbbd04a64094875da35414e36d54ace06d2e5247dfa26dfd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.0 MB (267017494 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43f95c868865e39ec323e29782dbfbe8bb83d3ff9aab8255eaf6e2a04117009b`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:42 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:42 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:42 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:44 GMT
ADD file:ba52f9eec2a5a7de74e9a460017725370755c2d4814dd746bde7507601befb53 in / 
# Sun, 25 Oct 2026 20:10:44 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:02:52 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 26 Oct 2026 23:02:52 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 26 Oct 2026 23:02:52 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 26 Oct 2026 23:02:52 GMT
ARG REPO_CHANNEL=stable
# Mon, 26 Oct 2026 23:02:52 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 26 Oct 2026 23:02:52 GMT
ARG VERSION=26.3.59.10
# Mon, 26 Oct 2026 23:02:52 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 26 Oct 2026 23:03:23 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.59.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 26 Oct 2026 23:03:23 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.59.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 26 Oct 2026 23:03:24 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.59.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 26 Oct 2026 23:03:24 GMT
ENV LANG=en_US.UTF-8
# Mon, 26 Oct 2026 23:03:24 GMT
ENV TZ=UTC
# Mon, 26 Oct 2026 23:03:25 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.59.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 26 Oct 2026 23:03:25 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 26 Oct 2026 23:03:25 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:03:25 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 26 Oct 2026 23:03:25 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 26 Oct 2026 23:03:25 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 26 Oct 2026 23:03:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a347ddc50521a86008fe3e0adafc4d4391032ee95ec1dc62c0c377902b6be6f`  
		Last Modified: Mon, 26 Oct 2026 23:03:51 GMT  
		Size: 7.6 MB (7550933 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae6bae5a2a9dcc2676831b01292e776d3b0d5803413a4add9dffe6cc966fd999`  
		Last Modified: Mon, 26 Oct 2026 23:03:55 GMT  
		Size: 228.8 MB (228844023 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3906e7e775c9e25386d8c82f5725bcbce5b921156ee99168bedd071c2e3044d`  
		Last Modified: Mon, 26 Oct 2026 23:03:50 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fc43cf224eb5e55ff08877090c07054485b9937de451faaf2479e80e04722bd`  
		Last Modified: Mon, 26 Oct 2026 23:03:50 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:631e770f37d6b73a7269d6711f852000e4e8ada260417b01e76adf5978429d85`  
		Last Modified: Mon, 26 Oct 2026 23:03:52 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d541829b8d9d76371b2a9b2a11cec15615972868fcc114f615c348b6368a10d`  
		Last Modified: Mon, 26 Oct 2026 23:03:52 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0582807c94a25d4b5e1384989ec5a50b3114d2e30de13092217e21c302e19c4d`  
		Last Modified: Mon, 26 Oct 2026 23:03:52 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.59.10-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:96196e73d71cd0cf0f3f861fad8739b2a736e940f03bc31ed88ca148ae98c78c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ddfd1411c4b34c6fb2a639f426a716c7231ddf102acd24ffec41f109926f93ae`

```dockerfile
```

-	Layers:
	-	`sha256:58891fbdc5a8676ab174449094f47fe97aaa5f28038820a41e342603a4552303`  
		Last Modified: Mon, 26 Oct 2026 23:03:50 GMT  
		Size: 26.2 KB (26235 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.3.59.10-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:4a5b9ea250422d0345a1438d691dd44a77bdbbbf99e4ddc766e6759695ce7031
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.7 MB (248690903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7bbeb21c187e6499f1375a8b8a2b42e4eb58e6ee93f6bc0766f2c989b116099`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:50 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:50 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:50 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:52 GMT
ADD file:6efa877f019ce1c165e045c546c059568465dad040d65f7797e1bbbf530bed3e in / 
# Sun, 25 Oct 2026 20:10:53 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:08:50 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 26 Oct 2026 23:08:50 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 26 Oct 2026 23:08:50 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 26 Oct 2026 23:08:50 GMT
ARG REPO_CHANNEL=stable
# Mon, 26 Oct 2026 23:08:50 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 26 Oct 2026 23:08:50 GMT
ARG VERSION=26.3.59.10
# Mon, 26 Oct 2026 23:08:50 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 26 Oct 2026 23:09:25 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.59.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 26 Oct 2026 23:09:25 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.59.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 26 Oct 2026 23:09:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.59.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 26 Oct 2026 23:09:26 GMT
ENV LANG=en_US.UTF-8
# Mon, 26 Oct 2026 23:09:26 GMT
ENV TZ=UTC
# Mon, 26 Oct 2026 23:09:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.59.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 26 Oct 2026 23:09:26 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 26 Oct 2026 23:09:26 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:09:26 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 26 Oct 2026 23:09:26 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 26 Oct 2026 23:09:26 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 26 Oct 2026 23:09:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:771eed73ee82c7916df197c0fd7ef3ac4eedcb9a6318b10d2652948c6c4ca08f`  
		Last Modified: Sun, 25 Oct 2026 20:45:27 GMT  
		Size: 27.7 MB (27684607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4c3556bf101d5fd3a8efbfd82904b3cf492ee84e144d6fb6acbcbc0a5246b8c`  
		Last Modified: Mon, 26 Oct 2026 23:09:48 GMT  
		Size: 7.5 MB (7533865 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59dd4ec6fb5b071e2748d1f924f5706be8f591c75706399ce033ee995358e52c`  
		Last Modified: Mon, 26 Oct 2026 23:09:52 GMT  
		Size: 212.6 MB (212602379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e50a1c0ce591f6f9f4001493d4099b9610af6f45af1aaa95a6ae230441f6c6e4`  
		Last Modified: Mon, 26 Oct 2026 23:09:48 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0248fcc5b7f9e3eb562111fd5d6a83b0adece83dfe4fb8c986f61f4721bcabf2`  
		Last Modified: Mon, 26 Oct 2026 23:09:48 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79cae59e9d25cd619901cefc9fc37a724c4419df8321317141b99c14caa1bf21`  
		Last Modified: Mon, 26 Oct 2026 23:09:49 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eea3f6bb79461ab4f1dcc5d97e70df95f175f4a5a1de51fe1cd21f2c379bc2f5`  
		Last Modified: Mon, 26 Oct 2026 23:09:49 GMT  
		Size: 365.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de7686c031af57cd800dd84269d8f7a5a86b01bcca7783675604d65d7c3efad1`  
		Last Modified: Mon, 26 Oct 2026 23:09:49 GMT  
		Size: 3.6 KB (3636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.59.10-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:38e75440cad16ae8c0bdc5880a4b9e90c27d980617ff5f4528b29c79a5d0be13
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8db09552cc9926b81ae0a93662c17946b4df137c5f7637c5d92be9067c232632`

```dockerfile
```

-	Layers:
	-	`sha256:f6b03ece7eea1ec2499bbad5eca0453bf7a21a39f3dee7148c0960a93309ca02`  
		Last Modified: Mon, 26 Oct 2026 23:09:48 GMT  
		Size: 26.4 KB (26423 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.7`

```console
$ docker pull clickhouse@sha256:d7a4d5fd8b9c680ac48b4317bec3dd21c7ccb908a57746a3c51a6a3c47a2e88d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.7` - linux; amd64

```console
$ docker pull clickhouse@sha256:6ce8864538a84345c05ae2848c0c5275797c358378d03165d70deb8cca29bdb6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.4 MB (268391001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfa4d71e9f8df8f329526da32463c950ddad334442df6305f527927c347024dd`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:42 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:42 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:42 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:44 GMT
ADD file:ba52f9eec2a5a7de74e9a460017725370755c2d4814dd746bde7507601befb53 in / 
# Sun, 25 Oct 2026 20:10:44 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:02:49 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 26 Oct 2026 23:02:49 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 26 Oct 2026 23:02:49 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 26 Oct 2026 23:02:49 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 26 Oct 2026 23:02:49 GMT
ARG REPO_CHANNEL=stable
# Mon, 26 Oct 2026 23:02:49 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 26 Oct 2026 23:02:49 GMT
ARG VERSION=26.7.37.6
# Mon, 26 Oct 2026 23:02:49 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 26 Oct 2026 23:03:23 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.37.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 26 Oct 2026 23:03:23 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.37.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 26 Oct 2026 23:03:24 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.37.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 26 Oct 2026 23:03:24 GMT
ENV LANG=en_US.UTF-8
# Mon, 26 Oct 2026 23:03:24 GMT
ENV TZ=UTC
# Mon, 26 Oct 2026 23:03:24 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.37.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 26 Oct 2026 23:03:24 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 26 Oct 2026 23:03:24 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:03:24 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 26 Oct 2026 23:03:24 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 26 Oct 2026 23:03:24 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 26 Oct 2026 23:03:24 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5768e3bc9ac4272cb458ca09fdc5553b70cc7a2c31e06469e6488fcde8e238f`  
		Last Modified: Mon, 26 Oct 2026 23:03:50 GMT  
		Size: 7.6 MB (7550999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5df0f73bf466a7d94e7ef5371b9f9266c8bf903143d1a5d0d34584f9ee637d8b`  
		Last Modified: Mon, 26 Oct 2026 23:03:54 GMT  
		Size: 230.2 MB (230217464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3906e7e775c9e25386d8c82f5725bcbce5b921156ee99168bedd071c2e3044d`  
		Last Modified: Mon, 26 Oct 2026 23:03:50 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fc43cf224eb5e55ff08877090c07054485b9937de451faaf2479e80e04722bd`  
		Last Modified: Mon, 26 Oct 2026 23:03:50 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b5010d6a4551675801d9e26dd69b73c29e7dc437387e9c52ef0efa261861171`  
		Last Modified: Mon, 26 Oct 2026 23:03:51 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e14f6b21e99d7d7e985e38aa1fa331d893104cbab5b6be3c6e6d8cc2fc74bac`  
		Last Modified: Mon, 26 Oct 2026 23:03:51 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01f514a697664d540d3a316cee1eb5398d1f36213da1eaed5465b63910bbca27`  
		Last Modified: Mon, 26 Oct 2026 23:03:51 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7` - unknown; unknown

```console
$ docker pull clickhouse@sha256:c48c0cb88fca372c0b88084bd726f5dc8e3a9f8e7158186e42520d1bb8c5f4ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.7 KB (26739 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bb2074f00f21689af56cdcfda6436507f35904734ed05ce8fd76edfdf7ffe5e`

```dockerfile
```

-	Layers:
	-	`sha256:06d3bb0cf7d7d62e4b74e2b3a09bdda57fe2fe2d970f1d768d8190758762f835`  
		Last Modified: Mon, 26 Oct 2026 23:03:49 GMT  
		Size: 26.7 KB (26739 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.7` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:2b26fc6c7c9541dfdebd97fc37c42a84e553702db57f1c9066e982534786763e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.8 MB (251750749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf0b7877b49b13f5e6d0a69d71dcf86347a7105b9faf0c7b9fdcb31fbcd505be`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:50 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:50 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:50 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:52 GMT
ADD file:6efa877f019ce1c165e045c546c059568465dad040d65f7797e1bbbf530bed3e in / 
# Sun, 25 Oct 2026 20:10:53 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:08:38 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 26 Oct 2026 23:08:38 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 26 Oct 2026 23:08:38 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 26 Oct 2026 23:08:38 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 26 Oct 2026 23:08:38 GMT
ARG REPO_CHANNEL=stable
# Mon, 26 Oct 2026 23:08:38 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 26 Oct 2026 23:08:38 GMT
ARG VERSION=26.7.37.6
# Mon, 26 Oct 2026 23:08:38 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 26 Oct 2026 23:09:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.37.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 26 Oct 2026 23:09:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.37.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 26 Oct 2026 23:09:18 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.37.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 26 Oct 2026 23:09:18 GMT
ENV LANG=en_US.UTF-8
# Mon, 26 Oct 2026 23:09:18 GMT
ENV TZ=UTC
# Mon, 26 Oct 2026 23:09:18 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.37.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 26 Oct 2026 23:09:18 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 26 Oct 2026 23:09:18 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:09:18 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 26 Oct 2026 23:09:18 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 26 Oct 2026 23:09:18 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 26 Oct 2026 23:09:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:771eed73ee82c7916df197c0fd7ef3ac4eedcb9a6318b10d2652948c6c4ca08f`  
		Last Modified: Sun, 25 Oct 2026 20:45:27 GMT  
		Size: 27.7 MB (27684607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:814de30e4770f0334d8ac416d7dc43b281e66d178ee97fc2e60a103175d13cf7`  
		Last Modified: Mon, 26 Oct 2026 23:09:40 GMT  
		Size: 7.5 MB (7533861 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59e8951312f0db2113747e9ffa808eee5e7d3086f2e9e6e1185afa1373a8a84c`  
		Last Modified: Mon, 26 Oct 2026 23:09:44 GMT  
		Size: 215.7 MB (215662227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d6dfe9172cf3e9febb416c7d3283aa3450eb4cfa3e52790708bef0290ecf264`  
		Last Modified: Mon, 26 Oct 2026 23:09:39 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e051dfa503a8f5f040f3c3a649d6f593e7e2e3d40a0ef1c20273d29e1bee04ea`  
		Last Modified: Mon, 26 Oct 2026 23:09:40 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac97ff6602579a43a03e66262502e2de894f279145c5acb1c7d93a88954ec8e4`  
		Last Modified: Mon, 26 Oct 2026 23:09:41 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24a0d89cd526f3b52f70ac15f0366b0b8966fbb81c6a6413501e245f65b71312`  
		Last Modified: Mon, 26 Oct 2026 23:09:41 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9819b2caf542549c2eae2c830ab267fef4eec7745ba1931f7e76f4e458ed8dfe`  
		Last Modified: Mon, 26 Oct 2026 23:09:41 GMT  
		Size: 3.6 KB (3639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7` - unknown; unknown

```console
$ docker pull clickhouse@sha256:39a7e4166bba88bb717fa92344122b5a95a9b268cc8fe1c6538011a0c073f9fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.9 KB (26927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:acb15b03c05e1ceb3c67dc7b897f71735a7d170afa6266271497e60d862adf21`

```dockerfile
```

-	Layers:
	-	`sha256:be073b426ef6e944eae7dc602712dada2e753b8d75a0fa19ed34837000e72c83`  
		Last Modified: Mon, 26 Oct 2026 23:09:39 GMT  
		Size: 26.9 KB (26927 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.7-jammy`

```console
$ docker pull clickhouse@sha256:d7a4d5fd8b9c680ac48b4317bec3dd21c7ccb908a57746a3c51a6a3c47a2e88d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.7-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:6ce8864538a84345c05ae2848c0c5275797c358378d03165d70deb8cca29bdb6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.4 MB (268391001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfa4d71e9f8df8f329526da32463c950ddad334442df6305f527927c347024dd`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:42 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:42 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:42 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:44 GMT
ADD file:ba52f9eec2a5a7de74e9a460017725370755c2d4814dd746bde7507601befb53 in / 
# Sun, 25 Oct 2026 20:10:44 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:02:49 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 26 Oct 2026 23:02:49 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 26 Oct 2026 23:02:49 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 26 Oct 2026 23:02:49 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 26 Oct 2026 23:02:49 GMT
ARG REPO_CHANNEL=stable
# Mon, 26 Oct 2026 23:02:49 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 26 Oct 2026 23:02:49 GMT
ARG VERSION=26.7.37.6
# Mon, 26 Oct 2026 23:02:49 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 26 Oct 2026 23:03:23 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.37.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 26 Oct 2026 23:03:23 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.37.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 26 Oct 2026 23:03:24 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.37.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 26 Oct 2026 23:03:24 GMT
ENV LANG=en_US.UTF-8
# Mon, 26 Oct 2026 23:03:24 GMT
ENV TZ=UTC
# Mon, 26 Oct 2026 23:03:24 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.37.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 26 Oct 2026 23:03:24 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 26 Oct 2026 23:03:24 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:03:24 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 26 Oct 2026 23:03:24 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 26 Oct 2026 23:03:24 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 26 Oct 2026 23:03:24 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5768e3bc9ac4272cb458ca09fdc5553b70cc7a2c31e06469e6488fcde8e238f`  
		Last Modified: Mon, 26 Oct 2026 23:03:50 GMT  
		Size: 7.6 MB (7550999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5df0f73bf466a7d94e7ef5371b9f9266c8bf903143d1a5d0d34584f9ee637d8b`  
		Last Modified: Mon, 26 Oct 2026 23:03:54 GMT  
		Size: 230.2 MB (230217464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3906e7e775c9e25386d8c82f5725bcbce5b921156ee99168bedd071c2e3044d`  
		Last Modified: Mon, 26 Oct 2026 23:03:50 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fc43cf224eb5e55ff08877090c07054485b9937de451faaf2479e80e04722bd`  
		Last Modified: Mon, 26 Oct 2026 23:03:50 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b5010d6a4551675801d9e26dd69b73c29e7dc437387e9c52ef0efa261861171`  
		Last Modified: Mon, 26 Oct 2026 23:03:51 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e14f6b21e99d7d7e985e38aa1fa331d893104cbab5b6be3c6e6d8cc2fc74bac`  
		Last Modified: Mon, 26 Oct 2026 23:03:51 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01f514a697664d540d3a316cee1eb5398d1f36213da1eaed5465b63910bbca27`  
		Last Modified: Mon, 26 Oct 2026 23:03:51 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:c48c0cb88fca372c0b88084bd726f5dc8e3a9f8e7158186e42520d1bb8c5f4ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.7 KB (26739 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bb2074f00f21689af56cdcfda6436507f35904734ed05ce8fd76edfdf7ffe5e`

```dockerfile
```

-	Layers:
	-	`sha256:06d3bb0cf7d7d62e4b74e2b3a09bdda57fe2fe2d970f1d768d8190758762f835`  
		Last Modified: Mon, 26 Oct 2026 23:03:49 GMT  
		Size: 26.7 KB (26739 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.7-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:2b26fc6c7c9541dfdebd97fc37c42a84e553702db57f1c9066e982534786763e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.8 MB (251750749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf0b7877b49b13f5e6d0a69d71dcf86347a7105b9faf0c7b9fdcb31fbcd505be`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:50 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:50 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:50 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:52 GMT
ADD file:6efa877f019ce1c165e045c546c059568465dad040d65f7797e1bbbf530bed3e in / 
# Sun, 25 Oct 2026 20:10:53 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:08:38 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 26 Oct 2026 23:08:38 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 26 Oct 2026 23:08:38 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 26 Oct 2026 23:08:38 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 26 Oct 2026 23:08:38 GMT
ARG REPO_CHANNEL=stable
# Mon, 26 Oct 2026 23:08:38 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 26 Oct 2026 23:08:38 GMT
ARG VERSION=26.7.37.6
# Mon, 26 Oct 2026 23:08:38 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 26 Oct 2026 23:09:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.37.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 26 Oct 2026 23:09:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.37.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 26 Oct 2026 23:09:18 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.37.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 26 Oct 2026 23:09:18 GMT
ENV LANG=en_US.UTF-8
# Mon, 26 Oct 2026 23:09:18 GMT
ENV TZ=UTC
# Mon, 26 Oct 2026 23:09:18 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.37.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 26 Oct 2026 23:09:18 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 26 Oct 2026 23:09:18 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:09:18 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 26 Oct 2026 23:09:18 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 26 Oct 2026 23:09:18 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 26 Oct 2026 23:09:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:771eed73ee82c7916df197c0fd7ef3ac4eedcb9a6318b10d2652948c6c4ca08f`  
		Last Modified: Sun, 25 Oct 2026 20:45:27 GMT  
		Size: 27.7 MB (27684607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:814de30e4770f0334d8ac416d7dc43b281e66d178ee97fc2e60a103175d13cf7`  
		Last Modified: Mon, 26 Oct 2026 23:09:40 GMT  
		Size: 7.5 MB (7533861 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59e8951312f0db2113747e9ffa808eee5e7d3086f2e9e6e1185afa1373a8a84c`  
		Last Modified: Mon, 26 Oct 2026 23:09:44 GMT  
		Size: 215.7 MB (215662227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d6dfe9172cf3e9febb416c7d3283aa3450eb4cfa3e52790708bef0290ecf264`  
		Last Modified: Mon, 26 Oct 2026 23:09:39 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e051dfa503a8f5f040f3c3a649d6f593e7e2e3d40a0ef1c20273d29e1bee04ea`  
		Last Modified: Mon, 26 Oct 2026 23:09:40 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac97ff6602579a43a03e66262502e2de894f279145c5acb1c7d93a88954ec8e4`  
		Last Modified: Mon, 26 Oct 2026 23:09:41 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24a0d89cd526f3b52f70ac15f0366b0b8966fbb81c6a6413501e245f65b71312`  
		Last Modified: Mon, 26 Oct 2026 23:09:41 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9819b2caf542549c2eae2c830ab267fef4eec7745ba1931f7e76f4e458ed8dfe`  
		Last Modified: Mon, 26 Oct 2026 23:09:41 GMT  
		Size: 3.6 KB (3639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:39a7e4166bba88bb717fa92344122b5a95a9b268cc8fe1c6538011a0c073f9fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.9 KB (26927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:acb15b03c05e1ceb3c67dc7b897f71735a7d170afa6266271497e60d862adf21`

```dockerfile
```

-	Layers:
	-	`sha256:be073b426ef6e944eae7dc602712dada2e753b8d75a0fa19ed34837000e72c83`  
		Last Modified: Mon, 26 Oct 2026 23:09:39 GMT  
		Size: 26.9 KB (26927 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.7.37`

```console
$ docker pull clickhouse@sha256:d7a4d5fd8b9c680ac48b4317bec3dd21c7ccb908a57746a3c51a6a3c47a2e88d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.7.37` - linux; amd64

```console
$ docker pull clickhouse@sha256:6ce8864538a84345c05ae2848c0c5275797c358378d03165d70deb8cca29bdb6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.4 MB (268391001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfa4d71e9f8df8f329526da32463c950ddad334442df6305f527927c347024dd`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:42 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:42 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:42 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:44 GMT
ADD file:ba52f9eec2a5a7de74e9a460017725370755c2d4814dd746bde7507601befb53 in / 
# Sun, 25 Oct 2026 20:10:44 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:02:49 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 26 Oct 2026 23:02:49 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 26 Oct 2026 23:02:49 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 26 Oct 2026 23:02:49 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 26 Oct 2026 23:02:49 GMT
ARG REPO_CHANNEL=stable
# Mon, 26 Oct 2026 23:02:49 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 26 Oct 2026 23:02:49 GMT
ARG VERSION=26.7.37.6
# Mon, 26 Oct 2026 23:02:49 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 26 Oct 2026 23:03:23 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.37.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 26 Oct 2026 23:03:23 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.37.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 26 Oct 2026 23:03:24 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.37.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 26 Oct 2026 23:03:24 GMT
ENV LANG=en_US.UTF-8
# Mon, 26 Oct 2026 23:03:24 GMT
ENV TZ=UTC
# Mon, 26 Oct 2026 23:03:24 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.37.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 26 Oct 2026 23:03:24 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 26 Oct 2026 23:03:24 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:03:24 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 26 Oct 2026 23:03:24 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 26 Oct 2026 23:03:24 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 26 Oct 2026 23:03:24 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5768e3bc9ac4272cb458ca09fdc5553b70cc7a2c31e06469e6488fcde8e238f`  
		Last Modified: Mon, 26 Oct 2026 23:03:50 GMT  
		Size: 7.6 MB (7550999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5df0f73bf466a7d94e7ef5371b9f9266c8bf903143d1a5d0d34584f9ee637d8b`  
		Last Modified: Mon, 26 Oct 2026 23:03:54 GMT  
		Size: 230.2 MB (230217464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3906e7e775c9e25386d8c82f5725bcbce5b921156ee99168bedd071c2e3044d`  
		Last Modified: Mon, 26 Oct 2026 23:03:50 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fc43cf224eb5e55ff08877090c07054485b9937de451faaf2479e80e04722bd`  
		Last Modified: Mon, 26 Oct 2026 23:03:50 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b5010d6a4551675801d9e26dd69b73c29e7dc437387e9c52ef0efa261861171`  
		Last Modified: Mon, 26 Oct 2026 23:03:51 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e14f6b21e99d7d7e985e38aa1fa331d893104cbab5b6be3c6e6d8cc2fc74bac`  
		Last Modified: Mon, 26 Oct 2026 23:03:51 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01f514a697664d540d3a316cee1eb5398d1f36213da1eaed5465b63910bbca27`  
		Last Modified: Mon, 26 Oct 2026 23:03:51 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7.37` - unknown; unknown

```console
$ docker pull clickhouse@sha256:c48c0cb88fca372c0b88084bd726f5dc8e3a9f8e7158186e42520d1bb8c5f4ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.7 KB (26739 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bb2074f00f21689af56cdcfda6436507f35904734ed05ce8fd76edfdf7ffe5e`

```dockerfile
```

-	Layers:
	-	`sha256:06d3bb0cf7d7d62e4b74e2b3a09bdda57fe2fe2d970f1d768d8190758762f835`  
		Last Modified: Mon, 26 Oct 2026 23:03:49 GMT  
		Size: 26.7 KB (26739 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.7.37` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:2b26fc6c7c9541dfdebd97fc37c42a84e553702db57f1c9066e982534786763e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.8 MB (251750749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf0b7877b49b13f5e6d0a69d71dcf86347a7105b9faf0c7b9fdcb31fbcd505be`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:50 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:50 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:50 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:52 GMT
ADD file:6efa877f019ce1c165e045c546c059568465dad040d65f7797e1bbbf530bed3e in / 
# Sun, 25 Oct 2026 20:10:53 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:08:38 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 26 Oct 2026 23:08:38 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 26 Oct 2026 23:08:38 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 26 Oct 2026 23:08:38 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 26 Oct 2026 23:08:38 GMT
ARG REPO_CHANNEL=stable
# Mon, 26 Oct 2026 23:08:38 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 26 Oct 2026 23:08:38 GMT
ARG VERSION=26.7.37.6
# Mon, 26 Oct 2026 23:08:38 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 26 Oct 2026 23:09:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.37.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 26 Oct 2026 23:09:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.37.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 26 Oct 2026 23:09:18 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.37.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 26 Oct 2026 23:09:18 GMT
ENV LANG=en_US.UTF-8
# Mon, 26 Oct 2026 23:09:18 GMT
ENV TZ=UTC
# Mon, 26 Oct 2026 23:09:18 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.37.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 26 Oct 2026 23:09:18 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 26 Oct 2026 23:09:18 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:09:18 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 26 Oct 2026 23:09:18 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 26 Oct 2026 23:09:18 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 26 Oct 2026 23:09:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:771eed73ee82c7916df197c0fd7ef3ac4eedcb9a6318b10d2652948c6c4ca08f`  
		Last Modified: Sun, 25 Oct 2026 20:45:27 GMT  
		Size: 27.7 MB (27684607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:814de30e4770f0334d8ac416d7dc43b281e66d178ee97fc2e60a103175d13cf7`  
		Last Modified: Mon, 26 Oct 2026 23:09:40 GMT  
		Size: 7.5 MB (7533861 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59e8951312f0db2113747e9ffa808eee5e7d3086f2e9e6e1185afa1373a8a84c`  
		Last Modified: Mon, 26 Oct 2026 23:09:44 GMT  
		Size: 215.7 MB (215662227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d6dfe9172cf3e9febb416c7d3283aa3450eb4cfa3e52790708bef0290ecf264`  
		Last Modified: Mon, 26 Oct 2026 23:09:39 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e051dfa503a8f5f040f3c3a649d6f593e7e2e3d40a0ef1c20273d29e1bee04ea`  
		Last Modified: Mon, 26 Oct 2026 23:09:40 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac97ff6602579a43a03e66262502e2de894f279145c5acb1c7d93a88954ec8e4`  
		Last Modified: Mon, 26 Oct 2026 23:09:41 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24a0d89cd526f3b52f70ac15f0366b0b8966fbb81c6a6413501e245f65b71312`  
		Last Modified: Mon, 26 Oct 2026 23:09:41 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9819b2caf542549c2eae2c830ab267fef4eec7745ba1931f7e76f4e458ed8dfe`  
		Last Modified: Mon, 26 Oct 2026 23:09:41 GMT  
		Size: 3.6 KB (3639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7.37` - unknown; unknown

```console
$ docker pull clickhouse@sha256:39a7e4166bba88bb717fa92344122b5a95a9b268cc8fe1c6538011a0c073f9fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.9 KB (26927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:acb15b03c05e1ceb3c67dc7b897f71735a7d170afa6266271497e60d862adf21`

```dockerfile
```

-	Layers:
	-	`sha256:be073b426ef6e944eae7dc602712dada2e753b8d75a0fa19ed34837000e72c83`  
		Last Modified: Mon, 26 Oct 2026 23:09:39 GMT  
		Size: 26.9 KB (26927 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.7.37-jammy`

```console
$ docker pull clickhouse@sha256:d7a4d5fd8b9c680ac48b4317bec3dd21c7ccb908a57746a3c51a6a3c47a2e88d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.7.37-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:6ce8864538a84345c05ae2848c0c5275797c358378d03165d70deb8cca29bdb6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.4 MB (268391001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfa4d71e9f8df8f329526da32463c950ddad334442df6305f527927c347024dd`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:42 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:42 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:42 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:44 GMT
ADD file:ba52f9eec2a5a7de74e9a460017725370755c2d4814dd746bde7507601befb53 in / 
# Sun, 25 Oct 2026 20:10:44 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:02:49 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 26 Oct 2026 23:02:49 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 26 Oct 2026 23:02:49 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 26 Oct 2026 23:02:49 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 26 Oct 2026 23:02:49 GMT
ARG REPO_CHANNEL=stable
# Mon, 26 Oct 2026 23:02:49 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 26 Oct 2026 23:02:49 GMT
ARG VERSION=26.7.37.6
# Mon, 26 Oct 2026 23:02:49 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 26 Oct 2026 23:03:23 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.37.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 26 Oct 2026 23:03:23 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.37.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 26 Oct 2026 23:03:24 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.37.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 26 Oct 2026 23:03:24 GMT
ENV LANG=en_US.UTF-8
# Mon, 26 Oct 2026 23:03:24 GMT
ENV TZ=UTC
# Mon, 26 Oct 2026 23:03:24 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.37.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 26 Oct 2026 23:03:24 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 26 Oct 2026 23:03:24 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:03:24 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 26 Oct 2026 23:03:24 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 26 Oct 2026 23:03:24 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 26 Oct 2026 23:03:24 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5768e3bc9ac4272cb458ca09fdc5553b70cc7a2c31e06469e6488fcde8e238f`  
		Last Modified: Mon, 26 Oct 2026 23:03:50 GMT  
		Size: 7.6 MB (7550999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5df0f73bf466a7d94e7ef5371b9f9266c8bf903143d1a5d0d34584f9ee637d8b`  
		Last Modified: Mon, 26 Oct 2026 23:03:54 GMT  
		Size: 230.2 MB (230217464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3906e7e775c9e25386d8c82f5725bcbce5b921156ee99168bedd071c2e3044d`  
		Last Modified: Mon, 26 Oct 2026 23:03:50 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fc43cf224eb5e55ff08877090c07054485b9937de451faaf2479e80e04722bd`  
		Last Modified: Mon, 26 Oct 2026 23:03:50 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b5010d6a4551675801d9e26dd69b73c29e7dc437387e9c52ef0efa261861171`  
		Last Modified: Mon, 26 Oct 2026 23:03:51 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e14f6b21e99d7d7e985e38aa1fa331d893104cbab5b6be3c6e6d8cc2fc74bac`  
		Last Modified: Mon, 26 Oct 2026 23:03:51 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01f514a697664d540d3a316cee1eb5398d1f36213da1eaed5465b63910bbca27`  
		Last Modified: Mon, 26 Oct 2026 23:03:51 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7.37-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:c48c0cb88fca372c0b88084bd726f5dc8e3a9f8e7158186e42520d1bb8c5f4ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.7 KB (26739 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bb2074f00f21689af56cdcfda6436507f35904734ed05ce8fd76edfdf7ffe5e`

```dockerfile
```

-	Layers:
	-	`sha256:06d3bb0cf7d7d62e4b74e2b3a09bdda57fe2fe2d970f1d768d8190758762f835`  
		Last Modified: Mon, 26 Oct 2026 23:03:49 GMT  
		Size: 26.7 KB (26739 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.7.37-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:2b26fc6c7c9541dfdebd97fc37c42a84e553702db57f1c9066e982534786763e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.8 MB (251750749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf0b7877b49b13f5e6d0a69d71dcf86347a7105b9faf0c7b9fdcb31fbcd505be`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:50 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:50 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:50 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:52 GMT
ADD file:6efa877f019ce1c165e045c546c059568465dad040d65f7797e1bbbf530bed3e in / 
# Sun, 25 Oct 2026 20:10:53 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:08:38 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 26 Oct 2026 23:08:38 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 26 Oct 2026 23:08:38 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 26 Oct 2026 23:08:38 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 26 Oct 2026 23:08:38 GMT
ARG REPO_CHANNEL=stable
# Mon, 26 Oct 2026 23:08:38 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 26 Oct 2026 23:08:38 GMT
ARG VERSION=26.7.37.6
# Mon, 26 Oct 2026 23:08:38 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 26 Oct 2026 23:09:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.37.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 26 Oct 2026 23:09:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.37.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 26 Oct 2026 23:09:18 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.37.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 26 Oct 2026 23:09:18 GMT
ENV LANG=en_US.UTF-8
# Mon, 26 Oct 2026 23:09:18 GMT
ENV TZ=UTC
# Mon, 26 Oct 2026 23:09:18 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.37.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 26 Oct 2026 23:09:18 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 26 Oct 2026 23:09:18 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:09:18 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 26 Oct 2026 23:09:18 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 26 Oct 2026 23:09:18 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 26 Oct 2026 23:09:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:771eed73ee82c7916df197c0fd7ef3ac4eedcb9a6318b10d2652948c6c4ca08f`  
		Last Modified: Sun, 25 Oct 2026 20:45:27 GMT  
		Size: 27.7 MB (27684607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:814de30e4770f0334d8ac416d7dc43b281e66d178ee97fc2e60a103175d13cf7`  
		Last Modified: Mon, 26 Oct 2026 23:09:40 GMT  
		Size: 7.5 MB (7533861 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59e8951312f0db2113747e9ffa808eee5e7d3086f2e9e6e1185afa1373a8a84c`  
		Last Modified: Mon, 26 Oct 2026 23:09:44 GMT  
		Size: 215.7 MB (215662227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d6dfe9172cf3e9febb416c7d3283aa3450eb4cfa3e52790708bef0290ecf264`  
		Last Modified: Mon, 26 Oct 2026 23:09:39 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e051dfa503a8f5f040f3c3a649d6f593e7e2e3d40a0ef1c20273d29e1bee04ea`  
		Last Modified: Mon, 26 Oct 2026 23:09:40 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac97ff6602579a43a03e66262502e2de894f279145c5acb1c7d93a88954ec8e4`  
		Last Modified: Mon, 26 Oct 2026 23:09:41 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24a0d89cd526f3b52f70ac15f0366b0b8966fbb81c6a6413501e245f65b71312`  
		Last Modified: Mon, 26 Oct 2026 23:09:41 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9819b2caf542549c2eae2c830ab267fef4eec7745ba1931f7e76f4e458ed8dfe`  
		Last Modified: Mon, 26 Oct 2026 23:09:41 GMT  
		Size: 3.6 KB (3639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7.37-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:39a7e4166bba88bb717fa92344122b5a95a9b268cc8fe1c6538011a0c073f9fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.9 KB (26927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:acb15b03c05e1ceb3c67dc7b897f71735a7d170afa6266271497e60d862adf21`

```dockerfile
```

-	Layers:
	-	`sha256:be073b426ef6e944eae7dc602712dada2e753b8d75a0fa19ed34837000e72c83`  
		Last Modified: Mon, 26 Oct 2026 23:09:39 GMT  
		Size: 26.9 KB (26927 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.7.37.6`

```console
$ docker pull clickhouse@sha256:d7a4d5fd8b9c680ac48b4317bec3dd21c7ccb908a57746a3c51a6a3c47a2e88d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.7.37.6` - linux; amd64

```console
$ docker pull clickhouse@sha256:6ce8864538a84345c05ae2848c0c5275797c358378d03165d70deb8cca29bdb6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.4 MB (268391001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfa4d71e9f8df8f329526da32463c950ddad334442df6305f527927c347024dd`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:42 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:42 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:42 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:44 GMT
ADD file:ba52f9eec2a5a7de74e9a460017725370755c2d4814dd746bde7507601befb53 in / 
# Sun, 25 Oct 2026 20:10:44 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:02:49 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 26 Oct 2026 23:02:49 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 26 Oct 2026 23:02:49 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 26 Oct 2026 23:02:49 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 26 Oct 2026 23:02:49 GMT
ARG REPO_CHANNEL=stable
# Mon, 26 Oct 2026 23:02:49 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 26 Oct 2026 23:02:49 GMT
ARG VERSION=26.7.37.6
# Mon, 26 Oct 2026 23:02:49 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 26 Oct 2026 23:03:23 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.37.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 26 Oct 2026 23:03:23 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.37.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 26 Oct 2026 23:03:24 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.37.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 26 Oct 2026 23:03:24 GMT
ENV LANG=en_US.UTF-8
# Mon, 26 Oct 2026 23:03:24 GMT
ENV TZ=UTC
# Mon, 26 Oct 2026 23:03:24 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.37.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 26 Oct 2026 23:03:24 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 26 Oct 2026 23:03:24 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:03:24 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 26 Oct 2026 23:03:24 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 26 Oct 2026 23:03:24 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 26 Oct 2026 23:03:24 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5768e3bc9ac4272cb458ca09fdc5553b70cc7a2c31e06469e6488fcde8e238f`  
		Last Modified: Mon, 26 Oct 2026 23:03:50 GMT  
		Size: 7.6 MB (7550999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5df0f73bf466a7d94e7ef5371b9f9266c8bf903143d1a5d0d34584f9ee637d8b`  
		Last Modified: Mon, 26 Oct 2026 23:03:54 GMT  
		Size: 230.2 MB (230217464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3906e7e775c9e25386d8c82f5725bcbce5b921156ee99168bedd071c2e3044d`  
		Last Modified: Mon, 26 Oct 2026 23:03:50 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fc43cf224eb5e55ff08877090c07054485b9937de451faaf2479e80e04722bd`  
		Last Modified: Mon, 26 Oct 2026 23:03:50 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b5010d6a4551675801d9e26dd69b73c29e7dc437387e9c52ef0efa261861171`  
		Last Modified: Mon, 26 Oct 2026 23:03:51 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e14f6b21e99d7d7e985e38aa1fa331d893104cbab5b6be3c6e6d8cc2fc74bac`  
		Last Modified: Mon, 26 Oct 2026 23:03:51 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01f514a697664d540d3a316cee1eb5398d1f36213da1eaed5465b63910bbca27`  
		Last Modified: Mon, 26 Oct 2026 23:03:51 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7.37.6` - unknown; unknown

```console
$ docker pull clickhouse@sha256:c48c0cb88fca372c0b88084bd726f5dc8e3a9f8e7158186e42520d1bb8c5f4ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.7 KB (26739 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bb2074f00f21689af56cdcfda6436507f35904734ed05ce8fd76edfdf7ffe5e`

```dockerfile
```

-	Layers:
	-	`sha256:06d3bb0cf7d7d62e4b74e2b3a09bdda57fe2fe2d970f1d768d8190758762f835`  
		Last Modified: Mon, 26 Oct 2026 23:03:49 GMT  
		Size: 26.7 KB (26739 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.7.37.6` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:2b26fc6c7c9541dfdebd97fc37c42a84e553702db57f1c9066e982534786763e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.8 MB (251750749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf0b7877b49b13f5e6d0a69d71dcf86347a7105b9faf0c7b9fdcb31fbcd505be`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:50 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:50 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:50 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:52 GMT
ADD file:6efa877f019ce1c165e045c546c059568465dad040d65f7797e1bbbf530bed3e in / 
# Sun, 25 Oct 2026 20:10:53 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:08:38 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 26 Oct 2026 23:08:38 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 26 Oct 2026 23:08:38 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 26 Oct 2026 23:08:38 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 26 Oct 2026 23:08:38 GMT
ARG REPO_CHANNEL=stable
# Mon, 26 Oct 2026 23:08:38 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 26 Oct 2026 23:08:38 GMT
ARG VERSION=26.7.37.6
# Mon, 26 Oct 2026 23:08:38 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 26 Oct 2026 23:09:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.37.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 26 Oct 2026 23:09:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.37.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 26 Oct 2026 23:09:18 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.37.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 26 Oct 2026 23:09:18 GMT
ENV LANG=en_US.UTF-8
# Mon, 26 Oct 2026 23:09:18 GMT
ENV TZ=UTC
# Mon, 26 Oct 2026 23:09:18 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.37.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 26 Oct 2026 23:09:18 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 26 Oct 2026 23:09:18 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:09:18 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 26 Oct 2026 23:09:18 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 26 Oct 2026 23:09:18 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 26 Oct 2026 23:09:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:771eed73ee82c7916df197c0fd7ef3ac4eedcb9a6318b10d2652948c6c4ca08f`  
		Last Modified: Sun, 25 Oct 2026 20:45:27 GMT  
		Size: 27.7 MB (27684607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:814de30e4770f0334d8ac416d7dc43b281e66d178ee97fc2e60a103175d13cf7`  
		Last Modified: Mon, 26 Oct 2026 23:09:40 GMT  
		Size: 7.5 MB (7533861 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59e8951312f0db2113747e9ffa808eee5e7d3086f2e9e6e1185afa1373a8a84c`  
		Last Modified: Mon, 26 Oct 2026 23:09:44 GMT  
		Size: 215.7 MB (215662227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d6dfe9172cf3e9febb416c7d3283aa3450eb4cfa3e52790708bef0290ecf264`  
		Last Modified: Mon, 26 Oct 2026 23:09:39 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e051dfa503a8f5f040f3c3a649d6f593e7e2e3d40a0ef1c20273d29e1bee04ea`  
		Last Modified: Mon, 26 Oct 2026 23:09:40 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac97ff6602579a43a03e66262502e2de894f279145c5acb1c7d93a88954ec8e4`  
		Last Modified: Mon, 26 Oct 2026 23:09:41 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24a0d89cd526f3b52f70ac15f0366b0b8966fbb81c6a6413501e245f65b71312`  
		Last Modified: Mon, 26 Oct 2026 23:09:41 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9819b2caf542549c2eae2c830ab267fef4eec7745ba1931f7e76f4e458ed8dfe`  
		Last Modified: Mon, 26 Oct 2026 23:09:41 GMT  
		Size: 3.6 KB (3639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7.37.6` - unknown; unknown

```console
$ docker pull clickhouse@sha256:39a7e4166bba88bb717fa92344122b5a95a9b268cc8fe1c6538011a0c073f9fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.9 KB (26927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:acb15b03c05e1ceb3c67dc7b897f71735a7d170afa6266271497e60d862adf21`

```dockerfile
```

-	Layers:
	-	`sha256:be073b426ef6e944eae7dc602712dada2e753b8d75a0fa19ed34837000e72c83`  
		Last Modified: Mon, 26 Oct 2026 23:09:39 GMT  
		Size: 26.9 KB (26927 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.7.37.6-jammy`

```console
$ docker pull clickhouse@sha256:d7a4d5fd8b9c680ac48b4317bec3dd21c7ccb908a57746a3c51a6a3c47a2e88d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.7.37.6-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:6ce8864538a84345c05ae2848c0c5275797c358378d03165d70deb8cca29bdb6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.4 MB (268391001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfa4d71e9f8df8f329526da32463c950ddad334442df6305f527927c347024dd`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:42 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:42 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:42 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:44 GMT
ADD file:ba52f9eec2a5a7de74e9a460017725370755c2d4814dd746bde7507601befb53 in / 
# Sun, 25 Oct 2026 20:10:44 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:02:49 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 26 Oct 2026 23:02:49 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 26 Oct 2026 23:02:49 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 26 Oct 2026 23:02:49 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 26 Oct 2026 23:02:49 GMT
ARG REPO_CHANNEL=stable
# Mon, 26 Oct 2026 23:02:49 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 26 Oct 2026 23:02:49 GMT
ARG VERSION=26.7.37.6
# Mon, 26 Oct 2026 23:02:49 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 26 Oct 2026 23:03:23 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.37.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 26 Oct 2026 23:03:23 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.37.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 26 Oct 2026 23:03:24 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.37.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 26 Oct 2026 23:03:24 GMT
ENV LANG=en_US.UTF-8
# Mon, 26 Oct 2026 23:03:24 GMT
ENV TZ=UTC
# Mon, 26 Oct 2026 23:03:24 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.37.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 26 Oct 2026 23:03:24 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 26 Oct 2026 23:03:24 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:03:24 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 26 Oct 2026 23:03:24 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 26 Oct 2026 23:03:24 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 26 Oct 2026 23:03:24 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5768e3bc9ac4272cb458ca09fdc5553b70cc7a2c31e06469e6488fcde8e238f`  
		Last Modified: Mon, 26 Oct 2026 23:03:50 GMT  
		Size: 7.6 MB (7550999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5df0f73bf466a7d94e7ef5371b9f9266c8bf903143d1a5d0d34584f9ee637d8b`  
		Last Modified: Mon, 26 Oct 2026 23:03:54 GMT  
		Size: 230.2 MB (230217464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3906e7e775c9e25386d8c82f5725bcbce5b921156ee99168bedd071c2e3044d`  
		Last Modified: Mon, 26 Oct 2026 23:03:50 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fc43cf224eb5e55ff08877090c07054485b9937de451faaf2479e80e04722bd`  
		Last Modified: Mon, 26 Oct 2026 23:03:50 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b5010d6a4551675801d9e26dd69b73c29e7dc437387e9c52ef0efa261861171`  
		Last Modified: Mon, 26 Oct 2026 23:03:51 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e14f6b21e99d7d7e985e38aa1fa331d893104cbab5b6be3c6e6d8cc2fc74bac`  
		Last Modified: Mon, 26 Oct 2026 23:03:51 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01f514a697664d540d3a316cee1eb5398d1f36213da1eaed5465b63910bbca27`  
		Last Modified: Mon, 26 Oct 2026 23:03:51 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7.37.6-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:c48c0cb88fca372c0b88084bd726f5dc8e3a9f8e7158186e42520d1bb8c5f4ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.7 KB (26739 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bb2074f00f21689af56cdcfda6436507f35904734ed05ce8fd76edfdf7ffe5e`

```dockerfile
```

-	Layers:
	-	`sha256:06d3bb0cf7d7d62e4b74e2b3a09bdda57fe2fe2d970f1d768d8190758762f835`  
		Last Modified: Mon, 26 Oct 2026 23:03:49 GMT  
		Size: 26.7 KB (26739 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.7.37.6-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:2b26fc6c7c9541dfdebd97fc37c42a84e553702db57f1c9066e982534786763e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.8 MB (251750749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf0b7877b49b13f5e6d0a69d71dcf86347a7105b9faf0c7b9fdcb31fbcd505be`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:50 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:50 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:50 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:52 GMT
ADD file:6efa877f019ce1c165e045c546c059568465dad040d65f7797e1bbbf530bed3e in / 
# Sun, 25 Oct 2026 20:10:53 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:08:38 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 26 Oct 2026 23:08:38 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 26 Oct 2026 23:08:38 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 26 Oct 2026 23:08:38 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 26 Oct 2026 23:08:38 GMT
ARG REPO_CHANNEL=stable
# Mon, 26 Oct 2026 23:08:38 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 26 Oct 2026 23:08:38 GMT
ARG VERSION=26.7.37.6
# Mon, 26 Oct 2026 23:08:38 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 26 Oct 2026 23:09:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.37.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 26 Oct 2026 23:09:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.37.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 26 Oct 2026 23:09:18 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.37.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 26 Oct 2026 23:09:18 GMT
ENV LANG=en_US.UTF-8
# Mon, 26 Oct 2026 23:09:18 GMT
ENV TZ=UTC
# Mon, 26 Oct 2026 23:09:18 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.37.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 26 Oct 2026 23:09:18 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 26 Oct 2026 23:09:18 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:09:18 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 26 Oct 2026 23:09:18 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 26 Oct 2026 23:09:18 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 26 Oct 2026 23:09:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:771eed73ee82c7916df197c0fd7ef3ac4eedcb9a6318b10d2652948c6c4ca08f`  
		Last Modified: Sun, 25 Oct 2026 20:45:27 GMT  
		Size: 27.7 MB (27684607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:814de30e4770f0334d8ac416d7dc43b281e66d178ee97fc2e60a103175d13cf7`  
		Last Modified: Mon, 26 Oct 2026 23:09:40 GMT  
		Size: 7.5 MB (7533861 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59e8951312f0db2113747e9ffa808eee5e7d3086f2e9e6e1185afa1373a8a84c`  
		Last Modified: Mon, 26 Oct 2026 23:09:44 GMT  
		Size: 215.7 MB (215662227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d6dfe9172cf3e9febb416c7d3283aa3450eb4cfa3e52790708bef0290ecf264`  
		Last Modified: Mon, 26 Oct 2026 23:09:39 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e051dfa503a8f5f040f3c3a649d6f593e7e2e3d40a0ef1c20273d29e1bee04ea`  
		Last Modified: Mon, 26 Oct 2026 23:09:40 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac97ff6602579a43a03e66262502e2de894f279145c5acb1c7d93a88954ec8e4`  
		Last Modified: Mon, 26 Oct 2026 23:09:41 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24a0d89cd526f3b52f70ac15f0366b0b8966fbb81c6a6413501e245f65b71312`  
		Last Modified: Mon, 26 Oct 2026 23:09:41 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9819b2caf542549c2eae2c830ab267fef4eec7745ba1931f7e76f4e458ed8dfe`  
		Last Modified: Mon, 26 Oct 2026 23:09:41 GMT  
		Size: 3.6 KB (3639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7.37.6-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:39a7e4166bba88bb717fa92344122b5a95a9b268cc8fe1c6538011a0c073f9fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.9 KB (26927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:acb15b03c05e1ceb3c67dc7b897f71735a7d170afa6266271497e60d862adf21`

```dockerfile
```

-	Layers:
	-	`sha256:be073b426ef6e944eae7dc602712dada2e753b8d75a0fa19ed34837000e72c83`  
		Last Modified: Mon, 26 Oct 2026 23:09:39 GMT  
		Size: 26.9 KB (26927 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.8`

```console
$ docker pull clickhouse@sha256:c5c77dcef8017f77a48378ba6e9752bc8cc745c828c6f7ae6bb3c7df1996d56d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.8` - linux; amd64

```console
$ docker pull clickhouse@sha256:c2e3bd3eba21274db1dd835b0dd5166e88315d1cc9aaec22e6ec89e89b6e1cc7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.8 MB (279781723 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45b523803d4373472a6e6e1ea4befb1e212b12013953b4a6ef95ed3ae2a6ab80`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:42 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:42 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:42 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:44 GMT
ADD file:ba52f9eec2a5a7de74e9a460017725370755c2d4814dd746bde7507601befb53 in / 
# Sun, 25 Oct 2026 20:10:44 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:02:43 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 26 Oct 2026 23:02:43 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 26 Oct 2026 23:02:43 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 26 Oct 2026 23:02:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 26 Oct 2026 23:02:43 GMT
ARG REPO_CHANNEL=stable
# Mon, 26 Oct 2026 23:02:43 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 26 Oct 2026 23:02:43 GMT
ARG VERSION=26.8.34.13
# Mon, 26 Oct 2026 23:02:43 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 26 Oct 2026 23:03:10 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 26 Oct 2026 23:03:10 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 26 Oct 2026 23:03:11 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 26 Oct 2026 23:03:11 GMT
ENV LANG=en_US.UTF-8
# Mon, 26 Oct 2026 23:03:11 GMT
ENV TZ=UTC
# Mon, 26 Oct 2026 23:03:11 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 26 Oct 2026 23:03:11 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 26 Oct 2026 23:03:11 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:03:11 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 26 Oct 2026 23:03:11 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 26 Oct 2026 23:03:11 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 26 Oct 2026 23:03:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fbf9c188575b2ae43cde5204533b7bba01d1cc3f10ed3db6b916c3c59377761`  
		Last Modified: Mon, 26 Oct 2026 23:03:37 GMT  
		Size: 7.6 MB (7550939 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf67b1df84a1eed909e47860f46282a50db69784e5c61ad398b0522745c093dc`  
		Last Modified: Mon, 26 Oct 2026 23:03:41 GMT  
		Size: 241.6 MB (241608245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30ca77766c378e1a4f49a0b7477ce501bd01cf0e5c0ccd8d2b8283f5d8331325`  
		Last Modified: Mon, 26 Oct 2026 23:03:36 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f743bc8d44821091b66bd9dddc00925cbe6b242848f806be81ca1e0ce759347`  
		Last Modified: Mon, 26 Oct 2026 23:03:37 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:624170c2834a940b34a99d7fb4c284136f2683ac3b90e0f1be3851bd775f5093`  
		Last Modified: Mon, 26 Oct 2026 23:03:38 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45bf5f1f7d926d3fbb98a33fb8dd18f7fac0536b03b70509ed7cf89c5fed5e23`  
		Last Modified: Mon, 26 Oct 2026 23:03:38 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fc2b7b3e632274eff487c981ba19c54bdf71915edfbf2296befe3547c74895a`  
		Last Modified: Mon, 26 Oct 2026 23:03:38 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8` - unknown; unknown

```console
$ docker pull clickhouse@sha256:02133f94863ce3c0d39a44055dea6480490e3bc9743597e58aaace9f1bd5a5e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 KB (27366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7909760815603d82d00fd98e14165fe19eca9c08e4ccd0462fa8e9b960b7ff54`

```dockerfile
```

-	Layers:
	-	`sha256:412beb4242894bf59d6f6bd26b4d4035daeb0182f56f1941cd8b51772cf33727`  
		Last Modified: Mon, 26 Oct 2026 23:03:36 GMT  
		Size: 27.4 KB (27366 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.8` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:6bd3727e2e7a4e12b876ea6595a7e0634309c0add560989527e650c30dd62f6c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.8 MB (262819552 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3eeebf13abdbba3cea410c309a99085c65db2c93c5479e7e9c24cc81da3dc395`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:50 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:50 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:50 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:52 GMT
ADD file:6efa877f019ce1c165e045c546c059568465dad040d65f7797e1bbbf530bed3e in / 
# Sun, 25 Oct 2026 20:10:53 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:08:36 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 26 Oct 2026 23:08:36 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 26 Oct 2026 23:08:36 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 26 Oct 2026 23:08:36 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 26 Oct 2026 23:08:36 GMT
ARG REPO_CHANNEL=stable
# Mon, 26 Oct 2026 23:08:36 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 26 Oct 2026 23:08:36 GMT
ARG VERSION=26.8.34.13
# Mon, 26 Oct 2026 23:08:36 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 26 Oct 2026 23:09:07 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 26 Oct 2026 23:09:07 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 26 Oct 2026 23:09:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 26 Oct 2026 23:09:08 GMT
ENV LANG=en_US.UTF-8
# Mon, 26 Oct 2026 23:09:08 GMT
ENV TZ=UTC
# Mon, 26 Oct 2026 23:09:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 26 Oct 2026 23:09:08 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 26 Oct 2026 23:09:08 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:09:08 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 26 Oct 2026 23:09:08 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 26 Oct 2026 23:09:08 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 26 Oct 2026 23:09:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:771eed73ee82c7916df197c0fd7ef3ac4eedcb9a6318b10d2652948c6c4ca08f`  
		Last Modified: Sun, 25 Oct 2026 20:45:27 GMT  
		Size: 27.7 MB (27684607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8914dee7d90f9e70b4af22dfe0ef0a87178d76bd4f6859d69dcf065592e37b36`  
		Last Modified: Mon, 26 Oct 2026 23:09:31 GMT  
		Size: 7.5 MB (7533838 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfa08a9d815f83784b7cddea40da5ae1d02488bae8e3911d1787466247724979`  
		Last Modified: Mon, 26 Oct 2026 23:09:35 GMT  
		Size: 226.7 MB (226731057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b93ac7f418b283b1901277ba0610d8e6b29945f4ba28910eef08e5a52cda5316`  
		Last Modified: Mon, 26 Oct 2026 23:09:30 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79eb7ea7970d64a65fb43db4090c925383fa1cb69607f2b98734dfb3c17a4df9`  
		Last Modified: Mon, 26 Oct 2026 23:09:30 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cbb292efa881b42ccc9f24b222d26659c2f489e5a2bf455adf8203c9c8454e3`  
		Last Modified: Mon, 26 Oct 2026 23:09:32 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b730b6b490f1ffe7958fd74d6fafa2c59f8bf36113037caad56eaccb9ca22654`  
		Last Modified: Mon, 26 Oct 2026 23:09:32 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63c3ce73f2e9314cc2b216ff2fba1d61ba7010fe1778bf1b6cba2ec2cb6212a9`  
		Last Modified: Mon, 26 Oct 2026 23:09:32 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8` - unknown; unknown

```console
$ docker pull clickhouse@sha256:b28b100bd33e0824b33632f26753aa0a199cc895527e154248451fc53ea5735b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 KB (27578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ebe77d510683b6bc97949bc8bf57ea358c33066ee9206fd0a86acc1f733c77d`

```dockerfile
```

-	Layers:
	-	`sha256:9185d0325445749d10524a9f4171c5ba09db842e7af5d8047d6986ae3cc57dd2`  
		Last Modified: Mon, 26 Oct 2026 23:09:30 GMT  
		Size: 27.6 KB (27578 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.8-jammy`

```console
$ docker pull clickhouse@sha256:c5c77dcef8017f77a48378ba6e9752bc8cc745c828c6f7ae6bb3c7df1996d56d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.8-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:c2e3bd3eba21274db1dd835b0dd5166e88315d1cc9aaec22e6ec89e89b6e1cc7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.8 MB (279781723 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45b523803d4373472a6e6e1ea4befb1e212b12013953b4a6ef95ed3ae2a6ab80`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:42 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:42 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:42 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:44 GMT
ADD file:ba52f9eec2a5a7de74e9a460017725370755c2d4814dd746bde7507601befb53 in / 
# Sun, 25 Oct 2026 20:10:44 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:02:43 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 26 Oct 2026 23:02:43 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 26 Oct 2026 23:02:43 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 26 Oct 2026 23:02:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 26 Oct 2026 23:02:43 GMT
ARG REPO_CHANNEL=stable
# Mon, 26 Oct 2026 23:02:43 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 26 Oct 2026 23:02:43 GMT
ARG VERSION=26.8.34.13
# Mon, 26 Oct 2026 23:02:43 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 26 Oct 2026 23:03:10 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 26 Oct 2026 23:03:10 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 26 Oct 2026 23:03:11 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 26 Oct 2026 23:03:11 GMT
ENV LANG=en_US.UTF-8
# Mon, 26 Oct 2026 23:03:11 GMT
ENV TZ=UTC
# Mon, 26 Oct 2026 23:03:11 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 26 Oct 2026 23:03:11 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 26 Oct 2026 23:03:11 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:03:11 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 26 Oct 2026 23:03:11 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 26 Oct 2026 23:03:11 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 26 Oct 2026 23:03:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fbf9c188575b2ae43cde5204533b7bba01d1cc3f10ed3db6b916c3c59377761`  
		Last Modified: Mon, 26 Oct 2026 23:03:37 GMT  
		Size: 7.6 MB (7550939 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf67b1df84a1eed909e47860f46282a50db69784e5c61ad398b0522745c093dc`  
		Last Modified: Mon, 26 Oct 2026 23:03:41 GMT  
		Size: 241.6 MB (241608245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30ca77766c378e1a4f49a0b7477ce501bd01cf0e5c0ccd8d2b8283f5d8331325`  
		Last Modified: Mon, 26 Oct 2026 23:03:36 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f743bc8d44821091b66bd9dddc00925cbe6b242848f806be81ca1e0ce759347`  
		Last Modified: Mon, 26 Oct 2026 23:03:37 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:624170c2834a940b34a99d7fb4c284136f2683ac3b90e0f1be3851bd775f5093`  
		Last Modified: Mon, 26 Oct 2026 23:03:38 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45bf5f1f7d926d3fbb98a33fb8dd18f7fac0536b03b70509ed7cf89c5fed5e23`  
		Last Modified: Mon, 26 Oct 2026 23:03:38 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fc2b7b3e632274eff487c981ba19c54bdf71915edfbf2296befe3547c74895a`  
		Last Modified: Mon, 26 Oct 2026 23:03:38 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:02133f94863ce3c0d39a44055dea6480490e3bc9743597e58aaace9f1bd5a5e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 KB (27366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7909760815603d82d00fd98e14165fe19eca9c08e4ccd0462fa8e9b960b7ff54`

```dockerfile
```

-	Layers:
	-	`sha256:412beb4242894bf59d6f6bd26b4d4035daeb0182f56f1941cd8b51772cf33727`  
		Last Modified: Mon, 26 Oct 2026 23:03:36 GMT  
		Size: 27.4 KB (27366 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.8-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:6bd3727e2e7a4e12b876ea6595a7e0634309c0add560989527e650c30dd62f6c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.8 MB (262819552 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3eeebf13abdbba3cea410c309a99085c65db2c93c5479e7e9c24cc81da3dc395`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:50 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:50 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:50 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:52 GMT
ADD file:6efa877f019ce1c165e045c546c059568465dad040d65f7797e1bbbf530bed3e in / 
# Sun, 25 Oct 2026 20:10:53 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:08:36 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 26 Oct 2026 23:08:36 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 26 Oct 2026 23:08:36 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 26 Oct 2026 23:08:36 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 26 Oct 2026 23:08:36 GMT
ARG REPO_CHANNEL=stable
# Mon, 26 Oct 2026 23:08:36 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 26 Oct 2026 23:08:36 GMT
ARG VERSION=26.8.34.13
# Mon, 26 Oct 2026 23:08:36 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 26 Oct 2026 23:09:07 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 26 Oct 2026 23:09:07 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 26 Oct 2026 23:09:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 26 Oct 2026 23:09:08 GMT
ENV LANG=en_US.UTF-8
# Mon, 26 Oct 2026 23:09:08 GMT
ENV TZ=UTC
# Mon, 26 Oct 2026 23:09:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 26 Oct 2026 23:09:08 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 26 Oct 2026 23:09:08 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:09:08 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 26 Oct 2026 23:09:08 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 26 Oct 2026 23:09:08 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 26 Oct 2026 23:09:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:771eed73ee82c7916df197c0fd7ef3ac4eedcb9a6318b10d2652948c6c4ca08f`  
		Last Modified: Sun, 25 Oct 2026 20:45:27 GMT  
		Size: 27.7 MB (27684607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8914dee7d90f9e70b4af22dfe0ef0a87178d76bd4f6859d69dcf065592e37b36`  
		Last Modified: Mon, 26 Oct 2026 23:09:31 GMT  
		Size: 7.5 MB (7533838 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfa08a9d815f83784b7cddea40da5ae1d02488bae8e3911d1787466247724979`  
		Last Modified: Mon, 26 Oct 2026 23:09:35 GMT  
		Size: 226.7 MB (226731057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b93ac7f418b283b1901277ba0610d8e6b29945f4ba28910eef08e5a52cda5316`  
		Last Modified: Mon, 26 Oct 2026 23:09:30 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79eb7ea7970d64a65fb43db4090c925383fa1cb69607f2b98734dfb3c17a4df9`  
		Last Modified: Mon, 26 Oct 2026 23:09:30 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cbb292efa881b42ccc9f24b222d26659c2f489e5a2bf455adf8203c9c8454e3`  
		Last Modified: Mon, 26 Oct 2026 23:09:32 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b730b6b490f1ffe7958fd74d6fafa2c59f8bf36113037caad56eaccb9ca22654`  
		Last Modified: Mon, 26 Oct 2026 23:09:32 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63c3ce73f2e9314cc2b216ff2fba1d61ba7010fe1778bf1b6cba2ec2cb6212a9`  
		Last Modified: Mon, 26 Oct 2026 23:09:32 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:b28b100bd33e0824b33632f26753aa0a199cc895527e154248451fc53ea5735b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 KB (27578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ebe77d510683b6bc97949bc8bf57ea358c33066ee9206fd0a86acc1f733c77d`

```dockerfile
```

-	Layers:
	-	`sha256:9185d0325445749d10524a9f4171c5ba09db842e7af5d8047d6986ae3cc57dd2`  
		Last Modified: Mon, 26 Oct 2026 23:09:30 GMT  
		Size: 27.6 KB (27578 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.8.34`

```console
$ docker pull clickhouse@sha256:c5c77dcef8017f77a48378ba6e9752bc8cc745c828c6f7ae6bb3c7df1996d56d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.8.34` - linux; amd64

```console
$ docker pull clickhouse@sha256:c2e3bd3eba21274db1dd835b0dd5166e88315d1cc9aaec22e6ec89e89b6e1cc7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.8 MB (279781723 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45b523803d4373472a6e6e1ea4befb1e212b12013953b4a6ef95ed3ae2a6ab80`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:42 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:42 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:42 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:44 GMT
ADD file:ba52f9eec2a5a7de74e9a460017725370755c2d4814dd746bde7507601befb53 in / 
# Sun, 25 Oct 2026 20:10:44 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:02:43 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 26 Oct 2026 23:02:43 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 26 Oct 2026 23:02:43 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 26 Oct 2026 23:02:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 26 Oct 2026 23:02:43 GMT
ARG REPO_CHANNEL=stable
# Mon, 26 Oct 2026 23:02:43 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 26 Oct 2026 23:02:43 GMT
ARG VERSION=26.8.34.13
# Mon, 26 Oct 2026 23:02:43 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 26 Oct 2026 23:03:10 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 26 Oct 2026 23:03:10 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 26 Oct 2026 23:03:11 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 26 Oct 2026 23:03:11 GMT
ENV LANG=en_US.UTF-8
# Mon, 26 Oct 2026 23:03:11 GMT
ENV TZ=UTC
# Mon, 26 Oct 2026 23:03:11 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 26 Oct 2026 23:03:11 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 26 Oct 2026 23:03:11 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:03:11 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 26 Oct 2026 23:03:11 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 26 Oct 2026 23:03:11 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 26 Oct 2026 23:03:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fbf9c188575b2ae43cde5204533b7bba01d1cc3f10ed3db6b916c3c59377761`  
		Last Modified: Mon, 26 Oct 2026 23:03:37 GMT  
		Size: 7.6 MB (7550939 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf67b1df84a1eed909e47860f46282a50db69784e5c61ad398b0522745c093dc`  
		Last Modified: Mon, 26 Oct 2026 23:03:41 GMT  
		Size: 241.6 MB (241608245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30ca77766c378e1a4f49a0b7477ce501bd01cf0e5c0ccd8d2b8283f5d8331325`  
		Last Modified: Mon, 26 Oct 2026 23:03:36 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f743bc8d44821091b66bd9dddc00925cbe6b242848f806be81ca1e0ce759347`  
		Last Modified: Mon, 26 Oct 2026 23:03:37 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:624170c2834a940b34a99d7fb4c284136f2683ac3b90e0f1be3851bd775f5093`  
		Last Modified: Mon, 26 Oct 2026 23:03:38 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45bf5f1f7d926d3fbb98a33fb8dd18f7fac0536b03b70509ed7cf89c5fed5e23`  
		Last Modified: Mon, 26 Oct 2026 23:03:38 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fc2b7b3e632274eff487c981ba19c54bdf71915edfbf2296befe3547c74895a`  
		Last Modified: Mon, 26 Oct 2026 23:03:38 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8.34` - unknown; unknown

```console
$ docker pull clickhouse@sha256:02133f94863ce3c0d39a44055dea6480490e3bc9743597e58aaace9f1bd5a5e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 KB (27366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7909760815603d82d00fd98e14165fe19eca9c08e4ccd0462fa8e9b960b7ff54`

```dockerfile
```

-	Layers:
	-	`sha256:412beb4242894bf59d6f6bd26b4d4035daeb0182f56f1941cd8b51772cf33727`  
		Last Modified: Mon, 26 Oct 2026 23:03:36 GMT  
		Size: 27.4 KB (27366 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.8.34` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:6bd3727e2e7a4e12b876ea6595a7e0634309c0add560989527e650c30dd62f6c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.8 MB (262819552 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3eeebf13abdbba3cea410c309a99085c65db2c93c5479e7e9c24cc81da3dc395`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:50 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:50 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:50 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:52 GMT
ADD file:6efa877f019ce1c165e045c546c059568465dad040d65f7797e1bbbf530bed3e in / 
# Sun, 25 Oct 2026 20:10:53 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:08:36 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 26 Oct 2026 23:08:36 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 26 Oct 2026 23:08:36 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 26 Oct 2026 23:08:36 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 26 Oct 2026 23:08:36 GMT
ARG REPO_CHANNEL=stable
# Mon, 26 Oct 2026 23:08:36 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 26 Oct 2026 23:08:36 GMT
ARG VERSION=26.8.34.13
# Mon, 26 Oct 2026 23:08:36 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 26 Oct 2026 23:09:07 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 26 Oct 2026 23:09:07 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 26 Oct 2026 23:09:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 26 Oct 2026 23:09:08 GMT
ENV LANG=en_US.UTF-8
# Mon, 26 Oct 2026 23:09:08 GMT
ENV TZ=UTC
# Mon, 26 Oct 2026 23:09:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 26 Oct 2026 23:09:08 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 26 Oct 2026 23:09:08 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:09:08 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 26 Oct 2026 23:09:08 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 26 Oct 2026 23:09:08 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 26 Oct 2026 23:09:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:771eed73ee82c7916df197c0fd7ef3ac4eedcb9a6318b10d2652948c6c4ca08f`  
		Last Modified: Sun, 25 Oct 2026 20:45:27 GMT  
		Size: 27.7 MB (27684607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8914dee7d90f9e70b4af22dfe0ef0a87178d76bd4f6859d69dcf065592e37b36`  
		Last Modified: Mon, 26 Oct 2026 23:09:31 GMT  
		Size: 7.5 MB (7533838 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfa08a9d815f83784b7cddea40da5ae1d02488bae8e3911d1787466247724979`  
		Last Modified: Mon, 26 Oct 2026 23:09:35 GMT  
		Size: 226.7 MB (226731057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b93ac7f418b283b1901277ba0610d8e6b29945f4ba28910eef08e5a52cda5316`  
		Last Modified: Mon, 26 Oct 2026 23:09:30 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79eb7ea7970d64a65fb43db4090c925383fa1cb69607f2b98734dfb3c17a4df9`  
		Last Modified: Mon, 26 Oct 2026 23:09:30 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cbb292efa881b42ccc9f24b222d26659c2f489e5a2bf455adf8203c9c8454e3`  
		Last Modified: Mon, 26 Oct 2026 23:09:32 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b730b6b490f1ffe7958fd74d6fafa2c59f8bf36113037caad56eaccb9ca22654`  
		Last Modified: Mon, 26 Oct 2026 23:09:32 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63c3ce73f2e9314cc2b216ff2fba1d61ba7010fe1778bf1b6cba2ec2cb6212a9`  
		Last Modified: Mon, 26 Oct 2026 23:09:32 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8.34` - unknown; unknown

```console
$ docker pull clickhouse@sha256:b28b100bd33e0824b33632f26753aa0a199cc895527e154248451fc53ea5735b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 KB (27578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ebe77d510683b6bc97949bc8bf57ea358c33066ee9206fd0a86acc1f733c77d`

```dockerfile
```

-	Layers:
	-	`sha256:9185d0325445749d10524a9f4171c5ba09db842e7af5d8047d6986ae3cc57dd2`  
		Last Modified: Mon, 26 Oct 2026 23:09:30 GMT  
		Size: 27.6 KB (27578 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.8.34-jammy`

```console
$ docker pull clickhouse@sha256:c5c77dcef8017f77a48378ba6e9752bc8cc745c828c6f7ae6bb3c7df1996d56d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.8.34-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:c2e3bd3eba21274db1dd835b0dd5166e88315d1cc9aaec22e6ec89e89b6e1cc7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.8 MB (279781723 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45b523803d4373472a6e6e1ea4befb1e212b12013953b4a6ef95ed3ae2a6ab80`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:42 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:42 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:42 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:44 GMT
ADD file:ba52f9eec2a5a7de74e9a460017725370755c2d4814dd746bde7507601befb53 in / 
# Sun, 25 Oct 2026 20:10:44 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:02:43 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 26 Oct 2026 23:02:43 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 26 Oct 2026 23:02:43 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 26 Oct 2026 23:02:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 26 Oct 2026 23:02:43 GMT
ARG REPO_CHANNEL=stable
# Mon, 26 Oct 2026 23:02:43 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 26 Oct 2026 23:02:43 GMT
ARG VERSION=26.8.34.13
# Mon, 26 Oct 2026 23:02:43 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 26 Oct 2026 23:03:10 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 26 Oct 2026 23:03:10 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 26 Oct 2026 23:03:11 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 26 Oct 2026 23:03:11 GMT
ENV LANG=en_US.UTF-8
# Mon, 26 Oct 2026 23:03:11 GMT
ENV TZ=UTC
# Mon, 26 Oct 2026 23:03:11 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 26 Oct 2026 23:03:11 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 26 Oct 2026 23:03:11 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:03:11 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 26 Oct 2026 23:03:11 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 26 Oct 2026 23:03:11 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 26 Oct 2026 23:03:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fbf9c188575b2ae43cde5204533b7bba01d1cc3f10ed3db6b916c3c59377761`  
		Last Modified: Mon, 26 Oct 2026 23:03:37 GMT  
		Size: 7.6 MB (7550939 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf67b1df84a1eed909e47860f46282a50db69784e5c61ad398b0522745c093dc`  
		Last Modified: Mon, 26 Oct 2026 23:03:41 GMT  
		Size: 241.6 MB (241608245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30ca77766c378e1a4f49a0b7477ce501bd01cf0e5c0ccd8d2b8283f5d8331325`  
		Last Modified: Mon, 26 Oct 2026 23:03:36 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f743bc8d44821091b66bd9dddc00925cbe6b242848f806be81ca1e0ce759347`  
		Last Modified: Mon, 26 Oct 2026 23:03:37 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:624170c2834a940b34a99d7fb4c284136f2683ac3b90e0f1be3851bd775f5093`  
		Last Modified: Mon, 26 Oct 2026 23:03:38 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45bf5f1f7d926d3fbb98a33fb8dd18f7fac0536b03b70509ed7cf89c5fed5e23`  
		Last Modified: Mon, 26 Oct 2026 23:03:38 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fc2b7b3e632274eff487c981ba19c54bdf71915edfbf2296befe3547c74895a`  
		Last Modified: Mon, 26 Oct 2026 23:03:38 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8.34-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:02133f94863ce3c0d39a44055dea6480490e3bc9743597e58aaace9f1bd5a5e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 KB (27366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7909760815603d82d00fd98e14165fe19eca9c08e4ccd0462fa8e9b960b7ff54`

```dockerfile
```

-	Layers:
	-	`sha256:412beb4242894bf59d6f6bd26b4d4035daeb0182f56f1941cd8b51772cf33727`  
		Last Modified: Mon, 26 Oct 2026 23:03:36 GMT  
		Size: 27.4 KB (27366 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.8.34-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:6bd3727e2e7a4e12b876ea6595a7e0634309c0add560989527e650c30dd62f6c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.8 MB (262819552 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3eeebf13abdbba3cea410c309a99085c65db2c93c5479e7e9c24cc81da3dc395`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:50 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:50 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:50 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:52 GMT
ADD file:6efa877f019ce1c165e045c546c059568465dad040d65f7797e1bbbf530bed3e in / 
# Sun, 25 Oct 2026 20:10:53 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:08:36 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 26 Oct 2026 23:08:36 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 26 Oct 2026 23:08:36 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 26 Oct 2026 23:08:36 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 26 Oct 2026 23:08:36 GMT
ARG REPO_CHANNEL=stable
# Mon, 26 Oct 2026 23:08:36 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 26 Oct 2026 23:08:36 GMT
ARG VERSION=26.8.34.13
# Mon, 26 Oct 2026 23:08:36 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 26 Oct 2026 23:09:07 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 26 Oct 2026 23:09:07 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 26 Oct 2026 23:09:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 26 Oct 2026 23:09:08 GMT
ENV LANG=en_US.UTF-8
# Mon, 26 Oct 2026 23:09:08 GMT
ENV TZ=UTC
# Mon, 26 Oct 2026 23:09:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 26 Oct 2026 23:09:08 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 26 Oct 2026 23:09:08 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:09:08 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 26 Oct 2026 23:09:08 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 26 Oct 2026 23:09:08 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 26 Oct 2026 23:09:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:771eed73ee82c7916df197c0fd7ef3ac4eedcb9a6318b10d2652948c6c4ca08f`  
		Last Modified: Sun, 25 Oct 2026 20:45:27 GMT  
		Size: 27.7 MB (27684607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8914dee7d90f9e70b4af22dfe0ef0a87178d76bd4f6859d69dcf065592e37b36`  
		Last Modified: Mon, 26 Oct 2026 23:09:31 GMT  
		Size: 7.5 MB (7533838 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfa08a9d815f83784b7cddea40da5ae1d02488bae8e3911d1787466247724979`  
		Last Modified: Mon, 26 Oct 2026 23:09:35 GMT  
		Size: 226.7 MB (226731057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b93ac7f418b283b1901277ba0610d8e6b29945f4ba28910eef08e5a52cda5316`  
		Last Modified: Mon, 26 Oct 2026 23:09:30 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79eb7ea7970d64a65fb43db4090c925383fa1cb69607f2b98734dfb3c17a4df9`  
		Last Modified: Mon, 26 Oct 2026 23:09:30 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cbb292efa881b42ccc9f24b222d26659c2f489e5a2bf455adf8203c9c8454e3`  
		Last Modified: Mon, 26 Oct 2026 23:09:32 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b730b6b490f1ffe7958fd74d6fafa2c59f8bf36113037caad56eaccb9ca22654`  
		Last Modified: Mon, 26 Oct 2026 23:09:32 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63c3ce73f2e9314cc2b216ff2fba1d61ba7010fe1778bf1b6cba2ec2cb6212a9`  
		Last Modified: Mon, 26 Oct 2026 23:09:32 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8.34-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:b28b100bd33e0824b33632f26753aa0a199cc895527e154248451fc53ea5735b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 KB (27578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ebe77d510683b6bc97949bc8bf57ea358c33066ee9206fd0a86acc1f733c77d`

```dockerfile
```

-	Layers:
	-	`sha256:9185d0325445749d10524a9f4171c5ba09db842e7af5d8047d6986ae3cc57dd2`  
		Last Modified: Mon, 26 Oct 2026 23:09:30 GMT  
		Size: 27.6 KB (27578 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.8.34.13`

```console
$ docker pull clickhouse@sha256:c5c77dcef8017f77a48378ba6e9752bc8cc745c828c6f7ae6bb3c7df1996d56d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.8.34.13` - linux; amd64

```console
$ docker pull clickhouse@sha256:c2e3bd3eba21274db1dd835b0dd5166e88315d1cc9aaec22e6ec89e89b6e1cc7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.8 MB (279781723 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45b523803d4373472a6e6e1ea4befb1e212b12013953b4a6ef95ed3ae2a6ab80`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:42 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:42 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:42 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:44 GMT
ADD file:ba52f9eec2a5a7de74e9a460017725370755c2d4814dd746bde7507601befb53 in / 
# Sun, 25 Oct 2026 20:10:44 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:02:43 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 26 Oct 2026 23:02:43 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 26 Oct 2026 23:02:43 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 26 Oct 2026 23:02:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 26 Oct 2026 23:02:43 GMT
ARG REPO_CHANNEL=stable
# Mon, 26 Oct 2026 23:02:43 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 26 Oct 2026 23:02:43 GMT
ARG VERSION=26.8.34.13
# Mon, 26 Oct 2026 23:02:43 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 26 Oct 2026 23:03:10 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 26 Oct 2026 23:03:10 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 26 Oct 2026 23:03:11 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 26 Oct 2026 23:03:11 GMT
ENV LANG=en_US.UTF-8
# Mon, 26 Oct 2026 23:03:11 GMT
ENV TZ=UTC
# Mon, 26 Oct 2026 23:03:11 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 26 Oct 2026 23:03:11 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 26 Oct 2026 23:03:11 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:03:11 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 26 Oct 2026 23:03:11 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 26 Oct 2026 23:03:11 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 26 Oct 2026 23:03:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fbf9c188575b2ae43cde5204533b7bba01d1cc3f10ed3db6b916c3c59377761`  
		Last Modified: Mon, 26 Oct 2026 23:03:37 GMT  
		Size: 7.6 MB (7550939 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf67b1df84a1eed909e47860f46282a50db69784e5c61ad398b0522745c093dc`  
		Last Modified: Mon, 26 Oct 2026 23:03:41 GMT  
		Size: 241.6 MB (241608245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30ca77766c378e1a4f49a0b7477ce501bd01cf0e5c0ccd8d2b8283f5d8331325`  
		Last Modified: Mon, 26 Oct 2026 23:03:36 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f743bc8d44821091b66bd9dddc00925cbe6b242848f806be81ca1e0ce759347`  
		Last Modified: Mon, 26 Oct 2026 23:03:37 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:624170c2834a940b34a99d7fb4c284136f2683ac3b90e0f1be3851bd775f5093`  
		Last Modified: Mon, 26 Oct 2026 23:03:38 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45bf5f1f7d926d3fbb98a33fb8dd18f7fac0536b03b70509ed7cf89c5fed5e23`  
		Last Modified: Mon, 26 Oct 2026 23:03:38 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fc2b7b3e632274eff487c981ba19c54bdf71915edfbf2296befe3547c74895a`  
		Last Modified: Mon, 26 Oct 2026 23:03:38 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8.34.13` - unknown; unknown

```console
$ docker pull clickhouse@sha256:02133f94863ce3c0d39a44055dea6480490e3bc9743597e58aaace9f1bd5a5e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 KB (27366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7909760815603d82d00fd98e14165fe19eca9c08e4ccd0462fa8e9b960b7ff54`

```dockerfile
```

-	Layers:
	-	`sha256:412beb4242894bf59d6f6bd26b4d4035daeb0182f56f1941cd8b51772cf33727`  
		Last Modified: Mon, 26 Oct 2026 23:03:36 GMT  
		Size: 27.4 KB (27366 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.8.34.13` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:6bd3727e2e7a4e12b876ea6595a7e0634309c0add560989527e650c30dd62f6c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.8 MB (262819552 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3eeebf13abdbba3cea410c309a99085c65db2c93c5479e7e9c24cc81da3dc395`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:50 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:50 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:50 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:52 GMT
ADD file:6efa877f019ce1c165e045c546c059568465dad040d65f7797e1bbbf530bed3e in / 
# Sun, 25 Oct 2026 20:10:53 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:08:36 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 26 Oct 2026 23:08:36 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 26 Oct 2026 23:08:36 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 26 Oct 2026 23:08:36 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 26 Oct 2026 23:08:36 GMT
ARG REPO_CHANNEL=stable
# Mon, 26 Oct 2026 23:08:36 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 26 Oct 2026 23:08:36 GMT
ARG VERSION=26.8.34.13
# Mon, 26 Oct 2026 23:08:36 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 26 Oct 2026 23:09:07 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 26 Oct 2026 23:09:07 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 26 Oct 2026 23:09:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 26 Oct 2026 23:09:08 GMT
ENV LANG=en_US.UTF-8
# Mon, 26 Oct 2026 23:09:08 GMT
ENV TZ=UTC
# Mon, 26 Oct 2026 23:09:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 26 Oct 2026 23:09:08 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 26 Oct 2026 23:09:08 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:09:08 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 26 Oct 2026 23:09:08 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 26 Oct 2026 23:09:08 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 26 Oct 2026 23:09:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:771eed73ee82c7916df197c0fd7ef3ac4eedcb9a6318b10d2652948c6c4ca08f`  
		Last Modified: Sun, 25 Oct 2026 20:45:27 GMT  
		Size: 27.7 MB (27684607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8914dee7d90f9e70b4af22dfe0ef0a87178d76bd4f6859d69dcf065592e37b36`  
		Last Modified: Mon, 26 Oct 2026 23:09:31 GMT  
		Size: 7.5 MB (7533838 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfa08a9d815f83784b7cddea40da5ae1d02488bae8e3911d1787466247724979`  
		Last Modified: Mon, 26 Oct 2026 23:09:35 GMT  
		Size: 226.7 MB (226731057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b93ac7f418b283b1901277ba0610d8e6b29945f4ba28910eef08e5a52cda5316`  
		Last Modified: Mon, 26 Oct 2026 23:09:30 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79eb7ea7970d64a65fb43db4090c925383fa1cb69607f2b98734dfb3c17a4df9`  
		Last Modified: Mon, 26 Oct 2026 23:09:30 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cbb292efa881b42ccc9f24b222d26659c2f489e5a2bf455adf8203c9c8454e3`  
		Last Modified: Mon, 26 Oct 2026 23:09:32 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b730b6b490f1ffe7958fd74d6fafa2c59f8bf36113037caad56eaccb9ca22654`  
		Last Modified: Mon, 26 Oct 2026 23:09:32 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63c3ce73f2e9314cc2b216ff2fba1d61ba7010fe1778bf1b6cba2ec2cb6212a9`  
		Last Modified: Mon, 26 Oct 2026 23:09:32 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8.34.13` - unknown; unknown

```console
$ docker pull clickhouse@sha256:b28b100bd33e0824b33632f26753aa0a199cc895527e154248451fc53ea5735b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 KB (27578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ebe77d510683b6bc97949bc8bf57ea358c33066ee9206fd0a86acc1f733c77d`

```dockerfile
```

-	Layers:
	-	`sha256:9185d0325445749d10524a9f4171c5ba09db842e7af5d8047d6986ae3cc57dd2`  
		Last Modified: Mon, 26 Oct 2026 23:09:30 GMT  
		Size: 27.6 KB (27578 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.8.34.13-jammy`

```console
$ docker pull clickhouse@sha256:c5c77dcef8017f77a48378ba6e9752bc8cc745c828c6f7ae6bb3c7df1996d56d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.8.34.13-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:c2e3bd3eba21274db1dd835b0dd5166e88315d1cc9aaec22e6ec89e89b6e1cc7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.8 MB (279781723 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45b523803d4373472a6e6e1ea4befb1e212b12013953b4a6ef95ed3ae2a6ab80`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:42 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:42 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:42 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:44 GMT
ADD file:ba52f9eec2a5a7de74e9a460017725370755c2d4814dd746bde7507601befb53 in / 
# Sun, 25 Oct 2026 20:10:44 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:02:43 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 26 Oct 2026 23:02:43 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 26 Oct 2026 23:02:43 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 26 Oct 2026 23:02:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 26 Oct 2026 23:02:43 GMT
ARG REPO_CHANNEL=stable
# Mon, 26 Oct 2026 23:02:43 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 26 Oct 2026 23:02:43 GMT
ARG VERSION=26.8.34.13
# Mon, 26 Oct 2026 23:02:43 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 26 Oct 2026 23:03:10 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 26 Oct 2026 23:03:10 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 26 Oct 2026 23:03:11 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 26 Oct 2026 23:03:11 GMT
ENV LANG=en_US.UTF-8
# Mon, 26 Oct 2026 23:03:11 GMT
ENV TZ=UTC
# Mon, 26 Oct 2026 23:03:11 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 26 Oct 2026 23:03:11 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 26 Oct 2026 23:03:11 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:03:11 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 26 Oct 2026 23:03:11 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 26 Oct 2026 23:03:11 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 26 Oct 2026 23:03:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fbf9c188575b2ae43cde5204533b7bba01d1cc3f10ed3db6b916c3c59377761`  
		Last Modified: Mon, 26 Oct 2026 23:03:37 GMT  
		Size: 7.6 MB (7550939 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf67b1df84a1eed909e47860f46282a50db69784e5c61ad398b0522745c093dc`  
		Last Modified: Mon, 26 Oct 2026 23:03:41 GMT  
		Size: 241.6 MB (241608245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30ca77766c378e1a4f49a0b7477ce501bd01cf0e5c0ccd8d2b8283f5d8331325`  
		Last Modified: Mon, 26 Oct 2026 23:03:36 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f743bc8d44821091b66bd9dddc00925cbe6b242848f806be81ca1e0ce759347`  
		Last Modified: Mon, 26 Oct 2026 23:03:37 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:624170c2834a940b34a99d7fb4c284136f2683ac3b90e0f1be3851bd775f5093`  
		Last Modified: Mon, 26 Oct 2026 23:03:38 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45bf5f1f7d926d3fbb98a33fb8dd18f7fac0536b03b70509ed7cf89c5fed5e23`  
		Last Modified: Mon, 26 Oct 2026 23:03:38 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fc2b7b3e632274eff487c981ba19c54bdf71915edfbf2296befe3547c74895a`  
		Last Modified: Mon, 26 Oct 2026 23:03:38 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8.34.13-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:02133f94863ce3c0d39a44055dea6480490e3bc9743597e58aaace9f1bd5a5e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 KB (27366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7909760815603d82d00fd98e14165fe19eca9c08e4ccd0462fa8e9b960b7ff54`

```dockerfile
```

-	Layers:
	-	`sha256:412beb4242894bf59d6f6bd26b4d4035daeb0182f56f1941cd8b51772cf33727`  
		Last Modified: Mon, 26 Oct 2026 23:03:36 GMT  
		Size: 27.4 KB (27366 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.8.34.13-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:6bd3727e2e7a4e12b876ea6595a7e0634309c0add560989527e650c30dd62f6c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.8 MB (262819552 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3eeebf13abdbba3cea410c309a99085c65db2c93c5479e7e9c24cc81da3dc395`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:50 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:50 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:50 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:52 GMT
ADD file:6efa877f019ce1c165e045c546c059568465dad040d65f7797e1bbbf530bed3e in / 
# Sun, 25 Oct 2026 20:10:53 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:08:36 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 26 Oct 2026 23:08:36 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 26 Oct 2026 23:08:36 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 26 Oct 2026 23:08:36 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 26 Oct 2026 23:08:36 GMT
ARG REPO_CHANNEL=stable
# Mon, 26 Oct 2026 23:08:36 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 26 Oct 2026 23:08:36 GMT
ARG VERSION=26.8.34.13
# Mon, 26 Oct 2026 23:08:36 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 26 Oct 2026 23:09:07 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 26 Oct 2026 23:09:07 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 26 Oct 2026 23:09:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 26 Oct 2026 23:09:08 GMT
ENV LANG=en_US.UTF-8
# Mon, 26 Oct 2026 23:09:08 GMT
ENV TZ=UTC
# Mon, 26 Oct 2026 23:09:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 26 Oct 2026 23:09:08 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 26 Oct 2026 23:09:08 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:09:08 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 26 Oct 2026 23:09:08 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 26 Oct 2026 23:09:08 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 26 Oct 2026 23:09:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:771eed73ee82c7916df197c0fd7ef3ac4eedcb9a6318b10d2652948c6c4ca08f`  
		Last Modified: Sun, 25 Oct 2026 20:45:27 GMT  
		Size: 27.7 MB (27684607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8914dee7d90f9e70b4af22dfe0ef0a87178d76bd4f6859d69dcf065592e37b36`  
		Last Modified: Mon, 26 Oct 2026 23:09:31 GMT  
		Size: 7.5 MB (7533838 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfa08a9d815f83784b7cddea40da5ae1d02488bae8e3911d1787466247724979`  
		Last Modified: Mon, 26 Oct 2026 23:09:35 GMT  
		Size: 226.7 MB (226731057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b93ac7f418b283b1901277ba0610d8e6b29945f4ba28910eef08e5a52cda5316`  
		Last Modified: Mon, 26 Oct 2026 23:09:30 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79eb7ea7970d64a65fb43db4090c925383fa1cb69607f2b98734dfb3c17a4df9`  
		Last Modified: Mon, 26 Oct 2026 23:09:30 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cbb292efa881b42ccc9f24b222d26659c2f489e5a2bf455adf8203c9c8454e3`  
		Last Modified: Mon, 26 Oct 2026 23:09:32 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b730b6b490f1ffe7958fd74d6fafa2c59f8bf36113037caad56eaccb9ca22654`  
		Last Modified: Mon, 26 Oct 2026 23:09:32 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63c3ce73f2e9314cc2b216ff2fba1d61ba7010fe1778bf1b6cba2ec2cb6212a9`  
		Last Modified: Mon, 26 Oct 2026 23:09:32 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8.34.13-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:b28b100bd33e0824b33632f26753aa0a199cc895527e154248451fc53ea5735b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 KB (27578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ebe77d510683b6bc97949bc8bf57ea358c33066ee9206fd0a86acc1f733c77d`

```dockerfile
```

-	Layers:
	-	`sha256:9185d0325445749d10524a9f4171c5ba09db842e7af5d8047d6986ae3cc57dd2`  
		Last Modified: Mon, 26 Oct 2026 23:09:30 GMT  
		Size: 27.6 KB (27578 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.9`

```console
$ docker pull clickhouse@sha256:09afbbb8a7ffb68acca01812e62b6fbf4f8a21a5ca26c2d635991d3f18411ef4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.9` - linux; amd64

```console
$ docker pull clickhouse@sha256:c21cfcfd1eb03bed8c73da65013041afc6f3a086a497887bfb3172f3e34e441e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.3 MB (295261963 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:061c2b85e56084e1cf1558eff8142870a1b03c83ca6c92ac9e7dd0979f4bdd3e`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:42 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:42 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:42 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:44 GMT
ADD file:ba52f9eec2a5a7de74e9a460017725370755c2d4814dd746bde7507601befb53 in / 
# Sun, 25 Oct 2026 20:10:44 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:02:38 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 26 Oct 2026 23:02:38 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 26 Oct 2026 23:02:38 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 26 Oct 2026 23:02:38 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 26 Oct 2026 23:02:38 GMT
ARG REPO_CHANNEL=stable
# Mon, 26 Oct 2026 23:02:38 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 26 Oct 2026 23:02:38 GMT
ARG VERSION=26.9.25.15
# Mon, 26 Oct 2026 23:02:38 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 26 Oct 2026 23:03:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 26 Oct 2026 23:03:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 26 Oct 2026 23:03:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 26 Oct 2026 23:03:09 GMT
ENV LANG=en_US.UTF-8
# Mon, 26 Oct 2026 23:03:09 GMT
ENV TZ=UTC
# Mon, 26 Oct 2026 23:03:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 26 Oct 2026 23:03:09 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 26 Oct 2026 23:03:09 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:03:09 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 26 Oct 2026 23:03:09 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 26 Oct 2026 23:03:09 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 26 Oct 2026 23:03:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adb2f48f2763c717e3a18b6b04ebcf4d24bab84f63dba45fc725c177eb14036c`  
		Last Modified: Mon, 26 Oct 2026 23:03:35 GMT  
		Size: 7.6 MB (7550902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a63e985e49ba52905da13e7ee3f7905695ca178405b9c3f12fad354cb1852c6`  
		Last Modified: Mon, 26 Oct 2026 23:03:40 GMT  
		Size: 257.1 MB (257088260 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:271730552105d686fe2850943dd2eed49bb41297cb858c6b6b627098b31670a4`  
		Last Modified: Mon, 26 Oct 2026 23:03:35 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40bb4f389dc6e767f9eefd5ea77bdd33e3b48cf63a4fe72800d7673162b0e39a`  
		Last Modified: Mon, 26 Oct 2026 23:03:35 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b2aee19adf22b9b1b9405015ff7274b32f68ff2dffc3c234769920826c21092`  
		Last Modified: Mon, 26 Oct 2026 23:03:36 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93d5495c31b4c694bdf5040fed26761c1a16a6d9bacc2b7fe941c25edae69f30`  
		Last Modified: Mon, 26 Oct 2026 23:03:36 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e478ba5a33d2d907bc209b075639dc05e71d84cfea2dcb15fef1c6843d49c8a`  
		Last Modified: Mon, 26 Oct 2026 23:03:36 GMT  
		Size: 3.9 KB (3902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9` - unknown; unknown

```console
$ docker pull clickhouse@sha256:a838f3bf7f66b9fc1218a97c1e586637fcfe34324aca9b4a3f4a080a010d75ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 KB (27797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e342765c213c3dc46cbb2ca1295be992445e1cde160198ef3b57fbb05c73ed5`

```dockerfile
```

-	Layers:
	-	`sha256:610b2acd36b3dad806c5fcb1a1802ce128d09c311236379fb808a0ab9a473dd2`  
		Last Modified: Mon, 26 Oct 2026 23:03:35 GMT  
		Size: 27.8 KB (27797 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.9` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:87c9291db9da38c33dde1bbd399f2610cac1911b3e9b67b85cc5dde8fd61ea32
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.6 MB (272590233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:445282b700ac63f441629787b63369f7979cc87c764504b4450cc5dce2a71374`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:50 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:50 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:50 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:52 GMT
ADD file:6efa877f019ce1c165e045c546c059568465dad040d65f7797e1bbbf530bed3e in / 
# Sun, 25 Oct 2026 20:10:53 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:08:19 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 26 Oct 2026 23:08:19 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 26 Oct 2026 23:08:19 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 26 Oct 2026 23:08:19 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 26 Oct 2026 23:08:19 GMT
ARG REPO_CHANNEL=stable
# Mon, 26 Oct 2026 23:08:19 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 26 Oct 2026 23:08:19 GMT
ARG VERSION=26.9.25.15
# Mon, 26 Oct 2026 23:08:19 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 26 Oct 2026 23:08:47 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 26 Oct 2026 23:08:48 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 26 Oct 2026 23:08:49 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 26 Oct 2026 23:08:49 GMT
ENV LANG=en_US.UTF-8
# Mon, 26 Oct 2026 23:08:49 GMT
ENV TZ=UTC
# Mon, 26 Oct 2026 23:08:49 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 26 Oct 2026 23:08:49 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 26 Oct 2026 23:08:49 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:08:49 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 26 Oct 2026 23:08:49 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 26 Oct 2026 23:08:49 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 26 Oct 2026 23:08:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:771eed73ee82c7916df197c0fd7ef3ac4eedcb9a6318b10d2652948c6c4ca08f`  
		Last Modified: Sun, 25 Oct 2026 20:45:27 GMT  
		Size: 27.7 MB (27684607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:114bb87a71c0aad2ff7b831112650d8afb847a3fa4674e05e63f9b9f4f79d16e`  
		Last Modified: Mon, 26 Oct 2026 23:09:12 GMT  
		Size: 7.5 MB (7533862 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b4152e96ecbd7d8116b572954e621729427d369d6561c679d052287b7118ade`  
		Last Modified: Mon, 26 Oct 2026 23:09:17 GMT  
		Size: 236.5 MB (236501447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3be1b78253b48d08364422becf07da93b92adb7fde2d3d9a6bd54ebe81fbea33`  
		Last Modified: Mon, 26 Oct 2026 23:09:12 GMT  
		Size: 183.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51bac75c8b10b9c70ead8f90e041fde96e61082f936c3db7efe03116b8b29132`  
		Last Modified: Mon, 26 Oct 2026 23:09:12 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f347076d713d04347378d85391f0b33e9a4c8d331567b6b7979fb6b4e944030b`  
		Last Modified: Mon, 26 Oct 2026 23:09:13 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdee137b5f3582a190fa17f439689cf8b479cfff1149a35974d148eb06c4bd55`  
		Last Modified: Mon, 26 Oct 2026 23:09:13 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b136736050a948395f51d36f17244b90d5b29a3d60d1cdef455fd4249a9530e9`  
		Last Modified: Mon, 26 Oct 2026 23:09:13 GMT  
		Size: 3.9 KB (3903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9` - unknown; unknown

```console
$ docker pull clickhouse@sha256:79dd83a179468cf5639657e343a9f99918dfd4f87e5b9779ed77fa4fecf4413d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.0 KB (28009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:210f6ca144bce9e25026fd18a864a519cb704a396f49454c2d58fda8d69b44c4`

```dockerfile
```

-	Layers:
	-	`sha256:b99a65f26649f8fc034fd5492502a9ae7ab1deba94dc350199a519a8cabbecfd`  
		Last Modified: Mon, 26 Oct 2026 23:09:12 GMT  
		Size: 28.0 KB (28009 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.9-jammy`

```console
$ docker pull clickhouse@sha256:09afbbb8a7ffb68acca01812e62b6fbf4f8a21a5ca26c2d635991d3f18411ef4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.9-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:c21cfcfd1eb03bed8c73da65013041afc6f3a086a497887bfb3172f3e34e441e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.3 MB (295261963 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:061c2b85e56084e1cf1558eff8142870a1b03c83ca6c92ac9e7dd0979f4bdd3e`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:42 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:42 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:42 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:44 GMT
ADD file:ba52f9eec2a5a7de74e9a460017725370755c2d4814dd746bde7507601befb53 in / 
# Sun, 25 Oct 2026 20:10:44 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:02:38 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 26 Oct 2026 23:02:38 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 26 Oct 2026 23:02:38 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 26 Oct 2026 23:02:38 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 26 Oct 2026 23:02:38 GMT
ARG REPO_CHANNEL=stable
# Mon, 26 Oct 2026 23:02:38 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 26 Oct 2026 23:02:38 GMT
ARG VERSION=26.9.25.15
# Mon, 26 Oct 2026 23:02:38 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 26 Oct 2026 23:03:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 26 Oct 2026 23:03:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 26 Oct 2026 23:03:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 26 Oct 2026 23:03:09 GMT
ENV LANG=en_US.UTF-8
# Mon, 26 Oct 2026 23:03:09 GMT
ENV TZ=UTC
# Mon, 26 Oct 2026 23:03:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 26 Oct 2026 23:03:09 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 26 Oct 2026 23:03:09 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:03:09 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 26 Oct 2026 23:03:09 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 26 Oct 2026 23:03:09 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 26 Oct 2026 23:03:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adb2f48f2763c717e3a18b6b04ebcf4d24bab84f63dba45fc725c177eb14036c`  
		Last Modified: Mon, 26 Oct 2026 23:03:35 GMT  
		Size: 7.6 MB (7550902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a63e985e49ba52905da13e7ee3f7905695ca178405b9c3f12fad354cb1852c6`  
		Last Modified: Mon, 26 Oct 2026 23:03:40 GMT  
		Size: 257.1 MB (257088260 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:271730552105d686fe2850943dd2eed49bb41297cb858c6b6b627098b31670a4`  
		Last Modified: Mon, 26 Oct 2026 23:03:35 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40bb4f389dc6e767f9eefd5ea77bdd33e3b48cf63a4fe72800d7673162b0e39a`  
		Last Modified: Mon, 26 Oct 2026 23:03:35 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b2aee19adf22b9b1b9405015ff7274b32f68ff2dffc3c234769920826c21092`  
		Last Modified: Mon, 26 Oct 2026 23:03:36 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93d5495c31b4c694bdf5040fed26761c1a16a6d9bacc2b7fe941c25edae69f30`  
		Last Modified: Mon, 26 Oct 2026 23:03:36 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e478ba5a33d2d907bc209b075639dc05e71d84cfea2dcb15fef1c6843d49c8a`  
		Last Modified: Mon, 26 Oct 2026 23:03:36 GMT  
		Size: 3.9 KB (3902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:a838f3bf7f66b9fc1218a97c1e586637fcfe34324aca9b4a3f4a080a010d75ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 KB (27797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e342765c213c3dc46cbb2ca1295be992445e1cde160198ef3b57fbb05c73ed5`

```dockerfile
```

-	Layers:
	-	`sha256:610b2acd36b3dad806c5fcb1a1802ce128d09c311236379fb808a0ab9a473dd2`  
		Last Modified: Mon, 26 Oct 2026 23:03:35 GMT  
		Size: 27.8 KB (27797 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.9-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:87c9291db9da38c33dde1bbd399f2610cac1911b3e9b67b85cc5dde8fd61ea32
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.6 MB (272590233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:445282b700ac63f441629787b63369f7979cc87c764504b4450cc5dce2a71374`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:50 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:50 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:50 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:52 GMT
ADD file:6efa877f019ce1c165e045c546c059568465dad040d65f7797e1bbbf530bed3e in / 
# Sun, 25 Oct 2026 20:10:53 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:08:19 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 26 Oct 2026 23:08:19 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 26 Oct 2026 23:08:19 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 26 Oct 2026 23:08:19 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 26 Oct 2026 23:08:19 GMT
ARG REPO_CHANNEL=stable
# Mon, 26 Oct 2026 23:08:19 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 26 Oct 2026 23:08:19 GMT
ARG VERSION=26.9.25.15
# Mon, 26 Oct 2026 23:08:19 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 26 Oct 2026 23:08:47 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 26 Oct 2026 23:08:48 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 26 Oct 2026 23:08:49 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 26 Oct 2026 23:08:49 GMT
ENV LANG=en_US.UTF-8
# Mon, 26 Oct 2026 23:08:49 GMT
ENV TZ=UTC
# Mon, 26 Oct 2026 23:08:49 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 26 Oct 2026 23:08:49 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 26 Oct 2026 23:08:49 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:08:49 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 26 Oct 2026 23:08:49 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 26 Oct 2026 23:08:49 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 26 Oct 2026 23:08:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:771eed73ee82c7916df197c0fd7ef3ac4eedcb9a6318b10d2652948c6c4ca08f`  
		Last Modified: Sun, 25 Oct 2026 20:45:27 GMT  
		Size: 27.7 MB (27684607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:114bb87a71c0aad2ff7b831112650d8afb847a3fa4674e05e63f9b9f4f79d16e`  
		Last Modified: Mon, 26 Oct 2026 23:09:12 GMT  
		Size: 7.5 MB (7533862 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b4152e96ecbd7d8116b572954e621729427d369d6561c679d052287b7118ade`  
		Last Modified: Mon, 26 Oct 2026 23:09:17 GMT  
		Size: 236.5 MB (236501447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3be1b78253b48d08364422becf07da93b92adb7fde2d3d9a6bd54ebe81fbea33`  
		Last Modified: Mon, 26 Oct 2026 23:09:12 GMT  
		Size: 183.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51bac75c8b10b9c70ead8f90e041fde96e61082f936c3db7efe03116b8b29132`  
		Last Modified: Mon, 26 Oct 2026 23:09:12 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f347076d713d04347378d85391f0b33e9a4c8d331567b6b7979fb6b4e944030b`  
		Last Modified: Mon, 26 Oct 2026 23:09:13 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdee137b5f3582a190fa17f439689cf8b479cfff1149a35974d148eb06c4bd55`  
		Last Modified: Mon, 26 Oct 2026 23:09:13 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b136736050a948395f51d36f17244b90d5b29a3d60d1cdef455fd4249a9530e9`  
		Last Modified: Mon, 26 Oct 2026 23:09:13 GMT  
		Size: 3.9 KB (3903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:79dd83a179468cf5639657e343a9f99918dfd4f87e5b9779ed77fa4fecf4413d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.0 KB (28009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:210f6ca144bce9e25026fd18a864a519cb704a396f49454c2d58fda8d69b44c4`

```dockerfile
```

-	Layers:
	-	`sha256:b99a65f26649f8fc034fd5492502a9ae7ab1deba94dc350199a519a8cabbecfd`  
		Last Modified: Mon, 26 Oct 2026 23:09:12 GMT  
		Size: 28.0 KB (28009 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.9.25`

```console
$ docker pull clickhouse@sha256:09afbbb8a7ffb68acca01812e62b6fbf4f8a21a5ca26c2d635991d3f18411ef4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.9.25` - linux; amd64

```console
$ docker pull clickhouse@sha256:c21cfcfd1eb03bed8c73da65013041afc6f3a086a497887bfb3172f3e34e441e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.3 MB (295261963 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:061c2b85e56084e1cf1558eff8142870a1b03c83ca6c92ac9e7dd0979f4bdd3e`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:42 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:42 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:42 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:44 GMT
ADD file:ba52f9eec2a5a7de74e9a460017725370755c2d4814dd746bde7507601befb53 in / 
# Sun, 25 Oct 2026 20:10:44 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:02:38 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 26 Oct 2026 23:02:38 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 26 Oct 2026 23:02:38 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 26 Oct 2026 23:02:38 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 26 Oct 2026 23:02:38 GMT
ARG REPO_CHANNEL=stable
# Mon, 26 Oct 2026 23:02:38 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 26 Oct 2026 23:02:38 GMT
ARG VERSION=26.9.25.15
# Mon, 26 Oct 2026 23:02:38 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 26 Oct 2026 23:03:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 26 Oct 2026 23:03:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 26 Oct 2026 23:03:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 26 Oct 2026 23:03:09 GMT
ENV LANG=en_US.UTF-8
# Mon, 26 Oct 2026 23:03:09 GMT
ENV TZ=UTC
# Mon, 26 Oct 2026 23:03:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 26 Oct 2026 23:03:09 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 26 Oct 2026 23:03:09 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:03:09 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 26 Oct 2026 23:03:09 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 26 Oct 2026 23:03:09 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 26 Oct 2026 23:03:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adb2f48f2763c717e3a18b6b04ebcf4d24bab84f63dba45fc725c177eb14036c`  
		Last Modified: Mon, 26 Oct 2026 23:03:35 GMT  
		Size: 7.6 MB (7550902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a63e985e49ba52905da13e7ee3f7905695ca178405b9c3f12fad354cb1852c6`  
		Last Modified: Mon, 26 Oct 2026 23:03:40 GMT  
		Size: 257.1 MB (257088260 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:271730552105d686fe2850943dd2eed49bb41297cb858c6b6b627098b31670a4`  
		Last Modified: Mon, 26 Oct 2026 23:03:35 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40bb4f389dc6e767f9eefd5ea77bdd33e3b48cf63a4fe72800d7673162b0e39a`  
		Last Modified: Mon, 26 Oct 2026 23:03:35 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b2aee19adf22b9b1b9405015ff7274b32f68ff2dffc3c234769920826c21092`  
		Last Modified: Mon, 26 Oct 2026 23:03:36 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93d5495c31b4c694bdf5040fed26761c1a16a6d9bacc2b7fe941c25edae69f30`  
		Last Modified: Mon, 26 Oct 2026 23:03:36 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e478ba5a33d2d907bc209b075639dc05e71d84cfea2dcb15fef1c6843d49c8a`  
		Last Modified: Mon, 26 Oct 2026 23:03:36 GMT  
		Size: 3.9 KB (3902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9.25` - unknown; unknown

```console
$ docker pull clickhouse@sha256:a838f3bf7f66b9fc1218a97c1e586637fcfe34324aca9b4a3f4a080a010d75ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 KB (27797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e342765c213c3dc46cbb2ca1295be992445e1cde160198ef3b57fbb05c73ed5`

```dockerfile
```

-	Layers:
	-	`sha256:610b2acd36b3dad806c5fcb1a1802ce128d09c311236379fb808a0ab9a473dd2`  
		Last Modified: Mon, 26 Oct 2026 23:03:35 GMT  
		Size: 27.8 KB (27797 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.9.25` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:87c9291db9da38c33dde1bbd399f2610cac1911b3e9b67b85cc5dde8fd61ea32
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.6 MB (272590233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:445282b700ac63f441629787b63369f7979cc87c764504b4450cc5dce2a71374`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:50 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:50 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:50 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:52 GMT
ADD file:6efa877f019ce1c165e045c546c059568465dad040d65f7797e1bbbf530bed3e in / 
# Sun, 25 Oct 2026 20:10:53 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:08:19 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 26 Oct 2026 23:08:19 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 26 Oct 2026 23:08:19 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 26 Oct 2026 23:08:19 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 26 Oct 2026 23:08:19 GMT
ARG REPO_CHANNEL=stable
# Mon, 26 Oct 2026 23:08:19 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 26 Oct 2026 23:08:19 GMT
ARG VERSION=26.9.25.15
# Mon, 26 Oct 2026 23:08:19 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 26 Oct 2026 23:08:47 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 26 Oct 2026 23:08:48 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 26 Oct 2026 23:08:49 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 26 Oct 2026 23:08:49 GMT
ENV LANG=en_US.UTF-8
# Mon, 26 Oct 2026 23:08:49 GMT
ENV TZ=UTC
# Mon, 26 Oct 2026 23:08:49 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 26 Oct 2026 23:08:49 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 26 Oct 2026 23:08:49 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:08:49 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 26 Oct 2026 23:08:49 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 26 Oct 2026 23:08:49 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 26 Oct 2026 23:08:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:771eed73ee82c7916df197c0fd7ef3ac4eedcb9a6318b10d2652948c6c4ca08f`  
		Last Modified: Sun, 25 Oct 2026 20:45:27 GMT  
		Size: 27.7 MB (27684607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:114bb87a71c0aad2ff7b831112650d8afb847a3fa4674e05e63f9b9f4f79d16e`  
		Last Modified: Mon, 26 Oct 2026 23:09:12 GMT  
		Size: 7.5 MB (7533862 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b4152e96ecbd7d8116b572954e621729427d369d6561c679d052287b7118ade`  
		Last Modified: Mon, 26 Oct 2026 23:09:17 GMT  
		Size: 236.5 MB (236501447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3be1b78253b48d08364422becf07da93b92adb7fde2d3d9a6bd54ebe81fbea33`  
		Last Modified: Mon, 26 Oct 2026 23:09:12 GMT  
		Size: 183.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51bac75c8b10b9c70ead8f90e041fde96e61082f936c3db7efe03116b8b29132`  
		Last Modified: Mon, 26 Oct 2026 23:09:12 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f347076d713d04347378d85391f0b33e9a4c8d331567b6b7979fb6b4e944030b`  
		Last Modified: Mon, 26 Oct 2026 23:09:13 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdee137b5f3582a190fa17f439689cf8b479cfff1149a35974d148eb06c4bd55`  
		Last Modified: Mon, 26 Oct 2026 23:09:13 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b136736050a948395f51d36f17244b90d5b29a3d60d1cdef455fd4249a9530e9`  
		Last Modified: Mon, 26 Oct 2026 23:09:13 GMT  
		Size: 3.9 KB (3903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9.25` - unknown; unknown

```console
$ docker pull clickhouse@sha256:79dd83a179468cf5639657e343a9f99918dfd4f87e5b9779ed77fa4fecf4413d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.0 KB (28009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:210f6ca144bce9e25026fd18a864a519cb704a396f49454c2d58fda8d69b44c4`

```dockerfile
```

-	Layers:
	-	`sha256:b99a65f26649f8fc034fd5492502a9ae7ab1deba94dc350199a519a8cabbecfd`  
		Last Modified: Mon, 26 Oct 2026 23:09:12 GMT  
		Size: 28.0 KB (28009 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.9.25-jammy`

```console
$ docker pull clickhouse@sha256:09afbbb8a7ffb68acca01812e62b6fbf4f8a21a5ca26c2d635991d3f18411ef4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.9.25-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:c21cfcfd1eb03bed8c73da65013041afc6f3a086a497887bfb3172f3e34e441e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.3 MB (295261963 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:061c2b85e56084e1cf1558eff8142870a1b03c83ca6c92ac9e7dd0979f4bdd3e`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:42 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:42 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:42 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:44 GMT
ADD file:ba52f9eec2a5a7de74e9a460017725370755c2d4814dd746bde7507601befb53 in / 
# Sun, 25 Oct 2026 20:10:44 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:02:38 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 26 Oct 2026 23:02:38 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 26 Oct 2026 23:02:38 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 26 Oct 2026 23:02:38 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 26 Oct 2026 23:02:38 GMT
ARG REPO_CHANNEL=stable
# Mon, 26 Oct 2026 23:02:38 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 26 Oct 2026 23:02:38 GMT
ARG VERSION=26.9.25.15
# Mon, 26 Oct 2026 23:02:38 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 26 Oct 2026 23:03:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 26 Oct 2026 23:03:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 26 Oct 2026 23:03:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 26 Oct 2026 23:03:09 GMT
ENV LANG=en_US.UTF-8
# Mon, 26 Oct 2026 23:03:09 GMT
ENV TZ=UTC
# Mon, 26 Oct 2026 23:03:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 26 Oct 2026 23:03:09 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 26 Oct 2026 23:03:09 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:03:09 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 26 Oct 2026 23:03:09 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 26 Oct 2026 23:03:09 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 26 Oct 2026 23:03:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adb2f48f2763c717e3a18b6b04ebcf4d24bab84f63dba45fc725c177eb14036c`  
		Last Modified: Mon, 26 Oct 2026 23:03:35 GMT  
		Size: 7.6 MB (7550902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a63e985e49ba52905da13e7ee3f7905695ca178405b9c3f12fad354cb1852c6`  
		Last Modified: Mon, 26 Oct 2026 23:03:40 GMT  
		Size: 257.1 MB (257088260 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:271730552105d686fe2850943dd2eed49bb41297cb858c6b6b627098b31670a4`  
		Last Modified: Mon, 26 Oct 2026 23:03:35 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40bb4f389dc6e767f9eefd5ea77bdd33e3b48cf63a4fe72800d7673162b0e39a`  
		Last Modified: Mon, 26 Oct 2026 23:03:35 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b2aee19adf22b9b1b9405015ff7274b32f68ff2dffc3c234769920826c21092`  
		Last Modified: Mon, 26 Oct 2026 23:03:36 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93d5495c31b4c694bdf5040fed26761c1a16a6d9bacc2b7fe941c25edae69f30`  
		Last Modified: Mon, 26 Oct 2026 23:03:36 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e478ba5a33d2d907bc209b075639dc05e71d84cfea2dcb15fef1c6843d49c8a`  
		Last Modified: Mon, 26 Oct 2026 23:03:36 GMT  
		Size: 3.9 KB (3902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9.25-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:a838f3bf7f66b9fc1218a97c1e586637fcfe34324aca9b4a3f4a080a010d75ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 KB (27797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e342765c213c3dc46cbb2ca1295be992445e1cde160198ef3b57fbb05c73ed5`

```dockerfile
```

-	Layers:
	-	`sha256:610b2acd36b3dad806c5fcb1a1802ce128d09c311236379fb808a0ab9a473dd2`  
		Last Modified: Mon, 26 Oct 2026 23:03:35 GMT  
		Size: 27.8 KB (27797 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.9.25-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:87c9291db9da38c33dde1bbd399f2610cac1911b3e9b67b85cc5dde8fd61ea32
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.6 MB (272590233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:445282b700ac63f441629787b63369f7979cc87c764504b4450cc5dce2a71374`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:50 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:50 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:50 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:52 GMT
ADD file:6efa877f019ce1c165e045c546c059568465dad040d65f7797e1bbbf530bed3e in / 
# Sun, 25 Oct 2026 20:10:53 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:08:19 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 26 Oct 2026 23:08:19 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 26 Oct 2026 23:08:19 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 26 Oct 2026 23:08:19 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 26 Oct 2026 23:08:19 GMT
ARG REPO_CHANNEL=stable
# Mon, 26 Oct 2026 23:08:19 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 26 Oct 2026 23:08:19 GMT
ARG VERSION=26.9.25.15
# Mon, 26 Oct 2026 23:08:19 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 26 Oct 2026 23:08:47 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 26 Oct 2026 23:08:48 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 26 Oct 2026 23:08:49 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 26 Oct 2026 23:08:49 GMT
ENV LANG=en_US.UTF-8
# Mon, 26 Oct 2026 23:08:49 GMT
ENV TZ=UTC
# Mon, 26 Oct 2026 23:08:49 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 26 Oct 2026 23:08:49 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 26 Oct 2026 23:08:49 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:08:49 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 26 Oct 2026 23:08:49 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 26 Oct 2026 23:08:49 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 26 Oct 2026 23:08:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:771eed73ee82c7916df197c0fd7ef3ac4eedcb9a6318b10d2652948c6c4ca08f`  
		Last Modified: Sun, 25 Oct 2026 20:45:27 GMT  
		Size: 27.7 MB (27684607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:114bb87a71c0aad2ff7b831112650d8afb847a3fa4674e05e63f9b9f4f79d16e`  
		Last Modified: Mon, 26 Oct 2026 23:09:12 GMT  
		Size: 7.5 MB (7533862 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b4152e96ecbd7d8116b572954e621729427d369d6561c679d052287b7118ade`  
		Last Modified: Mon, 26 Oct 2026 23:09:17 GMT  
		Size: 236.5 MB (236501447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3be1b78253b48d08364422becf07da93b92adb7fde2d3d9a6bd54ebe81fbea33`  
		Last Modified: Mon, 26 Oct 2026 23:09:12 GMT  
		Size: 183.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51bac75c8b10b9c70ead8f90e041fde96e61082f936c3db7efe03116b8b29132`  
		Last Modified: Mon, 26 Oct 2026 23:09:12 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f347076d713d04347378d85391f0b33e9a4c8d331567b6b7979fb6b4e944030b`  
		Last Modified: Mon, 26 Oct 2026 23:09:13 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdee137b5f3582a190fa17f439689cf8b479cfff1149a35974d148eb06c4bd55`  
		Last Modified: Mon, 26 Oct 2026 23:09:13 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b136736050a948395f51d36f17244b90d5b29a3d60d1cdef455fd4249a9530e9`  
		Last Modified: Mon, 26 Oct 2026 23:09:13 GMT  
		Size: 3.9 KB (3903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9.25-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:79dd83a179468cf5639657e343a9f99918dfd4f87e5b9779ed77fa4fecf4413d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.0 KB (28009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:210f6ca144bce9e25026fd18a864a519cb704a396f49454c2d58fda8d69b44c4`

```dockerfile
```

-	Layers:
	-	`sha256:b99a65f26649f8fc034fd5492502a9ae7ab1deba94dc350199a519a8cabbecfd`  
		Last Modified: Mon, 26 Oct 2026 23:09:12 GMT  
		Size: 28.0 KB (28009 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.9.25.15`

```console
$ docker pull clickhouse@sha256:09afbbb8a7ffb68acca01812e62b6fbf4f8a21a5ca26c2d635991d3f18411ef4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.9.25.15` - linux; amd64

```console
$ docker pull clickhouse@sha256:c21cfcfd1eb03bed8c73da65013041afc6f3a086a497887bfb3172f3e34e441e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.3 MB (295261963 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:061c2b85e56084e1cf1558eff8142870a1b03c83ca6c92ac9e7dd0979f4bdd3e`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:42 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:42 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:42 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:44 GMT
ADD file:ba52f9eec2a5a7de74e9a460017725370755c2d4814dd746bde7507601befb53 in / 
# Sun, 25 Oct 2026 20:10:44 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:02:38 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 26 Oct 2026 23:02:38 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 26 Oct 2026 23:02:38 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 26 Oct 2026 23:02:38 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 26 Oct 2026 23:02:38 GMT
ARG REPO_CHANNEL=stable
# Mon, 26 Oct 2026 23:02:38 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 26 Oct 2026 23:02:38 GMT
ARG VERSION=26.9.25.15
# Mon, 26 Oct 2026 23:02:38 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 26 Oct 2026 23:03:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 26 Oct 2026 23:03:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 26 Oct 2026 23:03:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 26 Oct 2026 23:03:09 GMT
ENV LANG=en_US.UTF-8
# Mon, 26 Oct 2026 23:03:09 GMT
ENV TZ=UTC
# Mon, 26 Oct 2026 23:03:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 26 Oct 2026 23:03:09 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 26 Oct 2026 23:03:09 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:03:09 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 26 Oct 2026 23:03:09 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 26 Oct 2026 23:03:09 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 26 Oct 2026 23:03:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adb2f48f2763c717e3a18b6b04ebcf4d24bab84f63dba45fc725c177eb14036c`  
		Last Modified: Mon, 26 Oct 2026 23:03:35 GMT  
		Size: 7.6 MB (7550902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a63e985e49ba52905da13e7ee3f7905695ca178405b9c3f12fad354cb1852c6`  
		Last Modified: Mon, 26 Oct 2026 23:03:40 GMT  
		Size: 257.1 MB (257088260 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:271730552105d686fe2850943dd2eed49bb41297cb858c6b6b627098b31670a4`  
		Last Modified: Mon, 26 Oct 2026 23:03:35 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40bb4f389dc6e767f9eefd5ea77bdd33e3b48cf63a4fe72800d7673162b0e39a`  
		Last Modified: Mon, 26 Oct 2026 23:03:35 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b2aee19adf22b9b1b9405015ff7274b32f68ff2dffc3c234769920826c21092`  
		Last Modified: Mon, 26 Oct 2026 23:03:36 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93d5495c31b4c694bdf5040fed26761c1a16a6d9bacc2b7fe941c25edae69f30`  
		Last Modified: Mon, 26 Oct 2026 23:03:36 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e478ba5a33d2d907bc209b075639dc05e71d84cfea2dcb15fef1c6843d49c8a`  
		Last Modified: Mon, 26 Oct 2026 23:03:36 GMT  
		Size: 3.9 KB (3902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9.25.15` - unknown; unknown

```console
$ docker pull clickhouse@sha256:a838f3bf7f66b9fc1218a97c1e586637fcfe34324aca9b4a3f4a080a010d75ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 KB (27797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e342765c213c3dc46cbb2ca1295be992445e1cde160198ef3b57fbb05c73ed5`

```dockerfile
```

-	Layers:
	-	`sha256:610b2acd36b3dad806c5fcb1a1802ce128d09c311236379fb808a0ab9a473dd2`  
		Last Modified: Mon, 26 Oct 2026 23:03:35 GMT  
		Size: 27.8 KB (27797 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.9.25.15` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:87c9291db9da38c33dde1bbd399f2610cac1911b3e9b67b85cc5dde8fd61ea32
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.6 MB (272590233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:445282b700ac63f441629787b63369f7979cc87c764504b4450cc5dce2a71374`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:50 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:50 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:50 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:52 GMT
ADD file:6efa877f019ce1c165e045c546c059568465dad040d65f7797e1bbbf530bed3e in / 
# Sun, 25 Oct 2026 20:10:53 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:08:19 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 26 Oct 2026 23:08:19 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 26 Oct 2026 23:08:19 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 26 Oct 2026 23:08:19 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 26 Oct 2026 23:08:19 GMT
ARG REPO_CHANNEL=stable
# Mon, 26 Oct 2026 23:08:19 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 26 Oct 2026 23:08:19 GMT
ARG VERSION=26.9.25.15
# Mon, 26 Oct 2026 23:08:19 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 26 Oct 2026 23:08:47 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 26 Oct 2026 23:08:48 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 26 Oct 2026 23:08:49 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 26 Oct 2026 23:08:49 GMT
ENV LANG=en_US.UTF-8
# Mon, 26 Oct 2026 23:08:49 GMT
ENV TZ=UTC
# Mon, 26 Oct 2026 23:08:49 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 26 Oct 2026 23:08:49 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 26 Oct 2026 23:08:49 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:08:49 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 26 Oct 2026 23:08:49 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 26 Oct 2026 23:08:49 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 26 Oct 2026 23:08:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:771eed73ee82c7916df197c0fd7ef3ac4eedcb9a6318b10d2652948c6c4ca08f`  
		Last Modified: Sun, 25 Oct 2026 20:45:27 GMT  
		Size: 27.7 MB (27684607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:114bb87a71c0aad2ff7b831112650d8afb847a3fa4674e05e63f9b9f4f79d16e`  
		Last Modified: Mon, 26 Oct 2026 23:09:12 GMT  
		Size: 7.5 MB (7533862 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b4152e96ecbd7d8116b572954e621729427d369d6561c679d052287b7118ade`  
		Last Modified: Mon, 26 Oct 2026 23:09:17 GMT  
		Size: 236.5 MB (236501447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3be1b78253b48d08364422becf07da93b92adb7fde2d3d9a6bd54ebe81fbea33`  
		Last Modified: Mon, 26 Oct 2026 23:09:12 GMT  
		Size: 183.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51bac75c8b10b9c70ead8f90e041fde96e61082f936c3db7efe03116b8b29132`  
		Last Modified: Mon, 26 Oct 2026 23:09:12 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f347076d713d04347378d85391f0b33e9a4c8d331567b6b7979fb6b4e944030b`  
		Last Modified: Mon, 26 Oct 2026 23:09:13 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdee137b5f3582a190fa17f439689cf8b479cfff1149a35974d148eb06c4bd55`  
		Last Modified: Mon, 26 Oct 2026 23:09:13 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b136736050a948395f51d36f17244b90d5b29a3d60d1cdef455fd4249a9530e9`  
		Last Modified: Mon, 26 Oct 2026 23:09:13 GMT  
		Size: 3.9 KB (3903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9.25.15` - unknown; unknown

```console
$ docker pull clickhouse@sha256:79dd83a179468cf5639657e343a9f99918dfd4f87e5b9779ed77fa4fecf4413d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.0 KB (28009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:210f6ca144bce9e25026fd18a864a519cb704a396f49454c2d58fda8d69b44c4`

```dockerfile
```

-	Layers:
	-	`sha256:b99a65f26649f8fc034fd5492502a9ae7ab1deba94dc350199a519a8cabbecfd`  
		Last Modified: Mon, 26 Oct 2026 23:09:12 GMT  
		Size: 28.0 KB (28009 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.9.25.15-jammy`

```console
$ docker pull clickhouse@sha256:09afbbb8a7ffb68acca01812e62b6fbf4f8a21a5ca26c2d635991d3f18411ef4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.9.25.15-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:c21cfcfd1eb03bed8c73da65013041afc6f3a086a497887bfb3172f3e34e441e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.3 MB (295261963 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:061c2b85e56084e1cf1558eff8142870a1b03c83ca6c92ac9e7dd0979f4bdd3e`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:42 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:42 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:42 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:44 GMT
ADD file:ba52f9eec2a5a7de74e9a460017725370755c2d4814dd746bde7507601befb53 in / 
# Sun, 25 Oct 2026 20:10:44 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:02:38 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 26 Oct 2026 23:02:38 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 26 Oct 2026 23:02:38 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 26 Oct 2026 23:02:38 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 26 Oct 2026 23:02:38 GMT
ARG REPO_CHANNEL=stable
# Mon, 26 Oct 2026 23:02:38 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 26 Oct 2026 23:02:38 GMT
ARG VERSION=26.9.25.15
# Mon, 26 Oct 2026 23:02:38 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 26 Oct 2026 23:03:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 26 Oct 2026 23:03:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 26 Oct 2026 23:03:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 26 Oct 2026 23:03:09 GMT
ENV LANG=en_US.UTF-8
# Mon, 26 Oct 2026 23:03:09 GMT
ENV TZ=UTC
# Mon, 26 Oct 2026 23:03:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 26 Oct 2026 23:03:09 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 26 Oct 2026 23:03:09 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:03:09 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 26 Oct 2026 23:03:09 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 26 Oct 2026 23:03:09 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 26 Oct 2026 23:03:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adb2f48f2763c717e3a18b6b04ebcf4d24bab84f63dba45fc725c177eb14036c`  
		Last Modified: Mon, 26 Oct 2026 23:03:35 GMT  
		Size: 7.6 MB (7550902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a63e985e49ba52905da13e7ee3f7905695ca178405b9c3f12fad354cb1852c6`  
		Last Modified: Mon, 26 Oct 2026 23:03:40 GMT  
		Size: 257.1 MB (257088260 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:271730552105d686fe2850943dd2eed49bb41297cb858c6b6b627098b31670a4`  
		Last Modified: Mon, 26 Oct 2026 23:03:35 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40bb4f389dc6e767f9eefd5ea77bdd33e3b48cf63a4fe72800d7673162b0e39a`  
		Last Modified: Mon, 26 Oct 2026 23:03:35 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b2aee19adf22b9b1b9405015ff7274b32f68ff2dffc3c234769920826c21092`  
		Last Modified: Mon, 26 Oct 2026 23:03:36 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93d5495c31b4c694bdf5040fed26761c1a16a6d9bacc2b7fe941c25edae69f30`  
		Last Modified: Mon, 26 Oct 2026 23:03:36 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e478ba5a33d2d907bc209b075639dc05e71d84cfea2dcb15fef1c6843d49c8a`  
		Last Modified: Mon, 26 Oct 2026 23:03:36 GMT  
		Size: 3.9 KB (3902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9.25.15-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:a838f3bf7f66b9fc1218a97c1e586637fcfe34324aca9b4a3f4a080a010d75ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 KB (27797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e342765c213c3dc46cbb2ca1295be992445e1cde160198ef3b57fbb05c73ed5`

```dockerfile
```

-	Layers:
	-	`sha256:610b2acd36b3dad806c5fcb1a1802ce128d09c311236379fb808a0ab9a473dd2`  
		Last Modified: Mon, 26 Oct 2026 23:03:35 GMT  
		Size: 27.8 KB (27797 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.9.25.15-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:87c9291db9da38c33dde1bbd399f2610cac1911b3e9b67b85cc5dde8fd61ea32
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.6 MB (272590233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:445282b700ac63f441629787b63369f7979cc87c764504b4450cc5dce2a71374`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:50 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:50 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:50 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:52 GMT
ADD file:6efa877f019ce1c165e045c546c059568465dad040d65f7797e1bbbf530bed3e in / 
# Sun, 25 Oct 2026 20:10:53 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:08:19 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 26 Oct 2026 23:08:19 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 26 Oct 2026 23:08:19 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 26 Oct 2026 23:08:19 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 26 Oct 2026 23:08:19 GMT
ARG REPO_CHANNEL=stable
# Mon, 26 Oct 2026 23:08:19 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 26 Oct 2026 23:08:19 GMT
ARG VERSION=26.9.25.15
# Mon, 26 Oct 2026 23:08:19 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 26 Oct 2026 23:08:47 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 26 Oct 2026 23:08:48 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 26 Oct 2026 23:08:49 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 26 Oct 2026 23:08:49 GMT
ENV LANG=en_US.UTF-8
# Mon, 26 Oct 2026 23:08:49 GMT
ENV TZ=UTC
# Mon, 26 Oct 2026 23:08:49 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 26 Oct 2026 23:08:49 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 26 Oct 2026 23:08:49 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:08:49 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 26 Oct 2026 23:08:49 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 26 Oct 2026 23:08:49 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 26 Oct 2026 23:08:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:771eed73ee82c7916df197c0fd7ef3ac4eedcb9a6318b10d2652948c6c4ca08f`  
		Last Modified: Sun, 25 Oct 2026 20:45:27 GMT  
		Size: 27.7 MB (27684607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:114bb87a71c0aad2ff7b831112650d8afb847a3fa4674e05e63f9b9f4f79d16e`  
		Last Modified: Mon, 26 Oct 2026 23:09:12 GMT  
		Size: 7.5 MB (7533862 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b4152e96ecbd7d8116b572954e621729427d369d6561c679d052287b7118ade`  
		Last Modified: Mon, 26 Oct 2026 23:09:17 GMT  
		Size: 236.5 MB (236501447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3be1b78253b48d08364422becf07da93b92adb7fde2d3d9a6bd54ebe81fbea33`  
		Last Modified: Mon, 26 Oct 2026 23:09:12 GMT  
		Size: 183.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51bac75c8b10b9c70ead8f90e041fde96e61082f936c3db7efe03116b8b29132`  
		Last Modified: Mon, 26 Oct 2026 23:09:12 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f347076d713d04347378d85391f0b33e9a4c8d331567b6b7979fb6b4e944030b`  
		Last Modified: Mon, 26 Oct 2026 23:09:13 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdee137b5f3582a190fa17f439689cf8b479cfff1149a35974d148eb06c4bd55`  
		Last Modified: Mon, 26 Oct 2026 23:09:13 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b136736050a948395f51d36f17244b90d5b29a3d60d1cdef455fd4249a9530e9`  
		Last Modified: Mon, 26 Oct 2026 23:09:13 GMT  
		Size: 3.9 KB (3903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9.25.15-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:79dd83a179468cf5639657e343a9f99918dfd4f87e5b9779ed77fa4fecf4413d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.0 KB (28009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:210f6ca144bce9e25026fd18a864a519cb704a396f49454c2d58fda8d69b44c4`

```dockerfile
```

-	Layers:
	-	`sha256:b99a65f26649f8fc034fd5492502a9ae7ab1deba94dc350199a519a8cabbecfd`  
		Last Modified: Mon, 26 Oct 2026 23:09:12 GMT  
		Size: 28.0 KB (28009 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:jammy`

```console
$ docker pull clickhouse@sha256:09afbbb8a7ffb68acca01812e62b6fbf4f8a21a5ca26c2d635991d3f18411ef4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:c21cfcfd1eb03bed8c73da65013041afc6f3a086a497887bfb3172f3e34e441e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.3 MB (295261963 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:061c2b85e56084e1cf1558eff8142870a1b03c83ca6c92ac9e7dd0979f4bdd3e`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:42 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:42 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:42 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:44 GMT
ADD file:ba52f9eec2a5a7de74e9a460017725370755c2d4814dd746bde7507601befb53 in / 
# Sun, 25 Oct 2026 20:10:44 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:02:38 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 26 Oct 2026 23:02:38 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 26 Oct 2026 23:02:38 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 26 Oct 2026 23:02:38 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 26 Oct 2026 23:02:38 GMT
ARG REPO_CHANNEL=stable
# Mon, 26 Oct 2026 23:02:38 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 26 Oct 2026 23:02:38 GMT
ARG VERSION=26.9.25.15
# Mon, 26 Oct 2026 23:02:38 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 26 Oct 2026 23:03:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 26 Oct 2026 23:03:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 26 Oct 2026 23:03:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 26 Oct 2026 23:03:09 GMT
ENV LANG=en_US.UTF-8
# Mon, 26 Oct 2026 23:03:09 GMT
ENV TZ=UTC
# Mon, 26 Oct 2026 23:03:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 26 Oct 2026 23:03:09 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 26 Oct 2026 23:03:09 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:03:09 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 26 Oct 2026 23:03:09 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 26 Oct 2026 23:03:09 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 26 Oct 2026 23:03:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adb2f48f2763c717e3a18b6b04ebcf4d24bab84f63dba45fc725c177eb14036c`  
		Last Modified: Mon, 26 Oct 2026 23:03:35 GMT  
		Size: 7.6 MB (7550902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a63e985e49ba52905da13e7ee3f7905695ca178405b9c3f12fad354cb1852c6`  
		Last Modified: Mon, 26 Oct 2026 23:03:40 GMT  
		Size: 257.1 MB (257088260 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:271730552105d686fe2850943dd2eed49bb41297cb858c6b6b627098b31670a4`  
		Last Modified: Mon, 26 Oct 2026 23:03:35 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40bb4f389dc6e767f9eefd5ea77bdd33e3b48cf63a4fe72800d7673162b0e39a`  
		Last Modified: Mon, 26 Oct 2026 23:03:35 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b2aee19adf22b9b1b9405015ff7274b32f68ff2dffc3c234769920826c21092`  
		Last Modified: Mon, 26 Oct 2026 23:03:36 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93d5495c31b4c694bdf5040fed26761c1a16a6d9bacc2b7fe941c25edae69f30`  
		Last Modified: Mon, 26 Oct 2026 23:03:36 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e478ba5a33d2d907bc209b075639dc05e71d84cfea2dcb15fef1c6843d49c8a`  
		Last Modified: Mon, 26 Oct 2026 23:03:36 GMT  
		Size: 3.9 KB (3902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:a838f3bf7f66b9fc1218a97c1e586637fcfe34324aca9b4a3f4a080a010d75ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 KB (27797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e342765c213c3dc46cbb2ca1295be992445e1cde160198ef3b57fbb05c73ed5`

```dockerfile
```

-	Layers:
	-	`sha256:610b2acd36b3dad806c5fcb1a1802ce128d09c311236379fb808a0ab9a473dd2`  
		Last Modified: Mon, 26 Oct 2026 23:03:35 GMT  
		Size: 27.8 KB (27797 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:87c9291db9da38c33dde1bbd399f2610cac1911b3e9b67b85cc5dde8fd61ea32
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.6 MB (272590233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:445282b700ac63f441629787b63369f7979cc87c764504b4450cc5dce2a71374`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:50 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:50 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:50 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:52 GMT
ADD file:6efa877f019ce1c165e045c546c059568465dad040d65f7797e1bbbf530bed3e in / 
# Sun, 25 Oct 2026 20:10:53 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:08:19 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 26 Oct 2026 23:08:19 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 26 Oct 2026 23:08:19 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 26 Oct 2026 23:08:19 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 26 Oct 2026 23:08:19 GMT
ARG REPO_CHANNEL=stable
# Mon, 26 Oct 2026 23:08:19 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 26 Oct 2026 23:08:19 GMT
ARG VERSION=26.9.25.15
# Mon, 26 Oct 2026 23:08:19 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 26 Oct 2026 23:08:47 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 26 Oct 2026 23:08:48 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 26 Oct 2026 23:08:49 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 26 Oct 2026 23:08:49 GMT
ENV LANG=en_US.UTF-8
# Mon, 26 Oct 2026 23:08:49 GMT
ENV TZ=UTC
# Mon, 26 Oct 2026 23:08:49 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 26 Oct 2026 23:08:49 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 26 Oct 2026 23:08:49 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:08:49 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 26 Oct 2026 23:08:49 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 26 Oct 2026 23:08:49 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 26 Oct 2026 23:08:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:771eed73ee82c7916df197c0fd7ef3ac4eedcb9a6318b10d2652948c6c4ca08f`  
		Last Modified: Sun, 25 Oct 2026 20:45:27 GMT  
		Size: 27.7 MB (27684607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:114bb87a71c0aad2ff7b831112650d8afb847a3fa4674e05e63f9b9f4f79d16e`  
		Last Modified: Mon, 26 Oct 2026 23:09:12 GMT  
		Size: 7.5 MB (7533862 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b4152e96ecbd7d8116b572954e621729427d369d6561c679d052287b7118ade`  
		Last Modified: Mon, 26 Oct 2026 23:09:17 GMT  
		Size: 236.5 MB (236501447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3be1b78253b48d08364422becf07da93b92adb7fde2d3d9a6bd54ebe81fbea33`  
		Last Modified: Mon, 26 Oct 2026 23:09:12 GMT  
		Size: 183.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51bac75c8b10b9c70ead8f90e041fde96e61082f936c3db7efe03116b8b29132`  
		Last Modified: Mon, 26 Oct 2026 23:09:12 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f347076d713d04347378d85391f0b33e9a4c8d331567b6b7979fb6b4e944030b`  
		Last Modified: Mon, 26 Oct 2026 23:09:13 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdee137b5f3582a190fa17f439689cf8b479cfff1149a35974d148eb06c4bd55`  
		Last Modified: Mon, 26 Oct 2026 23:09:13 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b136736050a948395f51d36f17244b90d5b29a3d60d1cdef455fd4249a9530e9`  
		Last Modified: Mon, 26 Oct 2026 23:09:13 GMT  
		Size: 3.9 KB (3903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:79dd83a179468cf5639657e343a9f99918dfd4f87e5b9779ed77fa4fecf4413d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.0 KB (28009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:210f6ca144bce9e25026fd18a864a519cb704a396f49454c2d58fda8d69b44c4`

```dockerfile
```

-	Layers:
	-	`sha256:b99a65f26649f8fc034fd5492502a9ae7ab1deba94dc350199a519a8cabbecfd`  
		Last Modified: Mon, 26 Oct 2026 23:09:12 GMT  
		Size: 28.0 KB (28009 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:latest`

```console
$ docker pull clickhouse@sha256:09afbbb8a7ffb68acca01812e62b6fbf4f8a21a5ca26c2d635991d3f18411ef4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:latest` - linux; amd64

```console
$ docker pull clickhouse@sha256:c21cfcfd1eb03bed8c73da65013041afc6f3a086a497887bfb3172f3e34e441e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.3 MB (295261963 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:061c2b85e56084e1cf1558eff8142870a1b03c83ca6c92ac9e7dd0979f4bdd3e`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:42 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:42 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:42 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:44 GMT
ADD file:ba52f9eec2a5a7de74e9a460017725370755c2d4814dd746bde7507601befb53 in / 
# Sun, 25 Oct 2026 20:10:44 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:02:38 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 26 Oct 2026 23:02:38 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 26 Oct 2026 23:02:38 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 26 Oct 2026 23:02:38 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 26 Oct 2026 23:02:38 GMT
ARG REPO_CHANNEL=stable
# Mon, 26 Oct 2026 23:02:38 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 26 Oct 2026 23:02:38 GMT
ARG VERSION=26.9.25.15
# Mon, 26 Oct 2026 23:02:38 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 26 Oct 2026 23:03:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 26 Oct 2026 23:03:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 26 Oct 2026 23:03:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 26 Oct 2026 23:03:09 GMT
ENV LANG=en_US.UTF-8
# Mon, 26 Oct 2026 23:03:09 GMT
ENV TZ=UTC
# Mon, 26 Oct 2026 23:03:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 26 Oct 2026 23:03:09 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 26 Oct 2026 23:03:09 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:03:09 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 26 Oct 2026 23:03:09 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 26 Oct 2026 23:03:09 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 26 Oct 2026 23:03:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adb2f48f2763c717e3a18b6b04ebcf4d24bab84f63dba45fc725c177eb14036c`  
		Last Modified: Mon, 26 Oct 2026 23:03:35 GMT  
		Size: 7.6 MB (7550902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a63e985e49ba52905da13e7ee3f7905695ca178405b9c3f12fad354cb1852c6`  
		Last Modified: Mon, 26 Oct 2026 23:03:40 GMT  
		Size: 257.1 MB (257088260 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:271730552105d686fe2850943dd2eed49bb41297cb858c6b6b627098b31670a4`  
		Last Modified: Mon, 26 Oct 2026 23:03:35 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40bb4f389dc6e767f9eefd5ea77bdd33e3b48cf63a4fe72800d7673162b0e39a`  
		Last Modified: Mon, 26 Oct 2026 23:03:35 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b2aee19adf22b9b1b9405015ff7274b32f68ff2dffc3c234769920826c21092`  
		Last Modified: Mon, 26 Oct 2026 23:03:36 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93d5495c31b4c694bdf5040fed26761c1a16a6d9bacc2b7fe941c25edae69f30`  
		Last Modified: Mon, 26 Oct 2026 23:03:36 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e478ba5a33d2d907bc209b075639dc05e71d84cfea2dcb15fef1c6843d49c8a`  
		Last Modified: Mon, 26 Oct 2026 23:03:36 GMT  
		Size: 3.9 KB (3902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:latest` - unknown; unknown

```console
$ docker pull clickhouse@sha256:a838f3bf7f66b9fc1218a97c1e586637fcfe34324aca9b4a3f4a080a010d75ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 KB (27797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e342765c213c3dc46cbb2ca1295be992445e1cde160198ef3b57fbb05c73ed5`

```dockerfile
```

-	Layers:
	-	`sha256:610b2acd36b3dad806c5fcb1a1802ce128d09c311236379fb808a0ab9a473dd2`  
		Last Modified: Mon, 26 Oct 2026 23:03:35 GMT  
		Size: 27.8 KB (27797 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:latest` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:87c9291db9da38c33dde1bbd399f2610cac1911b3e9b67b85cc5dde8fd61ea32
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.6 MB (272590233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:445282b700ac63f441629787b63369f7979cc87c764504b4450cc5dce2a71374`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:50 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:50 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:50 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:52 GMT
ADD file:6efa877f019ce1c165e045c546c059568465dad040d65f7797e1bbbf530bed3e in / 
# Sun, 25 Oct 2026 20:10:53 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:08:19 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 26 Oct 2026 23:08:19 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 26 Oct 2026 23:08:19 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 26 Oct 2026 23:08:19 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 26 Oct 2026 23:08:19 GMT
ARG REPO_CHANNEL=stable
# Mon, 26 Oct 2026 23:08:19 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 26 Oct 2026 23:08:19 GMT
ARG VERSION=26.9.25.15
# Mon, 26 Oct 2026 23:08:19 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 26 Oct 2026 23:08:47 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 26 Oct 2026 23:08:48 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 26 Oct 2026 23:08:49 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 26 Oct 2026 23:08:49 GMT
ENV LANG=en_US.UTF-8
# Mon, 26 Oct 2026 23:08:49 GMT
ENV TZ=UTC
# Mon, 26 Oct 2026 23:08:49 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 26 Oct 2026 23:08:49 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 26 Oct 2026 23:08:49 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:08:49 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 26 Oct 2026 23:08:49 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 26 Oct 2026 23:08:49 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 26 Oct 2026 23:08:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:771eed73ee82c7916df197c0fd7ef3ac4eedcb9a6318b10d2652948c6c4ca08f`  
		Last Modified: Sun, 25 Oct 2026 20:45:27 GMT  
		Size: 27.7 MB (27684607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:114bb87a71c0aad2ff7b831112650d8afb847a3fa4674e05e63f9b9f4f79d16e`  
		Last Modified: Mon, 26 Oct 2026 23:09:12 GMT  
		Size: 7.5 MB (7533862 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b4152e96ecbd7d8116b572954e621729427d369d6561c679d052287b7118ade`  
		Last Modified: Mon, 26 Oct 2026 23:09:17 GMT  
		Size: 236.5 MB (236501447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3be1b78253b48d08364422becf07da93b92adb7fde2d3d9a6bd54ebe81fbea33`  
		Last Modified: Mon, 26 Oct 2026 23:09:12 GMT  
		Size: 183.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51bac75c8b10b9c70ead8f90e041fde96e61082f936c3db7efe03116b8b29132`  
		Last Modified: Mon, 26 Oct 2026 23:09:12 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f347076d713d04347378d85391f0b33e9a4c8d331567b6b7979fb6b4e944030b`  
		Last Modified: Mon, 26 Oct 2026 23:09:13 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdee137b5f3582a190fa17f439689cf8b479cfff1149a35974d148eb06c4bd55`  
		Last Modified: Mon, 26 Oct 2026 23:09:13 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b136736050a948395f51d36f17244b90d5b29a3d60d1cdef455fd4249a9530e9`  
		Last Modified: Mon, 26 Oct 2026 23:09:13 GMT  
		Size: 3.9 KB (3903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:latest` - unknown; unknown

```console
$ docker pull clickhouse@sha256:79dd83a179468cf5639657e343a9f99918dfd4f87e5b9779ed77fa4fecf4413d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.0 KB (28009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:210f6ca144bce9e25026fd18a864a519cb704a396f49454c2d58fda8d69b44c4`

```dockerfile
```

-	Layers:
	-	`sha256:b99a65f26649f8fc034fd5492502a9ae7ab1deba94dc350199a519a8cabbecfd`  
		Last Modified: Mon, 26 Oct 2026 23:09:12 GMT  
		Size: 28.0 KB (28009 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:lts`

```console
$ docker pull clickhouse@sha256:c5c77dcef8017f77a48378ba6e9752bc8cc745c828c6f7ae6bb3c7df1996d56d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:lts` - linux; amd64

```console
$ docker pull clickhouse@sha256:c2e3bd3eba21274db1dd835b0dd5166e88315d1cc9aaec22e6ec89e89b6e1cc7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.8 MB (279781723 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45b523803d4373472a6e6e1ea4befb1e212b12013953b4a6ef95ed3ae2a6ab80`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:42 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:42 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:42 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:44 GMT
ADD file:ba52f9eec2a5a7de74e9a460017725370755c2d4814dd746bde7507601befb53 in / 
# Sun, 25 Oct 2026 20:10:44 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:02:43 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 26 Oct 2026 23:02:43 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 26 Oct 2026 23:02:43 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 26 Oct 2026 23:02:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 26 Oct 2026 23:02:43 GMT
ARG REPO_CHANNEL=stable
# Mon, 26 Oct 2026 23:02:43 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 26 Oct 2026 23:02:43 GMT
ARG VERSION=26.8.34.13
# Mon, 26 Oct 2026 23:02:43 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 26 Oct 2026 23:03:10 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 26 Oct 2026 23:03:10 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 26 Oct 2026 23:03:11 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 26 Oct 2026 23:03:11 GMT
ENV LANG=en_US.UTF-8
# Mon, 26 Oct 2026 23:03:11 GMT
ENV TZ=UTC
# Mon, 26 Oct 2026 23:03:11 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 26 Oct 2026 23:03:11 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 26 Oct 2026 23:03:11 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:03:11 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 26 Oct 2026 23:03:11 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 26 Oct 2026 23:03:11 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 26 Oct 2026 23:03:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fbf9c188575b2ae43cde5204533b7bba01d1cc3f10ed3db6b916c3c59377761`  
		Last Modified: Mon, 26 Oct 2026 23:03:37 GMT  
		Size: 7.6 MB (7550939 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf67b1df84a1eed909e47860f46282a50db69784e5c61ad398b0522745c093dc`  
		Last Modified: Mon, 26 Oct 2026 23:03:41 GMT  
		Size: 241.6 MB (241608245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30ca77766c378e1a4f49a0b7477ce501bd01cf0e5c0ccd8d2b8283f5d8331325`  
		Last Modified: Mon, 26 Oct 2026 23:03:36 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f743bc8d44821091b66bd9dddc00925cbe6b242848f806be81ca1e0ce759347`  
		Last Modified: Mon, 26 Oct 2026 23:03:37 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:624170c2834a940b34a99d7fb4c284136f2683ac3b90e0f1be3851bd775f5093`  
		Last Modified: Mon, 26 Oct 2026 23:03:38 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45bf5f1f7d926d3fbb98a33fb8dd18f7fac0536b03b70509ed7cf89c5fed5e23`  
		Last Modified: Mon, 26 Oct 2026 23:03:38 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fc2b7b3e632274eff487c981ba19c54bdf71915edfbf2296befe3547c74895a`  
		Last Modified: Mon, 26 Oct 2026 23:03:38 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:lts` - unknown; unknown

```console
$ docker pull clickhouse@sha256:02133f94863ce3c0d39a44055dea6480490e3bc9743597e58aaace9f1bd5a5e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 KB (27366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7909760815603d82d00fd98e14165fe19eca9c08e4ccd0462fa8e9b960b7ff54`

```dockerfile
```

-	Layers:
	-	`sha256:412beb4242894bf59d6f6bd26b4d4035daeb0182f56f1941cd8b51772cf33727`  
		Last Modified: Mon, 26 Oct 2026 23:03:36 GMT  
		Size: 27.4 KB (27366 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:lts` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:6bd3727e2e7a4e12b876ea6595a7e0634309c0add560989527e650c30dd62f6c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.8 MB (262819552 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3eeebf13abdbba3cea410c309a99085c65db2c93c5479e7e9c24cc81da3dc395`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:50 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:50 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:50 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:52 GMT
ADD file:6efa877f019ce1c165e045c546c059568465dad040d65f7797e1bbbf530bed3e in / 
# Sun, 25 Oct 2026 20:10:53 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:08:36 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 26 Oct 2026 23:08:36 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 26 Oct 2026 23:08:36 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 26 Oct 2026 23:08:36 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 26 Oct 2026 23:08:36 GMT
ARG REPO_CHANNEL=stable
# Mon, 26 Oct 2026 23:08:36 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 26 Oct 2026 23:08:36 GMT
ARG VERSION=26.8.34.13
# Mon, 26 Oct 2026 23:08:36 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 26 Oct 2026 23:09:07 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 26 Oct 2026 23:09:07 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 26 Oct 2026 23:09:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 26 Oct 2026 23:09:08 GMT
ENV LANG=en_US.UTF-8
# Mon, 26 Oct 2026 23:09:08 GMT
ENV TZ=UTC
# Mon, 26 Oct 2026 23:09:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 26 Oct 2026 23:09:08 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 26 Oct 2026 23:09:08 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:09:08 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 26 Oct 2026 23:09:08 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 26 Oct 2026 23:09:08 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 26 Oct 2026 23:09:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:771eed73ee82c7916df197c0fd7ef3ac4eedcb9a6318b10d2652948c6c4ca08f`  
		Last Modified: Sun, 25 Oct 2026 20:45:27 GMT  
		Size: 27.7 MB (27684607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8914dee7d90f9e70b4af22dfe0ef0a87178d76bd4f6859d69dcf065592e37b36`  
		Last Modified: Mon, 26 Oct 2026 23:09:31 GMT  
		Size: 7.5 MB (7533838 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfa08a9d815f83784b7cddea40da5ae1d02488bae8e3911d1787466247724979`  
		Last Modified: Mon, 26 Oct 2026 23:09:35 GMT  
		Size: 226.7 MB (226731057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b93ac7f418b283b1901277ba0610d8e6b29945f4ba28910eef08e5a52cda5316`  
		Last Modified: Mon, 26 Oct 2026 23:09:30 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79eb7ea7970d64a65fb43db4090c925383fa1cb69607f2b98734dfb3c17a4df9`  
		Last Modified: Mon, 26 Oct 2026 23:09:30 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cbb292efa881b42ccc9f24b222d26659c2f489e5a2bf455adf8203c9c8454e3`  
		Last Modified: Mon, 26 Oct 2026 23:09:32 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b730b6b490f1ffe7958fd74d6fafa2c59f8bf36113037caad56eaccb9ca22654`  
		Last Modified: Mon, 26 Oct 2026 23:09:32 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63c3ce73f2e9314cc2b216ff2fba1d61ba7010fe1778bf1b6cba2ec2cb6212a9`  
		Last Modified: Mon, 26 Oct 2026 23:09:32 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:lts` - unknown; unknown

```console
$ docker pull clickhouse@sha256:b28b100bd33e0824b33632f26753aa0a199cc895527e154248451fc53ea5735b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 KB (27578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ebe77d510683b6bc97949bc8bf57ea358c33066ee9206fd0a86acc1f733c77d`

```dockerfile
```

-	Layers:
	-	`sha256:9185d0325445749d10524a9f4171c5ba09db842e7af5d8047d6986ae3cc57dd2`  
		Last Modified: Mon, 26 Oct 2026 23:09:30 GMT  
		Size: 27.6 KB (27578 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:lts-jammy`

```console
$ docker pull clickhouse@sha256:c5c77dcef8017f77a48378ba6e9752bc8cc745c828c6f7ae6bb3c7df1996d56d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:lts-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:c2e3bd3eba21274db1dd835b0dd5166e88315d1cc9aaec22e6ec89e89b6e1cc7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.8 MB (279781723 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45b523803d4373472a6e6e1ea4befb1e212b12013953b4a6ef95ed3ae2a6ab80`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:42 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:42 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:42 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:44 GMT
ADD file:ba52f9eec2a5a7de74e9a460017725370755c2d4814dd746bde7507601befb53 in / 
# Sun, 25 Oct 2026 20:10:44 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:02:43 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 26 Oct 2026 23:02:43 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 26 Oct 2026 23:02:43 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 26 Oct 2026 23:02:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 26 Oct 2026 23:02:43 GMT
ARG REPO_CHANNEL=stable
# Mon, 26 Oct 2026 23:02:43 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 26 Oct 2026 23:02:43 GMT
ARG VERSION=26.8.34.13
# Mon, 26 Oct 2026 23:02:43 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 26 Oct 2026 23:03:10 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 26 Oct 2026 23:03:10 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 26 Oct 2026 23:03:11 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 26 Oct 2026 23:03:11 GMT
ENV LANG=en_US.UTF-8
# Mon, 26 Oct 2026 23:03:11 GMT
ENV TZ=UTC
# Mon, 26 Oct 2026 23:03:11 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 26 Oct 2026 23:03:11 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 26 Oct 2026 23:03:11 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:03:11 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 26 Oct 2026 23:03:11 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 26 Oct 2026 23:03:11 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 26 Oct 2026 23:03:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fbf9c188575b2ae43cde5204533b7bba01d1cc3f10ed3db6b916c3c59377761`  
		Last Modified: Mon, 26 Oct 2026 23:03:37 GMT  
		Size: 7.6 MB (7550939 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf67b1df84a1eed909e47860f46282a50db69784e5c61ad398b0522745c093dc`  
		Last Modified: Mon, 26 Oct 2026 23:03:41 GMT  
		Size: 241.6 MB (241608245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30ca77766c378e1a4f49a0b7477ce501bd01cf0e5c0ccd8d2b8283f5d8331325`  
		Last Modified: Mon, 26 Oct 2026 23:03:36 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f743bc8d44821091b66bd9dddc00925cbe6b242848f806be81ca1e0ce759347`  
		Last Modified: Mon, 26 Oct 2026 23:03:37 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:624170c2834a940b34a99d7fb4c284136f2683ac3b90e0f1be3851bd775f5093`  
		Last Modified: Mon, 26 Oct 2026 23:03:38 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45bf5f1f7d926d3fbb98a33fb8dd18f7fac0536b03b70509ed7cf89c5fed5e23`  
		Last Modified: Mon, 26 Oct 2026 23:03:38 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fc2b7b3e632274eff487c981ba19c54bdf71915edfbf2296befe3547c74895a`  
		Last Modified: Mon, 26 Oct 2026 23:03:38 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:lts-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:02133f94863ce3c0d39a44055dea6480490e3bc9743597e58aaace9f1bd5a5e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 KB (27366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7909760815603d82d00fd98e14165fe19eca9c08e4ccd0462fa8e9b960b7ff54`

```dockerfile
```

-	Layers:
	-	`sha256:412beb4242894bf59d6f6bd26b4d4035daeb0182f56f1941cd8b51772cf33727`  
		Last Modified: Mon, 26 Oct 2026 23:03:36 GMT  
		Size: 27.4 KB (27366 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:lts-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:6bd3727e2e7a4e12b876ea6595a7e0634309c0add560989527e650c30dd62f6c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.8 MB (262819552 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3eeebf13abdbba3cea410c309a99085c65db2c93c5479e7e9c24cc81da3dc395`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:50 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:50 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:50 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:52 GMT
ADD file:6efa877f019ce1c165e045c546c059568465dad040d65f7797e1bbbf530bed3e in / 
# Sun, 25 Oct 2026 20:10:53 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:08:36 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 26 Oct 2026 23:08:36 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 26 Oct 2026 23:08:36 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 26 Oct 2026 23:08:36 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 26 Oct 2026 23:08:36 GMT
ARG REPO_CHANNEL=stable
# Mon, 26 Oct 2026 23:08:36 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 26 Oct 2026 23:08:36 GMT
ARG VERSION=26.8.34.13
# Mon, 26 Oct 2026 23:08:36 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 26 Oct 2026 23:09:07 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 26 Oct 2026 23:09:07 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 26 Oct 2026 23:09:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 26 Oct 2026 23:09:08 GMT
ENV LANG=en_US.UTF-8
# Mon, 26 Oct 2026 23:09:08 GMT
ENV TZ=UTC
# Mon, 26 Oct 2026 23:09:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 26 Oct 2026 23:09:08 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 26 Oct 2026 23:09:08 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:09:08 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 26 Oct 2026 23:09:08 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 26 Oct 2026 23:09:08 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 26 Oct 2026 23:09:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:771eed73ee82c7916df197c0fd7ef3ac4eedcb9a6318b10d2652948c6c4ca08f`  
		Last Modified: Sun, 25 Oct 2026 20:45:27 GMT  
		Size: 27.7 MB (27684607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8914dee7d90f9e70b4af22dfe0ef0a87178d76bd4f6859d69dcf065592e37b36`  
		Last Modified: Mon, 26 Oct 2026 23:09:31 GMT  
		Size: 7.5 MB (7533838 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfa08a9d815f83784b7cddea40da5ae1d02488bae8e3911d1787466247724979`  
		Last Modified: Mon, 26 Oct 2026 23:09:35 GMT  
		Size: 226.7 MB (226731057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b93ac7f418b283b1901277ba0610d8e6b29945f4ba28910eef08e5a52cda5316`  
		Last Modified: Mon, 26 Oct 2026 23:09:30 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79eb7ea7970d64a65fb43db4090c925383fa1cb69607f2b98734dfb3c17a4df9`  
		Last Modified: Mon, 26 Oct 2026 23:09:30 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cbb292efa881b42ccc9f24b222d26659c2f489e5a2bf455adf8203c9c8454e3`  
		Last Modified: Mon, 26 Oct 2026 23:09:32 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b730b6b490f1ffe7958fd74d6fafa2c59f8bf36113037caad56eaccb9ca22654`  
		Last Modified: Mon, 26 Oct 2026 23:09:32 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63c3ce73f2e9314cc2b216ff2fba1d61ba7010fe1778bf1b6cba2ec2cb6212a9`  
		Last Modified: Mon, 26 Oct 2026 23:09:32 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:lts-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:b28b100bd33e0824b33632f26753aa0a199cc895527e154248451fc53ea5735b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 KB (27578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ebe77d510683b6bc97949bc8bf57ea358c33066ee9206fd0a86acc1f733c77d`

```dockerfile
```

-	Layers:
	-	`sha256:9185d0325445749d10524a9f4171c5ba09db842e7af5d8047d6986ae3cc57dd2`  
		Last Modified: Mon, 26 Oct 2026 23:09:30 GMT  
		Size: 27.6 KB (27578 bytes)  
		MIME: application/vnd.in-toto+json
