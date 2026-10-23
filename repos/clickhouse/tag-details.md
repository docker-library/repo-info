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
$ docker pull clickhouse@sha256:473976281335aaa52f908f871d69127bafc79009c849f6ecbd7eb62b526dc271
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.3` - linux; amd64

```console
$ docker pull clickhouse@sha256:d2e1312b19eae0976399bd7fa8e5b468ab8bc88d4915aaabe3423bae0d91eeef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.0 MB (267017568 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1293a573250e2e5f09f611a6538d4651c1dccd8a492c318a44d8b6c1d872c525`
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
# Fri, 23 Oct 2026 18:18:55 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 23 Oct 2026 18:18:55 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 23 Oct 2026 18:18:55 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 23 Oct 2026 18:18:55 GMT
ARG REPO_CHANNEL=stable
# Fri, 23 Oct 2026 18:18:55 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 23 Oct 2026 18:18:55 GMT
ARG VERSION=26.3.59.10
# Fri, 23 Oct 2026 18:18:55 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 23 Oct 2026 18:19:25 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.59.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 23 Oct 2026 18:19:25 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.59.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 23 Oct 2026 18:19:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.59.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 23 Oct 2026 18:19:26 GMT
ENV LANG=en_US.UTF-8
# Fri, 23 Oct 2026 18:19:26 GMT
ENV TZ=UTC
# Fri, 23 Oct 2026 18:19:27 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.59.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 23 Oct 2026 18:19:27 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 23 Oct 2026 18:19:27 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 23 Oct 2026 18:19:27 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 23 Oct 2026 18:19:27 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 23 Oct 2026 18:19:27 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 23 Oct 2026 18:19:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:cf1a5487baaf7d71eb78fd0888933c6cdecb40e59edb896511aa0ef4a896031e`  
		Last Modified: Fri, 02 Oct 2026 11:08:26 GMT  
		Size: 29.8 MB (29752476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebe54bdbdcbe736ef434a586d0a86cfd1a098be701fb54016f4693c16076174f`  
		Last Modified: Fri, 23 Oct 2026 18:19:53 GMT  
		Size: 7.6 MB (7551037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5d4e9f10df99e7892827454b1e75e929090b04b771ec158f69dd859135cf22b`  
		Last Modified: Fri, 23 Oct 2026 18:19:57 GMT  
		Size: 228.8 MB (228844009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f6ee9e095c69a1851f73d80944dad5b7d33cc1f8d4f58f55b71e049496bbc01`  
		Last Modified: Fri, 23 Oct 2026 18:19:52 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c1e1b0f8cf4cd223c1368f35da4ab9ef1228c4feac9e9190aef916ec1df0020`  
		Last Modified: Fri, 23 Oct 2026 18:19:52 GMT  
		Size: 865.7 KB (865746 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:184f1cfb2d9c80bd11ddf7689b6d1fff7111498c1d9dfe2dcd1a568f2b1b64d1`  
		Last Modified: Fri, 23 Oct 2026 18:19:53 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e65b39f23fdc58bf49fa6a3c50c91c9e3517ba9a7c89380fe39a4829f942a25`  
		Last Modified: Fri, 23 Oct 2026 18:19:54 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4da12a794f79c4ca32d2a9c17ac63c36b1e6d92dfb314c8fed83fea2b9510af9`  
		Last Modified: Fri, 23 Oct 2026 18:19:54 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3` - unknown; unknown

```console
$ docker pull clickhouse@sha256:b0453c09b0164a01567a5d56da14a3499824bb3f61fcd54fb8947cd1f0bf41b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c47bc5652fdf9c380ac7720f36daabef424157e62ab9d271028ec979ef25b0f9`

```dockerfile
```

-	Layers:
	-	`sha256:eef3b2d467e81133a39ceebd49dadf17534e062eb8e98daaedfb271466c7f1c6`  
		Last Modified: Fri, 23 Oct 2026 18:19:52 GMT  
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
$ docker pull clickhouse@sha256:473976281335aaa52f908f871d69127bafc79009c849f6ecbd7eb62b526dc271
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.3-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:d2e1312b19eae0976399bd7fa8e5b468ab8bc88d4915aaabe3423bae0d91eeef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.0 MB (267017568 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1293a573250e2e5f09f611a6538d4651c1dccd8a492c318a44d8b6c1d872c525`
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
# Fri, 23 Oct 2026 18:18:55 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 23 Oct 2026 18:18:55 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 23 Oct 2026 18:18:55 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 23 Oct 2026 18:18:55 GMT
ARG REPO_CHANNEL=stable
# Fri, 23 Oct 2026 18:18:55 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 23 Oct 2026 18:18:55 GMT
ARG VERSION=26.3.59.10
# Fri, 23 Oct 2026 18:18:55 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 23 Oct 2026 18:19:25 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.59.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 23 Oct 2026 18:19:25 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.59.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 23 Oct 2026 18:19:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.59.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 23 Oct 2026 18:19:26 GMT
ENV LANG=en_US.UTF-8
# Fri, 23 Oct 2026 18:19:26 GMT
ENV TZ=UTC
# Fri, 23 Oct 2026 18:19:27 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.59.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 23 Oct 2026 18:19:27 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 23 Oct 2026 18:19:27 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 23 Oct 2026 18:19:27 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 23 Oct 2026 18:19:27 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 23 Oct 2026 18:19:27 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 23 Oct 2026 18:19:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:cf1a5487baaf7d71eb78fd0888933c6cdecb40e59edb896511aa0ef4a896031e`  
		Last Modified: Fri, 02 Oct 2026 11:08:26 GMT  
		Size: 29.8 MB (29752476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebe54bdbdcbe736ef434a586d0a86cfd1a098be701fb54016f4693c16076174f`  
		Last Modified: Fri, 23 Oct 2026 18:19:53 GMT  
		Size: 7.6 MB (7551037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5d4e9f10df99e7892827454b1e75e929090b04b771ec158f69dd859135cf22b`  
		Last Modified: Fri, 23 Oct 2026 18:19:57 GMT  
		Size: 228.8 MB (228844009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f6ee9e095c69a1851f73d80944dad5b7d33cc1f8d4f58f55b71e049496bbc01`  
		Last Modified: Fri, 23 Oct 2026 18:19:52 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c1e1b0f8cf4cd223c1368f35da4ab9ef1228c4feac9e9190aef916ec1df0020`  
		Last Modified: Fri, 23 Oct 2026 18:19:52 GMT  
		Size: 865.7 KB (865746 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:184f1cfb2d9c80bd11ddf7689b6d1fff7111498c1d9dfe2dcd1a568f2b1b64d1`  
		Last Modified: Fri, 23 Oct 2026 18:19:53 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e65b39f23fdc58bf49fa6a3c50c91c9e3517ba9a7c89380fe39a4829f942a25`  
		Last Modified: Fri, 23 Oct 2026 18:19:54 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4da12a794f79c4ca32d2a9c17ac63c36b1e6d92dfb314c8fed83fea2b9510af9`  
		Last Modified: Fri, 23 Oct 2026 18:19:54 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:b0453c09b0164a01567a5d56da14a3499824bb3f61fcd54fb8947cd1f0bf41b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c47bc5652fdf9c380ac7720f36daabef424157e62ab9d271028ec979ef25b0f9`

```dockerfile
```

-	Layers:
	-	`sha256:eef3b2d467e81133a39ceebd49dadf17534e062eb8e98daaedfb271466c7f1c6`  
		Last Modified: Fri, 23 Oct 2026 18:19:52 GMT  
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
$ docker pull clickhouse@sha256:473976281335aaa52f908f871d69127bafc79009c849f6ecbd7eb62b526dc271
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.3.59` - linux; amd64

```console
$ docker pull clickhouse@sha256:d2e1312b19eae0976399bd7fa8e5b468ab8bc88d4915aaabe3423bae0d91eeef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.0 MB (267017568 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1293a573250e2e5f09f611a6538d4651c1dccd8a492c318a44d8b6c1d872c525`
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
# Fri, 23 Oct 2026 18:18:55 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 23 Oct 2026 18:18:55 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 23 Oct 2026 18:18:55 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 23 Oct 2026 18:18:55 GMT
ARG REPO_CHANNEL=stable
# Fri, 23 Oct 2026 18:18:55 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 23 Oct 2026 18:18:55 GMT
ARG VERSION=26.3.59.10
# Fri, 23 Oct 2026 18:18:55 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 23 Oct 2026 18:19:25 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.59.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 23 Oct 2026 18:19:25 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.59.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 23 Oct 2026 18:19:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.59.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 23 Oct 2026 18:19:26 GMT
ENV LANG=en_US.UTF-8
# Fri, 23 Oct 2026 18:19:26 GMT
ENV TZ=UTC
# Fri, 23 Oct 2026 18:19:27 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.59.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 23 Oct 2026 18:19:27 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 23 Oct 2026 18:19:27 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 23 Oct 2026 18:19:27 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 23 Oct 2026 18:19:27 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 23 Oct 2026 18:19:27 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 23 Oct 2026 18:19:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:cf1a5487baaf7d71eb78fd0888933c6cdecb40e59edb896511aa0ef4a896031e`  
		Last Modified: Fri, 02 Oct 2026 11:08:26 GMT  
		Size: 29.8 MB (29752476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebe54bdbdcbe736ef434a586d0a86cfd1a098be701fb54016f4693c16076174f`  
		Last Modified: Fri, 23 Oct 2026 18:19:53 GMT  
		Size: 7.6 MB (7551037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5d4e9f10df99e7892827454b1e75e929090b04b771ec158f69dd859135cf22b`  
		Last Modified: Fri, 23 Oct 2026 18:19:57 GMT  
		Size: 228.8 MB (228844009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f6ee9e095c69a1851f73d80944dad5b7d33cc1f8d4f58f55b71e049496bbc01`  
		Last Modified: Fri, 23 Oct 2026 18:19:52 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c1e1b0f8cf4cd223c1368f35da4ab9ef1228c4feac9e9190aef916ec1df0020`  
		Last Modified: Fri, 23 Oct 2026 18:19:52 GMT  
		Size: 865.7 KB (865746 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:184f1cfb2d9c80bd11ddf7689b6d1fff7111498c1d9dfe2dcd1a568f2b1b64d1`  
		Last Modified: Fri, 23 Oct 2026 18:19:53 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e65b39f23fdc58bf49fa6a3c50c91c9e3517ba9a7c89380fe39a4829f942a25`  
		Last Modified: Fri, 23 Oct 2026 18:19:54 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4da12a794f79c4ca32d2a9c17ac63c36b1e6d92dfb314c8fed83fea2b9510af9`  
		Last Modified: Fri, 23 Oct 2026 18:19:54 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.59` - unknown; unknown

```console
$ docker pull clickhouse@sha256:b0453c09b0164a01567a5d56da14a3499824bb3f61fcd54fb8947cd1f0bf41b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c47bc5652fdf9c380ac7720f36daabef424157e62ab9d271028ec979ef25b0f9`

```dockerfile
```

-	Layers:
	-	`sha256:eef3b2d467e81133a39ceebd49dadf17534e062eb8e98daaedfb271466c7f1c6`  
		Last Modified: Fri, 23 Oct 2026 18:19:52 GMT  
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
$ docker pull clickhouse@sha256:473976281335aaa52f908f871d69127bafc79009c849f6ecbd7eb62b526dc271
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.3.59-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:d2e1312b19eae0976399bd7fa8e5b468ab8bc88d4915aaabe3423bae0d91eeef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.0 MB (267017568 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1293a573250e2e5f09f611a6538d4651c1dccd8a492c318a44d8b6c1d872c525`
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
# Fri, 23 Oct 2026 18:18:55 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 23 Oct 2026 18:18:55 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 23 Oct 2026 18:18:55 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 23 Oct 2026 18:18:55 GMT
ARG REPO_CHANNEL=stable
# Fri, 23 Oct 2026 18:18:55 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 23 Oct 2026 18:18:55 GMT
ARG VERSION=26.3.59.10
# Fri, 23 Oct 2026 18:18:55 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 23 Oct 2026 18:19:25 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.59.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 23 Oct 2026 18:19:25 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.59.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 23 Oct 2026 18:19:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.59.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 23 Oct 2026 18:19:26 GMT
ENV LANG=en_US.UTF-8
# Fri, 23 Oct 2026 18:19:26 GMT
ENV TZ=UTC
# Fri, 23 Oct 2026 18:19:27 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.59.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 23 Oct 2026 18:19:27 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 23 Oct 2026 18:19:27 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 23 Oct 2026 18:19:27 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 23 Oct 2026 18:19:27 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 23 Oct 2026 18:19:27 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 23 Oct 2026 18:19:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:cf1a5487baaf7d71eb78fd0888933c6cdecb40e59edb896511aa0ef4a896031e`  
		Last Modified: Fri, 02 Oct 2026 11:08:26 GMT  
		Size: 29.8 MB (29752476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebe54bdbdcbe736ef434a586d0a86cfd1a098be701fb54016f4693c16076174f`  
		Last Modified: Fri, 23 Oct 2026 18:19:53 GMT  
		Size: 7.6 MB (7551037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5d4e9f10df99e7892827454b1e75e929090b04b771ec158f69dd859135cf22b`  
		Last Modified: Fri, 23 Oct 2026 18:19:57 GMT  
		Size: 228.8 MB (228844009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f6ee9e095c69a1851f73d80944dad5b7d33cc1f8d4f58f55b71e049496bbc01`  
		Last Modified: Fri, 23 Oct 2026 18:19:52 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c1e1b0f8cf4cd223c1368f35da4ab9ef1228c4feac9e9190aef916ec1df0020`  
		Last Modified: Fri, 23 Oct 2026 18:19:52 GMT  
		Size: 865.7 KB (865746 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:184f1cfb2d9c80bd11ddf7689b6d1fff7111498c1d9dfe2dcd1a568f2b1b64d1`  
		Last Modified: Fri, 23 Oct 2026 18:19:53 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e65b39f23fdc58bf49fa6a3c50c91c9e3517ba9a7c89380fe39a4829f942a25`  
		Last Modified: Fri, 23 Oct 2026 18:19:54 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4da12a794f79c4ca32d2a9c17ac63c36b1e6d92dfb314c8fed83fea2b9510af9`  
		Last Modified: Fri, 23 Oct 2026 18:19:54 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.59-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:b0453c09b0164a01567a5d56da14a3499824bb3f61fcd54fb8947cd1f0bf41b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c47bc5652fdf9c380ac7720f36daabef424157e62ab9d271028ec979ef25b0f9`

```dockerfile
```

-	Layers:
	-	`sha256:eef3b2d467e81133a39ceebd49dadf17534e062eb8e98daaedfb271466c7f1c6`  
		Last Modified: Fri, 23 Oct 2026 18:19:52 GMT  
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
$ docker pull clickhouse@sha256:473976281335aaa52f908f871d69127bafc79009c849f6ecbd7eb62b526dc271
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.3.59.10` - linux; amd64

```console
$ docker pull clickhouse@sha256:d2e1312b19eae0976399bd7fa8e5b468ab8bc88d4915aaabe3423bae0d91eeef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.0 MB (267017568 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1293a573250e2e5f09f611a6538d4651c1dccd8a492c318a44d8b6c1d872c525`
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
# Fri, 23 Oct 2026 18:18:55 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 23 Oct 2026 18:18:55 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 23 Oct 2026 18:18:55 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 23 Oct 2026 18:18:55 GMT
ARG REPO_CHANNEL=stable
# Fri, 23 Oct 2026 18:18:55 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 23 Oct 2026 18:18:55 GMT
ARG VERSION=26.3.59.10
# Fri, 23 Oct 2026 18:18:55 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 23 Oct 2026 18:19:25 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.59.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 23 Oct 2026 18:19:25 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.59.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 23 Oct 2026 18:19:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.59.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 23 Oct 2026 18:19:26 GMT
ENV LANG=en_US.UTF-8
# Fri, 23 Oct 2026 18:19:26 GMT
ENV TZ=UTC
# Fri, 23 Oct 2026 18:19:27 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.59.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 23 Oct 2026 18:19:27 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 23 Oct 2026 18:19:27 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 23 Oct 2026 18:19:27 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 23 Oct 2026 18:19:27 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 23 Oct 2026 18:19:27 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 23 Oct 2026 18:19:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:cf1a5487baaf7d71eb78fd0888933c6cdecb40e59edb896511aa0ef4a896031e`  
		Last Modified: Fri, 02 Oct 2026 11:08:26 GMT  
		Size: 29.8 MB (29752476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebe54bdbdcbe736ef434a586d0a86cfd1a098be701fb54016f4693c16076174f`  
		Last Modified: Fri, 23 Oct 2026 18:19:53 GMT  
		Size: 7.6 MB (7551037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5d4e9f10df99e7892827454b1e75e929090b04b771ec158f69dd859135cf22b`  
		Last Modified: Fri, 23 Oct 2026 18:19:57 GMT  
		Size: 228.8 MB (228844009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f6ee9e095c69a1851f73d80944dad5b7d33cc1f8d4f58f55b71e049496bbc01`  
		Last Modified: Fri, 23 Oct 2026 18:19:52 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c1e1b0f8cf4cd223c1368f35da4ab9ef1228c4feac9e9190aef916ec1df0020`  
		Last Modified: Fri, 23 Oct 2026 18:19:52 GMT  
		Size: 865.7 KB (865746 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:184f1cfb2d9c80bd11ddf7689b6d1fff7111498c1d9dfe2dcd1a568f2b1b64d1`  
		Last Modified: Fri, 23 Oct 2026 18:19:53 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e65b39f23fdc58bf49fa6a3c50c91c9e3517ba9a7c89380fe39a4829f942a25`  
		Last Modified: Fri, 23 Oct 2026 18:19:54 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4da12a794f79c4ca32d2a9c17ac63c36b1e6d92dfb314c8fed83fea2b9510af9`  
		Last Modified: Fri, 23 Oct 2026 18:19:54 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.59.10` - unknown; unknown

```console
$ docker pull clickhouse@sha256:b0453c09b0164a01567a5d56da14a3499824bb3f61fcd54fb8947cd1f0bf41b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c47bc5652fdf9c380ac7720f36daabef424157e62ab9d271028ec979ef25b0f9`

```dockerfile
```

-	Layers:
	-	`sha256:eef3b2d467e81133a39ceebd49dadf17534e062eb8e98daaedfb271466c7f1c6`  
		Last Modified: Fri, 23 Oct 2026 18:19:52 GMT  
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
$ docker pull clickhouse@sha256:473976281335aaa52f908f871d69127bafc79009c849f6ecbd7eb62b526dc271
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.3.59.10-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:d2e1312b19eae0976399bd7fa8e5b468ab8bc88d4915aaabe3423bae0d91eeef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.0 MB (267017568 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1293a573250e2e5f09f611a6538d4651c1dccd8a492c318a44d8b6c1d872c525`
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
# Fri, 23 Oct 2026 18:18:55 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 23 Oct 2026 18:18:55 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 23 Oct 2026 18:18:55 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 23 Oct 2026 18:18:55 GMT
ARG REPO_CHANNEL=stable
# Fri, 23 Oct 2026 18:18:55 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 23 Oct 2026 18:18:55 GMT
ARG VERSION=26.3.59.10
# Fri, 23 Oct 2026 18:18:55 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 23 Oct 2026 18:19:25 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.59.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 23 Oct 2026 18:19:25 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.59.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 23 Oct 2026 18:19:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.59.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 23 Oct 2026 18:19:26 GMT
ENV LANG=en_US.UTF-8
# Fri, 23 Oct 2026 18:19:26 GMT
ENV TZ=UTC
# Fri, 23 Oct 2026 18:19:27 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.59.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 23 Oct 2026 18:19:27 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 23 Oct 2026 18:19:27 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 23 Oct 2026 18:19:27 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 23 Oct 2026 18:19:27 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 23 Oct 2026 18:19:27 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 23 Oct 2026 18:19:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:cf1a5487baaf7d71eb78fd0888933c6cdecb40e59edb896511aa0ef4a896031e`  
		Last Modified: Fri, 02 Oct 2026 11:08:26 GMT  
		Size: 29.8 MB (29752476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebe54bdbdcbe736ef434a586d0a86cfd1a098be701fb54016f4693c16076174f`  
		Last Modified: Fri, 23 Oct 2026 18:19:53 GMT  
		Size: 7.6 MB (7551037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5d4e9f10df99e7892827454b1e75e929090b04b771ec158f69dd859135cf22b`  
		Last Modified: Fri, 23 Oct 2026 18:19:57 GMT  
		Size: 228.8 MB (228844009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f6ee9e095c69a1851f73d80944dad5b7d33cc1f8d4f58f55b71e049496bbc01`  
		Last Modified: Fri, 23 Oct 2026 18:19:52 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c1e1b0f8cf4cd223c1368f35da4ab9ef1228c4feac9e9190aef916ec1df0020`  
		Last Modified: Fri, 23 Oct 2026 18:19:52 GMT  
		Size: 865.7 KB (865746 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:184f1cfb2d9c80bd11ddf7689b6d1fff7111498c1d9dfe2dcd1a568f2b1b64d1`  
		Last Modified: Fri, 23 Oct 2026 18:19:53 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e65b39f23fdc58bf49fa6a3c50c91c9e3517ba9a7c89380fe39a4829f942a25`  
		Last Modified: Fri, 23 Oct 2026 18:19:54 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4da12a794f79c4ca32d2a9c17ac63c36b1e6d92dfb314c8fed83fea2b9510af9`  
		Last Modified: Fri, 23 Oct 2026 18:19:54 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.59.10-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:b0453c09b0164a01567a5d56da14a3499824bb3f61fcd54fb8947cd1f0bf41b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c47bc5652fdf9c380ac7720f36daabef424157e62ab9d271028ec979ef25b0f9`

```dockerfile
```

-	Layers:
	-	`sha256:eef3b2d467e81133a39ceebd49dadf17534e062eb8e98daaedfb271466c7f1c6`  
		Last Modified: Fri, 23 Oct 2026 18:19:52 GMT  
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
$ docker pull clickhouse@sha256:5676cb7da8fe51a99b4bd1d1e21ca0c823150aa96185c95a17be7fa7c908aa83
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.7` - linux; amd64

```console
$ docker pull clickhouse@sha256:246b55e90243dc3d6d0a8c772f60e3e45739831881a87b6409fb3bf4f5e9a048
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.4 MB (268390736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b45852cd1dd7eef962b0e15eba9f7a3fe985a6f90405ec086b919d73323e7cb`
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
# Fri, 23 Oct 2026 18:18:51 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 23 Oct 2026 18:18:51 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 23 Oct 2026 18:18:51 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 23 Oct 2026 18:18:51 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 23 Oct 2026 18:18:51 GMT
ARG REPO_CHANNEL=stable
# Fri, 23 Oct 2026 18:18:51 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 23 Oct 2026 18:18:51 GMT
ARG VERSION=26.7.37.6
# Fri, 23 Oct 2026 18:18:51 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 23 Oct 2026 18:19:20 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.37.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 23 Oct 2026 18:19:20 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.37.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 23 Oct 2026 18:19:21 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.37.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 23 Oct 2026 18:19:21 GMT
ENV LANG=en_US.UTF-8
# Fri, 23 Oct 2026 18:19:21 GMT
ENV TZ=UTC
# Fri, 23 Oct 2026 18:19:21 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.37.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 23 Oct 2026 18:19:21 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 23 Oct 2026 18:19:21 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 23 Oct 2026 18:19:21 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 23 Oct 2026 18:19:21 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 23 Oct 2026 18:19:21 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 23 Oct 2026 18:19:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:cf1a5487baaf7d71eb78fd0888933c6cdecb40e59edb896511aa0ef4a896031e`  
		Last Modified: Fri, 02 Oct 2026 11:08:26 GMT  
		Size: 29.8 MB (29752476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:139c1378c53dc214e346e62b522284eedafcdc1716517798d88006fa3b07633d`  
		Last Modified: Fri, 23 Oct 2026 18:19:47 GMT  
		Size: 7.6 MB (7550875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a408c168f75620803524d477276bf925b339f916a59dacd565f5875b59b8e1b3`  
		Last Modified: Fri, 23 Oct 2026 18:19:51 GMT  
		Size: 230.2 MB (230217338 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:459f56b58e126861c4aa3e372933d72bd62db04b657e8fd71381da1a0044542e`  
		Last Modified: Fri, 23 Oct 2026 18:19:46 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a2fe670e15b23b951766e25d43d05e08a469a49bff54e7ea4e8bc8f9061ec5e`  
		Last Modified: Fri, 23 Oct 2026 18:19:47 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:324626cca44207da85c8fe3957a8e048a3663462ae2729badb9d11f325c3eb71`  
		Last Modified: Fri, 23 Oct 2026 18:19:48 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e1f994673a1e58ea4496d69cbfbcd18eaca7f8945a4057e41f548b0b4a87f2e`  
		Last Modified: Fri, 23 Oct 2026 18:19:48 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98f92ce8e96ea5778c200b2157821cfdbd865637a5e4bcd11407d7ce5e276170`  
		Last Modified: Fri, 23 Oct 2026 18:19:48 GMT  
		Size: 3.6 KB (3636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7` - unknown; unknown

```console
$ docker pull clickhouse@sha256:1832e70bfa48af6236a96131a67228c4b9f126994574426116aab478fa41b756
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.7 KB (26739 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f163a95eccfd384189566af2485c394b9bf106ae530b7117f8f1e2f795f7d3b`

```dockerfile
```

-	Layers:
	-	`sha256:1754361aa35be69fea9b8d04732aec554ae870514f83e139acef60d0e3d3dbd6`  
		Last Modified: Fri, 23 Oct 2026 18:19:46 GMT  
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
$ docker pull clickhouse@sha256:5676cb7da8fe51a99b4bd1d1e21ca0c823150aa96185c95a17be7fa7c908aa83
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.7-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:246b55e90243dc3d6d0a8c772f60e3e45739831881a87b6409fb3bf4f5e9a048
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.4 MB (268390736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b45852cd1dd7eef962b0e15eba9f7a3fe985a6f90405ec086b919d73323e7cb`
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
# Fri, 23 Oct 2026 18:18:51 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 23 Oct 2026 18:18:51 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 23 Oct 2026 18:18:51 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 23 Oct 2026 18:18:51 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 23 Oct 2026 18:18:51 GMT
ARG REPO_CHANNEL=stable
# Fri, 23 Oct 2026 18:18:51 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 23 Oct 2026 18:18:51 GMT
ARG VERSION=26.7.37.6
# Fri, 23 Oct 2026 18:18:51 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 23 Oct 2026 18:19:20 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.37.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 23 Oct 2026 18:19:20 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.37.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 23 Oct 2026 18:19:21 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.37.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 23 Oct 2026 18:19:21 GMT
ENV LANG=en_US.UTF-8
# Fri, 23 Oct 2026 18:19:21 GMT
ENV TZ=UTC
# Fri, 23 Oct 2026 18:19:21 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.37.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 23 Oct 2026 18:19:21 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 23 Oct 2026 18:19:21 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 23 Oct 2026 18:19:21 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 23 Oct 2026 18:19:21 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 23 Oct 2026 18:19:21 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 23 Oct 2026 18:19:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:cf1a5487baaf7d71eb78fd0888933c6cdecb40e59edb896511aa0ef4a896031e`  
		Last Modified: Fri, 02 Oct 2026 11:08:26 GMT  
		Size: 29.8 MB (29752476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:139c1378c53dc214e346e62b522284eedafcdc1716517798d88006fa3b07633d`  
		Last Modified: Fri, 23 Oct 2026 18:19:47 GMT  
		Size: 7.6 MB (7550875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a408c168f75620803524d477276bf925b339f916a59dacd565f5875b59b8e1b3`  
		Last Modified: Fri, 23 Oct 2026 18:19:51 GMT  
		Size: 230.2 MB (230217338 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:459f56b58e126861c4aa3e372933d72bd62db04b657e8fd71381da1a0044542e`  
		Last Modified: Fri, 23 Oct 2026 18:19:46 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a2fe670e15b23b951766e25d43d05e08a469a49bff54e7ea4e8bc8f9061ec5e`  
		Last Modified: Fri, 23 Oct 2026 18:19:47 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:324626cca44207da85c8fe3957a8e048a3663462ae2729badb9d11f325c3eb71`  
		Last Modified: Fri, 23 Oct 2026 18:19:48 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e1f994673a1e58ea4496d69cbfbcd18eaca7f8945a4057e41f548b0b4a87f2e`  
		Last Modified: Fri, 23 Oct 2026 18:19:48 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98f92ce8e96ea5778c200b2157821cfdbd865637a5e4bcd11407d7ce5e276170`  
		Last Modified: Fri, 23 Oct 2026 18:19:48 GMT  
		Size: 3.6 KB (3636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:1832e70bfa48af6236a96131a67228c4b9f126994574426116aab478fa41b756
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.7 KB (26739 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f163a95eccfd384189566af2485c394b9bf106ae530b7117f8f1e2f795f7d3b`

```dockerfile
```

-	Layers:
	-	`sha256:1754361aa35be69fea9b8d04732aec554ae870514f83e139acef60d0e3d3dbd6`  
		Last Modified: Fri, 23 Oct 2026 18:19:46 GMT  
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
$ docker pull clickhouse@sha256:5676cb7da8fe51a99b4bd1d1e21ca0c823150aa96185c95a17be7fa7c908aa83
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.7.37` - linux; amd64

```console
$ docker pull clickhouse@sha256:246b55e90243dc3d6d0a8c772f60e3e45739831881a87b6409fb3bf4f5e9a048
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.4 MB (268390736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b45852cd1dd7eef962b0e15eba9f7a3fe985a6f90405ec086b919d73323e7cb`
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
# Fri, 23 Oct 2026 18:18:51 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 23 Oct 2026 18:18:51 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 23 Oct 2026 18:18:51 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 23 Oct 2026 18:18:51 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 23 Oct 2026 18:18:51 GMT
ARG REPO_CHANNEL=stable
# Fri, 23 Oct 2026 18:18:51 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 23 Oct 2026 18:18:51 GMT
ARG VERSION=26.7.37.6
# Fri, 23 Oct 2026 18:18:51 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 23 Oct 2026 18:19:20 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.37.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 23 Oct 2026 18:19:20 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.37.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 23 Oct 2026 18:19:21 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.37.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 23 Oct 2026 18:19:21 GMT
ENV LANG=en_US.UTF-8
# Fri, 23 Oct 2026 18:19:21 GMT
ENV TZ=UTC
# Fri, 23 Oct 2026 18:19:21 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.37.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 23 Oct 2026 18:19:21 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 23 Oct 2026 18:19:21 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 23 Oct 2026 18:19:21 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 23 Oct 2026 18:19:21 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 23 Oct 2026 18:19:21 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 23 Oct 2026 18:19:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:cf1a5487baaf7d71eb78fd0888933c6cdecb40e59edb896511aa0ef4a896031e`  
		Last Modified: Fri, 02 Oct 2026 11:08:26 GMT  
		Size: 29.8 MB (29752476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:139c1378c53dc214e346e62b522284eedafcdc1716517798d88006fa3b07633d`  
		Last Modified: Fri, 23 Oct 2026 18:19:47 GMT  
		Size: 7.6 MB (7550875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a408c168f75620803524d477276bf925b339f916a59dacd565f5875b59b8e1b3`  
		Last Modified: Fri, 23 Oct 2026 18:19:51 GMT  
		Size: 230.2 MB (230217338 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:459f56b58e126861c4aa3e372933d72bd62db04b657e8fd71381da1a0044542e`  
		Last Modified: Fri, 23 Oct 2026 18:19:46 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a2fe670e15b23b951766e25d43d05e08a469a49bff54e7ea4e8bc8f9061ec5e`  
		Last Modified: Fri, 23 Oct 2026 18:19:47 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:324626cca44207da85c8fe3957a8e048a3663462ae2729badb9d11f325c3eb71`  
		Last Modified: Fri, 23 Oct 2026 18:19:48 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e1f994673a1e58ea4496d69cbfbcd18eaca7f8945a4057e41f548b0b4a87f2e`  
		Last Modified: Fri, 23 Oct 2026 18:19:48 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98f92ce8e96ea5778c200b2157821cfdbd865637a5e4bcd11407d7ce5e276170`  
		Last Modified: Fri, 23 Oct 2026 18:19:48 GMT  
		Size: 3.6 KB (3636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7.37` - unknown; unknown

```console
$ docker pull clickhouse@sha256:1832e70bfa48af6236a96131a67228c4b9f126994574426116aab478fa41b756
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.7 KB (26739 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f163a95eccfd384189566af2485c394b9bf106ae530b7117f8f1e2f795f7d3b`

```dockerfile
```

-	Layers:
	-	`sha256:1754361aa35be69fea9b8d04732aec554ae870514f83e139acef60d0e3d3dbd6`  
		Last Modified: Fri, 23 Oct 2026 18:19:46 GMT  
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
$ docker pull clickhouse@sha256:5676cb7da8fe51a99b4bd1d1e21ca0c823150aa96185c95a17be7fa7c908aa83
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.7.37-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:246b55e90243dc3d6d0a8c772f60e3e45739831881a87b6409fb3bf4f5e9a048
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.4 MB (268390736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b45852cd1dd7eef962b0e15eba9f7a3fe985a6f90405ec086b919d73323e7cb`
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
# Fri, 23 Oct 2026 18:18:51 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 23 Oct 2026 18:18:51 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 23 Oct 2026 18:18:51 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 23 Oct 2026 18:18:51 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 23 Oct 2026 18:18:51 GMT
ARG REPO_CHANNEL=stable
# Fri, 23 Oct 2026 18:18:51 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 23 Oct 2026 18:18:51 GMT
ARG VERSION=26.7.37.6
# Fri, 23 Oct 2026 18:18:51 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 23 Oct 2026 18:19:20 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.37.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 23 Oct 2026 18:19:20 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.37.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 23 Oct 2026 18:19:21 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.37.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 23 Oct 2026 18:19:21 GMT
ENV LANG=en_US.UTF-8
# Fri, 23 Oct 2026 18:19:21 GMT
ENV TZ=UTC
# Fri, 23 Oct 2026 18:19:21 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.37.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 23 Oct 2026 18:19:21 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 23 Oct 2026 18:19:21 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 23 Oct 2026 18:19:21 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 23 Oct 2026 18:19:21 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 23 Oct 2026 18:19:21 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 23 Oct 2026 18:19:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:cf1a5487baaf7d71eb78fd0888933c6cdecb40e59edb896511aa0ef4a896031e`  
		Last Modified: Fri, 02 Oct 2026 11:08:26 GMT  
		Size: 29.8 MB (29752476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:139c1378c53dc214e346e62b522284eedafcdc1716517798d88006fa3b07633d`  
		Last Modified: Fri, 23 Oct 2026 18:19:47 GMT  
		Size: 7.6 MB (7550875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a408c168f75620803524d477276bf925b339f916a59dacd565f5875b59b8e1b3`  
		Last Modified: Fri, 23 Oct 2026 18:19:51 GMT  
		Size: 230.2 MB (230217338 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:459f56b58e126861c4aa3e372933d72bd62db04b657e8fd71381da1a0044542e`  
		Last Modified: Fri, 23 Oct 2026 18:19:46 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a2fe670e15b23b951766e25d43d05e08a469a49bff54e7ea4e8bc8f9061ec5e`  
		Last Modified: Fri, 23 Oct 2026 18:19:47 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:324626cca44207da85c8fe3957a8e048a3663462ae2729badb9d11f325c3eb71`  
		Last Modified: Fri, 23 Oct 2026 18:19:48 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e1f994673a1e58ea4496d69cbfbcd18eaca7f8945a4057e41f548b0b4a87f2e`  
		Last Modified: Fri, 23 Oct 2026 18:19:48 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98f92ce8e96ea5778c200b2157821cfdbd865637a5e4bcd11407d7ce5e276170`  
		Last Modified: Fri, 23 Oct 2026 18:19:48 GMT  
		Size: 3.6 KB (3636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7.37-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:1832e70bfa48af6236a96131a67228c4b9f126994574426116aab478fa41b756
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.7 KB (26739 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f163a95eccfd384189566af2485c394b9bf106ae530b7117f8f1e2f795f7d3b`

```dockerfile
```

-	Layers:
	-	`sha256:1754361aa35be69fea9b8d04732aec554ae870514f83e139acef60d0e3d3dbd6`  
		Last Modified: Fri, 23 Oct 2026 18:19:46 GMT  
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
$ docker pull clickhouse@sha256:5676cb7da8fe51a99b4bd1d1e21ca0c823150aa96185c95a17be7fa7c908aa83
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.7.37.6` - linux; amd64

```console
$ docker pull clickhouse@sha256:246b55e90243dc3d6d0a8c772f60e3e45739831881a87b6409fb3bf4f5e9a048
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.4 MB (268390736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b45852cd1dd7eef962b0e15eba9f7a3fe985a6f90405ec086b919d73323e7cb`
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
# Fri, 23 Oct 2026 18:18:51 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 23 Oct 2026 18:18:51 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 23 Oct 2026 18:18:51 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 23 Oct 2026 18:18:51 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 23 Oct 2026 18:18:51 GMT
ARG REPO_CHANNEL=stable
# Fri, 23 Oct 2026 18:18:51 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 23 Oct 2026 18:18:51 GMT
ARG VERSION=26.7.37.6
# Fri, 23 Oct 2026 18:18:51 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 23 Oct 2026 18:19:20 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.37.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 23 Oct 2026 18:19:20 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.37.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 23 Oct 2026 18:19:21 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.37.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 23 Oct 2026 18:19:21 GMT
ENV LANG=en_US.UTF-8
# Fri, 23 Oct 2026 18:19:21 GMT
ENV TZ=UTC
# Fri, 23 Oct 2026 18:19:21 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.37.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 23 Oct 2026 18:19:21 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 23 Oct 2026 18:19:21 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 23 Oct 2026 18:19:21 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 23 Oct 2026 18:19:21 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 23 Oct 2026 18:19:21 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 23 Oct 2026 18:19:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:cf1a5487baaf7d71eb78fd0888933c6cdecb40e59edb896511aa0ef4a896031e`  
		Last Modified: Fri, 02 Oct 2026 11:08:26 GMT  
		Size: 29.8 MB (29752476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:139c1378c53dc214e346e62b522284eedafcdc1716517798d88006fa3b07633d`  
		Last Modified: Fri, 23 Oct 2026 18:19:47 GMT  
		Size: 7.6 MB (7550875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a408c168f75620803524d477276bf925b339f916a59dacd565f5875b59b8e1b3`  
		Last Modified: Fri, 23 Oct 2026 18:19:51 GMT  
		Size: 230.2 MB (230217338 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:459f56b58e126861c4aa3e372933d72bd62db04b657e8fd71381da1a0044542e`  
		Last Modified: Fri, 23 Oct 2026 18:19:46 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a2fe670e15b23b951766e25d43d05e08a469a49bff54e7ea4e8bc8f9061ec5e`  
		Last Modified: Fri, 23 Oct 2026 18:19:47 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:324626cca44207da85c8fe3957a8e048a3663462ae2729badb9d11f325c3eb71`  
		Last Modified: Fri, 23 Oct 2026 18:19:48 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e1f994673a1e58ea4496d69cbfbcd18eaca7f8945a4057e41f548b0b4a87f2e`  
		Last Modified: Fri, 23 Oct 2026 18:19:48 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98f92ce8e96ea5778c200b2157821cfdbd865637a5e4bcd11407d7ce5e276170`  
		Last Modified: Fri, 23 Oct 2026 18:19:48 GMT  
		Size: 3.6 KB (3636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7.37.6` - unknown; unknown

```console
$ docker pull clickhouse@sha256:1832e70bfa48af6236a96131a67228c4b9f126994574426116aab478fa41b756
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.7 KB (26739 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f163a95eccfd384189566af2485c394b9bf106ae530b7117f8f1e2f795f7d3b`

```dockerfile
```

-	Layers:
	-	`sha256:1754361aa35be69fea9b8d04732aec554ae870514f83e139acef60d0e3d3dbd6`  
		Last Modified: Fri, 23 Oct 2026 18:19:46 GMT  
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
$ docker pull clickhouse@sha256:5676cb7da8fe51a99b4bd1d1e21ca0c823150aa96185c95a17be7fa7c908aa83
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.7.37.6-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:246b55e90243dc3d6d0a8c772f60e3e45739831881a87b6409fb3bf4f5e9a048
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.4 MB (268390736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b45852cd1dd7eef962b0e15eba9f7a3fe985a6f90405ec086b919d73323e7cb`
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
# Fri, 23 Oct 2026 18:18:51 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 23 Oct 2026 18:18:51 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 23 Oct 2026 18:18:51 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 23 Oct 2026 18:18:51 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 23 Oct 2026 18:18:51 GMT
ARG REPO_CHANNEL=stable
# Fri, 23 Oct 2026 18:18:51 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 23 Oct 2026 18:18:51 GMT
ARG VERSION=26.7.37.6
# Fri, 23 Oct 2026 18:18:51 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 23 Oct 2026 18:19:20 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.37.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 23 Oct 2026 18:19:20 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.37.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 23 Oct 2026 18:19:21 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.37.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 23 Oct 2026 18:19:21 GMT
ENV LANG=en_US.UTF-8
# Fri, 23 Oct 2026 18:19:21 GMT
ENV TZ=UTC
# Fri, 23 Oct 2026 18:19:21 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.37.6 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 23 Oct 2026 18:19:21 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 23 Oct 2026 18:19:21 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 23 Oct 2026 18:19:21 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 23 Oct 2026 18:19:21 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 23 Oct 2026 18:19:21 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 23 Oct 2026 18:19:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:cf1a5487baaf7d71eb78fd0888933c6cdecb40e59edb896511aa0ef4a896031e`  
		Last Modified: Fri, 02 Oct 2026 11:08:26 GMT  
		Size: 29.8 MB (29752476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:139c1378c53dc214e346e62b522284eedafcdc1716517798d88006fa3b07633d`  
		Last Modified: Fri, 23 Oct 2026 18:19:47 GMT  
		Size: 7.6 MB (7550875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a408c168f75620803524d477276bf925b339f916a59dacd565f5875b59b8e1b3`  
		Last Modified: Fri, 23 Oct 2026 18:19:51 GMT  
		Size: 230.2 MB (230217338 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:459f56b58e126861c4aa3e372933d72bd62db04b657e8fd71381da1a0044542e`  
		Last Modified: Fri, 23 Oct 2026 18:19:46 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a2fe670e15b23b951766e25d43d05e08a469a49bff54e7ea4e8bc8f9061ec5e`  
		Last Modified: Fri, 23 Oct 2026 18:19:47 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:324626cca44207da85c8fe3957a8e048a3663462ae2729badb9d11f325c3eb71`  
		Last Modified: Fri, 23 Oct 2026 18:19:48 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e1f994673a1e58ea4496d69cbfbcd18eaca7f8945a4057e41f548b0b4a87f2e`  
		Last Modified: Fri, 23 Oct 2026 18:19:48 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98f92ce8e96ea5778c200b2157821cfdbd865637a5e4bcd11407d7ce5e276170`  
		Last Modified: Fri, 23 Oct 2026 18:19:48 GMT  
		Size: 3.6 KB (3636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7.37.6-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:1832e70bfa48af6236a96131a67228c4b9f126994574426116aab478fa41b756
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.7 KB (26739 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f163a95eccfd384189566af2485c394b9bf106ae530b7117f8f1e2f795f7d3b`

```dockerfile
```

-	Layers:
	-	`sha256:1754361aa35be69fea9b8d04732aec554ae870514f83e139acef60d0e3d3dbd6`  
		Last Modified: Fri, 23 Oct 2026 18:19:46 GMT  
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
$ docker pull clickhouse@sha256:c4e61375f2f453de2e456ae3d4640f9ecbae9a552bb48adb4778220524efa981
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.8` - linux; amd64

```console
$ docker pull clickhouse@sha256:3fb9f70e3679f37eb04f7f14bd1b09266a82e8051f580b2442313249bfce71fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.8 MB (279781413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:458383f027418bb6c3879d6c71a14715ce1a465c17a24d1ded5889da6f02c3d2`
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
# Fri, 23 Oct 2026 18:18:44 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 23 Oct 2026 18:18:44 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 23 Oct 2026 18:18:44 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 23 Oct 2026 18:18:44 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 23 Oct 2026 18:18:44 GMT
ARG REPO_CHANNEL=stable
# Fri, 23 Oct 2026 18:18:44 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 23 Oct 2026 18:18:44 GMT
ARG VERSION=26.8.34.13
# Fri, 23 Oct 2026 18:18:44 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 23 Oct 2026 18:19:11 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 23 Oct 2026 18:19:12 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 23 Oct 2026 18:19:12 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 23 Oct 2026 18:19:12 GMT
ENV LANG=en_US.UTF-8
# Fri, 23 Oct 2026 18:19:12 GMT
ENV TZ=UTC
# Fri, 23 Oct 2026 18:19:13 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 23 Oct 2026 18:19:13 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 23 Oct 2026 18:19:13 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 23 Oct 2026 18:19:13 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 23 Oct 2026 18:19:13 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 23 Oct 2026 18:19:13 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 23 Oct 2026 18:19:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:cf1a5487baaf7d71eb78fd0888933c6cdecb40e59edb896511aa0ef4a896031e`  
		Last Modified: Fri, 02 Oct 2026 11:08:26 GMT  
		Size: 29.8 MB (29752476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84499c303187e3eae6d80436e99b5302bacdf2914c5e6d9b4641746151a2d630`  
		Last Modified: Fri, 23 Oct 2026 18:19:36 GMT  
		Size: 7.6 MB (7550870 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e400f8be8ba9f312f68615aa756865270bb23beaeff61e35babb6660954e523`  
		Last Modified: Fri, 23 Oct 2026 18:19:41 GMT  
		Size: 241.6 MB (241608015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acb8beccad576b1555a13b6fc273beec563837258de4d9cd3998d388a135bb50`  
		Last Modified: Fri, 23 Oct 2026 18:19:35 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe8ca37b851668eb30770bc68b358e2c902fed9ce44aad55f2e9fcf753b02741`  
		Last Modified: Fri, 23 Oct 2026 18:19:36 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c352c4ead41cb9c9ddad2f983eeabf5011384b0233322a9099680a7ed1b2ff9a`  
		Last Modified: Fri, 23 Oct 2026 18:19:37 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fa03c3600b762607e25cf11ba19591caff37d10bb928be6606eec0d880857fc`  
		Last Modified: Fri, 23 Oct 2026 18:19:37 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15a135e6e888461979e7d73f4209e38f37dbbe361872fe278a314855611c654e`  
		Last Modified: Fri, 23 Oct 2026 18:19:37 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8` - unknown; unknown

```console
$ docker pull clickhouse@sha256:c8735a70bc63f155d9afa099daf0f65730e7ef6ee92fd9bd4576363dc8845c2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 KB (27366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9354e708f35b97ef89fe2d2c507ac933953d7b1cb970fc802d7a5be7ca00b0e3`

```dockerfile
```

-	Layers:
	-	`sha256:5305f09b0ed1a67d85e5d6c3adee4c60666a6adc55ea9e48dcf7a91d9e7a8b88`  
		Last Modified: Fri, 23 Oct 2026 18:19:35 GMT  
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
$ docker pull clickhouse@sha256:c4e61375f2f453de2e456ae3d4640f9ecbae9a552bb48adb4778220524efa981
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.8-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:3fb9f70e3679f37eb04f7f14bd1b09266a82e8051f580b2442313249bfce71fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.8 MB (279781413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:458383f027418bb6c3879d6c71a14715ce1a465c17a24d1ded5889da6f02c3d2`
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
# Fri, 23 Oct 2026 18:18:44 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 23 Oct 2026 18:18:44 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 23 Oct 2026 18:18:44 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 23 Oct 2026 18:18:44 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 23 Oct 2026 18:18:44 GMT
ARG REPO_CHANNEL=stable
# Fri, 23 Oct 2026 18:18:44 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 23 Oct 2026 18:18:44 GMT
ARG VERSION=26.8.34.13
# Fri, 23 Oct 2026 18:18:44 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 23 Oct 2026 18:19:11 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 23 Oct 2026 18:19:12 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 23 Oct 2026 18:19:12 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 23 Oct 2026 18:19:12 GMT
ENV LANG=en_US.UTF-8
# Fri, 23 Oct 2026 18:19:12 GMT
ENV TZ=UTC
# Fri, 23 Oct 2026 18:19:13 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 23 Oct 2026 18:19:13 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 23 Oct 2026 18:19:13 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 23 Oct 2026 18:19:13 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 23 Oct 2026 18:19:13 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 23 Oct 2026 18:19:13 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 23 Oct 2026 18:19:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:cf1a5487baaf7d71eb78fd0888933c6cdecb40e59edb896511aa0ef4a896031e`  
		Last Modified: Fri, 02 Oct 2026 11:08:26 GMT  
		Size: 29.8 MB (29752476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84499c303187e3eae6d80436e99b5302bacdf2914c5e6d9b4641746151a2d630`  
		Last Modified: Fri, 23 Oct 2026 18:19:36 GMT  
		Size: 7.6 MB (7550870 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e400f8be8ba9f312f68615aa756865270bb23beaeff61e35babb6660954e523`  
		Last Modified: Fri, 23 Oct 2026 18:19:41 GMT  
		Size: 241.6 MB (241608015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acb8beccad576b1555a13b6fc273beec563837258de4d9cd3998d388a135bb50`  
		Last Modified: Fri, 23 Oct 2026 18:19:35 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe8ca37b851668eb30770bc68b358e2c902fed9ce44aad55f2e9fcf753b02741`  
		Last Modified: Fri, 23 Oct 2026 18:19:36 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c352c4ead41cb9c9ddad2f983eeabf5011384b0233322a9099680a7ed1b2ff9a`  
		Last Modified: Fri, 23 Oct 2026 18:19:37 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fa03c3600b762607e25cf11ba19591caff37d10bb928be6606eec0d880857fc`  
		Last Modified: Fri, 23 Oct 2026 18:19:37 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15a135e6e888461979e7d73f4209e38f37dbbe361872fe278a314855611c654e`  
		Last Modified: Fri, 23 Oct 2026 18:19:37 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:c8735a70bc63f155d9afa099daf0f65730e7ef6ee92fd9bd4576363dc8845c2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 KB (27366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9354e708f35b97ef89fe2d2c507ac933953d7b1cb970fc802d7a5be7ca00b0e3`

```dockerfile
```

-	Layers:
	-	`sha256:5305f09b0ed1a67d85e5d6c3adee4c60666a6adc55ea9e48dcf7a91d9e7a8b88`  
		Last Modified: Fri, 23 Oct 2026 18:19:35 GMT  
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
$ docker pull clickhouse@sha256:c4e61375f2f453de2e456ae3d4640f9ecbae9a552bb48adb4778220524efa981
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.8.34` - linux; amd64

```console
$ docker pull clickhouse@sha256:3fb9f70e3679f37eb04f7f14bd1b09266a82e8051f580b2442313249bfce71fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.8 MB (279781413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:458383f027418bb6c3879d6c71a14715ce1a465c17a24d1ded5889da6f02c3d2`
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
# Fri, 23 Oct 2026 18:18:44 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 23 Oct 2026 18:18:44 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 23 Oct 2026 18:18:44 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 23 Oct 2026 18:18:44 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 23 Oct 2026 18:18:44 GMT
ARG REPO_CHANNEL=stable
# Fri, 23 Oct 2026 18:18:44 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 23 Oct 2026 18:18:44 GMT
ARG VERSION=26.8.34.13
# Fri, 23 Oct 2026 18:18:44 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 23 Oct 2026 18:19:11 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 23 Oct 2026 18:19:12 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 23 Oct 2026 18:19:12 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 23 Oct 2026 18:19:12 GMT
ENV LANG=en_US.UTF-8
# Fri, 23 Oct 2026 18:19:12 GMT
ENV TZ=UTC
# Fri, 23 Oct 2026 18:19:13 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 23 Oct 2026 18:19:13 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 23 Oct 2026 18:19:13 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 23 Oct 2026 18:19:13 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 23 Oct 2026 18:19:13 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 23 Oct 2026 18:19:13 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 23 Oct 2026 18:19:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:cf1a5487baaf7d71eb78fd0888933c6cdecb40e59edb896511aa0ef4a896031e`  
		Last Modified: Fri, 02 Oct 2026 11:08:26 GMT  
		Size: 29.8 MB (29752476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84499c303187e3eae6d80436e99b5302bacdf2914c5e6d9b4641746151a2d630`  
		Last Modified: Fri, 23 Oct 2026 18:19:36 GMT  
		Size: 7.6 MB (7550870 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e400f8be8ba9f312f68615aa756865270bb23beaeff61e35babb6660954e523`  
		Last Modified: Fri, 23 Oct 2026 18:19:41 GMT  
		Size: 241.6 MB (241608015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acb8beccad576b1555a13b6fc273beec563837258de4d9cd3998d388a135bb50`  
		Last Modified: Fri, 23 Oct 2026 18:19:35 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe8ca37b851668eb30770bc68b358e2c902fed9ce44aad55f2e9fcf753b02741`  
		Last Modified: Fri, 23 Oct 2026 18:19:36 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c352c4ead41cb9c9ddad2f983eeabf5011384b0233322a9099680a7ed1b2ff9a`  
		Last Modified: Fri, 23 Oct 2026 18:19:37 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fa03c3600b762607e25cf11ba19591caff37d10bb928be6606eec0d880857fc`  
		Last Modified: Fri, 23 Oct 2026 18:19:37 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15a135e6e888461979e7d73f4209e38f37dbbe361872fe278a314855611c654e`  
		Last Modified: Fri, 23 Oct 2026 18:19:37 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8.34` - unknown; unknown

```console
$ docker pull clickhouse@sha256:c8735a70bc63f155d9afa099daf0f65730e7ef6ee92fd9bd4576363dc8845c2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 KB (27366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9354e708f35b97ef89fe2d2c507ac933953d7b1cb970fc802d7a5be7ca00b0e3`

```dockerfile
```

-	Layers:
	-	`sha256:5305f09b0ed1a67d85e5d6c3adee4c60666a6adc55ea9e48dcf7a91d9e7a8b88`  
		Last Modified: Fri, 23 Oct 2026 18:19:35 GMT  
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
$ docker pull clickhouse@sha256:c4e61375f2f453de2e456ae3d4640f9ecbae9a552bb48adb4778220524efa981
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.8.34-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:3fb9f70e3679f37eb04f7f14bd1b09266a82e8051f580b2442313249bfce71fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.8 MB (279781413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:458383f027418bb6c3879d6c71a14715ce1a465c17a24d1ded5889da6f02c3d2`
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
# Fri, 23 Oct 2026 18:18:44 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 23 Oct 2026 18:18:44 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 23 Oct 2026 18:18:44 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 23 Oct 2026 18:18:44 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 23 Oct 2026 18:18:44 GMT
ARG REPO_CHANNEL=stable
# Fri, 23 Oct 2026 18:18:44 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 23 Oct 2026 18:18:44 GMT
ARG VERSION=26.8.34.13
# Fri, 23 Oct 2026 18:18:44 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 23 Oct 2026 18:19:11 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 23 Oct 2026 18:19:12 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 23 Oct 2026 18:19:12 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 23 Oct 2026 18:19:12 GMT
ENV LANG=en_US.UTF-8
# Fri, 23 Oct 2026 18:19:12 GMT
ENV TZ=UTC
# Fri, 23 Oct 2026 18:19:13 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 23 Oct 2026 18:19:13 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 23 Oct 2026 18:19:13 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 23 Oct 2026 18:19:13 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 23 Oct 2026 18:19:13 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 23 Oct 2026 18:19:13 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 23 Oct 2026 18:19:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:cf1a5487baaf7d71eb78fd0888933c6cdecb40e59edb896511aa0ef4a896031e`  
		Last Modified: Fri, 02 Oct 2026 11:08:26 GMT  
		Size: 29.8 MB (29752476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84499c303187e3eae6d80436e99b5302bacdf2914c5e6d9b4641746151a2d630`  
		Last Modified: Fri, 23 Oct 2026 18:19:36 GMT  
		Size: 7.6 MB (7550870 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e400f8be8ba9f312f68615aa756865270bb23beaeff61e35babb6660954e523`  
		Last Modified: Fri, 23 Oct 2026 18:19:41 GMT  
		Size: 241.6 MB (241608015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acb8beccad576b1555a13b6fc273beec563837258de4d9cd3998d388a135bb50`  
		Last Modified: Fri, 23 Oct 2026 18:19:35 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe8ca37b851668eb30770bc68b358e2c902fed9ce44aad55f2e9fcf753b02741`  
		Last Modified: Fri, 23 Oct 2026 18:19:36 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c352c4ead41cb9c9ddad2f983eeabf5011384b0233322a9099680a7ed1b2ff9a`  
		Last Modified: Fri, 23 Oct 2026 18:19:37 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fa03c3600b762607e25cf11ba19591caff37d10bb928be6606eec0d880857fc`  
		Last Modified: Fri, 23 Oct 2026 18:19:37 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15a135e6e888461979e7d73f4209e38f37dbbe361872fe278a314855611c654e`  
		Last Modified: Fri, 23 Oct 2026 18:19:37 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8.34-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:c8735a70bc63f155d9afa099daf0f65730e7ef6ee92fd9bd4576363dc8845c2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 KB (27366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9354e708f35b97ef89fe2d2c507ac933953d7b1cb970fc802d7a5be7ca00b0e3`

```dockerfile
```

-	Layers:
	-	`sha256:5305f09b0ed1a67d85e5d6c3adee4c60666a6adc55ea9e48dcf7a91d9e7a8b88`  
		Last Modified: Fri, 23 Oct 2026 18:19:35 GMT  
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
$ docker pull clickhouse@sha256:c4e61375f2f453de2e456ae3d4640f9ecbae9a552bb48adb4778220524efa981
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.8.34.13` - linux; amd64

```console
$ docker pull clickhouse@sha256:3fb9f70e3679f37eb04f7f14bd1b09266a82e8051f580b2442313249bfce71fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.8 MB (279781413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:458383f027418bb6c3879d6c71a14715ce1a465c17a24d1ded5889da6f02c3d2`
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
# Fri, 23 Oct 2026 18:18:44 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 23 Oct 2026 18:18:44 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 23 Oct 2026 18:18:44 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 23 Oct 2026 18:18:44 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 23 Oct 2026 18:18:44 GMT
ARG REPO_CHANNEL=stable
# Fri, 23 Oct 2026 18:18:44 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 23 Oct 2026 18:18:44 GMT
ARG VERSION=26.8.34.13
# Fri, 23 Oct 2026 18:18:44 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 23 Oct 2026 18:19:11 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 23 Oct 2026 18:19:12 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 23 Oct 2026 18:19:12 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 23 Oct 2026 18:19:12 GMT
ENV LANG=en_US.UTF-8
# Fri, 23 Oct 2026 18:19:12 GMT
ENV TZ=UTC
# Fri, 23 Oct 2026 18:19:13 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 23 Oct 2026 18:19:13 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 23 Oct 2026 18:19:13 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 23 Oct 2026 18:19:13 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 23 Oct 2026 18:19:13 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 23 Oct 2026 18:19:13 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 23 Oct 2026 18:19:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:cf1a5487baaf7d71eb78fd0888933c6cdecb40e59edb896511aa0ef4a896031e`  
		Last Modified: Fri, 02 Oct 2026 11:08:26 GMT  
		Size: 29.8 MB (29752476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84499c303187e3eae6d80436e99b5302bacdf2914c5e6d9b4641746151a2d630`  
		Last Modified: Fri, 23 Oct 2026 18:19:36 GMT  
		Size: 7.6 MB (7550870 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e400f8be8ba9f312f68615aa756865270bb23beaeff61e35babb6660954e523`  
		Last Modified: Fri, 23 Oct 2026 18:19:41 GMT  
		Size: 241.6 MB (241608015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acb8beccad576b1555a13b6fc273beec563837258de4d9cd3998d388a135bb50`  
		Last Modified: Fri, 23 Oct 2026 18:19:35 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe8ca37b851668eb30770bc68b358e2c902fed9ce44aad55f2e9fcf753b02741`  
		Last Modified: Fri, 23 Oct 2026 18:19:36 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c352c4ead41cb9c9ddad2f983eeabf5011384b0233322a9099680a7ed1b2ff9a`  
		Last Modified: Fri, 23 Oct 2026 18:19:37 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fa03c3600b762607e25cf11ba19591caff37d10bb928be6606eec0d880857fc`  
		Last Modified: Fri, 23 Oct 2026 18:19:37 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15a135e6e888461979e7d73f4209e38f37dbbe361872fe278a314855611c654e`  
		Last Modified: Fri, 23 Oct 2026 18:19:37 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8.34.13` - unknown; unknown

```console
$ docker pull clickhouse@sha256:c8735a70bc63f155d9afa099daf0f65730e7ef6ee92fd9bd4576363dc8845c2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 KB (27366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9354e708f35b97ef89fe2d2c507ac933953d7b1cb970fc802d7a5be7ca00b0e3`

```dockerfile
```

-	Layers:
	-	`sha256:5305f09b0ed1a67d85e5d6c3adee4c60666a6adc55ea9e48dcf7a91d9e7a8b88`  
		Last Modified: Fri, 23 Oct 2026 18:19:35 GMT  
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
$ docker pull clickhouse@sha256:c4e61375f2f453de2e456ae3d4640f9ecbae9a552bb48adb4778220524efa981
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.8.34.13-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:3fb9f70e3679f37eb04f7f14bd1b09266a82e8051f580b2442313249bfce71fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.8 MB (279781413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:458383f027418bb6c3879d6c71a14715ce1a465c17a24d1ded5889da6f02c3d2`
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
# Fri, 23 Oct 2026 18:18:44 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 23 Oct 2026 18:18:44 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 23 Oct 2026 18:18:44 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 23 Oct 2026 18:18:44 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 23 Oct 2026 18:18:44 GMT
ARG REPO_CHANNEL=stable
# Fri, 23 Oct 2026 18:18:44 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 23 Oct 2026 18:18:44 GMT
ARG VERSION=26.8.34.13
# Fri, 23 Oct 2026 18:18:44 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 23 Oct 2026 18:19:11 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 23 Oct 2026 18:19:12 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 23 Oct 2026 18:19:12 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 23 Oct 2026 18:19:12 GMT
ENV LANG=en_US.UTF-8
# Fri, 23 Oct 2026 18:19:12 GMT
ENV TZ=UTC
# Fri, 23 Oct 2026 18:19:13 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 23 Oct 2026 18:19:13 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 23 Oct 2026 18:19:13 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 23 Oct 2026 18:19:13 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 23 Oct 2026 18:19:13 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 23 Oct 2026 18:19:13 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 23 Oct 2026 18:19:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:cf1a5487baaf7d71eb78fd0888933c6cdecb40e59edb896511aa0ef4a896031e`  
		Last Modified: Fri, 02 Oct 2026 11:08:26 GMT  
		Size: 29.8 MB (29752476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84499c303187e3eae6d80436e99b5302bacdf2914c5e6d9b4641746151a2d630`  
		Last Modified: Fri, 23 Oct 2026 18:19:36 GMT  
		Size: 7.6 MB (7550870 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e400f8be8ba9f312f68615aa756865270bb23beaeff61e35babb6660954e523`  
		Last Modified: Fri, 23 Oct 2026 18:19:41 GMT  
		Size: 241.6 MB (241608015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acb8beccad576b1555a13b6fc273beec563837258de4d9cd3998d388a135bb50`  
		Last Modified: Fri, 23 Oct 2026 18:19:35 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe8ca37b851668eb30770bc68b358e2c902fed9ce44aad55f2e9fcf753b02741`  
		Last Modified: Fri, 23 Oct 2026 18:19:36 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c352c4ead41cb9c9ddad2f983eeabf5011384b0233322a9099680a7ed1b2ff9a`  
		Last Modified: Fri, 23 Oct 2026 18:19:37 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fa03c3600b762607e25cf11ba19591caff37d10bb928be6606eec0d880857fc`  
		Last Modified: Fri, 23 Oct 2026 18:19:37 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15a135e6e888461979e7d73f4209e38f37dbbe361872fe278a314855611c654e`  
		Last Modified: Fri, 23 Oct 2026 18:19:37 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.8.34.13-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:c8735a70bc63f155d9afa099daf0f65730e7ef6ee92fd9bd4576363dc8845c2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 KB (27366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9354e708f35b97ef89fe2d2c507ac933953d7b1cb970fc802d7a5be7ca00b0e3`

```dockerfile
```

-	Layers:
	-	`sha256:5305f09b0ed1a67d85e5d6c3adee4c60666a6adc55ea9e48dcf7a91d9e7a8b88`  
		Last Modified: Fri, 23 Oct 2026 18:19:35 GMT  
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
$ docker pull clickhouse@sha256:f66b82b1e7c84b9984f0f96ae4aaacd85e0327f4d5e8da6167ef95313b95ed48
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.9` - linux; amd64

```console
$ docker pull clickhouse@sha256:3beb07a653630f93f634575c07495bbc285a8e625c9d53e2b129187d6dc3765e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.3 MB (295261859 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cf69782dc85d9a97aa81f66da3bfb656d5868a226bc0d641a56e6f956237c24`
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
# Fri, 23 Oct 2026 18:18:42 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 23 Oct 2026 18:18:42 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 23 Oct 2026 18:18:42 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 23 Oct 2026 18:18:42 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 23 Oct 2026 18:18:42 GMT
ARG REPO_CHANNEL=stable
# Fri, 23 Oct 2026 18:18:42 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 23 Oct 2026 18:18:42 GMT
ARG VERSION=26.9.25.15
# Fri, 23 Oct 2026 18:18:42 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 23 Oct 2026 18:19:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 23 Oct 2026 18:19:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 23 Oct 2026 18:19:17 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 23 Oct 2026 18:19:17 GMT
ENV LANG=en_US.UTF-8
# Fri, 23 Oct 2026 18:19:17 GMT
ENV TZ=UTC
# Fri, 23 Oct 2026 18:19:17 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 23 Oct 2026 18:19:17 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 23 Oct 2026 18:19:17 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 23 Oct 2026 18:19:17 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 23 Oct 2026 18:19:17 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 23 Oct 2026 18:19:17 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 23 Oct 2026 18:19:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:cf1a5487baaf7d71eb78fd0888933c6cdecb40e59edb896511aa0ef4a896031e`  
		Last Modified: Fri, 02 Oct 2026 11:08:26 GMT  
		Size: 29.8 MB (29752476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ab3d75d3557ed5f40b166931b8a125e65f4552876c5415c69fda16962b69617`  
		Last Modified: Fri, 23 Oct 2026 18:19:44 GMT  
		Size: 7.6 MB (7550901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c6538c112e521fefd10b635a714c3cdfb9c1ac414f28dad7a9bffe94d4d08e2`  
		Last Modified: Fri, 23 Oct 2026 18:20:04 GMT  
		Size: 257.1 MB (257088165 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19893f9e67ed57b101c5057df435de5fa599044632cdb2bcdd30799cf9117c54`  
		Last Modified: Fri, 23 Oct 2026 18:19:44 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db363995e14840b9c57f7d7e18bf509674295cfa7d32eb91bd2011f3755e483e`  
		Last Modified: Fri, 23 Oct 2026 18:19:44 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56b216b7778901325d86b3595901e131a12f2be2e2999f5cdbde83f2719bb5e2`  
		Last Modified: Fri, 23 Oct 2026 18:19:45 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cd10d4fab926a128969dafd282f96a3c8f4b47eaa945d2d8d98ae824ea89fe2`  
		Last Modified: Fri, 23 Oct 2026 18:19:45 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cec7bd95380f9b5811e801216ad5541474ff7eb7995e950593343771fd30908b`  
		Last Modified: Fri, 23 Oct 2026 18:19:46 GMT  
		Size: 3.9 KB (3903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9` - unknown; unknown

```console
$ docker pull clickhouse@sha256:9201521437c6b4f807f27d28ef864123ff4fa624ef283ef83b16d96c259504f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 KB (27797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36a5f125b2e1d51d898bae1812388be78acd0eab2f753ad4410389b643e6312a`

```dockerfile
```

-	Layers:
	-	`sha256:edf39e7dd7136c936feb097cbd631f7b44dd8e477662d6baea35e548d23aad65`  
		Last Modified: Fri, 23 Oct 2026 18:19:44 GMT  
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
$ docker pull clickhouse@sha256:f66b82b1e7c84b9984f0f96ae4aaacd85e0327f4d5e8da6167ef95313b95ed48
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.9-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:3beb07a653630f93f634575c07495bbc285a8e625c9d53e2b129187d6dc3765e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.3 MB (295261859 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cf69782dc85d9a97aa81f66da3bfb656d5868a226bc0d641a56e6f956237c24`
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
# Fri, 23 Oct 2026 18:18:42 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 23 Oct 2026 18:18:42 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 23 Oct 2026 18:18:42 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 23 Oct 2026 18:18:42 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 23 Oct 2026 18:18:42 GMT
ARG REPO_CHANNEL=stable
# Fri, 23 Oct 2026 18:18:42 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 23 Oct 2026 18:18:42 GMT
ARG VERSION=26.9.25.15
# Fri, 23 Oct 2026 18:18:42 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 23 Oct 2026 18:19:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 23 Oct 2026 18:19:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 23 Oct 2026 18:19:17 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 23 Oct 2026 18:19:17 GMT
ENV LANG=en_US.UTF-8
# Fri, 23 Oct 2026 18:19:17 GMT
ENV TZ=UTC
# Fri, 23 Oct 2026 18:19:17 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 23 Oct 2026 18:19:17 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 23 Oct 2026 18:19:17 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 23 Oct 2026 18:19:17 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 23 Oct 2026 18:19:17 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 23 Oct 2026 18:19:17 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 23 Oct 2026 18:19:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:cf1a5487baaf7d71eb78fd0888933c6cdecb40e59edb896511aa0ef4a896031e`  
		Last Modified: Fri, 02 Oct 2026 11:08:26 GMT  
		Size: 29.8 MB (29752476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ab3d75d3557ed5f40b166931b8a125e65f4552876c5415c69fda16962b69617`  
		Last Modified: Fri, 23 Oct 2026 18:19:44 GMT  
		Size: 7.6 MB (7550901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c6538c112e521fefd10b635a714c3cdfb9c1ac414f28dad7a9bffe94d4d08e2`  
		Last Modified: Fri, 23 Oct 2026 18:20:04 GMT  
		Size: 257.1 MB (257088165 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19893f9e67ed57b101c5057df435de5fa599044632cdb2bcdd30799cf9117c54`  
		Last Modified: Fri, 23 Oct 2026 18:19:44 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db363995e14840b9c57f7d7e18bf509674295cfa7d32eb91bd2011f3755e483e`  
		Last Modified: Fri, 23 Oct 2026 18:19:44 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56b216b7778901325d86b3595901e131a12f2be2e2999f5cdbde83f2719bb5e2`  
		Last Modified: Fri, 23 Oct 2026 18:19:45 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cd10d4fab926a128969dafd282f96a3c8f4b47eaa945d2d8d98ae824ea89fe2`  
		Last Modified: Fri, 23 Oct 2026 18:19:45 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cec7bd95380f9b5811e801216ad5541474ff7eb7995e950593343771fd30908b`  
		Last Modified: Fri, 23 Oct 2026 18:19:46 GMT  
		Size: 3.9 KB (3903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:9201521437c6b4f807f27d28ef864123ff4fa624ef283ef83b16d96c259504f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 KB (27797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36a5f125b2e1d51d898bae1812388be78acd0eab2f753ad4410389b643e6312a`

```dockerfile
```

-	Layers:
	-	`sha256:edf39e7dd7136c936feb097cbd631f7b44dd8e477662d6baea35e548d23aad65`  
		Last Modified: Fri, 23 Oct 2026 18:19:44 GMT  
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
$ docker pull clickhouse@sha256:f66b82b1e7c84b9984f0f96ae4aaacd85e0327f4d5e8da6167ef95313b95ed48
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.9.25` - linux; amd64

```console
$ docker pull clickhouse@sha256:3beb07a653630f93f634575c07495bbc285a8e625c9d53e2b129187d6dc3765e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.3 MB (295261859 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cf69782dc85d9a97aa81f66da3bfb656d5868a226bc0d641a56e6f956237c24`
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
# Fri, 23 Oct 2026 18:18:42 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 23 Oct 2026 18:18:42 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 23 Oct 2026 18:18:42 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 23 Oct 2026 18:18:42 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 23 Oct 2026 18:18:42 GMT
ARG REPO_CHANNEL=stable
# Fri, 23 Oct 2026 18:18:42 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 23 Oct 2026 18:18:42 GMT
ARG VERSION=26.9.25.15
# Fri, 23 Oct 2026 18:18:42 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 23 Oct 2026 18:19:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 23 Oct 2026 18:19:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 23 Oct 2026 18:19:17 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 23 Oct 2026 18:19:17 GMT
ENV LANG=en_US.UTF-8
# Fri, 23 Oct 2026 18:19:17 GMT
ENV TZ=UTC
# Fri, 23 Oct 2026 18:19:17 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 23 Oct 2026 18:19:17 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 23 Oct 2026 18:19:17 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 23 Oct 2026 18:19:17 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 23 Oct 2026 18:19:17 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 23 Oct 2026 18:19:17 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 23 Oct 2026 18:19:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:cf1a5487baaf7d71eb78fd0888933c6cdecb40e59edb896511aa0ef4a896031e`  
		Last Modified: Fri, 02 Oct 2026 11:08:26 GMT  
		Size: 29.8 MB (29752476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ab3d75d3557ed5f40b166931b8a125e65f4552876c5415c69fda16962b69617`  
		Last Modified: Fri, 23 Oct 2026 18:19:44 GMT  
		Size: 7.6 MB (7550901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c6538c112e521fefd10b635a714c3cdfb9c1ac414f28dad7a9bffe94d4d08e2`  
		Last Modified: Fri, 23 Oct 2026 18:20:04 GMT  
		Size: 257.1 MB (257088165 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19893f9e67ed57b101c5057df435de5fa599044632cdb2bcdd30799cf9117c54`  
		Last Modified: Fri, 23 Oct 2026 18:19:44 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db363995e14840b9c57f7d7e18bf509674295cfa7d32eb91bd2011f3755e483e`  
		Last Modified: Fri, 23 Oct 2026 18:19:44 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56b216b7778901325d86b3595901e131a12f2be2e2999f5cdbde83f2719bb5e2`  
		Last Modified: Fri, 23 Oct 2026 18:19:45 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cd10d4fab926a128969dafd282f96a3c8f4b47eaa945d2d8d98ae824ea89fe2`  
		Last Modified: Fri, 23 Oct 2026 18:19:45 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cec7bd95380f9b5811e801216ad5541474ff7eb7995e950593343771fd30908b`  
		Last Modified: Fri, 23 Oct 2026 18:19:46 GMT  
		Size: 3.9 KB (3903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9.25` - unknown; unknown

```console
$ docker pull clickhouse@sha256:9201521437c6b4f807f27d28ef864123ff4fa624ef283ef83b16d96c259504f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 KB (27797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36a5f125b2e1d51d898bae1812388be78acd0eab2f753ad4410389b643e6312a`

```dockerfile
```

-	Layers:
	-	`sha256:edf39e7dd7136c936feb097cbd631f7b44dd8e477662d6baea35e548d23aad65`  
		Last Modified: Fri, 23 Oct 2026 18:19:44 GMT  
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
$ docker pull clickhouse@sha256:f66b82b1e7c84b9984f0f96ae4aaacd85e0327f4d5e8da6167ef95313b95ed48
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.9.25-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:3beb07a653630f93f634575c07495bbc285a8e625c9d53e2b129187d6dc3765e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.3 MB (295261859 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cf69782dc85d9a97aa81f66da3bfb656d5868a226bc0d641a56e6f956237c24`
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
# Fri, 23 Oct 2026 18:18:42 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 23 Oct 2026 18:18:42 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 23 Oct 2026 18:18:42 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 23 Oct 2026 18:18:42 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 23 Oct 2026 18:18:42 GMT
ARG REPO_CHANNEL=stable
# Fri, 23 Oct 2026 18:18:42 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 23 Oct 2026 18:18:42 GMT
ARG VERSION=26.9.25.15
# Fri, 23 Oct 2026 18:18:42 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 23 Oct 2026 18:19:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 23 Oct 2026 18:19:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 23 Oct 2026 18:19:17 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 23 Oct 2026 18:19:17 GMT
ENV LANG=en_US.UTF-8
# Fri, 23 Oct 2026 18:19:17 GMT
ENV TZ=UTC
# Fri, 23 Oct 2026 18:19:17 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 23 Oct 2026 18:19:17 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 23 Oct 2026 18:19:17 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 23 Oct 2026 18:19:17 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 23 Oct 2026 18:19:17 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 23 Oct 2026 18:19:17 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 23 Oct 2026 18:19:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:cf1a5487baaf7d71eb78fd0888933c6cdecb40e59edb896511aa0ef4a896031e`  
		Last Modified: Fri, 02 Oct 2026 11:08:26 GMT  
		Size: 29.8 MB (29752476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ab3d75d3557ed5f40b166931b8a125e65f4552876c5415c69fda16962b69617`  
		Last Modified: Fri, 23 Oct 2026 18:19:44 GMT  
		Size: 7.6 MB (7550901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c6538c112e521fefd10b635a714c3cdfb9c1ac414f28dad7a9bffe94d4d08e2`  
		Last Modified: Fri, 23 Oct 2026 18:20:04 GMT  
		Size: 257.1 MB (257088165 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19893f9e67ed57b101c5057df435de5fa599044632cdb2bcdd30799cf9117c54`  
		Last Modified: Fri, 23 Oct 2026 18:19:44 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db363995e14840b9c57f7d7e18bf509674295cfa7d32eb91bd2011f3755e483e`  
		Last Modified: Fri, 23 Oct 2026 18:19:44 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56b216b7778901325d86b3595901e131a12f2be2e2999f5cdbde83f2719bb5e2`  
		Last Modified: Fri, 23 Oct 2026 18:19:45 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cd10d4fab926a128969dafd282f96a3c8f4b47eaa945d2d8d98ae824ea89fe2`  
		Last Modified: Fri, 23 Oct 2026 18:19:45 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cec7bd95380f9b5811e801216ad5541474ff7eb7995e950593343771fd30908b`  
		Last Modified: Fri, 23 Oct 2026 18:19:46 GMT  
		Size: 3.9 KB (3903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9.25-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:9201521437c6b4f807f27d28ef864123ff4fa624ef283ef83b16d96c259504f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 KB (27797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36a5f125b2e1d51d898bae1812388be78acd0eab2f753ad4410389b643e6312a`

```dockerfile
```

-	Layers:
	-	`sha256:edf39e7dd7136c936feb097cbd631f7b44dd8e477662d6baea35e548d23aad65`  
		Last Modified: Fri, 23 Oct 2026 18:19:44 GMT  
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
$ docker pull clickhouse@sha256:f66b82b1e7c84b9984f0f96ae4aaacd85e0327f4d5e8da6167ef95313b95ed48
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.9.25.15` - linux; amd64

```console
$ docker pull clickhouse@sha256:3beb07a653630f93f634575c07495bbc285a8e625c9d53e2b129187d6dc3765e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.3 MB (295261859 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cf69782dc85d9a97aa81f66da3bfb656d5868a226bc0d641a56e6f956237c24`
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
# Fri, 23 Oct 2026 18:18:42 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 23 Oct 2026 18:18:42 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 23 Oct 2026 18:18:42 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 23 Oct 2026 18:18:42 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 23 Oct 2026 18:18:42 GMT
ARG REPO_CHANNEL=stable
# Fri, 23 Oct 2026 18:18:42 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 23 Oct 2026 18:18:42 GMT
ARG VERSION=26.9.25.15
# Fri, 23 Oct 2026 18:18:42 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 23 Oct 2026 18:19:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 23 Oct 2026 18:19:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 23 Oct 2026 18:19:17 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 23 Oct 2026 18:19:17 GMT
ENV LANG=en_US.UTF-8
# Fri, 23 Oct 2026 18:19:17 GMT
ENV TZ=UTC
# Fri, 23 Oct 2026 18:19:17 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 23 Oct 2026 18:19:17 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 23 Oct 2026 18:19:17 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 23 Oct 2026 18:19:17 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 23 Oct 2026 18:19:17 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 23 Oct 2026 18:19:17 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 23 Oct 2026 18:19:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:cf1a5487baaf7d71eb78fd0888933c6cdecb40e59edb896511aa0ef4a896031e`  
		Last Modified: Fri, 02 Oct 2026 11:08:26 GMT  
		Size: 29.8 MB (29752476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ab3d75d3557ed5f40b166931b8a125e65f4552876c5415c69fda16962b69617`  
		Last Modified: Fri, 23 Oct 2026 18:19:44 GMT  
		Size: 7.6 MB (7550901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c6538c112e521fefd10b635a714c3cdfb9c1ac414f28dad7a9bffe94d4d08e2`  
		Last Modified: Fri, 23 Oct 2026 18:20:04 GMT  
		Size: 257.1 MB (257088165 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19893f9e67ed57b101c5057df435de5fa599044632cdb2bcdd30799cf9117c54`  
		Last Modified: Fri, 23 Oct 2026 18:19:44 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db363995e14840b9c57f7d7e18bf509674295cfa7d32eb91bd2011f3755e483e`  
		Last Modified: Fri, 23 Oct 2026 18:19:44 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56b216b7778901325d86b3595901e131a12f2be2e2999f5cdbde83f2719bb5e2`  
		Last Modified: Fri, 23 Oct 2026 18:19:45 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cd10d4fab926a128969dafd282f96a3c8f4b47eaa945d2d8d98ae824ea89fe2`  
		Last Modified: Fri, 23 Oct 2026 18:19:45 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cec7bd95380f9b5811e801216ad5541474ff7eb7995e950593343771fd30908b`  
		Last Modified: Fri, 23 Oct 2026 18:19:46 GMT  
		Size: 3.9 KB (3903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9.25.15` - unknown; unknown

```console
$ docker pull clickhouse@sha256:9201521437c6b4f807f27d28ef864123ff4fa624ef283ef83b16d96c259504f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 KB (27797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36a5f125b2e1d51d898bae1812388be78acd0eab2f753ad4410389b643e6312a`

```dockerfile
```

-	Layers:
	-	`sha256:edf39e7dd7136c936feb097cbd631f7b44dd8e477662d6baea35e548d23aad65`  
		Last Modified: Fri, 23 Oct 2026 18:19:44 GMT  
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
$ docker pull clickhouse@sha256:f66b82b1e7c84b9984f0f96ae4aaacd85e0327f4d5e8da6167ef95313b95ed48
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.9.25.15-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:3beb07a653630f93f634575c07495bbc285a8e625c9d53e2b129187d6dc3765e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.3 MB (295261859 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cf69782dc85d9a97aa81f66da3bfb656d5868a226bc0d641a56e6f956237c24`
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
# Fri, 23 Oct 2026 18:18:42 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 23 Oct 2026 18:18:42 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 23 Oct 2026 18:18:42 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 23 Oct 2026 18:18:42 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 23 Oct 2026 18:18:42 GMT
ARG REPO_CHANNEL=stable
# Fri, 23 Oct 2026 18:18:42 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 23 Oct 2026 18:18:42 GMT
ARG VERSION=26.9.25.15
# Fri, 23 Oct 2026 18:18:42 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 23 Oct 2026 18:19:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 23 Oct 2026 18:19:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 23 Oct 2026 18:19:17 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 23 Oct 2026 18:19:17 GMT
ENV LANG=en_US.UTF-8
# Fri, 23 Oct 2026 18:19:17 GMT
ENV TZ=UTC
# Fri, 23 Oct 2026 18:19:17 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 23 Oct 2026 18:19:17 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 23 Oct 2026 18:19:17 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 23 Oct 2026 18:19:17 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 23 Oct 2026 18:19:17 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 23 Oct 2026 18:19:17 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 23 Oct 2026 18:19:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:cf1a5487baaf7d71eb78fd0888933c6cdecb40e59edb896511aa0ef4a896031e`  
		Last Modified: Fri, 02 Oct 2026 11:08:26 GMT  
		Size: 29.8 MB (29752476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ab3d75d3557ed5f40b166931b8a125e65f4552876c5415c69fda16962b69617`  
		Last Modified: Fri, 23 Oct 2026 18:19:44 GMT  
		Size: 7.6 MB (7550901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c6538c112e521fefd10b635a714c3cdfb9c1ac414f28dad7a9bffe94d4d08e2`  
		Last Modified: Fri, 23 Oct 2026 18:20:04 GMT  
		Size: 257.1 MB (257088165 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19893f9e67ed57b101c5057df435de5fa599044632cdb2bcdd30799cf9117c54`  
		Last Modified: Fri, 23 Oct 2026 18:19:44 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db363995e14840b9c57f7d7e18bf509674295cfa7d32eb91bd2011f3755e483e`  
		Last Modified: Fri, 23 Oct 2026 18:19:44 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56b216b7778901325d86b3595901e131a12f2be2e2999f5cdbde83f2719bb5e2`  
		Last Modified: Fri, 23 Oct 2026 18:19:45 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cd10d4fab926a128969dafd282f96a3c8f4b47eaa945d2d8d98ae824ea89fe2`  
		Last Modified: Fri, 23 Oct 2026 18:19:45 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cec7bd95380f9b5811e801216ad5541474ff7eb7995e950593343771fd30908b`  
		Last Modified: Fri, 23 Oct 2026 18:19:46 GMT  
		Size: 3.9 KB (3903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.9.25.15-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:9201521437c6b4f807f27d28ef864123ff4fa624ef283ef83b16d96c259504f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 KB (27797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36a5f125b2e1d51d898bae1812388be78acd0eab2f753ad4410389b643e6312a`

```dockerfile
```

-	Layers:
	-	`sha256:edf39e7dd7136c936feb097cbd631f7b44dd8e477662d6baea35e548d23aad65`  
		Last Modified: Fri, 23 Oct 2026 18:19:44 GMT  
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
$ docker pull clickhouse@sha256:f66b82b1e7c84b9984f0f96ae4aaacd85e0327f4d5e8da6167ef95313b95ed48
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:3beb07a653630f93f634575c07495bbc285a8e625c9d53e2b129187d6dc3765e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.3 MB (295261859 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cf69782dc85d9a97aa81f66da3bfb656d5868a226bc0d641a56e6f956237c24`
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
# Fri, 23 Oct 2026 18:18:42 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 23 Oct 2026 18:18:42 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 23 Oct 2026 18:18:42 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 23 Oct 2026 18:18:42 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 23 Oct 2026 18:18:42 GMT
ARG REPO_CHANNEL=stable
# Fri, 23 Oct 2026 18:18:42 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 23 Oct 2026 18:18:42 GMT
ARG VERSION=26.9.25.15
# Fri, 23 Oct 2026 18:18:42 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 23 Oct 2026 18:19:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 23 Oct 2026 18:19:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 23 Oct 2026 18:19:17 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 23 Oct 2026 18:19:17 GMT
ENV LANG=en_US.UTF-8
# Fri, 23 Oct 2026 18:19:17 GMT
ENV TZ=UTC
# Fri, 23 Oct 2026 18:19:17 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 23 Oct 2026 18:19:17 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 23 Oct 2026 18:19:17 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 23 Oct 2026 18:19:17 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 23 Oct 2026 18:19:17 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 23 Oct 2026 18:19:17 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 23 Oct 2026 18:19:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:cf1a5487baaf7d71eb78fd0888933c6cdecb40e59edb896511aa0ef4a896031e`  
		Last Modified: Fri, 02 Oct 2026 11:08:26 GMT  
		Size: 29.8 MB (29752476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ab3d75d3557ed5f40b166931b8a125e65f4552876c5415c69fda16962b69617`  
		Last Modified: Fri, 23 Oct 2026 18:19:44 GMT  
		Size: 7.6 MB (7550901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c6538c112e521fefd10b635a714c3cdfb9c1ac414f28dad7a9bffe94d4d08e2`  
		Last Modified: Fri, 23 Oct 2026 18:20:04 GMT  
		Size: 257.1 MB (257088165 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19893f9e67ed57b101c5057df435de5fa599044632cdb2bcdd30799cf9117c54`  
		Last Modified: Fri, 23 Oct 2026 18:19:44 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db363995e14840b9c57f7d7e18bf509674295cfa7d32eb91bd2011f3755e483e`  
		Last Modified: Fri, 23 Oct 2026 18:19:44 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56b216b7778901325d86b3595901e131a12f2be2e2999f5cdbde83f2719bb5e2`  
		Last Modified: Fri, 23 Oct 2026 18:19:45 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cd10d4fab926a128969dafd282f96a3c8f4b47eaa945d2d8d98ae824ea89fe2`  
		Last Modified: Fri, 23 Oct 2026 18:19:45 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cec7bd95380f9b5811e801216ad5541474ff7eb7995e950593343771fd30908b`  
		Last Modified: Fri, 23 Oct 2026 18:19:46 GMT  
		Size: 3.9 KB (3903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:9201521437c6b4f807f27d28ef864123ff4fa624ef283ef83b16d96c259504f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 KB (27797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36a5f125b2e1d51d898bae1812388be78acd0eab2f753ad4410389b643e6312a`

```dockerfile
```

-	Layers:
	-	`sha256:edf39e7dd7136c936feb097cbd631f7b44dd8e477662d6baea35e548d23aad65`  
		Last Modified: Fri, 23 Oct 2026 18:19:44 GMT  
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
$ docker pull clickhouse@sha256:f66b82b1e7c84b9984f0f96ae4aaacd85e0327f4d5e8da6167ef95313b95ed48
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:latest` - linux; amd64

```console
$ docker pull clickhouse@sha256:3beb07a653630f93f634575c07495bbc285a8e625c9d53e2b129187d6dc3765e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.3 MB (295261859 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cf69782dc85d9a97aa81f66da3bfb656d5868a226bc0d641a56e6f956237c24`
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
# Fri, 23 Oct 2026 18:18:42 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 23 Oct 2026 18:18:42 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 23 Oct 2026 18:18:42 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 23 Oct 2026 18:18:42 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 23 Oct 2026 18:18:42 GMT
ARG REPO_CHANNEL=stable
# Fri, 23 Oct 2026 18:18:42 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 23 Oct 2026 18:18:42 GMT
ARG VERSION=26.9.25.15
# Fri, 23 Oct 2026 18:18:42 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 23 Oct 2026 18:19:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update --error-on=any     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update --error-on=any     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 23 Oct 2026 18:19:16 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 23 Oct 2026 18:19:17 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 23 Oct 2026 18:19:17 GMT
ENV LANG=en_US.UTF-8
# Fri, 23 Oct 2026 18:19:17 GMT
ENV TZ=UTC
# Fri, 23 Oct 2026 18:19:17 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.9.25.15 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 23 Oct 2026 18:19:17 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 23 Oct 2026 18:19:17 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 23 Oct 2026 18:19:17 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 23 Oct 2026 18:19:17 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 23 Oct 2026 18:19:17 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 23 Oct 2026 18:19:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:cf1a5487baaf7d71eb78fd0888933c6cdecb40e59edb896511aa0ef4a896031e`  
		Last Modified: Fri, 02 Oct 2026 11:08:26 GMT  
		Size: 29.8 MB (29752476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ab3d75d3557ed5f40b166931b8a125e65f4552876c5415c69fda16962b69617`  
		Last Modified: Fri, 23 Oct 2026 18:19:44 GMT  
		Size: 7.6 MB (7550901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c6538c112e521fefd10b635a714c3cdfb9c1ac414f28dad7a9bffe94d4d08e2`  
		Last Modified: Fri, 23 Oct 2026 18:20:04 GMT  
		Size: 257.1 MB (257088165 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19893f9e67ed57b101c5057df435de5fa599044632cdb2bcdd30799cf9117c54`  
		Last Modified: Fri, 23 Oct 2026 18:19:44 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db363995e14840b9c57f7d7e18bf509674295cfa7d32eb91bd2011f3755e483e`  
		Last Modified: Fri, 23 Oct 2026 18:19:44 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56b216b7778901325d86b3595901e131a12f2be2e2999f5cdbde83f2719bb5e2`  
		Last Modified: Fri, 23 Oct 2026 18:19:45 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cd10d4fab926a128969dafd282f96a3c8f4b47eaa945d2d8d98ae824ea89fe2`  
		Last Modified: Fri, 23 Oct 2026 18:19:45 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cec7bd95380f9b5811e801216ad5541474ff7eb7995e950593343771fd30908b`  
		Last Modified: Fri, 23 Oct 2026 18:19:46 GMT  
		Size: 3.9 KB (3903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:latest` - unknown; unknown

```console
$ docker pull clickhouse@sha256:9201521437c6b4f807f27d28ef864123ff4fa624ef283ef83b16d96c259504f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 KB (27797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36a5f125b2e1d51d898bae1812388be78acd0eab2f753ad4410389b643e6312a`

```dockerfile
```

-	Layers:
	-	`sha256:edf39e7dd7136c936feb097cbd631f7b44dd8e477662d6baea35e548d23aad65`  
		Last Modified: Fri, 23 Oct 2026 18:19:44 GMT  
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
$ docker pull clickhouse@sha256:c4e61375f2f453de2e456ae3d4640f9ecbae9a552bb48adb4778220524efa981
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:lts` - linux; amd64

```console
$ docker pull clickhouse@sha256:3fb9f70e3679f37eb04f7f14bd1b09266a82e8051f580b2442313249bfce71fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.8 MB (279781413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:458383f027418bb6c3879d6c71a14715ce1a465c17a24d1ded5889da6f02c3d2`
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
# Fri, 23 Oct 2026 18:18:44 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 23 Oct 2026 18:18:44 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 23 Oct 2026 18:18:44 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 23 Oct 2026 18:18:44 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 23 Oct 2026 18:18:44 GMT
ARG REPO_CHANNEL=stable
# Fri, 23 Oct 2026 18:18:44 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 23 Oct 2026 18:18:44 GMT
ARG VERSION=26.8.34.13
# Fri, 23 Oct 2026 18:18:44 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 23 Oct 2026 18:19:11 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 23 Oct 2026 18:19:12 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 23 Oct 2026 18:19:12 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 23 Oct 2026 18:19:12 GMT
ENV LANG=en_US.UTF-8
# Fri, 23 Oct 2026 18:19:12 GMT
ENV TZ=UTC
# Fri, 23 Oct 2026 18:19:13 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 23 Oct 2026 18:19:13 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 23 Oct 2026 18:19:13 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 23 Oct 2026 18:19:13 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 23 Oct 2026 18:19:13 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 23 Oct 2026 18:19:13 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 23 Oct 2026 18:19:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:cf1a5487baaf7d71eb78fd0888933c6cdecb40e59edb896511aa0ef4a896031e`  
		Last Modified: Fri, 02 Oct 2026 11:08:26 GMT  
		Size: 29.8 MB (29752476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84499c303187e3eae6d80436e99b5302bacdf2914c5e6d9b4641746151a2d630`  
		Last Modified: Fri, 23 Oct 2026 18:19:36 GMT  
		Size: 7.6 MB (7550870 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e400f8be8ba9f312f68615aa756865270bb23beaeff61e35babb6660954e523`  
		Last Modified: Fri, 23 Oct 2026 18:19:41 GMT  
		Size: 241.6 MB (241608015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acb8beccad576b1555a13b6fc273beec563837258de4d9cd3998d388a135bb50`  
		Last Modified: Fri, 23 Oct 2026 18:19:35 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe8ca37b851668eb30770bc68b358e2c902fed9ce44aad55f2e9fcf753b02741`  
		Last Modified: Fri, 23 Oct 2026 18:19:36 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c352c4ead41cb9c9ddad2f983eeabf5011384b0233322a9099680a7ed1b2ff9a`  
		Last Modified: Fri, 23 Oct 2026 18:19:37 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fa03c3600b762607e25cf11ba19591caff37d10bb928be6606eec0d880857fc`  
		Last Modified: Fri, 23 Oct 2026 18:19:37 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15a135e6e888461979e7d73f4209e38f37dbbe361872fe278a314855611c654e`  
		Last Modified: Fri, 23 Oct 2026 18:19:37 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:lts` - unknown; unknown

```console
$ docker pull clickhouse@sha256:c8735a70bc63f155d9afa099daf0f65730e7ef6ee92fd9bd4576363dc8845c2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 KB (27366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9354e708f35b97ef89fe2d2c507ac933953d7b1cb970fc802d7a5be7ca00b0e3`

```dockerfile
```

-	Layers:
	-	`sha256:5305f09b0ed1a67d85e5d6c3adee4c60666a6adc55ea9e48dcf7a91d9e7a8b88`  
		Last Modified: Fri, 23 Oct 2026 18:19:35 GMT  
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
$ docker pull clickhouse@sha256:c4e61375f2f453de2e456ae3d4640f9ecbae9a552bb48adb4778220524efa981
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:lts-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:3fb9f70e3679f37eb04f7f14bd1b09266a82e8051f580b2442313249bfce71fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.8 MB (279781413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:458383f027418bb6c3879d6c71a14715ce1a465c17a24d1ded5889da6f02c3d2`
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
# Fri, 23 Oct 2026 18:18:44 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 23 Oct 2026 18:18:44 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 23 Oct 2026 18:18:44 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 23 Oct 2026 18:18:44 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 23 Oct 2026 18:18:44 GMT
ARG REPO_CHANNEL=stable
# Fri, 23 Oct 2026 18:18:44 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 23 Oct 2026 18:18:44 GMT
ARG VERSION=26.8.34.13
# Fri, 23 Oct 2026 18:18:44 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 23 Oct 2026 18:19:11 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 23 Oct 2026 18:19:12 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 23 Oct 2026 18:19:12 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 23 Oct 2026 18:19:12 GMT
ENV LANG=en_US.UTF-8
# Fri, 23 Oct 2026 18:19:12 GMT
ENV TZ=UTC
# Fri, 23 Oct 2026 18:19:13 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.8.34.13 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 23 Oct 2026 18:19:13 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 23 Oct 2026 18:19:13 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 23 Oct 2026 18:19:13 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 23 Oct 2026 18:19:13 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 23 Oct 2026 18:19:13 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 23 Oct 2026 18:19:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:cf1a5487baaf7d71eb78fd0888933c6cdecb40e59edb896511aa0ef4a896031e`  
		Last Modified: Fri, 02 Oct 2026 11:08:26 GMT  
		Size: 29.8 MB (29752476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84499c303187e3eae6d80436e99b5302bacdf2914c5e6d9b4641746151a2d630`  
		Last Modified: Fri, 23 Oct 2026 18:19:36 GMT  
		Size: 7.6 MB (7550870 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e400f8be8ba9f312f68615aa756865270bb23beaeff61e35babb6660954e523`  
		Last Modified: Fri, 23 Oct 2026 18:19:41 GMT  
		Size: 241.6 MB (241608015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acb8beccad576b1555a13b6fc273beec563837258de4d9cd3998d388a135bb50`  
		Last Modified: Fri, 23 Oct 2026 18:19:35 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe8ca37b851668eb30770bc68b358e2c902fed9ce44aad55f2e9fcf753b02741`  
		Last Modified: Fri, 23 Oct 2026 18:19:36 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c352c4ead41cb9c9ddad2f983eeabf5011384b0233322a9099680a7ed1b2ff9a`  
		Last Modified: Fri, 23 Oct 2026 18:19:37 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fa03c3600b762607e25cf11ba19591caff37d10bb928be6606eec0d880857fc`  
		Last Modified: Fri, 23 Oct 2026 18:19:37 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15a135e6e888461979e7d73f4209e38f37dbbe361872fe278a314855611c654e`  
		Last Modified: Fri, 23 Oct 2026 18:19:37 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:lts-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:c8735a70bc63f155d9afa099daf0f65730e7ef6ee92fd9bd4576363dc8845c2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 KB (27366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9354e708f35b97ef89fe2d2c507ac933953d7b1cb970fc802d7a5be7ca00b0e3`

```dockerfile
```

-	Layers:
	-	`sha256:5305f09b0ed1a67d85e5d6c3adee4c60666a6adc55ea9e48dcf7a91d9e7a8b88`  
		Last Modified: Fri, 23 Oct 2026 18:19:35 GMT  
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
