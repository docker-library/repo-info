<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `clickhouse`

-	[`clickhouse:25.8`](#clickhouse258)
-	[`clickhouse:25.8-jammy`](#clickhouse258-jammy)
-	[`clickhouse:25.8.32`](#clickhouse25832)
-	[`clickhouse:25.8.32-jammy`](#clickhouse25832-jammy)
-	[`clickhouse:25.8.32.4`](#clickhouse258324)
-	[`clickhouse:25.8.32.4-jammy`](#clickhouse258324-jammy)
-	[`clickhouse:26.3`](#clickhouse263)
-	[`clickhouse:26.3-jammy`](#clickhouse263-jammy)
-	[`clickhouse:26.3.20`](#clickhouse26320)
-	[`clickhouse:26.3.20-jammy`](#clickhouse26320-jammy)
-	[`clickhouse:26.3.20.7`](#clickhouse263207)
-	[`clickhouse:26.3.20.7-jammy`](#clickhouse263207-jammy)
-	[`clickhouse:26.5`](#clickhouse265)
-	[`clickhouse:26.5-jammy`](#clickhouse265-jammy)
-	[`clickhouse:26.5.7`](#clickhouse2657)
-	[`clickhouse:26.5.7-jammy`](#clickhouse2657-jammy)
-	[`clickhouse:26.5.7.64`](#clickhouse265764)
-	[`clickhouse:26.5.7.64-jammy`](#clickhouse265764-jammy)
-	[`clickhouse:26.6`](#clickhouse266)
-	[`clickhouse:26.6-jammy`](#clickhouse266-jammy)
-	[`clickhouse:26.6.3`](#clickhouse2663)
-	[`clickhouse:26.6.3-jammy`](#clickhouse2663-jammy)
-	[`clickhouse:26.6.3.62`](#clickhouse266362)
-	[`clickhouse:26.6.3.62-jammy`](#clickhouse266362-jammy)
-	[`clickhouse:26.7`](#clickhouse267)
-	[`clickhouse:26.7-jammy`](#clickhouse267-jammy)
-	[`clickhouse:26.7.5`](#clickhouse2675)
-	[`clickhouse:26.7.5-jammy`](#clickhouse2675-jammy)
-	[`clickhouse:26.7.5.10`](#clickhouse267510)
-	[`clickhouse:26.7.5.10-jammy`](#clickhouse267510-jammy)
-	[`clickhouse:jammy`](#clickhousejammy)
-	[`clickhouse:latest`](#clickhouselatest)
-	[`clickhouse:lts`](#clickhouselts)
-	[`clickhouse:lts-jammy`](#clickhouselts-jammy)

## `clickhouse:25.8`

```console
$ docker pull clickhouse@sha256:a7f4ee27c520ef83c6c8335ece86a53b67ae9186f70a6431d203b0c70df56b32
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:25.8` - linux; amd64

```console
$ docker pull clickhouse@sha256:a9cbcd2e1f562f4f539cab3057fbb6e537a2d86a2a259ee857df25038acf2185
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.2 MB (231207570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:189862c0458fe1d93069db00ce57059cd59d0895b4970e29115a3c4977b1d0d7`
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
# Fri, 21 Aug 2026 18:21:18 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 21 Aug 2026 18:21:18 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 21 Aug 2026 18:21:18 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 21 Aug 2026 18:21:18 GMT
ARG REPO_CHANNEL=stable
# Fri, 21 Aug 2026 18:21:18 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 21 Aug 2026 18:21:18 GMT
ARG VERSION=25.8.32.4
# Fri, 21 Aug 2026 18:21:18 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 21 Aug 2026 18:21:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.32.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:21:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.32.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:21:42 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.32.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 21 Aug 2026 18:21:42 GMT
ENV LANG=en_US.UTF-8
# Fri, 21 Aug 2026 18:21:42 GMT
ENV TZ=UTC
# Fri, 21 Aug 2026 18:21:42 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.32.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 21 Aug 2026 18:21:42 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 21 Aug 2026 18:21:42 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:21:42 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 21 Aug 2026 18:21:42 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 21 Aug 2026 18:21:42 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 21 Aug 2026 18:21:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8bad406dfd7f0d585556854acb27e20b41a5bbda16b692abc3890410c3565fe`  
		Last Modified: Fri, 21 Aug 2026 18:22:01 GMT  
		Size: 7.6 MB (7553707 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b94c62a858b974d6f4d3dcb639ef86c7796968a82fe7b16cce1504f3f7f8c57`  
		Last Modified: Fri, 21 Aug 2026 18:22:05 GMT  
		Size: 193.0 MB (193046896 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3410ceb0280f64c8794babc1c47a15d5f71809ccb03aadcd2dfaee80a8f90a63`  
		Last Modified: Fri, 21 Aug 2026 18:22:01 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9fce9fdf044e1f39c79c9f782999ffaa6437d640bffaac52a7e968eeb4c95f8`  
		Last Modified: Fri, 21 Aug 2026 18:22:01 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d54e7a83b8d41e943e46272b73b85f4b0ab7964013f8a9f65b338bb1e4121e3d`  
		Last Modified: Fri, 21 Aug 2026 18:22:02 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:639450b38a7287200e2204ccd01a6333d883cd9c8c170bd1477c83ca9e429260`  
		Last Modified: Fri, 21 Aug 2026 18:22:02 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf4b81e2cccef9a040718256d9d8587a5e5aac17503923bfd1506c2573c33f40`  
		Last Modified: Fri, 21 Aug 2026 18:22:02 GMT  
		Size: 3.6 KB (3611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:25.8` - unknown; unknown

```console
$ docker pull clickhouse@sha256:781abe1fecccad137c83ba9e3b27b3fa262d202f9eea73ea2b97555a066d3989
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:058ec2d20485f12e091ea857c60bab0b7cc48c063536657420c5be4f0a661af9`

```dockerfile
```

-	Layers:
	-	`sha256:70525d586008488151c89a7e95b74f6dcbeb06ed566213b136d2114d1ce851ac`  
		Last Modified: Fri, 21 Aug 2026 18:22:01 GMT  
		Size: 26.2 KB (26224 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:25.8` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:0f48703895551e151343b4c1f4d98f681908f579bf59371edb9ae095f3aa8d47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.1 MB (216069111 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d24880f25f131104d218235780b901d56f4fe89d73c8ec1a2fdc6a2e1d641f92`
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
# Fri, 21 Aug 2026 18:25:07 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 21 Aug 2026 18:25:07 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 21 Aug 2026 18:25:07 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 21 Aug 2026 18:25:07 GMT
ARG REPO_CHANNEL=stable
# Fri, 21 Aug 2026 18:25:07 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 21 Aug 2026 18:25:07 GMT
ARG VERSION=25.8.32.4
# Fri, 21 Aug 2026 18:25:07 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 21 Aug 2026 18:25:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.32.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:25:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.32.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:25:35 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.32.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 21 Aug 2026 18:25:35 GMT
ENV LANG=en_US.UTF-8
# Fri, 21 Aug 2026 18:25:35 GMT
ENV TZ=UTC
# Fri, 21 Aug 2026 18:25:35 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.32.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 21 Aug 2026 18:25:35 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 21 Aug 2026 18:25:35 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:25:35 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 21 Aug 2026 18:25:35 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 21 Aug 2026 18:25:35 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 21 Aug 2026 18:25:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5536a31c9852bd97c819997fe46fa3e78b847ae9993875ae643134752d7270c4`  
		Last Modified: Fri, 21 Aug 2026 18:25:54 GMT  
		Size: 7.5 MB (7533729 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c5b0cc9bba1ff45e1d4cb1dc7bfab62433f358147cfd547e31ab82aa3f1f457`  
		Last Modified: Fri, 21 Aug 2026 18:25:58 GMT  
		Size: 180.0 MB (180044905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fa9d4d99719504a20c48aba46a49bc761274a1d9fbec5f52117d6ac9846a776`  
		Last Modified: Fri, 21 Aug 2026 18:25:54 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f847ee57ce8bda6fe2aadc8fadafbeec4ffabc40d2fc6b8f08d5cc942d077f8`  
		Last Modified: Fri, 21 Aug 2026 18:25:54 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7320408ef22b822c12d8e7e716ac807aeb11bd079da96ffd42e04376cb2ee7b9`  
		Last Modified: Fri, 21 Aug 2026 18:25:55 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73aa9d87c9ff1ebdccd714140e88bc8204b8ea630b93ee4093026bd32a985aaf`  
		Last Modified: Fri, 21 Aug 2026 18:25:55 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:463111a31e640b5c12f12f21f11e9c7bbde17ed548bd89e400ed1eb38a7ec635`  
		Last Modified: Fri, 21 Aug 2026 18:25:56 GMT  
		Size: 3.6 KB (3611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:25.8` - unknown; unknown

```console
$ docker pull clickhouse@sha256:d38c61bc71db3e5ff521d3a4ce8011a59c2ccea0b94d20347a49552f46c1a6cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d70727025b8128c154b76c92046e48257b36a16acd7ebe62aabb5ec8bbea80c`

```dockerfile
```

-	Layers:
	-	`sha256:8d7ad7250e64a82dc27a577eca1605fbbc119bc04c4fca153c14f0d702203bc2`  
		Last Modified: Fri, 21 Aug 2026 18:25:54 GMT  
		Size: 26.4 KB (26411 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:25.8-jammy`

```console
$ docker pull clickhouse@sha256:a7f4ee27c520ef83c6c8335ece86a53b67ae9186f70a6431d203b0c70df56b32
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:25.8-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:a9cbcd2e1f562f4f539cab3057fbb6e537a2d86a2a259ee857df25038acf2185
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.2 MB (231207570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:189862c0458fe1d93069db00ce57059cd59d0895b4970e29115a3c4977b1d0d7`
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
# Fri, 21 Aug 2026 18:21:18 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 21 Aug 2026 18:21:18 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 21 Aug 2026 18:21:18 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 21 Aug 2026 18:21:18 GMT
ARG REPO_CHANNEL=stable
# Fri, 21 Aug 2026 18:21:18 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 21 Aug 2026 18:21:18 GMT
ARG VERSION=25.8.32.4
# Fri, 21 Aug 2026 18:21:18 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 21 Aug 2026 18:21:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.32.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:21:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.32.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:21:42 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.32.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 21 Aug 2026 18:21:42 GMT
ENV LANG=en_US.UTF-8
# Fri, 21 Aug 2026 18:21:42 GMT
ENV TZ=UTC
# Fri, 21 Aug 2026 18:21:42 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.32.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 21 Aug 2026 18:21:42 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 21 Aug 2026 18:21:42 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:21:42 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 21 Aug 2026 18:21:42 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 21 Aug 2026 18:21:42 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 21 Aug 2026 18:21:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8bad406dfd7f0d585556854acb27e20b41a5bbda16b692abc3890410c3565fe`  
		Last Modified: Fri, 21 Aug 2026 18:22:01 GMT  
		Size: 7.6 MB (7553707 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b94c62a858b974d6f4d3dcb639ef86c7796968a82fe7b16cce1504f3f7f8c57`  
		Last Modified: Fri, 21 Aug 2026 18:22:05 GMT  
		Size: 193.0 MB (193046896 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3410ceb0280f64c8794babc1c47a15d5f71809ccb03aadcd2dfaee80a8f90a63`  
		Last Modified: Fri, 21 Aug 2026 18:22:01 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9fce9fdf044e1f39c79c9f782999ffaa6437d640bffaac52a7e968eeb4c95f8`  
		Last Modified: Fri, 21 Aug 2026 18:22:01 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d54e7a83b8d41e943e46272b73b85f4b0ab7964013f8a9f65b338bb1e4121e3d`  
		Last Modified: Fri, 21 Aug 2026 18:22:02 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:639450b38a7287200e2204ccd01a6333d883cd9c8c170bd1477c83ca9e429260`  
		Last Modified: Fri, 21 Aug 2026 18:22:02 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf4b81e2cccef9a040718256d9d8587a5e5aac17503923bfd1506c2573c33f40`  
		Last Modified: Fri, 21 Aug 2026 18:22:02 GMT  
		Size: 3.6 KB (3611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:25.8-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:781abe1fecccad137c83ba9e3b27b3fa262d202f9eea73ea2b97555a066d3989
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:058ec2d20485f12e091ea857c60bab0b7cc48c063536657420c5be4f0a661af9`

```dockerfile
```

-	Layers:
	-	`sha256:70525d586008488151c89a7e95b74f6dcbeb06ed566213b136d2114d1ce851ac`  
		Last Modified: Fri, 21 Aug 2026 18:22:01 GMT  
		Size: 26.2 KB (26224 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:25.8-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:0f48703895551e151343b4c1f4d98f681908f579bf59371edb9ae095f3aa8d47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.1 MB (216069111 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d24880f25f131104d218235780b901d56f4fe89d73c8ec1a2fdc6a2e1d641f92`
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
# Fri, 21 Aug 2026 18:25:07 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 21 Aug 2026 18:25:07 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 21 Aug 2026 18:25:07 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 21 Aug 2026 18:25:07 GMT
ARG REPO_CHANNEL=stable
# Fri, 21 Aug 2026 18:25:07 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 21 Aug 2026 18:25:07 GMT
ARG VERSION=25.8.32.4
# Fri, 21 Aug 2026 18:25:07 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 21 Aug 2026 18:25:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.32.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:25:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.32.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:25:35 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.32.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 21 Aug 2026 18:25:35 GMT
ENV LANG=en_US.UTF-8
# Fri, 21 Aug 2026 18:25:35 GMT
ENV TZ=UTC
# Fri, 21 Aug 2026 18:25:35 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.32.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 21 Aug 2026 18:25:35 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 21 Aug 2026 18:25:35 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:25:35 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 21 Aug 2026 18:25:35 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 21 Aug 2026 18:25:35 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 21 Aug 2026 18:25:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5536a31c9852bd97c819997fe46fa3e78b847ae9993875ae643134752d7270c4`  
		Last Modified: Fri, 21 Aug 2026 18:25:54 GMT  
		Size: 7.5 MB (7533729 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c5b0cc9bba1ff45e1d4cb1dc7bfab62433f358147cfd547e31ab82aa3f1f457`  
		Last Modified: Fri, 21 Aug 2026 18:25:58 GMT  
		Size: 180.0 MB (180044905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fa9d4d99719504a20c48aba46a49bc761274a1d9fbec5f52117d6ac9846a776`  
		Last Modified: Fri, 21 Aug 2026 18:25:54 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f847ee57ce8bda6fe2aadc8fadafbeec4ffabc40d2fc6b8f08d5cc942d077f8`  
		Last Modified: Fri, 21 Aug 2026 18:25:54 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7320408ef22b822c12d8e7e716ac807aeb11bd079da96ffd42e04376cb2ee7b9`  
		Last Modified: Fri, 21 Aug 2026 18:25:55 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73aa9d87c9ff1ebdccd714140e88bc8204b8ea630b93ee4093026bd32a985aaf`  
		Last Modified: Fri, 21 Aug 2026 18:25:55 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:463111a31e640b5c12f12f21f11e9c7bbde17ed548bd89e400ed1eb38a7ec635`  
		Last Modified: Fri, 21 Aug 2026 18:25:56 GMT  
		Size: 3.6 KB (3611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:25.8-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:d38c61bc71db3e5ff521d3a4ce8011a59c2ccea0b94d20347a49552f46c1a6cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d70727025b8128c154b76c92046e48257b36a16acd7ebe62aabb5ec8bbea80c`

```dockerfile
```

-	Layers:
	-	`sha256:8d7ad7250e64a82dc27a577eca1605fbbc119bc04c4fca153c14f0d702203bc2`  
		Last Modified: Fri, 21 Aug 2026 18:25:54 GMT  
		Size: 26.4 KB (26411 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:25.8.32`

```console
$ docker pull clickhouse@sha256:a7f4ee27c520ef83c6c8335ece86a53b67ae9186f70a6431d203b0c70df56b32
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:25.8.32` - linux; amd64

```console
$ docker pull clickhouse@sha256:a9cbcd2e1f562f4f539cab3057fbb6e537a2d86a2a259ee857df25038acf2185
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.2 MB (231207570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:189862c0458fe1d93069db00ce57059cd59d0895b4970e29115a3c4977b1d0d7`
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
# Fri, 21 Aug 2026 18:21:18 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 21 Aug 2026 18:21:18 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 21 Aug 2026 18:21:18 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 21 Aug 2026 18:21:18 GMT
ARG REPO_CHANNEL=stable
# Fri, 21 Aug 2026 18:21:18 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 21 Aug 2026 18:21:18 GMT
ARG VERSION=25.8.32.4
# Fri, 21 Aug 2026 18:21:18 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 21 Aug 2026 18:21:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.32.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:21:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.32.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:21:42 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.32.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 21 Aug 2026 18:21:42 GMT
ENV LANG=en_US.UTF-8
# Fri, 21 Aug 2026 18:21:42 GMT
ENV TZ=UTC
# Fri, 21 Aug 2026 18:21:42 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.32.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 21 Aug 2026 18:21:42 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 21 Aug 2026 18:21:42 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:21:42 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 21 Aug 2026 18:21:42 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 21 Aug 2026 18:21:42 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 21 Aug 2026 18:21:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8bad406dfd7f0d585556854acb27e20b41a5bbda16b692abc3890410c3565fe`  
		Last Modified: Fri, 21 Aug 2026 18:22:01 GMT  
		Size: 7.6 MB (7553707 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b94c62a858b974d6f4d3dcb639ef86c7796968a82fe7b16cce1504f3f7f8c57`  
		Last Modified: Fri, 21 Aug 2026 18:22:05 GMT  
		Size: 193.0 MB (193046896 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3410ceb0280f64c8794babc1c47a15d5f71809ccb03aadcd2dfaee80a8f90a63`  
		Last Modified: Fri, 21 Aug 2026 18:22:01 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9fce9fdf044e1f39c79c9f782999ffaa6437d640bffaac52a7e968eeb4c95f8`  
		Last Modified: Fri, 21 Aug 2026 18:22:01 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d54e7a83b8d41e943e46272b73b85f4b0ab7964013f8a9f65b338bb1e4121e3d`  
		Last Modified: Fri, 21 Aug 2026 18:22:02 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:639450b38a7287200e2204ccd01a6333d883cd9c8c170bd1477c83ca9e429260`  
		Last Modified: Fri, 21 Aug 2026 18:22:02 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf4b81e2cccef9a040718256d9d8587a5e5aac17503923bfd1506c2573c33f40`  
		Last Modified: Fri, 21 Aug 2026 18:22:02 GMT  
		Size: 3.6 KB (3611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:25.8.32` - unknown; unknown

```console
$ docker pull clickhouse@sha256:781abe1fecccad137c83ba9e3b27b3fa262d202f9eea73ea2b97555a066d3989
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:058ec2d20485f12e091ea857c60bab0b7cc48c063536657420c5be4f0a661af9`

```dockerfile
```

-	Layers:
	-	`sha256:70525d586008488151c89a7e95b74f6dcbeb06ed566213b136d2114d1ce851ac`  
		Last Modified: Fri, 21 Aug 2026 18:22:01 GMT  
		Size: 26.2 KB (26224 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:25.8.32` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:0f48703895551e151343b4c1f4d98f681908f579bf59371edb9ae095f3aa8d47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.1 MB (216069111 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d24880f25f131104d218235780b901d56f4fe89d73c8ec1a2fdc6a2e1d641f92`
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
# Fri, 21 Aug 2026 18:25:07 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 21 Aug 2026 18:25:07 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 21 Aug 2026 18:25:07 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 21 Aug 2026 18:25:07 GMT
ARG REPO_CHANNEL=stable
# Fri, 21 Aug 2026 18:25:07 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 21 Aug 2026 18:25:07 GMT
ARG VERSION=25.8.32.4
# Fri, 21 Aug 2026 18:25:07 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 21 Aug 2026 18:25:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.32.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:25:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.32.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:25:35 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.32.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 21 Aug 2026 18:25:35 GMT
ENV LANG=en_US.UTF-8
# Fri, 21 Aug 2026 18:25:35 GMT
ENV TZ=UTC
# Fri, 21 Aug 2026 18:25:35 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.32.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 21 Aug 2026 18:25:35 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 21 Aug 2026 18:25:35 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:25:35 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 21 Aug 2026 18:25:35 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 21 Aug 2026 18:25:35 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 21 Aug 2026 18:25:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5536a31c9852bd97c819997fe46fa3e78b847ae9993875ae643134752d7270c4`  
		Last Modified: Fri, 21 Aug 2026 18:25:54 GMT  
		Size: 7.5 MB (7533729 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c5b0cc9bba1ff45e1d4cb1dc7bfab62433f358147cfd547e31ab82aa3f1f457`  
		Last Modified: Fri, 21 Aug 2026 18:25:58 GMT  
		Size: 180.0 MB (180044905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fa9d4d99719504a20c48aba46a49bc761274a1d9fbec5f52117d6ac9846a776`  
		Last Modified: Fri, 21 Aug 2026 18:25:54 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f847ee57ce8bda6fe2aadc8fadafbeec4ffabc40d2fc6b8f08d5cc942d077f8`  
		Last Modified: Fri, 21 Aug 2026 18:25:54 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7320408ef22b822c12d8e7e716ac807aeb11bd079da96ffd42e04376cb2ee7b9`  
		Last Modified: Fri, 21 Aug 2026 18:25:55 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73aa9d87c9ff1ebdccd714140e88bc8204b8ea630b93ee4093026bd32a985aaf`  
		Last Modified: Fri, 21 Aug 2026 18:25:55 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:463111a31e640b5c12f12f21f11e9c7bbde17ed548bd89e400ed1eb38a7ec635`  
		Last Modified: Fri, 21 Aug 2026 18:25:56 GMT  
		Size: 3.6 KB (3611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:25.8.32` - unknown; unknown

```console
$ docker pull clickhouse@sha256:d38c61bc71db3e5ff521d3a4ce8011a59c2ccea0b94d20347a49552f46c1a6cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d70727025b8128c154b76c92046e48257b36a16acd7ebe62aabb5ec8bbea80c`

```dockerfile
```

-	Layers:
	-	`sha256:8d7ad7250e64a82dc27a577eca1605fbbc119bc04c4fca153c14f0d702203bc2`  
		Last Modified: Fri, 21 Aug 2026 18:25:54 GMT  
		Size: 26.4 KB (26411 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:25.8.32-jammy`

```console
$ docker pull clickhouse@sha256:a7f4ee27c520ef83c6c8335ece86a53b67ae9186f70a6431d203b0c70df56b32
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:25.8.32-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:a9cbcd2e1f562f4f539cab3057fbb6e537a2d86a2a259ee857df25038acf2185
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.2 MB (231207570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:189862c0458fe1d93069db00ce57059cd59d0895b4970e29115a3c4977b1d0d7`
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
# Fri, 21 Aug 2026 18:21:18 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 21 Aug 2026 18:21:18 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 21 Aug 2026 18:21:18 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 21 Aug 2026 18:21:18 GMT
ARG REPO_CHANNEL=stable
# Fri, 21 Aug 2026 18:21:18 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 21 Aug 2026 18:21:18 GMT
ARG VERSION=25.8.32.4
# Fri, 21 Aug 2026 18:21:18 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 21 Aug 2026 18:21:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.32.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:21:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.32.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:21:42 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.32.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 21 Aug 2026 18:21:42 GMT
ENV LANG=en_US.UTF-8
# Fri, 21 Aug 2026 18:21:42 GMT
ENV TZ=UTC
# Fri, 21 Aug 2026 18:21:42 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.32.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 21 Aug 2026 18:21:42 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 21 Aug 2026 18:21:42 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:21:42 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 21 Aug 2026 18:21:42 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 21 Aug 2026 18:21:42 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 21 Aug 2026 18:21:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8bad406dfd7f0d585556854acb27e20b41a5bbda16b692abc3890410c3565fe`  
		Last Modified: Fri, 21 Aug 2026 18:22:01 GMT  
		Size: 7.6 MB (7553707 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b94c62a858b974d6f4d3dcb639ef86c7796968a82fe7b16cce1504f3f7f8c57`  
		Last Modified: Fri, 21 Aug 2026 18:22:05 GMT  
		Size: 193.0 MB (193046896 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3410ceb0280f64c8794babc1c47a15d5f71809ccb03aadcd2dfaee80a8f90a63`  
		Last Modified: Fri, 21 Aug 2026 18:22:01 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9fce9fdf044e1f39c79c9f782999ffaa6437d640bffaac52a7e968eeb4c95f8`  
		Last Modified: Fri, 21 Aug 2026 18:22:01 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d54e7a83b8d41e943e46272b73b85f4b0ab7964013f8a9f65b338bb1e4121e3d`  
		Last Modified: Fri, 21 Aug 2026 18:22:02 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:639450b38a7287200e2204ccd01a6333d883cd9c8c170bd1477c83ca9e429260`  
		Last Modified: Fri, 21 Aug 2026 18:22:02 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf4b81e2cccef9a040718256d9d8587a5e5aac17503923bfd1506c2573c33f40`  
		Last Modified: Fri, 21 Aug 2026 18:22:02 GMT  
		Size: 3.6 KB (3611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:25.8.32-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:781abe1fecccad137c83ba9e3b27b3fa262d202f9eea73ea2b97555a066d3989
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:058ec2d20485f12e091ea857c60bab0b7cc48c063536657420c5be4f0a661af9`

```dockerfile
```

-	Layers:
	-	`sha256:70525d586008488151c89a7e95b74f6dcbeb06ed566213b136d2114d1ce851ac`  
		Last Modified: Fri, 21 Aug 2026 18:22:01 GMT  
		Size: 26.2 KB (26224 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:25.8.32-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:0f48703895551e151343b4c1f4d98f681908f579bf59371edb9ae095f3aa8d47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.1 MB (216069111 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d24880f25f131104d218235780b901d56f4fe89d73c8ec1a2fdc6a2e1d641f92`
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
# Fri, 21 Aug 2026 18:25:07 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 21 Aug 2026 18:25:07 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 21 Aug 2026 18:25:07 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 21 Aug 2026 18:25:07 GMT
ARG REPO_CHANNEL=stable
# Fri, 21 Aug 2026 18:25:07 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 21 Aug 2026 18:25:07 GMT
ARG VERSION=25.8.32.4
# Fri, 21 Aug 2026 18:25:07 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 21 Aug 2026 18:25:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.32.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:25:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.32.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:25:35 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.32.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 21 Aug 2026 18:25:35 GMT
ENV LANG=en_US.UTF-8
# Fri, 21 Aug 2026 18:25:35 GMT
ENV TZ=UTC
# Fri, 21 Aug 2026 18:25:35 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.32.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 21 Aug 2026 18:25:35 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 21 Aug 2026 18:25:35 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:25:35 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 21 Aug 2026 18:25:35 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 21 Aug 2026 18:25:35 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 21 Aug 2026 18:25:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5536a31c9852bd97c819997fe46fa3e78b847ae9993875ae643134752d7270c4`  
		Last Modified: Fri, 21 Aug 2026 18:25:54 GMT  
		Size: 7.5 MB (7533729 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c5b0cc9bba1ff45e1d4cb1dc7bfab62433f358147cfd547e31ab82aa3f1f457`  
		Last Modified: Fri, 21 Aug 2026 18:25:58 GMT  
		Size: 180.0 MB (180044905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fa9d4d99719504a20c48aba46a49bc761274a1d9fbec5f52117d6ac9846a776`  
		Last Modified: Fri, 21 Aug 2026 18:25:54 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f847ee57ce8bda6fe2aadc8fadafbeec4ffabc40d2fc6b8f08d5cc942d077f8`  
		Last Modified: Fri, 21 Aug 2026 18:25:54 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7320408ef22b822c12d8e7e716ac807aeb11bd079da96ffd42e04376cb2ee7b9`  
		Last Modified: Fri, 21 Aug 2026 18:25:55 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73aa9d87c9ff1ebdccd714140e88bc8204b8ea630b93ee4093026bd32a985aaf`  
		Last Modified: Fri, 21 Aug 2026 18:25:55 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:463111a31e640b5c12f12f21f11e9c7bbde17ed548bd89e400ed1eb38a7ec635`  
		Last Modified: Fri, 21 Aug 2026 18:25:56 GMT  
		Size: 3.6 KB (3611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:25.8.32-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:d38c61bc71db3e5ff521d3a4ce8011a59c2ccea0b94d20347a49552f46c1a6cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d70727025b8128c154b76c92046e48257b36a16acd7ebe62aabb5ec8bbea80c`

```dockerfile
```

-	Layers:
	-	`sha256:8d7ad7250e64a82dc27a577eca1605fbbc119bc04c4fca153c14f0d702203bc2`  
		Last Modified: Fri, 21 Aug 2026 18:25:54 GMT  
		Size: 26.4 KB (26411 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:25.8.32.4`

```console
$ docker pull clickhouse@sha256:a7f4ee27c520ef83c6c8335ece86a53b67ae9186f70a6431d203b0c70df56b32
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:25.8.32.4` - linux; amd64

```console
$ docker pull clickhouse@sha256:a9cbcd2e1f562f4f539cab3057fbb6e537a2d86a2a259ee857df25038acf2185
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.2 MB (231207570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:189862c0458fe1d93069db00ce57059cd59d0895b4970e29115a3c4977b1d0d7`
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
# Fri, 21 Aug 2026 18:21:18 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 21 Aug 2026 18:21:18 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 21 Aug 2026 18:21:18 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 21 Aug 2026 18:21:18 GMT
ARG REPO_CHANNEL=stable
# Fri, 21 Aug 2026 18:21:18 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 21 Aug 2026 18:21:18 GMT
ARG VERSION=25.8.32.4
# Fri, 21 Aug 2026 18:21:18 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 21 Aug 2026 18:21:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.32.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:21:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.32.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:21:42 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.32.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 21 Aug 2026 18:21:42 GMT
ENV LANG=en_US.UTF-8
# Fri, 21 Aug 2026 18:21:42 GMT
ENV TZ=UTC
# Fri, 21 Aug 2026 18:21:42 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.32.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 21 Aug 2026 18:21:42 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 21 Aug 2026 18:21:42 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:21:42 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 21 Aug 2026 18:21:42 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 21 Aug 2026 18:21:42 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 21 Aug 2026 18:21:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8bad406dfd7f0d585556854acb27e20b41a5bbda16b692abc3890410c3565fe`  
		Last Modified: Fri, 21 Aug 2026 18:22:01 GMT  
		Size: 7.6 MB (7553707 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b94c62a858b974d6f4d3dcb639ef86c7796968a82fe7b16cce1504f3f7f8c57`  
		Last Modified: Fri, 21 Aug 2026 18:22:05 GMT  
		Size: 193.0 MB (193046896 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3410ceb0280f64c8794babc1c47a15d5f71809ccb03aadcd2dfaee80a8f90a63`  
		Last Modified: Fri, 21 Aug 2026 18:22:01 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9fce9fdf044e1f39c79c9f782999ffaa6437d640bffaac52a7e968eeb4c95f8`  
		Last Modified: Fri, 21 Aug 2026 18:22:01 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d54e7a83b8d41e943e46272b73b85f4b0ab7964013f8a9f65b338bb1e4121e3d`  
		Last Modified: Fri, 21 Aug 2026 18:22:02 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:639450b38a7287200e2204ccd01a6333d883cd9c8c170bd1477c83ca9e429260`  
		Last Modified: Fri, 21 Aug 2026 18:22:02 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf4b81e2cccef9a040718256d9d8587a5e5aac17503923bfd1506c2573c33f40`  
		Last Modified: Fri, 21 Aug 2026 18:22:02 GMT  
		Size: 3.6 KB (3611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:25.8.32.4` - unknown; unknown

```console
$ docker pull clickhouse@sha256:781abe1fecccad137c83ba9e3b27b3fa262d202f9eea73ea2b97555a066d3989
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:058ec2d20485f12e091ea857c60bab0b7cc48c063536657420c5be4f0a661af9`

```dockerfile
```

-	Layers:
	-	`sha256:70525d586008488151c89a7e95b74f6dcbeb06ed566213b136d2114d1ce851ac`  
		Last Modified: Fri, 21 Aug 2026 18:22:01 GMT  
		Size: 26.2 KB (26224 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:25.8.32.4` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:0f48703895551e151343b4c1f4d98f681908f579bf59371edb9ae095f3aa8d47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.1 MB (216069111 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d24880f25f131104d218235780b901d56f4fe89d73c8ec1a2fdc6a2e1d641f92`
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
# Fri, 21 Aug 2026 18:25:07 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 21 Aug 2026 18:25:07 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 21 Aug 2026 18:25:07 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 21 Aug 2026 18:25:07 GMT
ARG REPO_CHANNEL=stable
# Fri, 21 Aug 2026 18:25:07 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 21 Aug 2026 18:25:07 GMT
ARG VERSION=25.8.32.4
# Fri, 21 Aug 2026 18:25:07 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 21 Aug 2026 18:25:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.32.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:25:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.32.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:25:35 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.32.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 21 Aug 2026 18:25:35 GMT
ENV LANG=en_US.UTF-8
# Fri, 21 Aug 2026 18:25:35 GMT
ENV TZ=UTC
# Fri, 21 Aug 2026 18:25:35 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.32.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 21 Aug 2026 18:25:35 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 21 Aug 2026 18:25:35 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:25:35 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 21 Aug 2026 18:25:35 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 21 Aug 2026 18:25:35 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 21 Aug 2026 18:25:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5536a31c9852bd97c819997fe46fa3e78b847ae9993875ae643134752d7270c4`  
		Last Modified: Fri, 21 Aug 2026 18:25:54 GMT  
		Size: 7.5 MB (7533729 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c5b0cc9bba1ff45e1d4cb1dc7bfab62433f358147cfd547e31ab82aa3f1f457`  
		Last Modified: Fri, 21 Aug 2026 18:25:58 GMT  
		Size: 180.0 MB (180044905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fa9d4d99719504a20c48aba46a49bc761274a1d9fbec5f52117d6ac9846a776`  
		Last Modified: Fri, 21 Aug 2026 18:25:54 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f847ee57ce8bda6fe2aadc8fadafbeec4ffabc40d2fc6b8f08d5cc942d077f8`  
		Last Modified: Fri, 21 Aug 2026 18:25:54 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7320408ef22b822c12d8e7e716ac807aeb11bd079da96ffd42e04376cb2ee7b9`  
		Last Modified: Fri, 21 Aug 2026 18:25:55 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73aa9d87c9ff1ebdccd714140e88bc8204b8ea630b93ee4093026bd32a985aaf`  
		Last Modified: Fri, 21 Aug 2026 18:25:55 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:463111a31e640b5c12f12f21f11e9c7bbde17ed548bd89e400ed1eb38a7ec635`  
		Last Modified: Fri, 21 Aug 2026 18:25:56 GMT  
		Size: 3.6 KB (3611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:25.8.32.4` - unknown; unknown

```console
$ docker pull clickhouse@sha256:d38c61bc71db3e5ff521d3a4ce8011a59c2ccea0b94d20347a49552f46c1a6cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d70727025b8128c154b76c92046e48257b36a16acd7ebe62aabb5ec8bbea80c`

```dockerfile
```

-	Layers:
	-	`sha256:8d7ad7250e64a82dc27a577eca1605fbbc119bc04c4fca153c14f0d702203bc2`  
		Last Modified: Fri, 21 Aug 2026 18:25:54 GMT  
		Size: 26.4 KB (26411 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:25.8.32.4-jammy`

```console
$ docker pull clickhouse@sha256:a7f4ee27c520ef83c6c8335ece86a53b67ae9186f70a6431d203b0c70df56b32
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:25.8.32.4-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:a9cbcd2e1f562f4f539cab3057fbb6e537a2d86a2a259ee857df25038acf2185
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.2 MB (231207570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:189862c0458fe1d93069db00ce57059cd59d0895b4970e29115a3c4977b1d0d7`
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
# Fri, 21 Aug 2026 18:21:18 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 21 Aug 2026 18:21:18 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 21 Aug 2026 18:21:18 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 21 Aug 2026 18:21:18 GMT
ARG REPO_CHANNEL=stable
# Fri, 21 Aug 2026 18:21:18 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 21 Aug 2026 18:21:18 GMT
ARG VERSION=25.8.32.4
# Fri, 21 Aug 2026 18:21:18 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 21 Aug 2026 18:21:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.32.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:21:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.32.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:21:42 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.32.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 21 Aug 2026 18:21:42 GMT
ENV LANG=en_US.UTF-8
# Fri, 21 Aug 2026 18:21:42 GMT
ENV TZ=UTC
# Fri, 21 Aug 2026 18:21:42 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.32.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 21 Aug 2026 18:21:42 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 21 Aug 2026 18:21:42 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:21:42 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 21 Aug 2026 18:21:42 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 21 Aug 2026 18:21:42 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 21 Aug 2026 18:21:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8bad406dfd7f0d585556854acb27e20b41a5bbda16b692abc3890410c3565fe`  
		Last Modified: Fri, 21 Aug 2026 18:22:01 GMT  
		Size: 7.6 MB (7553707 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b94c62a858b974d6f4d3dcb639ef86c7796968a82fe7b16cce1504f3f7f8c57`  
		Last Modified: Fri, 21 Aug 2026 18:22:05 GMT  
		Size: 193.0 MB (193046896 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3410ceb0280f64c8794babc1c47a15d5f71809ccb03aadcd2dfaee80a8f90a63`  
		Last Modified: Fri, 21 Aug 2026 18:22:01 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9fce9fdf044e1f39c79c9f782999ffaa6437d640bffaac52a7e968eeb4c95f8`  
		Last Modified: Fri, 21 Aug 2026 18:22:01 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d54e7a83b8d41e943e46272b73b85f4b0ab7964013f8a9f65b338bb1e4121e3d`  
		Last Modified: Fri, 21 Aug 2026 18:22:02 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:639450b38a7287200e2204ccd01a6333d883cd9c8c170bd1477c83ca9e429260`  
		Last Modified: Fri, 21 Aug 2026 18:22:02 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf4b81e2cccef9a040718256d9d8587a5e5aac17503923bfd1506c2573c33f40`  
		Last Modified: Fri, 21 Aug 2026 18:22:02 GMT  
		Size: 3.6 KB (3611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:25.8.32.4-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:781abe1fecccad137c83ba9e3b27b3fa262d202f9eea73ea2b97555a066d3989
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:058ec2d20485f12e091ea857c60bab0b7cc48c063536657420c5be4f0a661af9`

```dockerfile
```

-	Layers:
	-	`sha256:70525d586008488151c89a7e95b74f6dcbeb06ed566213b136d2114d1ce851ac`  
		Last Modified: Fri, 21 Aug 2026 18:22:01 GMT  
		Size: 26.2 KB (26224 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:25.8.32.4-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:0f48703895551e151343b4c1f4d98f681908f579bf59371edb9ae095f3aa8d47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.1 MB (216069111 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d24880f25f131104d218235780b901d56f4fe89d73c8ec1a2fdc6a2e1d641f92`
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
# Fri, 21 Aug 2026 18:25:07 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 21 Aug 2026 18:25:07 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 21 Aug 2026 18:25:07 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 21 Aug 2026 18:25:07 GMT
ARG REPO_CHANNEL=stable
# Fri, 21 Aug 2026 18:25:07 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 21 Aug 2026 18:25:07 GMT
ARG VERSION=25.8.32.4
# Fri, 21 Aug 2026 18:25:07 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 21 Aug 2026 18:25:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.32.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:25:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.32.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:25:35 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.32.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 21 Aug 2026 18:25:35 GMT
ENV LANG=en_US.UTF-8
# Fri, 21 Aug 2026 18:25:35 GMT
ENV TZ=UTC
# Fri, 21 Aug 2026 18:25:35 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.32.4 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 21 Aug 2026 18:25:35 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 21 Aug 2026 18:25:35 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:25:35 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 21 Aug 2026 18:25:35 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 21 Aug 2026 18:25:35 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 21 Aug 2026 18:25:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5536a31c9852bd97c819997fe46fa3e78b847ae9993875ae643134752d7270c4`  
		Last Modified: Fri, 21 Aug 2026 18:25:54 GMT  
		Size: 7.5 MB (7533729 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c5b0cc9bba1ff45e1d4cb1dc7bfab62433f358147cfd547e31ab82aa3f1f457`  
		Last Modified: Fri, 21 Aug 2026 18:25:58 GMT  
		Size: 180.0 MB (180044905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fa9d4d99719504a20c48aba46a49bc761274a1d9fbec5f52117d6ac9846a776`  
		Last Modified: Fri, 21 Aug 2026 18:25:54 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f847ee57ce8bda6fe2aadc8fadafbeec4ffabc40d2fc6b8f08d5cc942d077f8`  
		Last Modified: Fri, 21 Aug 2026 18:25:54 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7320408ef22b822c12d8e7e716ac807aeb11bd079da96ffd42e04376cb2ee7b9`  
		Last Modified: Fri, 21 Aug 2026 18:25:55 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73aa9d87c9ff1ebdccd714140e88bc8204b8ea630b93ee4093026bd32a985aaf`  
		Last Modified: Fri, 21 Aug 2026 18:25:55 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:463111a31e640b5c12f12f21f11e9c7bbde17ed548bd89e400ed1eb38a7ec635`  
		Last Modified: Fri, 21 Aug 2026 18:25:56 GMT  
		Size: 3.6 KB (3611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:25.8.32.4-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:d38c61bc71db3e5ff521d3a4ce8011a59c2ccea0b94d20347a49552f46c1a6cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d70727025b8128c154b76c92046e48257b36a16acd7ebe62aabb5ec8bbea80c`

```dockerfile
```

-	Layers:
	-	`sha256:8d7ad7250e64a82dc27a577eca1605fbbc119bc04c4fca153c14f0d702203bc2`  
		Last Modified: Fri, 21 Aug 2026 18:25:54 GMT  
		Size: 26.4 KB (26411 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.3`

```console
$ docker pull clickhouse@sha256:d0a6f3c331378f28cf14d555ae2eec61fcd0a3cc14b765247cce58a1fe6a27d7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.3` - linux; amd64

```console
$ docker pull clickhouse@sha256:5245c5afd137d2ef21ddb651aff4b49a78adbcf9d3b9277eaee45f4fabf2b0e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.5 MB (266522660 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d655acaba9b06f85b0b49860cd1d05a2bdd11341117fb8deadd4153610146782`
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
# Fri, 21 Aug 2026 18:21:17 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 21 Aug 2026 18:21:17 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 21 Aug 2026 18:21:17 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 21 Aug 2026 18:21:17 GMT
ARG REPO_CHANNEL=stable
# Fri, 21 Aug 2026 18:21:17 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 21 Aug 2026 18:21:17 GMT
ARG VERSION=26.3.20.7
# Fri, 21 Aug 2026 18:21:17 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 21 Aug 2026 18:21:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.20.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:21:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.20.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:21:44 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.20.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 21 Aug 2026 18:21:44 GMT
ENV LANG=en_US.UTF-8
# Fri, 21 Aug 2026 18:21:44 GMT
ENV TZ=UTC
# Fri, 21 Aug 2026 18:21:44 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.20.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 21 Aug 2026 18:21:44 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 21 Aug 2026 18:21:45 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:21:45 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 21 Aug 2026 18:21:45 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 21 Aug 2026 18:21:45 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 21 Aug 2026 18:21:45 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5b257cf17174e4cc983bb7da5c5be2ee0ab3c49b02b4c59d84686491c6445ef`  
		Last Modified: Fri, 21 Aug 2026 18:22:10 GMT  
		Size: 7.6 MB (7553740 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee7ffa102c9728df3d2b09924721fb12c21dfc4c48f65cf141ff9b06d56ad6d0`  
		Last Modified: Fri, 21 Aug 2026 18:22:15 GMT  
		Size: 228.4 MB (228361927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fea2feac6e445e960d7348e40999dca1a61f08ec83205d964fb9507f6f14f4d`  
		Last Modified: Fri, 21 Aug 2026 18:22:10 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4685519d4abdfc8f0a39409f8aa1ae6e048df3ebc90d775f8e4bfadccfa5fe02`  
		Last Modified: Fri, 21 Aug 2026 18:22:10 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b28e14926e923915c54636c95951e3a353cd414afeb320d45a9451e56ba67d03`  
		Last Modified: Fri, 21 Aug 2026 18:22:11 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6eecd2703ec62877dce80f6d41bf214f720ecf22799d25594e6fd9fe31f6ef1`  
		Last Modified: Fri, 21 Aug 2026 18:22:12 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57cddaef27ab3098869017ee0ab6c8e795524514407a45f3e854e11bc306da96`  
		Last Modified: Fri, 21 Aug 2026 18:22:12 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3` - unknown; unknown

```console
$ docker pull clickhouse@sha256:badb7a82c296f8fb10ce8dd95bc59ab98cbf03aed4419006186a10c998087a18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.8 KB (26835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71d8b32125f667ab5396bf00d5bcd933f40a42a31e6da82f395433f27883bdfa`

```dockerfile
```

-	Layers:
	-	`sha256:69a2c177eb0516ee67ba52ba3b49769958bee626bcb9de20afa0d88dc08bcf8f`  
		Last Modified: Fri, 21 Aug 2026 18:22:10 GMT  
		Size: 26.8 KB (26835 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.3` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:324360a9f037ec0822ed30ece0ebec0506066f9a80d1aedb22f3a7be83a4e044
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.9 MB (247850791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2280bbff48f55837b62f7c027dd9fb04323dd413b0113bea1ea6db3e9aeaf31`
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
# Fri, 21 Aug 2026 18:25:02 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 21 Aug 2026 18:25:02 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 21 Aug 2026 18:25:02 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 21 Aug 2026 18:25:02 GMT
ARG REPO_CHANNEL=stable
# Fri, 21 Aug 2026 18:25:02 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 21 Aug 2026 18:25:02 GMT
ARG VERSION=26.3.20.7
# Fri, 21 Aug 2026 18:25:02 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 21 Aug 2026 18:25:28 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.20.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:25:28 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.20.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:25:29 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.20.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 21 Aug 2026 18:25:29 GMT
ENV LANG=en_US.UTF-8
# Fri, 21 Aug 2026 18:25:29 GMT
ENV TZ=UTC
# Fri, 21 Aug 2026 18:25:30 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.20.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 21 Aug 2026 18:25:30 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 21 Aug 2026 18:25:30 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:25:30 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 21 Aug 2026 18:25:30 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 21 Aug 2026 18:25:30 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 21 Aug 2026 18:25:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:419eb6e73fe6bab9942cc40b3c43aed91d7fc526821c7b74575b97176c16a4ab`  
		Last Modified: Fri, 21 Aug 2026 18:25:52 GMT  
		Size: 7.5 MB (7533739 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3602dd47d4afdcd7ce7c5e57c6eec974a48f6c0970bab9f41a7bcfea5d7aba08`  
		Last Modified: Fri, 21 Aug 2026 18:25:56 GMT  
		Size: 211.8 MB (211826542 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7be465f00b30b0a86558226210f4e8572989a28f5ef4dbc0647f38d4c1ddf95`  
		Last Modified: Fri, 21 Aug 2026 18:25:51 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92009d1994bacc2f245a65657ecff077e2e1ea494dfd2130007d6e239387ac2f`  
		Last Modified: Fri, 21 Aug 2026 18:25:52 GMT  
		Size: 865.8 KB (865754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84d57c56bfc1c988d0860cc23f80a7a1ee08d1c05cb46f6fdcf5f42c2e679072`  
		Last Modified: Fri, 21 Aug 2026 18:25:53 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ca5bf3845c60436addd21c106a1228ac755ee13f91b598b7301ef864a3bd60b`  
		Last Modified: Fri, 21 Aug 2026 18:25:53 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba03d9f699a9ed20e95e98ad00a41c5409be81be6604a1f3aa19f3b77f1cdd89`  
		Last Modified: Fri, 21 Aug 2026 18:25:53 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3` - unknown; unknown

```console
$ docker pull clickhouse@sha256:bf09110d2c782674d327533e34911a2b4d1107e680d8a0ad1ff2dad77d2bb317
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.0 KB (27048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c86ca1f52d9333a6408780a8abf6a04a11020bfeef48170995dbff3535a58cd1`

```dockerfile
```

-	Layers:
	-	`sha256:1414bf62c5993f18a9a1c18999028c1789c5bed58670935bb3317721d6d7fa9e`  
		Last Modified: Fri, 21 Aug 2026 18:25:51 GMT  
		Size: 27.0 KB (27048 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.3-jammy`

```console
$ docker pull clickhouse@sha256:d0a6f3c331378f28cf14d555ae2eec61fcd0a3cc14b765247cce58a1fe6a27d7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.3-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:5245c5afd137d2ef21ddb651aff4b49a78adbcf9d3b9277eaee45f4fabf2b0e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.5 MB (266522660 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d655acaba9b06f85b0b49860cd1d05a2bdd11341117fb8deadd4153610146782`
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
# Fri, 21 Aug 2026 18:21:17 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 21 Aug 2026 18:21:17 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 21 Aug 2026 18:21:17 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 21 Aug 2026 18:21:17 GMT
ARG REPO_CHANNEL=stable
# Fri, 21 Aug 2026 18:21:17 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 21 Aug 2026 18:21:17 GMT
ARG VERSION=26.3.20.7
# Fri, 21 Aug 2026 18:21:17 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 21 Aug 2026 18:21:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.20.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:21:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.20.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:21:44 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.20.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 21 Aug 2026 18:21:44 GMT
ENV LANG=en_US.UTF-8
# Fri, 21 Aug 2026 18:21:44 GMT
ENV TZ=UTC
# Fri, 21 Aug 2026 18:21:44 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.20.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 21 Aug 2026 18:21:44 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 21 Aug 2026 18:21:45 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:21:45 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 21 Aug 2026 18:21:45 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 21 Aug 2026 18:21:45 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 21 Aug 2026 18:21:45 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5b257cf17174e4cc983bb7da5c5be2ee0ab3c49b02b4c59d84686491c6445ef`  
		Last Modified: Fri, 21 Aug 2026 18:22:10 GMT  
		Size: 7.6 MB (7553740 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee7ffa102c9728df3d2b09924721fb12c21dfc4c48f65cf141ff9b06d56ad6d0`  
		Last Modified: Fri, 21 Aug 2026 18:22:15 GMT  
		Size: 228.4 MB (228361927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fea2feac6e445e960d7348e40999dca1a61f08ec83205d964fb9507f6f14f4d`  
		Last Modified: Fri, 21 Aug 2026 18:22:10 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4685519d4abdfc8f0a39409f8aa1ae6e048df3ebc90d775f8e4bfadccfa5fe02`  
		Last Modified: Fri, 21 Aug 2026 18:22:10 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b28e14926e923915c54636c95951e3a353cd414afeb320d45a9451e56ba67d03`  
		Last Modified: Fri, 21 Aug 2026 18:22:11 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6eecd2703ec62877dce80f6d41bf214f720ecf22799d25594e6fd9fe31f6ef1`  
		Last Modified: Fri, 21 Aug 2026 18:22:12 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57cddaef27ab3098869017ee0ab6c8e795524514407a45f3e854e11bc306da96`  
		Last Modified: Fri, 21 Aug 2026 18:22:12 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:badb7a82c296f8fb10ce8dd95bc59ab98cbf03aed4419006186a10c998087a18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.8 KB (26835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71d8b32125f667ab5396bf00d5bcd933f40a42a31e6da82f395433f27883bdfa`

```dockerfile
```

-	Layers:
	-	`sha256:69a2c177eb0516ee67ba52ba3b49769958bee626bcb9de20afa0d88dc08bcf8f`  
		Last Modified: Fri, 21 Aug 2026 18:22:10 GMT  
		Size: 26.8 KB (26835 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.3-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:324360a9f037ec0822ed30ece0ebec0506066f9a80d1aedb22f3a7be83a4e044
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.9 MB (247850791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2280bbff48f55837b62f7c027dd9fb04323dd413b0113bea1ea6db3e9aeaf31`
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
# Fri, 21 Aug 2026 18:25:02 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 21 Aug 2026 18:25:02 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 21 Aug 2026 18:25:02 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 21 Aug 2026 18:25:02 GMT
ARG REPO_CHANNEL=stable
# Fri, 21 Aug 2026 18:25:02 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 21 Aug 2026 18:25:02 GMT
ARG VERSION=26.3.20.7
# Fri, 21 Aug 2026 18:25:02 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 21 Aug 2026 18:25:28 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.20.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:25:28 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.20.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:25:29 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.20.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 21 Aug 2026 18:25:29 GMT
ENV LANG=en_US.UTF-8
# Fri, 21 Aug 2026 18:25:29 GMT
ENV TZ=UTC
# Fri, 21 Aug 2026 18:25:30 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.20.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 21 Aug 2026 18:25:30 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 21 Aug 2026 18:25:30 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:25:30 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 21 Aug 2026 18:25:30 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 21 Aug 2026 18:25:30 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 21 Aug 2026 18:25:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:419eb6e73fe6bab9942cc40b3c43aed91d7fc526821c7b74575b97176c16a4ab`  
		Last Modified: Fri, 21 Aug 2026 18:25:52 GMT  
		Size: 7.5 MB (7533739 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3602dd47d4afdcd7ce7c5e57c6eec974a48f6c0970bab9f41a7bcfea5d7aba08`  
		Last Modified: Fri, 21 Aug 2026 18:25:56 GMT  
		Size: 211.8 MB (211826542 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7be465f00b30b0a86558226210f4e8572989a28f5ef4dbc0647f38d4c1ddf95`  
		Last Modified: Fri, 21 Aug 2026 18:25:51 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92009d1994bacc2f245a65657ecff077e2e1ea494dfd2130007d6e239387ac2f`  
		Last Modified: Fri, 21 Aug 2026 18:25:52 GMT  
		Size: 865.8 KB (865754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84d57c56bfc1c988d0860cc23f80a7a1ee08d1c05cb46f6fdcf5f42c2e679072`  
		Last Modified: Fri, 21 Aug 2026 18:25:53 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ca5bf3845c60436addd21c106a1228ac755ee13f91b598b7301ef864a3bd60b`  
		Last Modified: Fri, 21 Aug 2026 18:25:53 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba03d9f699a9ed20e95e98ad00a41c5409be81be6604a1f3aa19f3b77f1cdd89`  
		Last Modified: Fri, 21 Aug 2026 18:25:53 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:bf09110d2c782674d327533e34911a2b4d1107e680d8a0ad1ff2dad77d2bb317
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.0 KB (27048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c86ca1f52d9333a6408780a8abf6a04a11020bfeef48170995dbff3535a58cd1`

```dockerfile
```

-	Layers:
	-	`sha256:1414bf62c5993f18a9a1c18999028c1789c5bed58670935bb3317721d6d7fa9e`  
		Last Modified: Fri, 21 Aug 2026 18:25:51 GMT  
		Size: 27.0 KB (27048 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.3.20`

```console
$ docker pull clickhouse@sha256:d0a6f3c331378f28cf14d555ae2eec61fcd0a3cc14b765247cce58a1fe6a27d7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.3.20` - linux; amd64

```console
$ docker pull clickhouse@sha256:5245c5afd137d2ef21ddb651aff4b49a78adbcf9d3b9277eaee45f4fabf2b0e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.5 MB (266522660 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d655acaba9b06f85b0b49860cd1d05a2bdd11341117fb8deadd4153610146782`
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
# Fri, 21 Aug 2026 18:21:17 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 21 Aug 2026 18:21:17 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 21 Aug 2026 18:21:17 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 21 Aug 2026 18:21:17 GMT
ARG REPO_CHANNEL=stable
# Fri, 21 Aug 2026 18:21:17 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 21 Aug 2026 18:21:17 GMT
ARG VERSION=26.3.20.7
# Fri, 21 Aug 2026 18:21:17 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 21 Aug 2026 18:21:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.20.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:21:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.20.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:21:44 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.20.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 21 Aug 2026 18:21:44 GMT
ENV LANG=en_US.UTF-8
# Fri, 21 Aug 2026 18:21:44 GMT
ENV TZ=UTC
# Fri, 21 Aug 2026 18:21:44 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.20.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 21 Aug 2026 18:21:44 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 21 Aug 2026 18:21:45 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:21:45 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 21 Aug 2026 18:21:45 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 21 Aug 2026 18:21:45 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 21 Aug 2026 18:21:45 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5b257cf17174e4cc983bb7da5c5be2ee0ab3c49b02b4c59d84686491c6445ef`  
		Last Modified: Fri, 21 Aug 2026 18:22:10 GMT  
		Size: 7.6 MB (7553740 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee7ffa102c9728df3d2b09924721fb12c21dfc4c48f65cf141ff9b06d56ad6d0`  
		Last Modified: Fri, 21 Aug 2026 18:22:15 GMT  
		Size: 228.4 MB (228361927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fea2feac6e445e960d7348e40999dca1a61f08ec83205d964fb9507f6f14f4d`  
		Last Modified: Fri, 21 Aug 2026 18:22:10 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4685519d4abdfc8f0a39409f8aa1ae6e048df3ebc90d775f8e4bfadccfa5fe02`  
		Last Modified: Fri, 21 Aug 2026 18:22:10 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b28e14926e923915c54636c95951e3a353cd414afeb320d45a9451e56ba67d03`  
		Last Modified: Fri, 21 Aug 2026 18:22:11 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6eecd2703ec62877dce80f6d41bf214f720ecf22799d25594e6fd9fe31f6ef1`  
		Last Modified: Fri, 21 Aug 2026 18:22:12 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57cddaef27ab3098869017ee0ab6c8e795524514407a45f3e854e11bc306da96`  
		Last Modified: Fri, 21 Aug 2026 18:22:12 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.20` - unknown; unknown

```console
$ docker pull clickhouse@sha256:badb7a82c296f8fb10ce8dd95bc59ab98cbf03aed4419006186a10c998087a18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.8 KB (26835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71d8b32125f667ab5396bf00d5bcd933f40a42a31e6da82f395433f27883bdfa`

```dockerfile
```

-	Layers:
	-	`sha256:69a2c177eb0516ee67ba52ba3b49769958bee626bcb9de20afa0d88dc08bcf8f`  
		Last Modified: Fri, 21 Aug 2026 18:22:10 GMT  
		Size: 26.8 KB (26835 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.3.20` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:324360a9f037ec0822ed30ece0ebec0506066f9a80d1aedb22f3a7be83a4e044
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.9 MB (247850791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2280bbff48f55837b62f7c027dd9fb04323dd413b0113bea1ea6db3e9aeaf31`
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
# Fri, 21 Aug 2026 18:25:02 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 21 Aug 2026 18:25:02 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 21 Aug 2026 18:25:02 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 21 Aug 2026 18:25:02 GMT
ARG REPO_CHANNEL=stable
# Fri, 21 Aug 2026 18:25:02 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 21 Aug 2026 18:25:02 GMT
ARG VERSION=26.3.20.7
# Fri, 21 Aug 2026 18:25:02 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 21 Aug 2026 18:25:28 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.20.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:25:28 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.20.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:25:29 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.20.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 21 Aug 2026 18:25:29 GMT
ENV LANG=en_US.UTF-8
# Fri, 21 Aug 2026 18:25:29 GMT
ENV TZ=UTC
# Fri, 21 Aug 2026 18:25:30 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.20.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 21 Aug 2026 18:25:30 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 21 Aug 2026 18:25:30 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:25:30 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 21 Aug 2026 18:25:30 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 21 Aug 2026 18:25:30 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 21 Aug 2026 18:25:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:419eb6e73fe6bab9942cc40b3c43aed91d7fc526821c7b74575b97176c16a4ab`  
		Last Modified: Fri, 21 Aug 2026 18:25:52 GMT  
		Size: 7.5 MB (7533739 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3602dd47d4afdcd7ce7c5e57c6eec974a48f6c0970bab9f41a7bcfea5d7aba08`  
		Last Modified: Fri, 21 Aug 2026 18:25:56 GMT  
		Size: 211.8 MB (211826542 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7be465f00b30b0a86558226210f4e8572989a28f5ef4dbc0647f38d4c1ddf95`  
		Last Modified: Fri, 21 Aug 2026 18:25:51 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92009d1994bacc2f245a65657ecff077e2e1ea494dfd2130007d6e239387ac2f`  
		Last Modified: Fri, 21 Aug 2026 18:25:52 GMT  
		Size: 865.8 KB (865754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84d57c56bfc1c988d0860cc23f80a7a1ee08d1c05cb46f6fdcf5f42c2e679072`  
		Last Modified: Fri, 21 Aug 2026 18:25:53 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ca5bf3845c60436addd21c106a1228ac755ee13f91b598b7301ef864a3bd60b`  
		Last Modified: Fri, 21 Aug 2026 18:25:53 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba03d9f699a9ed20e95e98ad00a41c5409be81be6604a1f3aa19f3b77f1cdd89`  
		Last Modified: Fri, 21 Aug 2026 18:25:53 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.20` - unknown; unknown

```console
$ docker pull clickhouse@sha256:bf09110d2c782674d327533e34911a2b4d1107e680d8a0ad1ff2dad77d2bb317
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.0 KB (27048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c86ca1f52d9333a6408780a8abf6a04a11020bfeef48170995dbff3535a58cd1`

```dockerfile
```

-	Layers:
	-	`sha256:1414bf62c5993f18a9a1c18999028c1789c5bed58670935bb3317721d6d7fa9e`  
		Last Modified: Fri, 21 Aug 2026 18:25:51 GMT  
		Size: 27.0 KB (27048 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.3.20-jammy`

```console
$ docker pull clickhouse@sha256:d0a6f3c331378f28cf14d555ae2eec61fcd0a3cc14b765247cce58a1fe6a27d7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.3.20-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:5245c5afd137d2ef21ddb651aff4b49a78adbcf9d3b9277eaee45f4fabf2b0e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.5 MB (266522660 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d655acaba9b06f85b0b49860cd1d05a2bdd11341117fb8deadd4153610146782`
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
# Fri, 21 Aug 2026 18:21:17 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 21 Aug 2026 18:21:17 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 21 Aug 2026 18:21:17 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 21 Aug 2026 18:21:17 GMT
ARG REPO_CHANNEL=stable
# Fri, 21 Aug 2026 18:21:17 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 21 Aug 2026 18:21:17 GMT
ARG VERSION=26.3.20.7
# Fri, 21 Aug 2026 18:21:17 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 21 Aug 2026 18:21:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.20.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:21:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.20.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:21:44 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.20.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 21 Aug 2026 18:21:44 GMT
ENV LANG=en_US.UTF-8
# Fri, 21 Aug 2026 18:21:44 GMT
ENV TZ=UTC
# Fri, 21 Aug 2026 18:21:44 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.20.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 21 Aug 2026 18:21:44 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 21 Aug 2026 18:21:45 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:21:45 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 21 Aug 2026 18:21:45 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 21 Aug 2026 18:21:45 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 21 Aug 2026 18:21:45 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5b257cf17174e4cc983bb7da5c5be2ee0ab3c49b02b4c59d84686491c6445ef`  
		Last Modified: Fri, 21 Aug 2026 18:22:10 GMT  
		Size: 7.6 MB (7553740 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee7ffa102c9728df3d2b09924721fb12c21dfc4c48f65cf141ff9b06d56ad6d0`  
		Last Modified: Fri, 21 Aug 2026 18:22:15 GMT  
		Size: 228.4 MB (228361927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fea2feac6e445e960d7348e40999dca1a61f08ec83205d964fb9507f6f14f4d`  
		Last Modified: Fri, 21 Aug 2026 18:22:10 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4685519d4abdfc8f0a39409f8aa1ae6e048df3ebc90d775f8e4bfadccfa5fe02`  
		Last Modified: Fri, 21 Aug 2026 18:22:10 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b28e14926e923915c54636c95951e3a353cd414afeb320d45a9451e56ba67d03`  
		Last Modified: Fri, 21 Aug 2026 18:22:11 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6eecd2703ec62877dce80f6d41bf214f720ecf22799d25594e6fd9fe31f6ef1`  
		Last Modified: Fri, 21 Aug 2026 18:22:12 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57cddaef27ab3098869017ee0ab6c8e795524514407a45f3e854e11bc306da96`  
		Last Modified: Fri, 21 Aug 2026 18:22:12 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.20-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:badb7a82c296f8fb10ce8dd95bc59ab98cbf03aed4419006186a10c998087a18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.8 KB (26835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71d8b32125f667ab5396bf00d5bcd933f40a42a31e6da82f395433f27883bdfa`

```dockerfile
```

-	Layers:
	-	`sha256:69a2c177eb0516ee67ba52ba3b49769958bee626bcb9de20afa0d88dc08bcf8f`  
		Last Modified: Fri, 21 Aug 2026 18:22:10 GMT  
		Size: 26.8 KB (26835 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.3.20-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:324360a9f037ec0822ed30ece0ebec0506066f9a80d1aedb22f3a7be83a4e044
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.9 MB (247850791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2280bbff48f55837b62f7c027dd9fb04323dd413b0113bea1ea6db3e9aeaf31`
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
# Fri, 21 Aug 2026 18:25:02 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 21 Aug 2026 18:25:02 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 21 Aug 2026 18:25:02 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 21 Aug 2026 18:25:02 GMT
ARG REPO_CHANNEL=stable
# Fri, 21 Aug 2026 18:25:02 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 21 Aug 2026 18:25:02 GMT
ARG VERSION=26.3.20.7
# Fri, 21 Aug 2026 18:25:02 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 21 Aug 2026 18:25:28 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.20.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:25:28 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.20.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:25:29 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.20.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 21 Aug 2026 18:25:29 GMT
ENV LANG=en_US.UTF-8
# Fri, 21 Aug 2026 18:25:29 GMT
ENV TZ=UTC
# Fri, 21 Aug 2026 18:25:30 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.20.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 21 Aug 2026 18:25:30 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 21 Aug 2026 18:25:30 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:25:30 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 21 Aug 2026 18:25:30 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 21 Aug 2026 18:25:30 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 21 Aug 2026 18:25:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:419eb6e73fe6bab9942cc40b3c43aed91d7fc526821c7b74575b97176c16a4ab`  
		Last Modified: Fri, 21 Aug 2026 18:25:52 GMT  
		Size: 7.5 MB (7533739 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3602dd47d4afdcd7ce7c5e57c6eec974a48f6c0970bab9f41a7bcfea5d7aba08`  
		Last Modified: Fri, 21 Aug 2026 18:25:56 GMT  
		Size: 211.8 MB (211826542 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7be465f00b30b0a86558226210f4e8572989a28f5ef4dbc0647f38d4c1ddf95`  
		Last Modified: Fri, 21 Aug 2026 18:25:51 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92009d1994bacc2f245a65657ecff077e2e1ea494dfd2130007d6e239387ac2f`  
		Last Modified: Fri, 21 Aug 2026 18:25:52 GMT  
		Size: 865.8 KB (865754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84d57c56bfc1c988d0860cc23f80a7a1ee08d1c05cb46f6fdcf5f42c2e679072`  
		Last Modified: Fri, 21 Aug 2026 18:25:53 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ca5bf3845c60436addd21c106a1228ac755ee13f91b598b7301ef864a3bd60b`  
		Last Modified: Fri, 21 Aug 2026 18:25:53 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba03d9f699a9ed20e95e98ad00a41c5409be81be6604a1f3aa19f3b77f1cdd89`  
		Last Modified: Fri, 21 Aug 2026 18:25:53 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.20-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:bf09110d2c782674d327533e34911a2b4d1107e680d8a0ad1ff2dad77d2bb317
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.0 KB (27048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c86ca1f52d9333a6408780a8abf6a04a11020bfeef48170995dbff3535a58cd1`

```dockerfile
```

-	Layers:
	-	`sha256:1414bf62c5993f18a9a1c18999028c1789c5bed58670935bb3317721d6d7fa9e`  
		Last Modified: Fri, 21 Aug 2026 18:25:51 GMT  
		Size: 27.0 KB (27048 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.3.20.7`

```console
$ docker pull clickhouse@sha256:d0a6f3c331378f28cf14d555ae2eec61fcd0a3cc14b765247cce58a1fe6a27d7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.3.20.7` - linux; amd64

```console
$ docker pull clickhouse@sha256:5245c5afd137d2ef21ddb651aff4b49a78adbcf9d3b9277eaee45f4fabf2b0e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.5 MB (266522660 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d655acaba9b06f85b0b49860cd1d05a2bdd11341117fb8deadd4153610146782`
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
# Fri, 21 Aug 2026 18:21:17 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 21 Aug 2026 18:21:17 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 21 Aug 2026 18:21:17 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 21 Aug 2026 18:21:17 GMT
ARG REPO_CHANNEL=stable
# Fri, 21 Aug 2026 18:21:17 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 21 Aug 2026 18:21:17 GMT
ARG VERSION=26.3.20.7
# Fri, 21 Aug 2026 18:21:17 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 21 Aug 2026 18:21:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.20.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:21:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.20.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:21:44 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.20.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 21 Aug 2026 18:21:44 GMT
ENV LANG=en_US.UTF-8
# Fri, 21 Aug 2026 18:21:44 GMT
ENV TZ=UTC
# Fri, 21 Aug 2026 18:21:44 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.20.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 21 Aug 2026 18:21:44 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 21 Aug 2026 18:21:45 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:21:45 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 21 Aug 2026 18:21:45 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 21 Aug 2026 18:21:45 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 21 Aug 2026 18:21:45 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5b257cf17174e4cc983bb7da5c5be2ee0ab3c49b02b4c59d84686491c6445ef`  
		Last Modified: Fri, 21 Aug 2026 18:22:10 GMT  
		Size: 7.6 MB (7553740 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee7ffa102c9728df3d2b09924721fb12c21dfc4c48f65cf141ff9b06d56ad6d0`  
		Last Modified: Fri, 21 Aug 2026 18:22:15 GMT  
		Size: 228.4 MB (228361927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fea2feac6e445e960d7348e40999dca1a61f08ec83205d964fb9507f6f14f4d`  
		Last Modified: Fri, 21 Aug 2026 18:22:10 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4685519d4abdfc8f0a39409f8aa1ae6e048df3ebc90d775f8e4bfadccfa5fe02`  
		Last Modified: Fri, 21 Aug 2026 18:22:10 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b28e14926e923915c54636c95951e3a353cd414afeb320d45a9451e56ba67d03`  
		Last Modified: Fri, 21 Aug 2026 18:22:11 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6eecd2703ec62877dce80f6d41bf214f720ecf22799d25594e6fd9fe31f6ef1`  
		Last Modified: Fri, 21 Aug 2026 18:22:12 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57cddaef27ab3098869017ee0ab6c8e795524514407a45f3e854e11bc306da96`  
		Last Modified: Fri, 21 Aug 2026 18:22:12 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.20.7` - unknown; unknown

```console
$ docker pull clickhouse@sha256:badb7a82c296f8fb10ce8dd95bc59ab98cbf03aed4419006186a10c998087a18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.8 KB (26835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71d8b32125f667ab5396bf00d5bcd933f40a42a31e6da82f395433f27883bdfa`

```dockerfile
```

-	Layers:
	-	`sha256:69a2c177eb0516ee67ba52ba3b49769958bee626bcb9de20afa0d88dc08bcf8f`  
		Last Modified: Fri, 21 Aug 2026 18:22:10 GMT  
		Size: 26.8 KB (26835 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.3.20.7` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:324360a9f037ec0822ed30ece0ebec0506066f9a80d1aedb22f3a7be83a4e044
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.9 MB (247850791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2280bbff48f55837b62f7c027dd9fb04323dd413b0113bea1ea6db3e9aeaf31`
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
# Fri, 21 Aug 2026 18:25:02 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 21 Aug 2026 18:25:02 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 21 Aug 2026 18:25:02 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 21 Aug 2026 18:25:02 GMT
ARG REPO_CHANNEL=stable
# Fri, 21 Aug 2026 18:25:02 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 21 Aug 2026 18:25:02 GMT
ARG VERSION=26.3.20.7
# Fri, 21 Aug 2026 18:25:02 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 21 Aug 2026 18:25:28 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.20.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:25:28 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.20.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:25:29 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.20.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 21 Aug 2026 18:25:29 GMT
ENV LANG=en_US.UTF-8
# Fri, 21 Aug 2026 18:25:29 GMT
ENV TZ=UTC
# Fri, 21 Aug 2026 18:25:30 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.20.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 21 Aug 2026 18:25:30 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 21 Aug 2026 18:25:30 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:25:30 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 21 Aug 2026 18:25:30 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 21 Aug 2026 18:25:30 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 21 Aug 2026 18:25:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:419eb6e73fe6bab9942cc40b3c43aed91d7fc526821c7b74575b97176c16a4ab`  
		Last Modified: Fri, 21 Aug 2026 18:25:52 GMT  
		Size: 7.5 MB (7533739 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3602dd47d4afdcd7ce7c5e57c6eec974a48f6c0970bab9f41a7bcfea5d7aba08`  
		Last Modified: Fri, 21 Aug 2026 18:25:56 GMT  
		Size: 211.8 MB (211826542 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7be465f00b30b0a86558226210f4e8572989a28f5ef4dbc0647f38d4c1ddf95`  
		Last Modified: Fri, 21 Aug 2026 18:25:51 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92009d1994bacc2f245a65657ecff077e2e1ea494dfd2130007d6e239387ac2f`  
		Last Modified: Fri, 21 Aug 2026 18:25:52 GMT  
		Size: 865.8 KB (865754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84d57c56bfc1c988d0860cc23f80a7a1ee08d1c05cb46f6fdcf5f42c2e679072`  
		Last Modified: Fri, 21 Aug 2026 18:25:53 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ca5bf3845c60436addd21c106a1228ac755ee13f91b598b7301ef864a3bd60b`  
		Last Modified: Fri, 21 Aug 2026 18:25:53 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba03d9f699a9ed20e95e98ad00a41c5409be81be6604a1f3aa19f3b77f1cdd89`  
		Last Modified: Fri, 21 Aug 2026 18:25:53 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.20.7` - unknown; unknown

```console
$ docker pull clickhouse@sha256:bf09110d2c782674d327533e34911a2b4d1107e680d8a0ad1ff2dad77d2bb317
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.0 KB (27048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c86ca1f52d9333a6408780a8abf6a04a11020bfeef48170995dbff3535a58cd1`

```dockerfile
```

-	Layers:
	-	`sha256:1414bf62c5993f18a9a1c18999028c1789c5bed58670935bb3317721d6d7fa9e`  
		Last Modified: Fri, 21 Aug 2026 18:25:51 GMT  
		Size: 27.0 KB (27048 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.3.20.7-jammy`

```console
$ docker pull clickhouse@sha256:d0a6f3c331378f28cf14d555ae2eec61fcd0a3cc14b765247cce58a1fe6a27d7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.3.20.7-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:5245c5afd137d2ef21ddb651aff4b49a78adbcf9d3b9277eaee45f4fabf2b0e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.5 MB (266522660 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d655acaba9b06f85b0b49860cd1d05a2bdd11341117fb8deadd4153610146782`
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
# Fri, 21 Aug 2026 18:21:17 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 21 Aug 2026 18:21:17 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 21 Aug 2026 18:21:17 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 21 Aug 2026 18:21:17 GMT
ARG REPO_CHANNEL=stable
# Fri, 21 Aug 2026 18:21:17 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 21 Aug 2026 18:21:17 GMT
ARG VERSION=26.3.20.7
# Fri, 21 Aug 2026 18:21:17 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 21 Aug 2026 18:21:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.20.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:21:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.20.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:21:44 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.20.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 21 Aug 2026 18:21:44 GMT
ENV LANG=en_US.UTF-8
# Fri, 21 Aug 2026 18:21:44 GMT
ENV TZ=UTC
# Fri, 21 Aug 2026 18:21:44 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.20.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 21 Aug 2026 18:21:44 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 21 Aug 2026 18:21:45 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:21:45 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 21 Aug 2026 18:21:45 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 21 Aug 2026 18:21:45 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 21 Aug 2026 18:21:45 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5b257cf17174e4cc983bb7da5c5be2ee0ab3c49b02b4c59d84686491c6445ef`  
		Last Modified: Fri, 21 Aug 2026 18:22:10 GMT  
		Size: 7.6 MB (7553740 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee7ffa102c9728df3d2b09924721fb12c21dfc4c48f65cf141ff9b06d56ad6d0`  
		Last Modified: Fri, 21 Aug 2026 18:22:15 GMT  
		Size: 228.4 MB (228361927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fea2feac6e445e960d7348e40999dca1a61f08ec83205d964fb9507f6f14f4d`  
		Last Modified: Fri, 21 Aug 2026 18:22:10 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4685519d4abdfc8f0a39409f8aa1ae6e048df3ebc90d775f8e4bfadccfa5fe02`  
		Last Modified: Fri, 21 Aug 2026 18:22:10 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b28e14926e923915c54636c95951e3a353cd414afeb320d45a9451e56ba67d03`  
		Last Modified: Fri, 21 Aug 2026 18:22:11 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6eecd2703ec62877dce80f6d41bf214f720ecf22799d25594e6fd9fe31f6ef1`  
		Last Modified: Fri, 21 Aug 2026 18:22:12 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57cddaef27ab3098869017ee0ab6c8e795524514407a45f3e854e11bc306da96`  
		Last Modified: Fri, 21 Aug 2026 18:22:12 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.20.7-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:badb7a82c296f8fb10ce8dd95bc59ab98cbf03aed4419006186a10c998087a18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.8 KB (26835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71d8b32125f667ab5396bf00d5bcd933f40a42a31e6da82f395433f27883bdfa`

```dockerfile
```

-	Layers:
	-	`sha256:69a2c177eb0516ee67ba52ba3b49769958bee626bcb9de20afa0d88dc08bcf8f`  
		Last Modified: Fri, 21 Aug 2026 18:22:10 GMT  
		Size: 26.8 KB (26835 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.3.20.7-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:324360a9f037ec0822ed30ece0ebec0506066f9a80d1aedb22f3a7be83a4e044
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.9 MB (247850791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2280bbff48f55837b62f7c027dd9fb04323dd413b0113bea1ea6db3e9aeaf31`
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
# Fri, 21 Aug 2026 18:25:02 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 21 Aug 2026 18:25:02 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 21 Aug 2026 18:25:02 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 21 Aug 2026 18:25:02 GMT
ARG REPO_CHANNEL=stable
# Fri, 21 Aug 2026 18:25:02 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 21 Aug 2026 18:25:02 GMT
ARG VERSION=26.3.20.7
# Fri, 21 Aug 2026 18:25:02 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 21 Aug 2026 18:25:28 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.20.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:25:28 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.20.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:25:29 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.20.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 21 Aug 2026 18:25:29 GMT
ENV LANG=en_US.UTF-8
# Fri, 21 Aug 2026 18:25:29 GMT
ENV TZ=UTC
# Fri, 21 Aug 2026 18:25:30 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.20.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 21 Aug 2026 18:25:30 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 21 Aug 2026 18:25:30 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:25:30 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 21 Aug 2026 18:25:30 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 21 Aug 2026 18:25:30 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 21 Aug 2026 18:25:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:419eb6e73fe6bab9942cc40b3c43aed91d7fc526821c7b74575b97176c16a4ab`  
		Last Modified: Fri, 21 Aug 2026 18:25:52 GMT  
		Size: 7.5 MB (7533739 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3602dd47d4afdcd7ce7c5e57c6eec974a48f6c0970bab9f41a7bcfea5d7aba08`  
		Last Modified: Fri, 21 Aug 2026 18:25:56 GMT  
		Size: 211.8 MB (211826542 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7be465f00b30b0a86558226210f4e8572989a28f5ef4dbc0647f38d4c1ddf95`  
		Last Modified: Fri, 21 Aug 2026 18:25:51 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92009d1994bacc2f245a65657ecff077e2e1ea494dfd2130007d6e239387ac2f`  
		Last Modified: Fri, 21 Aug 2026 18:25:52 GMT  
		Size: 865.8 KB (865754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84d57c56bfc1c988d0860cc23f80a7a1ee08d1c05cb46f6fdcf5f42c2e679072`  
		Last Modified: Fri, 21 Aug 2026 18:25:53 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ca5bf3845c60436addd21c106a1228ac755ee13f91b598b7301ef864a3bd60b`  
		Last Modified: Fri, 21 Aug 2026 18:25:53 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba03d9f699a9ed20e95e98ad00a41c5409be81be6604a1f3aa19f3b77f1cdd89`  
		Last Modified: Fri, 21 Aug 2026 18:25:53 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.20.7-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:bf09110d2c782674d327533e34911a2b4d1107e680d8a0ad1ff2dad77d2bb317
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.0 KB (27048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c86ca1f52d9333a6408780a8abf6a04a11020bfeef48170995dbff3535a58cd1`

```dockerfile
```

-	Layers:
	-	`sha256:1414bf62c5993f18a9a1c18999028c1789c5bed58670935bb3317721d6d7fa9e`  
		Last Modified: Fri, 21 Aug 2026 18:25:51 GMT  
		Size: 27.0 KB (27048 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.5`

```console
$ docker pull clickhouse@sha256:7cd0140e8bc36a23d6f41c7ed374844f4159db98bc2b6c491b45aabbbba1f0b2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.5` - linux; amd64

```console
$ docker pull clickhouse@sha256:1e7922e523be0f80b2fa1e84265ce2c84f30b1129d65f44e0504d5cd3542d1ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.9 MB (262871629 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b529d4c12989c97aef7438db2c115dfd7605368d8f50ba82e28ebb06455491f`
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
# Fri, 21 Aug 2026 18:21:15 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 21 Aug 2026 18:21:15 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 21 Aug 2026 18:21:15 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 21 Aug 2026 18:21:15 GMT
ARG REPO_CHANNEL=stable
# Fri, 21 Aug 2026 18:21:15 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 21 Aug 2026 18:21:15 GMT
ARG VERSION=26.5.7.64
# Fri, 21 Aug 2026 18:21:15 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 21 Aug 2026 18:21:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.7.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:21:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.7.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:21:42 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.7.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 21 Aug 2026 18:21:42 GMT
ENV LANG=en_US.UTF-8
# Fri, 21 Aug 2026 18:21:42 GMT
ENV TZ=UTC
# Fri, 21 Aug 2026 18:21:42 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.7.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 21 Aug 2026 18:21:42 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 21 Aug 2026 18:21:42 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:21:42 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 21 Aug 2026 18:21:42 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 21 Aug 2026 18:21:42 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 21 Aug 2026 18:21:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2122d2445cc73c2bd2f419d98e30eb3c4a18e5c72ed6409a33115a7184c012ec`  
		Last Modified: Fri, 21 Aug 2026 18:22:08 GMT  
		Size: 7.6 MB (7553626 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98821b2a497ba26ddf35cf5b61e5b982c2a1e65087b77b09c563032f0cf697f6`  
		Last Modified: Fri, 21 Aug 2026 18:22:13 GMT  
		Size: 224.7 MB (224711009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3410ceb0280f64c8794babc1c47a15d5f71809ccb03aadcd2dfaee80a8f90a63`  
		Last Modified: Fri, 21 Aug 2026 18:22:01 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da0866aa556973289db1d8a29cd5de8845f401756892071e48cabc36cf739437`  
		Last Modified: Fri, 21 Aug 2026 18:22:08 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d54e7a83b8d41e943e46272b73b85f4b0ab7964013f8a9f65b338bb1e4121e3d`  
		Last Modified: Fri, 21 Aug 2026 18:22:02 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1017852a9d8cae3e99d6a0de1c05190182847d9cd0d0aba83a3438c6fe87cb1`  
		Last Modified: Fri, 21 Aug 2026 18:22:08 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e37931c64253f04d1e6edaa905deca9ac406eae9c8daed6b24d29069fecf5ba2`  
		Last Modified: Fri, 21 Aug 2026 18:22:09 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.5` - unknown; unknown

```console
$ docker pull clickhouse@sha256:8d24ac2e1473913ab2161a6f4d8a7506674fc3553d1ab484fc7eeae9e4883dc5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ca1eb05b078bbf0b32e75a18f74dc2f870715612c94b5300d03a7d2d43fe531`

```dockerfile
```

-	Layers:
	-	`sha256:28817539bca718ea21dcd60aa00d26d170d9574a9ebebc382a8c96b61bbc3d11`  
		Last Modified: Fri, 21 Aug 2026 18:22:08 GMT  
		Size: 26.2 KB (26220 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.5` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:254f5e3f156f7acf989816249b261d7b0d402a1ea25e1417d961b2d02f7ccbe6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.5 MB (248461308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da13371e2e476682d932f26818d896b485b6dcee8ca7e7791441f0ac06f5f224`
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
# Fri, 21 Aug 2026 18:25:02 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 21 Aug 2026 18:25:02 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 21 Aug 2026 18:25:02 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 21 Aug 2026 18:25:02 GMT
ARG REPO_CHANNEL=stable
# Fri, 21 Aug 2026 18:25:02 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 21 Aug 2026 18:25:02 GMT
ARG VERSION=26.5.7.64
# Fri, 21 Aug 2026 18:25:02 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 21 Aug 2026 18:25:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.7.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:25:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.7.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:25:35 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.7.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 21 Aug 2026 18:25:35 GMT
ENV LANG=en_US.UTF-8
# Fri, 21 Aug 2026 18:25:35 GMT
ENV TZ=UTC
# Fri, 21 Aug 2026 18:25:35 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.7.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 21 Aug 2026 18:25:35 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 21 Aug 2026 18:25:35 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:25:35 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 21 Aug 2026 18:25:35 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 21 Aug 2026 18:25:35 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 21 Aug 2026 18:25:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e93dad6e21e51303cfb56a4ee808248be14ead91aff00bf2105effc0b4504b3`  
		Last Modified: Fri, 21 Aug 2026 18:25:57 GMT  
		Size: 7.5 MB (7533713 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c36299cbefa510b6ee1b064a7b51d6b251e686a29598efccbcd14c34d312ffe`  
		Last Modified: Fri, 21 Aug 2026 18:26:02 GMT  
		Size: 212.4 MB (212437090 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a65d5957391c87d57203d5fd06c8024b2f22e576aa0172e4910539b2ab6fab5`  
		Last Modified: Fri, 21 Aug 2026 18:25:57 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f847ee57ce8bda6fe2aadc8fadafbeec4ffabc40d2fc6b8f08d5cc942d077f8`  
		Last Modified: Fri, 21 Aug 2026 18:25:54 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7320408ef22b822c12d8e7e716ac807aeb11bd079da96ffd42e04376cb2ee7b9`  
		Last Modified: Fri, 21 Aug 2026 18:25:55 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f51b59451edc841681a7573e5bd8638cc376225ebe31512c9ae8e8fb026cb5a4`  
		Last Modified: Fri, 21 Aug 2026 18:25:57 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7b5628d1ae5de4f20efea98c656979abf8bd409d2e4a2ac61d13c0a6733719b`  
		Last Modified: Fri, 21 Aug 2026 18:25:58 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.5` - unknown; unknown

```console
$ docker pull clickhouse@sha256:ead8f868b6d34fb22bb5055bc6fea2e7f910d047b99eaae7e09cd6dccec786b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64ec2ad6147352c1524c170a1ea45440c55ae500e573d8a096bd604fa18b8c41`

```dockerfile
```

-	Layers:
	-	`sha256:20717b9e178b0da8f2fa7641692e906144c7924c289e8184003de6b06045d586`  
		Last Modified: Fri, 21 Aug 2026 18:25:57 GMT  
		Size: 26.4 KB (26408 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.5-jammy`

```console
$ docker pull clickhouse@sha256:7cd0140e8bc36a23d6f41c7ed374844f4159db98bc2b6c491b45aabbbba1f0b2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.5-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:1e7922e523be0f80b2fa1e84265ce2c84f30b1129d65f44e0504d5cd3542d1ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.9 MB (262871629 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b529d4c12989c97aef7438db2c115dfd7605368d8f50ba82e28ebb06455491f`
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
# Fri, 21 Aug 2026 18:21:15 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 21 Aug 2026 18:21:15 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 21 Aug 2026 18:21:15 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 21 Aug 2026 18:21:15 GMT
ARG REPO_CHANNEL=stable
# Fri, 21 Aug 2026 18:21:15 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 21 Aug 2026 18:21:15 GMT
ARG VERSION=26.5.7.64
# Fri, 21 Aug 2026 18:21:15 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 21 Aug 2026 18:21:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.7.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:21:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.7.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:21:42 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.7.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 21 Aug 2026 18:21:42 GMT
ENV LANG=en_US.UTF-8
# Fri, 21 Aug 2026 18:21:42 GMT
ENV TZ=UTC
# Fri, 21 Aug 2026 18:21:42 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.7.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 21 Aug 2026 18:21:42 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 21 Aug 2026 18:21:42 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:21:42 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 21 Aug 2026 18:21:42 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 21 Aug 2026 18:21:42 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 21 Aug 2026 18:21:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2122d2445cc73c2bd2f419d98e30eb3c4a18e5c72ed6409a33115a7184c012ec`  
		Last Modified: Fri, 21 Aug 2026 18:22:08 GMT  
		Size: 7.6 MB (7553626 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98821b2a497ba26ddf35cf5b61e5b982c2a1e65087b77b09c563032f0cf697f6`  
		Last Modified: Fri, 21 Aug 2026 18:22:13 GMT  
		Size: 224.7 MB (224711009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3410ceb0280f64c8794babc1c47a15d5f71809ccb03aadcd2dfaee80a8f90a63`  
		Last Modified: Fri, 21 Aug 2026 18:22:01 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da0866aa556973289db1d8a29cd5de8845f401756892071e48cabc36cf739437`  
		Last Modified: Fri, 21 Aug 2026 18:22:08 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d54e7a83b8d41e943e46272b73b85f4b0ab7964013f8a9f65b338bb1e4121e3d`  
		Last Modified: Fri, 21 Aug 2026 18:22:02 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1017852a9d8cae3e99d6a0de1c05190182847d9cd0d0aba83a3438c6fe87cb1`  
		Last Modified: Fri, 21 Aug 2026 18:22:08 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e37931c64253f04d1e6edaa905deca9ac406eae9c8daed6b24d29069fecf5ba2`  
		Last Modified: Fri, 21 Aug 2026 18:22:09 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.5-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:8d24ac2e1473913ab2161a6f4d8a7506674fc3553d1ab484fc7eeae9e4883dc5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ca1eb05b078bbf0b32e75a18f74dc2f870715612c94b5300d03a7d2d43fe531`

```dockerfile
```

-	Layers:
	-	`sha256:28817539bca718ea21dcd60aa00d26d170d9574a9ebebc382a8c96b61bbc3d11`  
		Last Modified: Fri, 21 Aug 2026 18:22:08 GMT  
		Size: 26.2 KB (26220 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.5-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:254f5e3f156f7acf989816249b261d7b0d402a1ea25e1417d961b2d02f7ccbe6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.5 MB (248461308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da13371e2e476682d932f26818d896b485b6dcee8ca7e7791441f0ac06f5f224`
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
# Fri, 21 Aug 2026 18:25:02 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 21 Aug 2026 18:25:02 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 21 Aug 2026 18:25:02 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 21 Aug 2026 18:25:02 GMT
ARG REPO_CHANNEL=stable
# Fri, 21 Aug 2026 18:25:02 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 21 Aug 2026 18:25:02 GMT
ARG VERSION=26.5.7.64
# Fri, 21 Aug 2026 18:25:02 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 21 Aug 2026 18:25:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.7.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:25:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.7.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:25:35 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.7.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 21 Aug 2026 18:25:35 GMT
ENV LANG=en_US.UTF-8
# Fri, 21 Aug 2026 18:25:35 GMT
ENV TZ=UTC
# Fri, 21 Aug 2026 18:25:35 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.7.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 21 Aug 2026 18:25:35 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 21 Aug 2026 18:25:35 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:25:35 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 21 Aug 2026 18:25:35 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 21 Aug 2026 18:25:35 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 21 Aug 2026 18:25:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e93dad6e21e51303cfb56a4ee808248be14ead91aff00bf2105effc0b4504b3`  
		Last Modified: Fri, 21 Aug 2026 18:25:57 GMT  
		Size: 7.5 MB (7533713 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c36299cbefa510b6ee1b064a7b51d6b251e686a29598efccbcd14c34d312ffe`  
		Last Modified: Fri, 21 Aug 2026 18:26:02 GMT  
		Size: 212.4 MB (212437090 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a65d5957391c87d57203d5fd06c8024b2f22e576aa0172e4910539b2ab6fab5`  
		Last Modified: Fri, 21 Aug 2026 18:25:57 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f847ee57ce8bda6fe2aadc8fadafbeec4ffabc40d2fc6b8f08d5cc942d077f8`  
		Last Modified: Fri, 21 Aug 2026 18:25:54 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7320408ef22b822c12d8e7e716ac807aeb11bd079da96ffd42e04376cb2ee7b9`  
		Last Modified: Fri, 21 Aug 2026 18:25:55 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f51b59451edc841681a7573e5bd8638cc376225ebe31512c9ae8e8fb026cb5a4`  
		Last Modified: Fri, 21 Aug 2026 18:25:57 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7b5628d1ae5de4f20efea98c656979abf8bd409d2e4a2ac61d13c0a6733719b`  
		Last Modified: Fri, 21 Aug 2026 18:25:58 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.5-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:ead8f868b6d34fb22bb5055bc6fea2e7f910d047b99eaae7e09cd6dccec786b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64ec2ad6147352c1524c170a1ea45440c55ae500e573d8a096bd604fa18b8c41`

```dockerfile
```

-	Layers:
	-	`sha256:20717b9e178b0da8f2fa7641692e906144c7924c289e8184003de6b06045d586`  
		Last Modified: Fri, 21 Aug 2026 18:25:57 GMT  
		Size: 26.4 KB (26408 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.5.7`

```console
$ docker pull clickhouse@sha256:7cd0140e8bc36a23d6f41c7ed374844f4159db98bc2b6c491b45aabbbba1f0b2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.5.7` - linux; amd64

```console
$ docker pull clickhouse@sha256:1e7922e523be0f80b2fa1e84265ce2c84f30b1129d65f44e0504d5cd3542d1ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.9 MB (262871629 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b529d4c12989c97aef7438db2c115dfd7605368d8f50ba82e28ebb06455491f`
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
# Fri, 21 Aug 2026 18:21:15 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 21 Aug 2026 18:21:15 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 21 Aug 2026 18:21:15 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 21 Aug 2026 18:21:15 GMT
ARG REPO_CHANNEL=stable
# Fri, 21 Aug 2026 18:21:15 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 21 Aug 2026 18:21:15 GMT
ARG VERSION=26.5.7.64
# Fri, 21 Aug 2026 18:21:15 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 21 Aug 2026 18:21:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.7.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:21:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.7.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:21:42 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.7.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 21 Aug 2026 18:21:42 GMT
ENV LANG=en_US.UTF-8
# Fri, 21 Aug 2026 18:21:42 GMT
ENV TZ=UTC
# Fri, 21 Aug 2026 18:21:42 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.7.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 21 Aug 2026 18:21:42 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 21 Aug 2026 18:21:42 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:21:42 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 21 Aug 2026 18:21:42 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 21 Aug 2026 18:21:42 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 21 Aug 2026 18:21:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2122d2445cc73c2bd2f419d98e30eb3c4a18e5c72ed6409a33115a7184c012ec`  
		Last Modified: Fri, 21 Aug 2026 18:22:08 GMT  
		Size: 7.6 MB (7553626 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98821b2a497ba26ddf35cf5b61e5b982c2a1e65087b77b09c563032f0cf697f6`  
		Last Modified: Fri, 21 Aug 2026 18:22:13 GMT  
		Size: 224.7 MB (224711009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3410ceb0280f64c8794babc1c47a15d5f71809ccb03aadcd2dfaee80a8f90a63`  
		Last Modified: Fri, 21 Aug 2026 18:22:01 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da0866aa556973289db1d8a29cd5de8845f401756892071e48cabc36cf739437`  
		Last Modified: Fri, 21 Aug 2026 18:22:08 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d54e7a83b8d41e943e46272b73b85f4b0ab7964013f8a9f65b338bb1e4121e3d`  
		Last Modified: Fri, 21 Aug 2026 18:22:02 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1017852a9d8cae3e99d6a0de1c05190182847d9cd0d0aba83a3438c6fe87cb1`  
		Last Modified: Fri, 21 Aug 2026 18:22:08 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e37931c64253f04d1e6edaa905deca9ac406eae9c8daed6b24d29069fecf5ba2`  
		Last Modified: Fri, 21 Aug 2026 18:22:09 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.5.7` - unknown; unknown

```console
$ docker pull clickhouse@sha256:8d24ac2e1473913ab2161a6f4d8a7506674fc3553d1ab484fc7eeae9e4883dc5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ca1eb05b078bbf0b32e75a18f74dc2f870715612c94b5300d03a7d2d43fe531`

```dockerfile
```

-	Layers:
	-	`sha256:28817539bca718ea21dcd60aa00d26d170d9574a9ebebc382a8c96b61bbc3d11`  
		Last Modified: Fri, 21 Aug 2026 18:22:08 GMT  
		Size: 26.2 KB (26220 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.5.7` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:254f5e3f156f7acf989816249b261d7b0d402a1ea25e1417d961b2d02f7ccbe6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.5 MB (248461308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da13371e2e476682d932f26818d896b485b6dcee8ca7e7791441f0ac06f5f224`
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
# Fri, 21 Aug 2026 18:25:02 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 21 Aug 2026 18:25:02 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 21 Aug 2026 18:25:02 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 21 Aug 2026 18:25:02 GMT
ARG REPO_CHANNEL=stable
# Fri, 21 Aug 2026 18:25:02 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 21 Aug 2026 18:25:02 GMT
ARG VERSION=26.5.7.64
# Fri, 21 Aug 2026 18:25:02 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 21 Aug 2026 18:25:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.7.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:25:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.7.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:25:35 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.7.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 21 Aug 2026 18:25:35 GMT
ENV LANG=en_US.UTF-8
# Fri, 21 Aug 2026 18:25:35 GMT
ENV TZ=UTC
# Fri, 21 Aug 2026 18:25:35 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.7.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 21 Aug 2026 18:25:35 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 21 Aug 2026 18:25:35 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:25:35 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 21 Aug 2026 18:25:35 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 21 Aug 2026 18:25:35 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 21 Aug 2026 18:25:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e93dad6e21e51303cfb56a4ee808248be14ead91aff00bf2105effc0b4504b3`  
		Last Modified: Fri, 21 Aug 2026 18:25:57 GMT  
		Size: 7.5 MB (7533713 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c36299cbefa510b6ee1b064a7b51d6b251e686a29598efccbcd14c34d312ffe`  
		Last Modified: Fri, 21 Aug 2026 18:26:02 GMT  
		Size: 212.4 MB (212437090 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a65d5957391c87d57203d5fd06c8024b2f22e576aa0172e4910539b2ab6fab5`  
		Last Modified: Fri, 21 Aug 2026 18:25:57 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f847ee57ce8bda6fe2aadc8fadafbeec4ffabc40d2fc6b8f08d5cc942d077f8`  
		Last Modified: Fri, 21 Aug 2026 18:25:54 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7320408ef22b822c12d8e7e716ac807aeb11bd079da96ffd42e04376cb2ee7b9`  
		Last Modified: Fri, 21 Aug 2026 18:25:55 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f51b59451edc841681a7573e5bd8638cc376225ebe31512c9ae8e8fb026cb5a4`  
		Last Modified: Fri, 21 Aug 2026 18:25:57 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7b5628d1ae5de4f20efea98c656979abf8bd409d2e4a2ac61d13c0a6733719b`  
		Last Modified: Fri, 21 Aug 2026 18:25:58 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.5.7` - unknown; unknown

```console
$ docker pull clickhouse@sha256:ead8f868b6d34fb22bb5055bc6fea2e7f910d047b99eaae7e09cd6dccec786b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64ec2ad6147352c1524c170a1ea45440c55ae500e573d8a096bd604fa18b8c41`

```dockerfile
```

-	Layers:
	-	`sha256:20717b9e178b0da8f2fa7641692e906144c7924c289e8184003de6b06045d586`  
		Last Modified: Fri, 21 Aug 2026 18:25:57 GMT  
		Size: 26.4 KB (26408 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.5.7-jammy`

```console
$ docker pull clickhouse@sha256:7cd0140e8bc36a23d6f41c7ed374844f4159db98bc2b6c491b45aabbbba1f0b2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.5.7-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:1e7922e523be0f80b2fa1e84265ce2c84f30b1129d65f44e0504d5cd3542d1ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.9 MB (262871629 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b529d4c12989c97aef7438db2c115dfd7605368d8f50ba82e28ebb06455491f`
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
# Fri, 21 Aug 2026 18:21:15 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 21 Aug 2026 18:21:15 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 21 Aug 2026 18:21:15 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 21 Aug 2026 18:21:15 GMT
ARG REPO_CHANNEL=stable
# Fri, 21 Aug 2026 18:21:15 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 21 Aug 2026 18:21:15 GMT
ARG VERSION=26.5.7.64
# Fri, 21 Aug 2026 18:21:15 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 21 Aug 2026 18:21:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.7.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:21:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.7.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:21:42 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.7.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 21 Aug 2026 18:21:42 GMT
ENV LANG=en_US.UTF-8
# Fri, 21 Aug 2026 18:21:42 GMT
ENV TZ=UTC
# Fri, 21 Aug 2026 18:21:42 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.7.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 21 Aug 2026 18:21:42 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 21 Aug 2026 18:21:42 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:21:42 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 21 Aug 2026 18:21:42 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 21 Aug 2026 18:21:42 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 21 Aug 2026 18:21:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2122d2445cc73c2bd2f419d98e30eb3c4a18e5c72ed6409a33115a7184c012ec`  
		Last Modified: Fri, 21 Aug 2026 18:22:08 GMT  
		Size: 7.6 MB (7553626 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98821b2a497ba26ddf35cf5b61e5b982c2a1e65087b77b09c563032f0cf697f6`  
		Last Modified: Fri, 21 Aug 2026 18:22:13 GMT  
		Size: 224.7 MB (224711009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3410ceb0280f64c8794babc1c47a15d5f71809ccb03aadcd2dfaee80a8f90a63`  
		Last Modified: Fri, 21 Aug 2026 18:22:01 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da0866aa556973289db1d8a29cd5de8845f401756892071e48cabc36cf739437`  
		Last Modified: Fri, 21 Aug 2026 18:22:08 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d54e7a83b8d41e943e46272b73b85f4b0ab7964013f8a9f65b338bb1e4121e3d`  
		Last Modified: Fri, 21 Aug 2026 18:22:02 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1017852a9d8cae3e99d6a0de1c05190182847d9cd0d0aba83a3438c6fe87cb1`  
		Last Modified: Fri, 21 Aug 2026 18:22:08 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e37931c64253f04d1e6edaa905deca9ac406eae9c8daed6b24d29069fecf5ba2`  
		Last Modified: Fri, 21 Aug 2026 18:22:09 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.5.7-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:8d24ac2e1473913ab2161a6f4d8a7506674fc3553d1ab484fc7eeae9e4883dc5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ca1eb05b078bbf0b32e75a18f74dc2f870715612c94b5300d03a7d2d43fe531`

```dockerfile
```

-	Layers:
	-	`sha256:28817539bca718ea21dcd60aa00d26d170d9574a9ebebc382a8c96b61bbc3d11`  
		Last Modified: Fri, 21 Aug 2026 18:22:08 GMT  
		Size: 26.2 KB (26220 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.5.7-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:254f5e3f156f7acf989816249b261d7b0d402a1ea25e1417d961b2d02f7ccbe6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.5 MB (248461308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da13371e2e476682d932f26818d896b485b6dcee8ca7e7791441f0ac06f5f224`
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
# Fri, 21 Aug 2026 18:25:02 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 21 Aug 2026 18:25:02 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 21 Aug 2026 18:25:02 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 21 Aug 2026 18:25:02 GMT
ARG REPO_CHANNEL=stable
# Fri, 21 Aug 2026 18:25:02 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 21 Aug 2026 18:25:02 GMT
ARG VERSION=26.5.7.64
# Fri, 21 Aug 2026 18:25:02 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 21 Aug 2026 18:25:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.7.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:25:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.7.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:25:35 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.7.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 21 Aug 2026 18:25:35 GMT
ENV LANG=en_US.UTF-8
# Fri, 21 Aug 2026 18:25:35 GMT
ENV TZ=UTC
# Fri, 21 Aug 2026 18:25:35 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.7.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 21 Aug 2026 18:25:35 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 21 Aug 2026 18:25:35 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:25:35 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 21 Aug 2026 18:25:35 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 21 Aug 2026 18:25:35 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 21 Aug 2026 18:25:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e93dad6e21e51303cfb56a4ee808248be14ead91aff00bf2105effc0b4504b3`  
		Last Modified: Fri, 21 Aug 2026 18:25:57 GMT  
		Size: 7.5 MB (7533713 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c36299cbefa510b6ee1b064a7b51d6b251e686a29598efccbcd14c34d312ffe`  
		Last Modified: Fri, 21 Aug 2026 18:26:02 GMT  
		Size: 212.4 MB (212437090 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a65d5957391c87d57203d5fd06c8024b2f22e576aa0172e4910539b2ab6fab5`  
		Last Modified: Fri, 21 Aug 2026 18:25:57 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f847ee57ce8bda6fe2aadc8fadafbeec4ffabc40d2fc6b8f08d5cc942d077f8`  
		Last Modified: Fri, 21 Aug 2026 18:25:54 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7320408ef22b822c12d8e7e716ac807aeb11bd079da96ffd42e04376cb2ee7b9`  
		Last Modified: Fri, 21 Aug 2026 18:25:55 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f51b59451edc841681a7573e5bd8638cc376225ebe31512c9ae8e8fb026cb5a4`  
		Last Modified: Fri, 21 Aug 2026 18:25:57 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7b5628d1ae5de4f20efea98c656979abf8bd409d2e4a2ac61d13c0a6733719b`  
		Last Modified: Fri, 21 Aug 2026 18:25:58 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.5.7-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:ead8f868b6d34fb22bb5055bc6fea2e7f910d047b99eaae7e09cd6dccec786b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64ec2ad6147352c1524c170a1ea45440c55ae500e573d8a096bd604fa18b8c41`

```dockerfile
```

-	Layers:
	-	`sha256:20717b9e178b0da8f2fa7641692e906144c7924c289e8184003de6b06045d586`  
		Last Modified: Fri, 21 Aug 2026 18:25:57 GMT  
		Size: 26.4 KB (26408 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.5.7.64`

```console
$ docker pull clickhouse@sha256:7cd0140e8bc36a23d6f41c7ed374844f4159db98bc2b6c491b45aabbbba1f0b2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.5.7.64` - linux; amd64

```console
$ docker pull clickhouse@sha256:1e7922e523be0f80b2fa1e84265ce2c84f30b1129d65f44e0504d5cd3542d1ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.9 MB (262871629 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b529d4c12989c97aef7438db2c115dfd7605368d8f50ba82e28ebb06455491f`
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
# Fri, 21 Aug 2026 18:21:15 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 21 Aug 2026 18:21:15 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 21 Aug 2026 18:21:15 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 21 Aug 2026 18:21:15 GMT
ARG REPO_CHANNEL=stable
# Fri, 21 Aug 2026 18:21:15 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 21 Aug 2026 18:21:15 GMT
ARG VERSION=26.5.7.64
# Fri, 21 Aug 2026 18:21:15 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 21 Aug 2026 18:21:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.7.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:21:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.7.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:21:42 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.7.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 21 Aug 2026 18:21:42 GMT
ENV LANG=en_US.UTF-8
# Fri, 21 Aug 2026 18:21:42 GMT
ENV TZ=UTC
# Fri, 21 Aug 2026 18:21:42 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.7.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 21 Aug 2026 18:21:42 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 21 Aug 2026 18:21:42 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:21:42 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 21 Aug 2026 18:21:42 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 21 Aug 2026 18:21:42 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 21 Aug 2026 18:21:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2122d2445cc73c2bd2f419d98e30eb3c4a18e5c72ed6409a33115a7184c012ec`  
		Last Modified: Fri, 21 Aug 2026 18:22:08 GMT  
		Size: 7.6 MB (7553626 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98821b2a497ba26ddf35cf5b61e5b982c2a1e65087b77b09c563032f0cf697f6`  
		Last Modified: Fri, 21 Aug 2026 18:22:13 GMT  
		Size: 224.7 MB (224711009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3410ceb0280f64c8794babc1c47a15d5f71809ccb03aadcd2dfaee80a8f90a63`  
		Last Modified: Fri, 21 Aug 2026 18:22:01 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da0866aa556973289db1d8a29cd5de8845f401756892071e48cabc36cf739437`  
		Last Modified: Fri, 21 Aug 2026 18:22:08 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d54e7a83b8d41e943e46272b73b85f4b0ab7964013f8a9f65b338bb1e4121e3d`  
		Last Modified: Fri, 21 Aug 2026 18:22:02 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1017852a9d8cae3e99d6a0de1c05190182847d9cd0d0aba83a3438c6fe87cb1`  
		Last Modified: Fri, 21 Aug 2026 18:22:08 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e37931c64253f04d1e6edaa905deca9ac406eae9c8daed6b24d29069fecf5ba2`  
		Last Modified: Fri, 21 Aug 2026 18:22:09 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.5.7.64` - unknown; unknown

```console
$ docker pull clickhouse@sha256:8d24ac2e1473913ab2161a6f4d8a7506674fc3553d1ab484fc7eeae9e4883dc5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ca1eb05b078bbf0b32e75a18f74dc2f870715612c94b5300d03a7d2d43fe531`

```dockerfile
```

-	Layers:
	-	`sha256:28817539bca718ea21dcd60aa00d26d170d9574a9ebebc382a8c96b61bbc3d11`  
		Last Modified: Fri, 21 Aug 2026 18:22:08 GMT  
		Size: 26.2 KB (26220 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.5.7.64` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:254f5e3f156f7acf989816249b261d7b0d402a1ea25e1417d961b2d02f7ccbe6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.5 MB (248461308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da13371e2e476682d932f26818d896b485b6dcee8ca7e7791441f0ac06f5f224`
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
# Fri, 21 Aug 2026 18:25:02 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 21 Aug 2026 18:25:02 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 21 Aug 2026 18:25:02 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 21 Aug 2026 18:25:02 GMT
ARG REPO_CHANNEL=stable
# Fri, 21 Aug 2026 18:25:02 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 21 Aug 2026 18:25:02 GMT
ARG VERSION=26.5.7.64
# Fri, 21 Aug 2026 18:25:02 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 21 Aug 2026 18:25:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.7.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:25:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.7.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:25:35 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.7.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 21 Aug 2026 18:25:35 GMT
ENV LANG=en_US.UTF-8
# Fri, 21 Aug 2026 18:25:35 GMT
ENV TZ=UTC
# Fri, 21 Aug 2026 18:25:35 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.7.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 21 Aug 2026 18:25:35 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 21 Aug 2026 18:25:35 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:25:35 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 21 Aug 2026 18:25:35 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 21 Aug 2026 18:25:35 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 21 Aug 2026 18:25:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e93dad6e21e51303cfb56a4ee808248be14ead91aff00bf2105effc0b4504b3`  
		Last Modified: Fri, 21 Aug 2026 18:25:57 GMT  
		Size: 7.5 MB (7533713 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c36299cbefa510b6ee1b064a7b51d6b251e686a29598efccbcd14c34d312ffe`  
		Last Modified: Fri, 21 Aug 2026 18:26:02 GMT  
		Size: 212.4 MB (212437090 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a65d5957391c87d57203d5fd06c8024b2f22e576aa0172e4910539b2ab6fab5`  
		Last Modified: Fri, 21 Aug 2026 18:25:57 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f847ee57ce8bda6fe2aadc8fadafbeec4ffabc40d2fc6b8f08d5cc942d077f8`  
		Last Modified: Fri, 21 Aug 2026 18:25:54 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7320408ef22b822c12d8e7e716ac807aeb11bd079da96ffd42e04376cb2ee7b9`  
		Last Modified: Fri, 21 Aug 2026 18:25:55 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f51b59451edc841681a7573e5bd8638cc376225ebe31512c9ae8e8fb026cb5a4`  
		Last Modified: Fri, 21 Aug 2026 18:25:57 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7b5628d1ae5de4f20efea98c656979abf8bd409d2e4a2ac61d13c0a6733719b`  
		Last Modified: Fri, 21 Aug 2026 18:25:58 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.5.7.64` - unknown; unknown

```console
$ docker pull clickhouse@sha256:ead8f868b6d34fb22bb5055bc6fea2e7f910d047b99eaae7e09cd6dccec786b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64ec2ad6147352c1524c170a1ea45440c55ae500e573d8a096bd604fa18b8c41`

```dockerfile
```

-	Layers:
	-	`sha256:20717b9e178b0da8f2fa7641692e906144c7924c289e8184003de6b06045d586`  
		Last Modified: Fri, 21 Aug 2026 18:25:57 GMT  
		Size: 26.4 KB (26408 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.5.7.64-jammy`

```console
$ docker pull clickhouse@sha256:7cd0140e8bc36a23d6f41c7ed374844f4159db98bc2b6c491b45aabbbba1f0b2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.5.7.64-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:1e7922e523be0f80b2fa1e84265ce2c84f30b1129d65f44e0504d5cd3542d1ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.9 MB (262871629 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b529d4c12989c97aef7438db2c115dfd7605368d8f50ba82e28ebb06455491f`
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
# Fri, 21 Aug 2026 18:21:15 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 21 Aug 2026 18:21:15 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 21 Aug 2026 18:21:15 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 21 Aug 2026 18:21:15 GMT
ARG REPO_CHANNEL=stable
# Fri, 21 Aug 2026 18:21:15 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 21 Aug 2026 18:21:15 GMT
ARG VERSION=26.5.7.64
# Fri, 21 Aug 2026 18:21:15 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 21 Aug 2026 18:21:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.7.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:21:41 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.7.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:21:42 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.7.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 21 Aug 2026 18:21:42 GMT
ENV LANG=en_US.UTF-8
# Fri, 21 Aug 2026 18:21:42 GMT
ENV TZ=UTC
# Fri, 21 Aug 2026 18:21:42 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.7.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 21 Aug 2026 18:21:42 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 21 Aug 2026 18:21:42 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:21:42 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 21 Aug 2026 18:21:42 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 21 Aug 2026 18:21:42 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 21 Aug 2026 18:21:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2122d2445cc73c2bd2f419d98e30eb3c4a18e5c72ed6409a33115a7184c012ec`  
		Last Modified: Fri, 21 Aug 2026 18:22:08 GMT  
		Size: 7.6 MB (7553626 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98821b2a497ba26ddf35cf5b61e5b982c2a1e65087b77b09c563032f0cf697f6`  
		Last Modified: Fri, 21 Aug 2026 18:22:13 GMT  
		Size: 224.7 MB (224711009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3410ceb0280f64c8794babc1c47a15d5f71809ccb03aadcd2dfaee80a8f90a63`  
		Last Modified: Fri, 21 Aug 2026 18:22:01 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da0866aa556973289db1d8a29cd5de8845f401756892071e48cabc36cf739437`  
		Last Modified: Fri, 21 Aug 2026 18:22:08 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d54e7a83b8d41e943e46272b73b85f4b0ab7964013f8a9f65b338bb1e4121e3d`  
		Last Modified: Fri, 21 Aug 2026 18:22:02 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1017852a9d8cae3e99d6a0de1c05190182847d9cd0d0aba83a3438c6fe87cb1`  
		Last Modified: Fri, 21 Aug 2026 18:22:08 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e37931c64253f04d1e6edaa905deca9ac406eae9c8daed6b24d29069fecf5ba2`  
		Last Modified: Fri, 21 Aug 2026 18:22:09 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.5.7.64-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:8d24ac2e1473913ab2161a6f4d8a7506674fc3553d1ab484fc7eeae9e4883dc5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ca1eb05b078bbf0b32e75a18f74dc2f870715612c94b5300d03a7d2d43fe531`

```dockerfile
```

-	Layers:
	-	`sha256:28817539bca718ea21dcd60aa00d26d170d9574a9ebebc382a8c96b61bbc3d11`  
		Last Modified: Fri, 21 Aug 2026 18:22:08 GMT  
		Size: 26.2 KB (26220 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.5.7.64-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:254f5e3f156f7acf989816249b261d7b0d402a1ea25e1417d961b2d02f7ccbe6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.5 MB (248461308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da13371e2e476682d932f26818d896b485b6dcee8ca7e7791441f0ac06f5f224`
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
# Fri, 21 Aug 2026 18:25:02 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 21 Aug 2026 18:25:02 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 21 Aug 2026 18:25:02 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 21 Aug 2026 18:25:02 GMT
ARG REPO_CHANNEL=stable
# Fri, 21 Aug 2026 18:25:02 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 21 Aug 2026 18:25:02 GMT
ARG VERSION=26.5.7.64
# Fri, 21 Aug 2026 18:25:02 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 21 Aug 2026 18:25:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.7.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:25:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.7.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:25:35 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.7.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 21 Aug 2026 18:25:35 GMT
ENV LANG=en_US.UTF-8
# Fri, 21 Aug 2026 18:25:35 GMT
ENV TZ=UTC
# Fri, 21 Aug 2026 18:25:35 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.7.64 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 21 Aug 2026 18:25:35 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 21 Aug 2026 18:25:35 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:25:35 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 21 Aug 2026 18:25:35 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 21 Aug 2026 18:25:35 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 21 Aug 2026 18:25:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e93dad6e21e51303cfb56a4ee808248be14ead91aff00bf2105effc0b4504b3`  
		Last Modified: Fri, 21 Aug 2026 18:25:57 GMT  
		Size: 7.5 MB (7533713 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c36299cbefa510b6ee1b064a7b51d6b251e686a29598efccbcd14c34d312ffe`  
		Last Modified: Fri, 21 Aug 2026 18:26:02 GMT  
		Size: 212.4 MB (212437090 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a65d5957391c87d57203d5fd06c8024b2f22e576aa0172e4910539b2ab6fab5`  
		Last Modified: Fri, 21 Aug 2026 18:25:57 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f847ee57ce8bda6fe2aadc8fadafbeec4ffabc40d2fc6b8f08d5cc942d077f8`  
		Last Modified: Fri, 21 Aug 2026 18:25:54 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7320408ef22b822c12d8e7e716ac807aeb11bd079da96ffd42e04376cb2ee7b9`  
		Last Modified: Fri, 21 Aug 2026 18:25:55 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f51b59451edc841681a7573e5bd8638cc376225ebe31512c9ae8e8fb026cb5a4`  
		Last Modified: Fri, 21 Aug 2026 18:25:57 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7b5628d1ae5de4f20efea98c656979abf8bd409d2e4a2ac61d13c0a6733719b`  
		Last Modified: Fri, 21 Aug 2026 18:25:58 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.5.7.64-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:ead8f868b6d34fb22bb5055bc6fea2e7f910d047b99eaae7e09cd6dccec786b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64ec2ad6147352c1524c170a1ea45440c55ae500e573d8a096bd604fa18b8c41`

```dockerfile
```

-	Layers:
	-	`sha256:20717b9e178b0da8f2fa7641692e906144c7924c289e8184003de6b06045d586`  
		Last Modified: Fri, 21 Aug 2026 18:25:57 GMT  
		Size: 26.4 KB (26408 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.6`

```console
$ docker pull clickhouse@sha256:bba96fae56d8da533630afd9639b86a7e6dcb7ef9c15c3b1c0b6dafdbffe9b96
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.6` - linux; amd64

```console
$ docker pull clickhouse@sha256:936f723a89c3fbac92b8b598a48a69dd08502b711643f53f5e128289c70ca699
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.8 MB (277808747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63a78152392116cc339d1ece113dfc199621d2772884f7fb56027887eefca005`
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
# Fri, 21 Aug 2026 18:21:12 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 21 Aug 2026 18:21:12 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 21 Aug 2026 18:21:12 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 21 Aug 2026 18:21:12 GMT
ARG REPO_CHANNEL=stable
# Fri, 21 Aug 2026 18:21:12 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 21 Aug 2026 18:21:12 GMT
ARG VERSION=26.6.3.62
# Fri, 21 Aug 2026 18:21:12 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 21 Aug 2026 18:21:37 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.3.62 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:21:37 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.3.62 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:21:38 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.3.62 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 21 Aug 2026 18:21:38 GMT
ENV LANG=en_US.UTF-8
# Fri, 21 Aug 2026 18:21:38 GMT
ENV TZ=UTC
# Fri, 21 Aug 2026 18:21:38 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.3.62 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 21 Aug 2026 18:21:38 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 21 Aug 2026 18:21:38 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:21:38 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 21 Aug 2026 18:21:38 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 21 Aug 2026 18:21:38 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 21 Aug 2026 18:21:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5397388611dad79b8be7ea15cde76e8a7d748d58cd69484330dccffb77595d5`  
		Last Modified: Fri, 21 Aug 2026 18:22:01 GMT  
		Size: 7.6 MB (7553593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b7515cd31dd3cb8c4cf649fda0cea827e43b2a48e9864f77a3bdf37f9bbb931`  
		Last Modified: Fri, 21 Aug 2026 18:22:08 GMT  
		Size: 239.6 MB (239648158 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a841b245117e14b71c7dc115be99da5a52ac53afb10bd1e106991ad1f83dbc84`  
		Last Modified: Fri, 21 Aug 2026 18:22:01 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a20ffc6e90530778be8aded4109474481f677713c26af6e23e659ab6dfa01a4b`  
		Last Modified: Fri, 21 Aug 2026 18:22:01 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d4869134a802e6e3fdd907e5bec945c7d0021380e95beb44084942afe8b713a`  
		Last Modified: Fri, 21 Aug 2026 18:22:02 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cbb231888dab1bcb13b5b0a8c4eca845bc8ef507a87f78508a8067d1f461d3a`  
		Last Modified: Fri, 21 Aug 2026 18:22:03 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f34d5a3fcc55b511660fdee89c25a9dacba6209030f954088da50250c82b79e8`  
		Last Modified: Fri, 21 Aug 2026 18:22:03 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.6` - unknown; unknown

```console
$ docker pull clickhouse@sha256:93a45fe8e23ca942ed36a1829b2644821e805a5b2e6ee929d362a7a49122d802
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:136f9b91ac45abea0bc4ea618ce6509f04ac2c0e77933d266cfebf8158cfcae1`

```dockerfile
```

-	Layers:
	-	`sha256:d65a519802f0a85d35e8caae81f09f1c00b732b0f76f76283af64df89887c2de`  
		Last Modified: Fri, 21 Aug 2026 18:22:01 GMT  
		Size: 26.2 KB (26220 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.6` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:f7c451ce7677db5bac0ce2d58220d7a93e899e331536f06ed649132a0cc2d929
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.4 MB (258405596 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ddaf5123c759ca4f5502906ee7d7e2c7f2d074145a475709759d33e427963ab2`
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
# Fri, 21 Aug 2026 18:25:00 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 21 Aug 2026 18:25:00 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 21 Aug 2026 18:25:00 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 21 Aug 2026 18:25:00 GMT
ARG REPO_CHANNEL=stable
# Fri, 21 Aug 2026 18:25:00 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 21 Aug 2026 18:25:00 GMT
ARG VERSION=26.6.3.62
# Fri, 21 Aug 2026 18:25:00 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 21 Aug 2026 18:25:32 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.3.62 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:25:32 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.3.62 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:25:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.3.62 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 21 Aug 2026 18:25:34 GMT
ENV LANG=en_US.UTF-8
# Fri, 21 Aug 2026 18:25:34 GMT
ENV TZ=UTC
# Fri, 21 Aug 2026 18:25:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.3.62 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 21 Aug 2026 18:25:34 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 21 Aug 2026 18:25:34 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:25:34 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 21 Aug 2026 18:25:34 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 21 Aug 2026 18:25:34 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 21 Aug 2026 18:25:34 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1aa6260fbaed49643aab7425a08390d9acf10f7cc3a44f53bed8631e7bee5270`  
		Last Modified: Fri, 21 Aug 2026 18:25:56 GMT  
		Size: 7.5 MB (7533847 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9db3cc81b4d59d3e275b01a7d83db6bdcb02bcc5eb9ee929bdc10326ffa644ee`  
		Last Modified: Fri, 21 Aug 2026 18:26:00 GMT  
		Size: 222.4 MB (222381241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c1e184e609338b2a9ed2ca2edb0dfecfed6a8149c9bd7b83552543096ed5a45`  
		Last Modified: Fri, 21 Aug 2026 18:25:55 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3b643f0d0bdad01f13045c50d97b6e295cc7d25aa5ad0f4a7e5f02d4494c887`  
		Last Modified: Fri, 21 Aug 2026 18:25:55 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a508d00ea03caf621158fa1de0c822e59ce1b435de5d7ecec91b07b4b2251e4`  
		Last Modified: Fri, 21 Aug 2026 18:25:56 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca6ab1174e6ad8cae9659e7ef41b5ea7bf4a19f33a760f6887fe8ebd46a0d6ef`  
		Last Modified: Fri, 21 Aug 2026 18:25:57 GMT  
		Size: 365.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc4717f6ff5c3cc66c231c17c74e8a757ca03360d31f788245d63698f1713a31`  
		Last Modified: Fri, 21 Aug 2026 18:25:57 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.6` - unknown; unknown

```console
$ docker pull clickhouse@sha256:5d7f853104e20c8ab045178944a69991725e249c6574b727ee93e18fb5d3713c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c370817509c978623e151711d5b5276dc412d51161d83b556c8236c3a40a7c21`

```dockerfile
```

-	Layers:
	-	`sha256:98c8a800fde47b38f763584bff0dfb60e09d1976abb50adaaa9f04c172291bbe`  
		Last Modified: Fri, 21 Aug 2026 18:25:55 GMT  
		Size: 26.4 KB (26407 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.6-jammy`

```console
$ docker pull clickhouse@sha256:bba96fae56d8da533630afd9639b86a7e6dcb7ef9c15c3b1c0b6dafdbffe9b96
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.6-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:936f723a89c3fbac92b8b598a48a69dd08502b711643f53f5e128289c70ca699
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.8 MB (277808747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63a78152392116cc339d1ece113dfc199621d2772884f7fb56027887eefca005`
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
# Fri, 21 Aug 2026 18:21:12 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 21 Aug 2026 18:21:12 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 21 Aug 2026 18:21:12 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 21 Aug 2026 18:21:12 GMT
ARG REPO_CHANNEL=stable
# Fri, 21 Aug 2026 18:21:12 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 21 Aug 2026 18:21:12 GMT
ARG VERSION=26.6.3.62
# Fri, 21 Aug 2026 18:21:12 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 21 Aug 2026 18:21:37 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.3.62 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:21:37 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.3.62 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:21:38 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.3.62 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 21 Aug 2026 18:21:38 GMT
ENV LANG=en_US.UTF-8
# Fri, 21 Aug 2026 18:21:38 GMT
ENV TZ=UTC
# Fri, 21 Aug 2026 18:21:38 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.3.62 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 21 Aug 2026 18:21:38 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 21 Aug 2026 18:21:38 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:21:38 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 21 Aug 2026 18:21:38 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 21 Aug 2026 18:21:38 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 21 Aug 2026 18:21:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5397388611dad79b8be7ea15cde76e8a7d748d58cd69484330dccffb77595d5`  
		Last Modified: Fri, 21 Aug 2026 18:22:01 GMT  
		Size: 7.6 MB (7553593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b7515cd31dd3cb8c4cf649fda0cea827e43b2a48e9864f77a3bdf37f9bbb931`  
		Last Modified: Fri, 21 Aug 2026 18:22:08 GMT  
		Size: 239.6 MB (239648158 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a841b245117e14b71c7dc115be99da5a52ac53afb10bd1e106991ad1f83dbc84`  
		Last Modified: Fri, 21 Aug 2026 18:22:01 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a20ffc6e90530778be8aded4109474481f677713c26af6e23e659ab6dfa01a4b`  
		Last Modified: Fri, 21 Aug 2026 18:22:01 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d4869134a802e6e3fdd907e5bec945c7d0021380e95beb44084942afe8b713a`  
		Last Modified: Fri, 21 Aug 2026 18:22:02 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cbb231888dab1bcb13b5b0a8c4eca845bc8ef507a87f78508a8067d1f461d3a`  
		Last Modified: Fri, 21 Aug 2026 18:22:03 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f34d5a3fcc55b511660fdee89c25a9dacba6209030f954088da50250c82b79e8`  
		Last Modified: Fri, 21 Aug 2026 18:22:03 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.6-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:93a45fe8e23ca942ed36a1829b2644821e805a5b2e6ee929d362a7a49122d802
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:136f9b91ac45abea0bc4ea618ce6509f04ac2c0e77933d266cfebf8158cfcae1`

```dockerfile
```

-	Layers:
	-	`sha256:d65a519802f0a85d35e8caae81f09f1c00b732b0f76f76283af64df89887c2de`  
		Last Modified: Fri, 21 Aug 2026 18:22:01 GMT  
		Size: 26.2 KB (26220 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.6-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:f7c451ce7677db5bac0ce2d58220d7a93e899e331536f06ed649132a0cc2d929
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.4 MB (258405596 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ddaf5123c759ca4f5502906ee7d7e2c7f2d074145a475709759d33e427963ab2`
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
# Fri, 21 Aug 2026 18:25:00 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 21 Aug 2026 18:25:00 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 21 Aug 2026 18:25:00 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 21 Aug 2026 18:25:00 GMT
ARG REPO_CHANNEL=stable
# Fri, 21 Aug 2026 18:25:00 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 21 Aug 2026 18:25:00 GMT
ARG VERSION=26.6.3.62
# Fri, 21 Aug 2026 18:25:00 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 21 Aug 2026 18:25:32 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.3.62 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:25:32 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.3.62 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:25:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.3.62 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 21 Aug 2026 18:25:34 GMT
ENV LANG=en_US.UTF-8
# Fri, 21 Aug 2026 18:25:34 GMT
ENV TZ=UTC
# Fri, 21 Aug 2026 18:25:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.3.62 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 21 Aug 2026 18:25:34 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 21 Aug 2026 18:25:34 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:25:34 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 21 Aug 2026 18:25:34 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 21 Aug 2026 18:25:34 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 21 Aug 2026 18:25:34 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1aa6260fbaed49643aab7425a08390d9acf10f7cc3a44f53bed8631e7bee5270`  
		Last Modified: Fri, 21 Aug 2026 18:25:56 GMT  
		Size: 7.5 MB (7533847 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9db3cc81b4d59d3e275b01a7d83db6bdcb02bcc5eb9ee929bdc10326ffa644ee`  
		Last Modified: Fri, 21 Aug 2026 18:26:00 GMT  
		Size: 222.4 MB (222381241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c1e184e609338b2a9ed2ca2edb0dfecfed6a8149c9bd7b83552543096ed5a45`  
		Last Modified: Fri, 21 Aug 2026 18:25:55 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3b643f0d0bdad01f13045c50d97b6e295cc7d25aa5ad0f4a7e5f02d4494c887`  
		Last Modified: Fri, 21 Aug 2026 18:25:55 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a508d00ea03caf621158fa1de0c822e59ce1b435de5d7ecec91b07b4b2251e4`  
		Last Modified: Fri, 21 Aug 2026 18:25:56 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca6ab1174e6ad8cae9659e7ef41b5ea7bf4a19f33a760f6887fe8ebd46a0d6ef`  
		Last Modified: Fri, 21 Aug 2026 18:25:57 GMT  
		Size: 365.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc4717f6ff5c3cc66c231c17c74e8a757ca03360d31f788245d63698f1713a31`  
		Last Modified: Fri, 21 Aug 2026 18:25:57 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.6-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:5d7f853104e20c8ab045178944a69991725e249c6574b727ee93e18fb5d3713c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c370817509c978623e151711d5b5276dc412d51161d83b556c8236c3a40a7c21`

```dockerfile
```

-	Layers:
	-	`sha256:98c8a800fde47b38f763584bff0dfb60e09d1976abb50adaaa9f04c172291bbe`  
		Last Modified: Fri, 21 Aug 2026 18:25:55 GMT  
		Size: 26.4 KB (26407 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.6.3`

```console
$ docker pull clickhouse@sha256:bba96fae56d8da533630afd9639b86a7e6dcb7ef9c15c3b1c0b6dafdbffe9b96
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.6.3` - linux; amd64

```console
$ docker pull clickhouse@sha256:936f723a89c3fbac92b8b598a48a69dd08502b711643f53f5e128289c70ca699
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.8 MB (277808747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63a78152392116cc339d1ece113dfc199621d2772884f7fb56027887eefca005`
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
# Fri, 21 Aug 2026 18:21:12 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 21 Aug 2026 18:21:12 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 21 Aug 2026 18:21:12 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 21 Aug 2026 18:21:12 GMT
ARG REPO_CHANNEL=stable
# Fri, 21 Aug 2026 18:21:12 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 21 Aug 2026 18:21:12 GMT
ARG VERSION=26.6.3.62
# Fri, 21 Aug 2026 18:21:12 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 21 Aug 2026 18:21:37 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.3.62 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:21:37 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.3.62 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:21:38 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.3.62 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 21 Aug 2026 18:21:38 GMT
ENV LANG=en_US.UTF-8
# Fri, 21 Aug 2026 18:21:38 GMT
ENV TZ=UTC
# Fri, 21 Aug 2026 18:21:38 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.3.62 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 21 Aug 2026 18:21:38 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 21 Aug 2026 18:21:38 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:21:38 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 21 Aug 2026 18:21:38 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 21 Aug 2026 18:21:38 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 21 Aug 2026 18:21:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5397388611dad79b8be7ea15cde76e8a7d748d58cd69484330dccffb77595d5`  
		Last Modified: Fri, 21 Aug 2026 18:22:01 GMT  
		Size: 7.6 MB (7553593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b7515cd31dd3cb8c4cf649fda0cea827e43b2a48e9864f77a3bdf37f9bbb931`  
		Last Modified: Fri, 21 Aug 2026 18:22:08 GMT  
		Size: 239.6 MB (239648158 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a841b245117e14b71c7dc115be99da5a52ac53afb10bd1e106991ad1f83dbc84`  
		Last Modified: Fri, 21 Aug 2026 18:22:01 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a20ffc6e90530778be8aded4109474481f677713c26af6e23e659ab6dfa01a4b`  
		Last Modified: Fri, 21 Aug 2026 18:22:01 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d4869134a802e6e3fdd907e5bec945c7d0021380e95beb44084942afe8b713a`  
		Last Modified: Fri, 21 Aug 2026 18:22:02 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cbb231888dab1bcb13b5b0a8c4eca845bc8ef507a87f78508a8067d1f461d3a`  
		Last Modified: Fri, 21 Aug 2026 18:22:03 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f34d5a3fcc55b511660fdee89c25a9dacba6209030f954088da50250c82b79e8`  
		Last Modified: Fri, 21 Aug 2026 18:22:03 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.6.3` - unknown; unknown

```console
$ docker pull clickhouse@sha256:93a45fe8e23ca942ed36a1829b2644821e805a5b2e6ee929d362a7a49122d802
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:136f9b91ac45abea0bc4ea618ce6509f04ac2c0e77933d266cfebf8158cfcae1`

```dockerfile
```

-	Layers:
	-	`sha256:d65a519802f0a85d35e8caae81f09f1c00b732b0f76f76283af64df89887c2de`  
		Last Modified: Fri, 21 Aug 2026 18:22:01 GMT  
		Size: 26.2 KB (26220 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.6.3` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:f7c451ce7677db5bac0ce2d58220d7a93e899e331536f06ed649132a0cc2d929
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.4 MB (258405596 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ddaf5123c759ca4f5502906ee7d7e2c7f2d074145a475709759d33e427963ab2`
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
# Fri, 21 Aug 2026 18:25:00 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 21 Aug 2026 18:25:00 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 21 Aug 2026 18:25:00 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 21 Aug 2026 18:25:00 GMT
ARG REPO_CHANNEL=stable
# Fri, 21 Aug 2026 18:25:00 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 21 Aug 2026 18:25:00 GMT
ARG VERSION=26.6.3.62
# Fri, 21 Aug 2026 18:25:00 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 21 Aug 2026 18:25:32 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.3.62 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:25:32 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.3.62 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:25:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.3.62 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 21 Aug 2026 18:25:34 GMT
ENV LANG=en_US.UTF-8
# Fri, 21 Aug 2026 18:25:34 GMT
ENV TZ=UTC
# Fri, 21 Aug 2026 18:25:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.3.62 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 21 Aug 2026 18:25:34 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 21 Aug 2026 18:25:34 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:25:34 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 21 Aug 2026 18:25:34 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 21 Aug 2026 18:25:34 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 21 Aug 2026 18:25:34 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1aa6260fbaed49643aab7425a08390d9acf10f7cc3a44f53bed8631e7bee5270`  
		Last Modified: Fri, 21 Aug 2026 18:25:56 GMT  
		Size: 7.5 MB (7533847 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9db3cc81b4d59d3e275b01a7d83db6bdcb02bcc5eb9ee929bdc10326ffa644ee`  
		Last Modified: Fri, 21 Aug 2026 18:26:00 GMT  
		Size: 222.4 MB (222381241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c1e184e609338b2a9ed2ca2edb0dfecfed6a8149c9bd7b83552543096ed5a45`  
		Last Modified: Fri, 21 Aug 2026 18:25:55 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3b643f0d0bdad01f13045c50d97b6e295cc7d25aa5ad0f4a7e5f02d4494c887`  
		Last Modified: Fri, 21 Aug 2026 18:25:55 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a508d00ea03caf621158fa1de0c822e59ce1b435de5d7ecec91b07b4b2251e4`  
		Last Modified: Fri, 21 Aug 2026 18:25:56 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca6ab1174e6ad8cae9659e7ef41b5ea7bf4a19f33a760f6887fe8ebd46a0d6ef`  
		Last Modified: Fri, 21 Aug 2026 18:25:57 GMT  
		Size: 365.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc4717f6ff5c3cc66c231c17c74e8a757ca03360d31f788245d63698f1713a31`  
		Last Modified: Fri, 21 Aug 2026 18:25:57 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.6.3` - unknown; unknown

```console
$ docker pull clickhouse@sha256:5d7f853104e20c8ab045178944a69991725e249c6574b727ee93e18fb5d3713c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c370817509c978623e151711d5b5276dc412d51161d83b556c8236c3a40a7c21`

```dockerfile
```

-	Layers:
	-	`sha256:98c8a800fde47b38f763584bff0dfb60e09d1976abb50adaaa9f04c172291bbe`  
		Last Modified: Fri, 21 Aug 2026 18:25:55 GMT  
		Size: 26.4 KB (26407 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.6.3-jammy`

```console
$ docker pull clickhouse@sha256:bba96fae56d8da533630afd9639b86a7e6dcb7ef9c15c3b1c0b6dafdbffe9b96
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.6.3-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:936f723a89c3fbac92b8b598a48a69dd08502b711643f53f5e128289c70ca699
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.8 MB (277808747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63a78152392116cc339d1ece113dfc199621d2772884f7fb56027887eefca005`
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
# Fri, 21 Aug 2026 18:21:12 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 21 Aug 2026 18:21:12 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 21 Aug 2026 18:21:12 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 21 Aug 2026 18:21:12 GMT
ARG REPO_CHANNEL=stable
# Fri, 21 Aug 2026 18:21:12 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 21 Aug 2026 18:21:12 GMT
ARG VERSION=26.6.3.62
# Fri, 21 Aug 2026 18:21:12 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 21 Aug 2026 18:21:37 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.3.62 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:21:37 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.3.62 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:21:38 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.3.62 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 21 Aug 2026 18:21:38 GMT
ENV LANG=en_US.UTF-8
# Fri, 21 Aug 2026 18:21:38 GMT
ENV TZ=UTC
# Fri, 21 Aug 2026 18:21:38 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.3.62 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 21 Aug 2026 18:21:38 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 21 Aug 2026 18:21:38 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:21:38 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 21 Aug 2026 18:21:38 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 21 Aug 2026 18:21:38 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 21 Aug 2026 18:21:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5397388611dad79b8be7ea15cde76e8a7d748d58cd69484330dccffb77595d5`  
		Last Modified: Fri, 21 Aug 2026 18:22:01 GMT  
		Size: 7.6 MB (7553593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b7515cd31dd3cb8c4cf649fda0cea827e43b2a48e9864f77a3bdf37f9bbb931`  
		Last Modified: Fri, 21 Aug 2026 18:22:08 GMT  
		Size: 239.6 MB (239648158 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a841b245117e14b71c7dc115be99da5a52ac53afb10bd1e106991ad1f83dbc84`  
		Last Modified: Fri, 21 Aug 2026 18:22:01 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a20ffc6e90530778be8aded4109474481f677713c26af6e23e659ab6dfa01a4b`  
		Last Modified: Fri, 21 Aug 2026 18:22:01 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d4869134a802e6e3fdd907e5bec945c7d0021380e95beb44084942afe8b713a`  
		Last Modified: Fri, 21 Aug 2026 18:22:02 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cbb231888dab1bcb13b5b0a8c4eca845bc8ef507a87f78508a8067d1f461d3a`  
		Last Modified: Fri, 21 Aug 2026 18:22:03 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f34d5a3fcc55b511660fdee89c25a9dacba6209030f954088da50250c82b79e8`  
		Last Modified: Fri, 21 Aug 2026 18:22:03 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.6.3-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:93a45fe8e23ca942ed36a1829b2644821e805a5b2e6ee929d362a7a49122d802
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:136f9b91ac45abea0bc4ea618ce6509f04ac2c0e77933d266cfebf8158cfcae1`

```dockerfile
```

-	Layers:
	-	`sha256:d65a519802f0a85d35e8caae81f09f1c00b732b0f76f76283af64df89887c2de`  
		Last Modified: Fri, 21 Aug 2026 18:22:01 GMT  
		Size: 26.2 KB (26220 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.6.3-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:f7c451ce7677db5bac0ce2d58220d7a93e899e331536f06ed649132a0cc2d929
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.4 MB (258405596 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ddaf5123c759ca4f5502906ee7d7e2c7f2d074145a475709759d33e427963ab2`
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
# Fri, 21 Aug 2026 18:25:00 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 21 Aug 2026 18:25:00 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 21 Aug 2026 18:25:00 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 21 Aug 2026 18:25:00 GMT
ARG REPO_CHANNEL=stable
# Fri, 21 Aug 2026 18:25:00 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 21 Aug 2026 18:25:00 GMT
ARG VERSION=26.6.3.62
# Fri, 21 Aug 2026 18:25:00 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 21 Aug 2026 18:25:32 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.3.62 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:25:32 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.3.62 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:25:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.3.62 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 21 Aug 2026 18:25:34 GMT
ENV LANG=en_US.UTF-8
# Fri, 21 Aug 2026 18:25:34 GMT
ENV TZ=UTC
# Fri, 21 Aug 2026 18:25:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.3.62 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 21 Aug 2026 18:25:34 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 21 Aug 2026 18:25:34 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:25:34 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 21 Aug 2026 18:25:34 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 21 Aug 2026 18:25:34 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 21 Aug 2026 18:25:34 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1aa6260fbaed49643aab7425a08390d9acf10f7cc3a44f53bed8631e7bee5270`  
		Last Modified: Fri, 21 Aug 2026 18:25:56 GMT  
		Size: 7.5 MB (7533847 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9db3cc81b4d59d3e275b01a7d83db6bdcb02bcc5eb9ee929bdc10326ffa644ee`  
		Last Modified: Fri, 21 Aug 2026 18:26:00 GMT  
		Size: 222.4 MB (222381241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c1e184e609338b2a9ed2ca2edb0dfecfed6a8149c9bd7b83552543096ed5a45`  
		Last Modified: Fri, 21 Aug 2026 18:25:55 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3b643f0d0bdad01f13045c50d97b6e295cc7d25aa5ad0f4a7e5f02d4494c887`  
		Last Modified: Fri, 21 Aug 2026 18:25:55 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a508d00ea03caf621158fa1de0c822e59ce1b435de5d7ecec91b07b4b2251e4`  
		Last Modified: Fri, 21 Aug 2026 18:25:56 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca6ab1174e6ad8cae9659e7ef41b5ea7bf4a19f33a760f6887fe8ebd46a0d6ef`  
		Last Modified: Fri, 21 Aug 2026 18:25:57 GMT  
		Size: 365.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc4717f6ff5c3cc66c231c17c74e8a757ca03360d31f788245d63698f1713a31`  
		Last Modified: Fri, 21 Aug 2026 18:25:57 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.6.3-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:5d7f853104e20c8ab045178944a69991725e249c6574b727ee93e18fb5d3713c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c370817509c978623e151711d5b5276dc412d51161d83b556c8236c3a40a7c21`

```dockerfile
```

-	Layers:
	-	`sha256:98c8a800fde47b38f763584bff0dfb60e09d1976abb50adaaa9f04c172291bbe`  
		Last Modified: Fri, 21 Aug 2026 18:25:55 GMT  
		Size: 26.4 KB (26407 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.6.3.62`

```console
$ docker pull clickhouse@sha256:bba96fae56d8da533630afd9639b86a7e6dcb7ef9c15c3b1c0b6dafdbffe9b96
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.6.3.62` - linux; amd64

```console
$ docker pull clickhouse@sha256:936f723a89c3fbac92b8b598a48a69dd08502b711643f53f5e128289c70ca699
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.8 MB (277808747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63a78152392116cc339d1ece113dfc199621d2772884f7fb56027887eefca005`
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
# Fri, 21 Aug 2026 18:21:12 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 21 Aug 2026 18:21:12 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 21 Aug 2026 18:21:12 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 21 Aug 2026 18:21:12 GMT
ARG REPO_CHANNEL=stable
# Fri, 21 Aug 2026 18:21:12 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 21 Aug 2026 18:21:12 GMT
ARG VERSION=26.6.3.62
# Fri, 21 Aug 2026 18:21:12 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 21 Aug 2026 18:21:37 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.3.62 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:21:37 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.3.62 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:21:38 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.3.62 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 21 Aug 2026 18:21:38 GMT
ENV LANG=en_US.UTF-8
# Fri, 21 Aug 2026 18:21:38 GMT
ENV TZ=UTC
# Fri, 21 Aug 2026 18:21:38 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.3.62 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 21 Aug 2026 18:21:38 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 21 Aug 2026 18:21:38 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:21:38 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 21 Aug 2026 18:21:38 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 21 Aug 2026 18:21:38 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 21 Aug 2026 18:21:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5397388611dad79b8be7ea15cde76e8a7d748d58cd69484330dccffb77595d5`  
		Last Modified: Fri, 21 Aug 2026 18:22:01 GMT  
		Size: 7.6 MB (7553593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b7515cd31dd3cb8c4cf649fda0cea827e43b2a48e9864f77a3bdf37f9bbb931`  
		Last Modified: Fri, 21 Aug 2026 18:22:08 GMT  
		Size: 239.6 MB (239648158 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a841b245117e14b71c7dc115be99da5a52ac53afb10bd1e106991ad1f83dbc84`  
		Last Modified: Fri, 21 Aug 2026 18:22:01 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a20ffc6e90530778be8aded4109474481f677713c26af6e23e659ab6dfa01a4b`  
		Last Modified: Fri, 21 Aug 2026 18:22:01 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d4869134a802e6e3fdd907e5bec945c7d0021380e95beb44084942afe8b713a`  
		Last Modified: Fri, 21 Aug 2026 18:22:02 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cbb231888dab1bcb13b5b0a8c4eca845bc8ef507a87f78508a8067d1f461d3a`  
		Last Modified: Fri, 21 Aug 2026 18:22:03 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f34d5a3fcc55b511660fdee89c25a9dacba6209030f954088da50250c82b79e8`  
		Last Modified: Fri, 21 Aug 2026 18:22:03 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.6.3.62` - unknown; unknown

```console
$ docker pull clickhouse@sha256:93a45fe8e23ca942ed36a1829b2644821e805a5b2e6ee929d362a7a49122d802
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:136f9b91ac45abea0bc4ea618ce6509f04ac2c0e77933d266cfebf8158cfcae1`

```dockerfile
```

-	Layers:
	-	`sha256:d65a519802f0a85d35e8caae81f09f1c00b732b0f76f76283af64df89887c2de`  
		Last Modified: Fri, 21 Aug 2026 18:22:01 GMT  
		Size: 26.2 KB (26220 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.6.3.62` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:f7c451ce7677db5bac0ce2d58220d7a93e899e331536f06ed649132a0cc2d929
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.4 MB (258405596 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ddaf5123c759ca4f5502906ee7d7e2c7f2d074145a475709759d33e427963ab2`
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
# Fri, 21 Aug 2026 18:25:00 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 21 Aug 2026 18:25:00 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 21 Aug 2026 18:25:00 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 21 Aug 2026 18:25:00 GMT
ARG REPO_CHANNEL=stable
# Fri, 21 Aug 2026 18:25:00 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 21 Aug 2026 18:25:00 GMT
ARG VERSION=26.6.3.62
# Fri, 21 Aug 2026 18:25:00 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 21 Aug 2026 18:25:32 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.3.62 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:25:32 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.3.62 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:25:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.3.62 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 21 Aug 2026 18:25:34 GMT
ENV LANG=en_US.UTF-8
# Fri, 21 Aug 2026 18:25:34 GMT
ENV TZ=UTC
# Fri, 21 Aug 2026 18:25:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.3.62 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 21 Aug 2026 18:25:34 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 21 Aug 2026 18:25:34 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:25:34 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 21 Aug 2026 18:25:34 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 21 Aug 2026 18:25:34 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 21 Aug 2026 18:25:34 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1aa6260fbaed49643aab7425a08390d9acf10f7cc3a44f53bed8631e7bee5270`  
		Last Modified: Fri, 21 Aug 2026 18:25:56 GMT  
		Size: 7.5 MB (7533847 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9db3cc81b4d59d3e275b01a7d83db6bdcb02bcc5eb9ee929bdc10326ffa644ee`  
		Last Modified: Fri, 21 Aug 2026 18:26:00 GMT  
		Size: 222.4 MB (222381241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c1e184e609338b2a9ed2ca2edb0dfecfed6a8149c9bd7b83552543096ed5a45`  
		Last Modified: Fri, 21 Aug 2026 18:25:55 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3b643f0d0bdad01f13045c50d97b6e295cc7d25aa5ad0f4a7e5f02d4494c887`  
		Last Modified: Fri, 21 Aug 2026 18:25:55 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a508d00ea03caf621158fa1de0c822e59ce1b435de5d7ecec91b07b4b2251e4`  
		Last Modified: Fri, 21 Aug 2026 18:25:56 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca6ab1174e6ad8cae9659e7ef41b5ea7bf4a19f33a760f6887fe8ebd46a0d6ef`  
		Last Modified: Fri, 21 Aug 2026 18:25:57 GMT  
		Size: 365.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc4717f6ff5c3cc66c231c17c74e8a757ca03360d31f788245d63698f1713a31`  
		Last Modified: Fri, 21 Aug 2026 18:25:57 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.6.3.62` - unknown; unknown

```console
$ docker pull clickhouse@sha256:5d7f853104e20c8ab045178944a69991725e249c6574b727ee93e18fb5d3713c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c370817509c978623e151711d5b5276dc412d51161d83b556c8236c3a40a7c21`

```dockerfile
```

-	Layers:
	-	`sha256:98c8a800fde47b38f763584bff0dfb60e09d1976abb50adaaa9f04c172291bbe`  
		Last Modified: Fri, 21 Aug 2026 18:25:55 GMT  
		Size: 26.4 KB (26407 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.6.3.62-jammy`

```console
$ docker pull clickhouse@sha256:bba96fae56d8da533630afd9639b86a7e6dcb7ef9c15c3b1c0b6dafdbffe9b96
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.6.3.62-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:936f723a89c3fbac92b8b598a48a69dd08502b711643f53f5e128289c70ca699
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.8 MB (277808747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63a78152392116cc339d1ece113dfc199621d2772884f7fb56027887eefca005`
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
# Fri, 21 Aug 2026 18:21:12 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 21 Aug 2026 18:21:12 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 21 Aug 2026 18:21:12 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 21 Aug 2026 18:21:12 GMT
ARG REPO_CHANNEL=stable
# Fri, 21 Aug 2026 18:21:12 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 21 Aug 2026 18:21:12 GMT
ARG VERSION=26.6.3.62
# Fri, 21 Aug 2026 18:21:12 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 21 Aug 2026 18:21:37 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.3.62 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:21:37 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.3.62 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:21:38 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.3.62 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 21 Aug 2026 18:21:38 GMT
ENV LANG=en_US.UTF-8
# Fri, 21 Aug 2026 18:21:38 GMT
ENV TZ=UTC
# Fri, 21 Aug 2026 18:21:38 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.3.62 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 21 Aug 2026 18:21:38 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 21 Aug 2026 18:21:38 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:21:38 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 21 Aug 2026 18:21:38 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 21 Aug 2026 18:21:38 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 21 Aug 2026 18:21:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5397388611dad79b8be7ea15cde76e8a7d748d58cd69484330dccffb77595d5`  
		Last Modified: Fri, 21 Aug 2026 18:22:01 GMT  
		Size: 7.6 MB (7553593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b7515cd31dd3cb8c4cf649fda0cea827e43b2a48e9864f77a3bdf37f9bbb931`  
		Last Modified: Fri, 21 Aug 2026 18:22:08 GMT  
		Size: 239.6 MB (239648158 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a841b245117e14b71c7dc115be99da5a52ac53afb10bd1e106991ad1f83dbc84`  
		Last Modified: Fri, 21 Aug 2026 18:22:01 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a20ffc6e90530778be8aded4109474481f677713c26af6e23e659ab6dfa01a4b`  
		Last Modified: Fri, 21 Aug 2026 18:22:01 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d4869134a802e6e3fdd907e5bec945c7d0021380e95beb44084942afe8b713a`  
		Last Modified: Fri, 21 Aug 2026 18:22:02 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cbb231888dab1bcb13b5b0a8c4eca845bc8ef507a87f78508a8067d1f461d3a`  
		Last Modified: Fri, 21 Aug 2026 18:22:03 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f34d5a3fcc55b511660fdee89c25a9dacba6209030f954088da50250c82b79e8`  
		Last Modified: Fri, 21 Aug 2026 18:22:03 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.6.3.62-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:93a45fe8e23ca942ed36a1829b2644821e805a5b2e6ee929d362a7a49122d802
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:136f9b91ac45abea0bc4ea618ce6509f04ac2c0e77933d266cfebf8158cfcae1`

```dockerfile
```

-	Layers:
	-	`sha256:d65a519802f0a85d35e8caae81f09f1c00b732b0f76f76283af64df89887c2de`  
		Last Modified: Fri, 21 Aug 2026 18:22:01 GMT  
		Size: 26.2 KB (26220 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.6.3.62-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:f7c451ce7677db5bac0ce2d58220d7a93e899e331536f06ed649132a0cc2d929
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.4 MB (258405596 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ddaf5123c759ca4f5502906ee7d7e2c7f2d074145a475709759d33e427963ab2`
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
# Fri, 21 Aug 2026 18:25:00 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 21 Aug 2026 18:25:00 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 21 Aug 2026 18:25:00 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 21 Aug 2026 18:25:00 GMT
ARG REPO_CHANNEL=stable
# Fri, 21 Aug 2026 18:25:00 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 21 Aug 2026 18:25:00 GMT
ARG VERSION=26.6.3.62
# Fri, 21 Aug 2026 18:25:00 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 21 Aug 2026 18:25:32 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.3.62 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:25:32 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.3.62 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:25:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.3.62 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 21 Aug 2026 18:25:34 GMT
ENV LANG=en_US.UTF-8
# Fri, 21 Aug 2026 18:25:34 GMT
ENV TZ=UTC
# Fri, 21 Aug 2026 18:25:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.3.62 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 21 Aug 2026 18:25:34 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 21 Aug 2026 18:25:34 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:25:34 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 21 Aug 2026 18:25:34 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 21 Aug 2026 18:25:34 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 21 Aug 2026 18:25:34 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1aa6260fbaed49643aab7425a08390d9acf10f7cc3a44f53bed8631e7bee5270`  
		Last Modified: Fri, 21 Aug 2026 18:25:56 GMT  
		Size: 7.5 MB (7533847 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9db3cc81b4d59d3e275b01a7d83db6bdcb02bcc5eb9ee929bdc10326ffa644ee`  
		Last Modified: Fri, 21 Aug 2026 18:26:00 GMT  
		Size: 222.4 MB (222381241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c1e184e609338b2a9ed2ca2edb0dfecfed6a8149c9bd7b83552543096ed5a45`  
		Last Modified: Fri, 21 Aug 2026 18:25:55 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3b643f0d0bdad01f13045c50d97b6e295cc7d25aa5ad0f4a7e5f02d4494c887`  
		Last Modified: Fri, 21 Aug 2026 18:25:55 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a508d00ea03caf621158fa1de0c822e59ce1b435de5d7ecec91b07b4b2251e4`  
		Last Modified: Fri, 21 Aug 2026 18:25:56 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca6ab1174e6ad8cae9659e7ef41b5ea7bf4a19f33a760f6887fe8ebd46a0d6ef`  
		Last Modified: Fri, 21 Aug 2026 18:25:57 GMT  
		Size: 365.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc4717f6ff5c3cc66c231c17c74e8a757ca03360d31f788245d63698f1713a31`  
		Last Modified: Fri, 21 Aug 2026 18:25:57 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.6.3.62-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:5d7f853104e20c8ab045178944a69991725e249c6574b727ee93e18fb5d3713c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c370817509c978623e151711d5b5276dc412d51161d83b556c8236c3a40a7c21`

```dockerfile
```

-	Layers:
	-	`sha256:98c8a800fde47b38f763584bff0dfb60e09d1976abb50adaaa9f04c172291bbe`  
		Last Modified: Fri, 21 Aug 2026 18:25:55 GMT  
		Size: 26.4 KB (26407 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.7`

```console
$ docker pull clickhouse@sha256:d0e74e9970998f92c0490c23345259a539550eff24f551dbe385d3cd29481f74
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.7` - linux; amd64

```console
$ docker pull clickhouse@sha256:8f8e7e6cb53c44eab491b99d0be29b924c9a6e253a48ed3fb204a2076c35e1ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.9 MB (266855966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f3186a0eca268b5550f70a0f6d64848817e1d03b76ae2d2fdfc8148e1bcd335`
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
# Fri, 21 Aug 2026 18:21:10 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 21 Aug 2026 18:21:10 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 21 Aug 2026 18:21:10 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 21 Aug 2026 18:21:10 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 21 Aug 2026 18:21:10 GMT
ARG REPO_CHANNEL=stable
# Fri, 21 Aug 2026 18:21:10 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 21 Aug 2026 18:21:10 GMT
ARG VERSION=26.7.5.10
# Fri, 21 Aug 2026 18:21:10 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 21 Aug 2026 18:21:32 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.5.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:21:33 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.5.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:21:33 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.5.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 21 Aug 2026 18:21:33 GMT
ENV LANG=en_US.UTF-8
# Fri, 21 Aug 2026 18:21:33 GMT
ENV TZ=UTC
# Fri, 21 Aug 2026 18:21:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.5.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 21 Aug 2026 18:21:34 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 21 Aug 2026 18:21:34 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:21:34 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 21 Aug 2026 18:21:34 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 21 Aug 2026 18:21:34 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 21 Aug 2026 18:21:34 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6abc97708c0d788623e805b245a817ebf5a0fab5e1ba575c0be558e5b567323`  
		Last Modified: Fri, 21 Aug 2026 18:21:56 GMT  
		Size: 7.6 MB (7553592 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31dc0e0fdb0d5b7c4bc6843fde26043eabd41f929bc324d732b3e97060d30da7`  
		Last Modified: Fri, 21 Aug 2026 18:22:00 GMT  
		Size: 228.7 MB (228695382 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:923848a99e99783b359da766d9f5b23eab24e3c8c497a047c870dfa5019561c2`  
		Last Modified: Fri, 21 Aug 2026 18:21:55 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:737927767f8faa7b2cea162dd3d38fa6cc393c4051e2f1d5c207a3af71c6e010`  
		Last Modified: Fri, 21 Aug 2026 18:21:55 GMT  
		Size: 865.7 KB (865748 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdb3505cba4f34606be982bae21af5523d229fa7ab4b46c6ef5af0524b820e31`  
		Last Modified: Fri, 21 Aug 2026 18:21:57 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1382792512308b5e6e14943223640b3cdd8e80cbf9da5c60717e9a66c35f19da`  
		Last Modified: Fri, 21 Aug 2026 18:21:57 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8a90d0cf542c6f6f9f5c582ed602c216823372726f7284077700d39245c7c6e`  
		Last Modified: Fri, 21 Aug 2026 18:21:57 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7` - unknown; unknown

```console
$ docker pull clickhouse@sha256:a6990df105d38268bf10831a77f321a0ff97f2a9a8afb4bd9ec17fac86851f6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.3 KB (27345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90d31c1f6c1a29e0da53e2e689642f54de75769e20aec714ad65f16b20e4909a`

```dockerfile
```

-	Layers:
	-	`sha256:a367f2d03cbe6b8725836cce7cd595f321bcb0a8a266bb195c454e40cc0475a1`  
		Last Modified: Fri, 21 Aug 2026 18:21:55 GMT  
		Size: 27.3 KB (27345 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.7` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:0df6b93ea7acac497d23bc1ba02f6c6a0949c8fd015e45e4ff970bbdae8a1334
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.1 MB (250134706 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:006e91bb373bb8839db557b3475b4c476593e6b3f923461b374b72f3db4bafad`
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
# Fri, 21 Aug 2026 18:25:04 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 21 Aug 2026 18:25:04 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 21 Aug 2026 18:25:04 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 21 Aug 2026 18:25:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 21 Aug 2026 18:25:04 GMT
ARG REPO_CHANNEL=stable
# Fri, 21 Aug 2026 18:25:04 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 21 Aug 2026 18:25:04 GMT
ARG VERSION=26.7.5.10
# Fri, 21 Aug 2026 18:25:04 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 21 Aug 2026 18:25:29 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.5.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:25:30 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.5.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:25:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.5.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 21 Aug 2026 18:25:31 GMT
ENV LANG=en_US.UTF-8
# Fri, 21 Aug 2026 18:25:31 GMT
ENV TZ=UTC
# Fri, 21 Aug 2026 18:25:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.5.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 21 Aug 2026 18:25:31 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 21 Aug 2026 18:25:31 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:25:31 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 21 Aug 2026 18:25:31 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 21 Aug 2026 18:25:31 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 21 Aug 2026 18:25:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62c46eb92dd507b69c7846af862f3a9852dc9323e79668338af2c1a9f08afba7`  
		Last Modified: Fri, 21 Aug 2026 18:25:53 GMT  
		Size: 7.5 MB (7533764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dd2c01e6725b514ea85ab6e92cb2faf9d47b00c38e80b73acc1d2ab9c9013f9`  
		Last Modified: Fri, 21 Aug 2026 18:25:57 GMT  
		Size: 214.1 MB (214110437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:772e85e724fb32c035d2659c5ae836f4e82ceef98e7b62a3df6c3ec98f27980a`  
		Last Modified: Fri, 21 Aug 2026 18:25:53 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc8c6f216a6093a29b430dbe089ae813a34dfbdf1d3d0406364f53452c019c16`  
		Last Modified: Fri, 21 Aug 2026 18:25:53 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7eb78558932b657cd36d6bfe2e5ec5594c400c66595e8282344b5adf2d59ad9b`  
		Last Modified: Fri, 21 Aug 2026 18:25:54 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e9609bc3eb8ee908b2ae82d45eae3b90fdbf8a4efec85318ca57d6475dd83fd`  
		Last Modified: Fri, 21 Aug 2026 18:25:54 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:662b16065f1535e6908427a3f876d377d01899e50591f621308d8b41dfbee2d3`  
		Last Modified: Fri, 21 Aug 2026 18:25:55 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7` - unknown; unknown

```console
$ docker pull clickhouse@sha256:1bcf37d389af8d0e45dfe240765632e922379f793c249a7131400a8bf95426f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 KB (27557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d666534ceeaafa0f7628b0f622884416547e4ceed949f9b900afee69d2da741a`

```dockerfile
```

-	Layers:
	-	`sha256:63387cd13e33f471d92b79bd3adc1ecb52645475542ad1abcfc8bb9cd37c18b5`  
		Last Modified: Fri, 21 Aug 2026 18:25:53 GMT  
		Size: 27.6 KB (27557 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.7-jammy`

```console
$ docker pull clickhouse@sha256:d0e74e9970998f92c0490c23345259a539550eff24f551dbe385d3cd29481f74
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.7-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:8f8e7e6cb53c44eab491b99d0be29b924c9a6e253a48ed3fb204a2076c35e1ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.9 MB (266855966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f3186a0eca268b5550f70a0f6d64848817e1d03b76ae2d2fdfc8148e1bcd335`
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
# Fri, 21 Aug 2026 18:21:10 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 21 Aug 2026 18:21:10 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 21 Aug 2026 18:21:10 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 21 Aug 2026 18:21:10 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 21 Aug 2026 18:21:10 GMT
ARG REPO_CHANNEL=stable
# Fri, 21 Aug 2026 18:21:10 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 21 Aug 2026 18:21:10 GMT
ARG VERSION=26.7.5.10
# Fri, 21 Aug 2026 18:21:10 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 21 Aug 2026 18:21:32 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.5.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:21:33 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.5.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:21:33 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.5.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 21 Aug 2026 18:21:33 GMT
ENV LANG=en_US.UTF-8
# Fri, 21 Aug 2026 18:21:33 GMT
ENV TZ=UTC
# Fri, 21 Aug 2026 18:21:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.5.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 21 Aug 2026 18:21:34 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 21 Aug 2026 18:21:34 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:21:34 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 21 Aug 2026 18:21:34 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 21 Aug 2026 18:21:34 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 21 Aug 2026 18:21:34 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6abc97708c0d788623e805b245a817ebf5a0fab5e1ba575c0be558e5b567323`  
		Last Modified: Fri, 21 Aug 2026 18:21:56 GMT  
		Size: 7.6 MB (7553592 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31dc0e0fdb0d5b7c4bc6843fde26043eabd41f929bc324d732b3e97060d30da7`  
		Last Modified: Fri, 21 Aug 2026 18:22:00 GMT  
		Size: 228.7 MB (228695382 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:923848a99e99783b359da766d9f5b23eab24e3c8c497a047c870dfa5019561c2`  
		Last Modified: Fri, 21 Aug 2026 18:21:55 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:737927767f8faa7b2cea162dd3d38fa6cc393c4051e2f1d5c207a3af71c6e010`  
		Last Modified: Fri, 21 Aug 2026 18:21:55 GMT  
		Size: 865.7 KB (865748 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdb3505cba4f34606be982bae21af5523d229fa7ab4b46c6ef5af0524b820e31`  
		Last Modified: Fri, 21 Aug 2026 18:21:57 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1382792512308b5e6e14943223640b3cdd8e80cbf9da5c60717e9a66c35f19da`  
		Last Modified: Fri, 21 Aug 2026 18:21:57 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8a90d0cf542c6f6f9f5c582ed602c216823372726f7284077700d39245c7c6e`  
		Last Modified: Fri, 21 Aug 2026 18:21:57 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:a6990df105d38268bf10831a77f321a0ff97f2a9a8afb4bd9ec17fac86851f6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.3 KB (27345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90d31c1f6c1a29e0da53e2e689642f54de75769e20aec714ad65f16b20e4909a`

```dockerfile
```

-	Layers:
	-	`sha256:a367f2d03cbe6b8725836cce7cd595f321bcb0a8a266bb195c454e40cc0475a1`  
		Last Modified: Fri, 21 Aug 2026 18:21:55 GMT  
		Size: 27.3 KB (27345 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.7-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:0df6b93ea7acac497d23bc1ba02f6c6a0949c8fd015e45e4ff970bbdae8a1334
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.1 MB (250134706 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:006e91bb373bb8839db557b3475b4c476593e6b3f923461b374b72f3db4bafad`
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
# Fri, 21 Aug 2026 18:25:04 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 21 Aug 2026 18:25:04 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 21 Aug 2026 18:25:04 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 21 Aug 2026 18:25:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 21 Aug 2026 18:25:04 GMT
ARG REPO_CHANNEL=stable
# Fri, 21 Aug 2026 18:25:04 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 21 Aug 2026 18:25:04 GMT
ARG VERSION=26.7.5.10
# Fri, 21 Aug 2026 18:25:04 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 21 Aug 2026 18:25:29 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.5.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:25:30 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.5.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:25:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.5.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 21 Aug 2026 18:25:31 GMT
ENV LANG=en_US.UTF-8
# Fri, 21 Aug 2026 18:25:31 GMT
ENV TZ=UTC
# Fri, 21 Aug 2026 18:25:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.5.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 21 Aug 2026 18:25:31 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 21 Aug 2026 18:25:31 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:25:31 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 21 Aug 2026 18:25:31 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 21 Aug 2026 18:25:31 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 21 Aug 2026 18:25:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62c46eb92dd507b69c7846af862f3a9852dc9323e79668338af2c1a9f08afba7`  
		Last Modified: Fri, 21 Aug 2026 18:25:53 GMT  
		Size: 7.5 MB (7533764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dd2c01e6725b514ea85ab6e92cb2faf9d47b00c38e80b73acc1d2ab9c9013f9`  
		Last Modified: Fri, 21 Aug 2026 18:25:57 GMT  
		Size: 214.1 MB (214110437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:772e85e724fb32c035d2659c5ae836f4e82ceef98e7b62a3df6c3ec98f27980a`  
		Last Modified: Fri, 21 Aug 2026 18:25:53 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc8c6f216a6093a29b430dbe089ae813a34dfbdf1d3d0406364f53452c019c16`  
		Last Modified: Fri, 21 Aug 2026 18:25:53 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7eb78558932b657cd36d6bfe2e5ec5594c400c66595e8282344b5adf2d59ad9b`  
		Last Modified: Fri, 21 Aug 2026 18:25:54 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e9609bc3eb8ee908b2ae82d45eae3b90fdbf8a4efec85318ca57d6475dd83fd`  
		Last Modified: Fri, 21 Aug 2026 18:25:54 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:662b16065f1535e6908427a3f876d377d01899e50591f621308d8b41dfbee2d3`  
		Last Modified: Fri, 21 Aug 2026 18:25:55 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:1bcf37d389af8d0e45dfe240765632e922379f793c249a7131400a8bf95426f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 KB (27557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d666534ceeaafa0f7628b0f622884416547e4ceed949f9b900afee69d2da741a`

```dockerfile
```

-	Layers:
	-	`sha256:63387cd13e33f471d92b79bd3adc1ecb52645475542ad1abcfc8bb9cd37c18b5`  
		Last Modified: Fri, 21 Aug 2026 18:25:53 GMT  
		Size: 27.6 KB (27557 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.7.5`

```console
$ docker pull clickhouse@sha256:d0e74e9970998f92c0490c23345259a539550eff24f551dbe385d3cd29481f74
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.7.5` - linux; amd64

```console
$ docker pull clickhouse@sha256:8f8e7e6cb53c44eab491b99d0be29b924c9a6e253a48ed3fb204a2076c35e1ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.9 MB (266855966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f3186a0eca268b5550f70a0f6d64848817e1d03b76ae2d2fdfc8148e1bcd335`
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
# Fri, 21 Aug 2026 18:21:10 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 21 Aug 2026 18:21:10 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 21 Aug 2026 18:21:10 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 21 Aug 2026 18:21:10 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 21 Aug 2026 18:21:10 GMT
ARG REPO_CHANNEL=stable
# Fri, 21 Aug 2026 18:21:10 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 21 Aug 2026 18:21:10 GMT
ARG VERSION=26.7.5.10
# Fri, 21 Aug 2026 18:21:10 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 21 Aug 2026 18:21:32 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.5.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:21:33 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.5.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:21:33 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.5.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 21 Aug 2026 18:21:33 GMT
ENV LANG=en_US.UTF-8
# Fri, 21 Aug 2026 18:21:33 GMT
ENV TZ=UTC
# Fri, 21 Aug 2026 18:21:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.5.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 21 Aug 2026 18:21:34 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 21 Aug 2026 18:21:34 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:21:34 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 21 Aug 2026 18:21:34 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 21 Aug 2026 18:21:34 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 21 Aug 2026 18:21:34 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6abc97708c0d788623e805b245a817ebf5a0fab5e1ba575c0be558e5b567323`  
		Last Modified: Fri, 21 Aug 2026 18:21:56 GMT  
		Size: 7.6 MB (7553592 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31dc0e0fdb0d5b7c4bc6843fde26043eabd41f929bc324d732b3e97060d30da7`  
		Last Modified: Fri, 21 Aug 2026 18:22:00 GMT  
		Size: 228.7 MB (228695382 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:923848a99e99783b359da766d9f5b23eab24e3c8c497a047c870dfa5019561c2`  
		Last Modified: Fri, 21 Aug 2026 18:21:55 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:737927767f8faa7b2cea162dd3d38fa6cc393c4051e2f1d5c207a3af71c6e010`  
		Last Modified: Fri, 21 Aug 2026 18:21:55 GMT  
		Size: 865.7 KB (865748 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdb3505cba4f34606be982bae21af5523d229fa7ab4b46c6ef5af0524b820e31`  
		Last Modified: Fri, 21 Aug 2026 18:21:57 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1382792512308b5e6e14943223640b3cdd8e80cbf9da5c60717e9a66c35f19da`  
		Last Modified: Fri, 21 Aug 2026 18:21:57 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8a90d0cf542c6f6f9f5c582ed602c216823372726f7284077700d39245c7c6e`  
		Last Modified: Fri, 21 Aug 2026 18:21:57 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7.5` - unknown; unknown

```console
$ docker pull clickhouse@sha256:a6990df105d38268bf10831a77f321a0ff97f2a9a8afb4bd9ec17fac86851f6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.3 KB (27345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90d31c1f6c1a29e0da53e2e689642f54de75769e20aec714ad65f16b20e4909a`

```dockerfile
```

-	Layers:
	-	`sha256:a367f2d03cbe6b8725836cce7cd595f321bcb0a8a266bb195c454e40cc0475a1`  
		Last Modified: Fri, 21 Aug 2026 18:21:55 GMT  
		Size: 27.3 KB (27345 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.7.5` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:0df6b93ea7acac497d23bc1ba02f6c6a0949c8fd015e45e4ff970bbdae8a1334
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.1 MB (250134706 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:006e91bb373bb8839db557b3475b4c476593e6b3f923461b374b72f3db4bafad`
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
# Fri, 21 Aug 2026 18:25:04 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 21 Aug 2026 18:25:04 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 21 Aug 2026 18:25:04 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 21 Aug 2026 18:25:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 21 Aug 2026 18:25:04 GMT
ARG REPO_CHANNEL=stable
# Fri, 21 Aug 2026 18:25:04 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 21 Aug 2026 18:25:04 GMT
ARG VERSION=26.7.5.10
# Fri, 21 Aug 2026 18:25:04 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 21 Aug 2026 18:25:29 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.5.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:25:30 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.5.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:25:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.5.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 21 Aug 2026 18:25:31 GMT
ENV LANG=en_US.UTF-8
# Fri, 21 Aug 2026 18:25:31 GMT
ENV TZ=UTC
# Fri, 21 Aug 2026 18:25:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.5.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 21 Aug 2026 18:25:31 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 21 Aug 2026 18:25:31 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:25:31 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 21 Aug 2026 18:25:31 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 21 Aug 2026 18:25:31 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 21 Aug 2026 18:25:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62c46eb92dd507b69c7846af862f3a9852dc9323e79668338af2c1a9f08afba7`  
		Last Modified: Fri, 21 Aug 2026 18:25:53 GMT  
		Size: 7.5 MB (7533764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dd2c01e6725b514ea85ab6e92cb2faf9d47b00c38e80b73acc1d2ab9c9013f9`  
		Last Modified: Fri, 21 Aug 2026 18:25:57 GMT  
		Size: 214.1 MB (214110437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:772e85e724fb32c035d2659c5ae836f4e82ceef98e7b62a3df6c3ec98f27980a`  
		Last Modified: Fri, 21 Aug 2026 18:25:53 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc8c6f216a6093a29b430dbe089ae813a34dfbdf1d3d0406364f53452c019c16`  
		Last Modified: Fri, 21 Aug 2026 18:25:53 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7eb78558932b657cd36d6bfe2e5ec5594c400c66595e8282344b5adf2d59ad9b`  
		Last Modified: Fri, 21 Aug 2026 18:25:54 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e9609bc3eb8ee908b2ae82d45eae3b90fdbf8a4efec85318ca57d6475dd83fd`  
		Last Modified: Fri, 21 Aug 2026 18:25:54 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:662b16065f1535e6908427a3f876d377d01899e50591f621308d8b41dfbee2d3`  
		Last Modified: Fri, 21 Aug 2026 18:25:55 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7.5` - unknown; unknown

```console
$ docker pull clickhouse@sha256:1bcf37d389af8d0e45dfe240765632e922379f793c249a7131400a8bf95426f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 KB (27557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d666534ceeaafa0f7628b0f622884416547e4ceed949f9b900afee69d2da741a`

```dockerfile
```

-	Layers:
	-	`sha256:63387cd13e33f471d92b79bd3adc1ecb52645475542ad1abcfc8bb9cd37c18b5`  
		Last Modified: Fri, 21 Aug 2026 18:25:53 GMT  
		Size: 27.6 KB (27557 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.7.5-jammy`

```console
$ docker pull clickhouse@sha256:d0e74e9970998f92c0490c23345259a539550eff24f551dbe385d3cd29481f74
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.7.5-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:8f8e7e6cb53c44eab491b99d0be29b924c9a6e253a48ed3fb204a2076c35e1ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.9 MB (266855966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f3186a0eca268b5550f70a0f6d64848817e1d03b76ae2d2fdfc8148e1bcd335`
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
# Fri, 21 Aug 2026 18:21:10 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 21 Aug 2026 18:21:10 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 21 Aug 2026 18:21:10 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 21 Aug 2026 18:21:10 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 21 Aug 2026 18:21:10 GMT
ARG REPO_CHANNEL=stable
# Fri, 21 Aug 2026 18:21:10 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 21 Aug 2026 18:21:10 GMT
ARG VERSION=26.7.5.10
# Fri, 21 Aug 2026 18:21:10 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 21 Aug 2026 18:21:32 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.5.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:21:33 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.5.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:21:33 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.5.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 21 Aug 2026 18:21:33 GMT
ENV LANG=en_US.UTF-8
# Fri, 21 Aug 2026 18:21:33 GMT
ENV TZ=UTC
# Fri, 21 Aug 2026 18:21:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.5.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 21 Aug 2026 18:21:34 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 21 Aug 2026 18:21:34 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:21:34 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 21 Aug 2026 18:21:34 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 21 Aug 2026 18:21:34 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 21 Aug 2026 18:21:34 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6abc97708c0d788623e805b245a817ebf5a0fab5e1ba575c0be558e5b567323`  
		Last Modified: Fri, 21 Aug 2026 18:21:56 GMT  
		Size: 7.6 MB (7553592 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31dc0e0fdb0d5b7c4bc6843fde26043eabd41f929bc324d732b3e97060d30da7`  
		Last Modified: Fri, 21 Aug 2026 18:22:00 GMT  
		Size: 228.7 MB (228695382 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:923848a99e99783b359da766d9f5b23eab24e3c8c497a047c870dfa5019561c2`  
		Last Modified: Fri, 21 Aug 2026 18:21:55 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:737927767f8faa7b2cea162dd3d38fa6cc393c4051e2f1d5c207a3af71c6e010`  
		Last Modified: Fri, 21 Aug 2026 18:21:55 GMT  
		Size: 865.7 KB (865748 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdb3505cba4f34606be982bae21af5523d229fa7ab4b46c6ef5af0524b820e31`  
		Last Modified: Fri, 21 Aug 2026 18:21:57 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1382792512308b5e6e14943223640b3cdd8e80cbf9da5c60717e9a66c35f19da`  
		Last Modified: Fri, 21 Aug 2026 18:21:57 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8a90d0cf542c6f6f9f5c582ed602c216823372726f7284077700d39245c7c6e`  
		Last Modified: Fri, 21 Aug 2026 18:21:57 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7.5-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:a6990df105d38268bf10831a77f321a0ff97f2a9a8afb4bd9ec17fac86851f6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.3 KB (27345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90d31c1f6c1a29e0da53e2e689642f54de75769e20aec714ad65f16b20e4909a`

```dockerfile
```

-	Layers:
	-	`sha256:a367f2d03cbe6b8725836cce7cd595f321bcb0a8a266bb195c454e40cc0475a1`  
		Last Modified: Fri, 21 Aug 2026 18:21:55 GMT  
		Size: 27.3 KB (27345 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.7.5-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:0df6b93ea7acac497d23bc1ba02f6c6a0949c8fd015e45e4ff970bbdae8a1334
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.1 MB (250134706 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:006e91bb373bb8839db557b3475b4c476593e6b3f923461b374b72f3db4bafad`
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
# Fri, 21 Aug 2026 18:25:04 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 21 Aug 2026 18:25:04 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 21 Aug 2026 18:25:04 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 21 Aug 2026 18:25:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 21 Aug 2026 18:25:04 GMT
ARG REPO_CHANNEL=stable
# Fri, 21 Aug 2026 18:25:04 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 21 Aug 2026 18:25:04 GMT
ARG VERSION=26.7.5.10
# Fri, 21 Aug 2026 18:25:04 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 21 Aug 2026 18:25:29 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.5.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:25:30 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.5.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:25:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.5.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 21 Aug 2026 18:25:31 GMT
ENV LANG=en_US.UTF-8
# Fri, 21 Aug 2026 18:25:31 GMT
ENV TZ=UTC
# Fri, 21 Aug 2026 18:25:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.5.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 21 Aug 2026 18:25:31 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 21 Aug 2026 18:25:31 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:25:31 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 21 Aug 2026 18:25:31 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 21 Aug 2026 18:25:31 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 21 Aug 2026 18:25:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62c46eb92dd507b69c7846af862f3a9852dc9323e79668338af2c1a9f08afba7`  
		Last Modified: Fri, 21 Aug 2026 18:25:53 GMT  
		Size: 7.5 MB (7533764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dd2c01e6725b514ea85ab6e92cb2faf9d47b00c38e80b73acc1d2ab9c9013f9`  
		Last Modified: Fri, 21 Aug 2026 18:25:57 GMT  
		Size: 214.1 MB (214110437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:772e85e724fb32c035d2659c5ae836f4e82ceef98e7b62a3df6c3ec98f27980a`  
		Last Modified: Fri, 21 Aug 2026 18:25:53 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc8c6f216a6093a29b430dbe089ae813a34dfbdf1d3d0406364f53452c019c16`  
		Last Modified: Fri, 21 Aug 2026 18:25:53 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7eb78558932b657cd36d6bfe2e5ec5594c400c66595e8282344b5adf2d59ad9b`  
		Last Modified: Fri, 21 Aug 2026 18:25:54 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e9609bc3eb8ee908b2ae82d45eae3b90fdbf8a4efec85318ca57d6475dd83fd`  
		Last Modified: Fri, 21 Aug 2026 18:25:54 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:662b16065f1535e6908427a3f876d377d01899e50591f621308d8b41dfbee2d3`  
		Last Modified: Fri, 21 Aug 2026 18:25:55 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7.5-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:1bcf37d389af8d0e45dfe240765632e922379f793c249a7131400a8bf95426f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 KB (27557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d666534ceeaafa0f7628b0f622884416547e4ceed949f9b900afee69d2da741a`

```dockerfile
```

-	Layers:
	-	`sha256:63387cd13e33f471d92b79bd3adc1ecb52645475542ad1abcfc8bb9cd37c18b5`  
		Last Modified: Fri, 21 Aug 2026 18:25:53 GMT  
		Size: 27.6 KB (27557 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.7.5.10`

```console
$ docker pull clickhouse@sha256:d0e74e9970998f92c0490c23345259a539550eff24f551dbe385d3cd29481f74
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.7.5.10` - linux; amd64

```console
$ docker pull clickhouse@sha256:8f8e7e6cb53c44eab491b99d0be29b924c9a6e253a48ed3fb204a2076c35e1ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.9 MB (266855966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f3186a0eca268b5550f70a0f6d64848817e1d03b76ae2d2fdfc8148e1bcd335`
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
# Fri, 21 Aug 2026 18:21:10 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 21 Aug 2026 18:21:10 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 21 Aug 2026 18:21:10 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 21 Aug 2026 18:21:10 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 21 Aug 2026 18:21:10 GMT
ARG REPO_CHANNEL=stable
# Fri, 21 Aug 2026 18:21:10 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 21 Aug 2026 18:21:10 GMT
ARG VERSION=26.7.5.10
# Fri, 21 Aug 2026 18:21:10 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 21 Aug 2026 18:21:32 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.5.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:21:33 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.5.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:21:33 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.5.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 21 Aug 2026 18:21:33 GMT
ENV LANG=en_US.UTF-8
# Fri, 21 Aug 2026 18:21:33 GMT
ENV TZ=UTC
# Fri, 21 Aug 2026 18:21:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.5.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 21 Aug 2026 18:21:34 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 21 Aug 2026 18:21:34 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:21:34 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 21 Aug 2026 18:21:34 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 21 Aug 2026 18:21:34 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 21 Aug 2026 18:21:34 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6abc97708c0d788623e805b245a817ebf5a0fab5e1ba575c0be558e5b567323`  
		Last Modified: Fri, 21 Aug 2026 18:21:56 GMT  
		Size: 7.6 MB (7553592 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31dc0e0fdb0d5b7c4bc6843fde26043eabd41f929bc324d732b3e97060d30da7`  
		Last Modified: Fri, 21 Aug 2026 18:22:00 GMT  
		Size: 228.7 MB (228695382 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:923848a99e99783b359da766d9f5b23eab24e3c8c497a047c870dfa5019561c2`  
		Last Modified: Fri, 21 Aug 2026 18:21:55 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:737927767f8faa7b2cea162dd3d38fa6cc393c4051e2f1d5c207a3af71c6e010`  
		Last Modified: Fri, 21 Aug 2026 18:21:55 GMT  
		Size: 865.7 KB (865748 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdb3505cba4f34606be982bae21af5523d229fa7ab4b46c6ef5af0524b820e31`  
		Last Modified: Fri, 21 Aug 2026 18:21:57 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1382792512308b5e6e14943223640b3cdd8e80cbf9da5c60717e9a66c35f19da`  
		Last Modified: Fri, 21 Aug 2026 18:21:57 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8a90d0cf542c6f6f9f5c582ed602c216823372726f7284077700d39245c7c6e`  
		Last Modified: Fri, 21 Aug 2026 18:21:57 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7.5.10` - unknown; unknown

```console
$ docker pull clickhouse@sha256:a6990df105d38268bf10831a77f321a0ff97f2a9a8afb4bd9ec17fac86851f6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.3 KB (27345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90d31c1f6c1a29e0da53e2e689642f54de75769e20aec714ad65f16b20e4909a`

```dockerfile
```

-	Layers:
	-	`sha256:a367f2d03cbe6b8725836cce7cd595f321bcb0a8a266bb195c454e40cc0475a1`  
		Last Modified: Fri, 21 Aug 2026 18:21:55 GMT  
		Size: 27.3 KB (27345 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.7.5.10` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:0df6b93ea7acac497d23bc1ba02f6c6a0949c8fd015e45e4ff970bbdae8a1334
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.1 MB (250134706 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:006e91bb373bb8839db557b3475b4c476593e6b3f923461b374b72f3db4bafad`
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
# Fri, 21 Aug 2026 18:25:04 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 21 Aug 2026 18:25:04 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 21 Aug 2026 18:25:04 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 21 Aug 2026 18:25:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 21 Aug 2026 18:25:04 GMT
ARG REPO_CHANNEL=stable
# Fri, 21 Aug 2026 18:25:04 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 21 Aug 2026 18:25:04 GMT
ARG VERSION=26.7.5.10
# Fri, 21 Aug 2026 18:25:04 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 21 Aug 2026 18:25:29 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.5.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:25:30 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.5.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:25:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.5.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 21 Aug 2026 18:25:31 GMT
ENV LANG=en_US.UTF-8
# Fri, 21 Aug 2026 18:25:31 GMT
ENV TZ=UTC
# Fri, 21 Aug 2026 18:25:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.5.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 21 Aug 2026 18:25:31 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 21 Aug 2026 18:25:31 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:25:31 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 21 Aug 2026 18:25:31 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 21 Aug 2026 18:25:31 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 21 Aug 2026 18:25:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62c46eb92dd507b69c7846af862f3a9852dc9323e79668338af2c1a9f08afba7`  
		Last Modified: Fri, 21 Aug 2026 18:25:53 GMT  
		Size: 7.5 MB (7533764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dd2c01e6725b514ea85ab6e92cb2faf9d47b00c38e80b73acc1d2ab9c9013f9`  
		Last Modified: Fri, 21 Aug 2026 18:25:57 GMT  
		Size: 214.1 MB (214110437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:772e85e724fb32c035d2659c5ae836f4e82ceef98e7b62a3df6c3ec98f27980a`  
		Last Modified: Fri, 21 Aug 2026 18:25:53 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc8c6f216a6093a29b430dbe089ae813a34dfbdf1d3d0406364f53452c019c16`  
		Last Modified: Fri, 21 Aug 2026 18:25:53 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7eb78558932b657cd36d6bfe2e5ec5594c400c66595e8282344b5adf2d59ad9b`  
		Last Modified: Fri, 21 Aug 2026 18:25:54 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e9609bc3eb8ee908b2ae82d45eae3b90fdbf8a4efec85318ca57d6475dd83fd`  
		Last Modified: Fri, 21 Aug 2026 18:25:54 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:662b16065f1535e6908427a3f876d377d01899e50591f621308d8b41dfbee2d3`  
		Last Modified: Fri, 21 Aug 2026 18:25:55 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7.5.10` - unknown; unknown

```console
$ docker pull clickhouse@sha256:1bcf37d389af8d0e45dfe240765632e922379f793c249a7131400a8bf95426f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 KB (27557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d666534ceeaafa0f7628b0f622884416547e4ceed949f9b900afee69d2da741a`

```dockerfile
```

-	Layers:
	-	`sha256:63387cd13e33f471d92b79bd3adc1ecb52645475542ad1abcfc8bb9cd37c18b5`  
		Last Modified: Fri, 21 Aug 2026 18:25:53 GMT  
		Size: 27.6 KB (27557 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.7.5.10-jammy`

```console
$ docker pull clickhouse@sha256:d0e74e9970998f92c0490c23345259a539550eff24f551dbe385d3cd29481f74
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.7.5.10-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:8f8e7e6cb53c44eab491b99d0be29b924c9a6e253a48ed3fb204a2076c35e1ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.9 MB (266855966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f3186a0eca268b5550f70a0f6d64848817e1d03b76ae2d2fdfc8148e1bcd335`
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
# Fri, 21 Aug 2026 18:21:10 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 21 Aug 2026 18:21:10 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 21 Aug 2026 18:21:10 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 21 Aug 2026 18:21:10 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 21 Aug 2026 18:21:10 GMT
ARG REPO_CHANNEL=stable
# Fri, 21 Aug 2026 18:21:10 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 21 Aug 2026 18:21:10 GMT
ARG VERSION=26.7.5.10
# Fri, 21 Aug 2026 18:21:10 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 21 Aug 2026 18:21:32 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.5.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:21:33 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.5.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:21:33 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.5.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 21 Aug 2026 18:21:33 GMT
ENV LANG=en_US.UTF-8
# Fri, 21 Aug 2026 18:21:33 GMT
ENV TZ=UTC
# Fri, 21 Aug 2026 18:21:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.5.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 21 Aug 2026 18:21:34 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 21 Aug 2026 18:21:34 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:21:34 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 21 Aug 2026 18:21:34 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 21 Aug 2026 18:21:34 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 21 Aug 2026 18:21:34 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6abc97708c0d788623e805b245a817ebf5a0fab5e1ba575c0be558e5b567323`  
		Last Modified: Fri, 21 Aug 2026 18:21:56 GMT  
		Size: 7.6 MB (7553592 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31dc0e0fdb0d5b7c4bc6843fde26043eabd41f929bc324d732b3e97060d30da7`  
		Last Modified: Fri, 21 Aug 2026 18:22:00 GMT  
		Size: 228.7 MB (228695382 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:923848a99e99783b359da766d9f5b23eab24e3c8c497a047c870dfa5019561c2`  
		Last Modified: Fri, 21 Aug 2026 18:21:55 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:737927767f8faa7b2cea162dd3d38fa6cc393c4051e2f1d5c207a3af71c6e010`  
		Last Modified: Fri, 21 Aug 2026 18:21:55 GMT  
		Size: 865.7 KB (865748 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdb3505cba4f34606be982bae21af5523d229fa7ab4b46c6ef5af0524b820e31`  
		Last Modified: Fri, 21 Aug 2026 18:21:57 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1382792512308b5e6e14943223640b3cdd8e80cbf9da5c60717e9a66c35f19da`  
		Last Modified: Fri, 21 Aug 2026 18:21:57 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8a90d0cf542c6f6f9f5c582ed602c216823372726f7284077700d39245c7c6e`  
		Last Modified: Fri, 21 Aug 2026 18:21:57 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7.5.10-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:a6990df105d38268bf10831a77f321a0ff97f2a9a8afb4bd9ec17fac86851f6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.3 KB (27345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90d31c1f6c1a29e0da53e2e689642f54de75769e20aec714ad65f16b20e4909a`

```dockerfile
```

-	Layers:
	-	`sha256:a367f2d03cbe6b8725836cce7cd595f321bcb0a8a266bb195c454e40cc0475a1`  
		Last Modified: Fri, 21 Aug 2026 18:21:55 GMT  
		Size: 27.3 KB (27345 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.7.5.10-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:0df6b93ea7acac497d23bc1ba02f6c6a0949c8fd015e45e4ff970bbdae8a1334
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.1 MB (250134706 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:006e91bb373bb8839db557b3475b4c476593e6b3f923461b374b72f3db4bafad`
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
# Fri, 21 Aug 2026 18:25:04 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 21 Aug 2026 18:25:04 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 21 Aug 2026 18:25:04 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 21 Aug 2026 18:25:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 21 Aug 2026 18:25:04 GMT
ARG REPO_CHANNEL=stable
# Fri, 21 Aug 2026 18:25:04 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 21 Aug 2026 18:25:04 GMT
ARG VERSION=26.7.5.10
# Fri, 21 Aug 2026 18:25:04 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 21 Aug 2026 18:25:29 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.5.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:25:30 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.5.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:25:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.5.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 21 Aug 2026 18:25:31 GMT
ENV LANG=en_US.UTF-8
# Fri, 21 Aug 2026 18:25:31 GMT
ENV TZ=UTC
# Fri, 21 Aug 2026 18:25:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.5.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 21 Aug 2026 18:25:31 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 21 Aug 2026 18:25:31 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:25:31 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 21 Aug 2026 18:25:31 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 21 Aug 2026 18:25:31 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 21 Aug 2026 18:25:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62c46eb92dd507b69c7846af862f3a9852dc9323e79668338af2c1a9f08afba7`  
		Last Modified: Fri, 21 Aug 2026 18:25:53 GMT  
		Size: 7.5 MB (7533764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dd2c01e6725b514ea85ab6e92cb2faf9d47b00c38e80b73acc1d2ab9c9013f9`  
		Last Modified: Fri, 21 Aug 2026 18:25:57 GMT  
		Size: 214.1 MB (214110437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:772e85e724fb32c035d2659c5ae836f4e82ceef98e7b62a3df6c3ec98f27980a`  
		Last Modified: Fri, 21 Aug 2026 18:25:53 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc8c6f216a6093a29b430dbe089ae813a34dfbdf1d3d0406364f53452c019c16`  
		Last Modified: Fri, 21 Aug 2026 18:25:53 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7eb78558932b657cd36d6bfe2e5ec5594c400c66595e8282344b5adf2d59ad9b`  
		Last Modified: Fri, 21 Aug 2026 18:25:54 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e9609bc3eb8ee908b2ae82d45eae3b90fdbf8a4efec85318ca57d6475dd83fd`  
		Last Modified: Fri, 21 Aug 2026 18:25:54 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:662b16065f1535e6908427a3f876d377d01899e50591f621308d8b41dfbee2d3`  
		Last Modified: Fri, 21 Aug 2026 18:25:55 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7.5.10-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:1bcf37d389af8d0e45dfe240765632e922379f793c249a7131400a8bf95426f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 KB (27557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d666534ceeaafa0f7628b0f622884416547e4ceed949f9b900afee69d2da741a`

```dockerfile
```

-	Layers:
	-	`sha256:63387cd13e33f471d92b79bd3adc1ecb52645475542ad1abcfc8bb9cd37c18b5`  
		Last Modified: Fri, 21 Aug 2026 18:25:53 GMT  
		Size: 27.6 KB (27557 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:jammy`

```console
$ docker pull clickhouse@sha256:d0e74e9970998f92c0490c23345259a539550eff24f551dbe385d3cd29481f74
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:8f8e7e6cb53c44eab491b99d0be29b924c9a6e253a48ed3fb204a2076c35e1ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.9 MB (266855966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f3186a0eca268b5550f70a0f6d64848817e1d03b76ae2d2fdfc8148e1bcd335`
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
# Fri, 21 Aug 2026 18:21:10 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 21 Aug 2026 18:21:10 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 21 Aug 2026 18:21:10 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 21 Aug 2026 18:21:10 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 21 Aug 2026 18:21:10 GMT
ARG REPO_CHANNEL=stable
# Fri, 21 Aug 2026 18:21:10 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 21 Aug 2026 18:21:10 GMT
ARG VERSION=26.7.5.10
# Fri, 21 Aug 2026 18:21:10 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 21 Aug 2026 18:21:32 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.5.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:21:33 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.5.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:21:33 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.5.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 21 Aug 2026 18:21:33 GMT
ENV LANG=en_US.UTF-8
# Fri, 21 Aug 2026 18:21:33 GMT
ENV TZ=UTC
# Fri, 21 Aug 2026 18:21:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.5.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 21 Aug 2026 18:21:34 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 21 Aug 2026 18:21:34 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:21:34 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 21 Aug 2026 18:21:34 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 21 Aug 2026 18:21:34 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 21 Aug 2026 18:21:34 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6abc97708c0d788623e805b245a817ebf5a0fab5e1ba575c0be558e5b567323`  
		Last Modified: Fri, 21 Aug 2026 18:21:56 GMT  
		Size: 7.6 MB (7553592 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31dc0e0fdb0d5b7c4bc6843fde26043eabd41f929bc324d732b3e97060d30da7`  
		Last Modified: Fri, 21 Aug 2026 18:22:00 GMT  
		Size: 228.7 MB (228695382 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:923848a99e99783b359da766d9f5b23eab24e3c8c497a047c870dfa5019561c2`  
		Last Modified: Fri, 21 Aug 2026 18:21:55 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:737927767f8faa7b2cea162dd3d38fa6cc393c4051e2f1d5c207a3af71c6e010`  
		Last Modified: Fri, 21 Aug 2026 18:21:55 GMT  
		Size: 865.7 KB (865748 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdb3505cba4f34606be982bae21af5523d229fa7ab4b46c6ef5af0524b820e31`  
		Last Modified: Fri, 21 Aug 2026 18:21:57 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1382792512308b5e6e14943223640b3cdd8e80cbf9da5c60717e9a66c35f19da`  
		Last Modified: Fri, 21 Aug 2026 18:21:57 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8a90d0cf542c6f6f9f5c582ed602c216823372726f7284077700d39245c7c6e`  
		Last Modified: Fri, 21 Aug 2026 18:21:57 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:a6990df105d38268bf10831a77f321a0ff97f2a9a8afb4bd9ec17fac86851f6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.3 KB (27345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90d31c1f6c1a29e0da53e2e689642f54de75769e20aec714ad65f16b20e4909a`

```dockerfile
```

-	Layers:
	-	`sha256:a367f2d03cbe6b8725836cce7cd595f321bcb0a8a266bb195c454e40cc0475a1`  
		Last Modified: Fri, 21 Aug 2026 18:21:55 GMT  
		Size: 27.3 KB (27345 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:0df6b93ea7acac497d23bc1ba02f6c6a0949c8fd015e45e4ff970bbdae8a1334
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.1 MB (250134706 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:006e91bb373bb8839db557b3475b4c476593e6b3f923461b374b72f3db4bafad`
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
# Fri, 21 Aug 2026 18:25:04 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 21 Aug 2026 18:25:04 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 21 Aug 2026 18:25:04 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 21 Aug 2026 18:25:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 21 Aug 2026 18:25:04 GMT
ARG REPO_CHANNEL=stable
# Fri, 21 Aug 2026 18:25:04 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 21 Aug 2026 18:25:04 GMT
ARG VERSION=26.7.5.10
# Fri, 21 Aug 2026 18:25:04 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 21 Aug 2026 18:25:29 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.5.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:25:30 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.5.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:25:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.5.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 21 Aug 2026 18:25:31 GMT
ENV LANG=en_US.UTF-8
# Fri, 21 Aug 2026 18:25:31 GMT
ENV TZ=UTC
# Fri, 21 Aug 2026 18:25:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.5.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 21 Aug 2026 18:25:31 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 21 Aug 2026 18:25:31 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:25:31 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 21 Aug 2026 18:25:31 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 21 Aug 2026 18:25:31 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 21 Aug 2026 18:25:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62c46eb92dd507b69c7846af862f3a9852dc9323e79668338af2c1a9f08afba7`  
		Last Modified: Fri, 21 Aug 2026 18:25:53 GMT  
		Size: 7.5 MB (7533764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dd2c01e6725b514ea85ab6e92cb2faf9d47b00c38e80b73acc1d2ab9c9013f9`  
		Last Modified: Fri, 21 Aug 2026 18:25:57 GMT  
		Size: 214.1 MB (214110437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:772e85e724fb32c035d2659c5ae836f4e82ceef98e7b62a3df6c3ec98f27980a`  
		Last Modified: Fri, 21 Aug 2026 18:25:53 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc8c6f216a6093a29b430dbe089ae813a34dfbdf1d3d0406364f53452c019c16`  
		Last Modified: Fri, 21 Aug 2026 18:25:53 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7eb78558932b657cd36d6bfe2e5ec5594c400c66595e8282344b5adf2d59ad9b`  
		Last Modified: Fri, 21 Aug 2026 18:25:54 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e9609bc3eb8ee908b2ae82d45eae3b90fdbf8a4efec85318ca57d6475dd83fd`  
		Last Modified: Fri, 21 Aug 2026 18:25:54 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:662b16065f1535e6908427a3f876d377d01899e50591f621308d8b41dfbee2d3`  
		Last Modified: Fri, 21 Aug 2026 18:25:55 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:1bcf37d389af8d0e45dfe240765632e922379f793c249a7131400a8bf95426f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 KB (27557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d666534ceeaafa0f7628b0f622884416547e4ceed949f9b900afee69d2da741a`

```dockerfile
```

-	Layers:
	-	`sha256:63387cd13e33f471d92b79bd3adc1ecb52645475542ad1abcfc8bb9cd37c18b5`  
		Last Modified: Fri, 21 Aug 2026 18:25:53 GMT  
		Size: 27.6 KB (27557 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:latest`

```console
$ docker pull clickhouse@sha256:d0e74e9970998f92c0490c23345259a539550eff24f551dbe385d3cd29481f74
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:latest` - linux; amd64

```console
$ docker pull clickhouse@sha256:8f8e7e6cb53c44eab491b99d0be29b924c9a6e253a48ed3fb204a2076c35e1ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.9 MB (266855966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f3186a0eca268b5550f70a0f6d64848817e1d03b76ae2d2fdfc8148e1bcd335`
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
# Fri, 21 Aug 2026 18:21:10 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 21 Aug 2026 18:21:10 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 21 Aug 2026 18:21:10 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 21 Aug 2026 18:21:10 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 21 Aug 2026 18:21:10 GMT
ARG REPO_CHANNEL=stable
# Fri, 21 Aug 2026 18:21:10 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 21 Aug 2026 18:21:10 GMT
ARG VERSION=26.7.5.10
# Fri, 21 Aug 2026 18:21:10 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 21 Aug 2026 18:21:32 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.5.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:21:33 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.5.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:21:33 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.5.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 21 Aug 2026 18:21:33 GMT
ENV LANG=en_US.UTF-8
# Fri, 21 Aug 2026 18:21:33 GMT
ENV TZ=UTC
# Fri, 21 Aug 2026 18:21:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.5.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 21 Aug 2026 18:21:34 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 21 Aug 2026 18:21:34 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:21:34 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 21 Aug 2026 18:21:34 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 21 Aug 2026 18:21:34 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 21 Aug 2026 18:21:34 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6abc97708c0d788623e805b245a817ebf5a0fab5e1ba575c0be558e5b567323`  
		Last Modified: Fri, 21 Aug 2026 18:21:56 GMT  
		Size: 7.6 MB (7553592 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31dc0e0fdb0d5b7c4bc6843fde26043eabd41f929bc324d732b3e97060d30da7`  
		Last Modified: Fri, 21 Aug 2026 18:22:00 GMT  
		Size: 228.7 MB (228695382 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:923848a99e99783b359da766d9f5b23eab24e3c8c497a047c870dfa5019561c2`  
		Last Modified: Fri, 21 Aug 2026 18:21:55 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:737927767f8faa7b2cea162dd3d38fa6cc393c4051e2f1d5c207a3af71c6e010`  
		Last Modified: Fri, 21 Aug 2026 18:21:55 GMT  
		Size: 865.7 KB (865748 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdb3505cba4f34606be982bae21af5523d229fa7ab4b46c6ef5af0524b820e31`  
		Last Modified: Fri, 21 Aug 2026 18:21:57 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1382792512308b5e6e14943223640b3cdd8e80cbf9da5c60717e9a66c35f19da`  
		Last Modified: Fri, 21 Aug 2026 18:21:57 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8a90d0cf542c6f6f9f5c582ed602c216823372726f7284077700d39245c7c6e`  
		Last Modified: Fri, 21 Aug 2026 18:21:57 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:latest` - unknown; unknown

```console
$ docker pull clickhouse@sha256:a6990df105d38268bf10831a77f321a0ff97f2a9a8afb4bd9ec17fac86851f6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.3 KB (27345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90d31c1f6c1a29e0da53e2e689642f54de75769e20aec714ad65f16b20e4909a`

```dockerfile
```

-	Layers:
	-	`sha256:a367f2d03cbe6b8725836cce7cd595f321bcb0a8a266bb195c454e40cc0475a1`  
		Last Modified: Fri, 21 Aug 2026 18:21:55 GMT  
		Size: 27.3 KB (27345 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:latest` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:0df6b93ea7acac497d23bc1ba02f6c6a0949c8fd015e45e4ff970bbdae8a1334
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.1 MB (250134706 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:006e91bb373bb8839db557b3475b4c476593e6b3f923461b374b72f3db4bafad`
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
# Fri, 21 Aug 2026 18:25:04 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 21 Aug 2026 18:25:04 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 21 Aug 2026 18:25:04 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Fri, 21 Aug 2026 18:25:04 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 21 Aug 2026 18:25:04 GMT
ARG REPO_CHANNEL=stable
# Fri, 21 Aug 2026 18:25:04 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 21 Aug 2026 18:25:04 GMT
ARG VERSION=26.7.5.10
# Fri, 21 Aug 2026 18:25:04 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 21 Aug 2026 18:25:29 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.5.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:25:30 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.5.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:25:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.5.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 21 Aug 2026 18:25:31 GMT
ENV LANG=en_US.UTF-8
# Fri, 21 Aug 2026 18:25:31 GMT
ENV TZ=UTC
# Fri, 21 Aug 2026 18:25:31 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.5.10 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 21 Aug 2026 18:25:31 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 21 Aug 2026 18:25:31 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:25:31 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 21 Aug 2026 18:25:31 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 21 Aug 2026 18:25:31 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 21 Aug 2026 18:25:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62c46eb92dd507b69c7846af862f3a9852dc9323e79668338af2c1a9f08afba7`  
		Last Modified: Fri, 21 Aug 2026 18:25:53 GMT  
		Size: 7.5 MB (7533764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dd2c01e6725b514ea85ab6e92cb2faf9d47b00c38e80b73acc1d2ab9c9013f9`  
		Last Modified: Fri, 21 Aug 2026 18:25:57 GMT  
		Size: 214.1 MB (214110437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:772e85e724fb32c035d2659c5ae836f4e82ceef98e7b62a3df6c3ec98f27980a`  
		Last Modified: Fri, 21 Aug 2026 18:25:53 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc8c6f216a6093a29b430dbe089ae813a34dfbdf1d3d0406364f53452c019c16`  
		Last Modified: Fri, 21 Aug 2026 18:25:53 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7eb78558932b657cd36d6bfe2e5ec5594c400c66595e8282344b5adf2d59ad9b`  
		Last Modified: Fri, 21 Aug 2026 18:25:54 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e9609bc3eb8ee908b2ae82d45eae3b90fdbf8a4efec85318ca57d6475dd83fd`  
		Last Modified: Fri, 21 Aug 2026 18:25:54 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:662b16065f1535e6908427a3f876d377d01899e50591f621308d8b41dfbee2d3`  
		Last Modified: Fri, 21 Aug 2026 18:25:55 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:latest` - unknown; unknown

```console
$ docker pull clickhouse@sha256:1bcf37d389af8d0e45dfe240765632e922379f793c249a7131400a8bf95426f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 KB (27557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d666534ceeaafa0f7628b0f622884416547e4ceed949f9b900afee69d2da741a`

```dockerfile
```

-	Layers:
	-	`sha256:63387cd13e33f471d92b79bd3adc1ecb52645475542ad1abcfc8bb9cd37c18b5`  
		Last Modified: Fri, 21 Aug 2026 18:25:53 GMT  
		Size: 27.6 KB (27557 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:lts`

```console
$ docker pull clickhouse@sha256:d0a6f3c331378f28cf14d555ae2eec61fcd0a3cc14b765247cce58a1fe6a27d7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:lts` - linux; amd64

```console
$ docker pull clickhouse@sha256:5245c5afd137d2ef21ddb651aff4b49a78adbcf9d3b9277eaee45f4fabf2b0e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.5 MB (266522660 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d655acaba9b06f85b0b49860cd1d05a2bdd11341117fb8deadd4153610146782`
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
# Fri, 21 Aug 2026 18:21:17 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 21 Aug 2026 18:21:17 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 21 Aug 2026 18:21:17 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 21 Aug 2026 18:21:17 GMT
ARG REPO_CHANNEL=stable
# Fri, 21 Aug 2026 18:21:17 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 21 Aug 2026 18:21:17 GMT
ARG VERSION=26.3.20.7
# Fri, 21 Aug 2026 18:21:17 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 21 Aug 2026 18:21:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.20.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:21:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.20.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:21:44 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.20.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 21 Aug 2026 18:21:44 GMT
ENV LANG=en_US.UTF-8
# Fri, 21 Aug 2026 18:21:44 GMT
ENV TZ=UTC
# Fri, 21 Aug 2026 18:21:44 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.20.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 21 Aug 2026 18:21:44 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 21 Aug 2026 18:21:45 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:21:45 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 21 Aug 2026 18:21:45 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 21 Aug 2026 18:21:45 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 21 Aug 2026 18:21:45 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5b257cf17174e4cc983bb7da5c5be2ee0ab3c49b02b4c59d84686491c6445ef`  
		Last Modified: Fri, 21 Aug 2026 18:22:10 GMT  
		Size: 7.6 MB (7553740 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee7ffa102c9728df3d2b09924721fb12c21dfc4c48f65cf141ff9b06d56ad6d0`  
		Last Modified: Fri, 21 Aug 2026 18:22:15 GMT  
		Size: 228.4 MB (228361927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fea2feac6e445e960d7348e40999dca1a61f08ec83205d964fb9507f6f14f4d`  
		Last Modified: Fri, 21 Aug 2026 18:22:10 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4685519d4abdfc8f0a39409f8aa1ae6e048df3ebc90d775f8e4bfadccfa5fe02`  
		Last Modified: Fri, 21 Aug 2026 18:22:10 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b28e14926e923915c54636c95951e3a353cd414afeb320d45a9451e56ba67d03`  
		Last Modified: Fri, 21 Aug 2026 18:22:11 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6eecd2703ec62877dce80f6d41bf214f720ecf22799d25594e6fd9fe31f6ef1`  
		Last Modified: Fri, 21 Aug 2026 18:22:12 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57cddaef27ab3098869017ee0ab6c8e795524514407a45f3e854e11bc306da96`  
		Last Modified: Fri, 21 Aug 2026 18:22:12 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:lts` - unknown; unknown

```console
$ docker pull clickhouse@sha256:badb7a82c296f8fb10ce8dd95bc59ab98cbf03aed4419006186a10c998087a18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.8 KB (26835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71d8b32125f667ab5396bf00d5bcd933f40a42a31e6da82f395433f27883bdfa`

```dockerfile
```

-	Layers:
	-	`sha256:69a2c177eb0516ee67ba52ba3b49769958bee626bcb9de20afa0d88dc08bcf8f`  
		Last Modified: Fri, 21 Aug 2026 18:22:10 GMT  
		Size: 26.8 KB (26835 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:lts` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:324360a9f037ec0822ed30ece0ebec0506066f9a80d1aedb22f3a7be83a4e044
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.9 MB (247850791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2280bbff48f55837b62f7c027dd9fb04323dd413b0113bea1ea6db3e9aeaf31`
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
# Fri, 21 Aug 2026 18:25:02 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 21 Aug 2026 18:25:02 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 21 Aug 2026 18:25:02 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 21 Aug 2026 18:25:02 GMT
ARG REPO_CHANNEL=stable
# Fri, 21 Aug 2026 18:25:02 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 21 Aug 2026 18:25:02 GMT
ARG VERSION=26.3.20.7
# Fri, 21 Aug 2026 18:25:02 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 21 Aug 2026 18:25:28 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.20.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:25:28 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.20.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:25:29 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.20.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 21 Aug 2026 18:25:29 GMT
ENV LANG=en_US.UTF-8
# Fri, 21 Aug 2026 18:25:29 GMT
ENV TZ=UTC
# Fri, 21 Aug 2026 18:25:30 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.20.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 21 Aug 2026 18:25:30 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 21 Aug 2026 18:25:30 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:25:30 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 21 Aug 2026 18:25:30 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 21 Aug 2026 18:25:30 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 21 Aug 2026 18:25:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:419eb6e73fe6bab9942cc40b3c43aed91d7fc526821c7b74575b97176c16a4ab`  
		Last Modified: Fri, 21 Aug 2026 18:25:52 GMT  
		Size: 7.5 MB (7533739 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3602dd47d4afdcd7ce7c5e57c6eec974a48f6c0970bab9f41a7bcfea5d7aba08`  
		Last Modified: Fri, 21 Aug 2026 18:25:56 GMT  
		Size: 211.8 MB (211826542 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7be465f00b30b0a86558226210f4e8572989a28f5ef4dbc0647f38d4c1ddf95`  
		Last Modified: Fri, 21 Aug 2026 18:25:51 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92009d1994bacc2f245a65657ecff077e2e1ea494dfd2130007d6e239387ac2f`  
		Last Modified: Fri, 21 Aug 2026 18:25:52 GMT  
		Size: 865.8 KB (865754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84d57c56bfc1c988d0860cc23f80a7a1ee08d1c05cb46f6fdcf5f42c2e679072`  
		Last Modified: Fri, 21 Aug 2026 18:25:53 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ca5bf3845c60436addd21c106a1228ac755ee13f91b598b7301ef864a3bd60b`  
		Last Modified: Fri, 21 Aug 2026 18:25:53 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba03d9f699a9ed20e95e98ad00a41c5409be81be6604a1f3aa19f3b77f1cdd89`  
		Last Modified: Fri, 21 Aug 2026 18:25:53 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:lts` - unknown; unknown

```console
$ docker pull clickhouse@sha256:bf09110d2c782674d327533e34911a2b4d1107e680d8a0ad1ff2dad77d2bb317
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.0 KB (27048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c86ca1f52d9333a6408780a8abf6a04a11020bfeef48170995dbff3535a58cd1`

```dockerfile
```

-	Layers:
	-	`sha256:1414bf62c5993f18a9a1c18999028c1789c5bed58670935bb3317721d6d7fa9e`  
		Last Modified: Fri, 21 Aug 2026 18:25:51 GMT  
		Size: 27.0 KB (27048 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:lts-jammy`

```console
$ docker pull clickhouse@sha256:d0a6f3c331378f28cf14d555ae2eec61fcd0a3cc14b765247cce58a1fe6a27d7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:lts-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:5245c5afd137d2ef21ddb651aff4b49a78adbcf9d3b9277eaee45f4fabf2b0e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.5 MB (266522660 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d655acaba9b06f85b0b49860cd1d05a2bdd11341117fb8deadd4153610146782`
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
# Fri, 21 Aug 2026 18:21:17 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 21 Aug 2026 18:21:17 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 21 Aug 2026 18:21:17 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 21 Aug 2026 18:21:17 GMT
ARG REPO_CHANNEL=stable
# Fri, 21 Aug 2026 18:21:17 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 21 Aug 2026 18:21:17 GMT
ARG VERSION=26.3.20.7
# Fri, 21 Aug 2026 18:21:17 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 21 Aug 2026 18:21:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.20.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:21:43 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.20.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:21:44 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.20.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 21 Aug 2026 18:21:44 GMT
ENV LANG=en_US.UTF-8
# Fri, 21 Aug 2026 18:21:44 GMT
ENV TZ=UTC
# Fri, 21 Aug 2026 18:21:44 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.20.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 21 Aug 2026 18:21:44 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 21 Aug 2026 18:21:45 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:21:45 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 21 Aug 2026 18:21:45 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 21 Aug 2026 18:21:45 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 21 Aug 2026 18:21:45 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5b257cf17174e4cc983bb7da5c5be2ee0ab3c49b02b4c59d84686491c6445ef`  
		Last Modified: Fri, 21 Aug 2026 18:22:10 GMT  
		Size: 7.6 MB (7553740 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee7ffa102c9728df3d2b09924721fb12c21dfc4c48f65cf141ff9b06d56ad6d0`  
		Last Modified: Fri, 21 Aug 2026 18:22:15 GMT  
		Size: 228.4 MB (228361927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fea2feac6e445e960d7348e40999dca1a61f08ec83205d964fb9507f6f14f4d`  
		Last Modified: Fri, 21 Aug 2026 18:22:10 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4685519d4abdfc8f0a39409f8aa1ae6e048df3ebc90d775f8e4bfadccfa5fe02`  
		Last Modified: Fri, 21 Aug 2026 18:22:10 GMT  
		Size: 865.8 KB (865751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b28e14926e923915c54636c95951e3a353cd414afeb320d45a9451e56ba67d03`  
		Last Modified: Fri, 21 Aug 2026 18:22:11 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6eecd2703ec62877dce80f6d41bf214f720ecf22799d25594e6fd9fe31f6ef1`  
		Last Modified: Fri, 21 Aug 2026 18:22:12 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57cddaef27ab3098869017ee0ab6c8e795524514407a45f3e854e11bc306da96`  
		Last Modified: Fri, 21 Aug 2026 18:22:12 GMT  
		Size: 3.6 KB (3637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:lts-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:badb7a82c296f8fb10ce8dd95bc59ab98cbf03aed4419006186a10c998087a18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.8 KB (26835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71d8b32125f667ab5396bf00d5bcd933f40a42a31e6da82f395433f27883bdfa`

```dockerfile
```

-	Layers:
	-	`sha256:69a2c177eb0516ee67ba52ba3b49769958bee626bcb9de20afa0d88dc08bcf8f`  
		Last Modified: Fri, 21 Aug 2026 18:22:10 GMT  
		Size: 26.8 KB (26835 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:lts-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:324360a9f037ec0822ed30ece0ebec0506066f9a80d1aedb22f3a7be83a4e044
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.9 MB (247850791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2280bbff48f55837b62f7c027dd9fb04323dd413b0113bea1ea6db3e9aeaf31`
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
# Fri, 21 Aug 2026 18:25:02 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Fri, 21 Aug 2026 18:25:02 GMT
ARG apt_archive=http://archive.ubuntu.com
# Fri, 21 Aug 2026 18:25:02 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Fri, 21 Aug 2026 18:25:02 GMT
ARG REPO_CHANNEL=stable
# Fri, 21 Aug 2026 18:25:02 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Fri, 21 Aug 2026 18:25:02 GMT
ARG VERSION=26.3.20.7
# Fri, 21 Aug 2026 18:25:02 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Fri, 21 Aug 2026 18:25:28 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.20.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:25:28 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.20.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Fri, 21 Aug 2026 18:25:29 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.20.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Fri, 21 Aug 2026 18:25:29 GMT
ENV LANG=en_US.UTF-8
# Fri, 21 Aug 2026 18:25:29 GMT
ENV TZ=UTC
# Fri, 21 Aug 2026 18:25:30 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.20.7 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 21 Aug 2026 18:25:30 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Fri, 21 Aug 2026 18:25:30 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:25:30 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Fri, 21 Aug 2026 18:25:30 GMT
VOLUME [/var/lib/clickhouse]
# Fri, 21 Aug 2026 18:25:30 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Fri, 21 Aug 2026 18:25:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:419eb6e73fe6bab9942cc40b3c43aed91d7fc526821c7b74575b97176c16a4ab`  
		Last Modified: Fri, 21 Aug 2026 18:25:52 GMT  
		Size: 7.5 MB (7533739 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3602dd47d4afdcd7ce7c5e57c6eec974a48f6c0970bab9f41a7bcfea5d7aba08`  
		Last Modified: Fri, 21 Aug 2026 18:25:56 GMT  
		Size: 211.8 MB (211826542 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7be465f00b30b0a86558226210f4e8572989a28f5ef4dbc0647f38d4c1ddf95`  
		Last Modified: Fri, 21 Aug 2026 18:25:51 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92009d1994bacc2f245a65657ecff077e2e1ea494dfd2130007d6e239387ac2f`  
		Last Modified: Fri, 21 Aug 2026 18:25:52 GMT  
		Size: 865.8 KB (865754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84d57c56bfc1c988d0860cc23f80a7a1ee08d1c05cb46f6fdcf5f42c2e679072`  
		Last Modified: Fri, 21 Aug 2026 18:25:53 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ca5bf3845c60436addd21c106a1228ac755ee13f91b598b7301ef864a3bd60b`  
		Last Modified: Fri, 21 Aug 2026 18:25:53 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba03d9f699a9ed20e95e98ad00a41c5409be81be6604a1f3aa19f3b77f1cdd89`  
		Last Modified: Fri, 21 Aug 2026 18:25:53 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:lts-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:bf09110d2c782674d327533e34911a2b4d1107e680d8a0ad1ff2dad77d2bb317
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.0 KB (27048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c86ca1f52d9333a6408780a8abf6a04a11020bfeef48170995dbff3535a58cd1`

```dockerfile
```

-	Layers:
	-	`sha256:1414bf62c5993f18a9a1c18999028c1789c5bed58670935bb3317721d6d7fa9e`  
		Last Modified: Fri, 21 Aug 2026 18:25:51 GMT  
		Size: 27.0 KB (27048 bytes)  
		MIME: application/vnd.in-toto+json
