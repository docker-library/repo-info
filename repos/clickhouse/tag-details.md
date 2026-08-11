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
$ docker pull clickhouse@sha256:ac842526c208c17f16fd6cbe4bdfd6844b87ec29a9c97f97c63af14f35714651
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:25.8` - linux; amd64

```console
$ docker pull clickhouse@sha256:ac3c969f562678dca167d1000bef1ffe429b96889808f55f743d518242ad8f51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.3 MB (230273798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58898898bfe84ffb003d4e7c2e5929b9a6f410c5b3ccfaf75748732a1d19ac2c`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 31 Jul 2026 21:53:09 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:53:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:53:09 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:53:11 GMT
ADD file:4501ff54ffd37d854b1cfbcd2e37da58bf8a49da3a6a82232d03e7556d337a92 in / 
# Fri, 31 Jul 2026 21:53:12 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 18:57:58 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 10 Aug 2026 18:57:58 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 10 Aug 2026 18:57:58 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 10 Aug 2026 18:57:58 GMT
ARG REPO_CHANNEL=stable
# Mon, 10 Aug 2026 18:57:58 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 10 Aug 2026 18:57:58 GMT
ARG VERSION=25.8.29.51
# Mon, 10 Aug 2026 18:57:58 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 10 Aug 2026 18:58:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.29.51 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:58:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.29.51 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:58:27 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.29.51 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 10 Aug 2026 18:58:27 GMT
ENV LANG=en_US.UTF-8
# Mon, 10 Aug 2026 18:58:27 GMT
ENV TZ=UTC
# Mon, 10 Aug 2026 18:58:28 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.29.51 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 10 Aug 2026 18:58:28 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 10 Aug 2026 18:58:28 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 10 Aug 2026 18:58:28 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 10 Aug 2026 18:58:28 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 10 Aug 2026 18:58:28 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 10 Aug 2026 18:58:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:39a945af8df2ad9343f141c82355d3f2c4b576d432eda34c460d630607462b60`  
		Last Modified: Fri, 31 Jul 2026 22:53:51 GMT  
		Size: 29.7 MB (29736517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eec24f03e94927a0e5adfce2efe11c9143e57c31350b0efd0b77ca89bca1db7b`  
		Last Modified: Mon, 10 Aug 2026 18:58:50 GMT  
		Size: 7.6 MB (7553388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81caabcc3d1a0fd20985e7a0c4b1bff655b690df82cde3dce9600515571b45d6`  
		Last Modified: Mon, 10 Aug 2026 18:58:54 GMT  
		Size: 192.1 MB (192113867 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23a0d8815f59c25bd3c6beee13b47b6376bdb92dd05b84b52f08bd5ff3a8ab8b`  
		Last Modified: Mon, 10 Aug 2026 18:58:49 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24db6cf4f605fef482742c6996d59e1f3e0c7ee98fab42b86c66fb76cb198f63`  
		Last Modified: Mon, 10 Aug 2026 18:58:50 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d3b9a687dd1ef30eec2eac4345f0c9f6b50196b8fcb3e2ee99744813b0c8317`  
		Last Modified: Mon, 10 Aug 2026 18:58:51 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a69762e664d842491109f687ece2d280e10df294f209bdf0befc41251438ac1d`  
		Last Modified: Mon, 10 Aug 2026 18:58:51 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a9df35a1b39dbb2ae45b1acc74959d12cb715658070c688b27614b6dfc1bb99`  
		Last Modified: Mon, 10 Aug 2026 18:58:51 GMT  
		Size: 3.6 KB (3611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:25.8` - unknown; unknown

```console
$ docker pull clickhouse@sha256:379645f091767f83d20e442e20b408b0e7183b4802fd71d6b404cec3455b882f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e51810899317f4348cf06d54ed92f64f5d2a110506f4a6da7de047a6e4c35f8a`

```dockerfile
```

-	Layers:
	-	`sha256:c6035ea93418fa8fa7113a467a9a3f0b9f005f7652e43fd7913394705b1f7e9d`  
		Last Modified: Mon, 10 Aug 2026 18:58:50 GMT  
		Size: 26.2 KB (26235 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:25.8` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:002e813df6871cd9fe02e725be8076dbd0e413dcd67cd27c8608859861e2d530
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.2 MB (215150901 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f925539ba403895c63d95d88ccbf784cb7c1dbbd407ab7f05030b6198f05af6b`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 31 Jul 2026 21:58:10 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:58:10 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:58:10 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:58:12 GMT
ADD file:66c837214dd75fd34fbf726aabdc4c4a739297d5d853247e4c885c4bce5b7f6a in / 
# Fri, 31 Jul 2026 21:58:12 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 18:57:34 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 10 Aug 2026 18:57:34 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 10 Aug 2026 18:57:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 10 Aug 2026 18:57:34 GMT
ARG REPO_CHANNEL=stable
# Mon, 10 Aug 2026 18:57:34 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 10 Aug 2026 18:57:34 GMT
ARG VERSION=25.8.29.51
# Mon, 10 Aug 2026 18:57:34 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 10 Aug 2026 18:58:07 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.29.51 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:58:07 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.29.51 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:58:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.29.51 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 10 Aug 2026 18:58:09 GMT
ENV LANG=en_US.UTF-8
# Mon, 10 Aug 2026 18:58:09 GMT
ENV TZ=UTC
# Mon, 10 Aug 2026 18:58:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.29.51 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 10 Aug 2026 18:58:09 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 10 Aug 2026 18:58:09 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 10 Aug 2026 18:58:09 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 10 Aug 2026 18:58:09 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 10 Aug 2026 18:58:09 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 10 Aug 2026 18:58:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e737c5ed04040f2f0a2a5834e272c5fa0ab6a31a0641be05eb1669153c7c4cfc`  
		Last Modified: Fri, 31 Jul 2026 22:53:57 GMT  
		Size: 27.6 MB (27620032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f1733f8841f6789314f7ace276c810f33e1c0746f7ba558e6f9eaf7683b089d`  
		Last Modified: Mon, 10 Aug 2026 18:58:28 GMT  
		Size: 7.5 MB (7533562 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87c71320d63edb84e5377f1d7ae13bee38af1834c534c9b756d42481a240962b`  
		Last Modified: Mon, 10 Aug 2026 18:58:34 GMT  
		Size: 179.1 MB (179127278 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1c558dad56d7e6f5957b3ca418c279b2ccfb91ffdf1d61b3d85af906e28f0c9`  
		Last Modified: Mon, 10 Aug 2026 18:58:27 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3907f1831e1299ef45c9657ac59861ae57f9cfffd68d3009354ee6e5fe76c65`  
		Last Modified: Mon, 10 Aug 2026 18:58:28 GMT  
		Size: 865.8 KB (865752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36e3dc07f71901b698b9e2cc2f2aec6a2301bcb691d1e91f29ab3e87797ac8c1`  
		Last Modified: Mon, 10 Aug 2026 18:58:29 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7eee253f7cb2798b31f344a27b304b49ba5474a8f52b291934447542b13431f`  
		Last Modified: Mon, 10 Aug 2026 18:58:29 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d291f0a3d78bee65104e9ac5b44569adec57bacb1b3a375ce105f1b82bab4cea`  
		Last Modified: Mon, 10 Aug 2026 18:58:30 GMT  
		Size: 3.6 KB (3612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:25.8` - unknown; unknown

```console
$ docker pull clickhouse@sha256:cb03f985354ba9e8131bf5714e1774ca0694d740302676041ae5fdcfd70a76fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb797041a950dfbe8d0cddd55add0198935afaa95fad1a9866f2a259010aa6bb`

```dockerfile
```

-	Layers:
	-	`sha256:c1623b011e88edc9eb8092adc071dddf511a734c187f533a1b2bddb2ec821e8e`  
		Last Modified: Mon, 10 Aug 2026 18:58:27 GMT  
		Size: 26.4 KB (26423 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:25.8-jammy`

```console
$ docker pull clickhouse@sha256:ac842526c208c17f16fd6cbe4bdfd6844b87ec29a9c97f97c63af14f35714651
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:25.8-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:ac3c969f562678dca167d1000bef1ffe429b96889808f55f743d518242ad8f51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.3 MB (230273798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58898898bfe84ffb003d4e7c2e5929b9a6f410c5b3ccfaf75748732a1d19ac2c`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 31 Jul 2026 21:53:09 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:53:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:53:09 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:53:11 GMT
ADD file:4501ff54ffd37d854b1cfbcd2e37da58bf8a49da3a6a82232d03e7556d337a92 in / 
# Fri, 31 Jul 2026 21:53:12 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 18:57:58 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 10 Aug 2026 18:57:58 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 10 Aug 2026 18:57:58 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 10 Aug 2026 18:57:58 GMT
ARG REPO_CHANNEL=stable
# Mon, 10 Aug 2026 18:57:58 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 10 Aug 2026 18:57:58 GMT
ARG VERSION=25.8.29.51
# Mon, 10 Aug 2026 18:57:58 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 10 Aug 2026 18:58:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.29.51 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:58:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.29.51 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:58:27 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.29.51 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 10 Aug 2026 18:58:27 GMT
ENV LANG=en_US.UTF-8
# Mon, 10 Aug 2026 18:58:27 GMT
ENV TZ=UTC
# Mon, 10 Aug 2026 18:58:28 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.29.51 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 10 Aug 2026 18:58:28 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 10 Aug 2026 18:58:28 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 10 Aug 2026 18:58:28 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 10 Aug 2026 18:58:28 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 10 Aug 2026 18:58:28 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 10 Aug 2026 18:58:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:39a945af8df2ad9343f141c82355d3f2c4b576d432eda34c460d630607462b60`  
		Last Modified: Fri, 31 Jul 2026 22:53:51 GMT  
		Size: 29.7 MB (29736517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eec24f03e94927a0e5adfce2efe11c9143e57c31350b0efd0b77ca89bca1db7b`  
		Last Modified: Mon, 10 Aug 2026 18:58:50 GMT  
		Size: 7.6 MB (7553388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81caabcc3d1a0fd20985e7a0c4b1bff655b690df82cde3dce9600515571b45d6`  
		Last Modified: Mon, 10 Aug 2026 18:58:54 GMT  
		Size: 192.1 MB (192113867 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23a0d8815f59c25bd3c6beee13b47b6376bdb92dd05b84b52f08bd5ff3a8ab8b`  
		Last Modified: Mon, 10 Aug 2026 18:58:49 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24db6cf4f605fef482742c6996d59e1f3e0c7ee98fab42b86c66fb76cb198f63`  
		Last Modified: Mon, 10 Aug 2026 18:58:50 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d3b9a687dd1ef30eec2eac4345f0c9f6b50196b8fcb3e2ee99744813b0c8317`  
		Last Modified: Mon, 10 Aug 2026 18:58:51 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a69762e664d842491109f687ece2d280e10df294f209bdf0befc41251438ac1d`  
		Last Modified: Mon, 10 Aug 2026 18:58:51 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a9df35a1b39dbb2ae45b1acc74959d12cb715658070c688b27614b6dfc1bb99`  
		Last Modified: Mon, 10 Aug 2026 18:58:51 GMT  
		Size: 3.6 KB (3611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:25.8-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:379645f091767f83d20e442e20b408b0e7183b4802fd71d6b404cec3455b882f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e51810899317f4348cf06d54ed92f64f5d2a110506f4a6da7de047a6e4c35f8a`

```dockerfile
```

-	Layers:
	-	`sha256:c6035ea93418fa8fa7113a467a9a3f0b9f005f7652e43fd7913394705b1f7e9d`  
		Last Modified: Mon, 10 Aug 2026 18:58:50 GMT  
		Size: 26.2 KB (26235 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:25.8-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:002e813df6871cd9fe02e725be8076dbd0e413dcd67cd27c8608859861e2d530
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.2 MB (215150901 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f925539ba403895c63d95d88ccbf784cb7c1dbbd407ab7f05030b6198f05af6b`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 31 Jul 2026 21:58:10 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:58:10 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:58:10 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:58:12 GMT
ADD file:66c837214dd75fd34fbf726aabdc4c4a739297d5d853247e4c885c4bce5b7f6a in / 
# Fri, 31 Jul 2026 21:58:12 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 18:57:34 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 10 Aug 2026 18:57:34 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 10 Aug 2026 18:57:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 10 Aug 2026 18:57:34 GMT
ARG REPO_CHANNEL=stable
# Mon, 10 Aug 2026 18:57:34 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 10 Aug 2026 18:57:34 GMT
ARG VERSION=25.8.29.51
# Mon, 10 Aug 2026 18:57:34 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 10 Aug 2026 18:58:07 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.29.51 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:58:07 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.29.51 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:58:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.29.51 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 10 Aug 2026 18:58:09 GMT
ENV LANG=en_US.UTF-8
# Mon, 10 Aug 2026 18:58:09 GMT
ENV TZ=UTC
# Mon, 10 Aug 2026 18:58:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.29.51 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 10 Aug 2026 18:58:09 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 10 Aug 2026 18:58:09 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 10 Aug 2026 18:58:09 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 10 Aug 2026 18:58:09 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 10 Aug 2026 18:58:09 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 10 Aug 2026 18:58:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e737c5ed04040f2f0a2a5834e272c5fa0ab6a31a0641be05eb1669153c7c4cfc`  
		Last Modified: Fri, 31 Jul 2026 22:53:57 GMT  
		Size: 27.6 MB (27620032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f1733f8841f6789314f7ace276c810f33e1c0746f7ba558e6f9eaf7683b089d`  
		Last Modified: Mon, 10 Aug 2026 18:58:28 GMT  
		Size: 7.5 MB (7533562 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87c71320d63edb84e5377f1d7ae13bee38af1834c534c9b756d42481a240962b`  
		Last Modified: Mon, 10 Aug 2026 18:58:34 GMT  
		Size: 179.1 MB (179127278 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1c558dad56d7e6f5957b3ca418c279b2ccfb91ffdf1d61b3d85af906e28f0c9`  
		Last Modified: Mon, 10 Aug 2026 18:58:27 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3907f1831e1299ef45c9657ac59861ae57f9cfffd68d3009354ee6e5fe76c65`  
		Last Modified: Mon, 10 Aug 2026 18:58:28 GMT  
		Size: 865.8 KB (865752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36e3dc07f71901b698b9e2cc2f2aec6a2301bcb691d1e91f29ab3e87797ac8c1`  
		Last Modified: Mon, 10 Aug 2026 18:58:29 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7eee253f7cb2798b31f344a27b304b49ba5474a8f52b291934447542b13431f`  
		Last Modified: Mon, 10 Aug 2026 18:58:29 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d291f0a3d78bee65104e9ac5b44569adec57bacb1b3a375ce105f1b82bab4cea`  
		Last Modified: Mon, 10 Aug 2026 18:58:30 GMT  
		Size: 3.6 KB (3612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:25.8-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:cb03f985354ba9e8131bf5714e1774ca0694d740302676041ae5fdcfd70a76fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb797041a950dfbe8d0cddd55add0198935afaa95fad1a9866f2a259010aa6bb`

```dockerfile
```

-	Layers:
	-	`sha256:c1623b011e88edc9eb8092adc071dddf511a734c187f533a1b2bddb2ec821e8e`  
		Last Modified: Mon, 10 Aug 2026 18:58:27 GMT  
		Size: 26.4 KB (26423 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:25.8.29`

```console
$ docker pull clickhouse@sha256:ac842526c208c17f16fd6cbe4bdfd6844b87ec29a9c97f97c63af14f35714651
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:25.8.29` - linux; amd64

```console
$ docker pull clickhouse@sha256:ac3c969f562678dca167d1000bef1ffe429b96889808f55f743d518242ad8f51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.3 MB (230273798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58898898bfe84ffb003d4e7c2e5929b9a6f410c5b3ccfaf75748732a1d19ac2c`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 31 Jul 2026 21:53:09 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:53:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:53:09 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:53:11 GMT
ADD file:4501ff54ffd37d854b1cfbcd2e37da58bf8a49da3a6a82232d03e7556d337a92 in / 
# Fri, 31 Jul 2026 21:53:12 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 18:57:58 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 10 Aug 2026 18:57:58 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 10 Aug 2026 18:57:58 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 10 Aug 2026 18:57:58 GMT
ARG REPO_CHANNEL=stable
# Mon, 10 Aug 2026 18:57:58 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 10 Aug 2026 18:57:58 GMT
ARG VERSION=25.8.29.51
# Mon, 10 Aug 2026 18:57:58 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 10 Aug 2026 18:58:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.29.51 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:58:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.29.51 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:58:27 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.29.51 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 10 Aug 2026 18:58:27 GMT
ENV LANG=en_US.UTF-8
# Mon, 10 Aug 2026 18:58:27 GMT
ENV TZ=UTC
# Mon, 10 Aug 2026 18:58:28 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.29.51 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 10 Aug 2026 18:58:28 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 10 Aug 2026 18:58:28 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 10 Aug 2026 18:58:28 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 10 Aug 2026 18:58:28 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 10 Aug 2026 18:58:28 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 10 Aug 2026 18:58:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:39a945af8df2ad9343f141c82355d3f2c4b576d432eda34c460d630607462b60`  
		Last Modified: Fri, 31 Jul 2026 22:53:51 GMT  
		Size: 29.7 MB (29736517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eec24f03e94927a0e5adfce2efe11c9143e57c31350b0efd0b77ca89bca1db7b`  
		Last Modified: Mon, 10 Aug 2026 18:58:50 GMT  
		Size: 7.6 MB (7553388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81caabcc3d1a0fd20985e7a0c4b1bff655b690df82cde3dce9600515571b45d6`  
		Last Modified: Mon, 10 Aug 2026 18:58:54 GMT  
		Size: 192.1 MB (192113867 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23a0d8815f59c25bd3c6beee13b47b6376bdb92dd05b84b52f08bd5ff3a8ab8b`  
		Last Modified: Mon, 10 Aug 2026 18:58:49 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24db6cf4f605fef482742c6996d59e1f3e0c7ee98fab42b86c66fb76cb198f63`  
		Last Modified: Mon, 10 Aug 2026 18:58:50 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d3b9a687dd1ef30eec2eac4345f0c9f6b50196b8fcb3e2ee99744813b0c8317`  
		Last Modified: Mon, 10 Aug 2026 18:58:51 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a69762e664d842491109f687ece2d280e10df294f209bdf0befc41251438ac1d`  
		Last Modified: Mon, 10 Aug 2026 18:58:51 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a9df35a1b39dbb2ae45b1acc74959d12cb715658070c688b27614b6dfc1bb99`  
		Last Modified: Mon, 10 Aug 2026 18:58:51 GMT  
		Size: 3.6 KB (3611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:25.8.29` - unknown; unknown

```console
$ docker pull clickhouse@sha256:379645f091767f83d20e442e20b408b0e7183b4802fd71d6b404cec3455b882f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e51810899317f4348cf06d54ed92f64f5d2a110506f4a6da7de047a6e4c35f8a`

```dockerfile
```

-	Layers:
	-	`sha256:c6035ea93418fa8fa7113a467a9a3f0b9f005f7652e43fd7913394705b1f7e9d`  
		Last Modified: Mon, 10 Aug 2026 18:58:50 GMT  
		Size: 26.2 KB (26235 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:25.8.29` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:002e813df6871cd9fe02e725be8076dbd0e413dcd67cd27c8608859861e2d530
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.2 MB (215150901 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f925539ba403895c63d95d88ccbf784cb7c1dbbd407ab7f05030b6198f05af6b`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 31 Jul 2026 21:58:10 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:58:10 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:58:10 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:58:12 GMT
ADD file:66c837214dd75fd34fbf726aabdc4c4a739297d5d853247e4c885c4bce5b7f6a in / 
# Fri, 31 Jul 2026 21:58:12 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 18:57:34 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 10 Aug 2026 18:57:34 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 10 Aug 2026 18:57:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 10 Aug 2026 18:57:34 GMT
ARG REPO_CHANNEL=stable
# Mon, 10 Aug 2026 18:57:34 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 10 Aug 2026 18:57:34 GMT
ARG VERSION=25.8.29.51
# Mon, 10 Aug 2026 18:57:34 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 10 Aug 2026 18:58:07 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.29.51 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:58:07 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.29.51 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:58:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.29.51 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 10 Aug 2026 18:58:09 GMT
ENV LANG=en_US.UTF-8
# Mon, 10 Aug 2026 18:58:09 GMT
ENV TZ=UTC
# Mon, 10 Aug 2026 18:58:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.29.51 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 10 Aug 2026 18:58:09 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 10 Aug 2026 18:58:09 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 10 Aug 2026 18:58:09 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 10 Aug 2026 18:58:09 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 10 Aug 2026 18:58:09 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 10 Aug 2026 18:58:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e737c5ed04040f2f0a2a5834e272c5fa0ab6a31a0641be05eb1669153c7c4cfc`  
		Last Modified: Fri, 31 Jul 2026 22:53:57 GMT  
		Size: 27.6 MB (27620032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f1733f8841f6789314f7ace276c810f33e1c0746f7ba558e6f9eaf7683b089d`  
		Last Modified: Mon, 10 Aug 2026 18:58:28 GMT  
		Size: 7.5 MB (7533562 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87c71320d63edb84e5377f1d7ae13bee38af1834c534c9b756d42481a240962b`  
		Last Modified: Mon, 10 Aug 2026 18:58:34 GMT  
		Size: 179.1 MB (179127278 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1c558dad56d7e6f5957b3ca418c279b2ccfb91ffdf1d61b3d85af906e28f0c9`  
		Last Modified: Mon, 10 Aug 2026 18:58:27 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3907f1831e1299ef45c9657ac59861ae57f9cfffd68d3009354ee6e5fe76c65`  
		Last Modified: Mon, 10 Aug 2026 18:58:28 GMT  
		Size: 865.8 KB (865752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36e3dc07f71901b698b9e2cc2f2aec6a2301bcb691d1e91f29ab3e87797ac8c1`  
		Last Modified: Mon, 10 Aug 2026 18:58:29 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7eee253f7cb2798b31f344a27b304b49ba5474a8f52b291934447542b13431f`  
		Last Modified: Mon, 10 Aug 2026 18:58:29 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d291f0a3d78bee65104e9ac5b44569adec57bacb1b3a375ce105f1b82bab4cea`  
		Last Modified: Mon, 10 Aug 2026 18:58:30 GMT  
		Size: 3.6 KB (3612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:25.8.29` - unknown; unknown

```console
$ docker pull clickhouse@sha256:cb03f985354ba9e8131bf5714e1774ca0694d740302676041ae5fdcfd70a76fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb797041a950dfbe8d0cddd55add0198935afaa95fad1a9866f2a259010aa6bb`

```dockerfile
```

-	Layers:
	-	`sha256:c1623b011e88edc9eb8092adc071dddf511a734c187f533a1b2bddb2ec821e8e`  
		Last Modified: Mon, 10 Aug 2026 18:58:27 GMT  
		Size: 26.4 KB (26423 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:25.8.29-jammy`

```console
$ docker pull clickhouse@sha256:ac842526c208c17f16fd6cbe4bdfd6844b87ec29a9c97f97c63af14f35714651
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:25.8.29-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:ac3c969f562678dca167d1000bef1ffe429b96889808f55f743d518242ad8f51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.3 MB (230273798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58898898bfe84ffb003d4e7c2e5929b9a6f410c5b3ccfaf75748732a1d19ac2c`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 31 Jul 2026 21:53:09 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:53:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:53:09 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:53:11 GMT
ADD file:4501ff54ffd37d854b1cfbcd2e37da58bf8a49da3a6a82232d03e7556d337a92 in / 
# Fri, 31 Jul 2026 21:53:12 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 18:57:58 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 10 Aug 2026 18:57:58 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 10 Aug 2026 18:57:58 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 10 Aug 2026 18:57:58 GMT
ARG REPO_CHANNEL=stable
# Mon, 10 Aug 2026 18:57:58 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 10 Aug 2026 18:57:58 GMT
ARG VERSION=25.8.29.51
# Mon, 10 Aug 2026 18:57:58 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 10 Aug 2026 18:58:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.29.51 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:58:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.29.51 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:58:27 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.29.51 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 10 Aug 2026 18:58:27 GMT
ENV LANG=en_US.UTF-8
# Mon, 10 Aug 2026 18:58:27 GMT
ENV TZ=UTC
# Mon, 10 Aug 2026 18:58:28 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.29.51 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 10 Aug 2026 18:58:28 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 10 Aug 2026 18:58:28 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 10 Aug 2026 18:58:28 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 10 Aug 2026 18:58:28 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 10 Aug 2026 18:58:28 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 10 Aug 2026 18:58:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:39a945af8df2ad9343f141c82355d3f2c4b576d432eda34c460d630607462b60`  
		Last Modified: Fri, 31 Jul 2026 22:53:51 GMT  
		Size: 29.7 MB (29736517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eec24f03e94927a0e5adfce2efe11c9143e57c31350b0efd0b77ca89bca1db7b`  
		Last Modified: Mon, 10 Aug 2026 18:58:50 GMT  
		Size: 7.6 MB (7553388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81caabcc3d1a0fd20985e7a0c4b1bff655b690df82cde3dce9600515571b45d6`  
		Last Modified: Mon, 10 Aug 2026 18:58:54 GMT  
		Size: 192.1 MB (192113867 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23a0d8815f59c25bd3c6beee13b47b6376bdb92dd05b84b52f08bd5ff3a8ab8b`  
		Last Modified: Mon, 10 Aug 2026 18:58:49 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24db6cf4f605fef482742c6996d59e1f3e0c7ee98fab42b86c66fb76cb198f63`  
		Last Modified: Mon, 10 Aug 2026 18:58:50 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d3b9a687dd1ef30eec2eac4345f0c9f6b50196b8fcb3e2ee99744813b0c8317`  
		Last Modified: Mon, 10 Aug 2026 18:58:51 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a69762e664d842491109f687ece2d280e10df294f209bdf0befc41251438ac1d`  
		Last Modified: Mon, 10 Aug 2026 18:58:51 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a9df35a1b39dbb2ae45b1acc74959d12cb715658070c688b27614b6dfc1bb99`  
		Last Modified: Mon, 10 Aug 2026 18:58:51 GMT  
		Size: 3.6 KB (3611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:25.8.29-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:379645f091767f83d20e442e20b408b0e7183b4802fd71d6b404cec3455b882f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e51810899317f4348cf06d54ed92f64f5d2a110506f4a6da7de047a6e4c35f8a`

```dockerfile
```

-	Layers:
	-	`sha256:c6035ea93418fa8fa7113a467a9a3f0b9f005f7652e43fd7913394705b1f7e9d`  
		Last Modified: Mon, 10 Aug 2026 18:58:50 GMT  
		Size: 26.2 KB (26235 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:25.8.29-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:002e813df6871cd9fe02e725be8076dbd0e413dcd67cd27c8608859861e2d530
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.2 MB (215150901 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f925539ba403895c63d95d88ccbf784cb7c1dbbd407ab7f05030b6198f05af6b`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 31 Jul 2026 21:58:10 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:58:10 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:58:10 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:58:12 GMT
ADD file:66c837214dd75fd34fbf726aabdc4c4a739297d5d853247e4c885c4bce5b7f6a in / 
# Fri, 31 Jul 2026 21:58:12 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 18:57:34 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 10 Aug 2026 18:57:34 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 10 Aug 2026 18:57:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 10 Aug 2026 18:57:34 GMT
ARG REPO_CHANNEL=stable
# Mon, 10 Aug 2026 18:57:34 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 10 Aug 2026 18:57:34 GMT
ARG VERSION=25.8.29.51
# Mon, 10 Aug 2026 18:57:34 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 10 Aug 2026 18:58:07 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.29.51 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:58:07 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.29.51 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:58:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.29.51 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 10 Aug 2026 18:58:09 GMT
ENV LANG=en_US.UTF-8
# Mon, 10 Aug 2026 18:58:09 GMT
ENV TZ=UTC
# Mon, 10 Aug 2026 18:58:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.29.51 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 10 Aug 2026 18:58:09 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 10 Aug 2026 18:58:09 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 10 Aug 2026 18:58:09 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 10 Aug 2026 18:58:09 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 10 Aug 2026 18:58:09 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 10 Aug 2026 18:58:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e737c5ed04040f2f0a2a5834e272c5fa0ab6a31a0641be05eb1669153c7c4cfc`  
		Last Modified: Fri, 31 Jul 2026 22:53:57 GMT  
		Size: 27.6 MB (27620032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f1733f8841f6789314f7ace276c810f33e1c0746f7ba558e6f9eaf7683b089d`  
		Last Modified: Mon, 10 Aug 2026 18:58:28 GMT  
		Size: 7.5 MB (7533562 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87c71320d63edb84e5377f1d7ae13bee38af1834c534c9b756d42481a240962b`  
		Last Modified: Mon, 10 Aug 2026 18:58:34 GMT  
		Size: 179.1 MB (179127278 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1c558dad56d7e6f5957b3ca418c279b2ccfb91ffdf1d61b3d85af906e28f0c9`  
		Last Modified: Mon, 10 Aug 2026 18:58:27 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3907f1831e1299ef45c9657ac59861ae57f9cfffd68d3009354ee6e5fe76c65`  
		Last Modified: Mon, 10 Aug 2026 18:58:28 GMT  
		Size: 865.8 KB (865752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36e3dc07f71901b698b9e2cc2f2aec6a2301bcb691d1e91f29ab3e87797ac8c1`  
		Last Modified: Mon, 10 Aug 2026 18:58:29 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7eee253f7cb2798b31f344a27b304b49ba5474a8f52b291934447542b13431f`  
		Last Modified: Mon, 10 Aug 2026 18:58:29 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d291f0a3d78bee65104e9ac5b44569adec57bacb1b3a375ce105f1b82bab4cea`  
		Last Modified: Mon, 10 Aug 2026 18:58:30 GMT  
		Size: 3.6 KB (3612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:25.8.29-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:cb03f985354ba9e8131bf5714e1774ca0694d740302676041ae5fdcfd70a76fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb797041a950dfbe8d0cddd55add0198935afaa95fad1a9866f2a259010aa6bb`

```dockerfile
```

-	Layers:
	-	`sha256:c1623b011e88edc9eb8092adc071dddf511a734c187f533a1b2bddb2ec821e8e`  
		Last Modified: Mon, 10 Aug 2026 18:58:27 GMT  
		Size: 26.4 KB (26423 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:25.8.29.51`

```console
$ docker pull clickhouse@sha256:ac842526c208c17f16fd6cbe4bdfd6844b87ec29a9c97f97c63af14f35714651
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:25.8.29.51` - linux; amd64

```console
$ docker pull clickhouse@sha256:ac3c969f562678dca167d1000bef1ffe429b96889808f55f743d518242ad8f51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.3 MB (230273798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58898898bfe84ffb003d4e7c2e5929b9a6f410c5b3ccfaf75748732a1d19ac2c`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 31 Jul 2026 21:53:09 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:53:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:53:09 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:53:11 GMT
ADD file:4501ff54ffd37d854b1cfbcd2e37da58bf8a49da3a6a82232d03e7556d337a92 in / 
# Fri, 31 Jul 2026 21:53:12 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 18:57:58 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 10 Aug 2026 18:57:58 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 10 Aug 2026 18:57:58 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 10 Aug 2026 18:57:58 GMT
ARG REPO_CHANNEL=stable
# Mon, 10 Aug 2026 18:57:58 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 10 Aug 2026 18:57:58 GMT
ARG VERSION=25.8.29.51
# Mon, 10 Aug 2026 18:57:58 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 10 Aug 2026 18:58:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.29.51 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:58:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.29.51 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:58:27 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.29.51 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 10 Aug 2026 18:58:27 GMT
ENV LANG=en_US.UTF-8
# Mon, 10 Aug 2026 18:58:27 GMT
ENV TZ=UTC
# Mon, 10 Aug 2026 18:58:28 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.29.51 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 10 Aug 2026 18:58:28 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 10 Aug 2026 18:58:28 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 10 Aug 2026 18:58:28 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 10 Aug 2026 18:58:28 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 10 Aug 2026 18:58:28 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 10 Aug 2026 18:58:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:39a945af8df2ad9343f141c82355d3f2c4b576d432eda34c460d630607462b60`  
		Last Modified: Fri, 31 Jul 2026 22:53:51 GMT  
		Size: 29.7 MB (29736517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eec24f03e94927a0e5adfce2efe11c9143e57c31350b0efd0b77ca89bca1db7b`  
		Last Modified: Mon, 10 Aug 2026 18:58:50 GMT  
		Size: 7.6 MB (7553388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81caabcc3d1a0fd20985e7a0c4b1bff655b690df82cde3dce9600515571b45d6`  
		Last Modified: Mon, 10 Aug 2026 18:58:54 GMT  
		Size: 192.1 MB (192113867 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23a0d8815f59c25bd3c6beee13b47b6376bdb92dd05b84b52f08bd5ff3a8ab8b`  
		Last Modified: Mon, 10 Aug 2026 18:58:49 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24db6cf4f605fef482742c6996d59e1f3e0c7ee98fab42b86c66fb76cb198f63`  
		Last Modified: Mon, 10 Aug 2026 18:58:50 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d3b9a687dd1ef30eec2eac4345f0c9f6b50196b8fcb3e2ee99744813b0c8317`  
		Last Modified: Mon, 10 Aug 2026 18:58:51 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a69762e664d842491109f687ece2d280e10df294f209bdf0befc41251438ac1d`  
		Last Modified: Mon, 10 Aug 2026 18:58:51 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a9df35a1b39dbb2ae45b1acc74959d12cb715658070c688b27614b6dfc1bb99`  
		Last Modified: Mon, 10 Aug 2026 18:58:51 GMT  
		Size: 3.6 KB (3611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:25.8.29.51` - unknown; unknown

```console
$ docker pull clickhouse@sha256:379645f091767f83d20e442e20b408b0e7183b4802fd71d6b404cec3455b882f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e51810899317f4348cf06d54ed92f64f5d2a110506f4a6da7de047a6e4c35f8a`

```dockerfile
```

-	Layers:
	-	`sha256:c6035ea93418fa8fa7113a467a9a3f0b9f005f7652e43fd7913394705b1f7e9d`  
		Last Modified: Mon, 10 Aug 2026 18:58:50 GMT  
		Size: 26.2 KB (26235 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:25.8.29.51` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:002e813df6871cd9fe02e725be8076dbd0e413dcd67cd27c8608859861e2d530
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.2 MB (215150901 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f925539ba403895c63d95d88ccbf784cb7c1dbbd407ab7f05030b6198f05af6b`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 31 Jul 2026 21:58:10 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:58:10 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:58:10 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:58:12 GMT
ADD file:66c837214dd75fd34fbf726aabdc4c4a739297d5d853247e4c885c4bce5b7f6a in / 
# Fri, 31 Jul 2026 21:58:12 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 18:57:34 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 10 Aug 2026 18:57:34 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 10 Aug 2026 18:57:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 10 Aug 2026 18:57:34 GMT
ARG REPO_CHANNEL=stable
# Mon, 10 Aug 2026 18:57:34 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 10 Aug 2026 18:57:34 GMT
ARG VERSION=25.8.29.51
# Mon, 10 Aug 2026 18:57:34 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 10 Aug 2026 18:58:07 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.29.51 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:58:07 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.29.51 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:58:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.29.51 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 10 Aug 2026 18:58:09 GMT
ENV LANG=en_US.UTF-8
# Mon, 10 Aug 2026 18:58:09 GMT
ENV TZ=UTC
# Mon, 10 Aug 2026 18:58:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.29.51 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 10 Aug 2026 18:58:09 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 10 Aug 2026 18:58:09 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 10 Aug 2026 18:58:09 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 10 Aug 2026 18:58:09 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 10 Aug 2026 18:58:09 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 10 Aug 2026 18:58:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e737c5ed04040f2f0a2a5834e272c5fa0ab6a31a0641be05eb1669153c7c4cfc`  
		Last Modified: Fri, 31 Jul 2026 22:53:57 GMT  
		Size: 27.6 MB (27620032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f1733f8841f6789314f7ace276c810f33e1c0746f7ba558e6f9eaf7683b089d`  
		Last Modified: Mon, 10 Aug 2026 18:58:28 GMT  
		Size: 7.5 MB (7533562 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87c71320d63edb84e5377f1d7ae13bee38af1834c534c9b756d42481a240962b`  
		Last Modified: Mon, 10 Aug 2026 18:58:34 GMT  
		Size: 179.1 MB (179127278 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1c558dad56d7e6f5957b3ca418c279b2ccfb91ffdf1d61b3d85af906e28f0c9`  
		Last Modified: Mon, 10 Aug 2026 18:58:27 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3907f1831e1299ef45c9657ac59861ae57f9cfffd68d3009354ee6e5fe76c65`  
		Last Modified: Mon, 10 Aug 2026 18:58:28 GMT  
		Size: 865.8 KB (865752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36e3dc07f71901b698b9e2cc2f2aec6a2301bcb691d1e91f29ab3e87797ac8c1`  
		Last Modified: Mon, 10 Aug 2026 18:58:29 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7eee253f7cb2798b31f344a27b304b49ba5474a8f52b291934447542b13431f`  
		Last Modified: Mon, 10 Aug 2026 18:58:29 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d291f0a3d78bee65104e9ac5b44569adec57bacb1b3a375ce105f1b82bab4cea`  
		Last Modified: Mon, 10 Aug 2026 18:58:30 GMT  
		Size: 3.6 KB (3612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:25.8.29.51` - unknown; unknown

```console
$ docker pull clickhouse@sha256:cb03f985354ba9e8131bf5714e1774ca0694d740302676041ae5fdcfd70a76fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb797041a950dfbe8d0cddd55add0198935afaa95fad1a9866f2a259010aa6bb`

```dockerfile
```

-	Layers:
	-	`sha256:c1623b011e88edc9eb8092adc071dddf511a734c187f533a1b2bddb2ec821e8e`  
		Last Modified: Mon, 10 Aug 2026 18:58:27 GMT  
		Size: 26.4 KB (26423 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:25.8.29.51-jammy`

```console
$ docker pull clickhouse@sha256:ac842526c208c17f16fd6cbe4bdfd6844b87ec29a9c97f97c63af14f35714651
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:25.8.29.51-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:ac3c969f562678dca167d1000bef1ffe429b96889808f55f743d518242ad8f51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.3 MB (230273798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58898898bfe84ffb003d4e7c2e5929b9a6f410c5b3ccfaf75748732a1d19ac2c`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 31 Jul 2026 21:53:09 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:53:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:53:09 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:53:11 GMT
ADD file:4501ff54ffd37d854b1cfbcd2e37da58bf8a49da3a6a82232d03e7556d337a92 in / 
# Fri, 31 Jul 2026 21:53:12 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 18:57:58 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 10 Aug 2026 18:57:58 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 10 Aug 2026 18:57:58 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 10 Aug 2026 18:57:58 GMT
ARG REPO_CHANNEL=stable
# Mon, 10 Aug 2026 18:57:58 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 10 Aug 2026 18:57:58 GMT
ARG VERSION=25.8.29.51
# Mon, 10 Aug 2026 18:57:58 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 10 Aug 2026 18:58:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.29.51 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:58:26 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.29.51 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:58:27 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.29.51 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 10 Aug 2026 18:58:27 GMT
ENV LANG=en_US.UTF-8
# Mon, 10 Aug 2026 18:58:27 GMT
ENV TZ=UTC
# Mon, 10 Aug 2026 18:58:28 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.29.51 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 10 Aug 2026 18:58:28 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 10 Aug 2026 18:58:28 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 10 Aug 2026 18:58:28 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 10 Aug 2026 18:58:28 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 10 Aug 2026 18:58:28 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 10 Aug 2026 18:58:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:39a945af8df2ad9343f141c82355d3f2c4b576d432eda34c460d630607462b60`  
		Last Modified: Fri, 31 Jul 2026 22:53:51 GMT  
		Size: 29.7 MB (29736517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eec24f03e94927a0e5adfce2efe11c9143e57c31350b0efd0b77ca89bca1db7b`  
		Last Modified: Mon, 10 Aug 2026 18:58:50 GMT  
		Size: 7.6 MB (7553388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81caabcc3d1a0fd20985e7a0c4b1bff655b690df82cde3dce9600515571b45d6`  
		Last Modified: Mon, 10 Aug 2026 18:58:54 GMT  
		Size: 192.1 MB (192113867 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23a0d8815f59c25bd3c6beee13b47b6376bdb92dd05b84b52f08bd5ff3a8ab8b`  
		Last Modified: Mon, 10 Aug 2026 18:58:49 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24db6cf4f605fef482742c6996d59e1f3e0c7ee98fab42b86c66fb76cb198f63`  
		Last Modified: Mon, 10 Aug 2026 18:58:50 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d3b9a687dd1ef30eec2eac4345f0c9f6b50196b8fcb3e2ee99744813b0c8317`  
		Last Modified: Mon, 10 Aug 2026 18:58:51 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a69762e664d842491109f687ece2d280e10df294f209bdf0befc41251438ac1d`  
		Last Modified: Mon, 10 Aug 2026 18:58:51 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a9df35a1b39dbb2ae45b1acc74959d12cb715658070c688b27614b6dfc1bb99`  
		Last Modified: Mon, 10 Aug 2026 18:58:51 GMT  
		Size: 3.6 KB (3611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:25.8.29.51-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:379645f091767f83d20e442e20b408b0e7183b4802fd71d6b404cec3455b882f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e51810899317f4348cf06d54ed92f64f5d2a110506f4a6da7de047a6e4c35f8a`

```dockerfile
```

-	Layers:
	-	`sha256:c6035ea93418fa8fa7113a467a9a3f0b9f005f7652e43fd7913394705b1f7e9d`  
		Last Modified: Mon, 10 Aug 2026 18:58:50 GMT  
		Size: 26.2 KB (26235 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:25.8.29.51-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:002e813df6871cd9fe02e725be8076dbd0e413dcd67cd27c8608859861e2d530
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.2 MB (215150901 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f925539ba403895c63d95d88ccbf784cb7c1dbbd407ab7f05030b6198f05af6b`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 31 Jul 2026 21:58:10 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:58:10 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:58:10 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:58:12 GMT
ADD file:66c837214dd75fd34fbf726aabdc4c4a739297d5d853247e4c885c4bce5b7f6a in / 
# Fri, 31 Jul 2026 21:58:12 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 18:57:34 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 10 Aug 2026 18:57:34 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 10 Aug 2026 18:57:34 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 10 Aug 2026 18:57:34 GMT
ARG REPO_CHANNEL=stable
# Mon, 10 Aug 2026 18:57:34 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 10 Aug 2026 18:57:34 GMT
ARG VERSION=25.8.29.51
# Mon, 10 Aug 2026 18:57:34 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 10 Aug 2026 18:58:07 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.29.51 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:58:07 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.29.51 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:58:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.29.51 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 10 Aug 2026 18:58:09 GMT
ENV LANG=en_US.UTF-8
# Mon, 10 Aug 2026 18:58:09 GMT
ENV TZ=UTC
# Mon, 10 Aug 2026 18:58:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=25.8.29.51 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 10 Aug 2026 18:58:09 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 10 Aug 2026 18:58:09 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 10 Aug 2026 18:58:09 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 10 Aug 2026 18:58:09 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 10 Aug 2026 18:58:09 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 10 Aug 2026 18:58:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e737c5ed04040f2f0a2a5834e272c5fa0ab6a31a0641be05eb1669153c7c4cfc`  
		Last Modified: Fri, 31 Jul 2026 22:53:57 GMT  
		Size: 27.6 MB (27620032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f1733f8841f6789314f7ace276c810f33e1c0746f7ba558e6f9eaf7683b089d`  
		Last Modified: Mon, 10 Aug 2026 18:58:28 GMT  
		Size: 7.5 MB (7533562 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87c71320d63edb84e5377f1d7ae13bee38af1834c534c9b756d42481a240962b`  
		Last Modified: Mon, 10 Aug 2026 18:58:34 GMT  
		Size: 179.1 MB (179127278 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1c558dad56d7e6f5957b3ca418c279b2ccfb91ffdf1d61b3d85af906e28f0c9`  
		Last Modified: Mon, 10 Aug 2026 18:58:27 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3907f1831e1299ef45c9657ac59861ae57f9cfffd68d3009354ee6e5fe76c65`  
		Last Modified: Mon, 10 Aug 2026 18:58:28 GMT  
		Size: 865.8 KB (865752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36e3dc07f71901b698b9e2cc2f2aec6a2301bcb691d1e91f29ab3e87797ac8c1`  
		Last Modified: Mon, 10 Aug 2026 18:58:29 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7eee253f7cb2798b31f344a27b304b49ba5474a8f52b291934447542b13431f`  
		Last Modified: Mon, 10 Aug 2026 18:58:29 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d291f0a3d78bee65104e9ac5b44569adec57bacb1b3a375ce105f1b82bab4cea`  
		Last Modified: Mon, 10 Aug 2026 18:58:30 GMT  
		Size: 3.6 KB (3612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:25.8.29.51-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:cb03f985354ba9e8131bf5714e1774ca0694d740302676041ae5fdcfd70a76fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb797041a950dfbe8d0cddd55add0198935afaa95fad1a9866f2a259010aa6bb`

```dockerfile
```

-	Layers:
	-	`sha256:c1623b011e88edc9eb8092adc071dddf511a734c187f533a1b2bddb2ec821e8e`  
		Last Modified: Mon, 10 Aug 2026 18:58:27 GMT  
		Size: 26.4 KB (26423 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.3`

```console
$ docker pull clickhouse@sha256:3b6f16f1729ce677c73d3dc0d5a419c7997114fe57d49b5f06a4782fe75e024c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.3` - linux; amd64

```console
$ docker pull clickhouse@sha256:29c2a8698ac0dc1945312f379b927033d5a6531a5cb9bc96e458cc9ba90805f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.5 MB (265492524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a79859005dc77d2d21e6eee0348aa9c929cd7bf5b8d2630482138b8a0553eff`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 31 Jul 2026 21:53:09 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:53:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:53:09 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:53:11 GMT
ADD file:4501ff54ffd37d854b1cfbcd2e37da58bf8a49da3a6a82232d03e7556d337a92 in / 
# Fri, 31 Jul 2026 21:53:12 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 18:58:20 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 10 Aug 2026 18:58:20 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 10 Aug 2026 18:58:20 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 10 Aug 2026 18:58:20 GMT
ARG REPO_CHANNEL=stable
# Mon, 10 Aug 2026 18:58:20 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 10 Aug 2026 18:58:20 GMT
ARG VERSION=26.3.17.110
# Mon, 10 Aug 2026 18:58:20 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 10 Aug 2026 18:58:49 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:58:49 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:58:50 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 10 Aug 2026 18:58:50 GMT
ENV LANG=en_US.UTF-8
# Mon, 10 Aug 2026 18:58:50 GMT
ENV TZ=UTC
# Mon, 10 Aug 2026 18:58:50 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 10 Aug 2026 18:58:50 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 10 Aug 2026 18:58:50 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 10 Aug 2026 18:58:50 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 10 Aug 2026 18:58:50 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 10 Aug 2026 18:58:50 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 10 Aug 2026 18:58:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:39a945af8df2ad9343f141c82355d3f2c4b576d432eda34c460d630607462b60`  
		Last Modified: Fri, 31 Jul 2026 22:53:51 GMT  
		Size: 29.7 MB (29736517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bbac3485c9aba166d5f40c2869886ca5b33335d0fe791343f2f99618c83abf7`  
		Last Modified: Mon, 10 Aug 2026 18:59:13 GMT  
		Size: 7.6 MB (7553458 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68fd210b381dada86d29d1f34dd31271ac08f184bf9041007d237d95692b630b`  
		Last Modified: Mon, 10 Aug 2026 18:59:17 GMT  
		Size: 227.3 MB (227332497 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee6bc6b83f4298352003bf41d6d678826ed1e91de33c00a43fe4f7017fe94dd7`  
		Last Modified: Mon, 10 Aug 2026 18:59:13 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01704565e1a1f809fc2ac2e9b31f2fe810d42c7ec37761a70d3683483c41cb32`  
		Last Modified: Mon, 10 Aug 2026 18:59:13 GMT  
		Size: 865.8 KB (865752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6baf9b9a2b0544c2f044ffccdcc8cb1f1b680c8e12d2d074ef1a72ddff4b40ea`  
		Last Modified: Mon, 10 Aug 2026 18:59:14 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64a92e2eda63a42a28d4b507ec39a07de1b9fe3e4d49b0eb35c6fc00ba03bf8d`  
		Last Modified: Mon, 10 Aug 2026 18:59:14 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efceb8acabfe1bbeb588a5969484329aab8db49cc2d00c1b552c32443a3a0cf8`  
		Last Modified: Mon, 10 Aug 2026 18:59:14 GMT  
		Size: 3.6 KB (3636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3` - unknown; unknown

```console
$ docker pull clickhouse@sha256:4e93fe44de3d3a7fe5f434614f2f12c27782d122f7450464d8fe791190230ca7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.9 KB (26857 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b390610c53802a7d1022091fcabe525a1de40c4da5be8707642cc448ff623a6`

```dockerfile
```

-	Layers:
	-	`sha256:640c9e89b4eaf44dacfb8fe43cd73fa3eec243781955392fb4266080da61328d`  
		Last Modified: Mon, 10 Aug 2026 18:59:13 GMT  
		Size: 26.9 KB (26857 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.3` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:f094ee4671e71da919ead1f341fda755acb0a5b8869026ef8bfd7880c5985217
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.8 MB (246811971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55724afb916dbe77118bfef503b7de4c542370012b4c335d6f38002c0ca40767`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 31 Jul 2026 21:58:10 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:58:10 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:58:10 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:58:12 GMT
ADD file:66c837214dd75fd34fbf726aabdc4c4a739297d5d853247e4c885c4bce5b7f6a in / 
# Fri, 31 Jul 2026 21:58:12 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 18:58:21 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 10 Aug 2026 18:58:21 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 10 Aug 2026 18:58:21 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 10 Aug 2026 18:58:21 GMT
ARG REPO_CHANNEL=stable
# Mon, 10 Aug 2026 18:58:21 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 10 Aug 2026 18:58:21 GMT
ARG VERSION=26.3.17.110
# Mon, 10 Aug 2026 18:58:21 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 10 Aug 2026 18:58:47 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:58:47 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:58:48 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 10 Aug 2026 18:58:48 GMT
ENV LANG=en_US.UTF-8
# Mon, 10 Aug 2026 18:58:48 GMT
ENV TZ=UTC
# Mon, 10 Aug 2026 18:58:48 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 10 Aug 2026 18:58:48 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 10 Aug 2026 18:58:48 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 10 Aug 2026 18:58:48 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 10 Aug 2026 18:58:48 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 10 Aug 2026 18:58:48 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 10 Aug 2026 18:58:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e737c5ed04040f2f0a2a5834e272c5fa0ab6a31a0641be05eb1669153c7c4cfc`  
		Last Modified: Fri, 31 Jul 2026 22:53:57 GMT  
		Size: 27.6 MB (27620032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25a578de3647fa22f1be53385642f776bf3465d098e3615e9ed2f8dfba675409`  
		Last Modified: Mon, 10 Aug 2026 18:59:10 GMT  
		Size: 7.5 MB (7533567 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b77e1cf2c99d15296d0b4005b60b6a993ed57b11a509567bf2334faa8a5b48b`  
		Last Modified: Mon, 10 Aug 2026 18:59:15 GMT  
		Size: 210.8 MB (210788324 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bab3086c31158e3e74469fef21de562c9e5c2cc2d4d03ec8f392dcb3f52b7add`  
		Last Modified: Mon, 10 Aug 2026 18:59:10 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:702d21e9ddc4f6a7835e375c5cb8a714b852a5d72354e305723c5e93db33c42b`  
		Last Modified: Mon, 10 Aug 2026 18:59:10 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d853b7355ff18c839b1c00bff70a20a160195c26eb91adedef9349c07639fd3d`  
		Last Modified: Mon, 10 Aug 2026 18:59:11 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4f53b6fbd061bb49b4abf406bf9521bfc4ef236fea562cd5c8cbd9d88f2e13c`  
		Last Modified: Mon, 10 Aug 2026 18:59:12 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a0a49deb14f156e4b8fea054c15ff728ec3b8681fffd855fc7f99f28cc78372`  
		Last Modified: Mon, 10 Aug 2026 18:59:12 GMT  
		Size: 3.6 KB (3636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3` - unknown; unknown

```console
$ docker pull clickhouse@sha256:4f930b70eef60c6c520bb11de8f50713b16163662c298cbe52147e7d9a97a801
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.1 KB (27070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27e20956317127add80f433b19d53f8d52f8ed8e6e2c89c47f822f2daac343fc`

```dockerfile
```

-	Layers:
	-	`sha256:1f090bb2a918f145fa2123afc788202733b8d23d525aca6564c730618e6ec279`  
		Last Modified: Mon, 10 Aug 2026 18:59:10 GMT  
		Size: 27.1 KB (27070 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.3-jammy`

```console
$ docker pull clickhouse@sha256:3b6f16f1729ce677c73d3dc0d5a419c7997114fe57d49b5f06a4782fe75e024c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.3-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:29c2a8698ac0dc1945312f379b927033d5a6531a5cb9bc96e458cc9ba90805f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.5 MB (265492524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a79859005dc77d2d21e6eee0348aa9c929cd7bf5b8d2630482138b8a0553eff`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 31 Jul 2026 21:53:09 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:53:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:53:09 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:53:11 GMT
ADD file:4501ff54ffd37d854b1cfbcd2e37da58bf8a49da3a6a82232d03e7556d337a92 in / 
# Fri, 31 Jul 2026 21:53:12 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 18:58:20 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 10 Aug 2026 18:58:20 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 10 Aug 2026 18:58:20 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 10 Aug 2026 18:58:20 GMT
ARG REPO_CHANNEL=stable
# Mon, 10 Aug 2026 18:58:20 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 10 Aug 2026 18:58:20 GMT
ARG VERSION=26.3.17.110
# Mon, 10 Aug 2026 18:58:20 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 10 Aug 2026 18:58:49 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:58:49 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:58:50 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 10 Aug 2026 18:58:50 GMT
ENV LANG=en_US.UTF-8
# Mon, 10 Aug 2026 18:58:50 GMT
ENV TZ=UTC
# Mon, 10 Aug 2026 18:58:50 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 10 Aug 2026 18:58:50 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 10 Aug 2026 18:58:50 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 10 Aug 2026 18:58:50 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 10 Aug 2026 18:58:50 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 10 Aug 2026 18:58:50 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 10 Aug 2026 18:58:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:39a945af8df2ad9343f141c82355d3f2c4b576d432eda34c460d630607462b60`  
		Last Modified: Fri, 31 Jul 2026 22:53:51 GMT  
		Size: 29.7 MB (29736517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bbac3485c9aba166d5f40c2869886ca5b33335d0fe791343f2f99618c83abf7`  
		Last Modified: Mon, 10 Aug 2026 18:59:13 GMT  
		Size: 7.6 MB (7553458 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68fd210b381dada86d29d1f34dd31271ac08f184bf9041007d237d95692b630b`  
		Last Modified: Mon, 10 Aug 2026 18:59:17 GMT  
		Size: 227.3 MB (227332497 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee6bc6b83f4298352003bf41d6d678826ed1e91de33c00a43fe4f7017fe94dd7`  
		Last Modified: Mon, 10 Aug 2026 18:59:13 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01704565e1a1f809fc2ac2e9b31f2fe810d42c7ec37761a70d3683483c41cb32`  
		Last Modified: Mon, 10 Aug 2026 18:59:13 GMT  
		Size: 865.8 KB (865752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6baf9b9a2b0544c2f044ffccdcc8cb1f1b680c8e12d2d074ef1a72ddff4b40ea`  
		Last Modified: Mon, 10 Aug 2026 18:59:14 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64a92e2eda63a42a28d4b507ec39a07de1b9fe3e4d49b0eb35c6fc00ba03bf8d`  
		Last Modified: Mon, 10 Aug 2026 18:59:14 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efceb8acabfe1bbeb588a5969484329aab8db49cc2d00c1b552c32443a3a0cf8`  
		Last Modified: Mon, 10 Aug 2026 18:59:14 GMT  
		Size: 3.6 KB (3636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:4e93fe44de3d3a7fe5f434614f2f12c27782d122f7450464d8fe791190230ca7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.9 KB (26857 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b390610c53802a7d1022091fcabe525a1de40c4da5be8707642cc448ff623a6`

```dockerfile
```

-	Layers:
	-	`sha256:640c9e89b4eaf44dacfb8fe43cd73fa3eec243781955392fb4266080da61328d`  
		Last Modified: Mon, 10 Aug 2026 18:59:13 GMT  
		Size: 26.9 KB (26857 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.3-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:f094ee4671e71da919ead1f341fda755acb0a5b8869026ef8bfd7880c5985217
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.8 MB (246811971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55724afb916dbe77118bfef503b7de4c542370012b4c335d6f38002c0ca40767`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 31 Jul 2026 21:58:10 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:58:10 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:58:10 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:58:12 GMT
ADD file:66c837214dd75fd34fbf726aabdc4c4a739297d5d853247e4c885c4bce5b7f6a in / 
# Fri, 31 Jul 2026 21:58:12 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 18:58:21 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 10 Aug 2026 18:58:21 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 10 Aug 2026 18:58:21 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 10 Aug 2026 18:58:21 GMT
ARG REPO_CHANNEL=stable
# Mon, 10 Aug 2026 18:58:21 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 10 Aug 2026 18:58:21 GMT
ARG VERSION=26.3.17.110
# Mon, 10 Aug 2026 18:58:21 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 10 Aug 2026 18:58:47 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:58:47 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:58:48 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 10 Aug 2026 18:58:48 GMT
ENV LANG=en_US.UTF-8
# Mon, 10 Aug 2026 18:58:48 GMT
ENV TZ=UTC
# Mon, 10 Aug 2026 18:58:48 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 10 Aug 2026 18:58:48 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 10 Aug 2026 18:58:48 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 10 Aug 2026 18:58:48 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 10 Aug 2026 18:58:48 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 10 Aug 2026 18:58:48 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 10 Aug 2026 18:58:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e737c5ed04040f2f0a2a5834e272c5fa0ab6a31a0641be05eb1669153c7c4cfc`  
		Last Modified: Fri, 31 Jul 2026 22:53:57 GMT  
		Size: 27.6 MB (27620032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25a578de3647fa22f1be53385642f776bf3465d098e3615e9ed2f8dfba675409`  
		Last Modified: Mon, 10 Aug 2026 18:59:10 GMT  
		Size: 7.5 MB (7533567 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b77e1cf2c99d15296d0b4005b60b6a993ed57b11a509567bf2334faa8a5b48b`  
		Last Modified: Mon, 10 Aug 2026 18:59:15 GMT  
		Size: 210.8 MB (210788324 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bab3086c31158e3e74469fef21de562c9e5c2cc2d4d03ec8f392dcb3f52b7add`  
		Last Modified: Mon, 10 Aug 2026 18:59:10 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:702d21e9ddc4f6a7835e375c5cb8a714b852a5d72354e305723c5e93db33c42b`  
		Last Modified: Mon, 10 Aug 2026 18:59:10 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d853b7355ff18c839b1c00bff70a20a160195c26eb91adedef9349c07639fd3d`  
		Last Modified: Mon, 10 Aug 2026 18:59:11 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4f53b6fbd061bb49b4abf406bf9521bfc4ef236fea562cd5c8cbd9d88f2e13c`  
		Last Modified: Mon, 10 Aug 2026 18:59:12 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a0a49deb14f156e4b8fea054c15ff728ec3b8681fffd855fc7f99f28cc78372`  
		Last Modified: Mon, 10 Aug 2026 18:59:12 GMT  
		Size: 3.6 KB (3636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:4f930b70eef60c6c520bb11de8f50713b16163662c298cbe52147e7d9a97a801
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.1 KB (27070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27e20956317127add80f433b19d53f8d52f8ed8e6e2c89c47f822f2daac343fc`

```dockerfile
```

-	Layers:
	-	`sha256:1f090bb2a918f145fa2123afc788202733b8d23d525aca6564c730618e6ec279`  
		Last Modified: Mon, 10 Aug 2026 18:59:10 GMT  
		Size: 27.1 KB (27070 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.3.17`

```console
$ docker pull clickhouse@sha256:3b6f16f1729ce677c73d3dc0d5a419c7997114fe57d49b5f06a4782fe75e024c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.3.17` - linux; amd64

```console
$ docker pull clickhouse@sha256:29c2a8698ac0dc1945312f379b927033d5a6531a5cb9bc96e458cc9ba90805f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.5 MB (265492524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a79859005dc77d2d21e6eee0348aa9c929cd7bf5b8d2630482138b8a0553eff`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 31 Jul 2026 21:53:09 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:53:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:53:09 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:53:11 GMT
ADD file:4501ff54ffd37d854b1cfbcd2e37da58bf8a49da3a6a82232d03e7556d337a92 in / 
# Fri, 31 Jul 2026 21:53:12 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 18:58:20 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 10 Aug 2026 18:58:20 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 10 Aug 2026 18:58:20 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 10 Aug 2026 18:58:20 GMT
ARG REPO_CHANNEL=stable
# Mon, 10 Aug 2026 18:58:20 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 10 Aug 2026 18:58:20 GMT
ARG VERSION=26.3.17.110
# Mon, 10 Aug 2026 18:58:20 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 10 Aug 2026 18:58:49 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:58:49 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:58:50 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 10 Aug 2026 18:58:50 GMT
ENV LANG=en_US.UTF-8
# Mon, 10 Aug 2026 18:58:50 GMT
ENV TZ=UTC
# Mon, 10 Aug 2026 18:58:50 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 10 Aug 2026 18:58:50 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 10 Aug 2026 18:58:50 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 10 Aug 2026 18:58:50 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 10 Aug 2026 18:58:50 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 10 Aug 2026 18:58:50 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 10 Aug 2026 18:58:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:39a945af8df2ad9343f141c82355d3f2c4b576d432eda34c460d630607462b60`  
		Last Modified: Fri, 31 Jul 2026 22:53:51 GMT  
		Size: 29.7 MB (29736517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bbac3485c9aba166d5f40c2869886ca5b33335d0fe791343f2f99618c83abf7`  
		Last Modified: Mon, 10 Aug 2026 18:59:13 GMT  
		Size: 7.6 MB (7553458 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68fd210b381dada86d29d1f34dd31271ac08f184bf9041007d237d95692b630b`  
		Last Modified: Mon, 10 Aug 2026 18:59:17 GMT  
		Size: 227.3 MB (227332497 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee6bc6b83f4298352003bf41d6d678826ed1e91de33c00a43fe4f7017fe94dd7`  
		Last Modified: Mon, 10 Aug 2026 18:59:13 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01704565e1a1f809fc2ac2e9b31f2fe810d42c7ec37761a70d3683483c41cb32`  
		Last Modified: Mon, 10 Aug 2026 18:59:13 GMT  
		Size: 865.8 KB (865752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6baf9b9a2b0544c2f044ffccdcc8cb1f1b680c8e12d2d074ef1a72ddff4b40ea`  
		Last Modified: Mon, 10 Aug 2026 18:59:14 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64a92e2eda63a42a28d4b507ec39a07de1b9fe3e4d49b0eb35c6fc00ba03bf8d`  
		Last Modified: Mon, 10 Aug 2026 18:59:14 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efceb8acabfe1bbeb588a5969484329aab8db49cc2d00c1b552c32443a3a0cf8`  
		Last Modified: Mon, 10 Aug 2026 18:59:14 GMT  
		Size: 3.6 KB (3636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.17` - unknown; unknown

```console
$ docker pull clickhouse@sha256:4e93fe44de3d3a7fe5f434614f2f12c27782d122f7450464d8fe791190230ca7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.9 KB (26857 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b390610c53802a7d1022091fcabe525a1de40c4da5be8707642cc448ff623a6`

```dockerfile
```

-	Layers:
	-	`sha256:640c9e89b4eaf44dacfb8fe43cd73fa3eec243781955392fb4266080da61328d`  
		Last Modified: Mon, 10 Aug 2026 18:59:13 GMT  
		Size: 26.9 KB (26857 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.3.17` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:f094ee4671e71da919ead1f341fda755acb0a5b8869026ef8bfd7880c5985217
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.8 MB (246811971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55724afb916dbe77118bfef503b7de4c542370012b4c335d6f38002c0ca40767`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 31 Jul 2026 21:58:10 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:58:10 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:58:10 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:58:12 GMT
ADD file:66c837214dd75fd34fbf726aabdc4c4a739297d5d853247e4c885c4bce5b7f6a in / 
# Fri, 31 Jul 2026 21:58:12 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 18:58:21 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 10 Aug 2026 18:58:21 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 10 Aug 2026 18:58:21 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 10 Aug 2026 18:58:21 GMT
ARG REPO_CHANNEL=stable
# Mon, 10 Aug 2026 18:58:21 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 10 Aug 2026 18:58:21 GMT
ARG VERSION=26.3.17.110
# Mon, 10 Aug 2026 18:58:21 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 10 Aug 2026 18:58:47 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:58:47 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:58:48 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 10 Aug 2026 18:58:48 GMT
ENV LANG=en_US.UTF-8
# Mon, 10 Aug 2026 18:58:48 GMT
ENV TZ=UTC
# Mon, 10 Aug 2026 18:58:48 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 10 Aug 2026 18:58:48 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 10 Aug 2026 18:58:48 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 10 Aug 2026 18:58:48 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 10 Aug 2026 18:58:48 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 10 Aug 2026 18:58:48 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 10 Aug 2026 18:58:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e737c5ed04040f2f0a2a5834e272c5fa0ab6a31a0641be05eb1669153c7c4cfc`  
		Last Modified: Fri, 31 Jul 2026 22:53:57 GMT  
		Size: 27.6 MB (27620032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25a578de3647fa22f1be53385642f776bf3465d098e3615e9ed2f8dfba675409`  
		Last Modified: Mon, 10 Aug 2026 18:59:10 GMT  
		Size: 7.5 MB (7533567 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b77e1cf2c99d15296d0b4005b60b6a993ed57b11a509567bf2334faa8a5b48b`  
		Last Modified: Mon, 10 Aug 2026 18:59:15 GMT  
		Size: 210.8 MB (210788324 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bab3086c31158e3e74469fef21de562c9e5c2cc2d4d03ec8f392dcb3f52b7add`  
		Last Modified: Mon, 10 Aug 2026 18:59:10 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:702d21e9ddc4f6a7835e375c5cb8a714b852a5d72354e305723c5e93db33c42b`  
		Last Modified: Mon, 10 Aug 2026 18:59:10 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d853b7355ff18c839b1c00bff70a20a160195c26eb91adedef9349c07639fd3d`  
		Last Modified: Mon, 10 Aug 2026 18:59:11 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4f53b6fbd061bb49b4abf406bf9521bfc4ef236fea562cd5c8cbd9d88f2e13c`  
		Last Modified: Mon, 10 Aug 2026 18:59:12 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a0a49deb14f156e4b8fea054c15ff728ec3b8681fffd855fc7f99f28cc78372`  
		Last Modified: Mon, 10 Aug 2026 18:59:12 GMT  
		Size: 3.6 KB (3636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.17` - unknown; unknown

```console
$ docker pull clickhouse@sha256:4f930b70eef60c6c520bb11de8f50713b16163662c298cbe52147e7d9a97a801
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.1 KB (27070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27e20956317127add80f433b19d53f8d52f8ed8e6e2c89c47f822f2daac343fc`

```dockerfile
```

-	Layers:
	-	`sha256:1f090bb2a918f145fa2123afc788202733b8d23d525aca6564c730618e6ec279`  
		Last Modified: Mon, 10 Aug 2026 18:59:10 GMT  
		Size: 27.1 KB (27070 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.3.17-jammy`

```console
$ docker pull clickhouse@sha256:3b6f16f1729ce677c73d3dc0d5a419c7997114fe57d49b5f06a4782fe75e024c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.3.17-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:29c2a8698ac0dc1945312f379b927033d5a6531a5cb9bc96e458cc9ba90805f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.5 MB (265492524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a79859005dc77d2d21e6eee0348aa9c929cd7bf5b8d2630482138b8a0553eff`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 31 Jul 2026 21:53:09 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:53:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:53:09 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:53:11 GMT
ADD file:4501ff54ffd37d854b1cfbcd2e37da58bf8a49da3a6a82232d03e7556d337a92 in / 
# Fri, 31 Jul 2026 21:53:12 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 18:58:20 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 10 Aug 2026 18:58:20 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 10 Aug 2026 18:58:20 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 10 Aug 2026 18:58:20 GMT
ARG REPO_CHANNEL=stable
# Mon, 10 Aug 2026 18:58:20 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 10 Aug 2026 18:58:20 GMT
ARG VERSION=26.3.17.110
# Mon, 10 Aug 2026 18:58:20 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 10 Aug 2026 18:58:49 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:58:49 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:58:50 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 10 Aug 2026 18:58:50 GMT
ENV LANG=en_US.UTF-8
# Mon, 10 Aug 2026 18:58:50 GMT
ENV TZ=UTC
# Mon, 10 Aug 2026 18:58:50 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 10 Aug 2026 18:58:50 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 10 Aug 2026 18:58:50 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 10 Aug 2026 18:58:50 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 10 Aug 2026 18:58:50 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 10 Aug 2026 18:58:50 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 10 Aug 2026 18:58:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:39a945af8df2ad9343f141c82355d3f2c4b576d432eda34c460d630607462b60`  
		Last Modified: Fri, 31 Jul 2026 22:53:51 GMT  
		Size: 29.7 MB (29736517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bbac3485c9aba166d5f40c2869886ca5b33335d0fe791343f2f99618c83abf7`  
		Last Modified: Mon, 10 Aug 2026 18:59:13 GMT  
		Size: 7.6 MB (7553458 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68fd210b381dada86d29d1f34dd31271ac08f184bf9041007d237d95692b630b`  
		Last Modified: Mon, 10 Aug 2026 18:59:17 GMT  
		Size: 227.3 MB (227332497 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee6bc6b83f4298352003bf41d6d678826ed1e91de33c00a43fe4f7017fe94dd7`  
		Last Modified: Mon, 10 Aug 2026 18:59:13 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01704565e1a1f809fc2ac2e9b31f2fe810d42c7ec37761a70d3683483c41cb32`  
		Last Modified: Mon, 10 Aug 2026 18:59:13 GMT  
		Size: 865.8 KB (865752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6baf9b9a2b0544c2f044ffccdcc8cb1f1b680c8e12d2d074ef1a72ddff4b40ea`  
		Last Modified: Mon, 10 Aug 2026 18:59:14 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64a92e2eda63a42a28d4b507ec39a07de1b9fe3e4d49b0eb35c6fc00ba03bf8d`  
		Last Modified: Mon, 10 Aug 2026 18:59:14 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efceb8acabfe1bbeb588a5969484329aab8db49cc2d00c1b552c32443a3a0cf8`  
		Last Modified: Mon, 10 Aug 2026 18:59:14 GMT  
		Size: 3.6 KB (3636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.17-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:4e93fe44de3d3a7fe5f434614f2f12c27782d122f7450464d8fe791190230ca7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.9 KB (26857 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b390610c53802a7d1022091fcabe525a1de40c4da5be8707642cc448ff623a6`

```dockerfile
```

-	Layers:
	-	`sha256:640c9e89b4eaf44dacfb8fe43cd73fa3eec243781955392fb4266080da61328d`  
		Last Modified: Mon, 10 Aug 2026 18:59:13 GMT  
		Size: 26.9 KB (26857 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.3.17-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:f094ee4671e71da919ead1f341fda755acb0a5b8869026ef8bfd7880c5985217
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.8 MB (246811971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55724afb916dbe77118bfef503b7de4c542370012b4c335d6f38002c0ca40767`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 31 Jul 2026 21:58:10 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:58:10 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:58:10 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:58:12 GMT
ADD file:66c837214dd75fd34fbf726aabdc4c4a739297d5d853247e4c885c4bce5b7f6a in / 
# Fri, 31 Jul 2026 21:58:12 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 18:58:21 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 10 Aug 2026 18:58:21 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 10 Aug 2026 18:58:21 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 10 Aug 2026 18:58:21 GMT
ARG REPO_CHANNEL=stable
# Mon, 10 Aug 2026 18:58:21 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 10 Aug 2026 18:58:21 GMT
ARG VERSION=26.3.17.110
# Mon, 10 Aug 2026 18:58:21 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 10 Aug 2026 18:58:47 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:58:47 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:58:48 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 10 Aug 2026 18:58:48 GMT
ENV LANG=en_US.UTF-8
# Mon, 10 Aug 2026 18:58:48 GMT
ENV TZ=UTC
# Mon, 10 Aug 2026 18:58:48 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 10 Aug 2026 18:58:48 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 10 Aug 2026 18:58:48 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 10 Aug 2026 18:58:48 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 10 Aug 2026 18:58:48 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 10 Aug 2026 18:58:48 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 10 Aug 2026 18:58:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e737c5ed04040f2f0a2a5834e272c5fa0ab6a31a0641be05eb1669153c7c4cfc`  
		Last Modified: Fri, 31 Jul 2026 22:53:57 GMT  
		Size: 27.6 MB (27620032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25a578de3647fa22f1be53385642f776bf3465d098e3615e9ed2f8dfba675409`  
		Last Modified: Mon, 10 Aug 2026 18:59:10 GMT  
		Size: 7.5 MB (7533567 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b77e1cf2c99d15296d0b4005b60b6a993ed57b11a509567bf2334faa8a5b48b`  
		Last Modified: Mon, 10 Aug 2026 18:59:15 GMT  
		Size: 210.8 MB (210788324 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bab3086c31158e3e74469fef21de562c9e5c2cc2d4d03ec8f392dcb3f52b7add`  
		Last Modified: Mon, 10 Aug 2026 18:59:10 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:702d21e9ddc4f6a7835e375c5cb8a714b852a5d72354e305723c5e93db33c42b`  
		Last Modified: Mon, 10 Aug 2026 18:59:10 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d853b7355ff18c839b1c00bff70a20a160195c26eb91adedef9349c07639fd3d`  
		Last Modified: Mon, 10 Aug 2026 18:59:11 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4f53b6fbd061bb49b4abf406bf9521bfc4ef236fea562cd5c8cbd9d88f2e13c`  
		Last Modified: Mon, 10 Aug 2026 18:59:12 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a0a49deb14f156e4b8fea054c15ff728ec3b8681fffd855fc7f99f28cc78372`  
		Last Modified: Mon, 10 Aug 2026 18:59:12 GMT  
		Size: 3.6 KB (3636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.17-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:4f930b70eef60c6c520bb11de8f50713b16163662c298cbe52147e7d9a97a801
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.1 KB (27070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27e20956317127add80f433b19d53f8d52f8ed8e6e2c89c47f822f2daac343fc`

```dockerfile
```

-	Layers:
	-	`sha256:1f090bb2a918f145fa2123afc788202733b8d23d525aca6564c730618e6ec279`  
		Last Modified: Mon, 10 Aug 2026 18:59:10 GMT  
		Size: 27.1 KB (27070 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.3.17.110`

```console
$ docker pull clickhouse@sha256:3b6f16f1729ce677c73d3dc0d5a419c7997114fe57d49b5f06a4782fe75e024c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.3.17.110` - linux; amd64

```console
$ docker pull clickhouse@sha256:29c2a8698ac0dc1945312f379b927033d5a6531a5cb9bc96e458cc9ba90805f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.5 MB (265492524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a79859005dc77d2d21e6eee0348aa9c929cd7bf5b8d2630482138b8a0553eff`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 31 Jul 2026 21:53:09 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:53:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:53:09 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:53:11 GMT
ADD file:4501ff54ffd37d854b1cfbcd2e37da58bf8a49da3a6a82232d03e7556d337a92 in / 
# Fri, 31 Jul 2026 21:53:12 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 18:58:20 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 10 Aug 2026 18:58:20 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 10 Aug 2026 18:58:20 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 10 Aug 2026 18:58:20 GMT
ARG REPO_CHANNEL=stable
# Mon, 10 Aug 2026 18:58:20 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 10 Aug 2026 18:58:20 GMT
ARG VERSION=26.3.17.110
# Mon, 10 Aug 2026 18:58:20 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 10 Aug 2026 18:58:49 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:58:49 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:58:50 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 10 Aug 2026 18:58:50 GMT
ENV LANG=en_US.UTF-8
# Mon, 10 Aug 2026 18:58:50 GMT
ENV TZ=UTC
# Mon, 10 Aug 2026 18:58:50 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 10 Aug 2026 18:58:50 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 10 Aug 2026 18:58:50 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 10 Aug 2026 18:58:50 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 10 Aug 2026 18:58:50 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 10 Aug 2026 18:58:50 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 10 Aug 2026 18:58:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:39a945af8df2ad9343f141c82355d3f2c4b576d432eda34c460d630607462b60`  
		Last Modified: Fri, 31 Jul 2026 22:53:51 GMT  
		Size: 29.7 MB (29736517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bbac3485c9aba166d5f40c2869886ca5b33335d0fe791343f2f99618c83abf7`  
		Last Modified: Mon, 10 Aug 2026 18:59:13 GMT  
		Size: 7.6 MB (7553458 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68fd210b381dada86d29d1f34dd31271ac08f184bf9041007d237d95692b630b`  
		Last Modified: Mon, 10 Aug 2026 18:59:17 GMT  
		Size: 227.3 MB (227332497 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee6bc6b83f4298352003bf41d6d678826ed1e91de33c00a43fe4f7017fe94dd7`  
		Last Modified: Mon, 10 Aug 2026 18:59:13 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01704565e1a1f809fc2ac2e9b31f2fe810d42c7ec37761a70d3683483c41cb32`  
		Last Modified: Mon, 10 Aug 2026 18:59:13 GMT  
		Size: 865.8 KB (865752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6baf9b9a2b0544c2f044ffccdcc8cb1f1b680c8e12d2d074ef1a72ddff4b40ea`  
		Last Modified: Mon, 10 Aug 2026 18:59:14 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64a92e2eda63a42a28d4b507ec39a07de1b9fe3e4d49b0eb35c6fc00ba03bf8d`  
		Last Modified: Mon, 10 Aug 2026 18:59:14 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efceb8acabfe1bbeb588a5969484329aab8db49cc2d00c1b552c32443a3a0cf8`  
		Last Modified: Mon, 10 Aug 2026 18:59:14 GMT  
		Size: 3.6 KB (3636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.17.110` - unknown; unknown

```console
$ docker pull clickhouse@sha256:4e93fe44de3d3a7fe5f434614f2f12c27782d122f7450464d8fe791190230ca7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.9 KB (26857 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b390610c53802a7d1022091fcabe525a1de40c4da5be8707642cc448ff623a6`

```dockerfile
```

-	Layers:
	-	`sha256:640c9e89b4eaf44dacfb8fe43cd73fa3eec243781955392fb4266080da61328d`  
		Last Modified: Mon, 10 Aug 2026 18:59:13 GMT  
		Size: 26.9 KB (26857 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.3.17.110` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:f094ee4671e71da919ead1f341fda755acb0a5b8869026ef8bfd7880c5985217
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.8 MB (246811971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55724afb916dbe77118bfef503b7de4c542370012b4c335d6f38002c0ca40767`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 31 Jul 2026 21:58:10 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:58:10 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:58:10 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:58:12 GMT
ADD file:66c837214dd75fd34fbf726aabdc4c4a739297d5d853247e4c885c4bce5b7f6a in / 
# Fri, 31 Jul 2026 21:58:12 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 18:58:21 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 10 Aug 2026 18:58:21 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 10 Aug 2026 18:58:21 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 10 Aug 2026 18:58:21 GMT
ARG REPO_CHANNEL=stable
# Mon, 10 Aug 2026 18:58:21 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 10 Aug 2026 18:58:21 GMT
ARG VERSION=26.3.17.110
# Mon, 10 Aug 2026 18:58:21 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 10 Aug 2026 18:58:47 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:58:47 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:58:48 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 10 Aug 2026 18:58:48 GMT
ENV LANG=en_US.UTF-8
# Mon, 10 Aug 2026 18:58:48 GMT
ENV TZ=UTC
# Mon, 10 Aug 2026 18:58:48 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 10 Aug 2026 18:58:48 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 10 Aug 2026 18:58:48 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 10 Aug 2026 18:58:48 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 10 Aug 2026 18:58:48 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 10 Aug 2026 18:58:48 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 10 Aug 2026 18:58:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e737c5ed04040f2f0a2a5834e272c5fa0ab6a31a0641be05eb1669153c7c4cfc`  
		Last Modified: Fri, 31 Jul 2026 22:53:57 GMT  
		Size: 27.6 MB (27620032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25a578de3647fa22f1be53385642f776bf3465d098e3615e9ed2f8dfba675409`  
		Last Modified: Mon, 10 Aug 2026 18:59:10 GMT  
		Size: 7.5 MB (7533567 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b77e1cf2c99d15296d0b4005b60b6a993ed57b11a509567bf2334faa8a5b48b`  
		Last Modified: Mon, 10 Aug 2026 18:59:15 GMT  
		Size: 210.8 MB (210788324 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bab3086c31158e3e74469fef21de562c9e5c2cc2d4d03ec8f392dcb3f52b7add`  
		Last Modified: Mon, 10 Aug 2026 18:59:10 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:702d21e9ddc4f6a7835e375c5cb8a714b852a5d72354e305723c5e93db33c42b`  
		Last Modified: Mon, 10 Aug 2026 18:59:10 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d853b7355ff18c839b1c00bff70a20a160195c26eb91adedef9349c07639fd3d`  
		Last Modified: Mon, 10 Aug 2026 18:59:11 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4f53b6fbd061bb49b4abf406bf9521bfc4ef236fea562cd5c8cbd9d88f2e13c`  
		Last Modified: Mon, 10 Aug 2026 18:59:12 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a0a49deb14f156e4b8fea054c15ff728ec3b8681fffd855fc7f99f28cc78372`  
		Last Modified: Mon, 10 Aug 2026 18:59:12 GMT  
		Size: 3.6 KB (3636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.17.110` - unknown; unknown

```console
$ docker pull clickhouse@sha256:4f930b70eef60c6c520bb11de8f50713b16163662c298cbe52147e7d9a97a801
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.1 KB (27070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27e20956317127add80f433b19d53f8d52f8ed8e6e2c89c47f822f2daac343fc`

```dockerfile
```

-	Layers:
	-	`sha256:1f090bb2a918f145fa2123afc788202733b8d23d525aca6564c730618e6ec279`  
		Last Modified: Mon, 10 Aug 2026 18:59:10 GMT  
		Size: 27.1 KB (27070 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.3.17.110-jammy`

```console
$ docker pull clickhouse@sha256:3b6f16f1729ce677c73d3dc0d5a419c7997114fe57d49b5f06a4782fe75e024c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.3.17.110-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:29c2a8698ac0dc1945312f379b927033d5a6531a5cb9bc96e458cc9ba90805f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.5 MB (265492524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a79859005dc77d2d21e6eee0348aa9c929cd7bf5b8d2630482138b8a0553eff`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 31 Jul 2026 21:53:09 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:53:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:53:09 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:53:11 GMT
ADD file:4501ff54ffd37d854b1cfbcd2e37da58bf8a49da3a6a82232d03e7556d337a92 in / 
# Fri, 31 Jul 2026 21:53:12 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 18:58:20 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 10 Aug 2026 18:58:20 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 10 Aug 2026 18:58:20 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 10 Aug 2026 18:58:20 GMT
ARG REPO_CHANNEL=stable
# Mon, 10 Aug 2026 18:58:20 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 10 Aug 2026 18:58:20 GMT
ARG VERSION=26.3.17.110
# Mon, 10 Aug 2026 18:58:20 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 10 Aug 2026 18:58:49 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:58:49 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:58:50 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 10 Aug 2026 18:58:50 GMT
ENV LANG=en_US.UTF-8
# Mon, 10 Aug 2026 18:58:50 GMT
ENV TZ=UTC
# Mon, 10 Aug 2026 18:58:50 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 10 Aug 2026 18:58:50 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 10 Aug 2026 18:58:50 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 10 Aug 2026 18:58:50 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 10 Aug 2026 18:58:50 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 10 Aug 2026 18:58:50 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 10 Aug 2026 18:58:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:39a945af8df2ad9343f141c82355d3f2c4b576d432eda34c460d630607462b60`  
		Last Modified: Fri, 31 Jul 2026 22:53:51 GMT  
		Size: 29.7 MB (29736517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bbac3485c9aba166d5f40c2869886ca5b33335d0fe791343f2f99618c83abf7`  
		Last Modified: Mon, 10 Aug 2026 18:59:13 GMT  
		Size: 7.6 MB (7553458 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68fd210b381dada86d29d1f34dd31271ac08f184bf9041007d237d95692b630b`  
		Last Modified: Mon, 10 Aug 2026 18:59:17 GMT  
		Size: 227.3 MB (227332497 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee6bc6b83f4298352003bf41d6d678826ed1e91de33c00a43fe4f7017fe94dd7`  
		Last Modified: Mon, 10 Aug 2026 18:59:13 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01704565e1a1f809fc2ac2e9b31f2fe810d42c7ec37761a70d3683483c41cb32`  
		Last Modified: Mon, 10 Aug 2026 18:59:13 GMT  
		Size: 865.8 KB (865752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6baf9b9a2b0544c2f044ffccdcc8cb1f1b680c8e12d2d074ef1a72ddff4b40ea`  
		Last Modified: Mon, 10 Aug 2026 18:59:14 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64a92e2eda63a42a28d4b507ec39a07de1b9fe3e4d49b0eb35c6fc00ba03bf8d`  
		Last Modified: Mon, 10 Aug 2026 18:59:14 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efceb8acabfe1bbeb588a5969484329aab8db49cc2d00c1b552c32443a3a0cf8`  
		Last Modified: Mon, 10 Aug 2026 18:59:14 GMT  
		Size: 3.6 KB (3636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.17.110-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:4e93fe44de3d3a7fe5f434614f2f12c27782d122f7450464d8fe791190230ca7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.9 KB (26857 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b390610c53802a7d1022091fcabe525a1de40c4da5be8707642cc448ff623a6`

```dockerfile
```

-	Layers:
	-	`sha256:640c9e89b4eaf44dacfb8fe43cd73fa3eec243781955392fb4266080da61328d`  
		Last Modified: Mon, 10 Aug 2026 18:59:13 GMT  
		Size: 26.9 KB (26857 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.3.17.110-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:f094ee4671e71da919ead1f341fda755acb0a5b8869026ef8bfd7880c5985217
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.8 MB (246811971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55724afb916dbe77118bfef503b7de4c542370012b4c335d6f38002c0ca40767`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 31 Jul 2026 21:58:10 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:58:10 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:58:10 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:58:12 GMT
ADD file:66c837214dd75fd34fbf726aabdc4c4a739297d5d853247e4c885c4bce5b7f6a in / 
# Fri, 31 Jul 2026 21:58:12 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 18:58:21 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 10 Aug 2026 18:58:21 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 10 Aug 2026 18:58:21 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 10 Aug 2026 18:58:21 GMT
ARG REPO_CHANNEL=stable
# Mon, 10 Aug 2026 18:58:21 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 10 Aug 2026 18:58:21 GMT
ARG VERSION=26.3.17.110
# Mon, 10 Aug 2026 18:58:21 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 10 Aug 2026 18:58:47 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:58:47 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:58:48 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 10 Aug 2026 18:58:48 GMT
ENV LANG=en_US.UTF-8
# Mon, 10 Aug 2026 18:58:48 GMT
ENV TZ=UTC
# Mon, 10 Aug 2026 18:58:48 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 10 Aug 2026 18:58:48 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 10 Aug 2026 18:58:48 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 10 Aug 2026 18:58:48 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 10 Aug 2026 18:58:48 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 10 Aug 2026 18:58:48 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 10 Aug 2026 18:58:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e737c5ed04040f2f0a2a5834e272c5fa0ab6a31a0641be05eb1669153c7c4cfc`  
		Last Modified: Fri, 31 Jul 2026 22:53:57 GMT  
		Size: 27.6 MB (27620032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25a578de3647fa22f1be53385642f776bf3465d098e3615e9ed2f8dfba675409`  
		Last Modified: Mon, 10 Aug 2026 18:59:10 GMT  
		Size: 7.5 MB (7533567 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b77e1cf2c99d15296d0b4005b60b6a993ed57b11a509567bf2334faa8a5b48b`  
		Last Modified: Mon, 10 Aug 2026 18:59:15 GMT  
		Size: 210.8 MB (210788324 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bab3086c31158e3e74469fef21de562c9e5c2cc2d4d03ec8f392dcb3f52b7add`  
		Last Modified: Mon, 10 Aug 2026 18:59:10 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:702d21e9ddc4f6a7835e375c5cb8a714b852a5d72354e305723c5e93db33c42b`  
		Last Modified: Mon, 10 Aug 2026 18:59:10 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d853b7355ff18c839b1c00bff70a20a160195c26eb91adedef9349c07639fd3d`  
		Last Modified: Mon, 10 Aug 2026 18:59:11 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4f53b6fbd061bb49b4abf406bf9521bfc4ef236fea562cd5c8cbd9d88f2e13c`  
		Last Modified: Mon, 10 Aug 2026 18:59:12 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a0a49deb14f156e4b8fea054c15ff728ec3b8681fffd855fc7f99f28cc78372`  
		Last Modified: Mon, 10 Aug 2026 18:59:12 GMT  
		Size: 3.6 KB (3636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.3.17.110-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:4f930b70eef60c6c520bb11de8f50713b16163662c298cbe52147e7d9a97a801
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.1 KB (27070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27e20956317127add80f433b19d53f8d52f8ed8e6e2c89c47f822f2daac343fc`

```dockerfile
```

-	Layers:
	-	`sha256:1f090bb2a918f145fa2123afc788202733b8d23d525aca6564c730618e6ec279`  
		Last Modified: Mon, 10 Aug 2026 18:59:10 GMT  
		Size: 27.1 KB (27070 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.5`

```console
$ docker pull clickhouse@sha256:18f0df6e75c9c3cdda9c3baeb3f5de15e6547ef76431db82bc721b717b9143aa
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.5` - linux; amd64

```console
$ docker pull clickhouse@sha256:cffc86acaad6c32dbbf9c21e6c04efeb452099464533c86ae3373ca7d111fb69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.6 MB (261609309 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6843af91a4343d949c429295de10a1fd67dd96d83b1649af1149f2fb8b3dfc6a`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 31 Jul 2026 21:53:09 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:53:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:53:09 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:53:11 GMT
ADD file:4501ff54ffd37d854b1cfbcd2e37da58bf8a49da3a6a82232d03e7556d337a92 in / 
# Fri, 31 Jul 2026 21:53:12 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 18:57:33 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 10 Aug 2026 18:57:33 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 10 Aug 2026 18:57:33 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 10 Aug 2026 18:57:33 GMT
ARG REPO_CHANNEL=stable
# Mon, 10 Aug 2026 18:57:33 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 10 Aug 2026 18:57:33 GMT
ARG VERSION=26.5.6.113
# Mon, 10 Aug 2026 18:57:33 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 10 Aug 2026 18:57:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.113 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:57:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.113 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:57:58 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.113 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 10 Aug 2026 18:57:58 GMT
ENV LANG=en_US.UTF-8
# Mon, 10 Aug 2026 18:57:58 GMT
ENV TZ=UTC
# Mon, 10 Aug 2026 18:57:58 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.113 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 10 Aug 2026 18:57:58 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 10 Aug 2026 18:57:58 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 10 Aug 2026 18:57:58 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 10 Aug 2026 18:57:58 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 10 Aug 2026 18:57:58 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 10 Aug 2026 18:57:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:39a945af8df2ad9343f141c82355d3f2c4b576d432eda34c460d630607462b60`  
		Last Modified: Fri, 31 Jul 2026 22:53:51 GMT  
		Size: 29.7 MB (29736517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b76ba8d38508dc34638733a7ec016ae057f9d71c0d78b7d95933002e8dc25af`  
		Last Modified: Mon, 10 Aug 2026 18:58:21 GMT  
		Size: 7.6 MB (7553457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5774cdf88a34ea1988738ed78bd4ce8d007d4d6b1a16a88e5a75617a7ab02533`  
		Last Modified: Mon, 10 Aug 2026 18:58:25 GMT  
		Size: 223.4 MB (223449282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d633c09fbcdd7fcf2c8c25d2b509b65fac57241717d295453a506120d787279`  
		Last Modified: Mon, 10 Aug 2026 18:58:20 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91a559f0b1abcd77a6ac655f9d0feb14a161b553a5e7940117b1df9175275291`  
		Last Modified: Mon, 10 Aug 2026 18:58:20 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ae7769c57a5565965d0afd01304fedae649abd641a2d50a89c1287d13ec74bc`  
		Last Modified: Mon, 10 Aug 2026 18:58:22 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb9fba29e7960647432c23082c318156f54ccb39b8674035848b6902608bf195`  
		Last Modified: Mon, 10 Aug 2026 18:58:22 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8bca9d87680067ec30c98305397baadd20256508c4cb2e8f47889bf936a8357`  
		Last Modified: Mon, 10 Aug 2026 18:58:22 GMT  
		Size: 3.6 KB (3639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.5` - unknown; unknown

```console
$ docker pull clickhouse@sha256:1cbdf847f58cab2fbe264a6e25d717106b272e29532bd27155a47a63b957af30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a76fc19b838afce3a90f26d9693a215184b01736caaf8f1e122c1e9d917b415b`

```dockerfile
```

-	Layers:
	-	`sha256:368c9b6ee11a6b0c00a23f3ea360a05b5f013603eb4e86a81015eb18441cda40`  
		Last Modified: Mon, 10 Aug 2026 18:58:20 GMT  
		Size: 26.2 KB (26229 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.5` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:79266ae9d98214c4b422fbbbc3f113416c58088f301ecb4a55d5e5a53f5e96d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.3 MB (247267426 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c2dd93a380b62c3618235e038a1b61511aefc7fe047585b764cd0c2bb6933d7`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 31 Jul 2026 21:58:10 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:58:10 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:58:10 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:58:12 GMT
ADD file:66c837214dd75fd34fbf726aabdc4c4a739297d5d853247e4c885c4bce5b7f6a in / 
# Fri, 31 Jul 2026 21:58:12 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 18:57:24 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 10 Aug 2026 18:57:24 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 10 Aug 2026 18:57:24 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 10 Aug 2026 18:57:24 GMT
ARG REPO_CHANNEL=stable
# Mon, 10 Aug 2026 18:57:24 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 10 Aug 2026 18:57:24 GMT
ARG VERSION=26.5.6.113
# Mon, 10 Aug 2026 18:57:24 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 10 Aug 2026 18:57:55 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.113 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:57:55 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.113 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:57:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.113 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 10 Aug 2026 18:57:57 GMT
ENV LANG=en_US.UTF-8
# Mon, 10 Aug 2026 18:57:57 GMT
ENV TZ=UTC
# Mon, 10 Aug 2026 18:57:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.113 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 10 Aug 2026 18:57:57 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 10 Aug 2026 18:57:57 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 10 Aug 2026 18:57:57 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 10 Aug 2026 18:57:57 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 10 Aug 2026 18:57:57 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 10 Aug 2026 18:57:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e737c5ed04040f2f0a2a5834e272c5fa0ab6a31a0641be05eb1669153c7c4cfc`  
		Last Modified: Fri, 31 Jul 2026 22:53:57 GMT  
		Size: 27.6 MB (27620032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ae2ca465c6ab02be4276c8c2deea90a8f8dec93e316d20579cf87bf3d8d28ba`  
		Last Modified: Mon, 10 Aug 2026 18:58:19 GMT  
		Size: 7.5 MB (7533542 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dc9b4013c3ba692ae64df0fcb22e60c9af786c1b339207cda51a12bdd212632`  
		Last Modified: Mon, 10 Aug 2026 18:58:23 GMT  
		Size: 211.2 MB (211243800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0526f277364175dd7cec031670af66827a43429532adc867d877e4ee7a5ecfa0`  
		Last Modified: Mon, 10 Aug 2026 18:58:18 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a7c1587392c184375ae598124c34e7aeb2c245e67f0e9fd140c3bbb42c7cbc1`  
		Last Modified: Mon, 10 Aug 2026 18:58:19 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a5d8b0914cfdbabc85c5bb52c449269fb1840f2471ba82d8160a636120200a0`  
		Last Modified: Mon, 10 Aug 2026 18:58:20 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62d941aed4d35c055b51f247f618aacb9d33ba3513290458a6967ab67d8fbc95`  
		Last Modified: Mon, 10 Aug 2026 18:58:20 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18ba416b2ada1d45ee6103561ffd26982f44a0a6f177e12e43cdefe5ab4a0dcf`  
		Last Modified: Mon, 10 Aug 2026 18:58:20 GMT  
		Size: 3.6 KB (3639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.5` - unknown; unknown

```console
$ docker pull clickhouse@sha256:5aa9f11be964e630f7b03f640efb27f29930bf7f12584351eaf766c854027855
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26418 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68d58849df894d8fb674a458d568e2959137397a82647a9c5994cb2ef45655bf`

```dockerfile
```

-	Layers:
	-	`sha256:29427a67659fd553c963aa18ee06a0ae66083a795028f4e3808a2625644a42ce`  
		Last Modified: Mon, 10 Aug 2026 18:58:18 GMT  
		Size: 26.4 KB (26418 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.5-jammy`

```console
$ docker pull clickhouse@sha256:18f0df6e75c9c3cdda9c3baeb3f5de15e6547ef76431db82bc721b717b9143aa
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.5-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:cffc86acaad6c32dbbf9c21e6c04efeb452099464533c86ae3373ca7d111fb69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.6 MB (261609309 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6843af91a4343d949c429295de10a1fd67dd96d83b1649af1149f2fb8b3dfc6a`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 31 Jul 2026 21:53:09 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:53:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:53:09 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:53:11 GMT
ADD file:4501ff54ffd37d854b1cfbcd2e37da58bf8a49da3a6a82232d03e7556d337a92 in / 
# Fri, 31 Jul 2026 21:53:12 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 18:57:33 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 10 Aug 2026 18:57:33 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 10 Aug 2026 18:57:33 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 10 Aug 2026 18:57:33 GMT
ARG REPO_CHANNEL=stable
# Mon, 10 Aug 2026 18:57:33 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 10 Aug 2026 18:57:33 GMT
ARG VERSION=26.5.6.113
# Mon, 10 Aug 2026 18:57:33 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 10 Aug 2026 18:57:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.113 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:57:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.113 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:57:58 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.113 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 10 Aug 2026 18:57:58 GMT
ENV LANG=en_US.UTF-8
# Mon, 10 Aug 2026 18:57:58 GMT
ENV TZ=UTC
# Mon, 10 Aug 2026 18:57:58 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.113 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 10 Aug 2026 18:57:58 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 10 Aug 2026 18:57:58 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 10 Aug 2026 18:57:58 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 10 Aug 2026 18:57:58 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 10 Aug 2026 18:57:58 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 10 Aug 2026 18:57:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:39a945af8df2ad9343f141c82355d3f2c4b576d432eda34c460d630607462b60`  
		Last Modified: Fri, 31 Jul 2026 22:53:51 GMT  
		Size: 29.7 MB (29736517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b76ba8d38508dc34638733a7ec016ae057f9d71c0d78b7d95933002e8dc25af`  
		Last Modified: Mon, 10 Aug 2026 18:58:21 GMT  
		Size: 7.6 MB (7553457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5774cdf88a34ea1988738ed78bd4ce8d007d4d6b1a16a88e5a75617a7ab02533`  
		Last Modified: Mon, 10 Aug 2026 18:58:25 GMT  
		Size: 223.4 MB (223449282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d633c09fbcdd7fcf2c8c25d2b509b65fac57241717d295453a506120d787279`  
		Last Modified: Mon, 10 Aug 2026 18:58:20 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91a559f0b1abcd77a6ac655f9d0feb14a161b553a5e7940117b1df9175275291`  
		Last Modified: Mon, 10 Aug 2026 18:58:20 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ae7769c57a5565965d0afd01304fedae649abd641a2d50a89c1287d13ec74bc`  
		Last Modified: Mon, 10 Aug 2026 18:58:22 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb9fba29e7960647432c23082c318156f54ccb39b8674035848b6902608bf195`  
		Last Modified: Mon, 10 Aug 2026 18:58:22 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8bca9d87680067ec30c98305397baadd20256508c4cb2e8f47889bf936a8357`  
		Last Modified: Mon, 10 Aug 2026 18:58:22 GMT  
		Size: 3.6 KB (3639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.5-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:1cbdf847f58cab2fbe264a6e25d717106b272e29532bd27155a47a63b957af30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a76fc19b838afce3a90f26d9693a215184b01736caaf8f1e122c1e9d917b415b`

```dockerfile
```

-	Layers:
	-	`sha256:368c9b6ee11a6b0c00a23f3ea360a05b5f013603eb4e86a81015eb18441cda40`  
		Last Modified: Mon, 10 Aug 2026 18:58:20 GMT  
		Size: 26.2 KB (26229 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.5-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:79266ae9d98214c4b422fbbbc3f113416c58088f301ecb4a55d5e5a53f5e96d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.3 MB (247267426 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c2dd93a380b62c3618235e038a1b61511aefc7fe047585b764cd0c2bb6933d7`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 31 Jul 2026 21:58:10 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:58:10 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:58:10 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:58:12 GMT
ADD file:66c837214dd75fd34fbf726aabdc4c4a739297d5d853247e4c885c4bce5b7f6a in / 
# Fri, 31 Jul 2026 21:58:12 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 18:57:24 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 10 Aug 2026 18:57:24 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 10 Aug 2026 18:57:24 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 10 Aug 2026 18:57:24 GMT
ARG REPO_CHANNEL=stable
# Mon, 10 Aug 2026 18:57:24 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 10 Aug 2026 18:57:24 GMT
ARG VERSION=26.5.6.113
# Mon, 10 Aug 2026 18:57:24 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 10 Aug 2026 18:57:55 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.113 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:57:55 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.113 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:57:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.113 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 10 Aug 2026 18:57:57 GMT
ENV LANG=en_US.UTF-8
# Mon, 10 Aug 2026 18:57:57 GMT
ENV TZ=UTC
# Mon, 10 Aug 2026 18:57:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.113 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 10 Aug 2026 18:57:57 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 10 Aug 2026 18:57:57 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 10 Aug 2026 18:57:57 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 10 Aug 2026 18:57:57 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 10 Aug 2026 18:57:57 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 10 Aug 2026 18:57:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e737c5ed04040f2f0a2a5834e272c5fa0ab6a31a0641be05eb1669153c7c4cfc`  
		Last Modified: Fri, 31 Jul 2026 22:53:57 GMT  
		Size: 27.6 MB (27620032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ae2ca465c6ab02be4276c8c2deea90a8f8dec93e316d20579cf87bf3d8d28ba`  
		Last Modified: Mon, 10 Aug 2026 18:58:19 GMT  
		Size: 7.5 MB (7533542 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dc9b4013c3ba692ae64df0fcb22e60c9af786c1b339207cda51a12bdd212632`  
		Last Modified: Mon, 10 Aug 2026 18:58:23 GMT  
		Size: 211.2 MB (211243800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0526f277364175dd7cec031670af66827a43429532adc867d877e4ee7a5ecfa0`  
		Last Modified: Mon, 10 Aug 2026 18:58:18 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a7c1587392c184375ae598124c34e7aeb2c245e67f0e9fd140c3bbb42c7cbc1`  
		Last Modified: Mon, 10 Aug 2026 18:58:19 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a5d8b0914cfdbabc85c5bb52c449269fb1840f2471ba82d8160a636120200a0`  
		Last Modified: Mon, 10 Aug 2026 18:58:20 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62d941aed4d35c055b51f247f618aacb9d33ba3513290458a6967ab67d8fbc95`  
		Last Modified: Mon, 10 Aug 2026 18:58:20 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18ba416b2ada1d45ee6103561ffd26982f44a0a6f177e12e43cdefe5ab4a0dcf`  
		Last Modified: Mon, 10 Aug 2026 18:58:20 GMT  
		Size: 3.6 KB (3639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.5-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:5aa9f11be964e630f7b03f640efb27f29930bf7f12584351eaf766c854027855
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26418 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68d58849df894d8fb674a458d568e2959137397a82647a9c5994cb2ef45655bf`

```dockerfile
```

-	Layers:
	-	`sha256:29427a67659fd553c963aa18ee06a0ae66083a795028f4e3808a2625644a42ce`  
		Last Modified: Mon, 10 Aug 2026 18:58:18 GMT  
		Size: 26.4 KB (26418 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.5.6`

```console
$ docker pull clickhouse@sha256:18f0df6e75c9c3cdda9c3baeb3f5de15e6547ef76431db82bc721b717b9143aa
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.5.6` - linux; amd64

```console
$ docker pull clickhouse@sha256:cffc86acaad6c32dbbf9c21e6c04efeb452099464533c86ae3373ca7d111fb69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.6 MB (261609309 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6843af91a4343d949c429295de10a1fd67dd96d83b1649af1149f2fb8b3dfc6a`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 31 Jul 2026 21:53:09 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:53:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:53:09 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:53:11 GMT
ADD file:4501ff54ffd37d854b1cfbcd2e37da58bf8a49da3a6a82232d03e7556d337a92 in / 
# Fri, 31 Jul 2026 21:53:12 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 18:57:33 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 10 Aug 2026 18:57:33 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 10 Aug 2026 18:57:33 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 10 Aug 2026 18:57:33 GMT
ARG REPO_CHANNEL=stable
# Mon, 10 Aug 2026 18:57:33 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 10 Aug 2026 18:57:33 GMT
ARG VERSION=26.5.6.113
# Mon, 10 Aug 2026 18:57:33 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 10 Aug 2026 18:57:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.113 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:57:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.113 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:57:58 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.113 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 10 Aug 2026 18:57:58 GMT
ENV LANG=en_US.UTF-8
# Mon, 10 Aug 2026 18:57:58 GMT
ENV TZ=UTC
# Mon, 10 Aug 2026 18:57:58 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.113 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 10 Aug 2026 18:57:58 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 10 Aug 2026 18:57:58 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 10 Aug 2026 18:57:58 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 10 Aug 2026 18:57:58 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 10 Aug 2026 18:57:58 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 10 Aug 2026 18:57:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:39a945af8df2ad9343f141c82355d3f2c4b576d432eda34c460d630607462b60`  
		Last Modified: Fri, 31 Jul 2026 22:53:51 GMT  
		Size: 29.7 MB (29736517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b76ba8d38508dc34638733a7ec016ae057f9d71c0d78b7d95933002e8dc25af`  
		Last Modified: Mon, 10 Aug 2026 18:58:21 GMT  
		Size: 7.6 MB (7553457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5774cdf88a34ea1988738ed78bd4ce8d007d4d6b1a16a88e5a75617a7ab02533`  
		Last Modified: Mon, 10 Aug 2026 18:58:25 GMT  
		Size: 223.4 MB (223449282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d633c09fbcdd7fcf2c8c25d2b509b65fac57241717d295453a506120d787279`  
		Last Modified: Mon, 10 Aug 2026 18:58:20 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91a559f0b1abcd77a6ac655f9d0feb14a161b553a5e7940117b1df9175275291`  
		Last Modified: Mon, 10 Aug 2026 18:58:20 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ae7769c57a5565965d0afd01304fedae649abd641a2d50a89c1287d13ec74bc`  
		Last Modified: Mon, 10 Aug 2026 18:58:22 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb9fba29e7960647432c23082c318156f54ccb39b8674035848b6902608bf195`  
		Last Modified: Mon, 10 Aug 2026 18:58:22 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8bca9d87680067ec30c98305397baadd20256508c4cb2e8f47889bf936a8357`  
		Last Modified: Mon, 10 Aug 2026 18:58:22 GMT  
		Size: 3.6 KB (3639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.5.6` - unknown; unknown

```console
$ docker pull clickhouse@sha256:1cbdf847f58cab2fbe264a6e25d717106b272e29532bd27155a47a63b957af30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a76fc19b838afce3a90f26d9693a215184b01736caaf8f1e122c1e9d917b415b`

```dockerfile
```

-	Layers:
	-	`sha256:368c9b6ee11a6b0c00a23f3ea360a05b5f013603eb4e86a81015eb18441cda40`  
		Last Modified: Mon, 10 Aug 2026 18:58:20 GMT  
		Size: 26.2 KB (26229 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.5.6` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:79266ae9d98214c4b422fbbbc3f113416c58088f301ecb4a55d5e5a53f5e96d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.3 MB (247267426 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c2dd93a380b62c3618235e038a1b61511aefc7fe047585b764cd0c2bb6933d7`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 31 Jul 2026 21:58:10 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:58:10 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:58:10 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:58:12 GMT
ADD file:66c837214dd75fd34fbf726aabdc4c4a739297d5d853247e4c885c4bce5b7f6a in / 
# Fri, 31 Jul 2026 21:58:12 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 18:57:24 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 10 Aug 2026 18:57:24 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 10 Aug 2026 18:57:24 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 10 Aug 2026 18:57:24 GMT
ARG REPO_CHANNEL=stable
# Mon, 10 Aug 2026 18:57:24 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 10 Aug 2026 18:57:24 GMT
ARG VERSION=26.5.6.113
# Mon, 10 Aug 2026 18:57:24 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 10 Aug 2026 18:57:55 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.113 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:57:55 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.113 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:57:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.113 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 10 Aug 2026 18:57:57 GMT
ENV LANG=en_US.UTF-8
# Mon, 10 Aug 2026 18:57:57 GMT
ENV TZ=UTC
# Mon, 10 Aug 2026 18:57:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.113 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 10 Aug 2026 18:57:57 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 10 Aug 2026 18:57:57 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 10 Aug 2026 18:57:57 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 10 Aug 2026 18:57:57 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 10 Aug 2026 18:57:57 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 10 Aug 2026 18:57:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e737c5ed04040f2f0a2a5834e272c5fa0ab6a31a0641be05eb1669153c7c4cfc`  
		Last Modified: Fri, 31 Jul 2026 22:53:57 GMT  
		Size: 27.6 MB (27620032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ae2ca465c6ab02be4276c8c2deea90a8f8dec93e316d20579cf87bf3d8d28ba`  
		Last Modified: Mon, 10 Aug 2026 18:58:19 GMT  
		Size: 7.5 MB (7533542 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dc9b4013c3ba692ae64df0fcb22e60c9af786c1b339207cda51a12bdd212632`  
		Last Modified: Mon, 10 Aug 2026 18:58:23 GMT  
		Size: 211.2 MB (211243800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0526f277364175dd7cec031670af66827a43429532adc867d877e4ee7a5ecfa0`  
		Last Modified: Mon, 10 Aug 2026 18:58:18 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a7c1587392c184375ae598124c34e7aeb2c245e67f0e9fd140c3bbb42c7cbc1`  
		Last Modified: Mon, 10 Aug 2026 18:58:19 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a5d8b0914cfdbabc85c5bb52c449269fb1840f2471ba82d8160a636120200a0`  
		Last Modified: Mon, 10 Aug 2026 18:58:20 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62d941aed4d35c055b51f247f618aacb9d33ba3513290458a6967ab67d8fbc95`  
		Last Modified: Mon, 10 Aug 2026 18:58:20 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18ba416b2ada1d45ee6103561ffd26982f44a0a6f177e12e43cdefe5ab4a0dcf`  
		Last Modified: Mon, 10 Aug 2026 18:58:20 GMT  
		Size: 3.6 KB (3639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.5.6` - unknown; unknown

```console
$ docker pull clickhouse@sha256:5aa9f11be964e630f7b03f640efb27f29930bf7f12584351eaf766c854027855
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26418 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68d58849df894d8fb674a458d568e2959137397a82647a9c5994cb2ef45655bf`

```dockerfile
```

-	Layers:
	-	`sha256:29427a67659fd553c963aa18ee06a0ae66083a795028f4e3808a2625644a42ce`  
		Last Modified: Mon, 10 Aug 2026 18:58:18 GMT  
		Size: 26.4 KB (26418 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.5.6-jammy`

```console
$ docker pull clickhouse@sha256:18f0df6e75c9c3cdda9c3baeb3f5de15e6547ef76431db82bc721b717b9143aa
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.5.6-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:cffc86acaad6c32dbbf9c21e6c04efeb452099464533c86ae3373ca7d111fb69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.6 MB (261609309 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6843af91a4343d949c429295de10a1fd67dd96d83b1649af1149f2fb8b3dfc6a`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 31 Jul 2026 21:53:09 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:53:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:53:09 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:53:11 GMT
ADD file:4501ff54ffd37d854b1cfbcd2e37da58bf8a49da3a6a82232d03e7556d337a92 in / 
# Fri, 31 Jul 2026 21:53:12 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 18:57:33 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 10 Aug 2026 18:57:33 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 10 Aug 2026 18:57:33 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 10 Aug 2026 18:57:33 GMT
ARG REPO_CHANNEL=stable
# Mon, 10 Aug 2026 18:57:33 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 10 Aug 2026 18:57:33 GMT
ARG VERSION=26.5.6.113
# Mon, 10 Aug 2026 18:57:33 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 10 Aug 2026 18:57:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.113 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:57:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.113 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:57:58 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.113 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 10 Aug 2026 18:57:58 GMT
ENV LANG=en_US.UTF-8
# Mon, 10 Aug 2026 18:57:58 GMT
ENV TZ=UTC
# Mon, 10 Aug 2026 18:57:58 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.113 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 10 Aug 2026 18:57:58 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 10 Aug 2026 18:57:58 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 10 Aug 2026 18:57:58 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 10 Aug 2026 18:57:58 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 10 Aug 2026 18:57:58 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 10 Aug 2026 18:57:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:39a945af8df2ad9343f141c82355d3f2c4b576d432eda34c460d630607462b60`  
		Last Modified: Fri, 31 Jul 2026 22:53:51 GMT  
		Size: 29.7 MB (29736517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b76ba8d38508dc34638733a7ec016ae057f9d71c0d78b7d95933002e8dc25af`  
		Last Modified: Mon, 10 Aug 2026 18:58:21 GMT  
		Size: 7.6 MB (7553457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5774cdf88a34ea1988738ed78bd4ce8d007d4d6b1a16a88e5a75617a7ab02533`  
		Last Modified: Mon, 10 Aug 2026 18:58:25 GMT  
		Size: 223.4 MB (223449282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d633c09fbcdd7fcf2c8c25d2b509b65fac57241717d295453a506120d787279`  
		Last Modified: Mon, 10 Aug 2026 18:58:20 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91a559f0b1abcd77a6ac655f9d0feb14a161b553a5e7940117b1df9175275291`  
		Last Modified: Mon, 10 Aug 2026 18:58:20 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ae7769c57a5565965d0afd01304fedae649abd641a2d50a89c1287d13ec74bc`  
		Last Modified: Mon, 10 Aug 2026 18:58:22 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb9fba29e7960647432c23082c318156f54ccb39b8674035848b6902608bf195`  
		Last Modified: Mon, 10 Aug 2026 18:58:22 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8bca9d87680067ec30c98305397baadd20256508c4cb2e8f47889bf936a8357`  
		Last Modified: Mon, 10 Aug 2026 18:58:22 GMT  
		Size: 3.6 KB (3639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.5.6-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:1cbdf847f58cab2fbe264a6e25d717106b272e29532bd27155a47a63b957af30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a76fc19b838afce3a90f26d9693a215184b01736caaf8f1e122c1e9d917b415b`

```dockerfile
```

-	Layers:
	-	`sha256:368c9b6ee11a6b0c00a23f3ea360a05b5f013603eb4e86a81015eb18441cda40`  
		Last Modified: Mon, 10 Aug 2026 18:58:20 GMT  
		Size: 26.2 KB (26229 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.5.6-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:79266ae9d98214c4b422fbbbc3f113416c58088f301ecb4a55d5e5a53f5e96d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.3 MB (247267426 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c2dd93a380b62c3618235e038a1b61511aefc7fe047585b764cd0c2bb6933d7`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 31 Jul 2026 21:58:10 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:58:10 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:58:10 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:58:12 GMT
ADD file:66c837214dd75fd34fbf726aabdc4c4a739297d5d853247e4c885c4bce5b7f6a in / 
# Fri, 31 Jul 2026 21:58:12 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 18:57:24 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 10 Aug 2026 18:57:24 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 10 Aug 2026 18:57:24 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 10 Aug 2026 18:57:24 GMT
ARG REPO_CHANNEL=stable
# Mon, 10 Aug 2026 18:57:24 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 10 Aug 2026 18:57:24 GMT
ARG VERSION=26.5.6.113
# Mon, 10 Aug 2026 18:57:24 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 10 Aug 2026 18:57:55 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.113 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:57:55 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.113 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:57:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.113 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 10 Aug 2026 18:57:57 GMT
ENV LANG=en_US.UTF-8
# Mon, 10 Aug 2026 18:57:57 GMT
ENV TZ=UTC
# Mon, 10 Aug 2026 18:57:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.113 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 10 Aug 2026 18:57:57 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 10 Aug 2026 18:57:57 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 10 Aug 2026 18:57:57 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 10 Aug 2026 18:57:57 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 10 Aug 2026 18:57:57 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 10 Aug 2026 18:57:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e737c5ed04040f2f0a2a5834e272c5fa0ab6a31a0641be05eb1669153c7c4cfc`  
		Last Modified: Fri, 31 Jul 2026 22:53:57 GMT  
		Size: 27.6 MB (27620032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ae2ca465c6ab02be4276c8c2deea90a8f8dec93e316d20579cf87bf3d8d28ba`  
		Last Modified: Mon, 10 Aug 2026 18:58:19 GMT  
		Size: 7.5 MB (7533542 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dc9b4013c3ba692ae64df0fcb22e60c9af786c1b339207cda51a12bdd212632`  
		Last Modified: Mon, 10 Aug 2026 18:58:23 GMT  
		Size: 211.2 MB (211243800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0526f277364175dd7cec031670af66827a43429532adc867d877e4ee7a5ecfa0`  
		Last Modified: Mon, 10 Aug 2026 18:58:18 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a7c1587392c184375ae598124c34e7aeb2c245e67f0e9fd140c3bbb42c7cbc1`  
		Last Modified: Mon, 10 Aug 2026 18:58:19 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a5d8b0914cfdbabc85c5bb52c449269fb1840f2471ba82d8160a636120200a0`  
		Last Modified: Mon, 10 Aug 2026 18:58:20 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62d941aed4d35c055b51f247f618aacb9d33ba3513290458a6967ab67d8fbc95`  
		Last Modified: Mon, 10 Aug 2026 18:58:20 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18ba416b2ada1d45ee6103561ffd26982f44a0a6f177e12e43cdefe5ab4a0dcf`  
		Last Modified: Mon, 10 Aug 2026 18:58:20 GMT  
		Size: 3.6 KB (3639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.5.6-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:5aa9f11be964e630f7b03f640efb27f29930bf7f12584351eaf766c854027855
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26418 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68d58849df894d8fb674a458d568e2959137397a82647a9c5994cb2ef45655bf`

```dockerfile
```

-	Layers:
	-	`sha256:29427a67659fd553c963aa18ee06a0ae66083a795028f4e3808a2625644a42ce`  
		Last Modified: Mon, 10 Aug 2026 18:58:18 GMT  
		Size: 26.4 KB (26418 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.5.6.113`

```console
$ docker pull clickhouse@sha256:18f0df6e75c9c3cdda9c3baeb3f5de15e6547ef76431db82bc721b717b9143aa
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.5.6.113` - linux; amd64

```console
$ docker pull clickhouse@sha256:cffc86acaad6c32dbbf9c21e6c04efeb452099464533c86ae3373ca7d111fb69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.6 MB (261609309 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6843af91a4343d949c429295de10a1fd67dd96d83b1649af1149f2fb8b3dfc6a`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 31 Jul 2026 21:53:09 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:53:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:53:09 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:53:11 GMT
ADD file:4501ff54ffd37d854b1cfbcd2e37da58bf8a49da3a6a82232d03e7556d337a92 in / 
# Fri, 31 Jul 2026 21:53:12 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 18:57:33 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 10 Aug 2026 18:57:33 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 10 Aug 2026 18:57:33 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 10 Aug 2026 18:57:33 GMT
ARG REPO_CHANNEL=stable
# Mon, 10 Aug 2026 18:57:33 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 10 Aug 2026 18:57:33 GMT
ARG VERSION=26.5.6.113
# Mon, 10 Aug 2026 18:57:33 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 10 Aug 2026 18:57:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.113 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:57:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.113 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:57:58 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.113 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 10 Aug 2026 18:57:58 GMT
ENV LANG=en_US.UTF-8
# Mon, 10 Aug 2026 18:57:58 GMT
ENV TZ=UTC
# Mon, 10 Aug 2026 18:57:58 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.113 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 10 Aug 2026 18:57:58 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 10 Aug 2026 18:57:58 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 10 Aug 2026 18:57:58 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 10 Aug 2026 18:57:58 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 10 Aug 2026 18:57:58 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 10 Aug 2026 18:57:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:39a945af8df2ad9343f141c82355d3f2c4b576d432eda34c460d630607462b60`  
		Last Modified: Fri, 31 Jul 2026 22:53:51 GMT  
		Size: 29.7 MB (29736517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b76ba8d38508dc34638733a7ec016ae057f9d71c0d78b7d95933002e8dc25af`  
		Last Modified: Mon, 10 Aug 2026 18:58:21 GMT  
		Size: 7.6 MB (7553457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5774cdf88a34ea1988738ed78bd4ce8d007d4d6b1a16a88e5a75617a7ab02533`  
		Last Modified: Mon, 10 Aug 2026 18:58:25 GMT  
		Size: 223.4 MB (223449282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d633c09fbcdd7fcf2c8c25d2b509b65fac57241717d295453a506120d787279`  
		Last Modified: Mon, 10 Aug 2026 18:58:20 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91a559f0b1abcd77a6ac655f9d0feb14a161b553a5e7940117b1df9175275291`  
		Last Modified: Mon, 10 Aug 2026 18:58:20 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ae7769c57a5565965d0afd01304fedae649abd641a2d50a89c1287d13ec74bc`  
		Last Modified: Mon, 10 Aug 2026 18:58:22 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb9fba29e7960647432c23082c318156f54ccb39b8674035848b6902608bf195`  
		Last Modified: Mon, 10 Aug 2026 18:58:22 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8bca9d87680067ec30c98305397baadd20256508c4cb2e8f47889bf936a8357`  
		Last Modified: Mon, 10 Aug 2026 18:58:22 GMT  
		Size: 3.6 KB (3639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.5.6.113` - unknown; unknown

```console
$ docker pull clickhouse@sha256:1cbdf847f58cab2fbe264a6e25d717106b272e29532bd27155a47a63b957af30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a76fc19b838afce3a90f26d9693a215184b01736caaf8f1e122c1e9d917b415b`

```dockerfile
```

-	Layers:
	-	`sha256:368c9b6ee11a6b0c00a23f3ea360a05b5f013603eb4e86a81015eb18441cda40`  
		Last Modified: Mon, 10 Aug 2026 18:58:20 GMT  
		Size: 26.2 KB (26229 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.5.6.113` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:79266ae9d98214c4b422fbbbc3f113416c58088f301ecb4a55d5e5a53f5e96d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.3 MB (247267426 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c2dd93a380b62c3618235e038a1b61511aefc7fe047585b764cd0c2bb6933d7`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 31 Jul 2026 21:58:10 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:58:10 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:58:10 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:58:12 GMT
ADD file:66c837214dd75fd34fbf726aabdc4c4a739297d5d853247e4c885c4bce5b7f6a in / 
# Fri, 31 Jul 2026 21:58:12 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 18:57:24 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 10 Aug 2026 18:57:24 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 10 Aug 2026 18:57:24 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 10 Aug 2026 18:57:24 GMT
ARG REPO_CHANNEL=stable
# Mon, 10 Aug 2026 18:57:24 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 10 Aug 2026 18:57:24 GMT
ARG VERSION=26.5.6.113
# Mon, 10 Aug 2026 18:57:24 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 10 Aug 2026 18:57:55 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.113 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:57:55 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.113 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:57:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.113 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 10 Aug 2026 18:57:57 GMT
ENV LANG=en_US.UTF-8
# Mon, 10 Aug 2026 18:57:57 GMT
ENV TZ=UTC
# Mon, 10 Aug 2026 18:57:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.113 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 10 Aug 2026 18:57:57 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 10 Aug 2026 18:57:57 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 10 Aug 2026 18:57:57 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 10 Aug 2026 18:57:57 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 10 Aug 2026 18:57:57 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 10 Aug 2026 18:57:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e737c5ed04040f2f0a2a5834e272c5fa0ab6a31a0641be05eb1669153c7c4cfc`  
		Last Modified: Fri, 31 Jul 2026 22:53:57 GMT  
		Size: 27.6 MB (27620032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ae2ca465c6ab02be4276c8c2deea90a8f8dec93e316d20579cf87bf3d8d28ba`  
		Last Modified: Mon, 10 Aug 2026 18:58:19 GMT  
		Size: 7.5 MB (7533542 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dc9b4013c3ba692ae64df0fcb22e60c9af786c1b339207cda51a12bdd212632`  
		Last Modified: Mon, 10 Aug 2026 18:58:23 GMT  
		Size: 211.2 MB (211243800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0526f277364175dd7cec031670af66827a43429532adc867d877e4ee7a5ecfa0`  
		Last Modified: Mon, 10 Aug 2026 18:58:18 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a7c1587392c184375ae598124c34e7aeb2c245e67f0e9fd140c3bbb42c7cbc1`  
		Last Modified: Mon, 10 Aug 2026 18:58:19 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a5d8b0914cfdbabc85c5bb52c449269fb1840f2471ba82d8160a636120200a0`  
		Last Modified: Mon, 10 Aug 2026 18:58:20 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62d941aed4d35c055b51f247f618aacb9d33ba3513290458a6967ab67d8fbc95`  
		Last Modified: Mon, 10 Aug 2026 18:58:20 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18ba416b2ada1d45ee6103561ffd26982f44a0a6f177e12e43cdefe5ab4a0dcf`  
		Last Modified: Mon, 10 Aug 2026 18:58:20 GMT  
		Size: 3.6 KB (3639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.5.6.113` - unknown; unknown

```console
$ docker pull clickhouse@sha256:5aa9f11be964e630f7b03f640efb27f29930bf7f12584351eaf766c854027855
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26418 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68d58849df894d8fb674a458d568e2959137397a82647a9c5994cb2ef45655bf`

```dockerfile
```

-	Layers:
	-	`sha256:29427a67659fd553c963aa18ee06a0ae66083a795028f4e3808a2625644a42ce`  
		Last Modified: Mon, 10 Aug 2026 18:58:18 GMT  
		Size: 26.4 KB (26418 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.5.6.113-jammy`

```console
$ docker pull clickhouse@sha256:18f0df6e75c9c3cdda9c3baeb3f5de15e6547ef76431db82bc721b717b9143aa
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.5.6.113-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:cffc86acaad6c32dbbf9c21e6c04efeb452099464533c86ae3373ca7d111fb69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.6 MB (261609309 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6843af91a4343d949c429295de10a1fd67dd96d83b1649af1149f2fb8b3dfc6a`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 31 Jul 2026 21:53:09 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:53:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:53:09 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:53:11 GMT
ADD file:4501ff54ffd37d854b1cfbcd2e37da58bf8a49da3a6a82232d03e7556d337a92 in / 
# Fri, 31 Jul 2026 21:53:12 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 18:57:33 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 10 Aug 2026 18:57:33 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 10 Aug 2026 18:57:33 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 10 Aug 2026 18:57:33 GMT
ARG REPO_CHANNEL=stable
# Mon, 10 Aug 2026 18:57:33 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 10 Aug 2026 18:57:33 GMT
ARG VERSION=26.5.6.113
# Mon, 10 Aug 2026 18:57:33 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 10 Aug 2026 18:57:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.113 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:57:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.113 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:57:58 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.113 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 10 Aug 2026 18:57:58 GMT
ENV LANG=en_US.UTF-8
# Mon, 10 Aug 2026 18:57:58 GMT
ENV TZ=UTC
# Mon, 10 Aug 2026 18:57:58 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.113 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 10 Aug 2026 18:57:58 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 10 Aug 2026 18:57:58 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 10 Aug 2026 18:57:58 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 10 Aug 2026 18:57:58 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 10 Aug 2026 18:57:58 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 10 Aug 2026 18:57:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:39a945af8df2ad9343f141c82355d3f2c4b576d432eda34c460d630607462b60`  
		Last Modified: Fri, 31 Jul 2026 22:53:51 GMT  
		Size: 29.7 MB (29736517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b76ba8d38508dc34638733a7ec016ae057f9d71c0d78b7d95933002e8dc25af`  
		Last Modified: Mon, 10 Aug 2026 18:58:21 GMT  
		Size: 7.6 MB (7553457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5774cdf88a34ea1988738ed78bd4ce8d007d4d6b1a16a88e5a75617a7ab02533`  
		Last Modified: Mon, 10 Aug 2026 18:58:25 GMT  
		Size: 223.4 MB (223449282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d633c09fbcdd7fcf2c8c25d2b509b65fac57241717d295453a506120d787279`  
		Last Modified: Mon, 10 Aug 2026 18:58:20 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91a559f0b1abcd77a6ac655f9d0feb14a161b553a5e7940117b1df9175275291`  
		Last Modified: Mon, 10 Aug 2026 18:58:20 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ae7769c57a5565965d0afd01304fedae649abd641a2d50a89c1287d13ec74bc`  
		Last Modified: Mon, 10 Aug 2026 18:58:22 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb9fba29e7960647432c23082c318156f54ccb39b8674035848b6902608bf195`  
		Last Modified: Mon, 10 Aug 2026 18:58:22 GMT  
		Size: 364.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8bca9d87680067ec30c98305397baadd20256508c4cb2e8f47889bf936a8357`  
		Last Modified: Mon, 10 Aug 2026 18:58:22 GMT  
		Size: 3.6 KB (3639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.5.6.113-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:1cbdf847f58cab2fbe264a6e25d717106b272e29532bd27155a47a63b957af30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a76fc19b838afce3a90f26d9693a215184b01736caaf8f1e122c1e9d917b415b`

```dockerfile
```

-	Layers:
	-	`sha256:368c9b6ee11a6b0c00a23f3ea360a05b5f013603eb4e86a81015eb18441cda40`  
		Last Modified: Mon, 10 Aug 2026 18:58:20 GMT  
		Size: 26.2 KB (26229 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.5.6.113-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:79266ae9d98214c4b422fbbbc3f113416c58088f301ecb4a55d5e5a53f5e96d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.3 MB (247267426 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c2dd93a380b62c3618235e038a1b61511aefc7fe047585b764cd0c2bb6933d7`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 31 Jul 2026 21:58:10 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:58:10 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:58:10 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:58:12 GMT
ADD file:66c837214dd75fd34fbf726aabdc4c4a739297d5d853247e4c885c4bce5b7f6a in / 
# Fri, 31 Jul 2026 21:58:12 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 18:57:24 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 10 Aug 2026 18:57:24 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 10 Aug 2026 18:57:24 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 10 Aug 2026 18:57:24 GMT
ARG REPO_CHANNEL=stable
# Mon, 10 Aug 2026 18:57:24 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 10 Aug 2026 18:57:24 GMT
ARG VERSION=26.5.6.113
# Mon, 10 Aug 2026 18:57:24 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 10 Aug 2026 18:57:55 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.113 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:57:55 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.113 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:57:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.113 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 10 Aug 2026 18:57:57 GMT
ENV LANG=en_US.UTF-8
# Mon, 10 Aug 2026 18:57:57 GMT
ENV TZ=UTC
# Mon, 10 Aug 2026 18:57:57 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.5.6.113 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 10 Aug 2026 18:57:57 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 10 Aug 2026 18:57:57 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 10 Aug 2026 18:57:57 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 10 Aug 2026 18:57:57 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 10 Aug 2026 18:57:57 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 10 Aug 2026 18:57:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e737c5ed04040f2f0a2a5834e272c5fa0ab6a31a0641be05eb1669153c7c4cfc`  
		Last Modified: Fri, 31 Jul 2026 22:53:57 GMT  
		Size: 27.6 MB (27620032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ae2ca465c6ab02be4276c8c2deea90a8f8dec93e316d20579cf87bf3d8d28ba`  
		Last Modified: Mon, 10 Aug 2026 18:58:19 GMT  
		Size: 7.5 MB (7533542 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dc9b4013c3ba692ae64df0fcb22e60c9af786c1b339207cda51a12bdd212632`  
		Last Modified: Mon, 10 Aug 2026 18:58:23 GMT  
		Size: 211.2 MB (211243800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0526f277364175dd7cec031670af66827a43429532adc867d877e4ee7a5ecfa0`  
		Last Modified: Mon, 10 Aug 2026 18:58:18 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a7c1587392c184375ae598124c34e7aeb2c245e67f0e9fd140c3bbb42c7cbc1`  
		Last Modified: Mon, 10 Aug 2026 18:58:19 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a5d8b0914cfdbabc85c5bb52c449269fb1840f2471ba82d8160a636120200a0`  
		Last Modified: Mon, 10 Aug 2026 18:58:20 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62d941aed4d35c055b51f247f618aacb9d33ba3513290458a6967ab67d8fbc95`  
		Last Modified: Mon, 10 Aug 2026 18:58:20 GMT  
		Size: 361.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18ba416b2ada1d45ee6103561ffd26982f44a0a6f177e12e43cdefe5ab4a0dcf`  
		Last Modified: Mon, 10 Aug 2026 18:58:20 GMT  
		Size: 3.6 KB (3639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.5.6.113-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:5aa9f11be964e630f7b03f640efb27f29930bf7f12584351eaf766c854027855
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26418 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68d58849df894d8fb674a458d568e2959137397a82647a9c5994cb2ef45655bf`

```dockerfile
```

-	Layers:
	-	`sha256:29427a67659fd553c963aa18ee06a0ae66083a795028f4e3808a2625644a42ce`  
		Last Modified: Mon, 10 Aug 2026 18:58:18 GMT  
		Size: 26.4 KB (26418 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.6`

```console
$ docker pull clickhouse@sha256:012b29f676305ff0f00abfee1cd9c556e6266feda085ff1c2c96851b953fcc6a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.6` - linux; amd64

```console
$ docker pull clickhouse@sha256:676ef244f11b8792fdb8d0ebd6a4b9f1222fba85fe4297377d8330e6e403fd9b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.9 MB (276862979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d53cc22903545470e149795a9264e25bf7b791292c0e3463220020cd4e4a2868`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 31 Jul 2026 21:53:09 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:53:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:53:09 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:53:11 GMT
ADD file:4501ff54ffd37d854b1cfbcd2e37da58bf8a49da3a6a82232d03e7556d337a92 in / 
# Fri, 31 Jul 2026 21:53:12 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 18:58:03 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 10 Aug 2026 18:58:03 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 10 Aug 2026 18:58:03 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 10 Aug 2026 18:58:03 GMT
ARG REPO_CHANNEL=stable
# Mon, 10 Aug 2026 18:58:03 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 10 Aug 2026 18:58:03 GMT
ARG VERSION=26.6.2.160
# Mon, 10 Aug 2026 18:58:03 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 10 Aug 2026 18:58:32 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.160 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:58:32 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.160 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:58:33 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.160 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 10 Aug 2026 18:58:33 GMT
ENV LANG=en_US.UTF-8
# Mon, 10 Aug 2026 18:58:33 GMT
ENV TZ=UTC
# Mon, 10 Aug 2026 18:58:33 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.160 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 10 Aug 2026 18:58:33 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 10 Aug 2026 18:58:33 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 10 Aug 2026 18:58:33 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 10 Aug 2026 18:58:33 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 10 Aug 2026 18:58:33 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 10 Aug 2026 18:58:33 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:39a945af8df2ad9343f141c82355d3f2c4b576d432eda34c460d630607462b60`  
		Last Modified: Fri, 31 Jul 2026 22:53:51 GMT  
		Size: 29.7 MB (29736517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:144f03e9525265c1ef38f15bc84ef58ee3ed5cd72552f7a9dcabe09dec07e819`  
		Last Modified: Mon, 10 Aug 2026 18:59:00 GMT  
		Size: 7.6 MB (7553432 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59000457b8bcb4afc41269271093d7968cb77dfcd9714474f42b35df4b5f22f9`  
		Last Modified: Mon, 10 Aug 2026 18:59:05 GMT  
		Size: 238.7 MB (238702979 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:862e4071a9c54edd0a05d9b17ac5a30ce2698f4847067a3170decf990b7d1440`  
		Last Modified: Mon, 10 Aug 2026 18:58:59 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11502d4615c9c2e4d6d22152c1c2751e41da5e2266e82831ff315c2d238e04b5`  
		Last Modified: Mon, 10 Aug 2026 18:59:00 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de10887cfce8a25bb3d4f42ba1dfcb7bfb043d11c10993087d33e4581778e63a`  
		Last Modified: Mon, 10 Aug 2026 18:59:01 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e76a5680ffe8b8ecfc7c420fb0d42ec7fbcdf844595fc764fc1d6ccdfca5ed5`  
		Last Modified: Mon, 10 Aug 2026 18:59:01 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe60c34940bcec81cdbee8db92a05873b9e3c37d0e6ce96ec272b8c47ce4152b`  
		Last Modified: Mon, 10 Aug 2026 18:59:02 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.6` - unknown; unknown

```console
$ docker pull clickhouse@sha256:2696d4fae53a5e73a1cef2911af185a3a3b13dd4670572477dfbedc8f1d458d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26230 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:356fe834294cd99233e459d47ee49abba8303a90b240348450de62f8b7faab70`

```dockerfile
```

-	Layers:
	-	`sha256:425cc48ed8ec5cc409778b74367594b06d691956424586cfc4d2ce2187e7589f`  
		Last Modified: Mon, 10 Aug 2026 18:58:59 GMT  
		Size: 26.2 KB (26230 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.6` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:baf11b9a312489e46651363ae2b95d50182cb254051bc1b65e705a02b1658989
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.4 MB (257374010 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e26556f8bbdbd373a81421aac5013128cd73b10894f525932022f9f014f54bb`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 31 Jul 2026 21:58:10 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:58:10 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:58:10 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:58:12 GMT
ADD file:66c837214dd75fd34fbf726aabdc4c4a739297d5d853247e4c885c4bce5b7f6a in / 
# Fri, 31 Jul 2026 21:58:12 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 18:57:32 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 10 Aug 2026 18:57:32 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 10 Aug 2026 18:57:32 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 10 Aug 2026 18:57:32 GMT
ARG REPO_CHANNEL=stable
# Mon, 10 Aug 2026 18:57:32 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 10 Aug 2026 18:57:32 GMT
ARG VERSION=26.6.2.160
# Mon, 10 Aug 2026 18:57:32 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 10 Aug 2026 18:58:05 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.160 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:58:06 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.160 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:58:07 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.160 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 10 Aug 2026 18:58:07 GMT
ENV LANG=en_US.UTF-8
# Mon, 10 Aug 2026 18:58:07 GMT
ENV TZ=UTC
# Mon, 10 Aug 2026 18:58:07 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.160 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 10 Aug 2026 18:58:07 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 10 Aug 2026 18:58:07 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 10 Aug 2026 18:58:07 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 10 Aug 2026 18:58:07 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 10 Aug 2026 18:58:07 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 10 Aug 2026 18:58:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e737c5ed04040f2f0a2a5834e272c5fa0ab6a31a0641be05eb1669153c7c4cfc`  
		Last Modified: Fri, 31 Jul 2026 22:53:57 GMT  
		Size: 27.6 MB (27620032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:746cdfed569f5495ebf388dae2141ee355455325a523f21113eb2d1710c75373`  
		Last Modified: Mon, 10 Aug 2026 18:58:29 GMT  
		Size: 7.5 MB (7533598 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7824b233f42e0337def7341727b926429840258e2e43a8933ad59fca471d6607`  
		Last Modified: Mon, 10 Aug 2026 18:58:34 GMT  
		Size: 221.4 MB (221350328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f7914db4aad763c1449c16a7699ba36b93643976f2300622398c67788929c26`  
		Last Modified: Mon, 10 Aug 2026 18:58:29 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f62e1b692192fd51aa9282554e3677d7c3bc0441a744f94e30bb0a421c414036`  
		Last Modified: Mon, 10 Aug 2026 18:58:29 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be2aab5d2b76cca716ba2daf2943e320c41b8985bc65130741eb744bcb1090bf`  
		Last Modified: Mon, 10 Aug 2026 18:58:30 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:221a5079e7684470d4cb0251936c25a7d1d7354b1d4c5b26ae96482ac929369b`  
		Last Modified: Mon, 10 Aug 2026 18:58:31 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18ba416b2ada1d45ee6103561ffd26982f44a0a6f177e12e43cdefe5ab4a0dcf`  
		Last Modified: Mon, 10 Aug 2026 18:58:20 GMT  
		Size: 3.6 KB (3639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.6` - unknown; unknown

```console
$ docker pull clickhouse@sha256:7959ec153cb2d2fed162a20f729bee06bde5b752ab76b64c0916bf62851da229
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cbf9cbd1e2e53f039da826d732c7ed4c5cb985ff0eb57d9ff34253eaceef693`

```dockerfile
```

-	Layers:
	-	`sha256:eb6ddaafcbb09e3a3b89a6f36fff5ad55d363c40846a2e4b7e40b528a67d9aaa`  
		Last Modified: Mon, 10 Aug 2026 18:58:29 GMT  
		Size: 26.4 KB (26419 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.6-jammy`

```console
$ docker pull clickhouse@sha256:012b29f676305ff0f00abfee1cd9c556e6266feda085ff1c2c96851b953fcc6a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.6-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:676ef244f11b8792fdb8d0ebd6a4b9f1222fba85fe4297377d8330e6e403fd9b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.9 MB (276862979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d53cc22903545470e149795a9264e25bf7b791292c0e3463220020cd4e4a2868`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 31 Jul 2026 21:53:09 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:53:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:53:09 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:53:11 GMT
ADD file:4501ff54ffd37d854b1cfbcd2e37da58bf8a49da3a6a82232d03e7556d337a92 in / 
# Fri, 31 Jul 2026 21:53:12 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 18:58:03 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 10 Aug 2026 18:58:03 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 10 Aug 2026 18:58:03 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 10 Aug 2026 18:58:03 GMT
ARG REPO_CHANNEL=stable
# Mon, 10 Aug 2026 18:58:03 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 10 Aug 2026 18:58:03 GMT
ARG VERSION=26.6.2.160
# Mon, 10 Aug 2026 18:58:03 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 10 Aug 2026 18:58:32 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.160 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:58:32 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.160 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:58:33 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.160 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 10 Aug 2026 18:58:33 GMT
ENV LANG=en_US.UTF-8
# Mon, 10 Aug 2026 18:58:33 GMT
ENV TZ=UTC
# Mon, 10 Aug 2026 18:58:33 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.160 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 10 Aug 2026 18:58:33 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 10 Aug 2026 18:58:33 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 10 Aug 2026 18:58:33 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 10 Aug 2026 18:58:33 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 10 Aug 2026 18:58:33 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 10 Aug 2026 18:58:33 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:39a945af8df2ad9343f141c82355d3f2c4b576d432eda34c460d630607462b60`  
		Last Modified: Fri, 31 Jul 2026 22:53:51 GMT  
		Size: 29.7 MB (29736517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:144f03e9525265c1ef38f15bc84ef58ee3ed5cd72552f7a9dcabe09dec07e819`  
		Last Modified: Mon, 10 Aug 2026 18:59:00 GMT  
		Size: 7.6 MB (7553432 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59000457b8bcb4afc41269271093d7968cb77dfcd9714474f42b35df4b5f22f9`  
		Last Modified: Mon, 10 Aug 2026 18:59:05 GMT  
		Size: 238.7 MB (238702979 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:862e4071a9c54edd0a05d9b17ac5a30ce2698f4847067a3170decf990b7d1440`  
		Last Modified: Mon, 10 Aug 2026 18:58:59 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11502d4615c9c2e4d6d22152c1c2751e41da5e2266e82831ff315c2d238e04b5`  
		Last Modified: Mon, 10 Aug 2026 18:59:00 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de10887cfce8a25bb3d4f42ba1dfcb7bfb043d11c10993087d33e4581778e63a`  
		Last Modified: Mon, 10 Aug 2026 18:59:01 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e76a5680ffe8b8ecfc7c420fb0d42ec7fbcdf844595fc764fc1d6ccdfca5ed5`  
		Last Modified: Mon, 10 Aug 2026 18:59:01 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe60c34940bcec81cdbee8db92a05873b9e3c37d0e6ce96ec272b8c47ce4152b`  
		Last Modified: Mon, 10 Aug 2026 18:59:02 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.6-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:2696d4fae53a5e73a1cef2911af185a3a3b13dd4670572477dfbedc8f1d458d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26230 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:356fe834294cd99233e459d47ee49abba8303a90b240348450de62f8b7faab70`

```dockerfile
```

-	Layers:
	-	`sha256:425cc48ed8ec5cc409778b74367594b06d691956424586cfc4d2ce2187e7589f`  
		Last Modified: Mon, 10 Aug 2026 18:58:59 GMT  
		Size: 26.2 KB (26230 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.6-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:baf11b9a312489e46651363ae2b95d50182cb254051bc1b65e705a02b1658989
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.4 MB (257374010 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e26556f8bbdbd373a81421aac5013128cd73b10894f525932022f9f014f54bb`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 31 Jul 2026 21:58:10 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:58:10 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:58:10 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:58:12 GMT
ADD file:66c837214dd75fd34fbf726aabdc4c4a739297d5d853247e4c885c4bce5b7f6a in / 
# Fri, 31 Jul 2026 21:58:12 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 18:57:32 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 10 Aug 2026 18:57:32 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 10 Aug 2026 18:57:32 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 10 Aug 2026 18:57:32 GMT
ARG REPO_CHANNEL=stable
# Mon, 10 Aug 2026 18:57:32 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 10 Aug 2026 18:57:32 GMT
ARG VERSION=26.6.2.160
# Mon, 10 Aug 2026 18:57:32 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 10 Aug 2026 18:58:05 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.160 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:58:06 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.160 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:58:07 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.160 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 10 Aug 2026 18:58:07 GMT
ENV LANG=en_US.UTF-8
# Mon, 10 Aug 2026 18:58:07 GMT
ENV TZ=UTC
# Mon, 10 Aug 2026 18:58:07 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.160 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 10 Aug 2026 18:58:07 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 10 Aug 2026 18:58:07 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 10 Aug 2026 18:58:07 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 10 Aug 2026 18:58:07 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 10 Aug 2026 18:58:07 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 10 Aug 2026 18:58:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e737c5ed04040f2f0a2a5834e272c5fa0ab6a31a0641be05eb1669153c7c4cfc`  
		Last Modified: Fri, 31 Jul 2026 22:53:57 GMT  
		Size: 27.6 MB (27620032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:746cdfed569f5495ebf388dae2141ee355455325a523f21113eb2d1710c75373`  
		Last Modified: Mon, 10 Aug 2026 18:58:29 GMT  
		Size: 7.5 MB (7533598 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7824b233f42e0337def7341727b926429840258e2e43a8933ad59fca471d6607`  
		Last Modified: Mon, 10 Aug 2026 18:58:34 GMT  
		Size: 221.4 MB (221350328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f7914db4aad763c1449c16a7699ba36b93643976f2300622398c67788929c26`  
		Last Modified: Mon, 10 Aug 2026 18:58:29 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f62e1b692192fd51aa9282554e3677d7c3bc0441a744f94e30bb0a421c414036`  
		Last Modified: Mon, 10 Aug 2026 18:58:29 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be2aab5d2b76cca716ba2daf2943e320c41b8985bc65130741eb744bcb1090bf`  
		Last Modified: Mon, 10 Aug 2026 18:58:30 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:221a5079e7684470d4cb0251936c25a7d1d7354b1d4c5b26ae96482ac929369b`  
		Last Modified: Mon, 10 Aug 2026 18:58:31 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18ba416b2ada1d45ee6103561ffd26982f44a0a6f177e12e43cdefe5ab4a0dcf`  
		Last Modified: Mon, 10 Aug 2026 18:58:20 GMT  
		Size: 3.6 KB (3639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.6-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:7959ec153cb2d2fed162a20f729bee06bde5b752ab76b64c0916bf62851da229
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cbf9cbd1e2e53f039da826d732c7ed4c5cb985ff0eb57d9ff34253eaceef693`

```dockerfile
```

-	Layers:
	-	`sha256:eb6ddaafcbb09e3a3b89a6f36fff5ad55d363c40846a2e4b7e40b528a67d9aaa`  
		Last Modified: Mon, 10 Aug 2026 18:58:29 GMT  
		Size: 26.4 KB (26419 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.6.2`

```console
$ docker pull clickhouse@sha256:012b29f676305ff0f00abfee1cd9c556e6266feda085ff1c2c96851b953fcc6a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.6.2` - linux; amd64

```console
$ docker pull clickhouse@sha256:676ef244f11b8792fdb8d0ebd6a4b9f1222fba85fe4297377d8330e6e403fd9b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.9 MB (276862979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d53cc22903545470e149795a9264e25bf7b791292c0e3463220020cd4e4a2868`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 31 Jul 2026 21:53:09 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:53:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:53:09 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:53:11 GMT
ADD file:4501ff54ffd37d854b1cfbcd2e37da58bf8a49da3a6a82232d03e7556d337a92 in / 
# Fri, 31 Jul 2026 21:53:12 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 18:58:03 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 10 Aug 2026 18:58:03 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 10 Aug 2026 18:58:03 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 10 Aug 2026 18:58:03 GMT
ARG REPO_CHANNEL=stable
# Mon, 10 Aug 2026 18:58:03 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 10 Aug 2026 18:58:03 GMT
ARG VERSION=26.6.2.160
# Mon, 10 Aug 2026 18:58:03 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 10 Aug 2026 18:58:32 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.160 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:58:32 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.160 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:58:33 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.160 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 10 Aug 2026 18:58:33 GMT
ENV LANG=en_US.UTF-8
# Mon, 10 Aug 2026 18:58:33 GMT
ENV TZ=UTC
# Mon, 10 Aug 2026 18:58:33 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.160 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 10 Aug 2026 18:58:33 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 10 Aug 2026 18:58:33 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 10 Aug 2026 18:58:33 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 10 Aug 2026 18:58:33 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 10 Aug 2026 18:58:33 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 10 Aug 2026 18:58:33 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:39a945af8df2ad9343f141c82355d3f2c4b576d432eda34c460d630607462b60`  
		Last Modified: Fri, 31 Jul 2026 22:53:51 GMT  
		Size: 29.7 MB (29736517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:144f03e9525265c1ef38f15bc84ef58ee3ed5cd72552f7a9dcabe09dec07e819`  
		Last Modified: Mon, 10 Aug 2026 18:59:00 GMT  
		Size: 7.6 MB (7553432 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59000457b8bcb4afc41269271093d7968cb77dfcd9714474f42b35df4b5f22f9`  
		Last Modified: Mon, 10 Aug 2026 18:59:05 GMT  
		Size: 238.7 MB (238702979 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:862e4071a9c54edd0a05d9b17ac5a30ce2698f4847067a3170decf990b7d1440`  
		Last Modified: Mon, 10 Aug 2026 18:58:59 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11502d4615c9c2e4d6d22152c1c2751e41da5e2266e82831ff315c2d238e04b5`  
		Last Modified: Mon, 10 Aug 2026 18:59:00 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de10887cfce8a25bb3d4f42ba1dfcb7bfb043d11c10993087d33e4581778e63a`  
		Last Modified: Mon, 10 Aug 2026 18:59:01 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e76a5680ffe8b8ecfc7c420fb0d42ec7fbcdf844595fc764fc1d6ccdfca5ed5`  
		Last Modified: Mon, 10 Aug 2026 18:59:01 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe60c34940bcec81cdbee8db92a05873b9e3c37d0e6ce96ec272b8c47ce4152b`  
		Last Modified: Mon, 10 Aug 2026 18:59:02 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.6.2` - unknown; unknown

```console
$ docker pull clickhouse@sha256:2696d4fae53a5e73a1cef2911af185a3a3b13dd4670572477dfbedc8f1d458d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26230 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:356fe834294cd99233e459d47ee49abba8303a90b240348450de62f8b7faab70`

```dockerfile
```

-	Layers:
	-	`sha256:425cc48ed8ec5cc409778b74367594b06d691956424586cfc4d2ce2187e7589f`  
		Last Modified: Mon, 10 Aug 2026 18:58:59 GMT  
		Size: 26.2 KB (26230 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.6.2` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:baf11b9a312489e46651363ae2b95d50182cb254051bc1b65e705a02b1658989
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.4 MB (257374010 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e26556f8bbdbd373a81421aac5013128cd73b10894f525932022f9f014f54bb`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 31 Jul 2026 21:58:10 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:58:10 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:58:10 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:58:12 GMT
ADD file:66c837214dd75fd34fbf726aabdc4c4a739297d5d853247e4c885c4bce5b7f6a in / 
# Fri, 31 Jul 2026 21:58:12 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 18:57:32 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 10 Aug 2026 18:57:32 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 10 Aug 2026 18:57:32 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 10 Aug 2026 18:57:32 GMT
ARG REPO_CHANNEL=stable
# Mon, 10 Aug 2026 18:57:32 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 10 Aug 2026 18:57:32 GMT
ARG VERSION=26.6.2.160
# Mon, 10 Aug 2026 18:57:32 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 10 Aug 2026 18:58:05 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.160 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:58:06 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.160 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:58:07 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.160 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 10 Aug 2026 18:58:07 GMT
ENV LANG=en_US.UTF-8
# Mon, 10 Aug 2026 18:58:07 GMT
ENV TZ=UTC
# Mon, 10 Aug 2026 18:58:07 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.160 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 10 Aug 2026 18:58:07 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 10 Aug 2026 18:58:07 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 10 Aug 2026 18:58:07 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 10 Aug 2026 18:58:07 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 10 Aug 2026 18:58:07 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 10 Aug 2026 18:58:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e737c5ed04040f2f0a2a5834e272c5fa0ab6a31a0641be05eb1669153c7c4cfc`  
		Last Modified: Fri, 31 Jul 2026 22:53:57 GMT  
		Size: 27.6 MB (27620032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:746cdfed569f5495ebf388dae2141ee355455325a523f21113eb2d1710c75373`  
		Last Modified: Mon, 10 Aug 2026 18:58:29 GMT  
		Size: 7.5 MB (7533598 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7824b233f42e0337def7341727b926429840258e2e43a8933ad59fca471d6607`  
		Last Modified: Mon, 10 Aug 2026 18:58:34 GMT  
		Size: 221.4 MB (221350328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f7914db4aad763c1449c16a7699ba36b93643976f2300622398c67788929c26`  
		Last Modified: Mon, 10 Aug 2026 18:58:29 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f62e1b692192fd51aa9282554e3677d7c3bc0441a744f94e30bb0a421c414036`  
		Last Modified: Mon, 10 Aug 2026 18:58:29 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be2aab5d2b76cca716ba2daf2943e320c41b8985bc65130741eb744bcb1090bf`  
		Last Modified: Mon, 10 Aug 2026 18:58:30 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:221a5079e7684470d4cb0251936c25a7d1d7354b1d4c5b26ae96482ac929369b`  
		Last Modified: Mon, 10 Aug 2026 18:58:31 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18ba416b2ada1d45ee6103561ffd26982f44a0a6f177e12e43cdefe5ab4a0dcf`  
		Last Modified: Mon, 10 Aug 2026 18:58:20 GMT  
		Size: 3.6 KB (3639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.6.2` - unknown; unknown

```console
$ docker pull clickhouse@sha256:7959ec153cb2d2fed162a20f729bee06bde5b752ab76b64c0916bf62851da229
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cbf9cbd1e2e53f039da826d732c7ed4c5cb985ff0eb57d9ff34253eaceef693`

```dockerfile
```

-	Layers:
	-	`sha256:eb6ddaafcbb09e3a3b89a6f36fff5ad55d363c40846a2e4b7e40b528a67d9aaa`  
		Last Modified: Mon, 10 Aug 2026 18:58:29 GMT  
		Size: 26.4 KB (26419 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.6.2-jammy`

```console
$ docker pull clickhouse@sha256:012b29f676305ff0f00abfee1cd9c556e6266feda085ff1c2c96851b953fcc6a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.6.2-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:676ef244f11b8792fdb8d0ebd6a4b9f1222fba85fe4297377d8330e6e403fd9b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.9 MB (276862979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d53cc22903545470e149795a9264e25bf7b791292c0e3463220020cd4e4a2868`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 31 Jul 2026 21:53:09 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:53:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:53:09 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:53:11 GMT
ADD file:4501ff54ffd37d854b1cfbcd2e37da58bf8a49da3a6a82232d03e7556d337a92 in / 
# Fri, 31 Jul 2026 21:53:12 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 18:58:03 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 10 Aug 2026 18:58:03 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 10 Aug 2026 18:58:03 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 10 Aug 2026 18:58:03 GMT
ARG REPO_CHANNEL=stable
# Mon, 10 Aug 2026 18:58:03 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 10 Aug 2026 18:58:03 GMT
ARG VERSION=26.6.2.160
# Mon, 10 Aug 2026 18:58:03 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 10 Aug 2026 18:58:32 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.160 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:58:32 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.160 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:58:33 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.160 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 10 Aug 2026 18:58:33 GMT
ENV LANG=en_US.UTF-8
# Mon, 10 Aug 2026 18:58:33 GMT
ENV TZ=UTC
# Mon, 10 Aug 2026 18:58:33 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.160 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 10 Aug 2026 18:58:33 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 10 Aug 2026 18:58:33 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 10 Aug 2026 18:58:33 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 10 Aug 2026 18:58:33 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 10 Aug 2026 18:58:33 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 10 Aug 2026 18:58:33 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:39a945af8df2ad9343f141c82355d3f2c4b576d432eda34c460d630607462b60`  
		Last Modified: Fri, 31 Jul 2026 22:53:51 GMT  
		Size: 29.7 MB (29736517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:144f03e9525265c1ef38f15bc84ef58ee3ed5cd72552f7a9dcabe09dec07e819`  
		Last Modified: Mon, 10 Aug 2026 18:59:00 GMT  
		Size: 7.6 MB (7553432 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59000457b8bcb4afc41269271093d7968cb77dfcd9714474f42b35df4b5f22f9`  
		Last Modified: Mon, 10 Aug 2026 18:59:05 GMT  
		Size: 238.7 MB (238702979 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:862e4071a9c54edd0a05d9b17ac5a30ce2698f4847067a3170decf990b7d1440`  
		Last Modified: Mon, 10 Aug 2026 18:58:59 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11502d4615c9c2e4d6d22152c1c2751e41da5e2266e82831ff315c2d238e04b5`  
		Last Modified: Mon, 10 Aug 2026 18:59:00 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de10887cfce8a25bb3d4f42ba1dfcb7bfb043d11c10993087d33e4581778e63a`  
		Last Modified: Mon, 10 Aug 2026 18:59:01 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e76a5680ffe8b8ecfc7c420fb0d42ec7fbcdf844595fc764fc1d6ccdfca5ed5`  
		Last Modified: Mon, 10 Aug 2026 18:59:01 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe60c34940bcec81cdbee8db92a05873b9e3c37d0e6ce96ec272b8c47ce4152b`  
		Last Modified: Mon, 10 Aug 2026 18:59:02 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.6.2-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:2696d4fae53a5e73a1cef2911af185a3a3b13dd4670572477dfbedc8f1d458d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26230 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:356fe834294cd99233e459d47ee49abba8303a90b240348450de62f8b7faab70`

```dockerfile
```

-	Layers:
	-	`sha256:425cc48ed8ec5cc409778b74367594b06d691956424586cfc4d2ce2187e7589f`  
		Last Modified: Mon, 10 Aug 2026 18:58:59 GMT  
		Size: 26.2 KB (26230 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.6.2-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:baf11b9a312489e46651363ae2b95d50182cb254051bc1b65e705a02b1658989
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.4 MB (257374010 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e26556f8bbdbd373a81421aac5013128cd73b10894f525932022f9f014f54bb`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 31 Jul 2026 21:58:10 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:58:10 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:58:10 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:58:12 GMT
ADD file:66c837214dd75fd34fbf726aabdc4c4a739297d5d853247e4c885c4bce5b7f6a in / 
# Fri, 31 Jul 2026 21:58:12 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 18:57:32 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 10 Aug 2026 18:57:32 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 10 Aug 2026 18:57:32 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 10 Aug 2026 18:57:32 GMT
ARG REPO_CHANNEL=stable
# Mon, 10 Aug 2026 18:57:32 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 10 Aug 2026 18:57:32 GMT
ARG VERSION=26.6.2.160
# Mon, 10 Aug 2026 18:57:32 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 10 Aug 2026 18:58:05 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.160 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:58:06 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.160 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:58:07 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.160 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 10 Aug 2026 18:58:07 GMT
ENV LANG=en_US.UTF-8
# Mon, 10 Aug 2026 18:58:07 GMT
ENV TZ=UTC
# Mon, 10 Aug 2026 18:58:07 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.160 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 10 Aug 2026 18:58:07 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 10 Aug 2026 18:58:07 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 10 Aug 2026 18:58:07 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 10 Aug 2026 18:58:07 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 10 Aug 2026 18:58:07 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 10 Aug 2026 18:58:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e737c5ed04040f2f0a2a5834e272c5fa0ab6a31a0641be05eb1669153c7c4cfc`  
		Last Modified: Fri, 31 Jul 2026 22:53:57 GMT  
		Size: 27.6 MB (27620032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:746cdfed569f5495ebf388dae2141ee355455325a523f21113eb2d1710c75373`  
		Last Modified: Mon, 10 Aug 2026 18:58:29 GMT  
		Size: 7.5 MB (7533598 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7824b233f42e0337def7341727b926429840258e2e43a8933ad59fca471d6607`  
		Last Modified: Mon, 10 Aug 2026 18:58:34 GMT  
		Size: 221.4 MB (221350328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f7914db4aad763c1449c16a7699ba36b93643976f2300622398c67788929c26`  
		Last Modified: Mon, 10 Aug 2026 18:58:29 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f62e1b692192fd51aa9282554e3677d7c3bc0441a744f94e30bb0a421c414036`  
		Last Modified: Mon, 10 Aug 2026 18:58:29 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be2aab5d2b76cca716ba2daf2943e320c41b8985bc65130741eb744bcb1090bf`  
		Last Modified: Mon, 10 Aug 2026 18:58:30 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:221a5079e7684470d4cb0251936c25a7d1d7354b1d4c5b26ae96482ac929369b`  
		Last Modified: Mon, 10 Aug 2026 18:58:31 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18ba416b2ada1d45ee6103561ffd26982f44a0a6f177e12e43cdefe5ab4a0dcf`  
		Last Modified: Mon, 10 Aug 2026 18:58:20 GMT  
		Size: 3.6 KB (3639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.6.2-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:7959ec153cb2d2fed162a20f729bee06bde5b752ab76b64c0916bf62851da229
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cbf9cbd1e2e53f039da826d732c7ed4c5cb985ff0eb57d9ff34253eaceef693`

```dockerfile
```

-	Layers:
	-	`sha256:eb6ddaafcbb09e3a3b89a6f36fff5ad55d363c40846a2e4b7e40b528a67d9aaa`  
		Last Modified: Mon, 10 Aug 2026 18:58:29 GMT  
		Size: 26.4 KB (26419 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.6.2.160`

```console
$ docker pull clickhouse@sha256:012b29f676305ff0f00abfee1cd9c556e6266feda085ff1c2c96851b953fcc6a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.6.2.160` - linux; amd64

```console
$ docker pull clickhouse@sha256:676ef244f11b8792fdb8d0ebd6a4b9f1222fba85fe4297377d8330e6e403fd9b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.9 MB (276862979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d53cc22903545470e149795a9264e25bf7b791292c0e3463220020cd4e4a2868`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 31 Jul 2026 21:53:09 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:53:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:53:09 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:53:11 GMT
ADD file:4501ff54ffd37d854b1cfbcd2e37da58bf8a49da3a6a82232d03e7556d337a92 in / 
# Fri, 31 Jul 2026 21:53:12 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 18:58:03 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 10 Aug 2026 18:58:03 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 10 Aug 2026 18:58:03 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 10 Aug 2026 18:58:03 GMT
ARG REPO_CHANNEL=stable
# Mon, 10 Aug 2026 18:58:03 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 10 Aug 2026 18:58:03 GMT
ARG VERSION=26.6.2.160
# Mon, 10 Aug 2026 18:58:03 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 10 Aug 2026 18:58:32 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.160 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:58:32 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.160 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:58:33 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.160 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 10 Aug 2026 18:58:33 GMT
ENV LANG=en_US.UTF-8
# Mon, 10 Aug 2026 18:58:33 GMT
ENV TZ=UTC
# Mon, 10 Aug 2026 18:58:33 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.160 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 10 Aug 2026 18:58:33 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 10 Aug 2026 18:58:33 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 10 Aug 2026 18:58:33 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 10 Aug 2026 18:58:33 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 10 Aug 2026 18:58:33 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 10 Aug 2026 18:58:33 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:39a945af8df2ad9343f141c82355d3f2c4b576d432eda34c460d630607462b60`  
		Last Modified: Fri, 31 Jul 2026 22:53:51 GMT  
		Size: 29.7 MB (29736517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:144f03e9525265c1ef38f15bc84ef58ee3ed5cd72552f7a9dcabe09dec07e819`  
		Last Modified: Mon, 10 Aug 2026 18:59:00 GMT  
		Size: 7.6 MB (7553432 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59000457b8bcb4afc41269271093d7968cb77dfcd9714474f42b35df4b5f22f9`  
		Last Modified: Mon, 10 Aug 2026 18:59:05 GMT  
		Size: 238.7 MB (238702979 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:862e4071a9c54edd0a05d9b17ac5a30ce2698f4847067a3170decf990b7d1440`  
		Last Modified: Mon, 10 Aug 2026 18:58:59 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11502d4615c9c2e4d6d22152c1c2751e41da5e2266e82831ff315c2d238e04b5`  
		Last Modified: Mon, 10 Aug 2026 18:59:00 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de10887cfce8a25bb3d4f42ba1dfcb7bfb043d11c10993087d33e4581778e63a`  
		Last Modified: Mon, 10 Aug 2026 18:59:01 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e76a5680ffe8b8ecfc7c420fb0d42ec7fbcdf844595fc764fc1d6ccdfca5ed5`  
		Last Modified: Mon, 10 Aug 2026 18:59:01 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe60c34940bcec81cdbee8db92a05873b9e3c37d0e6ce96ec272b8c47ce4152b`  
		Last Modified: Mon, 10 Aug 2026 18:59:02 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.6.2.160` - unknown; unknown

```console
$ docker pull clickhouse@sha256:2696d4fae53a5e73a1cef2911af185a3a3b13dd4670572477dfbedc8f1d458d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26230 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:356fe834294cd99233e459d47ee49abba8303a90b240348450de62f8b7faab70`

```dockerfile
```

-	Layers:
	-	`sha256:425cc48ed8ec5cc409778b74367594b06d691956424586cfc4d2ce2187e7589f`  
		Last Modified: Mon, 10 Aug 2026 18:58:59 GMT  
		Size: 26.2 KB (26230 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.6.2.160` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:baf11b9a312489e46651363ae2b95d50182cb254051bc1b65e705a02b1658989
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.4 MB (257374010 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e26556f8bbdbd373a81421aac5013128cd73b10894f525932022f9f014f54bb`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 31 Jul 2026 21:58:10 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:58:10 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:58:10 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:58:12 GMT
ADD file:66c837214dd75fd34fbf726aabdc4c4a739297d5d853247e4c885c4bce5b7f6a in / 
# Fri, 31 Jul 2026 21:58:12 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 18:57:32 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 10 Aug 2026 18:57:32 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 10 Aug 2026 18:57:32 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 10 Aug 2026 18:57:32 GMT
ARG REPO_CHANNEL=stable
# Mon, 10 Aug 2026 18:57:32 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 10 Aug 2026 18:57:32 GMT
ARG VERSION=26.6.2.160
# Mon, 10 Aug 2026 18:57:32 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 10 Aug 2026 18:58:05 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.160 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:58:06 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.160 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:58:07 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.160 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 10 Aug 2026 18:58:07 GMT
ENV LANG=en_US.UTF-8
# Mon, 10 Aug 2026 18:58:07 GMT
ENV TZ=UTC
# Mon, 10 Aug 2026 18:58:07 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.160 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 10 Aug 2026 18:58:07 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 10 Aug 2026 18:58:07 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 10 Aug 2026 18:58:07 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 10 Aug 2026 18:58:07 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 10 Aug 2026 18:58:07 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 10 Aug 2026 18:58:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e737c5ed04040f2f0a2a5834e272c5fa0ab6a31a0641be05eb1669153c7c4cfc`  
		Last Modified: Fri, 31 Jul 2026 22:53:57 GMT  
		Size: 27.6 MB (27620032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:746cdfed569f5495ebf388dae2141ee355455325a523f21113eb2d1710c75373`  
		Last Modified: Mon, 10 Aug 2026 18:58:29 GMT  
		Size: 7.5 MB (7533598 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7824b233f42e0337def7341727b926429840258e2e43a8933ad59fca471d6607`  
		Last Modified: Mon, 10 Aug 2026 18:58:34 GMT  
		Size: 221.4 MB (221350328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f7914db4aad763c1449c16a7699ba36b93643976f2300622398c67788929c26`  
		Last Modified: Mon, 10 Aug 2026 18:58:29 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f62e1b692192fd51aa9282554e3677d7c3bc0441a744f94e30bb0a421c414036`  
		Last Modified: Mon, 10 Aug 2026 18:58:29 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be2aab5d2b76cca716ba2daf2943e320c41b8985bc65130741eb744bcb1090bf`  
		Last Modified: Mon, 10 Aug 2026 18:58:30 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:221a5079e7684470d4cb0251936c25a7d1d7354b1d4c5b26ae96482ac929369b`  
		Last Modified: Mon, 10 Aug 2026 18:58:31 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18ba416b2ada1d45ee6103561ffd26982f44a0a6f177e12e43cdefe5ab4a0dcf`  
		Last Modified: Mon, 10 Aug 2026 18:58:20 GMT  
		Size: 3.6 KB (3639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.6.2.160` - unknown; unknown

```console
$ docker pull clickhouse@sha256:7959ec153cb2d2fed162a20f729bee06bde5b752ab76b64c0916bf62851da229
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cbf9cbd1e2e53f039da826d732c7ed4c5cb985ff0eb57d9ff34253eaceef693`

```dockerfile
```

-	Layers:
	-	`sha256:eb6ddaafcbb09e3a3b89a6f36fff5ad55d363c40846a2e4b7e40b528a67d9aaa`  
		Last Modified: Mon, 10 Aug 2026 18:58:29 GMT  
		Size: 26.4 KB (26419 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.6.2.160-jammy`

```console
$ docker pull clickhouse@sha256:012b29f676305ff0f00abfee1cd9c556e6266feda085ff1c2c96851b953fcc6a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.6.2.160-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:676ef244f11b8792fdb8d0ebd6a4b9f1222fba85fe4297377d8330e6e403fd9b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.9 MB (276862979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d53cc22903545470e149795a9264e25bf7b791292c0e3463220020cd4e4a2868`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 31 Jul 2026 21:53:09 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:53:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:53:09 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:53:11 GMT
ADD file:4501ff54ffd37d854b1cfbcd2e37da58bf8a49da3a6a82232d03e7556d337a92 in / 
# Fri, 31 Jul 2026 21:53:12 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 18:58:03 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 10 Aug 2026 18:58:03 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 10 Aug 2026 18:58:03 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 10 Aug 2026 18:58:03 GMT
ARG REPO_CHANNEL=stable
# Mon, 10 Aug 2026 18:58:03 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 10 Aug 2026 18:58:03 GMT
ARG VERSION=26.6.2.160
# Mon, 10 Aug 2026 18:58:03 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 10 Aug 2026 18:58:32 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.160 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:58:32 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.160 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:58:33 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.160 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 10 Aug 2026 18:58:33 GMT
ENV LANG=en_US.UTF-8
# Mon, 10 Aug 2026 18:58:33 GMT
ENV TZ=UTC
# Mon, 10 Aug 2026 18:58:33 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.160 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 10 Aug 2026 18:58:33 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 10 Aug 2026 18:58:33 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 10 Aug 2026 18:58:33 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 10 Aug 2026 18:58:33 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 10 Aug 2026 18:58:33 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 10 Aug 2026 18:58:33 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:39a945af8df2ad9343f141c82355d3f2c4b576d432eda34c460d630607462b60`  
		Last Modified: Fri, 31 Jul 2026 22:53:51 GMT  
		Size: 29.7 MB (29736517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:144f03e9525265c1ef38f15bc84ef58ee3ed5cd72552f7a9dcabe09dec07e819`  
		Last Modified: Mon, 10 Aug 2026 18:59:00 GMT  
		Size: 7.6 MB (7553432 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59000457b8bcb4afc41269271093d7968cb77dfcd9714474f42b35df4b5f22f9`  
		Last Modified: Mon, 10 Aug 2026 18:59:05 GMT  
		Size: 238.7 MB (238702979 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:862e4071a9c54edd0a05d9b17ac5a30ce2698f4847067a3170decf990b7d1440`  
		Last Modified: Mon, 10 Aug 2026 18:58:59 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11502d4615c9c2e4d6d22152c1c2751e41da5e2266e82831ff315c2d238e04b5`  
		Last Modified: Mon, 10 Aug 2026 18:59:00 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de10887cfce8a25bb3d4f42ba1dfcb7bfb043d11c10993087d33e4581778e63a`  
		Last Modified: Mon, 10 Aug 2026 18:59:01 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e76a5680ffe8b8ecfc7c420fb0d42ec7fbcdf844595fc764fc1d6ccdfca5ed5`  
		Last Modified: Mon, 10 Aug 2026 18:59:01 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe60c34940bcec81cdbee8db92a05873b9e3c37d0e6ce96ec272b8c47ce4152b`  
		Last Modified: Mon, 10 Aug 2026 18:59:02 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.6.2.160-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:2696d4fae53a5e73a1cef2911af185a3a3b13dd4670572477dfbedc8f1d458d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 KB (26230 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:356fe834294cd99233e459d47ee49abba8303a90b240348450de62f8b7faab70`

```dockerfile
```

-	Layers:
	-	`sha256:425cc48ed8ec5cc409778b74367594b06d691956424586cfc4d2ce2187e7589f`  
		Last Modified: Mon, 10 Aug 2026 18:58:59 GMT  
		Size: 26.2 KB (26230 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.6.2.160-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:baf11b9a312489e46651363ae2b95d50182cb254051bc1b65e705a02b1658989
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.4 MB (257374010 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e26556f8bbdbd373a81421aac5013128cd73b10894f525932022f9f014f54bb`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 31 Jul 2026 21:58:10 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:58:10 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:58:10 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:58:12 GMT
ADD file:66c837214dd75fd34fbf726aabdc4c4a739297d5d853247e4c885c4bce5b7f6a in / 
# Fri, 31 Jul 2026 21:58:12 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 18:57:32 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 10 Aug 2026 18:57:32 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 10 Aug 2026 18:57:32 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 10 Aug 2026 18:57:32 GMT
ARG REPO_CHANNEL=stable
# Mon, 10 Aug 2026 18:57:32 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 10 Aug 2026 18:57:32 GMT
ARG VERSION=26.6.2.160
# Mon, 10 Aug 2026 18:57:32 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 10 Aug 2026 18:58:05 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.160 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:58:06 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.160 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:58:07 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.160 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 10 Aug 2026 18:58:07 GMT
ENV LANG=en_US.UTF-8
# Mon, 10 Aug 2026 18:58:07 GMT
ENV TZ=UTC
# Mon, 10 Aug 2026 18:58:07 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.6.2.160 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 10 Aug 2026 18:58:07 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 10 Aug 2026 18:58:07 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 10 Aug 2026 18:58:07 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 10 Aug 2026 18:58:07 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 10 Aug 2026 18:58:07 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 10 Aug 2026 18:58:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e737c5ed04040f2f0a2a5834e272c5fa0ab6a31a0641be05eb1669153c7c4cfc`  
		Last Modified: Fri, 31 Jul 2026 22:53:57 GMT  
		Size: 27.6 MB (27620032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:746cdfed569f5495ebf388dae2141ee355455325a523f21113eb2d1710c75373`  
		Last Modified: Mon, 10 Aug 2026 18:58:29 GMT  
		Size: 7.5 MB (7533598 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7824b233f42e0337def7341727b926429840258e2e43a8933ad59fca471d6607`  
		Last Modified: Mon, 10 Aug 2026 18:58:34 GMT  
		Size: 221.4 MB (221350328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f7914db4aad763c1449c16a7699ba36b93643976f2300622398c67788929c26`  
		Last Modified: Mon, 10 Aug 2026 18:58:29 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f62e1b692192fd51aa9282554e3677d7c3bc0441a744f94e30bb0a421c414036`  
		Last Modified: Mon, 10 Aug 2026 18:58:29 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be2aab5d2b76cca716ba2daf2943e320c41b8985bc65130741eb744bcb1090bf`  
		Last Modified: Mon, 10 Aug 2026 18:58:30 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:221a5079e7684470d4cb0251936c25a7d1d7354b1d4c5b26ae96482ac929369b`  
		Last Modified: Mon, 10 Aug 2026 18:58:31 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18ba416b2ada1d45ee6103561ffd26982f44a0a6f177e12e43cdefe5ab4a0dcf`  
		Last Modified: Mon, 10 Aug 2026 18:58:20 GMT  
		Size: 3.6 KB (3639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.6.2.160-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:7959ec153cb2d2fed162a20f729bee06bde5b752ab76b64c0916bf62851da229
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 KB (26419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cbf9cbd1e2e53f039da826d732c7ed4c5cb985ff0eb57d9ff34253eaceef693`

```dockerfile
```

-	Layers:
	-	`sha256:eb6ddaafcbb09e3a3b89a6f36fff5ad55d363c40846a2e4b7e40b528a67d9aaa`  
		Last Modified: Mon, 10 Aug 2026 18:58:29 GMT  
		Size: 26.4 KB (26419 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.7`

```console
$ docker pull clickhouse@sha256:51bb50a6b7e86a653e7027dea90d17ad8c7fd0a88eb176f40b3808c9791dbb83
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.7` - linux; amd64

```console
$ docker pull clickhouse@sha256:fc803a34239ad370a4617d541df60020fcbc0bb8448707048b45d8033081af93
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.8 MB (266803518 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e4039468bcb9cdfeb0790e346b11edbacd8db0153932fac64982235c0a627dd`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 31 Jul 2026 21:53:09 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:53:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:53:09 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:53:11 GMT
ADD file:4501ff54ffd37d854b1cfbcd2e37da58bf8a49da3a6a82232d03e7556d337a92 in / 
# Fri, 31 Jul 2026 21:53:12 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 18:57:40 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 10 Aug 2026 18:57:40 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 10 Aug 2026 18:57:40 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 10 Aug 2026 18:57:40 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 10 Aug 2026 18:57:40 GMT
ARG REPO_CHANNEL=stable
# Mon, 10 Aug 2026 18:57:40 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 10 Aug 2026 18:57:40 GMT
ARG VERSION=26.7.3.19
# Mon, 10 Aug 2026 18:57:40 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 10 Aug 2026 18:58:07 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:58:07 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:58:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 10 Aug 2026 18:58:08 GMT
ENV LANG=en_US.UTF-8
# Mon, 10 Aug 2026 18:58:08 GMT
ENV TZ=UTC
# Mon, 10 Aug 2026 18:58:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 10 Aug 2026 18:58:09 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 10 Aug 2026 18:58:09 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 10 Aug 2026 18:58:09 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 10 Aug 2026 18:58:09 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 10 Aug 2026 18:58:09 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 10 Aug 2026 18:58:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:39a945af8df2ad9343f141c82355d3f2c4b576d432eda34c460d630607462b60`  
		Last Modified: Fri, 31 Jul 2026 22:53:51 GMT  
		Size: 29.7 MB (29736517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee9defcdce1fe41e06f67861fc74225c6acf642d6e5619eff74b90e5e705e7b4`  
		Last Modified: Mon, 10 Aug 2026 18:58:35 GMT  
		Size: 7.6 MB (7553331 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a573d85f47523c5deed30a6c41abeb8a781cc054ba77db50055e4c80ec07cd5`  
		Last Modified: Mon, 10 Aug 2026 18:58:39 GMT  
		Size: 228.6 MB (228643618 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e80640194d09aa35a59b9838b13fc741436d157839379bb26b481138402732e`  
		Last Modified: Mon, 10 Aug 2026 18:58:34 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf2f3cb9b49f9f680eed340145f337c53d1294ca9c79fd4c02a562323833ba0c`  
		Last Modified: Mon, 10 Aug 2026 18:58:34 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36e3dc07f71901b698b9e2cc2f2aec6a2301bcb691d1e91f29ab3e87797ac8c1`  
		Last Modified: Mon, 10 Aug 2026 18:58:29 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1dd7f7a4f84430bad5df6112c9cc444217852f4058887cd7766caac5dff281f`  
		Last Modified: Mon, 10 Aug 2026 18:58:36 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bd5cdd11a7ad411c923779aa149aa6628a395751867d40706047c517a40bda9`  
		Last Modified: Mon, 10 Aug 2026 18:58:36 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7` - unknown; unknown

```console
$ docker pull clickhouse@sha256:4b47c2d6027c3d56fc8b6339e4baf3bf28205ce9aee724098e923f909de111d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.3 KB (27345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2b0d590ff82539ecc4a3c3228cf4fd2950ce6adad49a441959220cda8bb5d64`

```dockerfile
```

-	Layers:
	-	`sha256:5613acb9d792f190bef741f475294f176ddf9e21f43f9ddb01fadd7253a06916`  
		Last Modified: Mon, 10 Aug 2026 18:58:34 GMT  
		Size: 27.3 KB (27345 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.7` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:faf8fba8f48da23e22f4e543d2be324d1e00a5c53de568c8683f9454c46a16fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.1 MB (250117809 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f81304f985fdd20f9bb6f2870b0cafe54a35db9f686579b40444c06825967597`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 31 Jul 2026 21:58:10 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:58:10 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:58:10 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:58:12 GMT
ADD file:66c837214dd75fd34fbf726aabdc4c4a739297d5d853247e4c885c4bce5b7f6a in / 
# Fri, 31 Jul 2026 21:58:12 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 18:57:22 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 10 Aug 2026 18:57:22 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 10 Aug 2026 18:57:22 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 10 Aug 2026 18:57:22 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 10 Aug 2026 18:57:22 GMT
ARG REPO_CHANNEL=stable
# Mon, 10 Aug 2026 18:57:22 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 10 Aug 2026 18:57:22 GMT
ARG VERSION=26.7.3.19
# Mon, 10 Aug 2026 18:57:22 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 10 Aug 2026 18:57:51 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:57:51 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:57:52 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 10 Aug 2026 18:57:52 GMT
ENV LANG=en_US.UTF-8
# Mon, 10 Aug 2026 18:57:52 GMT
ENV TZ=UTC
# Mon, 10 Aug 2026 18:57:53 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 10 Aug 2026 18:57:53 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 10 Aug 2026 18:57:53 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 10 Aug 2026 18:57:53 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 10 Aug 2026 18:57:53 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 10 Aug 2026 18:57:53 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 10 Aug 2026 18:57:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e737c5ed04040f2f0a2a5834e272c5fa0ab6a31a0641be05eb1669153c7c4cfc`  
		Last Modified: Fri, 31 Jul 2026 22:53:57 GMT  
		Size: 27.6 MB (27620032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:370fdc8a3a77d04dd01b8d1343ebe73041876360ea1bdd1af82691bf798f8fff`  
		Last Modified: Mon, 10 Aug 2026 18:58:14 GMT  
		Size: 7.5 MB (7533571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4bedb991004d2c0e951479f1c6735eeaffb5d39205b2622e5e2a4222fa2c68b`  
		Last Modified: Mon, 10 Aug 2026 18:58:18 GMT  
		Size: 214.1 MB (214094156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdb8a5ff846e988b6ba47217ce2bc94e192cc2e7638150f91878549d95711ed9`  
		Last Modified: Mon, 10 Aug 2026 18:58:14 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da60e7a11b49608b70b9c099afce6013ebba2b0afc47fe05bb982dc0e7003ef9`  
		Last Modified: Mon, 10 Aug 2026 18:58:14 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ef7968564bc7d2a9d85ecf9cdef3f28b6e872145af7f884eb3d84d050dacb1f`  
		Last Modified: Mon, 10 Aug 2026 18:58:15 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b4e058ea61d8b5f2db835b749d9a75ffa9aa3e186d01396fa2631d0618da0a5`  
		Last Modified: Mon, 10 Aug 2026 18:58:16 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4aa11efcdad9b40d3a14bf0ae90e4f1238c6a2d22b296a391e7faac2b85a8173`  
		Last Modified: Mon, 10 Aug 2026 18:58:16 GMT  
		Size: 3.6 KB (3639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7` - unknown; unknown

```console
$ docker pull clickhouse@sha256:6607014eea1866bd04a64531b99dbeb9c4e1ab4a02599163ddfb94e67bf19509
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 KB (27557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1757c010b01f8bd4836f825a3d8f13719190fda4c40412ae05847c3996e1069d`

```dockerfile
```

-	Layers:
	-	`sha256:e6cc7d94626794d43f0bc1ab0afbddbb4433caf093b7c0508ba30a5afd692909`  
		Last Modified: Mon, 10 Aug 2026 18:58:14 GMT  
		Size: 27.6 KB (27557 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.7-jammy`

```console
$ docker pull clickhouse@sha256:51bb50a6b7e86a653e7027dea90d17ad8c7fd0a88eb176f40b3808c9791dbb83
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.7-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:fc803a34239ad370a4617d541df60020fcbc0bb8448707048b45d8033081af93
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.8 MB (266803518 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e4039468bcb9cdfeb0790e346b11edbacd8db0153932fac64982235c0a627dd`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 31 Jul 2026 21:53:09 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:53:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:53:09 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:53:11 GMT
ADD file:4501ff54ffd37d854b1cfbcd2e37da58bf8a49da3a6a82232d03e7556d337a92 in / 
# Fri, 31 Jul 2026 21:53:12 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 18:57:40 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 10 Aug 2026 18:57:40 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 10 Aug 2026 18:57:40 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 10 Aug 2026 18:57:40 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 10 Aug 2026 18:57:40 GMT
ARG REPO_CHANNEL=stable
# Mon, 10 Aug 2026 18:57:40 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 10 Aug 2026 18:57:40 GMT
ARG VERSION=26.7.3.19
# Mon, 10 Aug 2026 18:57:40 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 10 Aug 2026 18:58:07 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:58:07 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:58:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 10 Aug 2026 18:58:08 GMT
ENV LANG=en_US.UTF-8
# Mon, 10 Aug 2026 18:58:08 GMT
ENV TZ=UTC
# Mon, 10 Aug 2026 18:58:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 10 Aug 2026 18:58:09 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 10 Aug 2026 18:58:09 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 10 Aug 2026 18:58:09 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 10 Aug 2026 18:58:09 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 10 Aug 2026 18:58:09 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 10 Aug 2026 18:58:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:39a945af8df2ad9343f141c82355d3f2c4b576d432eda34c460d630607462b60`  
		Last Modified: Fri, 31 Jul 2026 22:53:51 GMT  
		Size: 29.7 MB (29736517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee9defcdce1fe41e06f67861fc74225c6acf642d6e5619eff74b90e5e705e7b4`  
		Last Modified: Mon, 10 Aug 2026 18:58:35 GMT  
		Size: 7.6 MB (7553331 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a573d85f47523c5deed30a6c41abeb8a781cc054ba77db50055e4c80ec07cd5`  
		Last Modified: Mon, 10 Aug 2026 18:58:39 GMT  
		Size: 228.6 MB (228643618 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e80640194d09aa35a59b9838b13fc741436d157839379bb26b481138402732e`  
		Last Modified: Mon, 10 Aug 2026 18:58:34 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf2f3cb9b49f9f680eed340145f337c53d1294ca9c79fd4c02a562323833ba0c`  
		Last Modified: Mon, 10 Aug 2026 18:58:34 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36e3dc07f71901b698b9e2cc2f2aec6a2301bcb691d1e91f29ab3e87797ac8c1`  
		Last Modified: Mon, 10 Aug 2026 18:58:29 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1dd7f7a4f84430bad5df6112c9cc444217852f4058887cd7766caac5dff281f`  
		Last Modified: Mon, 10 Aug 2026 18:58:36 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bd5cdd11a7ad411c923779aa149aa6628a395751867d40706047c517a40bda9`  
		Last Modified: Mon, 10 Aug 2026 18:58:36 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:4b47c2d6027c3d56fc8b6339e4baf3bf28205ce9aee724098e923f909de111d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.3 KB (27345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2b0d590ff82539ecc4a3c3228cf4fd2950ce6adad49a441959220cda8bb5d64`

```dockerfile
```

-	Layers:
	-	`sha256:5613acb9d792f190bef741f475294f176ddf9e21f43f9ddb01fadd7253a06916`  
		Last Modified: Mon, 10 Aug 2026 18:58:34 GMT  
		Size: 27.3 KB (27345 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.7-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:faf8fba8f48da23e22f4e543d2be324d1e00a5c53de568c8683f9454c46a16fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.1 MB (250117809 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f81304f985fdd20f9bb6f2870b0cafe54a35db9f686579b40444c06825967597`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 31 Jul 2026 21:58:10 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:58:10 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:58:10 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:58:12 GMT
ADD file:66c837214dd75fd34fbf726aabdc4c4a739297d5d853247e4c885c4bce5b7f6a in / 
# Fri, 31 Jul 2026 21:58:12 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 18:57:22 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 10 Aug 2026 18:57:22 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 10 Aug 2026 18:57:22 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 10 Aug 2026 18:57:22 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 10 Aug 2026 18:57:22 GMT
ARG REPO_CHANNEL=stable
# Mon, 10 Aug 2026 18:57:22 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 10 Aug 2026 18:57:22 GMT
ARG VERSION=26.7.3.19
# Mon, 10 Aug 2026 18:57:22 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 10 Aug 2026 18:57:51 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:57:51 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:57:52 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 10 Aug 2026 18:57:52 GMT
ENV LANG=en_US.UTF-8
# Mon, 10 Aug 2026 18:57:52 GMT
ENV TZ=UTC
# Mon, 10 Aug 2026 18:57:53 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 10 Aug 2026 18:57:53 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 10 Aug 2026 18:57:53 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 10 Aug 2026 18:57:53 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 10 Aug 2026 18:57:53 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 10 Aug 2026 18:57:53 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 10 Aug 2026 18:57:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e737c5ed04040f2f0a2a5834e272c5fa0ab6a31a0641be05eb1669153c7c4cfc`  
		Last Modified: Fri, 31 Jul 2026 22:53:57 GMT  
		Size: 27.6 MB (27620032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:370fdc8a3a77d04dd01b8d1343ebe73041876360ea1bdd1af82691bf798f8fff`  
		Last Modified: Mon, 10 Aug 2026 18:58:14 GMT  
		Size: 7.5 MB (7533571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4bedb991004d2c0e951479f1c6735eeaffb5d39205b2622e5e2a4222fa2c68b`  
		Last Modified: Mon, 10 Aug 2026 18:58:18 GMT  
		Size: 214.1 MB (214094156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdb8a5ff846e988b6ba47217ce2bc94e192cc2e7638150f91878549d95711ed9`  
		Last Modified: Mon, 10 Aug 2026 18:58:14 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da60e7a11b49608b70b9c099afce6013ebba2b0afc47fe05bb982dc0e7003ef9`  
		Last Modified: Mon, 10 Aug 2026 18:58:14 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ef7968564bc7d2a9d85ecf9cdef3f28b6e872145af7f884eb3d84d050dacb1f`  
		Last Modified: Mon, 10 Aug 2026 18:58:15 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b4e058ea61d8b5f2db835b749d9a75ffa9aa3e186d01396fa2631d0618da0a5`  
		Last Modified: Mon, 10 Aug 2026 18:58:16 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4aa11efcdad9b40d3a14bf0ae90e4f1238c6a2d22b296a391e7faac2b85a8173`  
		Last Modified: Mon, 10 Aug 2026 18:58:16 GMT  
		Size: 3.6 KB (3639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:6607014eea1866bd04a64531b99dbeb9c4e1ab4a02599163ddfb94e67bf19509
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 KB (27557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1757c010b01f8bd4836f825a3d8f13719190fda4c40412ae05847c3996e1069d`

```dockerfile
```

-	Layers:
	-	`sha256:e6cc7d94626794d43f0bc1ab0afbddbb4433caf093b7c0508ba30a5afd692909`  
		Last Modified: Mon, 10 Aug 2026 18:58:14 GMT  
		Size: 27.6 KB (27557 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.7.3`

```console
$ docker pull clickhouse@sha256:51bb50a6b7e86a653e7027dea90d17ad8c7fd0a88eb176f40b3808c9791dbb83
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.7.3` - linux; amd64

```console
$ docker pull clickhouse@sha256:fc803a34239ad370a4617d541df60020fcbc0bb8448707048b45d8033081af93
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.8 MB (266803518 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e4039468bcb9cdfeb0790e346b11edbacd8db0153932fac64982235c0a627dd`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 31 Jul 2026 21:53:09 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:53:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:53:09 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:53:11 GMT
ADD file:4501ff54ffd37d854b1cfbcd2e37da58bf8a49da3a6a82232d03e7556d337a92 in / 
# Fri, 31 Jul 2026 21:53:12 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 18:57:40 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 10 Aug 2026 18:57:40 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 10 Aug 2026 18:57:40 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 10 Aug 2026 18:57:40 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 10 Aug 2026 18:57:40 GMT
ARG REPO_CHANNEL=stable
# Mon, 10 Aug 2026 18:57:40 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 10 Aug 2026 18:57:40 GMT
ARG VERSION=26.7.3.19
# Mon, 10 Aug 2026 18:57:40 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 10 Aug 2026 18:58:07 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:58:07 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:58:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 10 Aug 2026 18:58:08 GMT
ENV LANG=en_US.UTF-8
# Mon, 10 Aug 2026 18:58:08 GMT
ENV TZ=UTC
# Mon, 10 Aug 2026 18:58:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 10 Aug 2026 18:58:09 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 10 Aug 2026 18:58:09 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 10 Aug 2026 18:58:09 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 10 Aug 2026 18:58:09 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 10 Aug 2026 18:58:09 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 10 Aug 2026 18:58:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:39a945af8df2ad9343f141c82355d3f2c4b576d432eda34c460d630607462b60`  
		Last Modified: Fri, 31 Jul 2026 22:53:51 GMT  
		Size: 29.7 MB (29736517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee9defcdce1fe41e06f67861fc74225c6acf642d6e5619eff74b90e5e705e7b4`  
		Last Modified: Mon, 10 Aug 2026 18:58:35 GMT  
		Size: 7.6 MB (7553331 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a573d85f47523c5deed30a6c41abeb8a781cc054ba77db50055e4c80ec07cd5`  
		Last Modified: Mon, 10 Aug 2026 18:58:39 GMT  
		Size: 228.6 MB (228643618 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e80640194d09aa35a59b9838b13fc741436d157839379bb26b481138402732e`  
		Last Modified: Mon, 10 Aug 2026 18:58:34 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf2f3cb9b49f9f680eed340145f337c53d1294ca9c79fd4c02a562323833ba0c`  
		Last Modified: Mon, 10 Aug 2026 18:58:34 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36e3dc07f71901b698b9e2cc2f2aec6a2301bcb691d1e91f29ab3e87797ac8c1`  
		Last Modified: Mon, 10 Aug 2026 18:58:29 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1dd7f7a4f84430bad5df6112c9cc444217852f4058887cd7766caac5dff281f`  
		Last Modified: Mon, 10 Aug 2026 18:58:36 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bd5cdd11a7ad411c923779aa149aa6628a395751867d40706047c517a40bda9`  
		Last Modified: Mon, 10 Aug 2026 18:58:36 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7.3` - unknown; unknown

```console
$ docker pull clickhouse@sha256:4b47c2d6027c3d56fc8b6339e4baf3bf28205ce9aee724098e923f909de111d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.3 KB (27345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2b0d590ff82539ecc4a3c3228cf4fd2950ce6adad49a441959220cda8bb5d64`

```dockerfile
```

-	Layers:
	-	`sha256:5613acb9d792f190bef741f475294f176ddf9e21f43f9ddb01fadd7253a06916`  
		Last Modified: Mon, 10 Aug 2026 18:58:34 GMT  
		Size: 27.3 KB (27345 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.7.3` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:faf8fba8f48da23e22f4e543d2be324d1e00a5c53de568c8683f9454c46a16fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.1 MB (250117809 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f81304f985fdd20f9bb6f2870b0cafe54a35db9f686579b40444c06825967597`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 31 Jul 2026 21:58:10 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:58:10 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:58:10 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:58:12 GMT
ADD file:66c837214dd75fd34fbf726aabdc4c4a739297d5d853247e4c885c4bce5b7f6a in / 
# Fri, 31 Jul 2026 21:58:12 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 18:57:22 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 10 Aug 2026 18:57:22 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 10 Aug 2026 18:57:22 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 10 Aug 2026 18:57:22 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 10 Aug 2026 18:57:22 GMT
ARG REPO_CHANNEL=stable
# Mon, 10 Aug 2026 18:57:22 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 10 Aug 2026 18:57:22 GMT
ARG VERSION=26.7.3.19
# Mon, 10 Aug 2026 18:57:22 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 10 Aug 2026 18:57:51 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:57:51 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:57:52 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 10 Aug 2026 18:57:52 GMT
ENV LANG=en_US.UTF-8
# Mon, 10 Aug 2026 18:57:52 GMT
ENV TZ=UTC
# Mon, 10 Aug 2026 18:57:53 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 10 Aug 2026 18:57:53 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 10 Aug 2026 18:57:53 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 10 Aug 2026 18:57:53 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 10 Aug 2026 18:57:53 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 10 Aug 2026 18:57:53 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 10 Aug 2026 18:57:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e737c5ed04040f2f0a2a5834e272c5fa0ab6a31a0641be05eb1669153c7c4cfc`  
		Last Modified: Fri, 31 Jul 2026 22:53:57 GMT  
		Size: 27.6 MB (27620032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:370fdc8a3a77d04dd01b8d1343ebe73041876360ea1bdd1af82691bf798f8fff`  
		Last Modified: Mon, 10 Aug 2026 18:58:14 GMT  
		Size: 7.5 MB (7533571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4bedb991004d2c0e951479f1c6735eeaffb5d39205b2622e5e2a4222fa2c68b`  
		Last Modified: Mon, 10 Aug 2026 18:58:18 GMT  
		Size: 214.1 MB (214094156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdb8a5ff846e988b6ba47217ce2bc94e192cc2e7638150f91878549d95711ed9`  
		Last Modified: Mon, 10 Aug 2026 18:58:14 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da60e7a11b49608b70b9c099afce6013ebba2b0afc47fe05bb982dc0e7003ef9`  
		Last Modified: Mon, 10 Aug 2026 18:58:14 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ef7968564bc7d2a9d85ecf9cdef3f28b6e872145af7f884eb3d84d050dacb1f`  
		Last Modified: Mon, 10 Aug 2026 18:58:15 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b4e058ea61d8b5f2db835b749d9a75ffa9aa3e186d01396fa2631d0618da0a5`  
		Last Modified: Mon, 10 Aug 2026 18:58:16 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4aa11efcdad9b40d3a14bf0ae90e4f1238c6a2d22b296a391e7faac2b85a8173`  
		Last Modified: Mon, 10 Aug 2026 18:58:16 GMT  
		Size: 3.6 KB (3639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7.3` - unknown; unknown

```console
$ docker pull clickhouse@sha256:6607014eea1866bd04a64531b99dbeb9c4e1ab4a02599163ddfb94e67bf19509
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 KB (27557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1757c010b01f8bd4836f825a3d8f13719190fda4c40412ae05847c3996e1069d`

```dockerfile
```

-	Layers:
	-	`sha256:e6cc7d94626794d43f0bc1ab0afbddbb4433caf093b7c0508ba30a5afd692909`  
		Last Modified: Mon, 10 Aug 2026 18:58:14 GMT  
		Size: 27.6 KB (27557 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.7.3-jammy`

```console
$ docker pull clickhouse@sha256:51bb50a6b7e86a653e7027dea90d17ad8c7fd0a88eb176f40b3808c9791dbb83
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.7.3-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:fc803a34239ad370a4617d541df60020fcbc0bb8448707048b45d8033081af93
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.8 MB (266803518 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e4039468bcb9cdfeb0790e346b11edbacd8db0153932fac64982235c0a627dd`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 31 Jul 2026 21:53:09 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:53:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:53:09 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:53:11 GMT
ADD file:4501ff54ffd37d854b1cfbcd2e37da58bf8a49da3a6a82232d03e7556d337a92 in / 
# Fri, 31 Jul 2026 21:53:12 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 18:57:40 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 10 Aug 2026 18:57:40 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 10 Aug 2026 18:57:40 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 10 Aug 2026 18:57:40 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 10 Aug 2026 18:57:40 GMT
ARG REPO_CHANNEL=stable
# Mon, 10 Aug 2026 18:57:40 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 10 Aug 2026 18:57:40 GMT
ARG VERSION=26.7.3.19
# Mon, 10 Aug 2026 18:57:40 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 10 Aug 2026 18:58:07 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:58:07 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:58:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 10 Aug 2026 18:58:08 GMT
ENV LANG=en_US.UTF-8
# Mon, 10 Aug 2026 18:58:08 GMT
ENV TZ=UTC
# Mon, 10 Aug 2026 18:58:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 10 Aug 2026 18:58:09 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 10 Aug 2026 18:58:09 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 10 Aug 2026 18:58:09 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 10 Aug 2026 18:58:09 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 10 Aug 2026 18:58:09 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 10 Aug 2026 18:58:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:39a945af8df2ad9343f141c82355d3f2c4b576d432eda34c460d630607462b60`  
		Last Modified: Fri, 31 Jul 2026 22:53:51 GMT  
		Size: 29.7 MB (29736517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee9defcdce1fe41e06f67861fc74225c6acf642d6e5619eff74b90e5e705e7b4`  
		Last Modified: Mon, 10 Aug 2026 18:58:35 GMT  
		Size: 7.6 MB (7553331 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a573d85f47523c5deed30a6c41abeb8a781cc054ba77db50055e4c80ec07cd5`  
		Last Modified: Mon, 10 Aug 2026 18:58:39 GMT  
		Size: 228.6 MB (228643618 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e80640194d09aa35a59b9838b13fc741436d157839379bb26b481138402732e`  
		Last Modified: Mon, 10 Aug 2026 18:58:34 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf2f3cb9b49f9f680eed340145f337c53d1294ca9c79fd4c02a562323833ba0c`  
		Last Modified: Mon, 10 Aug 2026 18:58:34 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36e3dc07f71901b698b9e2cc2f2aec6a2301bcb691d1e91f29ab3e87797ac8c1`  
		Last Modified: Mon, 10 Aug 2026 18:58:29 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1dd7f7a4f84430bad5df6112c9cc444217852f4058887cd7766caac5dff281f`  
		Last Modified: Mon, 10 Aug 2026 18:58:36 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bd5cdd11a7ad411c923779aa149aa6628a395751867d40706047c517a40bda9`  
		Last Modified: Mon, 10 Aug 2026 18:58:36 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7.3-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:4b47c2d6027c3d56fc8b6339e4baf3bf28205ce9aee724098e923f909de111d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.3 KB (27345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2b0d590ff82539ecc4a3c3228cf4fd2950ce6adad49a441959220cda8bb5d64`

```dockerfile
```

-	Layers:
	-	`sha256:5613acb9d792f190bef741f475294f176ddf9e21f43f9ddb01fadd7253a06916`  
		Last Modified: Mon, 10 Aug 2026 18:58:34 GMT  
		Size: 27.3 KB (27345 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.7.3-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:faf8fba8f48da23e22f4e543d2be324d1e00a5c53de568c8683f9454c46a16fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.1 MB (250117809 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f81304f985fdd20f9bb6f2870b0cafe54a35db9f686579b40444c06825967597`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 31 Jul 2026 21:58:10 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:58:10 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:58:10 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:58:12 GMT
ADD file:66c837214dd75fd34fbf726aabdc4c4a739297d5d853247e4c885c4bce5b7f6a in / 
# Fri, 31 Jul 2026 21:58:12 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 18:57:22 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 10 Aug 2026 18:57:22 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 10 Aug 2026 18:57:22 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 10 Aug 2026 18:57:22 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 10 Aug 2026 18:57:22 GMT
ARG REPO_CHANNEL=stable
# Mon, 10 Aug 2026 18:57:22 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 10 Aug 2026 18:57:22 GMT
ARG VERSION=26.7.3.19
# Mon, 10 Aug 2026 18:57:22 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 10 Aug 2026 18:57:51 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:57:51 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:57:52 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 10 Aug 2026 18:57:52 GMT
ENV LANG=en_US.UTF-8
# Mon, 10 Aug 2026 18:57:52 GMT
ENV TZ=UTC
# Mon, 10 Aug 2026 18:57:53 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 10 Aug 2026 18:57:53 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 10 Aug 2026 18:57:53 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 10 Aug 2026 18:57:53 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 10 Aug 2026 18:57:53 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 10 Aug 2026 18:57:53 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 10 Aug 2026 18:57:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e737c5ed04040f2f0a2a5834e272c5fa0ab6a31a0641be05eb1669153c7c4cfc`  
		Last Modified: Fri, 31 Jul 2026 22:53:57 GMT  
		Size: 27.6 MB (27620032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:370fdc8a3a77d04dd01b8d1343ebe73041876360ea1bdd1af82691bf798f8fff`  
		Last Modified: Mon, 10 Aug 2026 18:58:14 GMT  
		Size: 7.5 MB (7533571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4bedb991004d2c0e951479f1c6735eeaffb5d39205b2622e5e2a4222fa2c68b`  
		Last Modified: Mon, 10 Aug 2026 18:58:18 GMT  
		Size: 214.1 MB (214094156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdb8a5ff846e988b6ba47217ce2bc94e192cc2e7638150f91878549d95711ed9`  
		Last Modified: Mon, 10 Aug 2026 18:58:14 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da60e7a11b49608b70b9c099afce6013ebba2b0afc47fe05bb982dc0e7003ef9`  
		Last Modified: Mon, 10 Aug 2026 18:58:14 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ef7968564bc7d2a9d85ecf9cdef3f28b6e872145af7f884eb3d84d050dacb1f`  
		Last Modified: Mon, 10 Aug 2026 18:58:15 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b4e058ea61d8b5f2db835b749d9a75ffa9aa3e186d01396fa2631d0618da0a5`  
		Last Modified: Mon, 10 Aug 2026 18:58:16 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4aa11efcdad9b40d3a14bf0ae90e4f1238c6a2d22b296a391e7faac2b85a8173`  
		Last Modified: Mon, 10 Aug 2026 18:58:16 GMT  
		Size: 3.6 KB (3639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7.3-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:6607014eea1866bd04a64531b99dbeb9c4e1ab4a02599163ddfb94e67bf19509
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 KB (27557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1757c010b01f8bd4836f825a3d8f13719190fda4c40412ae05847c3996e1069d`

```dockerfile
```

-	Layers:
	-	`sha256:e6cc7d94626794d43f0bc1ab0afbddbb4433caf093b7c0508ba30a5afd692909`  
		Last Modified: Mon, 10 Aug 2026 18:58:14 GMT  
		Size: 27.6 KB (27557 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.7.3.19`

```console
$ docker pull clickhouse@sha256:51bb50a6b7e86a653e7027dea90d17ad8c7fd0a88eb176f40b3808c9791dbb83
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.7.3.19` - linux; amd64

```console
$ docker pull clickhouse@sha256:fc803a34239ad370a4617d541df60020fcbc0bb8448707048b45d8033081af93
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.8 MB (266803518 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e4039468bcb9cdfeb0790e346b11edbacd8db0153932fac64982235c0a627dd`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 31 Jul 2026 21:53:09 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:53:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:53:09 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:53:11 GMT
ADD file:4501ff54ffd37d854b1cfbcd2e37da58bf8a49da3a6a82232d03e7556d337a92 in / 
# Fri, 31 Jul 2026 21:53:12 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 18:57:40 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 10 Aug 2026 18:57:40 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 10 Aug 2026 18:57:40 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 10 Aug 2026 18:57:40 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 10 Aug 2026 18:57:40 GMT
ARG REPO_CHANNEL=stable
# Mon, 10 Aug 2026 18:57:40 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 10 Aug 2026 18:57:40 GMT
ARG VERSION=26.7.3.19
# Mon, 10 Aug 2026 18:57:40 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 10 Aug 2026 18:58:07 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:58:07 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:58:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 10 Aug 2026 18:58:08 GMT
ENV LANG=en_US.UTF-8
# Mon, 10 Aug 2026 18:58:08 GMT
ENV TZ=UTC
# Mon, 10 Aug 2026 18:58:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 10 Aug 2026 18:58:09 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 10 Aug 2026 18:58:09 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 10 Aug 2026 18:58:09 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 10 Aug 2026 18:58:09 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 10 Aug 2026 18:58:09 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 10 Aug 2026 18:58:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:39a945af8df2ad9343f141c82355d3f2c4b576d432eda34c460d630607462b60`  
		Last Modified: Fri, 31 Jul 2026 22:53:51 GMT  
		Size: 29.7 MB (29736517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee9defcdce1fe41e06f67861fc74225c6acf642d6e5619eff74b90e5e705e7b4`  
		Last Modified: Mon, 10 Aug 2026 18:58:35 GMT  
		Size: 7.6 MB (7553331 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a573d85f47523c5deed30a6c41abeb8a781cc054ba77db50055e4c80ec07cd5`  
		Last Modified: Mon, 10 Aug 2026 18:58:39 GMT  
		Size: 228.6 MB (228643618 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e80640194d09aa35a59b9838b13fc741436d157839379bb26b481138402732e`  
		Last Modified: Mon, 10 Aug 2026 18:58:34 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf2f3cb9b49f9f680eed340145f337c53d1294ca9c79fd4c02a562323833ba0c`  
		Last Modified: Mon, 10 Aug 2026 18:58:34 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36e3dc07f71901b698b9e2cc2f2aec6a2301bcb691d1e91f29ab3e87797ac8c1`  
		Last Modified: Mon, 10 Aug 2026 18:58:29 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1dd7f7a4f84430bad5df6112c9cc444217852f4058887cd7766caac5dff281f`  
		Last Modified: Mon, 10 Aug 2026 18:58:36 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bd5cdd11a7ad411c923779aa149aa6628a395751867d40706047c517a40bda9`  
		Last Modified: Mon, 10 Aug 2026 18:58:36 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7.3.19` - unknown; unknown

```console
$ docker pull clickhouse@sha256:4b47c2d6027c3d56fc8b6339e4baf3bf28205ce9aee724098e923f909de111d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.3 KB (27345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2b0d590ff82539ecc4a3c3228cf4fd2950ce6adad49a441959220cda8bb5d64`

```dockerfile
```

-	Layers:
	-	`sha256:5613acb9d792f190bef741f475294f176ddf9e21f43f9ddb01fadd7253a06916`  
		Last Modified: Mon, 10 Aug 2026 18:58:34 GMT  
		Size: 27.3 KB (27345 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.7.3.19` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:faf8fba8f48da23e22f4e543d2be324d1e00a5c53de568c8683f9454c46a16fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.1 MB (250117809 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f81304f985fdd20f9bb6f2870b0cafe54a35db9f686579b40444c06825967597`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 31 Jul 2026 21:58:10 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:58:10 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:58:10 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:58:12 GMT
ADD file:66c837214dd75fd34fbf726aabdc4c4a739297d5d853247e4c885c4bce5b7f6a in / 
# Fri, 31 Jul 2026 21:58:12 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 18:57:22 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 10 Aug 2026 18:57:22 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 10 Aug 2026 18:57:22 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 10 Aug 2026 18:57:22 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 10 Aug 2026 18:57:22 GMT
ARG REPO_CHANNEL=stable
# Mon, 10 Aug 2026 18:57:22 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 10 Aug 2026 18:57:22 GMT
ARG VERSION=26.7.3.19
# Mon, 10 Aug 2026 18:57:22 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 10 Aug 2026 18:57:51 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:57:51 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:57:52 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 10 Aug 2026 18:57:52 GMT
ENV LANG=en_US.UTF-8
# Mon, 10 Aug 2026 18:57:52 GMT
ENV TZ=UTC
# Mon, 10 Aug 2026 18:57:53 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 10 Aug 2026 18:57:53 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 10 Aug 2026 18:57:53 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 10 Aug 2026 18:57:53 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 10 Aug 2026 18:57:53 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 10 Aug 2026 18:57:53 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 10 Aug 2026 18:57:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e737c5ed04040f2f0a2a5834e272c5fa0ab6a31a0641be05eb1669153c7c4cfc`  
		Last Modified: Fri, 31 Jul 2026 22:53:57 GMT  
		Size: 27.6 MB (27620032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:370fdc8a3a77d04dd01b8d1343ebe73041876360ea1bdd1af82691bf798f8fff`  
		Last Modified: Mon, 10 Aug 2026 18:58:14 GMT  
		Size: 7.5 MB (7533571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4bedb991004d2c0e951479f1c6735eeaffb5d39205b2622e5e2a4222fa2c68b`  
		Last Modified: Mon, 10 Aug 2026 18:58:18 GMT  
		Size: 214.1 MB (214094156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdb8a5ff846e988b6ba47217ce2bc94e192cc2e7638150f91878549d95711ed9`  
		Last Modified: Mon, 10 Aug 2026 18:58:14 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da60e7a11b49608b70b9c099afce6013ebba2b0afc47fe05bb982dc0e7003ef9`  
		Last Modified: Mon, 10 Aug 2026 18:58:14 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ef7968564bc7d2a9d85ecf9cdef3f28b6e872145af7f884eb3d84d050dacb1f`  
		Last Modified: Mon, 10 Aug 2026 18:58:15 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b4e058ea61d8b5f2db835b749d9a75ffa9aa3e186d01396fa2631d0618da0a5`  
		Last Modified: Mon, 10 Aug 2026 18:58:16 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4aa11efcdad9b40d3a14bf0ae90e4f1238c6a2d22b296a391e7faac2b85a8173`  
		Last Modified: Mon, 10 Aug 2026 18:58:16 GMT  
		Size: 3.6 KB (3639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7.3.19` - unknown; unknown

```console
$ docker pull clickhouse@sha256:6607014eea1866bd04a64531b99dbeb9c4e1ab4a02599163ddfb94e67bf19509
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 KB (27557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1757c010b01f8bd4836f825a3d8f13719190fda4c40412ae05847c3996e1069d`

```dockerfile
```

-	Layers:
	-	`sha256:e6cc7d94626794d43f0bc1ab0afbddbb4433caf093b7c0508ba30a5afd692909`  
		Last Modified: Mon, 10 Aug 2026 18:58:14 GMT  
		Size: 27.6 KB (27557 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:26.7.3.19-jammy`

```console
$ docker pull clickhouse@sha256:51bb50a6b7e86a653e7027dea90d17ad8c7fd0a88eb176f40b3808c9791dbb83
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:26.7.3.19-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:fc803a34239ad370a4617d541df60020fcbc0bb8448707048b45d8033081af93
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.8 MB (266803518 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e4039468bcb9cdfeb0790e346b11edbacd8db0153932fac64982235c0a627dd`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 31 Jul 2026 21:53:09 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:53:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:53:09 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:53:11 GMT
ADD file:4501ff54ffd37d854b1cfbcd2e37da58bf8a49da3a6a82232d03e7556d337a92 in / 
# Fri, 31 Jul 2026 21:53:12 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 18:57:40 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 10 Aug 2026 18:57:40 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 10 Aug 2026 18:57:40 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 10 Aug 2026 18:57:40 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 10 Aug 2026 18:57:40 GMT
ARG REPO_CHANNEL=stable
# Mon, 10 Aug 2026 18:57:40 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 10 Aug 2026 18:57:40 GMT
ARG VERSION=26.7.3.19
# Mon, 10 Aug 2026 18:57:40 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 10 Aug 2026 18:58:07 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:58:07 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:58:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 10 Aug 2026 18:58:08 GMT
ENV LANG=en_US.UTF-8
# Mon, 10 Aug 2026 18:58:08 GMT
ENV TZ=UTC
# Mon, 10 Aug 2026 18:58:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 10 Aug 2026 18:58:09 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 10 Aug 2026 18:58:09 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 10 Aug 2026 18:58:09 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 10 Aug 2026 18:58:09 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 10 Aug 2026 18:58:09 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 10 Aug 2026 18:58:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:39a945af8df2ad9343f141c82355d3f2c4b576d432eda34c460d630607462b60`  
		Last Modified: Fri, 31 Jul 2026 22:53:51 GMT  
		Size: 29.7 MB (29736517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee9defcdce1fe41e06f67861fc74225c6acf642d6e5619eff74b90e5e705e7b4`  
		Last Modified: Mon, 10 Aug 2026 18:58:35 GMT  
		Size: 7.6 MB (7553331 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a573d85f47523c5deed30a6c41abeb8a781cc054ba77db50055e4c80ec07cd5`  
		Last Modified: Mon, 10 Aug 2026 18:58:39 GMT  
		Size: 228.6 MB (228643618 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e80640194d09aa35a59b9838b13fc741436d157839379bb26b481138402732e`  
		Last Modified: Mon, 10 Aug 2026 18:58:34 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf2f3cb9b49f9f680eed340145f337c53d1294ca9c79fd4c02a562323833ba0c`  
		Last Modified: Mon, 10 Aug 2026 18:58:34 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36e3dc07f71901b698b9e2cc2f2aec6a2301bcb691d1e91f29ab3e87797ac8c1`  
		Last Modified: Mon, 10 Aug 2026 18:58:29 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1dd7f7a4f84430bad5df6112c9cc444217852f4058887cd7766caac5dff281f`  
		Last Modified: Mon, 10 Aug 2026 18:58:36 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bd5cdd11a7ad411c923779aa149aa6628a395751867d40706047c517a40bda9`  
		Last Modified: Mon, 10 Aug 2026 18:58:36 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7.3.19-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:4b47c2d6027c3d56fc8b6339e4baf3bf28205ce9aee724098e923f909de111d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.3 KB (27345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2b0d590ff82539ecc4a3c3228cf4fd2950ce6adad49a441959220cda8bb5d64`

```dockerfile
```

-	Layers:
	-	`sha256:5613acb9d792f190bef741f475294f176ddf9e21f43f9ddb01fadd7253a06916`  
		Last Modified: Mon, 10 Aug 2026 18:58:34 GMT  
		Size: 27.3 KB (27345 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:26.7.3.19-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:faf8fba8f48da23e22f4e543d2be324d1e00a5c53de568c8683f9454c46a16fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.1 MB (250117809 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f81304f985fdd20f9bb6f2870b0cafe54a35db9f686579b40444c06825967597`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 31 Jul 2026 21:58:10 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:58:10 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:58:10 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:58:12 GMT
ADD file:66c837214dd75fd34fbf726aabdc4c4a739297d5d853247e4c885c4bce5b7f6a in / 
# Fri, 31 Jul 2026 21:58:12 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 18:57:22 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 10 Aug 2026 18:57:22 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 10 Aug 2026 18:57:22 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 10 Aug 2026 18:57:22 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 10 Aug 2026 18:57:22 GMT
ARG REPO_CHANNEL=stable
# Mon, 10 Aug 2026 18:57:22 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 10 Aug 2026 18:57:22 GMT
ARG VERSION=26.7.3.19
# Mon, 10 Aug 2026 18:57:22 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 10 Aug 2026 18:57:51 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:57:51 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:57:52 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 10 Aug 2026 18:57:52 GMT
ENV LANG=en_US.UTF-8
# Mon, 10 Aug 2026 18:57:52 GMT
ENV TZ=UTC
# Mon, 10 Aug 2026 18:57:53 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 10 Aug 2026 18:57:53 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 10 Aug 2026 18:57:53 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 10 Aug 2026 18:57:53 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 10 Aug 2026 18:57:53 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 10 Aug 2026 18:57:53 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 10 Aug 2026 18:57:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e737c5ed04040f2f0a2a5834e272c5fa0ab6a31a0641be05eb1669153c7c4cfc`  
		Last Modified: Fri, 31 Jul 2026 22:53:57 GMT  
		Size: 27.6 MB (27620032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:370fdc8a3a77d04dd01b8d1343ebe73041876360ea1bdd1af82691bf798f8fff`  
		Last Modified: Mon, 10 Aug 2026 18:58:14 GMT  
		Size: 7.5 MB (7533571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4bedb991004d2c0e951479f1c6735eeaffb5d39205b2622e5e2a4222fa2c68b`  
		Last Modified: Mon, 10 Aug 2026 18:58:18 GMT  
		Size: 214.1 MB (214094156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdb8a5ff846e988b6ba47217ce2bc94e192cc2e7638150f91878549d95711ed9`  
		Last Modified: Mon, 10 Aug 2026 18:58:14 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da60e7a11b49608b70b9c099afce6013ebba2b0afc47fe05bb982dc0e7003ef9`  
		Last Modified: Mon, 10 Aug 2026 18:58:14 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ef7968564bc7d2a9d85ecf9cdef3f28b6e872145af7f884eb3d84d050dacb1f`  
		Last Modified: Mon, 10 Aug 2026 18:58:15 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b4e058ea61d8b5f2db835b749d9a75ffa9aa3e186d01396fa2631d0618da0a5`  
		Last Modified: Mon, 10 Aug 2026 18:58:16 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4aa11efcdad9b40d3a14bf0ae90e4f1238c6a2d22b296a391e7faac2b85a8173`  
		Last Modified: Mon, 10 Aug 2026 18:58:16 GMT  
		Size: 3.6 KB (3639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:26.7.3.19-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:6607014eea1866bd04a64531b99dbeb9c4e1ab4a02599163ddfb94e67bf19509
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 KB (27557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1757c010b01f8bd4836f825a3d8f13719190fda4c40412ae05847c3996e1069d`

```dockerfile
```

-	Layers:
	-	`sha256:e6cc7d94626794d43f0bc1ab0afbddbb4433caf093b7c0508ba30a5afd692909`  
		Last Modified: Mon, 10 Aug 2026 18:58:14 GMT  
		Size: 27.6 KB (27557 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:jammy`

```console
$ docker pull clickhouse@sha256:51bb50a6b7e86a653e7027dea90d17ad8c7fd0a88eb176f40b3808c9791dbb83
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:fc803a34239ad370a4617d541df60020fcbc0bb8448707048b45d8033081af93
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.8 MB (266803518 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e4039468bcb9cdfeb0790e346b11edbacd8db0153932fac64982235c0a627dd`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 31 Jul 2026 21:53:09 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:53:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:53:09 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:53:11 GMT
ADD file:4501ff54ffd37d854b1cfbcd2e37da58bf8a49da3a6a82232d03e7556d337a92 in / 
# Fri, 31 Jul 2026 21:53:12 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 18:57:40 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 10 Aug 2026 18:57:40 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 10 Aug 2026 18:57:40 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 10 Aug 2026 18:57:40 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 10 Aug 2026 18:57:40 GMT
ARG REPO_CHANNEL=stable
# Mon, 10 Aug 2026 18:57:40 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 10 Aug 2026 18:57:40 GMT
ARG VERSION=26.7.3.19
# Mon, 10 Aug 2026 18:57:40 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 10 Aug 2026 18:58:07 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:58:07 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:58:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 10 Aug 2026 18:58:08 GMT
ENV LANG=en_US.UTF-8
# Mon, 10 Aug 2026 18:58:08 GMT
ENV TZ=UTC
# Mon, 10 Aug 2026 18:58:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 10 Aug 2026 18:58:09 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 10 Aug 2026 18:58:09 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 10 Aug 2026 18:58:09 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 10 Aug 2026 18:58:09 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 10 Aug 2026 18:58:09 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 10 Aug 2026 18:58:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:39a945af8df2ad9343f141c82355d3f2c4b576d432eda34c460d630607462b60`  
		Last Modified: Fri, 31 Jul 2026 22:53:51 GMT  
		Size: 29.7 MB (29736517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee9defcdce1fe41e06f67861fc74225c6acf642d6e5619eff74b90e5e705e7b4`  
		Last Modified: Mon, 10 Aug 2026 18:58:35 GMT  
		Size: 7.6 MB (7553331 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a573d85f47523c5deed30a6c41abeb8a781cc054ba77db50055e4c80ec07cd5`  
		Last Modified: Mon, 10 Aug 2026 18:58:39 GMT  
		Size: 228.6 MB (228643618 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e80640194d09aa35a59b9838b13fc741436d157839379bb26b481138402732e`  
		Last Modified: Mon, 10 Aug 2026 18:58:34 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf2f3cb9b49f9f680eed340145f337c53d1294ca9c79fd4c02a562323833ba0c`  
		Last Modified: Mon, 10 Aug 2026 18:58:34 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36e3dc07f71901b698b9e2cc2f2aec6a2301bcb691d1e91f29ab3e87797ac8c1`  
		Last Modified: Mon, 10 Aug 2026 18:58:29 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1dd7f7a4f84430bad5df6112c9cc444217852f4058887cd7766caac5dff281f`  
		Last Modified: Mon, 10 Aug 2026 18:58:36 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bd5cdd11a7ad411c923779aa149aa6628a395751867d40706047c517a40bda9`  
		Last Modified: Mon, 10 Aug 2026 18:58:36 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:4b47c2d6027c3d56fc8b6339e4baf3bf28205ce9aee724098e923f909de111d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.3 KB (27345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2b0d590ff82539ecc4a3c3228cf4fd2950ce6adad49a441959220cda8bb5d64`

```dockerfile
```

-	Layers:
	-	`sha256:5613acb9d792f190bef741f475294f176ddf9e21f43f9ddb01fadd7253a06916`  
		Last Modified: Mon, 10 Aug 2026 18:58:34 GMT  
		Size: 27.3 KB (27345 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:faf8fba8f48da23e22f4e543d2be324d1e00a5c53de568c8683f9454c46a16fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.1 MB (250117809 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f81304f985fdd20f9bb6f2870b0cafe54a35db9f686579b40444c06825967597`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 31 Jul 2026 21:58:10 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:58:10 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:58:10 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:58:12 GMT
ADD file:66c837214dd75fd34fbf726aabdc4c4a739297d5d853247e4c885c4bce5b7f6a in / 
# Fri, 31 Jul 2026 21:58:12 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 18:57:22 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 10 Aug 2026 18:57:22 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 10 Aug 2026 18:57:22 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 10 Aug 2026 18:57:22 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 10 Aug 2026 18:57:22 GMT
ARG REPO_CHANNEL=stable
# Mon, 10 Aug 2026 18:57:22 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 10 Aug 2026 18:57:22 GMT
ARG VERSION=26.7.3.19
# Mon, 10 Aug 2026 18:57:22 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 10 Aug 2026 18:57:51 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:57:51 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:57:52 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 10 Aug 2026 18:57:52 GMT
ENV LANG=en_US.UTF-8
# Mon, 10 Aug 2026 18:57:52 GMT
ENV TZ=UTC
# Mon, 10 Aug 2026 18:57:53 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 10 Aug 2026 18:57:53 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 10 Aug 2026 18:57:53 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 10 Aug 2026 18:57:53 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 10 Aug 2026 18:57:53 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 10 Aug 2026 18:57:53 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 10 Aug 2026 18:57:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e737c5ed04040f2f0a2a5834e272c5fa0ab6a31a0641be05eb1669153c7c4cfc`  
		Last Modified: Fri, 31 Jul 2026 22:53:57 GMT  
		Size: 27.6 MB (27620032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:370fdc8a3a77d04dd01b8d1343ebe73041876360ea1bdd1af82691bf798f8fff`  
		Last Modified: Mon, 10 Aug 2026 18:58:14 GMT  
		Size: 7.5 MB (7533571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4bedb991004d2c0e951479f1c6735eeaffb5d39205b2622e5e2a4222fa2c68b`  
		Last Modified: Mon, 10 Aug 2026 18:58:18 GMT  
		Size: 214.1 MB (214094156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdb8a5ff846e988b6ba47217ce2bc94e192cc2e7638150f91878549d95711ed9`  
		Last Modified: Mon, 10 Aug 2026 18:58:14 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da60e7a11b49608b70b9c099afce6013ebba2b0afc47fe05bb982dc0e7003ef9`  
		Last Modified: Mon, 10 Aug 2026 18:58:14 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ef7968564bc7d2a9d85ecf9cdef3f28b6e872145af7f884eb3d84d050dacb1f`  
		Last Modified: Mon, 10 Aug 2026 18:58:15 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b4e058ea61d8b5f2db835b749d9a75ffa9aa3e186d01396fa2631d0618da0a5`  
		Last Modified: Mon, 10 Aug 2026 18:58:16 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4aa11efcdad9b40d3a14bf0ae90e4f1238c6a2d22b296a391e7faac2b85a8173`  
		Last Modified: Mon, 10 Aug 2026 18:58:16 GMT  
		Size: 3.6 KB (3639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:6607014eea1866bd04a64531b99dbeb9c4e1ab4a02599163ddfb94e67bf19509
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 KB (27557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1757c010b01f8bd4836f825a3d8f13719190fda4c40412ae05847c3996e1069d`

```dockerfile
```

-	Layers:
	-	`sha256:e6cc7d94626794d43f0bc1ab0afbddbb4433caf093b7c0508ba30a5afd692909`  
		Last Modified: Mon, 10 Aug 2026 18:58:14 GMT  
		Size: 27.6 KB (27557 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:latest`

```console
$ docker pull clickhouse@sha256:51bb50a6b7e86a653e7027dea90d17ad8c7fd0a88eb176f40b3808c9791dbb83
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:latest` - linux; amd64

```console
$ docker pull clickhouse@sha256:fc803a34239ad370a4617d541df60020fcbc0bb8448707048b45d8033081af93
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.8 MB (266803518 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e4039468bcb9cdfeb0790e346b11edbacd8db0153932fac64982235c0a627dd`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 31 Jul 2026 21:53:09 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:53:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:53:09 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:53:11 GMT
ADD file:4501ff54ffd37d854b1cfbcd2e37da58bf8a49da3a6a82232d03e7556d337a92 in / 
# Fri, 31 Jul 2026 21:53:12 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 18:57:40 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 10 Aug 2026 18:57:40 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 10 Aug 2026 18:57:40 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 10 Aug 2026 18:57:40 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 10 Aug 2026 18:57:40 GMT
ARG REPO_CHANNEL=stable
# Mon, 10 Aug 2026 18:57:40 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 10 Aug 2026 18:57:40 GMT
ARG VERSION=26.7.3.19
# Mon, 10 Aug 2026 18:57:40 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 10 Aug 2026 18:58:07 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:58:07 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:58:08 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 10 Aug 2026 18:58:08 GMT
ENV LANG=en_US.UTF-8
# Mon, 10 Aug 2026 18:58:08 GMT
ENV TZ=UTC
# Mon, 10 Aug 2026 18:58:09 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 10 Aug 2026 18:58:09 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 10 Aug 2026 18:58:09 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 10 Aug 2026 18:58:09 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 10 Aug 2026 18:58:09 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 10 Aug 2026 18:58:09 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 10 Aug 2026 18:58:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:39a945af8df2ad9343f141c82355d3f2c4b576d432eda34c460d630607462b60`  
		Last Modified: Fri, 31 Jul 2026 22:53:51 GMT  
		Size: 29.7 MB (29736517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee9defcdce1fe41e06f67861fc74225c6acf642d6e5619eff74b90e5e705e7b4`  
		Last Modified: Mon, 10 Aug 2026 18:58:35 GMT  
		Size: 7.6 MB (7553331 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a573d85f47523c5deed30a6c41abeb8a781cc054ba77db50055e4c80ec07cd5`  
		Last Modified: Mon, 10 Aug 2026 18:58:39 GMT  
		Size: 228.6 MB (228643618 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e80640194d09aa35a59b9838b13fc741436d157839379bb26b481138402732e`  
		Last Modified: Mon, 10 Aug 2026 18:58:34 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf2f3cb9b49f9f680eed340145f337c53d1294ca9c79fd4c02a562323833ba0c`  
		Last Modified: Mon, 10 Aug 2026 18:58:34 GMT  
		Size: 865.8 KB (865750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36e3dc07f71901b698b9e2cc2f2aec6a2301bcb691d1e91f29ab3e87797ac8c1`  
		Last Modified: Mon, 10 Aug 2026 18:58:29 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1dd7f7a4f84430bad5df6112c9cc444217852f4058887cd7766caac5dff281f`  
		Last Modified: Mon, 10 Aug 2026 18:58:36 GMT  
		Size: 363.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bd5cdd11a7ad411c923779aa149aa6628a395751867d40706047c517a40bda9`  
		Last Modified: Mon, 10 Aug 2026 18:58:36 GMT  
		Size: 3.6 KB (3638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:latest` - unknown; unknown

```console
$ docker pull clickhouse@sha256:4b47c2d6027c3d56fc8b6339e4baf3bf28205ce9aee724098e923f909de111d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.3 KB (27345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2b0d590ff82539ecc4a3c3228cf4fd2950ce6adad49a441959220cda8bb5d64`

```dockerfile
```

-	Layers:
	-	`sha256:5613acb9d792f190bef741f475294f176ddf9e21f43f9ddb01fadd7253a06916`  
		Last Modified: Mon, 10 Aug 2026 18:58:34 GMT  
		Size: 27.3 KB (27345 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:latest` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:faf8fba8f48da23e22f4e543d2be324d1e00a5c53de568c8683f9454c46a16fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.1 MB (250117809 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f81304f985fdd20f9bb6f2870b0cafe54a35db9f686579b40444c06825967597`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 31 Jul 2026 21:58:10 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:58:10 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:58:10 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:58:12 GMT
ADD file:66c837214dd75fd34fbf726aabdc4c4a739297d5d853247e4c885c4bce5b7f6a in / 
# Fri, 31 Jul 2026 21:58:12 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 18:57:22 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 10 Aug 2026 18:57:22 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 10 Aug 2026 18:57:22 GMT
ARG apt_ports_archive=http://ports.ubuntu.com
# Mon, 10 Aug 2026 18:57:22 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com
RUN sed -i -e "s|http://archive.ubuntu.com|${apt_archive}|g" -e "s|http://ports.ubuntu.com|${apt_ports_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 10 Aug 2026 18:57:22 GMT
ARG REPO_CHANNEL=stable
# Mon, 10 Aug 2026 18:57:22 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 10 Aug 2026 18:57:22 GMT
ARG VERSION=26.7.3.19
# Mon, 10 Aug 2026 18:57:22 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 10 Aug 2026 18:57:51 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:57:51 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:57:52 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 10 Aug 2026 18:57:52 GMT
ENV LANG=en_US.UTF-8
# Mon, 10 Aug 2026 18:57:52 GMT
ENV TZ=UTC
# Mon, 10 Aug 2026 18:57:53 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com apt_ports_archive=http://ports.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.7.3.19 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 10 Aug 2026 18:57:53 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 10 Aug 2026 18:57:53 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 10 Aug 2026 18:57:53 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 10 Aug 2026 18:57:53 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 10 Aug 2026 18:57:53 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 10 Aug 2026 18:57:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e737c5ed04040f2f0a2a5834e272c5fa0ab6a31a0641be05eb1669153c7c4cfc`  
		Last Modified: Fri, 31 Jul 2026 22:53:57 GMT  
		Size: 27.6 MB (27620032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:370fdc8a3a77d04dd01b8d1343ebe73041876360ea1bdd1af82691bf798f8fff`  
		Last Modified: Mon, 10 Aug 2026 18:58:14 GMT  
		Size: 7.5 MB (7533571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4bedb991004d2c0e951479f1c6735eeaffb5d39205b2622e5e2a4222fa2c68b`  
		Last Modified: Mon, 10 Aug 2026 18:58:18 GMT  
		Size: 214.1 MB (214094156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdb8a5ff846e988b6ba47217ce2bc94e192cc2e7638150f91878549d95711ed9`  
		Last Modified: Mon, 10 Aug 2026 18:58:14 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da60e7a11b49608b70b9c099afce6013ebba2b0afc47fe05bb982dc0e7003ef9`  
		Last Modified: Mon, 10 Aug 2026 18:58:14 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ef7968564bc7d2a9d85ecf9cdef3f28b6e872145af7f884eb3d84d050dacb1f`  
		Last Modified: Mon, 10 Aug 2026 18:58:15 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b4e058ea61d8b5f2db835b749d9a75ffa9aa3e186d01396fa2631d0618da0a5`  
		Last Modified: Mon, 10 Aug 2026 18:58:16 GMT  
		Size: 360.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4aa11efcdad9b40d3a14bf0ae90e4f1238c6a2d22b296a391e7faac2b85a8173`  
		Last Modified: Mon, 10 Aug 2026 18:58:16 GMT  
		Size: 3.6 KB (3639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:latest` - unknown; unknown

```console
$ docker pull clickhouse@sha256:6607014eea1866bd04a64531b99dbeb9c4e1ab4a02599163ddfb94e67bf19509
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 KB (27557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1757c010b01f8bd4836f825a3d8f13719190fda4c40412ae05847c3996e1069d`

```dockerfile
```

-	Layers:
	-	`sha256:e6cc7d94626794d43f0bc1ab0afbddbb4433caf093b7c0508ba30a5afd692909`  
		Last Modified: Mon, 10 Aug 2026 18:58:14 GMT  
		Size: 27.6 KB (27557 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:lts`

```console
$ docker pull clickhouse@sha256:3b6f16f1729ce677c73d3dc0d5a419c7997114fe57d49b5f06a4782fe75e024c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:lts` - linux; amd64

```console
$ docker pull clickhouse@sha256:29c2a8698ac0dc1945312f379b927033d5a6531a5cb9bc96e458cc9ba90805f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.5 MB (265492524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a79859005dc77d2d21e6eee0348aa9c929cd7bf5b8d2630482138b8a0553eff`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 31 Jul 2026 21:53:09 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:53:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:53:09 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:53:11 GMT
ADD file:4501ff54ffd37d854b1cfbcd2e37da58bf8a49da3a6a82232d03e7556d337a92 in / 
# Fri, 31 Jul 2026 21:53:12 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 18:58:20 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 10 Aug 2026 18:58:20 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 10 Aug 2026 18:58:20 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 10 Aug 2026 18:58:20 GMT
ARG REPO_CHANNEL=stable
# Mon, 10 Aug 2026 18:58:20 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 10 Aug 2026 18:58:20 GMT
ARG VERSION=26.3.17.110
# Mon, 10 Aug 2026 18:58:20 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 10 Aug 2026 18:58:49 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:58:49 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:58:50 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 10 Aug 2026 18:58:50 GMT
ENV LANG=en_US.UTF-8
# Mon, 10 Aug 2026 18:58:50 GMT
ENV TZ=UTC
# Mon, 10 Aug 2026 18:58:50 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 10 Aug 2026 18:58:50 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 10 Aug 2026 18:58:50 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 10 Aug 2026 18:58:50 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 10 Aug 2026 18:58:50 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 10 Aug 2026 18:58:50 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 10 Aug 2026 18:58:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:39a945af8df2ad9343f141c82355d3f2c4b576d432eda34c460d630607462b60`  
		Last Modified: Fri, 31 Jul 2026 22:53:51 GMT  
		Size: 29.7 MB (29736517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bbac3485c9aba166d5f40c2869886ca5b33335d0fe791343f2f99618c83abf7`  
		Last Modified: Mon, 10 Aug 2026 18:59:13 GMT  
		Size: 7.6 MB (7553458 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68fd210b381dada86d29d1f34dd31271ac08f184bf9041007d237d95692b630b`  
		Last Modified: Mon, 10 Aug 2026 18:59:17 GMT  
		Size: 227.3 MB (227332497 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee6bc6b83f4298352003bf41d6d678826ed1e91de33c00a43fe4f7017fe94dd7`  
		Last Modified: Mon, 10 Aug 2026 18:59:13 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01704565e1a1f809fc2ac2e9b31f2fe810d42c7ec37761a70d3683483c41cb32`  
		Last Modified: Mon, 10 Aug 2026 18:59:13 GMT  
		Size: 865.8 KB (865752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6baf9b9a2b0544c2f044ffccdcc8cb1f1b680c8e12d2d074ef1a72ddff4b40ea`  
		Last Modified: Mon, 10 Aug 2026 18:59:14 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64a92e2eda63a42a28d4b507ec39a07de1b9fe3e4d49b0eb35c6fc00ba03bf8d`  
		Last Modified: Mon, 10 Aug 2026 18:59:14 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efceb8acabfe1bbeb588a5969484329aab8db49cc2d00c1b552c32443a3a0cf8`  
		Last Modified: Mon, 10 Aug 2026 18:59:14 GMT  
		Size: 3.6 KB (3636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:lts` - unknown; unknown

```console
$ docker pull clickhouse@sha256:4e93fe44de3d3a7fe5f434614f2f12c27782d122f7450464d8fe791190230ca7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.9 KB (26857 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b390610c53802a7d1022091fcabe525a1de40c4da5be8707642cc448ff623a6`

```dockerfile
```

-	Layers:
	-	`sha256:640c9e89b4eaf44dacfb8fe43cd73fa3eec243781955392fb4266080da61328d`  
		Last Modified: Mon, 10 Aug 2026 18:59:13 GMT  
		Size: 26.9 KB (26857 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:lts` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:f094ee4671e71da919ead1f341fda755acb0a5b8869026ef8bfd7880c5985217
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.8 MB (246811971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55724afb916dbe77118bfef503b7de4c542370012b4c335d6f38002c0ca40767`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 31 Jul 2026 21:58:10 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:58:10 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:58:10 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:58:12 GMT
ADD file:66c837214dd75fd34fbf726aabdc4c4a739297d5d853247e4c885c4bce5b7f6a in / 
# Fri, 31 Jul 2026 21:58:12 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 18:58:21 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 10 Aug 2026 18:58:21 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 10 Aug 2026 18:58:21 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 10 Aug 2026 18:58:21 GMT
ARG REPO_CHANNEL=stable
# Mon, 10 Aug 2026 18:58:21 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 10 Aug 2026 18:58:21 GMT
ARG VERSION=26.3.17.110
# Mon, 10 Aug 2026 18:58:21 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 10 Aug 2026 18:58:47 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:58:47 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:58:48 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 10 Aug 2026 18:58:48 GMT
ENV LANG=en_US.UTF-8
# Mon, 10 Aug 2026 18:58:48 GMT
ENV TZ=UTC
# Mon, 10 Aug 2026 18:58:48 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 10 Aug 2026 18:58:48 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 10 Aug 2026 18:58:48 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 10 Aug 2026 18:58:48 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 10 Aug 2026 18:58:48 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 10 Aug 2026 18:58:48 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 10 Aug 2026 18:58:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e737c5ed04040f2f0a2a5834e272c5fa0ab6a31a0641be05eb1669153c7c4cfc`  
		Last Modified: Fri, 31 Jul 2026 22:53:57 GMT  
		Size: 27.6 MB (27620032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25a578de3647fa22f1be53385642f776bf3465d098e3615e9ed2f8dfba675409`  
		Last Modified: Mon, 10 Aug 2026 18:59:10 GMT  
		Size: 7.5 MB (7533567 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b77e1cf2c99d15296d0b4005b60b6a993ed57b11a509567bf2334faa8a5b48b`  
		Last Modified: Mon, 10 Aug 2026 18:59:15 GMT  
		Size: 210.8 MB (210788324 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bab3086c31158e3e74469fef21de562c9e5c2cc2d4d03ec8f392dcb3f52b7add`  
		Last Modified: Mon, 10 Aug 2026 18:59:10 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:702d21e9ddc4f6a7835e375c5cb8a714b852a5d72354e305723c5e93db33c42b`  
		Last Modified: Mon, 10 Aug 2026 18:59:10 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d853b7355ff18c839b1c00bff70a20a160195c26eb91adedef9349c07639fd3d`  
		Last Modified: Mon, 10 Aug 2026 18:59:11 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4f53b6fbd061bb49b4abf406bf9521bfc4ef236fea562cd5c8cbd9d88f2e13c`  
		Last Modified: Mon, 10 Aug 2026 18:59:12 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a0a49deb14f156e4b8fea054c15ff728ec3b8681fffd855fc7f99f28cc78372`  
		Last Modified: Mon, 10 Aug 2026 18:59:12 GMT  
		Size: 3.6 KB (3636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:lts` - unknown; unknown

```console
$ docker pull clickhouse@sha256:4f930b70eef60c6c520bb11de8f50713b16163662c298cbe52147e7d9a97a801
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.1 KB (27070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27e20956317127add80f433b19d53f8d52f8ed8e6e2c89c47f822f2daac343fc`

```dockerfile
```

-	Layers:
	-	`sha256:1f090bb2a918f145fa2123afc788202733b8d23d525aca6564c730618e6ec279`  
		Last Modified: Mon, 10 Aug 2026 18:59:10 GMT  
		Size: 27.1 KB (27070 bytes)  
		MIME: application/vnd.in-toto+json

## `clickhouse:lts-jammy`

```console
$ docker pull clickhouse@sha256:3b6f16f1729ce677c73d3dc0d5a419c7997114fe57d49b5f06a4782fe75e024c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clickhouse:lts-jammy` - linux; amd64

```console
$ docker pull clickhouse@sha256:29c2a8698ac0dc1945312f379b927033d5a6531a5cb9bc96e458cc9ba90805f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.5 MB (265492524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a79859005dc77d2d21e6eee0348aa9c929cd7bf5b8d2630482138b8a0553eff`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 31 Jul 2026 21:53:09 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:53:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:53:09 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:53:11 GMT
ADD file:4501ff54ffd37d854b1cfbcd2e37da58bf8a49da3a6a82232d03e7556d337a92 in / 
# Fri, 31 Jul 2026 21:53:12 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 18:58:20 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 10 Aug 2026 18:58:20 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 10 Aug 2026 18:58:20 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 10 Aug 2026 18:58:20 GMT
ARG REPO_CHANNEL=stable
# Mon, 10 Aug 2026 18:58:20 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 10 Aug 2026 18:58:20 GMT
ARG VERSION=26.3.17.110
# Mon, 10 Aug 2026 18:58:20 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 10 Aug 2026 18:58:49 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:58:49 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:58:50 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 10 Aug 2026 18:58:50 GMT
ENV LANG=en_US.UTF-8
# Mon, 10 Aug 2026 18:58:50 GMT
ENV TZ=UTC
# Mon, 10 Aug 2026 18:58:50 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 10 Aug 2026 18:58:50 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 10 Aug 2026 18:58:50 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 10 Aug 2026 18:58:50 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 10 Aug 2026 18:58:50 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 10 Aug 2026 18:58:50 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 10 Aug 2026 18:58:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:39a945af8df2ad9343f141c82355d3f2c4b576d432eda34c460d630607462b60`  
		Last Modified: Fri, 31 Jul 2026 22:53:51 GMT  
		Size: 29.7 MB (29736517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bbac3485c9aba166d5f40c2869886ca5b33335d0fe791343f2f99618c83abf7`  
		Last Modified: Mon, 10 Aug 2026 18:59:13 GMT  
		Size: 7.6 MB (7553458 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68fd210b381dada86d29d1f34dd31271ac08f184bf9041007d237d95692b630b`  
		Last Modified: Mon, 10 Aug 2026 18:59:17 GMT  
		Size: 227.3 MB (227332497 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee6bc6b83f4298352003bf41d6d678826ed1e91de33c00a43fe4f7017fe94dd7`  
		Last Modified: Mon, 10 Aug 2026 18:59:13 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01704565e1a1f809fc2ac2e9b31f2fe810d42c7ec37761a70d3683483c41cb32`  
		Last Modified: Mon, 10 Aug 2026 18:59:13 GMT  
		Size: 865.8 KB (865752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6baf9b9a2b0544c2f044ffccdcc8cb1f1b680c8e12d2d074ef1a72ddff4b40ea`  
		Last Modified: Mon, 10 Aug 2026 18:59:14 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64a92e2eda63a42a28d4b507ec39a07de1b9fe3e4d49b0eb35c6fc00ba03bf8d`  
		Last Modified: Mon, 10 Aug 2026 18:59:14 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efceb8acabfe1bbeb588a5969484329aab8db49cc2d00c1b552c32443a3a0cf8`  
		Last Modified: Mon, 10 Aug 2026 18:59:14 GMT  
		Size: 3.6 KB (3636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:lts-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:4e93fe44de3d3a7fe5f434614f2f12c27782d122f7450464d8fe791190230ca7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.9 KB (26857 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b390610c53802a7d1022091fcabe525a1de40c4da5be8707642cc448ff623a6`

```dockerfile
```

-	Layers:
	-	`sha256:640c9e89b4eaf44dacfb8fe43cd73fa3eec243781955392fb4266080da61328d`  
		Last Modified: Mon, 10 Aug 2026 18:59:13 GMT  
		Size: 26.9 KB (26857 bytes)  
		MIME: application/vnd.in-toto+json

### `clickhouse:lts-jammy` - linux; arm64 variant v8

```console
$ docker pull clickhouse@sha256:f094ee4671e71da919ead1f341fda755acb0a5b8869026ef8bfd7880c5985217
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.8 MB (246811971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55724afb916dbe77118bfef503b7de4c542370012b4c335d6f38002c0ca40767`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 31 Jul 2026 21:58:10 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:58:10 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:58:10 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:58:12 GMT
ADD file:66c837214dd75fd34fbf726aabdc4c4a739297d5d853247e4c885c4bce5b7f6a in / 
# Fri, 31 Jul 2026 21:58:12 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 18:58:21 GMT
ARG DEBIAN_FRONTEND=noninteractive
# Mon, 10 Aug 2026 18:58:21 GMT
ARG apt_archive=http://archive.ubuntu.com
# Mon, 10 Aug 2026 18:58:21 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com
RUN sed -i "s|http://archive.ubuntu.com|${apt_archive}|g" /etc/apt/sources.list     && groupadd -r clickhouse --gid=101     && useradd -r -g clickhouse --uid=101 --home-dir=/var/lib/clickhouse --shell=/bin/bash clickhouse     && apt-get update     && apt-get install --yes --no-install-recommends         busybox         ca-certificates         locales         tzdata         wget     && busybox --install -s     && rm -rf /var/lib/apt/lists/* /var/cache/debconf /tmp/* # buildkit
# Mon, 10 Aug 2026 18:58:21 GMT
ARG REPO_CHANNEL=stable
# Mon, 10 Aug 2026 18:58:21 GMT
ARG REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main
# Mon, 10 Aug 2026 18:58:21 GMT
ARG VERSION=26.3.17.110
# Mon, 10 Aug 2026 18:58:21 GMT
ARG PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
# Mon, 10 Aug 2026 18:58:47 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse local -q 'SELECT 1' >/dev/null 2>&1 && exit 0 || :     ; apt-get update     && apt-get install --yes --no-install-recommends         dirmngr         gnupg2     && mkdir -p /etc/apt/sources.list.d     && GNUPGHOME=$(mktemp -d)     && ( set +e;         for KEYSERVER in             hkp://keys.openpgp.org:80             hkp://pgp.mit.edu:80             hkp://keyserver.ubuntu.com:80; do             GNUPGHOME="$GNUPGHOME" gpg --batch --no-default-keyring                 --keyring /usr/share/keyrings/clickhouse-keyring.gpg                 --keyserver "$KEYSERVER"                 --recv-keys 3a9ea1193a97b548be1457d48919f6bd2b48d754 && break;         done || exit 1     )     && rm -rf "$GNUPGHOME"     && chmod +r /usr/share/keyrings/clickhouse-keyring.gpg     && echo "${REPOSITORY}" > /etc/apt/sources.list.d/clickhouse.list     && echo "installing from repository: ${REPOSITORY}"     && apt-get update     && for package in ${PACKAGES}; do         packages="${packages} ${package}=${VERSION}"     ; done     && apt-get install --yes --no-install-recommends ${packages} || exit 1     && rm -rf         /var/lib/apt/lists/*         /var/cache/debconf         /tmp/*     && apt-get autoremove --purge -yq dirmngr gnupg2     && chmod ugo+Xrw -R /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:58:47 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN clickhouse-local -q 'SELECT * FROM system.build_options'     && mkdir -p /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client     && chmod ugo+Xrw -R /var/lib/clickhouse /var/log/clickhouse-server /etc/clickhouse-server /etc/clickhouse-client # buildkit
# Mon, 10 Aug 2026 18:58:48 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN locale-gen en_US.UTF-8 # buildkit
# Mon, 10 Aug 2026 18:58:48 GMT
ENV LANG=en_US.UTF-8
# Mon, 10 Aug 2026 18:58:48 GMT
ENV TZ=UTC
# Mon, 10 Aug 2026 18:58:48 GMT
# ARGS: DEBIAN_FRONTEND=noninteractive apt_archive=http://archive.ubuntu.com REPO_CHANNEL=stable REPOSITORY=deb [signed-by=/usr/share/keyrings/clickhouse-keyring.gpg] https://packages.clickhouse.com/deb stable main VERSION=26.3.17.110 PACKAGES=clickhouse-client clickhouse-server clickhouse-common-static
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 10 Aug 2026 18:58:48 GMT
COPY docker_related_config.xml /etc/clickhouse-server/config.d/ # buildkit
# Mon, 10 Aug 2026 18:58:48 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 10 Aug 2026 18:58:48 GMT
EXPOSE map[8123/tcp:{} 9000/tcp:{} 9009/tcp:{}]
# Mon, 10 Aug 2026 18:58:48 GMT
VOLUME [/var/lib/clickhouse]
# Mon, 10 Aug 2026 18:58:48 GMT
ENV CLICKHOUSE_CONFIG=/etc/clickhouse-server/config.xml
# Mon, 10 Aug 2026 18:58:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e737c5ed04040f2f0a2a5834e272c5fa0ab6a31a0641be05eb1669153c7c4cfc`  
		Last Modified: Fri, 31 Jul 2026 22:53:57 GMT  
		Size: 27.6 MB (27620032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25a578de3647fa22f1be53385642f776bf3465d098e3615e9ed2f8dfba675409`  
		Last Modified: Mon, 10 Aug 2026 18:59:10 GMT  
		Size: 7.5 MB (7533567 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b77e1cf2c99d15296d0b4005b60b6a993ed57b11a509567bf2334faa8a5b48b`  
		Last Modified: Mon, 10 Aug 2026 18:59:15 GMT  
		Size: 210.8 MB (210788324 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bab3086c31158e3e74469fef21de562c9e5c2cc2d4d03ec8f392dcb3f52b7add`  
		Last Modified: Mon, 10 Aug 2026 18:59:10 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:702d21e9ddc4f6a7835e375c5cb8a714b852a5d72354e305723c5e93db33c42b`  
		Last Modified: Mon, 10 Aug 2026 18:59:10 GMT  
		Size: 865.7 KB (865749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d853b7355ff18c839b1c00bff70a20a160195c26eb91adedef9349c07639fd3d`  
		Last Modified: Mon, 10 Aug 2026 18:59:11 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4f53b6fbd061bb49b4abf406bf9521bfc4ef236fea562cd5c8cbd9d88f2e13c`  
		Last Modified: Mon, 10 Aug 2026 18:59:12 GMT  
		Size: 362.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a0a49deb14f156e4b8fea054c15ff728ec3b8681fffd855fc7f99f28cc78372`  
		Last Modified: Mon, 10 Aug 2026 18:59:12 GMT  
		Size: 3.6 KB (3636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clickhouse:lts-jammy` - unknown; unknown

```console
$ docker pull clickhouse@sha256:4f930b70eef60c6c520bb11de8f50713b16163662c298cbe52147e7d9a97a801
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.1 KB (27070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27e20956317127add80f433b19d53f8d52f8ed8e6e2c89c47f822f2daac343fc`

```dockerfile
```

-	Layers:
	-	`sha256:1f090bb2a918f145fa2123afc788202733b8d23d525aca6564c730618e6ec279`  
		Last Modified: Mon, 10 Aug 2026 18:59:10 GMT  
		Size: 27.1 KB (27070 bytes)  
		MIME: application/vnd.in-toto+json
