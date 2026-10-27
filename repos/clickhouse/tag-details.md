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
$ docker pull clickhouse@sha256:d5cfcc63572c8b8d85226a83af493d37ceaccb759f21ac95f0e89875b802bde9
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
$ docker pull clickhouse@sha256:d0f2c9a5d48f8a0fba6beb3e1efaf85b1a16bd0b27f3a10e9c22ec877763a79c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.7 MB (248691300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:417ff9e4d8a14a5d34a15692acfbb72c60d4652f00a8505ef6d875e5941c8ad6`
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
# Fri, 23 Oct 2026 18:18:39 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 23 Oct 2026 18:18:39 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 23 Oct 2026 18:18:39 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 23 Oct 2026 18:18:39 GMT
ARG REPO_CHANNEL=stable
# Fri, 23 Oct 2026 18:18:39 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 23 Oct 2026 18:18:39 GMT
ARG VERSION=26.3.59.10
# Fri, 23 Oct 2026 18:18:39 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 23 Oct 2026 18:19:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.59.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 23 Oct 2026 18:19:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.59.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 23 Oct 2026 18:19:17 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.59.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 23 Oct 2026 18:19:17 GMT
ENV LANG=en_US.UTF-8
# Fri, 23 Oct 2026 18:19:17 GMT
ENV TZ=UTC
# Fri, 23 Oct 2026 18:19:18 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.59.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 23 Oct 2026 18:19:18 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 23 Oct 2026 18:19:18 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 23 Oct 2026 18:19:18 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 23 Oct 2026 18:19:18 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 23 Oct 2026 18:19:18 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 23 Oct 2026 18:19:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2908c4fa36d87b4ba1206721a9efe744e0e9b35d1437148222276c744aa6efa0`  
		Last Modified: Fri, 02 Oct 2026 11:08:32 GMT  
		Size: 27.7 MB (27684723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a91a928b6a3cfdca91f9691a31fdebdd17846f901d5797f15a2e92942224c5ff`  
		Last Modified: Fri, 23 Oct 2026 18:19:40 GMT  
		Size: 7.5 MB (7533944 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:224cb4ce31c7d5ff6085d8690677d1403c21d218004b10c94b99a8342cb274b0`  
		Last Modified: Fri, 23 Oct 2026 18:19:45 GMT  
		Size: 212.6 MB (212602578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ad9a6b65e928a7fd6c251ceba6f038777389a10767737ad47438005c560a5ec`  
		Last Modified: Fri, 23 Oct 2026 18:19:40 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f705070ce8403f22cc31dd6f0117989eee56ac9c0fd3f914556af2114f41542`  
		Last Modified: Fri, 23 Oct 2026 18:19:39 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca14ad5d1775946c9aceb810ce86941c37928572432ad2bde441e3bacbba9cc7`  
		Last Modified: Fri, 23 Oct 2026 18:19:41 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19b56f44307b1d18b614b4fbcb8465a337d2dde98bd49b0467ccff995ff31709`  
		Last Modified: Fri, 23 Oct 2026 18:19:41 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13441342d99a2007a4bbebf182bb8fcb056fc47795931a51898156ac21f78420`  
		Last Modified: Fri, 23 Oct 2026 18:19:41 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3` - unknown; unknown

```console
$ docker pull clickhouse@sha256:d66929c1978a3342774d1066d0e5efe31915e9680c3bdba481aebec180a05377
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b7e7118648a5417aebe9601bad51b3f007a6d46522a07c970051f6cf7b3bb49`

```dockerfile
```

-	Layers:
	-	`sha256:6dc8eca480a475d0dd3c3b09b6caeebe906e7b2a58044c840bcf3049da1b364e`  
		Last Modified: Fri, 23 Oct 2026 18:19:39 GMT  
		Size: 26.4 KB (26422 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.3-jammy`

```console
$ docker pull clickhouse@sha256:d5cfcc63572c8b8d85226a83af493d37ceaccb759f21ac95f0e89875b802bde9
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
$ docker pull clickhouse@sha256:d0f2c9a5d48f8a0fba6beb3e1efaf85b1a16bd0b27f3a10e9c22ec877763a79c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.7 MB (248691300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:417ff9e4d8a14a5d34a15692acfbb72c60d4652f00a8505ef6d875e5941c8ad6`
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
# Fri, 23 Oct 2026 18:18:39 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 23 Oct 2026 18:18:39 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 23 Oct 2026 18:18:39 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 23 Oct 2026 18:18:39 GMT
ARG REPO_CHANNEL=stable
# Fri, 23 Oct 2026 18:18:39 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 23 Oct 2026 18:18:39 GMT
ARG VERSION=26.3.59.10
# Fri, 23 Oct 2026 18:18:39 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 23 Oct 2026 18:19:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.59.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 23 Oct 2026 18:19:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.59.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 23 Oct 2026 18:19:17 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.59.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 23 Oct 2026 18:19:17 GMT
ENV LANG=en_US.UTF-8
# Fri, 23 Oct 2026 18:19:17 GMT
ENV TZ=UTC
# Fri, 23 Oct 2026 18:19:18 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.59.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 23 Oct 2026 18:19:18 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 23 Oct 2026 18:19:18 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 23 Oct 2026 18:19:18 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 23 Oct 2026 18:19:18 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 23 Oct 2026 18:19:18 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 23 Oct 2026 18:19:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2908c4fa36d87b4ba1206721a9efe744e0e9b35d1437148222276c744aa6efa0`  
		Last Modified: Fri, 02 Oct 2026 11:08:32 GMT  
		Size: 27.7 MB (27684723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a91a928b6a3cfdca91f9691a31fdebdd17846f901d5797f15a2e92942224c5ff`  
		Last Modified: Fri, 23 Oct 2026 18:19:40 GMT  
		Size: 7.5 MB (7533944 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:224cb4ce31c7d5ff6085d8690677d1403c21d218004b10c94b99a8342cb274b0`  
		Last Modified: Fri, 23 Oct 2026 18:19:45 GMT  
		Size: 212.6 MB (212602578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ad9a6b65e928a7fd6c251ceba6f038777389a10767737ad47438005c560a5ec`  
		Last Modified: Fri, 23 Oct 2026 18:19:40 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f705070ce8403f22cc31dd6f0117989eee56ac9c0fd3f914556af2114f41542`  
		Last Modified: Fri, 23 Oct 2026 18:19:39 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca14ad5d1775946c9aceb810ce86941c37928572432ad2bde441e3bacbba9cc7`  
		Last Modified: Fri, 23 Oct 2026 18:19:41 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19b56f44307b1d18b614b4fbcb8465a337d2dde98bd49b0467ccff995ff31709`  
		Last Modified: Fri, 23 Oct 2026 18:19:41 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13441342d99a2007a4bbebf182bb8fcb056fc47795931a51898156ac21f78420`  
		Last Modified: Fri, 23 Oct 2026 18:19:41 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:d66929c1978a3342774d1066d0e5efe31915e9680c3bdba481aebec180a05377
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b7e7118648a5417aebe9601bad51b3f007a6d46522a07c970051f6cf7b3bb49`

```dockerfile
```

-	Layers:
	-	`sha256:6dc8eca480a475d0dd3c3b09b6caeebe906e7b2a58044c840bcf3049da1b364e`  
		Last Modified: Fri, 23 Oct 2026 18:19:39 GMT  
		Size: 26.4 KB (26422 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.3.59`

```console
$ docker pull clickhouse@sha256:d5cfcc63572c8b8d85226a83af493d37ceaccb759f21ac95f0e89875b802bde9
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
$ docker pull clickhouse@sha256:d0f2c9a5d48f8a0fba6beb3e1efaf85b1a16bd0b27f3a10e9c22ec877763a79c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.7 MB (248691300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:417ff9e4d8a14a5d34a15692acfbb72c60d4652f00a8505ef6d875e5941c8ad6`
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
# Fri, 23 Oct 2026 18:18:39 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 23 Oct 2026 18:18:39 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 23 Oct 2026 18:18:39 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 23 Oct 2026 18:18:39 GMT
ARG REPO_CHANNEL=stable
# Fri, 23 Oct 2026 18:18:39 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 23 Oct 2026 18:18:39 GMT
ARG VERSION=26.3.59.10
# Fri, 23 Oct 2026 18:18:39 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 23 Oct 2026 18:19:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.59.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 23 Oct 2026 18:19:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.59.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 23 Oct 2026 18:19:17 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.59.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 23 Oct 2026 18:19:17 GMT
ENV LANG=en_US.UTF-8
# Fri, 23 Oct 2026 18:19:17 GMT
ENV TZ=UTC
# Fri, 23 Oct 2026 18:19:18 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.59.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 23 Oct 2026 18:19:18 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 23 Oct 2026 18:19:18 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 23 Oct 2026 18:19:18 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 23 Oct 2026 18:19:18 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 23 Oct 2026 18:19:18 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 23 Oct 2026 18:19:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2908c4fa36d87b4ba1206721a9efe744e0e9b35d1437148222276c744aa6efa0`  
		Last Modified: Fri, 02 Oct 2026 11:08:32 GMT  
		Size: 27.7 MB (27684723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a91a928b6a3cfdca91f9691a31fdebdd17846f901d5797f15a2e92942224c5ff`  
		Last Modified: Fri, 23 Oct 2026 18:19:40 GMT  
		Size: 7.5 MB (7533944 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:224cb4ce31c7d5ff6085d8690677d1403c21d218004b10c94b99a8342cb274b0`  
		Last Modified: Fri, 23 Oct 2026 18:19:45 GMT  
		Size: 212.6 MB (212602578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ad9a6b65e928a7fd6c251ceba6f038777389a10767737ad47438005c560a5ec`  
		Last Modified: Fri, 23 Oct 2026 18:19:40 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f705070ce8403f22cc31dd6f0117989eee56ac9c0fd3f914556af2114f41542`  
		Last Modified: Fri, 23 Oct 2026 18:19:39 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca14ad5d1775946c9aceb810ce86941c37928572432ad2bde441e3bacbba9cc7`  
		Last Modified: Fri, 23 Oct 2026 18:19:41 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19b56f44307b1d18b614b4fbcb8465a337d2dde98bd49b0467ccff995ff31709`  
		Last Modified: Fri, 23 Oct 2026 18:19:41 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13441342d99a2007a4bbebf182bb8fcb056fc47795931a51898156ac21f78420`  
		Last Modified: Fri, 23 Oct 2026 18:19:41 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.59` - unknown; unknown

```console
$ docker pull clickhouse@sha256:d66929c1978a3342774d1066d0e5efe31915e9680c3bdba481aebec180a05377
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b7e7118648a5417aebe9601bad51b3f007a6d46522a07c970051f6cf7b3bb49`

```dockerfile
```

-	Layers:
	-	`sha256:6dc8eca480a475d0dd3c3b09b6caeebe906e7b2a58044c840bcf3049da1b364e`  
		Last Modified: Fri, 23 Oct 2026 18:19:39 GMT  
		Size: 26.4 KB (26422 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.3.59-jammy`

```console
$ docker pull clickhouse@sha256:d5cfcc63572c8b8d85226a83af493d37ceaccb759f21ac95f0e89875b802bde9
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
$ docker pull clickhouse@sha256:d0f2c9a5d48f8a0fba6beb3e1efaf85b1a16bd0b27f3a10e9c22ec877763a79c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.7 MB (248691300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:417ff9e4d8a14a5d34a15692acfbb72c60d4652f00a8505ef6d875e5941c8ad6`
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
# Fri, 23 Oct 2026 18:18:39 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 23 Oct 2026 18:18:39 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 23 Oct 2026 18:18:39 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 23 Oct 2026 18:18:39 GMT
ARG REPO_CHANNEL=stable
# Fri, 23 Oct 2026 18:18:39 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 23 Oct 2026 18:18:39 GMT
ARG VERSION=26.3.59.10
# Fri, 23 Oct 2026 18:18:39 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 23 Oct 2026 18:19:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.59.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 23 Oct 2026 18:19:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.59.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 23 Oct 2026 18:19:17 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.59.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 23 Oct 2026 18:19:17 GMT
ENV LANG=en_US.UTF-8
# Fri, 23 Oct 2026 18:19:17 GMT
ENV TZ=UTC
# Fri, 23 Oct 2026 18:19:18 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.59.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 23 Oct 2026 18:19:18 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 23 Oct 2026 18:19:18 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 23 Oct 2026 18:19:18 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 23 Oct 2026 18:19:18 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 23 Oct 2026 18:19:18 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 23 Oct 2026 18:19:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2908c4fa36d87b4ba1206721a9efe744e0e9b35d1437148222276c744aa6efa0`  
		Last Modified: Fri, 02 Oct 2026 11:08:32 GMT  
		Size: 27.7 MB (27684723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a91a928b6a3cfdca91f9691a31fdebdd17846f901d5797f15a2e92942224c5ff`  
		Last Modified: Fri, 23 Oct 2026 18:19:40 GMT  
		Size: 7.5 MB (7533944 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:224cb4ce31c7d5ff6085d8690677d1403c21d218004b10c94b99a8342cb274b0`  
		Last Modified: Fri, 23 Oct 2026 18:19:45 GMT  
		Size: 212.6 MB (212602578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ad9a6b65e928a7fd6c251ceba6f038777389a10767737ad47438005c560a5ec`  
		Last Modified: Fri, 23 Oct 2026 18:19:40 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f705070ce8403f22cc31dd6f0117989eee56ac9c0fd3f914556af2114f41542`  
		Last Modified: Fri, 23 Oct 2026 18:19:39 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca14ad5d1775946c9aceb810ce86941c37928572432ad2bde441e3bacbba9cc7`  
		Last Modified: Fri, 23 Oct 2026 18:19:41 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19b56f44307b1d18b614b4fbcb8465a337d2dde98bd49b0467ccff995ff31709`  
		Last Modified: Fri, 23 Oct 2026 18:19:41 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13441342d99a2007a4bbebf182bb8fcb056fc47795931a51898156ac21f78420`  
		Last Modified: Fri, 23 Oct 2026 18:19:41 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.59-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:d66929c1978a3342774d1066d0e5efe31915e9680c3bdba481aebec180a05377
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b7e7118648a5417aebe9601bad51b3f007a6d46522a07c970051f6cf7b3bb49`

```dockerfile
```

-	Layers:
	-	`sha256:6dc8eca480a475d0dd3c3b09b6caeebe906e7b2a58044c840bcf3049da1b364e`  
		Last Modified: Fri, 23 Oct 2026 18:19:39 GMT  
		Size: 26.4 KB (26422 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.3.59.10`

```console
$ docker pull clickhouse@sha256:d5cfcc63572c8b8d85226a83af493d37ceaccb759f21ac95f0e89875b802bde9
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
$ docker pull clickhouse@sha256:d0f2c9a5d48f8a0fba6beb3e1efaf85b1a16bd0b27f3a10e9c22ec877763a79c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.7 MB (248691300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:417ff9e4d8a14a5d34a15692acfbb72c60d4652f00a8505ef6d875e5941c8ad6`
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
# Fri, 23 Oct 2026 18:18:39 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 23 Oct 2026 18:18:39 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 23 Oct 2026 18:18:39 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 23 Oct 2026 18:18:39 GMT
ARG REPO_CHANNEL=stable
# Fri, 23 Oct 2026 18:18:39 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 23 Oct 2026 18:18:39 GMT
ARG VERSION=26.3.59.10
# Fri, 23 Oct 2026 18:18:39 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 23 Oct 2026 18:19:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.59.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 23 Oct 2026 18:19:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.59.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 23 Oct 2026 18:19:17 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.59.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 23 Oct 2026 18:19:17 GMT
ENV LANG=en_US.UTF-8
# Fri, 23 Oct 2026 18:19:17 GMT
ENV TZ=UTC
# Fri, 23 Oct 2026 18:19:18 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.59.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 23 Oct 2026 18:19:18 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 23 Oct 2026 18:19:18 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 23 Oct 2026 18:19:18 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 23 Oct 2026 18:19:18 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 23 Oct 2026 18:19:18 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 23 Oct 2026 18:19:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2908c4fa36d87b4ba1206721a9efe744e0e9b35d1437148222276c744aa6efa0`  
		Last Modified: Fri, 02 Oct 2026 11:08:32 GMT  
		Size: 27.7 MB (27684723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a91a928b6a3cfdca91f9691a31fdebdd17846f901d5797f15a2e92942224c5ff`  
		Last Modified: Fri, 23 Oct 2026 18:19:40 GMT  
		Size: 7.5 MB (7533944 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:224cb4ce31c7d5ff6085d8690677d1403c21d218004b10c94b99a8342cb274b0`  
		Last Modified: Fri, 23 Oct 2026 18:19:45 GMT  
		Size: 212.6 MB (212602578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ad9a6b65e928a7fd6c251ceba6f038777389a10767737ad47438005c560a5ec`  
		Last Modified: Fri, 23 Oct 2026 18:19:40 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f705070ce8403f22cc31dd6f0117989eee56ac9c0fd3f914556af2114f41542`  
		Last Modified: Fri, 23 Oct 2026 18:19:39 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca14ad5d1775946c9aceb810ce86941c37928572432ad2bde441e3bacbba9cc7`  
		Last Modified: Fri, 23 Oct 2026 18:19:41 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19b56f44307b1d18b614b4fbcb8465a337d2dde98bd49b0467ccff995ff31709`  
		Last Modified: Fri, 23 Oct 2026 18:19:41 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13441342d99a2007a4bbebf182bb8fcb056fc47795931a51898156ac21f78420`  
		Last Modified: Fri, 23 Oct 2026 18:19:41 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.59.10` - unknown; unknown

```console
$ docker pull clickhouse@sha256:d66929c1978a3342774d1066d0e5efe31915e9680c3bdba481aebec180a05377
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b7e7118648a5417aebe9601bad51b3f007a6d46522a07c970051f6cf7b3bb49`

```dockerfile
```

-	Layers:
	-	`sha256:6dc8eca480a475d0dd3c3b09b6caeebe906e7b2a58044c840bcf3049da1b364e`  
		Last Modified: Fri, 23 Oct 2026 18:19:39 GMT  
		Size: 26.4 KB (26422 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.3.59.10-jammy`

```console
$ docker pull clickhouse@sha256:d5cfcc63572c8b8d85226a83af493d37ceaccb759f21ac95f0e89875b802bde9
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
$ docker pull clickhouse@sha256:d0f2c9a5d48f8a0fba6beb3e1efaf85b1a16bd0b27f3a10e9c22ec877763a79c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.7 MB (248691300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:417ff9e4d8a14a5d34a15692acfbb72c60d4652f00a8505ef6d875e5941c8ad6`
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
# Fri, 23 Oct 2026 18:18:39 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 23 Oct 2026 18:18:39 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 23 Oct 2026 18:18:39 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 23 Oct 2026 18:18:39 GMT
ARG REPO_CHANNEL=stable
# Fri, 23 Oct 2026 18:18:39 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 23 Oct 2026 18:18:39 GMT
ARG VERSION=26.3.59.10
# Fri, 23 Oct 2026 18:18:39 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 23 Oct 2026 18:19:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.59.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 23 Oct 2026 18:19:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.59.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 23 Oct 2026 18:19:17 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.59.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 23 Oct 2026 18:19:17 GMT
ENV LANG=en_US.UTF-8
# Fri, 23 Oct 2026 18:19:17 GMT
ENV TZ=UTC
# Fri, 23 Oct 2026 18:19:18 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.59.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 23 Oct 2026 18:19:18 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 23 Oct 2026 18:19:18 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 23 Oct 2026 18:19:18 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 23 Oct 2026 18:19:18 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 23 Oct 2026 18:19:18 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 23 Oct 2026 18:19:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2908c4fa36d87b4ba1206721a9efe744e0e9b35d1437148222276c744aa6efa0`  
		Last Modified: Fri, 02 Oct 2026 11:08:32 GMT  
		Size: 27.7 MB (27684723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a91a928b6a3cfdca91f9691a31fdebdd17846f901d5797f15a2e92942224c5ff`  
		Last Modified: Fri, 23 Oct 2026 18:19:40 GMT  
		Size: 7.5 MB (7533944 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:224cb4ce31c7d5ff6085d8690677d1403c21d218004b10c94b99a8342cb274b0`  
		Last Modified: Fri, 23 Oct 2026 18:19:45 GMT  
		Size: 212.6 MB (212602578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ad9a6b65e928a7fd6c251ceba6f038777389a10767737ad47438005c560a5ec`  
		Last Modified: Fri, 23 Oct 2026 18:19:40 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f705070ce8403f22cc31dd6f0117989eee56ac9c0fd3f914556af2114f41542`  
		Last Modified: Fri, 23 Oct 2026 18:19:39 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca14ad5d1775946c9aceb810ce86941c37928572432ad2bde441e3bacbba9cc7`  
		Last Modified: Fri, 23 Oct 2026 18:19:41 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19b56f44307b1d18b614b4fbcb8465a337d2dde98bd49b0467ccff995ff31709`  
		Last Modified: Fri, 23 Oct 2026 18:19:41 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13441342d99a2007a4bbebf182bb8fcb056fc47795931a51898156ac21f78420`  
		Last Modified: Fri, 23 Oct 2026 18:19:41 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.59.10-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:d66929c1978a3342774d1066d0e5efe31915e9680c3bdba481aebec180a05377
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b7e7118648a5417aebe9601bad51b3f007a6d46522a07c970051f6cf7b3bb49`

```dockerfile
```

-	Layers:
	-	`sha256:6dc8eca480a475d0dd3c3b09b6caeebe906e7b2a58044c840bcf3049da1b364e`  
		Last Modified: Fri, 23 Oct 2026 18:19:39 GMT  
		Size: 26.4 KB (26422 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.7`

```console
$ docker pull clickhouse@sha256:6cc4c027e24e0b07cee7d449f556fdd887710fcb624dbb229f14944b3a30cea4
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
$ docker pull clickhouse@sha256:2da58484c04fc3288fdb01be8c99719327f37e0faf892877eeb2d0ea2f7f5441
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.8 MB (251751044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53485e98b59feca2df5e843c928aa36c736e8d4d9f08ee87851ae3c4b85bb3f5`
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
# Fri, 23 Oct 2026 18:18:36 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 23 Oct 2026 18:18:36 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 23 Oct 2026 18:18:36 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 23 Oct 2026 18:18:36 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 23 Oct 2026 18:18:36 GMT
ARG REPO_CHANNEL=stable
# Fri, 23 Oct 2026 18:18:36 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 23 Oct 2026 18:18:36 GMT
ARG VERSION=26.7.37.6
# Fri, 23 Oct 2026 18:18:36 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 23 Oct 2026 18:19:06 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.37.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 23 Oct 2026 18:19:07 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.37.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 23 Oct 2026 18:19:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.37.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 23 Oct 2026 18:19:08 GMT
ENV LANG=en_US.UTF-8
# Fri, 23 Oct 2026 18:19:08 GMT
ENV TZ=UTC
# Fri, 23 Oct 2026 18:19:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.37.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 23 Oct 2026 18:19:08 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 23 Oct 2026 18:19:08 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 23 Oct 2026 18:19:08 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 23 Oct 2026 18:19:08 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 23 Oct 2026 18:19:08 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 23 Oct 2026 18:19:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2908c4fa36d87b4ba1206721a9efe744e0e9b35d1437148222276c744aa6efa0`  
		Last Modified: Fri, 02 Oct 2026 11:08:32 GMT  
		Size: 27.7 MB (27684723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42fec5a34eb952fdafc7d2478624ef319225be3e813e66ef242d505ae0bab6f9`  
		Last Modified: Fri, 23 Oct 2026 18:19:30 GMT  
		Size: 7.5 MB (7533938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2072ab952ce8ca8a3b18332cabb2a6bc3528cafdba49ff4c33d7ac0cbdf3212f`  
		Last Modified: Fri, 23 Oct 2026 18:19:34 GMT  
		Size: 215.7 MB (215662328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c5d193c9a8a8df9aaaa7c58de228a5fa14fd322ce85e47c55ea0e0d2ee1f81a`  
		Last Modified: Fri, 23 Oct 2026 18:19:30 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80111000038487ae33918b71f24bf2a1d74154f4876c58878c548d229719facf`  
		Last Modified: Fri, 23 Oct 2026 18:19:30 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca7d9c980413743ec94c2d0bcd600e3b768bfe0dc9feba438e206ecb47bf2758`  
		Last Modified: Fri, 23 Oct 2026 18:19:31 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:563ab45d20ca010c1081bb835b3c1c3818e56732a963e97a97f518c8223f2949`  
		Last Modified: Fri, 23 Oct 2026 18:19:31 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa47e0e6de7f61155b0bdd72692bc31effc6d18b2326f8aba30765c04bec4a3f`  
		Last Modified: Fri, 23 Oct 2026 18:19:32 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7` - unknown; unknown

```console
$ docker pull clickhouse@sha256:96ed4d1a95c2026a66bb9dc19f15dcc37c3e9e1f2afa1b7c2ae38d724bcf1d7c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.9 KB (26927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e9ee29d2ea8fb4a329070ae56ad3bbce26d9b215d62a7da83e4f61f3d832656`

```dockerfile
```

-	Layers:
	-	`sha256:861449fd379f172eab2251dea6f676e551a47c25fc46b4843adfd7e9e37ef479`  
		Last Modified: Fri, 23 Oct 2026 18:19:30 GMT  
		Size: 26.9 KB (26927 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.7-jammy`

```console
$ docker pull clickhouse@sha256:6cc4c027e24e0b07cee7d449f556fdd887710fcb624dbb229f14944b3a30cea4
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
$ docker pull clickhouse@sha256:2da58484c04fc3288fdb01be8c99719327f37e0faf892877eeb2d0ea2f7f5441
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.8 MB (251751044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53485e98b59feca2df5e843c928aa36c736e8d4d9f08ee87851ae3c4b85bb3f5`
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
# Fri, 23 Oct 2026 18:18:36 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 23 Oct 2026 18:18:36 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 23 Oct 2026 18:18:36 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 23 Oct 2026 18:18:36 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 23 Oct 2026 18:18:36 GMT
ARG REPO_CHANNEL=stable
# Fri, 23 Oct 2026 18:18:36 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 23 Oct 2026 18:18:36 GMT
ARG VERSION=26.7.37.6
# Fri, 23 Oct 2026 18:18:36 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 23 Oct 2026 18:19:06 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.37.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 23 Oct 2026 18:19:07 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.37.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 23 Oct 2026 18:19:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.37.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 23 Oct 2026 18:19:08 GMT
ENV LANG=en_US.UTF-8
# Fri, 23 Oct 2026 18:19:08 GMT
ENV TZ=UTC
# Fri, 23 Oct 2026 18:19:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.37.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 23 Oct 2026 18:19:08 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 23 Oct 2026 18:19:08 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 23 Oct 2026 18:19:08 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 23 Oct 2026 18:19:08 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 23 Oct 2026 18:19:08 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 23 Oct 2026 18:19:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2908c4fa36d87b4ba1206721a9efe744e0e9b35d1437148222276c744aa6efa0`  
		Last Modified: Fri, 02 Oct 2026 11:08:32 GMT  
		Size: 27.7 MB (27684723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42fec5a34eb952fdafc7d2478624ef319225be3e813e66ef242d505ae0bab6f9`  
		Last Modified: Fri, 23 Oct 2026 18:19:30 GMT  
		Size: 7.5 MB (7533938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2072ab952ce8ca8a3b18332cabb2a6bc3528cafdba49ff4c33d7ac0cbdf3212f`  
		Last Modified: Fri, 23 Oct 2026 18:19:34 GMT  
		Size: 215.7 MB (215662328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c5d193c9a8a8df9aaaa7c58de228a5fa14fd322ce85e47c55ea0e0d2ee1f81a`  
		Last Modified: Fri, 23 Oct 2026 18:19:30 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80111000038487ae33918b71f24bf2a1d74154f4876c58878c548d229719facf`  
		Last Modified: Fri, 23 Oct 2026 18:19:30 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca7d9c980413743ec94c2d0bcd600e3b768bfe0dc9feba438e206ecb47bf2758`  
		Last Modified: Fri, 23 Oct 2026 18:19:31 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:563ab45d20ca010c1081bb835b3c1c3818e56732a963e97a97f518c8223f2949`  
		Last Modified: Fri, 23 Oct 2026 18:19:31 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa47e0e6de7f61155b0bdd72692bc31effc6d18b2326f8aba30765c04bec4a3f`  
		Last Modified: Fri, 23 Oct 2026 18:19:32 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:96ed4d1a95c2026a66bb9dc19f15dcc37c3e9e1f2afa1b7c2ae38d724bcf1d7c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.9 KB (26927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e9ee29d2ea8fb4a329070ae56ad3bbce26d9b215d62a7da83e4f61f3d832656`

```dockerfile
```

-	Layers:
	-	`sha256:861449fd379f172eab2251dea6f676e551a47c25fc46b4843adfd7e9e37ef479`  
		Last Modified: Fri, 23 Oct 2026 18:19:30 GMT  
		Size: 26.9 KB (26927 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.7.37`

```console
$ docker pull clickhouse@sha256:6cc4c027e24e0b07cee7d449f556fdd887710fcb624dbb229f14944b3a30cea4
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
$ docker pull clickhouse@sha256:2da58484c04fc3288fdb01be8c99719327f37e0faf892877eeb2d0ea2f7f5441
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.8 MB (251751044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53485e98b59feca2df5e843c928aa36c736e8d4d9f08ee87851ae3c4b85bb3f5`
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
# Fri, 23 Oct 2026 18:18:36 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 23 Oct 2026 18:18:36 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 23 Oct 2026 18:18:36 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 23 Oct 2026 18:18:36 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 23 Oct 2026 18:18:36 GMT
ARG REPO_CHANNEL=stable
# Fri, 23 Oct 2026 18:18:36 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 23 Oct 2026 18:18:36 GMT
ARG VERSION=26.7.37.6
# Fri, 23 Oct 2026 18:18:36 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 23 Oct 2026 18:19:06 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.37.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 23 Oct 2026 18:19:07 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.37.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 23 Oct 2026 18:19:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.37.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 23 Oct 2026 18:19:08 GMT
ENV LANG=en_US.UTF-8
# Fri, 23 Oct 2026 18:19:08 GMT
ENV TZ=UTC
# Fri, 23 Oct 2026 18:19:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.37.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 23 Oct 2026 18:19:08 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 23 Oct 2026 18:19:08 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 23 Oct 2026 18:19:08 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 23 Oct 2026 18:19:08 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 23 Oct 2026 18:19:08 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 23 Oct 2026 18:19:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2908c4fa36d87b4ba1206721a9efe744e0e9b35d1437148222276c744aa6efa0`  
		Last Modified: Fri, 02 Oct 2026 11:08:32 GMT  
		Size: 27.7 MB (27684723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42fec5a34eb952fdafc7d2478624ef319225be3e813e66ef242d505ae0bab6f9`  
		Last Modified: Fri, 23 Oct 2026 18:19:30 GMT  
		Size: 7.5 MB (7533938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2072ab952ce8ca8a3b18332cabb2a6bc3528cafdba49ff4c33d7ac0cbdf3212f`  
		Last Modified: Fri, 23 Oct 2026 18:19:34 GMT  
		Size: 215.7 MB (215662328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c5d193c9a8a8df9aaaa7c58de228a5fa14fd322ce85e47c55ea0e0d2ee1f81a`  
		Last Modified: Fri, 23 Oct 2026 18:19:30 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80111000038487ae33918b71f24bf2a1d74154f4876c58878c548d229719facf`  
		Last Modified: Fri, 23 Oct 2026 18:19:30 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca7d9c980413743ec94c2d0bcd600e3b768bfe0dc9feba438e206ecb47bf2758`  
		Last Modified: Fri, 23 Oct 2026 18:19:31 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:563ab45d20ca010c1081bb835b3c1c3818e56732a963e97a97f518c8223f2949`  
		Last Modified: Fri, 23 Oct 2026 18:19:31 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa47e0e6de7f61155b0bdd72692bc31effc6d18b2326f8aba30765c04bec4a3f`  
		Last Modified: Fri, 23 Oct 2026 18:19:32 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7.37` - unknown; unknown

```console
$ docker pull clickhouse@sha256:96ed4d1a95c2026a66bb9dc19f15dcc37c3e9e1f2afa1b7c2ae38d724bcf1d7c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.9 KB (26927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e9ee29d2ea8fb4a329070ae56ad3bbce26d9b215d62a7da83e4f61f3d832656`

```dockerfile
```

-	Layers:
	-	`sha256:861449fd379f172eab2251dea6f676e551a47c25fc46b4843adfd7e9e37ef479`  
		Last Modified: Fri, 23 Oct 2026 18:19:30 GMT  
		Size: 26.9 KB (26927 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.7.37-jammy`

```console
$ docker pull clickhouse@sha256:6cc4c027e24e0b07cee7d449f556fdd887710fcb624dbb229f14944b3a30cea4
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
$ docker pull clickhouse@sha256:2da58484c04fc3288fdb01be8c99719327f37e0faf892877eeb2d0ea2f7f5441
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.8 MB (251751044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53485e98b59feca2df5e843c928aa36c736e8d4d9f08ee87851ae3c4b85bb3f5`
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
# Fri, 23 Oct 2026 18:18:36 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 23 Oct 2026 18:18:36 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 23 Oct 2026 18:18:36 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 23 Oct 2026 18:18:36 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 23 Oct 2026 18:18:36 GMT
ARG REPO_CHANNEL=stable
# Fri, 23 Oct 2026 18:18:36 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 23 Oct 2026 18:18:36 GMT
ARG VERSION=26.7.37.6
# Fri, 23 Oct 2026 18:18:36 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 23 Oct 2026 18:19:06 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.37.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 23 Oct 2026 18:19:07 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.37.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 23 Oct 2026 18:19:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.37.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 23 Oct 2026 18:19:08 GMT
ENV LANG=en_US.UTF-8
# Fri, 23 Oct 2026 18:19:08 GMT
ENV TZ=UTC
# Fri, 23 Oct 2026 18:19:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.37.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 23 Oct 2026 18:19:08 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 23 Oct 2026 18:19:08 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 23 Oct 2026 18:19:08 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 23 Oct 2026 18:19:08 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 23 Oct 2026 18:19:08 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 23 Oct 2026 18:19:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2908c4fa36d87b4ba1206721a9efe744e0e9b35d1437148222276c744aa6efa0`  
		Last Modified: Fri, 02 Oct 2026 11:08:32 GMT  
		Size: 27.7 MB (27684723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42fec5a34eb952fdafc7d2478624ef319225be3e813e66ef242d505ae0bab6f9`  
		Last Modified: Fri, 23 Oct 2026 18:19:30 GMT  
		Size: 7.5 MB (7533938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2072ab952ce8ca8a3b18332cabb2a6bc3528cafdba49ff4c33d7ac0cbdf3212f`  
		Last Modified: Fri, 23 Oct 2026 18:19:34 GMT  
		Size: 215.7 MB (215662328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c5d193c9a8a8df9aaaa7c58de228a5fa14fd322ce85e47c55ea0e0d2ee1f81a`  
		Last Modified: Fri, 23 Oct 2026 18:19:30 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80111000038487ae33918b71f24bf2a1d74154f4876c58878c548d229719facf`  
		Last Modified: Fri, 23 Oct 2026 18:19:30 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca7d9c980413743ec94c2d0bcd600e3b768bfe0dc9feba438e206ecb47bf2758`  
		Last Modified: Fri, 23 Oct 2026 18:19:31 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:563ab45d20ca010c1081bb835b3c1c3818e56732a963e97a97f518c8223f2949`  
		Last Modified: Fri, 23 Oct 2026 18:19:31 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa47e0e6de7f61155b0bdd72692bc31effc6d18b2326f8aba30765c04bec4a3f`  
		Last Modified: Fri, 23 Oct 2026 18:19:32 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7.37-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:96ed4d1a95c2026a66bb9dc19f15dcc37c3e9e1f2afa1b7c2ae38d724bcf1d7c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.9 KB (26927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e9ee29d2ea8fb4a329070ae56ad3bbce26d9b215d62a7da83e4f61f3d832656`

```dockerfile
```

-	Layers:
	-	`sha256:861449fd379f172eab2251dea6f676e551a47c25fc46b4843adfd7e9e37ef479`  
		Last Modified: Fri, 23 Oct 2026 18:19:30 GMT  
		Size: 26.9 KB (26927 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.7.37.6`

```console
$ docker pull clickhouse@sha256:6cc4c027e24e0b07cee7d449f556fdd887710fcb624dbb229f14944b3a30cea4
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
$ docker pull clickhouse@sha256:2da58484c04fc3288fdb01be8c99719327f37e0faf892877eeb2d0ea2f7f5441
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.8 MB (251751044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53485e98b59feca2df5e843c928aa36c736e8d4d9f08ee87851ae3c4b85bb3f5`
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
# Fri, 23 Oct 2026 18:18:36 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 23 Oct 2026 18:18:36 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 23 Oct 2026 18:18:36 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 23 Oct 2026 18:18:36 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 23 Oct 2026 18:18:36 GMT
ARG REPO_CHANNEL=stable
# Fri, 23 Oct 2026 18:18:36 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 23 Oct 2026 18:18:36 GMT
ARG VERSION=26.7.37.6
# Fri, 23 Oct 2026 18:18:36 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 23 Oct 2026 18:19:06 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.37.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 23 Oct 2026 18:19:07 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.37.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 23 Oct 2026 18:19:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.37.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 23 Oct 2026 18:19:08 GMT
ENV LANG=en_US.UTF-8
# Fri, 23 Oct 2026 18:19:08 GMT
ENV TZ=UTC
# Fri, 23 Oct 2026 18:19:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.37.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 23 Oct 2026 18:19:08 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 23 Oct 2026 18:19:08 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 23 Oct 2026 18:19:08 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 23 Oct 2026 18:19:08 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 23 Oct 2026 18:19:08 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 23 Oct 2026 18:19:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2908c4fa36d87b4ba1206721a9efe744e0e9b35d1437148222276c744aa6efa0`  
		Last Modified: Fri, 02 Oct 2026 11:08:32 GMT  
		Size: 27.7 MB (27684723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42fec5a34eb952fdafc7d2478624ef319225be3e813e66ef242d505ae0bab6f9`  
		Last Modified: Fri, 23 Oct 2026 18:19:30 GMT  
		Size: 7.5 MB (7533938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2072ab952ce8ca8a3b18332cabb2a6bc3528cafdba49ff4c33d7ac0cbdf3212f`  
		Last Modified: Fri, 23 Oct 2026 18:19:34 GMT  
		Size: 215.7 MB (215662328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c5d193c9a8a8df9aaaa7c58de228a5fa14fd322ce85e47c55ea0e0d2ee1f81a`  
		Last Modified: Fri, 23 Oct 2026 18:19:30 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80111000038487ae33918b71f24bf2a1d74154f4876c58878c548d229719facf`  
		Last Modified: Fri, 23 Oct 2026 18:19:30 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca7d9c980413743ec94c2d0bcd600e3b768bfe0dc9feba438e206ecb47bf2758`  
		Last Modified: Fri, 23 Oct 2026 18:19:31 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:563ab45d20ca010c1081bb835b3c1c3818e56732a963e97a97f518c8223f2949`  
		Last Modified: Fri, 23 Oct 2026 18:19:31 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa47e0e6de7f61155b0bdd72692bc31effc6d18b2326f8aba30765c04bec4a3f`  
		Last Modified: Fri, 23 Oct 2026 18:19:32 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7.37.6` - unknown; unknown

```console
$ docker pull clickhouse@sha256:96ed4d1a95c2026a66bb9dc19f15dcc37c3e9e1f2afa1b7c2ae38d724bcf1d7c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.9 KB (26927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e9ee29d2ea8fb4a329070ae56ad3bbce26d9b215d62a7da83e4f61f3d832656`

```dockerfile
```

-	Layers:
	-	`sha256:861449fd379f172eab2251dea6f676e551a47c25fc46b4843adfd7e9e37ef479`  
		Last Modified: Fri, 23 Oct 2026 18:19:30 GMT  
		Size: 26.9 KB (26927 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.7.37.6-jammy`

```console
$ docker pull clickhouse@sha256:6cc4c027e24e0b07cee7d449f556fdd887710fcb624dbb229f14944b3a30cea4
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
$ docker pull clickhouse@sha256:2da58484c04fc3288fdb01be8c99719327f37e0faf892877eeb2d0ea2f7f5441
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.8 MB (251751044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53485e98b59feca2df5e843c928aa36c736e8d4d9f08ee87851ae3c4b85bb3f5`
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
# Fri, 23 Oct 2026 18:18:36 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 23 Oct 2026 18:18:36 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 23 Oct 2026 18:18:36 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 23 Oct 2026 18:18:36 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 23 Oct 2026 18:18:36 GMT
ARG REPO_CHANNEL=stable
# Fri, 23 Oct 2026 18:18:36 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 23 Oct 2026 18:18:36 GMT
ARG VERSION=26.7.37.6
# Fri, 23 Oct 2026 18:18:36 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 23 Oct 2026 18:19:06 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.37.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 23 Oct 2026 18:19:07 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.37.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 23 Oct 2026 18:19:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.37.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 23 Oct 2026 18:19:08 GMT
ENV LANG=en_US.UTF-8
# Fri, 23 Oct 2026 18:19:08 GMT
ENV TZ=UTC
# Fri, 23 Oct 2026 18:19:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.37.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 23 Oct 2026 18:19:08 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 23 Oct 2026 18:19:08 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 23 Oct 2026 18:19:08 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 23 Oct 2026 18:19:08 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 23 Oct 2026 18:19:08 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 23 Oct 2026 18:19:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2908c4fa36d87b4ba1206721a9efe744e0e9b35d1437148222276c744aa6efa0`  
		Last Modified: Fri, 02 Oct 2026 11:08:32 GMT  
		Size: 27.7 MB (27684723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42fec5a34eb952fdafc7d2478624ef319225be3e813e66ef242d505ae0bab6f9`  
		Last Modified: Fri, 23 Oct 2026 18:19:30 GMT  
		Size: 7.5 MB (7533938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2072ab952ce8ca8a3b18332cabb2a6bc3528cafdba49ff4c33d7ac0cbdf3212f`  
		Last Modified: Fri, 23 Oct 2026 18:19:34 GMT  
		Size: 215.7 MB (215662328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c5d193c9a8a8df9aaaa7c58de228a5fa14fd322ce85e47c55ea0e0d2ee1f81a`  
		Last Modified: Fri, 23 Oct 2026 18:19:30 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80111000038487ae33918b71f24bf2a1d74154f4876c58878c548d229719facf`  
		Last Modified: Fri, 23 Oct 2026 18:19:30 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca7d9c980413743ec94c2d0bcd600e3b768bfe0dc9feba438e206ecb47bf2758`  
		Last Modified: Fri, 23 Oct 2026 18:19:31 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:563ab45d20ca010c1081bb835b3c1c3818e56732a963e97a97f518c8223f2949`  
		Last Modified: Fri, 23 Oct 2026 18:19:31 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa47e0e6de7f61155b0bdd72692bc31effc6d18b2326f8aba30765c04bec4a3f`  
		Last Modified: Fri, 23 Oct 2026 18:19:32 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7.37.6-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:96ed4d1a95c2026a66bb9dc19f15dcc37c3e9e1f2afa1b7c2ae38d724bcf1d7c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.9 KB (26927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e9ee29d2ea8fb4a329070ae56ad3bbce26d9b215d62a7da83e4f61f3d832656`

```dockerfile
```

-	Layers:
	-	`sha256:861449fd379f172eab2251dea6f676e551a47c25fc46b4843adfd7e9e37ef479`  
		Last Modified: Fri, 23 Oct 2026 18:19:30 GMT  
		Size: 26.9 KB (26927 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.8`

```console
$ docker pull clickhouse@sha256:ff960d041cabee97a44245ee510da593a05884cbc14d2001703a97d703815638
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
$ docker pull clickhouse@sha256:fed475960cb2bdba7f3a38596203c84aef406358fc0b1522cf001339d216084d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.8 MB (262819847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:297917b248af627ceb58528d436baa7a5a0d0a3a903415b6882de22f28db6706`
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
# Fri, 23 Oct 2026 18:18:38 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 23 Oct 2026 18:18:38 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 23 Oct 2026 18:18:38 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 23 Oct 2026 18:18:38 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 23 Oct 2026 18:18:38 GMT
ARG REPO_CHANNEL=stable
# Fri, 23 Oct 2026 18:18:38 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 23 Oct 2026 18:18:38 GMT
ARG VERSION=26.8.34.13
# Fri, 23 Oct 2026 18:18:38 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 23 Oct 2026 18:19:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 23 Oct 2026 18:19:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 23 Oct 2026 18:19:10 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 23 Oct 2026 18:19:10 GMT
ENV LANG=en_US.UTF-8
# Fri, 23 Oct 2026 18:19:10 GMT
ENV TZ=UTC
# Fri, 23 Oct 2026 18:19:10 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 23 Oct 2026 18:19:10 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 23 Oct 2026 18:19:10 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 23 Oct 2026 18:19:10 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 23 Oct 2026 18:19:10 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 23 Oct 2026 18:19:10 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 23 Oct 2026 18:19:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2908c4fa36d87b4ba1206721a9efe744e0e9b35d1437148222276c744aa6efa0`  
		Last Modified: Fri, 02 Oct 2026 11:08:32 GMT  
		Size: 27.7 MB (27684723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:088cffa1273e696a209819137c8d5b9c932c2e2da3b28ac515c066aa9d16652f`  
		Last Modified: Fri, 23 Oct 2026 18:19:32 GMT  
		Size: 7.5 MB (7533931 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d5765f9b225c10c1352db7df2f732ffd8c97f29914346d83e840c157da2c8b3`  
		Last Modified: Fri, 23 Oct 2026 18:19:37 GMT  
		Size: 226.7 MB (226731138 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d6e45b627450789eb14123cd88b0585cb2bfb4fbf20c2024344dfac4f3bb427`  
		Last Modified: Fri, 23 Oct 2026 18:19:32 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17a7300fa245e35668c137020048f54e1a4dc7af1761b94a379e5565456105bf`  
		Last Modified: Fri, 23 Oct 2026 18:19:32 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4d03965009e9d62cf6ecdddf830a04372fb88fd952f710b0e7edc702dea5272`  
		Last Modified: Fri, 23 Oct 2026 18:19:33 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea4e2c2f3e4e056ac27fcafb3568b7f90bd241d53835dcf4282ba38f3fd63845`  
		Last Modified: Fri, 23 Oct 2026 18:19:33 GMT  
		Size: 365.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cd9ecc34ce7ca312bbac27598c17ca46c237add8675335caf89790640263784`  
		Last Modified: Fri, 23 Oct 2026 18:19:34 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8` - unknown; unknown

```console
$ docker pull clickhouse@sha256:6db6c7706b30de665f353f2ba75bb808f0c520720833d51676d489e01a8a1b0a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 KB (27578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b22bf55380c4d4149d53682f116397bba0dc49446c30d8bf347e5f2acbd925f6`

```dockerfile
```

-	Layers:
	-	`sha256:9ecc4e63fcdb865375b144fa3dac60d6aae2129cf269f9bece9974cdc549243e`  
		Last Modified: Fri, 23 Oct 2026 18:19:32 GMT  
		Size: 27.6 KB (27578 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.8-jammy`

```console
$ docker pull clickhouse@sha256:ff960d041cabee97a44245ee510da593a05884cbc14d2001703a97d703815638
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
$ docker pull clickhouse@sha256:fed475960cb2bdba7f3a38596203c84aef406358fc0b1522cf001339d216084d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.8 MB (262819847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:297917b248af627ceb58528d436baa7a5a0d0a3a903415b6882de22f28db6706`
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
# Fri, 23 Oct 2026 18:18:38 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 23 Oct 2026 18:18:38 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 23 Oct 2026 18:18:38 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 23 Oct 2026 18:18:38 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 23 Oct 2026 18:18:38 GMT
ARG REPO_CHANNEL=stable
# Fri, 23 Oct 2026 18:18:38 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 23 Oct 2026 18:18:38 GMT
ARG VERSION=26.8.34.13
# Fri, 23 Oct 2026 18:18:38 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 23 Oct 2026 18:19:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 23 Oct 2026 18:19:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 23 Oct 2026 18:19:10 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 23 Oct 2026 18:19:10 GMT
ENV LANG=en_US.UTF-8
# Fri, 23 Oct 2026 18:19:10 GMT
ENV TZ=UTC
# Fri, 23 Oct 2026 18:19:10 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 23 Oct 2026 18:19:10 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 23 Oct 2026 18:19:10 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 23 Oct 2026 18:19:10 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 23 Oct 2026 18:19:10 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 23 Oct 2026 18:19:10 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 23 Oct 2026 18:19:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2908c4fa36d87b4ba1206721a9efe744e0e9b35d1437148222276c744aa6efa0`  
		Last Modified: Fri, 02 Oct 2026 11:08:32 GMT  
		Size: 27.7 MB (27684723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:088cffa1273e696a209819137c8d5b9c932c2e2da3b28ac515c066aa9d16652f`  
		Last Modified: Fri, 23 Oct 2026 18:19:32 GMT  
		Size: 7.5 MB (7533931 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d5765f9b225c10c1352db7df2f732ffd8c97f29914346d83e840c157da2c8b3`  
		Last Modified: Fri, 23 Oct 2026 18:19:37 GMT  
		Size: 226.7 MB (226731138 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d6e45b627450789eb14123cd88b0585cb2bfb4fbf20c2024344dfac4f3bb427`  
		Last Modified: Fri, 23 Oct 2026 18:19:32 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17a7300fa245e35668c137020048f54e1a4dc7af1761b94a379e5565456105bf`  
		Last Modified: Fri, 23 Oct 2026 18:19:32 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4d03965009e9d62cf6ecdddf830a04372fb88fd952f710b0e7edc702dea5272`  
		Last Modified: Fri, 23 Oct 2026 18:19:33 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea4e2c2f3e4e056ac27fcafb3568b7f90bd241d53835dcf4282ba38f3fd63845`  
		Last Modified: Fri, 23 Oct 2026 18:19:33 GMT  
		Size: 365.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cd9ecc34ce7ca312bbac27598c17ca46c237add8675335caf89790640263784`  
		Last Modified: Fri, 23 Oct 2026 18:19:34 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:6db6c7706b30de665f353f2ba75bb808f0c520720833d51676d489e01a8a1b0a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 KB (27578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b22bf55380c4d4149d53682f116397bba0dc49446c30d8bf347e5f2acbd925f6`

```dockerfile
```

-	Layers:
	-	`sha256:9ecc4e63fcdb865375b144fa3dac60d6aae2129cf269f9bece9974cdc549243e`  
		Last Modified: Fri, 23 Oct 2026 18:19:32 GMT  
		Size: 27.6 KB (27578 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.8.34`

```console
$ docker pull clickhouse@sha256:ff960d041cabee97a44245ee510da593a05884cbc14d2001703a97d703815638
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
$ docker pull clickhouse@sha256:fed475960cb2bdba7f3a38596203c84aef406358fc0b1522cf001339d216084d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.8 MB (262819847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:297917b248af627ceb58528d436baa7a5a0d0a3a903415b6882de22f28db6706`
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
# Fri, 23 Oct 2026 18:18:38 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 23 Oct 2026 18:18:38 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 23 Oct 2026 18:18:38 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 23 Oct 2026 18:18:38 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 23 Oct 2026 18:18:38 GMT
ARG REPO_CHANNEL=stable
# Fri, 23 Oct 2026 18:18:38 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 23 Oct 2026 18:18:38 GMT
ARG VERSION=26.8.34.13
# Fri, 23 Oct 2026 18:18:38 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 23 Oct 2026 18:19:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 23 Oct 2026 18:19:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 23 Oct 2026 18:19:10 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 23 Oct 2026 18:19:10 GMT
ENV LANG=en_US.UTF-8
# Fri, 23 Oct 2026 18:19:10 GMT
ENV TZ=UTC
# Fri, 23 Oct 2026 18:19:10 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 23 Oct 2026 18:19:10 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 23 Oct 2026 18:19:10 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 23 Oct 2026 18:19:10 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 23 Oct 2026 18:19:10 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 23 Oct 2026 18:19:10 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 23 Oct 2026 18:19:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2908c4fa36d87b4ba1206721a9efe744e0e9b35d1437148222276c744aa6efa0`  
		Last Modified: Fri, 02 Oct 2026 11:08:32 GMT  
		Size: 27.7 MB (27684723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:088cffa1273e696a209819137c8d5b9c932c2e2da3b28ac515c066aa9d16652f`  
		Last Modified: Fri, 23 Oct 2026 18:19:32 GMT  
		Size: 7.5 MB (7533931 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d5765f9b225c10c1352db7df2f732ffd8c97f29914346d83e840c157da2c8b3`  
		Last Modified: Fri, 23 Oct 2026 18:19:37 GMT  
		Size: 226.7 MB (226731138 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d6e45b627450789eb14123cd88b0585cb2bfb4fbf20c2024344dfac4f3bb427`  
		Last Modified: Fri, 23 Oct 2026 18:19:32 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17a7300fa245e35668c137020048f54e1a4dc7af1761b94a379e5565456105bf`  
		Last Modified: Fri, 23 Oct 2026 18:19:32 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4d03965009e9d62cf6ecdddf830a04372fb88fd952f710b0e7edc702dea5272`  
		Last Modified: Fri, 23 Oct 2026 18:19:33 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea4e2c2f3e4e056ac27fcafb3568b7f90bd241d53835dcf4282ba38f3fd63845`  
		Last Modified: Fri, 23 Oct 2026 18:19:33 GMT  
		Size: 365.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cd9ecc34ce7ca312bbac27598c17ca46c237add8675335caf89790640263784`  
		Last Modified: Fri, 23 Oct 2026 18:19:34 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8.34` - unknown; unknown

```console
$ docker pull clickhouse@sha256:6db6c7706b30de665f353f2ba75bb808f0c520720833d51676d489e01a8a1b0a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 KB (27578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b22bf55380c4d4149d53682f116397bba0dc49446c30d8bf347e5f2acbd925f6`

```dockerfile
```

-	Layers:
	-	`sha256:9ecc4e63fcdb865375b144fa3dac60d6aae2129cf269f9bece9974cdc549243e`  
		Last Modified: Fri, 23 Oct 2026 18:19:32 GMT  
		Size: 27.6 KB (27578 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.8.34-jammy`

```console
$ docker pull clickhouse@sha256:ff960d041cabee97a44245ee510da593a05884cbc14d2001703a97d703815638
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
$ docker pull clickhouse@sha256:fed475960cb2bdba7f3a38596203c84aef406358fc0b1522cf001339d216084d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.8 MB (262819847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:297917b248af627ceb58528d436baa7a5a0d0a3a903415b6882de22f28db6706`
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
# Fri, 23 Oct 2026 18:18:38 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 23 Oct 2026 18:18:38 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 23 Oct 2026 18:18:38 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 23 Oct 2026 18:18:38 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 23 Oct 2026 18:18:38 GMT
ARG REPO_CHANNEL=stable
# Fri, 23 Oct 2026 18:18:38 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 23 Oct 2026 18:18:38 GMT
ARG VERSION=26.8.34.13
# Fri, 23 Oct 2026 18:18:38 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 23 Oct 2026 18:19:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 23 Oct 2026 18:19:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 23 Oct 2026 18:19:10 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 23 Oct 2026 18:19:10 GMT
ENV LANG=en_US.UTF-8
# Fri, 23 Oct 2026 18:19:10 GMT
ENV TZ=UTC
# Fri, 23 Oct 2026 18:19:10 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 23 Oct 2026 18:19:10 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 23 Oct 2026 18:19:10 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 23 Oct 2026 18:19:10 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 23 Oct 2026 18:19:10 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 23 Oct 2026 18:19:10 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 23 Oct 2026 18:19:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2908c4fa36d87b4ba1206721a9efe744e0e9b35d1437148222276c744aa6efa0`  
		Last Modified: Fri, 02 Oct 2026 11:08:32 GMT  
		Size: 27.7 MB (27684723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:088cffa1273e696a209819137c8d5b9c932c2e2da3b28ac515c066aa9d16652f`  
		Last Modified: Fri, 23 Oct 2026 18:19:32 GMT  
		Size: 7.5 MB (7533931 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d5765f9b225c10c1352db7df2f732ffd8c97f29914346d83e840c157da2c8b3`  
		Last Modified: Fri, 23 Oct 2026 18:19:37 GMT  
		Size: 226.7 MB (226731138 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d6e45b627450789eb14123cd88b0585cb2bfb4fbf20c2024344dfac4f3bb427`  
		Last Modified: Fri, 23 Oct 2026 18:19:32 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17a7300fa245e35668c137020048f54e1a4dc7af1761b94a379e5565456105bf`  
		Last Modified: Fri, 23 Oct 2026 18:19:32 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4d03965009e9d62cf6ecdddf830a04372fb88fd952f710b0e7edc702dea5272`  
		Last Modified: Fri, 23 Oct 2026 18:19:33 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea4e2c2f3e4e056ac27fcafb3568b7f90bd241d53835dcf4282ba38f3fd63845`  
		Last Modified: Fri, 23 Oct 2026 18:19:33 GMT  
		Size: 365.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cd9ecc34ce7ca312bbac27598c17ca46c237add8675335caf89790640263784`  
		Last Modified: Fri, 23 Oct 2026 18:19:34 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8.34-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:6db6c7706b30de665f353f2ba75bb808f0c520720833d51676d489e01a8a1b0a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 KB (27578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b22bf55380c4d4149d53682f116397bba0dc49446c30d8bf347e5f2acbd925f6`

```dockerfile
```

-	Layers:
	-	`sha256:9ecc4e63fcdb865375b144fa3dac60d6aae2129cf269f9bece9974cdc549243e`  
		Last Modified: Fri, 23 Oct 2026 18:19:32 GMT  
		Size: 27.6 KB (27578 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.8.34.13`

```console
$ docker pull clickhouse@sha256:ff960d041cabee97a44245ee510da593a05884cbc14d2001703a97d703815638
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
$ docker pull clickhouse@sha256:fed475960cb2bdba7f3a38596203c84aef406358fc0b1522cf001339d216084d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.8 MB (262819847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:297917b248af627ceb58528d436baa7a5a0d0a3a903415b6882de22f28db6706`
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
# Fri, 23 Oct 2026 18:18:38 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 23 Oct 2026 18:18:38 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 23 Oct 2026 18:18:38 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 23 Oct 2026 18:18:38 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 23 Oct 2026 18:18:38 GMT
ARG REPO_CHANNEL=stable
# Fri, 23 Oct 2026 18:18:38 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 23 Oct 2026 18:18:38 GMT
ARG VERSION=26.8.34.13
# Fri, 23 Oct 2026 18:18:38 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 23 Oct 2026 18:19:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 23 Oct 2026 18:19:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 23 Oct 2026 18:19:10 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 23 Oct 2026 18:19:10 GMT
ENV LANG=en_US.UTF-8
# Fri, 23 Oct 2026 18:19:10 GMT
ENV TZ=UTC
# Fri, 23 Oct 2026 18:19:10 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 23 Oct 2026 18:19:10 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 23 Oct 2026 18:19:10 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 23 Oct 2026 18:19:10 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 23 Oct 2026 18:19:10 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 23 Oct 2026 18:19:10 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 23 Oct 2026 18:19:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2908c4fa36d87b4ba1206721a9efe744e0e9b35d1437148222276c744aa6efa0`  
		Last Modified: Fri, 02 Oct 2026 11:08:32 GMT  
		Size: 27.7 MB (27684723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:088cffa1273e696a209819137c8d5b9c932c2e2da3b28ac515c066aa9d16652f`  
		Last Modified: Fri, 23 Oct 2026 18:19:32 GMT  
		Size: 7.5 MB (7533931 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d5765f9b225c10c1352db7df2f732ffd8c97f29914346d83e840c157da2c8b3`  
		Last Modified: Fri, 23 Oct 2026 18:19:37 GMT  
		Size: 226.7 MB (226731138 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d6e45b627450789eb14123cd88b0585cb2bfb4fbf20c2024344dfac4f3bb427`  
		Last Modified: Fri, 23 Oct 2026 18:19:32 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17a7300fa245e35668c137020048f54e1a4dc7af1761b94a379e5565456105bf`  
		Last Modified: Fri, 23 Oct 2026 18:19:32 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4d03965009e9d62cf6ecdddf830a04372fb88fd952f710b0e7edc702dea5272`  
		Last Modified: Fri, 23 Oct 2026 18:19:33 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea4e2c2f3e4e056ac27fcafb3568b7f90bd241d53835dcf4282ba38f3fd63845`  
		Last Modified: Fri, 23 Oct 2026 18:19:33 GMT  
		Size: 365.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cd9ecc34ce7ca312bbac27598c17ca46c237add8675335caf89790640263784`  
		Last Modified: Fri, 23 Oct 2026 18:19:34 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8.34.13` - unknown; unknown

```console
$ docker pull clickhouse@sha256:6db6c7706b30de665f353f2ba75bb808f0c520720833d51676d489e01a8a1b0a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 KB (27578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b22bf55380c4d4149d53682f116397bba0dc49446c30d8bf347e5f2acbd925f6`

```dockerfile
```

-	Layers:
	-	`sha256:9ecc4e63fcdb865375b144fa3dac60d6aae2129cf269f9bece9974cdc549243e`  
		Last Modified: Fri, 23 Oct 2026 18:19:32 GMT  
		Size: 27.6 KB (27578 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.8.34.13-jammy`

```console
$ docker pull clickhouse@sha256:ff960d041cabee97a44245ee510da593a05884cbc14d2001703a97d703815638
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
$ docker pull clickhouse@sha256:fed475960cb2bdba7f3a38596203c84aef406358fc0b1522cf001339d216084d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.8 MB (262819847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:297917b248af627ceb58528d436baa7a5a0d0a3a903415b6882de22f28db6706`
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
# Fri, 23 Oct 2026 18:18:38 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 23 Oct 2026 18:18:38 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 23 Oct 2026 18:18:38 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 23 Oct 2026 18:18:38 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 23 Oct 2026 18:18:38 GMT
ARG REPO_CHANNEL=stable
# Fri, 23 Oct 2026 18:18:38 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 23 Oct 2026 18:18:38 GMT
ARG VERSION=26.8.34.13
# Fri, 23 Oct 2026 18:18:38 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 23 Oct 2026 18:19:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 23 Oct 2026 18:19:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 23 Oct 2026 18:19:10 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 23 Oct 2026 18:19:10 GMT
ENV LANG=en_US.UTF-8
# Fri, 23 Oct 2026 18:19:10 GMT
ENV TZ=UTC
# Fri, 23 Oct 2026 18:19:10 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 23 Oct 2026 18:19:10 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 23 Oct 2026 18:19:10 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 23 Oct 2026 18:19:10 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 23 Oct 2026 18:19:10 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 23 Oct 2026 18:19:10 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 23 Oct 2026 18:19:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2908c4fa36d87b4ba1206721a9efe744e0e9b35d1437148222276c744aa6efa0`  
		Last Modified: Fri, 02 Oct 2026 11:08:32 GMT  
		Size: 27.7 MB (27684723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:088cffa1273e696a209819137c8d5b9c932c2e2da3b28ac515c066aa9d16652f`  
		Last Modified: Fri, 23 Oct 2026 18:19:32 GMT  
		Size: 7.5 MB (7533931 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d5765f9b225c10c1352db7df2f732ffd8c97f29914346d83e840c157da2c8b3`  
		Last Modified: Fri, 23 Oct 2026 18:19:37 GMT  
		Size: 226.7 MB (226731138 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d6e45b627450789eb14123cd88b0585cb2bfb4fbf20c2024344dfac4f3bb427`  
		Last Modified: Fri, 23 Oct 2026 18:19:32 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17a7300fa245e35668c137020048f54e1a4dc7af1761b94a379e5565456105bf`  
		Last Modified: Fri, 23 Oct 2026 18:19:32 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4d03965009e9d62cf6ecdddf830a04372fb88fd952f710b0e7edc702dea5272`  
		Last Modified: Fri, 23 Oct 2026 18:19:33 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea4e2c2f3e4e056ac27fcafb3568b7f90bd241d53835dcf4282ba38f3fd63845`  
		Last Modified: Fri, 23 Oct 2026 18:19:33 GMT  
		Size: 365.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cd9ecc34ce7ca312bbac27598c17ca46c237add8675335caf89790640263784`  
		Last Modified: Fri, 23 Oct 2026 18:19:34 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8.34.13-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:6db6c7706b30de665f353f2ba75bb808f0c520720833d51676d489e01a8a1b0a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 KB (27578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b22bf55380c4d4149d53682f116397bba0dc49446c30d8bf347e5f2acbd925f6`

```dockerfile
```

-	Layers:
	-	`sha256:9ecc4e63fcdb865375b144fa3dac60d6aae2129cf269f9bece9974cdc549243e`  
		Last Modified: Fri, 23 Oct 2026 18:19:32 GMT  
		Size: 27.6 KB (27578 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.9`

```console
$ docker pull clickhouse@sha256:d6809a1739bc702b67277b2e4fb1a74a9771fa7517ad33ab75c002314710cac8
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
$ docker pull clickhouse@sha256:85024bf288f6bb363393ae77a23104448bcc58a052f3f8e24fb46d758b5fc1ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.6 MB (272590440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff9b18e34d1d51d7ae04ace7e18e38f7fe4d1354076ec336a29ea1813db56290`
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
# Fri, 23 Oct 2026 18:18:37 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 23 Oct 2026 18:18:37 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 23 Oct 2026 18:18:37 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 23 Oct 2026 18:18:37 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 23 Oct 2026 18:18:37 GMT
ARG REPO_CHANNEL=stable
# Fri, 23 Oct 2026 18:18:37 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 23 Oct 2026 18:18:37 GMT
ARG VERSION=26.9.25.15
# Fri, 23 Oct 2026 18:18:37 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 23 Oct 2026 18:19:10 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 23 Oct 2026 18:19:11 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 23 Oct 2026 18:19:12 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 23 Oct 2026 18:19:12 GMT
ENV LANG=en_US.UTF-8
# Fri, 23 Oct 2026 18:19:12 GMT
ENV TZ=UTC
# Fri, 23 Oct 2026 18:19:12 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 23 Oct 2026 18:19:12 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 23 Oct 2026 18:19:12 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 23 Oct 2026 18:19:12 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 23 Oct 2026 18:19:12 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 23 Oct 2026 18:19:12 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 23 Oct 2026 18:19:12 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2908c4fa36d87b4ba1206721a9efe744e0e9b35d1437148222276c744aa6efa0`  
		Last Modified: Fri, 02 Oct 2026 11:08:32 GMT  
		Size: 27.7 MB (27684723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:417753575110d857732dcea862e2eca32b4074dbf34b2b9f95dfb3291894b081`  
		Last Modified: Fri, 23 Oct 2026 18:19:34 GMT  
		Size: 7.5 MB (7533916 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:281b38640d05218ed020668a04dfc47434e955dac10a3b193143c19b17083ca7`  
		Last Modified: Fri, 23 Oct 2026 18:19:39 GMT  
		Size: 236.5 MB (236501492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db002ff8e61a358ebfc66669d95e56d9076bcf15f32155edd0f473aeb23fc185`  
		Last Modified: Fri, 23 Oct 2026 18:19:34 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7074764106720f7c7e435208697f6278122467065e267b8aac43ce102dc369dd`  
		Last Modified: Fri, 23 Oct 2026 18:19:34 GMT  
		Size: 865.7 KB (865748 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce7a0754be96b2c0c57d6c5155c132ed6f6cfd4b6a96272fec6307f706c8b52f`  
		Last Modified: Fri, 23 Oct 2026 18:19:35 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d20022057cf4baf4ba78a66c161ea00a6c5efcfc0c4db5755e56a2bde7522a23`  
		Last Modified: Fri, 23 Oct 2026 18:19:35 GMT  
		Size: 358.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3825d670914f7271ed388ec49694ac169861affdb9c6d4b8b09c10d248dc948`  
		Last Modified: Fri, 23 Oct 2026 18:19:36 GMT  
		Size: 3.9 KB (3902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9` - unknown; unknown

```console
$ docker pull clickhouse@sha256:084a424cc8ffc2065d3c87ceaee450e0d8dd5247784c4dbaf78ffed7cb4d4fbe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.0 KB (28008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a199b048de5bbacb173cd73efe952d5f9d4d9b1a28627e2b9aea1cb9f4100ad1`

```dockerfile
```

-	Layers:
	-	`sha256:299f9841810e726e8e7b276ae72a66598ac98ea0f3cb4a53a0672603a1817323`  
		Last Modified: Fri, 23 Oct 2026 18:19:34 GMT  
		Size: 28.0 KB (28008 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.9-jammy`

```console
$ docker pull clickhouse@sha256:d6809a1739bc702b67277b2e4fb1a74a9771fa7517ad33ab75c002314710cac8
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
$ docker pull clickhouse@sha256:85024bf288f6bb363393ae77a23104448bcc58a052f3f8e24fb46d758b5fc1ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.6 MB (272590440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff9b18e34d1d51d7ae04ace7e18e38f7fe4d1354076ec336a29ea1813db56290`
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
# Fri, 23 Oct 2026 18:18:37 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 23 Oct 2026 18:18:37 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 23 Oct 2026 18:18:37 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 23 Oct 2026 18:18:37 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 23 Oct 2026 18:18:37 GMT
ARG REPO_CHANNEL=stable
# Fri, 23 Oct 2026 18:18:37 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 23 Oct 2026 18:18:37 GMT
ARG VERSION=26.9.25.15
# Fri, 23 Oct 2026 18:18:37 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 23 Oct 2026 18:19:10 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 23 Oct 2026 18:19:11 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 23 Oct 2026 18:19:12 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 23 Oct 2026 18:19:12 GMT
ENV LANG=en_US.UTF-8
# Fri, 23 Oct 2026 18:19:12 GMT
ENV TZ=UTC
# Fri, 23 Oct 2026 18:19:12 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 23 Oct 2026 18:19:12 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 23 Oct 2026 18:19:12 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 23 Oct 2026 18:19:12 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 23 Oct 2026 18:19:12 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 23 Oct 2026 18:19:12 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 23 Oct 2026 18:19:12 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2908c4fa36d87b4ba1206721a9efe744e0e9b35d1437148222276c744aa6efa0`  
		Last Modified: Fri, 02 Oct 2026 11:08:32 GMT  
		Size: 27.7 MB (27684723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:417753575110d857732dcea862e2eca32b4074dbf34b2b9f95dfb3291894b081`  
		Last Modified: Fri, 23 Oct 2026 18:19:34 GMT  
		Size: 7.5 MB (7533916 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:281b38640d05218ed020668a04dfc47434e955dac10a3b193143c19b17083ca7`  
		Last Modified: Fri, 23 Oct 2026 18:19:39 GMT  
		Size: 236.5 MB (236501492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db002ff8e61a358ebfc66669d95e56d9076bcf15f32155edd0f473aeb23fc185`  
		Last Modified: Fri, 23 Oct 2026 18:19:34 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7074764106720f7c7e435208697f6278122467065e267b8aac43ce102dc369dd`  
		Last Modified: Fri, 23 Oct 2026 18:19:34 GMT  
		Size: 865.7 KB (865748 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce7a0754be96b2c0c57d6c5155c132ed6f6cfd4b6a96272fec6307f706c8b52f`  
		Last Modified: Fri, 23 Oct 2026 18:19:35 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d20022057cf4baf4ba78a66c161ea00a6c5efcfc0c4db5755e56a2bde7522a23`  
		Last Modified: Fri, 23 Oct 2026 18:19:35 GMT  
		Size: 358.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3825d670914f7271ed388ec49694ac169861affdb9c6d4b8b09c10d248dc948`  
		Last Modified: Fri, 23 Oct 2026 18:19:36 GMT  
		Size: 3.9 KB (3902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:084a424cc8ffc2065d3c87ceaee450e0d8dd5247784c4dbaf78ffed7cb4d4fbe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.0 KB (28008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a199b048de5bbacb173cd73efe952d5f9d4d9b1a28627e2b9aea1cb9f4100ad1`

```dockerfile
```

-	Layers:
	-	`sha256:299f9841810e726e8e7b276ae72a66598ac98ea0f3cb4a53a0672603a1817323`  
		Last Modified: Fri, 23 Oct 2026 18:19:34 GMT  
		Size: 28.0 KB (28008 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.9.25`

```console
$ docker pull clickhouse@sha256:d6809a1739bc702b67277b2e4fb1a74a9771fa7517ad33ab75c002314710cac8
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
$ docker pull clickhouse@sha256:85024bf288f6bb363393ae77a23104448bcc58a052f3f8e24fb46d758b5fc1ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.6 MB (272590440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff9b18e34d1d51d7ae04ace7e18e38f7fe4d1354076ec336a29ea1813db56290`
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
# Fri, 23 Oct 2026 18:18:37 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 23 Oct 2026 18:18:37 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 23 Oct 2026 18:18:37 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 23 Oct 2026 18:18:37 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 23 Oct 2026 18:18:37 GMT
ARG REPO_CHANNEL=stable
# Fri, 23 Oct 2026 18:18:37 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 23 Oct 2026 18:18:37 GMT
ARG VERSION=26.9.25.15
# Fri, 23 Oct 2026 18:18:37 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 23 Oct 2026 18:19:10 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 23 Oct 2026 18:19:11 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 23 Oct 2026 18:19:12 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 23 Oct 2026 18:19:12 GMT
ENV LANG=en_US.UTF-8
# Fri, 23 Oct 2026 18:19:12 GMT
ENV TZ=UTC
# Fri, 23 Oct 2026 18:19:12 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 23 Oct 2026 18:19:12 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 23 Oct 2026 18:19:12 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 23 Oct 2026 18:19:12 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 23 Oct 2026 18:19:12 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 23 Oct 2026 18:19:12 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 23 Oct 2026 18:19:12 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2908c4fa36d87b4ba1206721a9efe744e0e9b35d1437148222276c744aa6efa0`  
		Last Modified: Fri, 02 Oct 2026 11:08:32 GMT  
		Size: 27.7 MB (27684723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:417753575110d857732dcea862e2eca32b4074dbf34b2b9f95dfb3291894b081`  
		Last Modified: Fri, 23 Oct 2026 18:19:34 GMT  
		Size: 7.5 MB (7533916 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:281b38640d05218ed020668a04dfc47434e955dac10a3b193143c19b17083ca7`  
		Last Modified: Fri, 23 Oct 2026 18:19:39 GMT  
		Size: 236.5 MB (236501492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db002ff8e61a358ebfc66669d95e56d9076bcf15f32155edd0f473aeb23fc185`  
		Last Modified: Fri, 23 Oct 2026 18:19:34 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7074764106720f7c7e435208697f6278122467065e267b8aac43ce102dc369dd`  
		Last Modified: Fri, 23 Oct 2026 18:19:34 GMT  
		Size: 865.7 KB (865748 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce7a0754be96b2c0c57d6c5155c132ed6f6cfd4b6a96272fec6307f706c8b52f`  
		Last Modified: Fri, 23 Oct 2026 18:19:35 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d20022057cf4baf4ba78a66c161ea00a6c5efcfc0c4db5755e56a2bde7522a23`  
		Last Modified: Fri, 23 Oct 2026 18:19:35 GMT  
		Size: 358.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3825d670914f7271ed388ec49694ac169861affdb9c6d4b8b09c10d248dc948`  
		Last Modified: Fri, 23 Oct 2026 18:19:36 GMT  
		Size: 3.9 KB (3902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9.25` - unknown; unknown

```console
$ docker pull clickhouse@sha256:084a424cc8ffc2065d3c87ceaee450e0d8dd5247784c4dbaf78ffed7cb4d4fbe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.0 KB (28008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a199b048de5bbacb173cd73efe952d5f9d4d9b1a28627e2b9aea1cb9f4100ad1`

```dockerfile
```

-	Layers:
	-	`sha256:299f9841810e726e8e7b276ae72a66598ac98ea0f3cb4a53a0672603a1817323`  
		Last Modified: Fri, 23 Oct 2026 18:19:34 GMT  
		Size: 28.0 KB (28008 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.9.25-jammy`

```console
$ docker pull clickhouse@sha256:d6809a1739bc702b67277b2e4fb1a74a9771fa7517ad33ab75c002314710cac8
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
$ docker pull clickhouse@sha256:85024bf288f6bb363393ae77a23104448bcc58a052f3f8e24fb46d758b5fc1ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.6 MB (272590440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff9b18e34d1d51d7ae04ace7e18e38f7fe4d1354076ec336a29ea1813db56290`
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
# Fri, 23 Oct 2026 18:18:37 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 23 Oct 2026 18:18:37 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 23 Oct 2026 18:18:37 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 23 Oct 2026 18:18:37 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 23 Oct 2026 18:18:37 GMT
ARG REPO_CHANNEL=stable
# Fri, 23 Oct 2026 18:18:37 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 23 Oct 2026 18:18:37 GMT
ARG VERSION=26.9.25.15
# Fri, 23 Oct 2026 18:18:37 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 23 Oct 2026 18:19:10 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 23 Oct 2026 18:19:11 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 23 Oct 2026 18:19:12 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 23 Oct 2026 18:19:12 GMT
ENV LANG=en_US.UTF-8
# Fri, 23 Oct 2026 18:19:12 GMT
ENV TZ=UTC
# Fri, 23 Oct 2026 18:19:12 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 23 Oct 2026 18:19:12 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 23 Oct 2026 18:19:12 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 23 Oct 2026 18:19:12 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 23 Oct 2026 18:19:12 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 23 Oct 2026 18:19:12 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 23 Oct 2026 18:19:12 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2908c4fa36d87b4ba1206721a9efe744e0e9b35d1437148222276c744aa6efa0`  
		Last Modified: Fri, 02 Oct 2026 11:08:32 GMT  
		Size: 27.7 MB (27684723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:417753575110d857732dcea862e2eca32b4074dbf34b2b9f95dfb3291894b081`  
		Last Modified: Fri, 23 Oct 2026 18:19:34 GMT  
		Size: 7.5 MB (7533916 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:281b38640d05218ed020668a04dfc47434e955dac10a3b193143c19b17083ca7`  
		Last Modified: Fri, 23 Oct 2026 18:19:39 GMT  
		Size: 236.5 MB (236501492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db002ff8e61a358ebfc66669d95e56d9076bcf15f32155edd0f473aeb23fc185`  
		Last Modified: Fri, 23 Oct 2026 18:19:34 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7074764106720f7c7e435208697f6278122467065e267b8aac43ce102dc369dd`  
		Last Modified: Fri, 23 Oct 2026 18:19:34 GMT  
		Size: 865.7 KB (865748 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce7a0754be96b2c0c57d6c5155c132ed6f6cfd4b6a96272fec6307f706c8b52f`  
		Last Modified: Fri, 23 Oct 2026 18:19:35 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d20022057cf4baf4ba78a66c161ea00a6c5efcfc0c4db5755e56a2bde7522a23`  
		Last Modified: Fri, 23 Oct 2026 18:19:35 GMT  
		Size: 358.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3825d670914f7271ed388ec49694ac169861affdb9c6d4b8b09c10d248dc948`  
		Last Modified: Fri, 23 Oct 2026 18:19:36 GMT  
		Size: 3.9 KB (3902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9.25-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:084a424cc8ffc2065d3c87ceaee450e0d8dd5247784c4dbaf78ffed7cb4d4fbe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.0 KB (28008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a199b048de5bbacb173cd73efe952d5f9d4d9b1a28627e2b9aea1cb9f4100ad1`

```dockerfile
```

-	Layers:
	-	`sha256:299f9841810e726e8e7b276ae72a66598ac98ea0f3cb4a53a0672603a1817323`  
		Last Modified: Fri, 23 Oct 2026 18:19:34 GMT  
		Size: 28.0 KB (28008 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.9.25.15`

```console
$ docker pull clickhouse@sha256:d6809a1739bc702b67277b2e4fb1a74a9771fa7517ad33ab75c002314710cac8
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
$ docker pull clickhouse@sha256:85024bf288f6bb363393ae77a23104448bcc58a052f3f8e24fb46d758b5fc1ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.6 MB (272590440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff9b18e34d1d51d7ae04ace7e18e38f7fe4d1354076ec336a29ea1813db56290`
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
# Fri, 23 Oct 2026 18:18:37 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 23 Oct 2026 18:18:37 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 23 Oct 2026 18:18:37 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 23 Oct 2026 18:18:37 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 23 Oct 2026 18:18:37 GMT
ARG REPO_CHANNEL=stable
# Fri, 23 Oct 2026 18:18:37 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 23 Oct 2026 18:18:37 GMT
ARG VERSION=26.9.25.15
# Fri, 23 Oct 2026 18:18:37 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 23 Oct 2026 18:19:10 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 23 Oct 2026 18:19:11 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 23 Oct 2026 18:19:12 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 23 Oct 2026 18:19:12 GMT
ENV LANG=en_US.UTF-8
# Fri, 23 Oct 2026 18:19:12 GMT
ENV TZ=UTC
# Fri, 23 Oct 2026 18:19:12 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 23 Oct 2026 18:19:12 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 23 Oct 2026 18:19:12 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 23 Oct 2026 18:19:12 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 23 Oct 2026 18:19:12 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 23 Oct 2026 18:19:12 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 23 Oct 2026 18:19:12 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2908c4fa36d87b4ba1206721a9efe744e0e9b35d1437148222276c744aa6efa0`  
		Last Modified: Fri, 02 Oct 2026 11:08:32 GMT  
		Size: 27.7 MB (27684723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:417753575110d857732dcea862e2eca32b4074dbf34b2b9f95dfb3291894b081`  
		Last Modified: Fri, 23 Oct 2026 18:19:34 GMT  
		Size: 7.5 MB (7533916 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:281b38640d05218ed020668a04dfc47434e955dac10a3b193143c19b17083ca7`  
		Last Modified: Fri, 23 Oct 2026 18:19:39 GMT  
		Size: 236.5 MB (236501492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db002ff8e61a358ebfc66669d95e56d9076bcf15f32155edd0f473aeb23fc185`  
		Last Modified: Fri, 23 Oct 2026 18:19:34 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7074764106720f7c7e435208697f6278122467065e267b8aac43ce102dc369dd`  
		Last Modified: Fri, 23 Oct 2026 18:19:34 GMT  
		Size: 865.7 KB (865748 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce7a0754be96b2c0c57d6c5155c132ed6f6cfd4b6a96272fec6307f706c8b52f`  
		Last Modified: Fri, 23 Oct 2026 18:19:35 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d20022057cf4baf4ba78a66c161ea00a6c5efcfc0c4db5755e56a2bde7522a23`  
		Last Modified: Fri, 23 Oct 2026 18:19:35 GMT  
		Size: 358.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3825d670914f7271ed388ec49694ac169861affdb9c6d4b8b09c10d248dc948`  
		Last Modified: Fri, 23 Oct 2026 18:19:36 GMT  
		Size: 3.9 KB (3902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9.25.15` - unknown; unknown

```console
$ docker pull clickhouse@sha256:084a424cc8ffc2065d3c87ceaee450e0d8dd5247784c4dbaf78ffed7cb4d4fbe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.0 KB (28008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a199b048de5bbacb173cd73efe952d5f9d4d9b1a28627e2b9aea1cb9f4100ad1`

```dockerfile
```

-	Layers:
	-	`sha256:299f9841810e726e8e7b276ae72a66598ac98ea0f3cb4a53a0672603a1817323`  
		Last Modified: Fri, 23 Oct 2026 18:19:34 GMT  
		Size: 28.0 KB (28008 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.9.25.15-jammy`

```console
$ docker pull clickhouse@sha256:d6809a1739bc702b67277b2e4fb1a74a9771fa7517ad33ab75c002314710cac8
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
$ docker pull clickhouse@sha256:85024bf288f6bb363393ae77a23104448bcc58a052f3f8e24fb46d758b5fc1ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.6 MB (272590440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff9b18e34d1d51d7ae04ace7e18e38f7fe4d1354076ec336a29ea1813db56290`
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
# Fri, 23 Oct 2026 18:18:37 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 23 Oct 2026 18:18:37 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 23 Oct 2026 18:18:37 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 23 Oct 2026 18:18:37 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 23 Oct 2026 18:18:37 GMT
ARG REPO_CHANNEL=stable
# Fri, 23 Oct 2026 18:18:37 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 23 Oct 2026 18:18:37 GMT
ARG VERSION=26.9.25.15
# Fri, 23 Oct 2026 18:18:37 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 23 Oct 2026 18:19:10 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 23 Oct 2026 18:19:11 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 23 Oct 2026 18:19:12 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 23 Oct 2026 18:19:12 GMT
ENV LANG=en_US.UTF-8
# Fri, 23 Oct 2026 18:19:12 GMT
ENV TZ=UTC
# Fri, 23 Oct 2026 18:19:12 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 23 Oct 2026 18:19:12 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 23 Oct 2026 18:19:12 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 23 Oct 2026 18:19:12 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 23 Oct 2026 18:19:12 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 23 Oct 2026 18:19:12 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 23 Oct 2026 18:19:12 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2908c4fa36d87b4ba1206721a9efe744e0e9b35d1437148222276c744aa6efa0`  
		Last Modified: Fri, 02 Oct 2026 11:08:32 GMT  
		Size: 27.7 MB (27684723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:417753575110d857732dcea862e2eca32b4074dbf34b2b9f95dfb3291894b081`  
		Last Modified: Fri, 23 Oct 2026 18:19:34 GMT  
		Size: 7.5 MB (7533916 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:281b38640d05218ed020668a04dfc47434e955dac10a3b193143c19b17083ca7`  
		Last Modified: Fri, 23 Oct 2026 18:19:39 GMT  
		Size: 236.5 MB (236501492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db002ff8e61a358ebfc66669d95e56d9076bcf15f32155edd0f473aeb23fc185`  
		Last Modified: Fri, 23 Oct 2026 18:19:34 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7074764106720f7c7e435208697f6278122467065e267b8aac43ce102dc369dd`  
		Last Modified: Fri, 23 Oct 2026 18:19:34 GMT  
		Size: 865.7 KB (865748 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce7a0754be96b2c0c57d6c5155c132ed6f6cfd4b6a96272fec6307f706c8b52f`  
		Last Modified: Fri, 23 Oct 2026 18:19:35 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d20022057cf4baf4ba78a66c161ea00a6c5efcfc0c4db5755e56a2bde7522a23`  
		Last Modified: Fri, 23 Oct 2026 18:19:35 GMT  
		Size: 358.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3825d670914f7271ed388ec49694ac169861affdb9c6d4b8b09c10d248dc948`  
		Last Modified: Fri, 23 Oct 2026 18:19:36 GMT  
		Size: 3.9 KB (3902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9.25.15-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:084a424cc8ffc2065d3c87ceaee450e0d8dd5247784c4dbaf78ffed7cb4d4fbe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.0 KB (28008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a199b048de5bbacb173cd73efe952d5f9d4d9b1a28627e2b9aea1cb9f4100ad1`

```dockerfile
```

-	Layers:
	-	`sha256:299f9841810e726e8e7b276ae72a66598ac98ea0f3cb4a53a0672603a1817323`  
		Last Modified: Fri, 23 Oct 2026 18:19:34 GMT  
		Size: 28.0 KB (28008 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:jammy`

```console
$ docker pull clickhouse@sha256:d6809a1739bc702b67277b2e4fb1a74a9771fa7517ad33ab75c002314710cac8
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
$ docker pull clickhouse@sha256:85024bf288f6bb363393ae77a23104448bcc58a052f3f8e24fb46d758b5fc1ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.6 MB (272590440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff9b18e34d1d51d7ae04ace7e18e38f7fe4d1354076ec336a29ea1813db56290`
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
# Fri, 23 Oct 2026 18:18:37 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 23 Oct 2026 18:18:37 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 23 Oct 2026 18:18:37 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 23 Oct 2026 18:18:37 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 23 Oct 2026 18:18:37 GMT
ARG REPO_CHANNEL=stable
# Fri, 23 Oct 2026 18:18:37 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 23 Oct 2026 18:18:37 GMT
ARG VERSION=26.9.25.15
# Fri, 23 Oct 2026 18:18:37 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 23 Oct 2026 18:19:10 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 23 Oct 2026 18:19:11 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 23 Oct 2026 18:19:12 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 23 Oct 2026 18:19:12 GMT
ENV LANG=en_US.UTF-8
# Fri, 23 Oct 2026 18:19:12 GMT
ENV TZ=UTC
# Fri, 23 Oct 2026 18:19:12 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 23 Oct 2026 18:19:12 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 23 Oct 2026 18:19:12 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 23 Oct 2026 18:19:12 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 23 Oct 2026 18:19:12 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 23 Oct 2026 18:19:12 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 23 Oct 2026 18:19:12 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2908c4fa36d87b4ba1206721a9efe744e0e9b35d1437148222276c744aa6efa0`  
		Last Modified: Fri, 02 Oct 2026 11:08:32 GMT  
		Size: 27.7 MB (27684723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:417753575110d857732dcea862e2eca32b4074dbf34b2b9f95dfb3291894b081`  
		Last Modified: Fri, 23 Oct 2026 18:19:34 GMT  
		Size: 7.5 MB (7533916 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:281b38640d05218ed020668a04dfc47434e955dac10a3b193143c19b17083ca7`  
		Last Modified: Fri, 23 Oct 2026 18:19:39 GMT  
		Size: 236.5 MB (236501492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db002ff8e61a358ebfc66669d95e56d9076bcf15f32155edd0f473aeb23fc185`  
		Last Modified: Fri, 23 Oct 2026 18:19:34 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7074764106720f7c7e435208697f6278122467065e267b8aac43ce102dc369dd`  
		Last Modified: Fri, 23 Oct 2026 18:19:34 GMT  
		Size: 865.7 KB (865748 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce7a0754be96b2c0c57d6c5155c132ed6f6cfd4b6a96272fec6307f706c8b52f`  
		Last Modified: Fri, 23 Oct 2026 18:19:35 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d20022057cf4baf4ba78a66c161ea00a6c5efcfc0c4db5755e56a2bde7522a23`  
		Last Modified: Fri, 23 Oct 2026 18:19:35 GMT  
		Size: 358.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3825d670914f7271ed388ec49694ac169861affdb9c6d4b8b09c10d248dc948`  
		Last Modified: Fri, 23 Oct 2026 18:19:36 GMT  
		Size: 3.9 KB (3902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:084a424cc8ffc2065d3c87ceaee450e0d8dd5247784c4dbaf78ffed7cb4d4fbe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.0 KB (28008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a199b048de5bbacb173cd73efe952d5f9d4d9b1a28627e2b9aea1cb9f4100ad1`

```dockerfile
```

-	Layers:
	-	`sha256:299f9841810e726e8e7b276ae72a66598ac98ea0f3cb4a53a0672603a1817323`  
		Last Modified: Fri, 23 Oct 2026 18:19:34 GMT  
		Size: 28.0 KB (28008 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:latest`

```console
$ docker pull clickhouse@sha256:d6809a1739bc702b67277b2e4fb1a74a9771fa7517ad33ab75c002314710cac8
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
$ docker pull clickhouse@sha256:85024bf288f6bb363393ae77a23104448bcc58a052f3f8e24fb46d758b5fc1ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.6 MB (272590440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff9b18e34d1d51d7ae04ace7e18e38f7fe4d1354076ec336a29ea1813db56290`
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
# Fri, 23 Oct 2026 18:18:37 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 23 Oct 2026 18:18:37 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 23 Oct 2026 18:18:37 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 23 Oct 2026 18:18:37 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 23 Oct 2026 18:18:37 GMT
ARG REPO_CHANNEL=stable
# Fri, 23 Oct 2026 18:18:37 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 23 Oct 2026 18:18:37 GMT
ARG VERSION=26.9.25.15
# Fri, 23 Oct 2026 18:18:37 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 23 Oct 2026 18:19:10 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 23 Oct 2026 18:19:11 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 23 Oct 2026 18:19:12 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 23 Oct 2026 18:19:12 GMT
ENV LANG=en_US.UTF-8
# Fri, 23 Oct 2026 18:19:12 GMT
ENV TZ=UTC
# Fri, 23 Oct 2026 18:19:12 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 23 Oct 2026 18:19:12 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 23 Oct 2026 18:19:12 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 23 Oct 2026 18:19:12 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 23 Oct 2026 18:19:12 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 23 Oct 2026 18:19:12 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 23 Oct 2026 18:19:12 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2908c4fa36d87b4ba1206721a9efe744e0e9b35d1437148222276c744aa6efa0`  
		Last Modified: Fri, 02 Oct 2026 11:08:32 GMT  
		Size: 27.7 MB (27684723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:417753575110d857732dcea862e2eca32b4074dbf34b2b9f95dfb3291894b081`  
		Last Modified: Fri, 23 Oct 2026 18:19:34 GMT  
		Size: 7.5 MB (7533916 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:281b38640d05218ed020668a04dfc47434e955dac10a3b193143c19b17083ca7`  
		Last Modified: Fri, 23 Oct 2026 18:19:39 GMT  
		Size: 236.5 MB (236501492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db002ff8e61a358ebfc66669d95e56d9076bcf15f32155edd0f473aeb23fc185`  
		Last Modified: Fri, 23 Oct 2026 18:19:34 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7074764106720f7c7e435208697f6278122467065e267b8aac43ce102dc369dd`  
		Last Modified: Fri, 23 Oct 2026 18:19:34 GMT  
		Size: 865.7 KB (865748 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce7a0754be96b2c0c57d6c5155c132ed6f6cfd4b6a96272fec6307f706c8b52f`  
		Last Modified: Fri, 23 Oct 2026 18:19:35 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d20022057cf4baf4ba78a66c161ea00a6c5efcfc0c4db5755e56a2bde7522a23`  
		Last Modified: Fri, 23 Oct 2026 18:19:35 GMT  
		Size: 358.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3825d670914f7271ed388ec49694ac169861affdb9c6d4b8b09c10d248dc948`  
		Last Modified: Fri, 23 Oct 2026 18:19:36 GMT  
		Size: 3.9 KB (3902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:latest` - unknown; unknown

```console
$ docker pull clickhouse@sha256:084a424cc8ffc2065d3c87ceaee450e0d8dd5247784c4dbaf78ffed7cb4d4fbe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.0 KB (28008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a199b048de5bbacb173cd73efe952d5f9d4d9b1a28627e2b9aea1cb9f4100ad1`

```dockerfile
```

-	Layers:
	-	`sha256:299f9841810e726e8e7b276ae72a66598ac98ea0f3cb4a53a0672603a1817323`  
		Last Modified: Fri, 23 Oct 2026 18:19:34 GMT  
		Size: 28.0 KB (28008 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:lts`

```console
$ docker pull clickhouse@sha256:ff960d041cabee97a44245ee510da593a05884cbc14d2001703a97d703815638
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
$ docker pull clickhouse@sha256:fed475960cb2bdba7f3a38596203c84aef406358fc0b1522cf001339d216084d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.8 MB (262819847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:297917b248af627ceb58528d436baa7a5a0d0a3a903415b6882de22f28db6706`
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
# Fri, 23 Oct 2026 18:18:38 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 23 Oct 2026 18:18:38 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 23 Oct 2026 18:18:38 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 23 Oct 2026 18:18:38 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 23 Oct 2026 18:18:38 GMT
ARG REPO_CHANNEL=stable
# Fri, 23 Oct 2026 18:18:38 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 23 Oct 2026 18:18:38 GMT
ARG VERSION=26.8.34.13
# Fri, 23 Oct 2026 18:18:38 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 23 Oct 2026 18:19:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 23 Oct 2026 18:19:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 23 Oct 2026 18:19:10 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 23 Oct 2026 18:19:10 GMT
ENV LANG=en_US.UTF-8
# Fri, 23 Oct 2026 18:19:10 GMT
ENV TZ=UTC
# Fri, 23 Oct 2026 18:19:10 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 23 Oct 2026 18:19:10 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 23 Oct 2026 18:19:10 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 23 Oct 2026 18:19:10 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 23 Oct 2026 18:19:10 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 23 Oct 2026 18:19:10 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 23 Oct 2026 18:19:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2908c4fa36d87b4ba1206721a9efe744e0e9b35d1437148222276c744aa6efa0`  
		Last Modified: Fri, 02 Oct 2026 11:08:32 GMT  
		Size: 27.7 MB (27684723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:088cffa1273e696a209819137c8d5b9c932c2e2da3b28ac515c066aa9d16652f`  
		Last Modified: Fri, 23 Oct 2026 18:19:32 GMT  
		Size: 7.5 MB (7533931 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d5765f9b225c10c1352db7df2f732ffd8c97f29914346d83e840c157da2c8b3`  
		Last Modified: Fri, 23 Oct 2026 18:19:37 GMT  
		Size: 226.7 MB (226731138 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d6e45b627450789eb14123cd88b0585cb2bfb4fbf20c2024344dfac4f3bb427`  
		Last Modified: Fri, 23 Oct 2026 18:19:32 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17a7300fa245e35668c137020048f54e1a4dc7af1761b94a379e5565456105bf`  
		Last Modified: Fri, 23 Oct 2026 18:19:32 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4d03965009e9d62cf6ecdddf830a04372fb88fd952f710b0e7edc702dea5272`  
		Last Modified: Fri, 23 Oct 2026 18:19:33 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea4e2c2f3e4e056ac27fcafb3568b7f90bd241d53835dcf4282ba38f3fd63845`  
		Last Modified: Fri, 23 Oct 2026 18:19:33 GMT  
		Size: 365.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cd9ecc34ce7ca312bbac27598c17ca46c237add8675335caf89790640263784`  
		Last Modified: Fri, 23 Oct 2026 18:19:34 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:lts` - unknown; unknown

```console
$ docker pull clickhouse@sha256:6db6c7706b30de665f353f2ba75bb808f0c520720833d51676d489e01a8a1b0a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 KB (27578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b22bf55380c4d4149d53682f116397bba0dc49446c30d8bf347e5f2acbd925f6`

```dockerfile
```

-	Layers:
	-	`sha256:9ecc4e63fcdb865375b144fa3dac60d6aae2129cf269f9bece9974cdc549243e`  
		Last Modified: Fri, 23 Oct 2026 18:19:32 GMT  
		Size: 27.6 KB (27578 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:lts-jammy`

```console
$ docker pull clickhouse@sha256:ff960d041cabee97a44245ee510da593a05884cbc14d2001703a97d703815638
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
$ docker pull clickhouse@sha256:fed475960cb2bdba7f3a38596203c84aef406358fc0b1522cf001339d216084d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.8 MB (262819847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:297917b248af627ceb58528d436baa7a5a0d0a3a903415b6882de22f28db6706`
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
# Fri, 23 Oct 2026 18:18:38 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 23 Oct 2026 18:18:38 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 23 Oct 2026 18:18:38 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 23 Oct 2026 18:18:38 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 23 Oct 2026 18:18:38 GMT
ARG REPO_CHANNEL=stable
# Fri, 23 Oct 2026 18:18:38 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 23 Oct 2026 18:18:38 GMT
ARG VERSION=26.8.34.13
# Fri, 23 Oct 2026 18:18:38 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 23 Oct 2026 18:19:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 23 Oct 2026 18:19:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 23 Oct 2026 18:19:10 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 23 Oct 2026 18:19:10 GMT
ENV LANG=en_US.UTF-8
# Fri, 23 Oct 2026 18:19:10 GMT
ENV TZ=UTC
# Fri, 23 Oct 2026 18:19:10 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 23 Oct 2026 18:19:10 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 23 Oct 2026 18:19:10 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 23 Oct 2026 18:19:10 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 23 Oct 2026 18:19:10 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 23 Oct 2026 18:19:10 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 23 Oct 2026 18:19:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2908c4fa36d87b4ba1206721a9efe744e0e9b35d1437148222276c744aa6efa0`  
		Last Modified: Fri, 02 Oct 2026 11:08:32 GMT  
		Size: 27.7 MB (27684723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:088cffa1273e696a209819137c8d5b9c932c2e2da3b28ac515c066aa9d16652f`  
		Last Modified: Fri, 23 Oct 2026 18:19:32 GMT  
		Size: 7.5 MB (7533931 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d5765f9b225c10c1352db7df2f732ffd8c97f29914346d83e840c157da2c8b3`  
		Last Modified: Fri, 23 Oct 2026 18:19:37 GMT  
		Size: 226.7 MB (226731138 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d6e45b627450789eb14123cd88b0585cb2bfb4fbf20c2024344dfac4f3bb427`  
		Last Modified: Fri, 23 Oct 2026 18:19:32 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17a7300fa245e35668c137020048f54e1a4dc7af1761b94a379e5565456105bf`  
		Last Modified: Fri, 23 Oct 2026 18:19:32 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4d03965009e9d62cf6ecdddf830a04372fb88fd952f710b0e7edc702dea5272`  
		Last Modified: Fri, 23 Oct 2026 18:19:33 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea4e2c2f3e4e056ac27fcafb3568b7f90bd241d53835dcf4282ba38f3fd63845`  
		Last Modified: Fri, 23 Oct 2026 18:19:33 GMT  
		Size: 365.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cd9ecc34ce7ca312bbac27598c17ca46c237add8675335caf89790640263784`  
		Last Modified: Fri, 23 Oct 2026 18:19:34 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:lts-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:6db6c7706b30de665f353f2ba75bb808f0c520720833d51676d489e01a8a1b0a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 KB (27578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b22bf55380c4d4149d53682f116397bba0dc49446c30d8bf347e5f2acbd925f6`

```dockerfile
```

-	Layers:
	-	`sha256:9ecc4e63fcdb865375b144fa3dac60d6aae2129cf269f9bece9974cdc549243e`  
		Last Modified: Fri, 23 Oct 2026 18:19:32 GMT  
		Size: 27.6 KB (27578 bytes)  
		MIME: application/vnd.in-toto+json
